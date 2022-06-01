local Plugin = script.Parent.Parent.Parent.Parent

local getFFlagDisableAvatarAnchoredSetting = require(Plugin.Src.Flags.getFFlagDisableAvatarAnchoredSetting)
local getFFlagLCQualityCheckDisplay = require(Plugin.Src.Flags.getFFlagLCQualityCheckDisplay)

local AssetImportService = game:GetService("AssetImportService")

local function hideIfAvatar()
	return AssetImportService:IsAvatar() and getFFlagDisableAvatarAnchoredSetting()
end

local function hideIfManifold(meshSettings)
	if getFFlagLCQualityCheckDisplay() then
		if meshSettings.ImportName:match("_OuterCage") or meshSettings.ImportName:match("_InnerCage") then
			return meshSettings.CageManifold 
		else
			return true
		end
	else
		return true
	end
end

local function hideIfNoOverlappingVertices(meshSettings)
	if getFFlagLCQualityCheckDisplay() then
		if meshSettings.ImportName:match("_OuterCage") or meshSettings.ImportName:match("_InnerCage") then
			return meshSettings.CageNoOverlappingVertices
		else
			return true
		end
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
			{Name = "CageManifoldPreview", Editable = true, ShouldHide = hideIfManifold},
			{Name = "CageNoOverlappingVerticesPreview", Editable = true, ShouldHide = hideIfNoOverlappingVertices},
		},
	},
}
