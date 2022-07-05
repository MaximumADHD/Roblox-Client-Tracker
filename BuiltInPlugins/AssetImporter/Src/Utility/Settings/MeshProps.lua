local Plugin = script.Parent.Parent.Parent.Parent

local getFFlagDisableAvatarAnchoredSetting = require(Plugin.Src.Flags.getFFlagDisableAvatarAnchoredSetting)
local getFFlagLCQualityCheckDisplay = require(Plugin.Src.Flags.getFFlagLCQualityCheckDisplay)
local getFFlagAssetImporterUseImportedPivots = require(Plugin.Src.Flags.getFFlagAssetImporterUseImportedPivots)
local getFFlagUseAssetImportSession = require(Plugin.Src.Flags.getFFlagUseAssetImportSession)

local AssetImportService = game:GetService("AssetImportService")

local function hideIfAvatar(meshSettings, assetImportSession)
	if getFFlagUseAssetImportSession() then
		return assetImportSession:IsAvatar() and getFFlagDisableAvatarAnchoredSetting()
	else
		return AssetImportService:IsAvatar() and getFFlagDisableAvatarAnchoredSetting()
	end
end

local function hideIfManifold(meshSettings)
	if getFFlagLCQualityCheckDisplay() then
		if meshSettings.ImportName:match("_OuterCage") or meshSettings.ImportName:match("_InnerCage") then
			return meshSettings.CageManifold 
		end
	end
	return true
end

local function hideIfNoOverlappingVertices(meshSettings)
	if getFFlagLCQualityCheckDisplay() then
		if meshSettings.ImportName:match("_OuterCage") or meshSettings.ImportName:match("_InnerCage") then
			return meshSettings.CageNoOverlappingVertices
		end
	end
	return true
end

local function hideIfUVMatched(meshSettings)
	if getFFlagLCQualityCheckDisplay() then
		if meshSettings.ImportName:match("_OuterCage") or meshSettings.ImportName:match("_InnerCage") then
			return meshSettings.CageUVMatched
		end
	end
	return true
end

local function hideIfUseImportedPivotsFlagOff(meshSettings)
	return not getFFlagAssetImporterUseImportedPivots()
end

return {
	{
		Section = "ObjectGeneral",
		Properties = {
			{Name = "ImportName", Editable = true},
			{Name = "Anchored", Editable = true, ShouldHide = hideIfAvatar},
			{Name = "UseImportedPivot", Editable = true, ShouldHide = hideIfUseImportedPivotsFlagOff},
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
			{Name = "CageUVMatchedPreview", Editable = true, ShouldHide = hideIfUVMatched},
		},
	},
}
