local Screens = {
    MAIN = {
		Key = "MAIN",
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
	PLACES = {
		Key = "PLACES",
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

return Screens