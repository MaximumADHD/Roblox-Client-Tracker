-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
local var1 = {}
var1.Places = "PlacesFolder"
var1.Images = "ImagesFolder"
var1.Meshes = "MeshesFolder"
var1.Packages = "PackagesFolder"
var1.Scripts = "StarterPlayerScripts"
var1.Audio = "AudioFolder"
var1.Video = "VideoFolder"
var1.Models = "ModelsFolder"
var1.BlankFolder = "BlankFolder"
var1.Import = "Import"
var1.List = "List"
var1.Grid = "List"
var1.Menu = "Menu"
var1.Back = "Back"
var1.Forward = "Fwd"
var1.ArrowDown = "ArrowDown"
var1.ArrowRight = "ArrowRight"
var1.More = "More"
var1.Zoom = "ZoomIn"
var1.Spawn = "Spawn"
var0.IconEnums = var1
var0.IconEnums.Places = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/" ... var0.IconEnums.Places ... ".png"
var0.IconEnums.Images = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/" ... var0.IconEnums.Images ... ".png"
var0.IconEnums.Meshes = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/" ... var0.IconEnums.Meshes ... ".png"
var0.IconEnums.Packages = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/" ... var0.IconEnums.Packages ... ".png"
var0.IconEnums.Audio = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/" ... var0.IconEnums.Audio ... ".png"
var0.IconEnums.Video = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/" ... var0.IconEnums.BlankFolder ... ".png"
var0.IconEnums.Models = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Large/" ... var0.IconEnums.Models ... ".png"
var0.IconEnums.BlankFolder = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/" ... var0.IconEnums.BlankFolder ... ".png"
var0.IconEnums.Import = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/" ... var0.IconEnums.Import ... ".png"
var0.IconEnums.List = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/" ... var0.IconEnums.List ... ".png"
var0.IconEnums.Grid = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/" ... var0.IconEnums.Grid ... ".png"
var0.IconEnums.Menu = "rbxasset://studio_svg_textures/Lua/AssetManager/%s/Standard/" ... var0.IconEnums.Menu ... ".png"
var0.IconEnums.Back = "rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/" ... var0.IconEnums.Back ... ".png"
var0.IconEnums.Forward = "rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/" ... var0.IconEnums.Forward ... ".png"
var0.IconEnums.ArrowDown = "rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/" ... var0.IconEnums.ArrowDown ... ".png"
var0.IconEnums.ArrowRight = "rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/" ... var0.IconEnums.ArrowRight ... ".png"
var0.IconEnums.More = "rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/" ... var0.IconEnums.More ... ".png"
var0.IconEnums.Zoom = "rbxasset://studio_svg_textures/Shared/Navigation/%s/Standard/" ... var0.IconEnums.Zoom ... ".png"
var0.IconEnums.Scripts = "rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/" ... var0.IconEnums.Scripts ... ".png"
var0.IconEnums.Spawn = "rbxasset://studio_svg_textures/Shared/InsertableObjects/%s/Standard/" ... var0.IconEnums.Spawn ... ".png"
var0.HighDpiAssetManagerIconsWithTheme1 = {}
function var0.getIconForCurrentTheme(arg1)
   return string.format(var0.HighDpiAssetManagerIconsWithTheme1[arg1], settings().Studio.Theme.Name)
end

return var0
