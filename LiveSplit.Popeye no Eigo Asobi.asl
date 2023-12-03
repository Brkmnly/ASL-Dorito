// Popeye Eigo NES autosplitter coded by SRC@brkmnly, quality control by SRC@DoritoBreath

// Not compatible with NEStopia

// This is designed to be used with a layout with 10 splits.
// Timer starts the frame that the game category is selected.
// Timer splits on last letter hit of each stage. Use with a 10-split layout will mean that timer ends on the frame the last letter is hit.
// Works as expected in all categories of Word Puzzle A.



// ===


state("fceux64", "2.6.5")
{
	byte round  : 0x4D5150, 0x58;
	byte state  : 0x4D5150, 0x5A;
	byte cursor : 0x4D5150, 0x5B;
	byte boop   : 0x4D5150, 0x6F;
	byte res    : 0x4D5150, 0x52;
}


// ===



state("fceux", "2.2.3")
{
	byte round : 0x3B1388, 0x58;
	byte state : 0x3B1388, 0x5A;
	byte boop  : 0x3B1388, 0x6F;
	byte res   : 0x3B1388, 0x52;
}

state("fceux", "2.3.0")
{
	byte round : 0x44962C, 0x58;
	byte state : 0x44962C, 0x5A;
	byte boop  : 0x44962C, 0x6F;
	byte res   : 0x44962C, 0x52;
}

state("fceux", "2.4.0")
{
	byte round : 0x44DCD8, 0x58;
	byte state : 0x44DCD8, 0x5A;
	byte boop  : 0x44DCD8, 0x6F;
	byte res   : 0x44DCD8, 0x52;
}

// FCEUX 2.5.0, 2.6.3, and 2.6.4 have the same base RAM address
state("fceux", "2.5.0/2.6.3/2.6.4")
{
	byte round : 0x3DA4EC, 0x58;
	byte state : 0x3DA4EC, 0x5A;
	byte boop  : 0x3DA4EC, 0x6F;
	byte res   : 0x3DA4EC, 0x52;
}

// FCEUX 2.6.1 and 2.6.2 have the same base RAM address
state("fceux", "2.6.1/2")
{
	byte round : 0x3DA4DC, 0x58;
	byte state : 0x3DA4DC, 0x5A;
	byte boop  : 0x3DA4DC, 0x6F;
	byte res   : 0x3DA4DC, 0x52;
}

state("fceux", "2.6.5")
{
	byte round : 0x4378A4, 0x58;
	byte state : 0x4378A4, 0x5A;
	byte boop  : 0x4378A4, 0x6F;
	byte res   : 0x4378A4, 0x52;
}

// state("fceux64", "2.6.5")
// {
// 	byte round : 0x4D5150, 0x58;
// 	byte state : 0x4D5150, 0x5A;
// 	byte boop  : 0x4D5150, 0x6F;
// 	byte res   : 0x4D5150, 0x52;
// }

state("qfceux", "2.6.1")
{
	byte round : 0x30DD70, 0x58;
	byte state : 0x30DD70, 0x5A;
	byte boop  : 0x30DD70, 0x6F;
	byte res   : 0x30DD70, 0x52;
}

state("qfceux", "2.6.2")
{
	byte round : 0x30ED70, 0x58;
	byte state : 0x30ED70, 0x5A;
	byte boop  : 0x30ED70, 0x6F;
	byte res   : 0x30ED70, 0x52;
}

state("qfceux", "2.6.3")
{
	byte round : 0x318330, 0x58;
	byte state : 0x318330, 0x5A;
	byte boop  : 0x318330, 0x6F;
	byte res   : 0x318330, 0x52;
}

state("qfceux", "2.6.4")
{
	byte round : 0x318340, 0x58;
	byte state : 0x318340, 0x5A;
	byte boop  : 0x318340, 0x6F;
	byte res   : 0x318340, 0x52;
}

state("qfceux", "2.6.5")
{
	byte round : 0x32E718, 0x58;
	byte state : 0x32E718, 0x5A;
	byte boop  : 0x32E718, 0x6F;
	byte res   : 0x32E718, 0x52;
}

// ===

