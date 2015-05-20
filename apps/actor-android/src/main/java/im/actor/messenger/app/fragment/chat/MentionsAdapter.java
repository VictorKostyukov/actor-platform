package im.actor.messenger.app.fragment.chat;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;

import im.actor.messenger.R;
import im.actor.messenger.app.util.Screen;
import im.actor.messenger.app.view.AvatarView;
import im.actor.messenger.app.view.HolderAdapter;
import im.actor.messenger.app.view.OnItemClickedListener;
import im.actor.messenger.app.view.ViewHolder;
import im.actor.model.entity.GroupMember;
import im.actor.model.viewmodel.UserVM;

import static im.actor.messenger.app.Core.users;

/**
 * Created by ex3ndr on 07.10.14.
 */
public class MentionsAdapter extends HolderAdapter<GroupMember> {
    private GroupMember[] membersToShow;

    private HashMap<String, GroupMember> searchMap;
    private OnItemClickedListener<GroupMember> onItemClickedListener;
    Collection<GroupMember> members;
    MentionsUpdatedCallback updatedCallback;

    public MentionsAdapter(Collection<GroupMember> members, Context context, OnItemClickedListener<GroupMember> onItemClickedListener, MentionsUpdatedCallback updatedCallback) {
        super(context);
        this.members = members;
        this.membersToShow = members.toArray(new GroupMember[0]);
        searchMap = new HashMap<String, GroupMember>();
        this.onItemClickedListener = onItemClickedListener;
        this.updatedCallback = updatedCallback;
        String userName;
        for(GroupMember m:members){
            userName = users().get(m.getUid()).getName().get();
            String[] userNameSplit = userName.split("\\s+");
            String initials = "";
            for (int i = 0; i < userNameSplit.length; i++) {
                initials+=userNameSplit[i].charAt(0);
            }
            searchMap.put(initials.toLowerCase(),m);
            searchMap.put(userName.toLowerCase(),m);
        }
    }



    public void updateUid(Collection<GroupMember> members) {
        this.membersToShow = members.toArray(new GroupMember[0]);
        notifyDataSetChanged();
    }

    public void setQuery(String q){
        int oldRowsCount = new Integer(membersToShow.length);
        if(q.isEmpty()){
            this.membersToShow = members.toArray(new GroupMember[0]);
        }else{
            HashSet<GroupMember> foundMembers = new HashSet<GroupMember>();
            for(String s:searchMap.keySet()){
                if(s.startsWith(q))
                    foundMembers.add(searchMap.get(s));
            }
            this.membersToShow = foundMembers.toArray(new GroupMember[0]);
        }
        int newRowsCount = new Integer(membersToShow.length);
        updatedCallback.onMentionsUpdated(oldRowsCount, newRowsCount);
        notifyDataSetChanged();
    }

    @Override
    public int getCount() {
        return membersToShow.length;
    }

    @Override
    public GroupMember getItem(int position) {
        return membersToShow[position];
    }

    @Override
    public long getItemId(int position) {
        return membersToShow[position].getUid();
    }

    @Override
    protected ViewHolder<GroupMember> createHolder(GroupMember obj) {
        return new GroupViewHolder(onItemClickedListener);
    }


    private class GroupViewHolder extends ViewHolder<GroupMember> {

        private TextView userName;
        private AvatarView avatarView;
        private OnItemClickedListener<GroupMember> onItemClickedListener;
        GroupMember groupMember;
        public GroupViewHolder(OnItemClickedListener<GroupMember> onItemClickedListener) {
            this.onItemClickedListener = onItemClickedListener;
        }

        @Override
        public View init(final GroupMember data, ViewGroup viewGroup, Context context) {
            View res = ((Activity) context).getLayoutInflater().inflate(R.layout.fragment_chat_mention_item, viewGroup, false);
            userName = (TextView) res.findViewById(R.id.name);
            avatarView = (AvatarView) res.findViewById(R.id.avatar);
            avatarView.init(Screen.dp(21), 12);
            groupMember = data;
            res.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    onItemClickedListener.onClicked(groupMember);
                }
            });
            return res;
        }

        @Override
        public void bind(GroupMember data, int position, Context context) {
            UserVM user = users().get(data.getUid());
            groupMember = data;
            avatarView.bind(user, true);
            userName.setText(user.getName().get());
        }

        @Override
        public void unbind() {
            avatarView.unbind();
        }
    }

    public interface MentionsUpdatedCallback {
        void onMentionsUpdated(int oldRowsCount, int newRowsCount);
    }
}