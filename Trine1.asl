state("trine1_32bit") 
{
  byte cutscene: "trine1_32bit.exe", 0x1CF38F8;
  byte loading: "trine1_32bit.exe", 0x1D12CE0;
}

isLoading 
{
  return (current.loading != 0 || current.cutscene != 0);
}