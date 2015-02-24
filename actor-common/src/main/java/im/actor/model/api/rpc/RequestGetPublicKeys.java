package im.actor.model.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class RequestGetPublicKeys extends Request<ResponseGetPublicKeys> {

    public static final int HEADER = 0x6;
    public static RequestGetPublicKeys fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestGetPublicKeys(), data);
    }

    private List<PublicKeyRequest> keys;

    public RequestGetPublicKeys(List<PublicKeyRequest> keys) {
        this.keys = keys;
    }

    public RequestGetPublicKeys() {

    }

    public List<PublicKeyRequest> getKeys() {
        return this.keys;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        List<PublicKeyRequest> _keys = new ArrayList<PublicKeyRequest>();
        for (int i = 0; i < values.getRepeatedCount(1); i ++) {
            _keys.add(new PublicKeyRequest());
        }
        this.keys = values.getRepeatedObj(1, _keys);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeRepeatedObj(1, this.keys);
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}