// Pacman 10,000pt autosplit by brkmnly and dorito breath

state("fceux", "2.6.5")
{
	byte mode : 0x4378A4, 0x47;
	byte tenk : 0x4378A4, 0x73;
	byte mm   : 0x4378A4, 0x48;
	byte tr   : 0x4378A4, 0x6C;
	byte bl   : 0x4378A4, 0x6F;
}
state("fceux64", "2.6.5")
{
	byte mode : 0x4D5150, 0x47;
	byte tenk : 0x4D5150, 0x73;
	byte mm   : 0x4D5150, 0x48;
	byte tr   : 0x4D5150, 0x6C;
	byte bl   : 0x4D5150, 0x6F;
}
state("qfceux", "2.6.5")
{
	byte mode : 0x32E718, 0x47;
	byte tenk : 0x32E718, 0x73;
	byte mm   : 0x32E718, 0x48;
	byte tr   : 0x32E718, 0x6C;
	byte bl   : 0x32E718, 0x6F;
}

init
{
	// modules.First() sometimes points to ntdll.dll instead of the actual game's executable.
	// Hopefully retrying the init function fixes that...?
	if (modules.First().ModuleName != game.ProcessName + ".exe")
	{
		print("THE THING HAPPENED!!! kosmicMad (retrying init)");
		throw new Exception("init - module not found");
	}
	
	int memSize = modules.First().ModuleMemorySize;
	
	// Unfortunately for us, some FCEUX versions have the same ModuleMemorySize
	// So we need a better way to distinguish between them
	print("File name: " + modules.First().FileName);
	string hashStr;
	using (var sha1 = System.Security.Cryptography.SHA1.Create())
		using (var fs = File.OpenRead(modules.First().FileName))
			hashStr = string.Concat(sha1.ComputeHash(fs).Select(b => b.ToString("X2")));
	print(String.Format("Module memory size: {0}\tSHA1 hash: {1}", memSize, hashStr));
	
	if (game.ProcessName == "fceux")
	{
		switch (memSize)
		{
			case 4747264:
				print("Detected FCEUX 2.2.3");
				version = "2.2.3";
				break;
			case 5877760:
				print("Detected FCEUX 2.3.0");
				version = "2.3.0";
				break;
			case 6705152:
				print("Detected FCEUX 2.4.0");
				version = "2.4.0";
				break;
			case 6303744:
				// Use the SHA1 hash to distinguish between these versions
				if (hashStr == "6E5D8D8164C6987B6C82890DEAF08505823AAB43" || hashStr == "761457488E3E0BAC68A9A9164DFFCA2E5D25B6EC"
					|| hashStr == "4643FB86E9DAB3BD43DBFC2409CB0514B21B7147")
				{
					print("Detected FCEUX 2.5.0/2.6.3/2.6.4");
					version = "2.5.0/2.6.3/2.6.4";
				}
				else if (hashStr == "00D71187B3653DC2B30593D8C9024C4F3C1AF58D")
				{
					print("Detected FCEUX 2.6.1");
					version = "2.6.1/2";
				}
				else if (hashStr == "4E99DBAA10F1634CF470A8200835925B265D9BEF")
				{
					print("Detected FCEUX 2.6.2");
					version = "2.6.1/2";
				}
				else
					goto default;
				break;
			case 6434816:
				print("Detected FCEUX 2.6.5");
				version = "2.6.5";
				break;
			default:
				print("Unrecognized FCEUX version!");
				version = "";
				break;
		}
	}
	else if (game.ProcessName == "fceux64")
	{
		switch (memSize)
		{
			case 8069120:
				print("Detected FCEUX64 2.6.5");
				version = "2.6.5";
				break;
			default:
				print("Unrecognized FCEUX64 version!");
				version = "";
				break;
		}
	}
	else if (game.ProcessName == "qfceux")
	{
		switch (memSize)
		{
			case 16080896:
				print("Detected FCEUX (Qt/SDL) 2.6.1");
				version = "2.6.1";
				break;
			case 16084992:
				print("Detected FCEUX (Qt/SDL) 2.6.2");
				version = "2.6.2";
				break;
			case 16121856:
				if (hashStr == "AF376ABB5598E8C08C0F8DEA7A5C0895A2FEEA00")
				{
					print("Detected FCEUX (Qt/SDL) 2.6.3");
					version = "2.6.3";
				}
				else if (hashStr == "243AA59F54665522E8D7B0B11761B3AFEB7CFF32")
				{
					print("Detected FCEUX (Qt/SDL) 2.6.4");
					version = "2.6.4";
				}
				else
					goto default;
				break;
			case 16216064:
				print("Detected FCEUX (Qt/SDL) 2.6.5");
				version = "2.6.5";
				break;
			default:
				print("Unrecognized qFCEUX version!");
				version = "";
				break;
		}
	}
	else if (game.ProcessName == "Mesen")
	{
		switch (memSize)
		{
			case 5226496:
				print("Detected Mesen 0.0.4");
				version = "0.0.4";
				break;
			case 5300224:
				print("Detected Mesen 0.0.5");
				version = "0.0.5";
				break;
			case 5283840:
				print("Detected Mesen 0.0.6");
				version = "0.0.6";
				break;
			default:
				print("Unrecognized Mesen version!");
				version = "";
				break;
		}
	}

	refreshRate = 60;
	vars.bruh = 0;
}

start
{
	if (current.mm == 0 && old.mm == 255 && current.mode == 0)
	{
		return true;
	}
}

split
{
	if (current.tenk >= 1)
	{
		return true;
	}
	if (old.tr != 7 && current.tr == 7)
	{
		return true;
	}
	if (old.bl != 7 && current.bl == 7)
	{
		return true;
	}
}

reset
{
	if (current.mm == 255 && old.mm == 0)
	{
		return true;
	}
}
update
{
	vars.bruh = 0;
}