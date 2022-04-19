local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local Util = require(Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator
local ModernIcons = require(Plugin.Src.Util.ModernIcons)

local shouldEnableAudioImport = require(Plugin.Src.Util.AssetManagerUtilities).shouldEnableAudioImport
local shouldEnableVideoImport = require(Plugin.Src.Util.AssetManagerUtilities).shouldEnableVideoImport

local FFlagAssetManagerRefactorPath = game:GetFastFlag("AssetManagerRefactorPath")
local FFlagAssetManagerEnableModelAssets = game:GetFastFlag("AssetManagerEnableModelAssets")

local FFlagHighDpiIcons = game:GetFastFlag("SVGLuaIcons") and not game:GetService("StudioHighDpiService"):IsNotHighDPIAwareBuild()

local PlacesIconPath
local ImagesIconPath
local MeshesIconPath
local PackagesIconPath
local ScriptsIconPath
local AudioIconPath
local ModelsIconPath
if FFlagHighDpiIcons then
    PlacesIconPath = ModernIcons.IconEnums.Places
    ImagesIconPath = ModernIcons.IconEnums.Images
    MeshesIconPath = ModernIcons.IconEnums.Meshes
    PackagesIconPath = ModernIcons.IconEnums.Packages
    ScriptsIconPath = ModernIcons.IconEnums.Scripts
    AudioIconPath = ModernIcons.IconEnums.Audio
    ModelsIconPath = ModernIcons.IconEnums.Models
else
    PlacesIconPath = "rbxasset://textures/StudioSharedUI/places.png"
    ImagesIconPath = "rbxasset://textures/StudioSharedUI/images.png"
    MeshesIconPath = "rbxasset://textures/StudioSharedUI/meshes.png"
    PackagesIconPath = "rbxasset://textures/StudioSharedUI/packages.png"
    ScriptsIconPath = "rbxasset://textures/StudioSharedUI/scripts.png"
    AudioIconPath = "rbxasset://textures/StudioSharedUI/audio.png"
    VideoIconPath = "rbxasset://textures/StudioSharedUI/videos.png"
    ModelsIconPath = "rbxasset://textures/StudioSharedUI/models.png"
end


if FFlagAssetManagerRefactorPath then
	local MainPath = "MAIN"
	local layoutOrderIterator = LayoutOrderIterator.new()
	return {
		MAIN = {
			Path = MainPath
		},
		PLACES = {
			Path = "PLACES",
			AssetType = Enum.AssetType.Place,
			Image = PlacesIconPath,
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		},
		IMAGES = {
			Path = "IMAGES",
			AssetType = Enum.AssetType.Image,
			Image = ImagesIconPath,
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		},
		MESHES = {
			Path = "MESHES",
			AssetType = Enum.AssetType.Mesh,
			Image = MeshesIconPath,
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		},
		PACKAGES = {
			Path = "PACKAGES",
			AssetType = Enum.AssetType.Package,
			Image = PackagesIconPath,
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		},
		SCRIPTS = {
			Path = "SCRIPTS",
			AssetType = Enum.AssetType.Lua,
			Image = ScriptsIconPath,
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		},
		AUDIO = shouldEnableAudioImport() and {
			Path = "AUDIO",
			AssetType = Enum.AssetType.Audio,
			Image = AudioIconPath,
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		} or nil,
		VIDEO = shouldEnableVideoImport() and {
			Path = "VIDEO",
			AssetType = Enum.AssetType.Video,
			Image = VideoIconPath,
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		} or nil,
		MODELS = FFlagAssetManagerEnableModelAssets and {
			Path = "MODELS",
			AssetType = Enum.AssetType.Model,
			Image = ModelsIconPath,
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		} or nil,
	}
else
	local Screens = {
		MAIN = {
			Path = "MAIN",
		},
		PLACES = {
			Path = "PLACES",
		},
		MESHES = {
			Path = "MESHES",
		},
		IMAGES = {
			Path = "IMAGES",
		},
		PACKAGES = {
			Path = "PACKAGES",
		},
		SCRIPTS = {
			Path = "SCRIPTS",
		},
	}

	if shouldEnableAudioImport() then
		Screens["AUDIO"] = {
			Path = "AUDIO",
		}
		Screens.AUDIO.Parent = Screens.MAIN.Path
		Screens.AUDIO.AssetType = Enum.AssetType.Audio
		Screens.AUDIO.LayoutOrder = 6
		Screens.AUDIO.Image = AudioIconPath
	end

	if shouldEnableVideoImport() then
		Screens["VIDEO"] = {
			Path = "VIDEO",
		}
		Screens.VIDEO.Parent = Screens.MAIN.Path
		Screens.VIDEO.AssetType = Enum.AssetType.Video
		Screens.VIDEO.LayoutOrder = 7
		Screens.VIDEO.Image = VideoIconPath
	end

	if FFlagAssetManagerEnableModelAssets then
		Screens["MODELS"] = {
			Path = "MODELS",
		}
		Screens.MODELS.Parent = Screens.MAIN.Path
		Screens.MODELS.AssetType = Enum.AssetType.Model
		Screens.MODELS.LayoutOrder = shouldEnableVideoImport() and 8 or 7
		Screens.MODELS.Image = ModelsIconPath
	end

	Screens.MESHES.Parent = Screens.MAIN.Path
	Screens.IMAGES.Parent = Screens.MAIN.Path
	Screens.PACKAGES.Parent = Screens.MAIN.Path
	Screens.PLACES.Parent = Screens.MAIN.Path
	Screens.SCRIPTS.Parent = Screens.MAIN.Path

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

	Screens.PLACES.Image = PlacesIconPath
	Screens.IMAGES.Image = ImagesIconPath
	Screens.MESHES.Image = MeshesIconPath
	Screens.PACKAGES.Image = PackagesIconPath
	Screens.SCRIPTS.Image = ScriptsIconPath

	return Screens
end
