local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local RobloxAPI = Framework.RobloxAPI
local FFlagAllowAudioBulkImport = game:GetFastFlag("AllowAudioBulkImport")

local Screens = {
    MAIN = {
		Key = "MAIN",
	},
	PLACES = {
		Key = "PLACES",
	},
    MESHES = {
		Key = "MESHES",
	},
	IMAGES = {
		Key = "IMAGES",
	},
	PACKAGES = {
		Key = "PACKAGES",
	},
	SCRIPTS = {
		Key = "SCRIPTS",
	},
}

Screens.MESHES.Parent = Screens.MAIN.Key
Screens.IMAGES.Parent = Screens.MAIN.Key
Screens.PACKAGES.Parent = Screens.MAIN.Key
Screens.PLACES.Parent = Screens.MAIN.Key
Screens.SCRIPTS.Parent = Screens.MAIN.Key

Screens.MESHES.AssetType = Enum.AssetType.MeshPart
Screens.IMAGES.AssetType = Enum.AssetType.Image
Screens.PACKAGES.AssetType = Enum.AssetType.Package
Screens.PLACES.AssetType = Enum.AssetType.Place
Screens.SCRIPTS.AssetType = Enum.AssetType.Lua

Screens.PLACES.LayoutOrder = 1
Screens.IMAGES.LayoutOrder = 2
Screens.MESHES.LayoutOrder = 3
Screens.PACKAGES.LayoutOrder = 4
Screens.SCRIPTS.LayoutOrder = 5

if FFlagAllowAudioBulkImport and (not RobloxAPI:baseURLHasChineseHost()) then
	-- TODO: FFlagAllowAudioBulkImport - move these in the correct order when flag is turned on for pretty code
	Screens["AUDIO"] = {
		Key = "AUDIO",
	}
	Screens.AUDIO.Parent = Screens.MAIN.Key
	Screens.AUDIO.AssetType = Enum.AssetType.Audio
	Screens.AUDIO.LayoutOrder = 6
end

return Screens