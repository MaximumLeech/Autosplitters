state("trine1_32bit") 
{
	byte cutscene: "trine1_32bit.exe", 0x1CF38F8;
	byte voiceclip: "trine1_32bit.exe", 0x1D12CE0;
	byte level: "trine1_32bit.exe", 0x1CF3B40, 0x4, 0x190;
	byte load: "trine1_32bit.exe", 0x01C6218C, 0x0, 0x1C, 0x168, 0x14, 0x346;
}

start
{
	return (current.level == 1 && old.level == 0);
}

split
{
	return (current.level == old.level + 1);
}

isLoading 
{
	return (current.voiceclip != 0 || current.cutscene != 0 || current.level == 0 || current.load != 0);
}
