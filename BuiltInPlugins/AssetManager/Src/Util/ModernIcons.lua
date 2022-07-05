local ModernIcons = {}

ModernIcons.IconEnums = {
	Places = "PlacesFolder",
	Images = "ImagesFolder",
	Meshes = "MeshesFolder",
	Packages = "PackagesFolder",
	Scripts = "StarterPlayerScripts",
	Audio = "AudioFolder",
	Models = "ModelsFolder",
	BlankFolder = "BlankFolder",
	Import = "Import",
	List = "List",
	Grid = "List",
	Menu = "Menu",
	Back = "Back",
	Forward = "Fwd",
	ArrowDown = "ArrowDown",
	ArrowRight = "ArrowRight",
	More = "More",
	Zoom = "ZoomIn",
	Spawn = "Spawn",
}

local InsertableObjectIcons = "rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/"
local AssetManagerLargeIcons = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/"
local AssetManagerIcons = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/"
local NavigationIcons = "rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/"

ModernIcons.HighDpiAssetManagerIconsWithTheme1 = {
	[ModernIcons.IconEnums.Places] = AssetManagerLargeIcons .. ModernIcons.IconEnums.Places .. ".png",
	[ModernIcons.IconEnums.Images] = AssetManagerLargeIcons .. ModernIcons.IconEnums.Images .. ".png",
	[ModernIcons.IconEnums.Meshes] = AssetManagerLargeIcons .. ModernIcons.IconEnums.Meshes .. ".png",
	[ModernIcons.IconEnums.Packages] = AssetManagerLargeIcons .. ModernIcons.IconEnums.Packages .. ".png",
	[ModernIcons.IconEnums.Audio] = AssetManagerLargeIcons .. ModernIcons.IconEnums.Audio .. ".png",
	[ModernIcons.IconEnums.Models] = AssetManagerLargeIcons .. ModernIcons.IconEnums.Models .. ".png",
	[ModernIcons.IconEnums.BlankFolder] = AssetManagerIcons .. ModernIcons.IconEnums.BlankFolder .. ".png",
	[ModernIcons.IconEnums.Import] = AssetManagerIcons .. ModernIcons.IconEnums.Import .. ".png",
	[ModernIcons.IconEnums.List] = AssetManagerIcons .. ModernIcons.IconEnums.List .. ".png",
	[ModernIcons.IconEnums.Grid] = AssetManagerIcons .. ModernIcons.IconEnums.Grid .. ".png",
	[ModernIcons.IconEnums.Menu] = AssetManagerIcons .. ModernIcons.IconEnums.Menu .. ".png",
	[ModernIcons.IconEnums.Back] = NavigationIcons .. ModernIcons.IconEnums.Back .. ".png",
	[ModernIcons.IconEnums.Forward] = NavigationIcons .. ModernIcons.IconEnums.Forward .. ".png",
	[ModernIcons.IconEnums.ArrowDown] = NavigationIcons .. ModernIcons.IconEnums.ArrowDown .. ".png",
	[ModernIcons.IconEnums.ArrowRight] = NavigationIcons .. ModernIcons.IconEnums.ArrowRight .. ".png",
	[ModernIcons.IconEnums.More] = NavigationIcons .. ModernIcons.IconEnums.More .. ".png",
	[ModernIcons.IconEnums.Zoom] = NavigationIcons .. ModernIcons.IconEnums.Zoom .. ".png",
	[ModernIcons.IconEnums.Scripts] = AssetManagerIcons .. ModernIcons.IconEnums.Scripts .. ".png",
	[ModernIcons.IconEnums.Spawn] = AssetManagerIcons .. ModernIcons.IconEnums.Spawn .. ".png",
}

ModernIcons.getIconForCurrentTheme = function(IconEnum)
	return string.format(ModernIcons.HighDpiAssetManagerIconsWithTheme1[IconEnum], settings().Studio.Theme.Name)
end

return ModernIcons
