local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local Util = require(Framework.Util)
local LayoutOrderIterator = Util.LayoutOrderIterator

local shouldEnableAudioImport = require(Plugin.Src.Util.AssetManagerUtilities).shouldEnableAudioImport

local FFlagAssetManagerRefactorPath = game:GetFastFlag("AssetManagerRefactorPath")
local FFlagAssetManagerEnableModelAssets = game:GetFastFlag("AssetManagerEnableModelAssets")

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
			Image = "rbxasset://textures/StudioSharedUI/places.png",
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		},
		IMAGES = {
			Path = "IMAGES",
			AssetType = Enum.AssetType.Image,
			Image = "rbxasset://textures/StudioSharedUI/images.png",
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		},
		MESHES = {
			Path = "MESHES",
			AssetType = Enum.AssetType.Mesh,
			Image = "rbxasset://textures/StudioSharedUI/meshes.png",
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		},
		PACKAGES = {
			Path = "PACKAGES",
			AssetType = Enum.AssetType.Package,
			Image = "rbxasset://textures/StudioSharedUI/packages.png",
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		},
		SCRIPTS = {
			Path = "SCRIPTS",
			AssetType = Enum.AssetType.Lua,
			Image = "rbxasset://textures/StudioSharedUI/scripts.png",
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		},
		AUDIO = shouldEnableAudioImport() and {
			Path = "AUDIO",
			AssetType = Enum.AssetType.Audio,
			Image = "rbxasset://textures/StudioSharedUI/audio.png",
			Parent = MainPath,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		} or nil,
		MODELS = FFlagAssetManagerEnableModelAssets and {
			Path = "MODELS",
			AssetType = Enum.AssetType.Model,
			Image = "rbxasset://textures/StudioSharedUI/models.png",
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
		Screens.AUDIO.Image = "rbxasset://textures/StudioSharedUI/audio.png"
	end

	if FFlagAssetManagerEnableModelAssets then
		Screens["MODELS"] = {
			Path = "MODELS",
		}
		Screens.MODELS.Parent = Screens.MAIN.Path
		Screens.MODELS.AssetType = Enum.AssetType.Model
		Screens.MODELS.LayoutOrder = 7
		Screens.MODELS.Image = "rbxasset://textures/StudioSharedUI/models.png"
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

	Screens.PLACES.Image = "rbxasset://textures/StudioSharedUI/places.png"
	Screens.IMAGES.Image = "rbxasset://textures/StudioSharedUI/images.png"
	Screens.MESHES.Image = "rbxasset://textures/StudioSharedUI/meshes.png"
	Screens.PACKAGES.Image = "rbxasset://textures/StudioSharedUI/packages.png"
	Screens.SCRIPTS.Image = "rbxasset://textures/StudioSharedUI/scripts.png"

	return Screens
end
