local Plugin = script.Parent.Parent.Parent.Parent

local getFFlagDisableAvatarAnchoredSetting = require(Plugin.Src.Flags.getFFlagDisableAvatarAnchoredSetting)

local AssetImportService = game:GetService("AssetImportService")

return {
	{
		Section = "FileGeneral",
		Properties = {
			{Name = "ImportName", Editable = true},
			{Name = "ImportAsModelAsset", Editable = true},
			{Name = "InsertInWorkspace", Editable = true},
			{Name = "Anchored", Editable = true, ShouldHide = function() return AssetImportService:IsAvatar() and getFFlagDisableAvatarAnchoredSetting() end},
		},
	},
	{
		Section = "AvatarGeneral",
		Properties = {
			{Name = "RigType", Editable = true, ShouldHide = function() return not AssetImportService:IsAvatar() end},
		},
	},
	{
		Section = "FileTransform",
		Properties = {
			{Name = "WorldForward", Editable = true, Dependencies = {"WorldUp"}},
			{Name = "WorldUp", Editable = true, Dependencies = {"WorldForward"}},
		},
	},
	{
		Section = "FileGeometry",
		Properties = {
			{Name = "ScaleUnit", Editable = true},
			{Name = "FileDimensions", Editable = false, Dependencies = {"ScaleUnit"}},
			{Name = "PolygonCount", Editable = false},
			{Name = "MergeMeshes", Editable = true},
			{Name = "InvertNegativeFaces", Editable = true},
		},
	},
}
