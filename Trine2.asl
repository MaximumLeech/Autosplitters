state("trine2_32bit") 
{
	//byte skip: "trine2_32bit.exe", 0x186E260; this one is buggy
	byte loading: "trine2_32bit.exe", 0x1866921;
	byte level: "trine2_32bit.exe", 0x01863D20, 0xC4, 0x104, 0x50, 0x14, 0x74;
	byte movement: "trine2_32bit.exe", 0x01863D20, 0xD8, 0xC0, 0x334, 0x14, 0x6C;
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
	return (current.loading != 0 || current.movement != 1 || current.level == 0);
}