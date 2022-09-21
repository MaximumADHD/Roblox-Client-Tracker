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
        "NoRefMeshForCageWarningWithSuggestion",
        "NoRefMeshForCageWarningWithSuggestion_v1",
        "AvatarCagesMissingWarning",
        "CageNameHasTypoWarning",
        "CageNameHasTypoWarning_v1",
        "DeletedCageGeometryWarning",
        "UnsupportedPreviewTextureType",
        "OuterCageBloatingWarning",
        "FacsFrameExtraCharsWarning1",
        "FacsMax3CorrectivesError3",
        "FacsUnrecognizedFACSError2",
        "FacsInvalidCorrectiveError2",
        "FacsCorrectiveDupeError3",
        "FacsRootFaceJointNotStringError",
        "FacsRootFaceJointNoValueError",
        "FacsFrameAttrNotStringError1",
        "FacsUnparseableFrameNumberError1",
        "FacsEmptyAttributeWarning1",
        "FacsDupeControlError3",
        "FacsRootFaceJointExtraCharsError1",
        "FacsHasFramesNoRootFaceJointError1",
        "FacsNoAttributesError1",
        "FacsNoNeutralError",
        "FacsMissingSupportCorrectiveWarning2",
        "FacsMissingBaseError2",
        "FacsMissingKeyFrameError2",
        "FacsNoAnimationStackError",
        "FacsMultipleAnimationStackWarning",
        "FacsNoRootFaceJoint1",
        "FacsMultipleRootFaceJoints1",
        "FacsNoJointsErrors1",
        "FacsNearNeutralWarning1",
        "FacsIncompletePosesWarning1",
        "FacsOnlyNeutralError",
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
