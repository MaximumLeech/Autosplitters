state("trine1_32bit") 
{
	byte cutscene: "trine1_32bit.exe", 0x1CF38F8;
	byte loading: "trine1_32bit.exe", 0x1D12CE0;
	byte level: "trine1_32bit.exe", 0x1CF3B40, 0x4, 0x190;
}

init
{
	vars.SplitIndex = 0;
	vars.split = new List<int> {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17};	// Level splits counter
}

start
{
	if (current.level == 1 && (current.loading == 0 && old.loading == 1)){
		vars.SplitIndex = 0;
		return true;
	}
}

split
{
	if (current.level == vars.split[vars.SplitIndex]){
		vars.SplitIndex += 1;
		return true;
	}
}

isLoading 
{
	return (current.loading != 0 || current.cutscene != 0 || current.level == 0);
}
