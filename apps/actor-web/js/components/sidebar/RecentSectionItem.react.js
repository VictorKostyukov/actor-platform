var React = require('react');
var classNames = require('classnames');

var AvatarItem = require('../common/AvatarItem.react');
var DialogActionCreators = require('../../actions/DialogActionCreators');

var RecentSectionItem = React.createClass({
  propTypes: {
    dialog: React.PropTypes.object.isRequired,
    selectedDialog: React.PropTypes.object.isRequired
  },

  render: function() {
    var dialog = this.props.dialog;
    var selectedDialog = this.props.selectedDialog;
    var isActive  = false;

    if (selectedDialog) {
      isActive = (dialog.peer.peer.id == selectedDialog.peer.peer.id)
    }

    var recentClassName = classNames('sidebar__list__item', {
      'sidebar__list__item--active': isActive
    });

    return(
      <li className={recentClassName} onClick={this._onClick}>
        <AvatarItem title={dialog.peer.title}
                    image={dialog.peer.avatar}
                    placeholder={dialog.peer.placeholder}
                    size="tiny"/>
          <span>
            {dialog.peer.title}
          </span>
      </li>
    )
  },

  _onClick: function() {
    DialogActionCreators.selectDialog(this.props.dialog);
  }
});

module.exports = RecentSectionItem;