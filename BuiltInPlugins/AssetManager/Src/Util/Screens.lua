local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local RobloxAPI = Framework.RobloxAPI

local FFlagStudioAssetManagerNewFolderIcons = game:GetFastFlag("StudioAssetManagerNewFolderIcons")
local FFlagStudioAssetManagerHideAudioForLuobu = game:GetFastFlag("StudioAssetManagerHideAudioForLuobu")
local FFlagEnableLuobuAudioImport = game:GetFastFlag("EnableLuobuAudioImport")

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

if FFlagStudioAssetManagerHideAudioForLuobu and not FFlagEnableLuobuAudioImport then
	if not RobloxAPI:baseURLHasChineseHost() then
		Screens["AUDIO"] = {
			Key = "AUDIO",
		}
		Screens.AUDIO.Parent = Screens.MAIN.Key
		Screens.AUDIO.AssetType = Enum.AssetType.Audio
		Screens.AUDIO.LayoutOrder = 6
		if FFlagStudioAssetManagerNewFolderIcons then
			Screens.AUDIO.Image = "rbxasset://textures/StudioSharedUI/audio.png"
		end
	end
else
	Screens["AUDIO"] = {
		Key = "AUDIO",
	}
	Screens.AUDIO.Parent = Screens.MAIN.Key
	Screens.AUDIO.AssetType = Enum.AssetType.Audio
	Screens.AUDIO.LayoutOrder = 6
	if FFlagStudioAssetManagerNewFolderIcons then
		Screens.AUDIO.Image = "rbxasset://textures/StudioSharedUI/audio.png"
	end
end

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

if FFlagStudioAssetManagerNewFolderIcons then
	Screens.PLACES.Image = "rbxasset://textures/StudioSharedUI/places.png"
	Screens.IMAGES.Image = "rbxasset://textures/StudioSharedUI/images.png"
	Screens.MESHES.Image = "rbxasset://textures/StudioSharedUI/meshes.png"
	Screens.PACKAGES.Image = "rbxasset://textures/StudioSharedUI/packages.png"
	Screens.SCRIPTS.Image = "rbxasset://textures/StudioSharedUI/scripts.png"
end

return Screens