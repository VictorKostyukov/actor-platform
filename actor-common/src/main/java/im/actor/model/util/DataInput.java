package im.actor.model.util;

import java.io.IOException;

/**
 * Created by ex3ndr on 07.02.15.
 */
public class DataInput {
    private byte[] data;
    private int offset;
    private int maxOffset;

    public DataInput(byte[] data, int offset, int len) {
        this.data = data;
        this.offset = offset;
        this.maxOffset = offset + len;
    }

    public int readByte() throws IOException {
        if (offset == maxOffset) {
            throw new IOException();
        }
        return data[offset++] & 0xFF;
    }

    public int readInt() throws IOException {
        if (offset + 4 > maxOffset) {
            throw new IOException();
        }

        int res = data[offset + 3] + (data[offset + 2] << 8) + (data[offset + 1] << 16) + (data[offset] << 24);
        offset += 4;
        return res;
    }

    public long readLong() throws IOException {
        if (offset + 8 > maxOffset) {
            throw new IOException();
        }

        long a1 = data[offset + 3] & 0xFF;
        long a2 = data[offset + 2] & 0xFF;
        long a3 = data[offset + 1] & 0xFF;
        long a4 = data[offset + 0] & 0xFF;

        long res1 = (a1) + (a2 << 8) + (a3 << 16) + (a4 << 24);
        offset += 4;

        long b1 = data[offset + 3] & 0xFF;
        long b2 = data[offset + 2] & 0xFF;
        long b3 = data[offset + 1] & 0xFF;
        long b4 = data[offset + 0] & 0xFF;

        long res2 = (b1) + (b2 << 8) + (b3 << 16) + (b4 << 24);
        offset += 4;

        return res2 + (res1 << 32);
    }

    public long readUInt() throws IOException {
        if (offset + 8 > maxOffset) {
            throw new IOException();
        }

        long a1 = data[offset + 3] & 0xFF;
        long a2 = data[offset + 2] & 0xFF;
        long a3 = data[offset + 1] & 0xFF;
        long a4 = data[offset + 0] & 0xFF;
        offset += 4;
        return  (a1) + (a2 << 8) + (a3 << 16) + (a4 << 24);
    }

    public byte[] readBytes(int count) throws IOException {
        if (offset + count > maxOffset) {
            throw new IOException();
        }

        byte[] res = new byte[count];
        for (int i = 0; i < count; i++) {
            res[i] = data[offset++];
        }
        return res;
    }

    public long readVarInt() throws IOException {
        long value = 0;
        long i = 0;
        int b;

        do {
            if (offset == maxOffset) {
                throw new IOException();
            }

            b = data[offset++];

            if ((b & 0x80) != 0) {
                value |= (b & 0x7F) << i;
                i += 7;
                if (i > 70) {
                    throw new IOException();
                }
            } else {
                break;
            }
        } while (true);

        return value | (b << i);
    }

    public byte[] readProtoBytes() throws IOException {
        int len = (int) readVarInt();
        return readBytes(len);
    }

    public long[] readProtoLongs() throws IOException {
        int len = (int) readVarInt();
        long[] res = new long[len];
        for (int i = 0; i < res.length; i++) {
            res[i] = readLong();
        }
        return res;
    }

    public String readProtoString() throws IOException {
        byte[] data = readProtoBytes();
        return new String(data, "UTF-8");
    }

    public boolean readProtoBool() throws IOException {
        return readByte() != 0;
    }
}