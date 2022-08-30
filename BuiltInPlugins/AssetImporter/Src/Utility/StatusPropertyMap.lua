-- A map of property names to statuses associated with them
StatusPropertyMap = {
    Dimensions = {"MeshScaleWarning"},
    FileDimensions = {"MeshScaleWarning"},
    PolygonCount = {"MeshSizeWarning"},
    CageNonManifoldPreview = {"CageNonManifoldWarning"},
    CageOverlappingVerticesPreview = {"CageOverlappingVerticesWarning"},
    CageUVMisMatchedPreview = {"CageUVMisMatchedWarning"},
    CageMeshIntersectedPreview = {"CageMeshIntersectedWarning"},
    MeshHoleDetectedPreview = {"MeshHoleDetectedWarning"},
    IrrelevantCageModifiedPreview = {"IrrelevantCageModifiedWarning"},
    OuterCageFarExtendedFromMeshPreview = {"OuterCageFarExtendedFromMeshWarning"},
    RigType = {"IncorrectR15Warning"},
    DiffuseFilePath = {"CouldNotReadDiffuseError", "DiffuseBadFileFormatError"},
    RoughnessFilePath = {"CouldNotReadRoughnessError", "RoughnessBadFileFormatError"},
    NormalFilePath = {"CouldNotReadNormalError", "NormalBadFileFormatError"},
    MetalnessFilePath = {"CouldNotReadMetalnessError", "MetalnessBadFileFormatError"},
    ObjectGeneral = {
        "MaterialIgnoredWarning",
        "CouldNotReadTextureError",
        "TextureBadFileFormatError",
        "ContentNotFoundError",
        "MeshIdNotFoundError",
        "NoValidParentError",
        "NullNodeError",
        "SettingsTypeMismatchError",
        "SettingsNotCreatedError",
        "SettingsInstanceNotCreatedError",
        "SettingsBadTextureSizeError",
        "IllegalNodeTypeError",
        "BadCallError",
        "PoseError",
        "UncaughtExceptionError",
        "UploadAlreadyRunningError",
        "CageMismatchWarning",
        "CageHasMaterialWarning",
        "CageNoGeoParentError",
        "UGCMeshVertColorsWarning",
        "UGCMaxMeshTrianglesWarning",
        "UGCExceedUVSpaceWarning",
        "UGCExceedTextureSizeWarning",
        "InnerButNoOuterCageWarning",
        "NoRefMeshForCageWarning",
        "NoRefMeshForCageWarningWithSuggestion_Deprecated",
        "NoRefMeshForCageWarningWithSuggestion",
        "AvatarCagesMissingWarning",
        "CageNameHasTypoWarning_Deprecated",
        "CageNameHasTypoWarning",
        "DeletedCageGeometryWarning",
        "UnsupportedPreviewTextureType",
        "OuterCageBloatingWarning",
    },
}

local function convertToSet(table)
    local set = {}
    for _, object in pairs(table) do
        set[object] = true
    end
    return set
end

for index, table in pairs(StatusPropertyMap) do
    StatusPropertyMap[index] = convertToSet(table)
end

return StatusPropertyMap
