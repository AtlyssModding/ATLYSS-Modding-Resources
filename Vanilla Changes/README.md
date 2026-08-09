These are tools and documentation for different subjects on vanilla ATLYSS's history.
# Table of Contents
- [**Balance Changes**](/Vanilla%20Changes/Balance%20Changes)
- [**Maxed Profiles**](/Vanilla%20Changes/Maxed%20Profiles)
- [**Scriptable Dumps**](/Vanilla%20Changes/Scriptable%Dumps)
- [**Dumper**](/Vanilla%20Changes/Dumper)
-
- [Proportions](/Vanilla%20Changes/Slider%Proportions.md)
#
## Balance Changes
These are up-to-date Markdown Tables of Saito's [Atlyss Equipment Across Patches](https://docs.google.com/spreadsheets/d/1-ggFqueItU0o7faS1tYxdfqKqOXdjn288-rpwaeD3bM/edit?usp=sharing) spreadsheets.
- `Beta` (November-December 2024)
- `72025` (July-August 2025)
- `102025` (October 2025)
- `112025-12026` (November 2025-January 2026)
#
## Maxed Profiles
Maxed out character profiles and bank storages across major game versions. Learn [**how to backup Saves & file editing**](https://github.com/AtlyssModding/ATLYSS-Modding-Resources/wiki/How-to-backup-saves-&-file-editing) to use this.

Beta requires the original [MoreBankTabs](https://thunderstore.io/c/atlyss/p/16MB/MoreBankTabs/) and was built against version `1.6.2b`.\
Different versions of [**MoreBankTabsFixed**](https://thunderstore.io/c/atlyss/p/SnivyXXY/MoreBankTabsFixed/versions/) were used for compatibility.
- `72025` (Designed for V1.0.1 but V2.0.1 is fine)
- `102025` (Designed for V2.0.1 but V1.0.1 is fine for equipment)
- `112025-12026` (Equipment is accessible without the mod, otherwise V2.1.1)

\- Warning post-72025: Items like the Epic Carrot and Glyphik Pages require their respective quests active to collect!
#
## Scriptable Dumps
Stripped-down dumps of the game's Scriptables using a semi-friendly JSON format. C# Scripts were used to generate the folders and edited for different game versions. The Dumpers are available if you wish to use them yourself.
1. Download the respective Dumper and install [**Unity Explorer**](https://thunderstore.io/c/atlyss/p/AtlyssModding/Atlyss_UnityExplorer/).
- `Dumper.cs` is latest.
- `Dumper (Beta).cs` is 1.0.0B to 1.6.2B.
- `Dumper (72025-102025).cs` is July to October 2025.
- `Dumper (112025).cs` is November 2025.
2. Inside the BepInEx folder find `AtlyssModding-Atlyss_UnityExplorer` and drop the file into `sinai-dev-UnityExplorer\Scripts`.
3. In-game, open Unity Explorer's C# Console and select Dumper.cs from the dropdown list then compile.
4. After compiling, switch to REPL and paste `Dump.Dumper();` on an empty line then compile again.
5. There should be a new folder with the text files in `ATLYSS\ATLYSS_Data\Scriptable`.

![C# Console](/Vanilla%20Changes/Dumper/Image.png)\
BepInEx console should send this during compiling. If things go wrong then there may be mismatches between the script and version.
```
[Message:UnityExplorer] Try Update exists code....
[Message:UnityExplorer] Success!! override
[Message:UnityExplorer] Invoked REPL, result: 6
```
These scripts are a work in progress and don't cover all scriptables currently. Feel free to create a Issue or Pull Request to contribute.
#
## Contributors
- `Saito:` Granted permission to adopt their spreadsheets here.
- `Catman:` Created the Dumper and helped troubleshoot it. ([**Github**](https://github.com/Catman-232) - [**Thunderstore**](https://thunderstore.io/c/atlyss/p/Catman232/))
- `Marioalexsan:` Technical help.