// state("nestopia", "1.40")
// {
// 	// base 0x0000 address of ROM : "nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0x68;
// 	// just add your fceux offset to 0x68 to get the final nestopia offset - 0x7A0
// 	// ^ I didn't write this btw, but it's pretty useful info so I left it in :)
// 	byte round : "nestopia.exe", 0x1B2BCC, 0, 8, 0xC, 0xC, 0xC0;
// 	byte state : "nestopia.exe", 0x1B2BCC, 0, 8, 0xC, 0xC, 0xB9;
// 	byte boop  : "nestopia.exe", 0x1B2BCC, 0, 8, 0xC, 0xC, 0x7C4;
// 	byte res   : "nestopia.exe", 0x1B2BCC, 0, 8, 0xC, 0xC, 0x76;
// }
// 
// state("nestopia", "1.50")
// {
// 	// base 0x0000 address of ROM: "nestopia.exe", 0x1788EC, 0, 0x70
// 	byte round : "nestopia.exe", 0x1788EC, 0, 0xB8;
// 	byte state : "nestopia.exe", 0x1788EC, 0, 0x7CF;
// 	byte boop  : "nestopia.exe", 0x1788EC, 0, 0x7CC;
// 	byte res   : "nestopia.exe", 0x1788EC, 0, 0x7E;
// }
// 
// state("nestopia", "1.51")
// {
// 	// base 0x0000 address of ROM: "nestopia.exe", 0x1798EC, 0, 0x70
// 	byte round : "nestopia.exe", 0x1798EC, 0, 0xB8;
// 	byte state : "nestopia.exe", 0x1798EC, 0, 0x7CF;
// 	byte boop  : "nestopia.exe", 0x1798EC, 0, 0x7CC;
// 	byte res   : "nestopia.exe", 0x1798EC, 0, 0x7E;
// }
// 
// // Nestopia UE 1.51.1 and 1.52.0 have the same base RAM address
// state("nestopia", "1.51.1/1.52.0")
// {
// 	// base 0x0000 address of ROM: "nestopia.exe", 0x17A8EC, 0, 0x70
// 	byte round : "nestopia.exe", 0x17A8EC, 0, 0xB8;
// 	byte state : "nestopia.exe", 0x17A8EC, 0, 0x7CF;
// 	byte boop  : "nestopia.exe", 0x17A8EC, 0, 0x7CC;
// 	byte res   : "nestopia.exe", 0x17A8EC, 0, 0x7E;
// }

// ===

state("Mesen", "0.0.4")
{
	// base 0x0000 address of ROM: "MesenCore.dll", 0x42F89E0, 0xB8, 0x58, 0
	byte round : "MesenCore.dll", 0x42F89E0, 0xB8, 0x58, 0x58;
	byte state : "MesenCore.dll", 0x42F89E0, 0xB8, 0x58, 0x5A;
	byte boop  : "MesenCore.dll", 0x42F89E0, 0xB8, 0x58, 0x6F;
	byte res   : "MesenCore.dll", 0x42F89E0, 0xB8, 0x58, 0x52;
}

state("Mesen", "0.0.5")
{
	// base 0x0000 address of ROM: "MesenCore.dll", 0x42F99C0, 0xB8, 0x58, 0
	byte round : "MesenCore.dll", 0x42F99C0, 0xB8, 0x58, 0x58;
	byte state : "MesenCore.dll", 0x42F99C0, 0xB8, 0x58, 0x5A;
	byte boop  : "MesenCore.dll", 0x42F99C0, 0xB8, 0x58, 0x6F;
	byte res   : "MesenCore.dll", 0x42F99C0, 0xB8, 0x58, 0x52;
}

state("Mesen", "0.0.6")
{
	// base 0x0000 address of ROM: "MesenCore.dll", 0x42FA9C0, 0xB8, 0x58, 0
	byte round : "MesenCore.dll", 0x42FA9C0, 0xB8, 0x58, 0x58;
	byte state : "MesenCore.dll", 0x42FA9C0, 0xB8, 0x58, 0x5A;
	byte boop  : "MesenCore.dll", 0x42FA9C0, 0xB8, 0x58, 0x6F;
	byte res   : "MesenCore.dll", 0x42FA9C0, 0xB8, 0x58, 0x52;
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
	
	if (game.ProcessName == "nestopia")
	{
		// Extra check for the product version in the case of v1.40 because why not
		// (Unfortunately, the product version in the v1.50 UE executable is just "x.xx").
		string prodVersion = modules.First().FileVersionInfo.ProductVersion;
		
		switch (memSize)
		{
			case 2113536: // Nestopia v1.40
				if (prodVersion == "1.40")
				{
					print("Detected Nestopia v1.40");
					version = "1.40";
					break;
				}
				goto default;
			case 1953792: // Nestopia UE v1.50
				print("Detected Nestopia UE v1.50");
				version = "1.50";
				break;
			case 1966080: // Nestopia UE v1.51.0
				print("Detected Nestopia UE v1.51.0");
				version = "1.51";
				break;
			case 1970176: // Nestopia UE v1.51.1
				print("Detected Nestopia UE v1.51.1");
				version = "1.51.1/1.52.0";
				break;
			case 1974272: // Nestopia UE v1.52.0
				print("Detected Nestopia UE v1.52.0");
				version = "1.51.1/1.52.0";
				break;
			default:
				print("Unrecognized Nestopia version!");
				version = "";
				break;
		}
	}
	else if (game.ProcessName == "fceux")
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
}



start
{
	if (current.boop == 1 && old.boop == 0)
	{
		return true;
	}
}

split
{
	if (current.round != old.round)
	{
		return true;
	}
}

reset
{
	if (current.res == 0 && old.res != 1)
	{
		return true;	
	}
}

onReset
{
	print("Resetting...");
}
