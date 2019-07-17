state("trine3_64bit") 
{
	byte loading: "trine3_64bit.exe", 0x290DA39;
}

isLoading 
{
	return (current.loading != 0);
}