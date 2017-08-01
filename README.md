# Roblox Client Watch

The purpose of this repository is to auto-track changes to Roblox's client.
You can find lots of miscellaneous data dumped in here, to see changes to Roblox over time.

The master branch stores tracked content that is currently on production (roblox.com). There are multiple branches that can be viewed, based on Roblox's test servers.

## Helpful Info:

### API\_Dump.txt
This is Roblox's API Dump. It is a feature bundled with their game client that exports a readable version of Roblox's usable Lua API.

### DeepStrings.txt
This is a sorted list of dumped strings from Roblox's game client exe. Theres currently a lot of garbage data dumped into this file, which is why it's really large. I'm hoping to improve this in the future using a better method of parsing out legible strings.

### FVariables.txt
This is a sorted list of fast variables, which are used by Roblox to toggle features remotely on multiple platforms, in case of crashes.

### version.txt
This represents a GUID for the current version of Roblox on the specified branch.

## Helpful Links:

* Comparison of [roblox->gametest1](https://github.com/CloneTrooper1019/Roblox-Client-Watch/compare/gametest1.robloxlabs)
* Comparison of [roblox->gametest2](https://github.com/CloneTrooper1019/Roblox-Client-Watch/compare/gametest2.robloxlabs)
* Comparison of [gametest1->gametest2](https://github.com/CloneTrooper1019/Roblox-Client-Watch/compare/gametest1.robloxlabs...gametest2.robloxlabs)
* [DeepStrings.txt without extreme page lag](https://raw.githubusercontent.com/CloneTrooper1019/Roblox-Client-Watch/master/DeepStrings.txt)
