local Plugin = script.Parent.Parent.Parent.Parent

local getFFlagDisableAvatarAnchoredSetting = require(Plugin.Src.Flags.getFFlagDisableAvatarAnchoredSetting)

local AssetImportService = game:GetService("AssetImportService")

local function hideIfAvatar()
	return AssetImportService:IsAvatar() and getFFlagDisableAvatarAnchoredSetting()
end

local function hideIfNotCage(meshSettings)
	if meshSettings.importName:match("_OuterCage") or meshSettings.importName:match("_InnerCage") then
		return false
	else
		return true
	end
end

return {
	{
		Section = "ObjectGeneral",
		Properties = {
			{Name = "ImportName", Editable = true},
			{Name = "Anchored", Editable = true, ShouldHide = hideIfAvatar},
		},
	},
	{
		Section = "ObjectGeometry",
		Properties = {
			{Name = "Dimensions", Editable = false},
			{Name = "PolygonCount", Editable = false},
			{Name = "DoubleSided", Editable = true},
			{Name = "IgnoreVertexColors", Editable = true},
			{Name = "Manifold", Editable = false, ShouldHide = hideIfNotCage},
		},
	},
}
