---
title: Installation
---

# Installation

### Method 1 - Quick and Dirty

1. In Roblox Studio, select the folder where you keep your third party modules / utilities.
2. Run this in the command bar:

<textarea readonly style="width: 100%" onclick="this.select()">local Http = game:GetService("HttpService")
local HttpEnabled = Http.HttpEnabled
Http.HttpEnabled = true
local m = Instance.new("ModuleScript")
m.Parent = game:GetService("Selection"):Get()[1] or game:GetService("ServerScriptService")
m.Name = "Promise"
m.Source = Http:GetAsync("https://raw.githubusercontent.com/evaera/roblox-lua-promise/master/lib/init.lua")
game:GetService("Selection"):Set({m})
Http.HttpEnabled = HttpEnabled</textarea>

### Method 2 - Manual

1. Visit the [latest release](https://github.com/evaera/roblox-lua-promise/releases/latest)
2. Under *Assets*, click `Promise.lua`
3. - Using [Rojo](https://rojo.space/)? Put the file into your game directly.
   - Using Roblox Studio? Open the file, copy its contents, and paste into a ModuleScript and call it `Promise`.

### Method 3 - Git Submodule

1. Add the Promise repository as a git submodule (ideally within a folder called `submodules`) (tutorial [here](https://gist.github.com/gitaarik/8735255))
2. Update your [Rojo configuration](https://rojo.space/docs/6.x/project-format/) to point to the appropriate path and sync the file in.

### Method 4 - Package Manager

Using a package manager? The repository has a [`rotriever.toml`](https://github.com/evaera/roblox-lua-promise/blob/master/rotriever.toml).


## Next

Now, check out the [API reference](/roblox-lua-promise/lib/)!
