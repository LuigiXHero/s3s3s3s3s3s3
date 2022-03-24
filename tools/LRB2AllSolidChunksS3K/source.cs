//Created by devon
byte[] chunkData = Kosinski.Decompress(args[0]);
for (int i = 0; i < chunkData.Length; i += 2)
    {
        if ((chunkData[i] & 0x20) != 0)
            chunkData[i] |= 0x10;
        if ((chunkData[i] & 0x80) != 0)
            chunkData[i] |= 0x40;
    }
Kosinski.Compress(chunkData, args[0] + ".conv");