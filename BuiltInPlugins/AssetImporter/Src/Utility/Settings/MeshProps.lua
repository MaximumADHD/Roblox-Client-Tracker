local Plugin = script.Parent.Parent.Parent.Parent

local getFFlagDisableAvatarAnchoredSetting = require(Plugin.Src.Flags.getFFlagDisableAvatarAnchoredSetting)
local getFFlagLCQualityCheckDisplay = require(Plugin.Src.Flags.getFFlagLCQualityCheckDisplay)

local function hideIfAvatar(meshSettings, assetImportSession)
	return assetImportSession:IsAvatar() and getFFlagDisableAvatarAnchoredSetting()
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

local function hideIfCageMeshNotIntersected(meshSettings)
	if getFFlagLCQualityCheckDisplay() then
		if meshSettings.ImportName:match("_OuterCage") or meshSettings.ImportName:match("_InnerCage") then
			return meshSettings.CageMeshNotIntersected
		end
	end
	return true
end

local function hideIfMeshNoHoleDetected(meshSettings)
	if getFFlagLCQualityCheckDisplay() then
		--Display hole checking warning as long as it is not an attribute
		if not meshSettings.ImportName:match("_Att") then
			return meshSettings.MeshNoHoleDetected
		end
	end
	return true
end

local function hideIfNoIrrelevantCageModified(meshSettings)
	if getFFlagLCQualityCheckDisplay() then
		if meshSettings.ImportName:match("_OuterCage") or meshSettings.ImportName:match("_InnerCage") then
			return meshSettings.NoIrrelevantCageModified
		end
	end
	return true
end

local function hideIfNoOuterCageFarExtendedFromMesh(meshSettings)
	if getFFlagLCQualityCheckDisplay() then
		if meshSettings.ImportName:match("_OuterCage") then
			return meshSettings.NoOuterCageFarExtendedFromMesh
		end
	end
	return true
end

return {
	{
		Section = "ObjectGeneral",
		Properties = {
			{Name = "ImportName", Editable = true},
			{Name = "Anchored", Editable = true, ShouldHide = hideIfAvatar},
			{Name = "UseImportedPivot", Editable = true},
		},
	},
	{
		Section = "ObjectGeometry",
		Properties = {
			{Name = "Dimensions", Editable = false},
			{Name = "PolygonCount", Editable = false},
			{Name = "DoubleSided", Editable = true},
			{Name = "IgnoreVertexColors", Editable = true},
			{Name = "CageNonManifoldPreview", Editable = true, ShouldHide = hideIfManifold},
			{Name = "CageOverlappingVerticesPreview", Editable = true, ShouldHide = hideIfNoOverlappingVertices},
			{Name = "CageUVMisMatchedPreview", Editable = true, ShouldHide = hideIfUVMatched},
			{Name = "CageMeshIntersectedPreview", Editable = true, ShouldHide = hideIfCageMeshNotIntersected},
			{Name = "MeshHoleDetectedPreview", Editable = true, ShouldHide = hideIfMeshNoHoleDetected},
			{Name = "IrrelevantCageModifiedPreview", Editable = true, ShouldHide = hideIfNoIrrelevantCageModified},
			{Name = "OuterCageFarExtendedFromMeshPreview", Editable = true, ShouldHide = hideIfNoOuterCageFarExtendedFromMesh},
		},
	},
}
