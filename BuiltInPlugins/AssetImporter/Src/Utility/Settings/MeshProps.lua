local Plugin = script.Parent.Parent.Parent.Parent

local getFFlagDisableAvatarAnchoredSetting = require(Plugin.Src.Flags.getFFlagDisableAvatarAnchoredSetting)

local AssetImportService = game:GetService("AssetImportService")

return {
	{
		Section = "ObjectGeneral",
		Properties = {
			{Name = "ImportName", Editable = true},
			{Name = "Anchored", Editable = true, ShouldHide = function() return AssetImportService:IsAvatar() and getFFlagDisableAvatarAnchoredSetting() end},
		},
	},
	{
		Section = "ObjectGeometry",
		Properties = {
			{Name = "Dimensions", Editable = false},
			{Name = "PolygonCount", Editable = false},
			{Name = "DoubleSided", Editable = true},
			{Name = "IgnoreVertexColors", Editable = true},
		},
	},
}
