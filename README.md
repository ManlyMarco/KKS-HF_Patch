![preview](https://user-images.githubusercontent.com/39247311/132988884-9594a439-1e7a-4c44-aa8b-f2e64c34752b.png)
# HF Patch for Koikatsu Sunshine!
An unofficial patch for [Koikatsu Sunshine](https://wiki.anime-sharing.com/hgames/index.php?title=Koikatsu_Sunshine) with fan-made English translations and essential mods. It will allow you to load all character cards and scenes and give you countless content creation and gameplay improvements while still keeping the original, uncluttered feel of the game. All content is tested and fixed (or removed) as needed before each update, providing a stable platform for further modding. HF Patch can also repair many common issues, try it if you have issues.

Read the [full HF Patch manual](https://gist.github.com/ManlyMarco/31b78470b8e190686c7ed9686c237e3f) to learn more about what it is, what it does, how to use it, and how to solve common issues.

Koikatsu can be split into two parts: character and scene creation tools (character maker and Studio), and an adventure game with story mode (it can use your custom characters, but not scenes). You can see preview videos of the game and some of the mods [here](https://www.youtube.com/channel/UClyTRNXmHHsbdUWC0hq8GrA).

HF Patch does not contain the full game, paid expansions or any other pirated content. You have to buy the game and expansions separately. ~~You can buy the Japanese version [on DMM](https://dlsoft.dmm.co.jp/detail/illusion_0035/) (there is no English/Steam release). You can watch a guide on how to buy and install games from DMM [here](https://youtu.be/WLoY5WCqTSw).~~ Unfortunately because Illusion has pulled down this game from stores it is no longer possible to buy it online. Instead, you have to buy it second-hand (the game had a box release in Japan, you can still install and play it from disc without issue).

The base game (Koikatsu Sunshine), and by extension this patch are not suitable for minors. If you are under 18 years old you can not use this patch. The base game and this patch contain only characters of age 18 or higher. The creator of this patch is not responsible for creations of its users and prohibits any unlawful use of this software.

You can support development of HF Patch and many of the included plugins through my Patreon page: https://www.patreon.com/ManlyMarco

## What's included?
HF Patch includes and installs by default:
- All free updates (no need to install any updates manually)
- Fan-made translations and automatic machine translations to fill in gaps
- Most commonly used plugins and mods, which allows you to load most character cards and scenes available online
- Fixes for common issues with the game and mods like botched mod installs
- Full uncensor with multiple different models
You can see a full list of what HF Patch contains [here](https://github.com/ManlyMarco/KKS-HF_Patch/blob/master/Plugin%20Readme.md) and/or by checking contents the .iss files.
Note that HF Patch does not contain the full game, paid expansions or any other pirated content. The full game needs to be already installed for the patch to work. If you want to use the VR module, also install it before patching!

## Download
Check the [Releases](https://github.com/ManlyMarco/KKS-HF_Patch/releases) page for download links. The magnet links need to be downloaded with a torrent client like [qBittorrent](https://www.qbittorrent.org/). To get mail updates for each new release you can watch this repositiory (top right) or watch the linked patreon page.

## How to install the patch?
Here's a video guide that might be useful. The guide is mostly universal between different games, but there might be some differences.
- [How to get the game from DMM, install it and install HF Patch (Use the chapter selection to easily find what you are looking for)](https://youtu.be/WLoY5WCqTSw)

### Text guide
1. Install Koikatsu Sunshine to a directory with no Japanese characters in its path (e.g. D:\Games\KKS)
2. (Optional) Install any DLCs* you have. You don't have to install all of them, you can pick only some DLCs or don't install any DLCs at all.
3. Download the latest HF Patch release from [Releases](https://github.com/ManlyMarco/KKS-HF_Patch/releases/latest). You should get a single .exe file along with a few .bin files. You can place these files anywhere you want (except the folder where the game is located), but they HAVE to be in the same folder together. DO NOT download any .zip files from GitHub - they contain source code for the patch, not the patch itself.
4. Install the latest HF Patch by running the .exe and following the wizard. The default settings should work well for most users.
   - During the installation the patch may appear stuck, unless you get an error wait for it to finish.
   - If you use the light version of the patch its a good idea to update your Sideloader Modpack separately, you can do this by selecting update in the launcher or using the look for mods option in KKManager.
5. Done! You can now start the game launcher as usual and you will notice some new options straight away. You can remove the downloaded patcher files now if you want to save some space.
Special patch is included in HF Patch, you don't have to install it manually. It won't hurt anything if you have it installed already, the patch will figure itself out. Just to be safe you can verify game files in Steam before installing the HF Patch if you messed with your installation folder before doing this.
   - Keep in mind that the first launch of the game after patching could take a couple minutes on slower systems and the game window might not appear immediately.
6. (Optional) You can update the modpacks by clicking the update button within the launcher. You can leave out Sideloader Modpack - Studio if you don't plan on using studio.

*Note: If you want to run the game under Wine/Proton (Linux, SteamOS, macOS, etc.), read [this](https://github.com/Mantas-2155X/illusion-wine-guide) and [this](https://docs.bepinex.dev/articles/advanced/proton_wine.html).*

### How to install DLCs
DLCs are extra paid content and are all fully optional. Here's a simple way to install any downloaded DLCs (JP versions):
1. Extract the DLC/expansion with 7zip (or similar) until you find a "setup" folder that contains an "abdata" folder and some other files.
2. You need to copy all of these folders and files into your game's install directory (you should see our own abdata folder and other files similar to what's in the DLC). Replace files when asked.
3. Install HF Patch, even if you already have it installed. (Optional, but if you replaced any files then you should reinstall it)
DLCs for Koikatu and EmotionCreators will **not** work with Koikatsu Sunshine, trying to install them is likely to break your game (you might need to fully reinstall the game to fix it afterwards).

### Solutions to common issues with the patch
- If after installing the patch you have issues running the game, restart your PC and try to install the patch again with default settings. 
- If after installing the patch Studio hangs when loading, start KKManager (it's in a folder in game directory) and click "Look for updates" at the top, then tell it to update the Studio modpack. Or press the update button in the launcher.
- If you have trouble downloading by using the magnet link, try updating your torrent client or use the latest qBittorrent (it's known to work well).
- Make sure you downloaded ALL parts to the same folder and that the parts all have the same name. You need ALL parts for the patch to work. If the installer asks you for another disc it means that your download was not extracted correctly and is missing files, or you renamed or removed some of the extracted files. 
- If you see any messages about corrupted files you'll have to re-download the offending part (or all of the parts).  If you downloaded the torrent, most torrent clients can "force recheck" the downloaded files so you don't have to re-download the whole thing.
- If your antivirus is flagging the .exe file make sure that you've downloaded the patch by following links in this post. If you are sure the download came from the right place, it's most likely a false positive (it's a common issue with non-signed application installers).
- On slower drives it can take a few minutes to finish verifying the files since it has to read and hash a lot of data. If you can see it's doing something in task manager then just let it run.

## Discussion and help
There is an extensive FAQ on the [wiki](https://wiki.anime-sharing.com/hgames/index.php?title=Koikatsu_Sunshine/Technical_Help) and in the [Koikatsu! discord server](https://discord.gg/zS5vJYS). There are also some guides available on the server.

If you need further help, feel free to ask in the **#help** channel on the server. Try to search for your issue first by using the Discord's search box at top right, it might have been already answered before. Please don't ask for help under this guide because I rarely check the comments here.

- [Koikatsu Sunshine Wiki (Gameplay and technical help)](https://wiki.anime-sharing.com/hgames/index.php?title=Koikatsu_Sunshine)
- [Koikatsu! discord server](https://discord.gg/zS5vJYS)
- [Illusion Soft discord server](https://discord.gg/F3bDEFE)

### General FAQ / Notes
- Koikatu and Koikatsu Party (KK/KKP) are 2 versions of the same game and both work with the KK HF Patch. Koikatsu Sunshine (KKS) is a completely separate sequel that works with the KKS HF Patch (this distinction is important!).
- KKS shares many common parts with KK/KKP, but it is not directly cross-compatible in most cases - you can't use DLC or plugins for one game in the other (with some exceptions of course).
- You can configure many plugins by Pressing F1 and then "Plugin settings". You can also see most of the plugin hotkeys in this menu (and change them).
- You only need to install the latest version of the patch. If you installed a previous version you don't have to do anything, just install the latest version as normal.
- Installing HF Patch will add free updates, which contain Studio (separate exe file). For many people this is the only mode they use (apart from character maker to make characters for use in studio), so it is highly recommended that you check it out. All of Koikatu and Koikatsu Sunshine HF Patch preview images were made in studio. You can see other people's creations and download their studio scenes from the Discord server and various card sharing boorus.
- HF Patch does not contain the full game, paid expansions or any other pirated content. The full game needs to be already installed for the patch to work. If you want to use the VR module, also install it before patching! All paid DLC are optional and not required, you can skip them and the patch will still work fine (some features might be disabled/unavailable).
- You can install HF Patch over almost any game install and have it work perfectly, and you can run it again to enable/disable some plugins. This patch will automatically fix many broken game/mod installs and common issues. Just make sure to let it remove all old mods when asked.
- You can see other people's creations and download their studio scenes from the Discord server, [bepisdb](db.bepis.moe) and the [booru](illusioncards.booru.org). You might need to run Update from game launcher to load some cards and scenes if they use mods not included in the patch.
- It's recommended to install all content mods if you plan to download character cards (Studio modpack is optional in case you won't use studio) - they are required by many cards and scenes. If you find a card that is showing mod missing warnings try updating Sideloader Modpacks. This can be done by simply pressing the update button in the launcher or by launching KKManager and using the look for mods option.
- The mods included in the patch don't modify any game files and can be easily disabled by removing the "winhttp.dll" file from your game directory. Official patches are applied permanently.
- Please leave the modders some positive feedback or help them in some other way!
- There is no warranty on this patch or on any of the included mods. You are installing this patch at your own risk. That being said, we try our best to help in case of issues. If you find any bugs, do let us know so they can be fixed.

## How to build the source
At least Visual Studio 2017 is needed for the helper library and latest unicode Inno Setup compiler is needed for the patch itself. All necessary mods have to be placed inside correct subfolders of the Input directory to compile. Because of massive size, they are not included here.
