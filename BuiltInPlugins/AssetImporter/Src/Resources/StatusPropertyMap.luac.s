PROTO_0:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  LOADB R7 1
  SETTABLE R7 R1 R6
  FORGLOOP R2 2 [-3]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K19 [{"ImportAsPackage", "Dimensions", "FileDimensions", "PolygonCount", "CageNonManifoldPreview", "CageOverlappingVerticesPreview", "CageUVMisMatchedPreview", "CageMeshIntersectedPreview", "MeshHoleDetectedPreview", "IrrelevantCageModifiedPreview", "OuterCageFarExtendedFromMeshPreview", "RigType", "DiffuseFilePath", "RoughnessFilePath", "NormalFilePath", "MetalnessFilePath", "FileGeneral", "ValidateUgcBody", "ObjectGeneral"}]
  NEWTABLE R1 0 1
  LOADK R2 K20 ["AnimationInPackageWarning"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K0 ["ImportAsPackage"]
  NEWTABLE R1 0 1
  LOADK R2 K21 ["MeshScaleWarning"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K1 ["Dimensions"]
  NEWTABLE R1 0 1
  LOADK R2 K21 ["MeshScaleWarning"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K2 ["FileDimensions"]
  NEWTABLE R1 0 1
  LOADK R2 K22 ["MeshSizeWarning"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K3 ["PolygonCount"]
  NEWTABLE R1 0 1
  LOADK R2 K23 ["CageNonManifoldWarning"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K4 ["CageNonManifoldPreview"]
  NEWTABLE R1 0 1
  LOADK R2 K24 ["CageOverlappingVerticesWarning"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K5 ["CageOverlappingVerticesPreview"]
  NEWTABLE R1 0 1
  LOADK R2 K25 ["CageUVMisMatchedWarning"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K6 ["CageUVMisMatchedPreview"]
  NEWTABLE R1 0 1
  LOADK R2 K26 ["CageMeshIntersectedWarning"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K7 ["CageMeshIntersectedPreview"]
  NEWTABLE R1 0 1
  LOADK R2 K27 ["MeshHoleDetectedWarning"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K8 ["MeshHoleDetectedPreview"]
  NEWTABLE R1 0 1
  LOADK R2 K28 ["IrrelevantCageModifiedWarning"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K9 ["IrrelevantCageModifiedPreview"]
  NEWTABLE R1 0 1
  LOADK R2 K29 ["OuterCageFarExtendedFromMeshWarning"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K10 ["OuterCageFarExtendedFromMeshPreview"]
  NEWTABLE R1 0 1
  LOADK R2 K30 ["IncorrectR15Warning"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K11 ["RigType"]
  NEWTABLE R1 0 2
  LOADK R2 K31 ["CouldNotReadDiffuseError"]
  LOADK R3 K32 ["DiffuseBadFileFormatError"]
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K12 ["DiffuseFilePath"]
  NEWTABLE R1 0 2
  LOADK R2 K33 ["CouldNotReadRoughnessError"]
  LOADK R3 K34 ["RoughnessBadFileFormatError"]
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K13 ["RoughnessFilePath"]
  NEWTABLE R1 0 2
  LOADK R2 K35 ["CouldNotReadNormalError"]
  LOADK R3 K36 ["NormalBadFileFormatError"]
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K14 ["NormalFilePath"]
  NEWTABLE R1 0 2
  LOADK R2 K37 ["CouldNotReadMetalnessError"]
  LOADK R3 K38 ["MetalnessBadFileFormatError"]
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K15 ["MetalnessFilePath"]
  NEWTABLE R1 0 2
  LOADK R2 K39 ["CantImportAvatarGltfsWarning"]
  LOADK R3 K40 ["CantImportScaleOrWeightAnimationsWarning"]
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K16 ["FileGeneral"]
  NEWTABLE R1 0 1
  LOADK R2 K41 ["ValidateUgcButNoInsertError"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K17 ["ValidateUgcBody"]
  NEWTABLE R1 0 58
  LOADK R2 K42 ["MaterialIgnoredWarning"]
  LOADK R3 K43 ["CouldNotReadTextureError"]
  LOADK R4 K44 ["TextureBadFileFormatError"]
  LOADK R5 K45 ["ContentNotFoundError"]
  LOADK R6 K46 ["MeshIdNotFoundError"]
  LOADK R7 K47 ["NoValidParentError"]
  LOADK R8 K48 ["NullNodeError"]
  LOADK R9 K49 ["ImportDataTypeMismatchError"]
  LOADK R10 K50 ["ImportDataNotCreatedError"]
  LOADK R11 K51 ["ImportDataInstanceNotCreatedError"]
  LOADK R12 K52 ["TextureInvalidSizeError"]
  LOADK R13 K53 ["IllegalNodeTypeError"]
  LOADK R14 K54 ["BadCallError"]
  LOADK R15 K55 ["PoseError"]
  LOADK R16 K56 ["UncaughtExceptionError"]
  LOADK R17 K57 ["UploadAlreadyRunningError"]
  SETLIST R1 R2 16 [1]
  LOADK R2 K58 ["CageMismatchWarning"]
  LOADK R3 K59 ["CageHasMaterialWarning"]
  LOADK R4 K60 ["CageNoGeoParentError"]
  LOADK R5 K61 ["UGCMeshVertColorsWarning"]
  LOADK R6 K62 ["UGCMaxMeshTrianglesWarning"]
  LOADK R7 K63 ["UGCExceedUVSpaceWarning"]
  LOADK R8 K64 ["UGCExceedTextureSizeWarning"]
  LOADK R9 K65 ["InnerButNoOuterCageWarning"]
  LOADK R10 K66 ["NoRefMeshForCageWarning"]
  LOADK R11 K67 ["NoRefMeshForCageWithSuggestionWarning"]
  LOADK R12 K68 ["AvatarCagesMissingWarning"]
  LOADK R13 K69 ["CageNameHasTypoWarning"]
  LOADK R14 K70 ["DeletedCageGeometryWarning"]
  LOADK R15 K71 ["UnsupportedPreviewTextureTypeWarning"]
  LOADK R16 K72 ["OuterCageBloatingWarning"]
  LOADK R17 K73 ["FacsFrameExtraCharsWarning"]
  SETLIST R1 R2 16 [17]
  LOADK R2 K74 ["FacsMax3CorrectivesError"]
  LOADK R3 K75 ["FacsUnrecognizedFacsError"]
  LOADK R4 K76 ["FacsInvalidCorrectiveError"]
  LOADK R5 K77 ["FacsCorrectiveDupeError"]
  LOADK R6 K78 ["FacsRootFaceJointNotStringError"]
  LOADK R7 K79 ["FacsRootFaceJointNoValueError"]
  LOADK R8 K80 ["FacsFrameAttrNotStringError"]
  LOADK R9 K81 ["FacsUnparseableFrameNumberError"]
  LOADK R10 K82 ["FacsEmptyAttributeWarning"]
  LOADK R11 K83 ["FacsDupeControlError"]
  LOADK R12 K84 ["FacsRootFaceJointExtraCharsError"]
  LOADK R13 K85 ["FacsHasFramesNoRootFaceJointError"]
  LOADK R14 K86 ["FacsNoAttributesError"]
  LOADK R15 K87 ["FacsNoNeutralError"]
  LOADK R16 K88 ["FacsMissingSupportCorrectiveWarning"]
  LOADK R17 K89 ["FacsMissingBaseError"]
  SETLIST R1 R2 16 [33]
  LOADK R2 K90 ["FacsMissingKeyFrameError"]
  LOADK R3 K91 ["FacsNoAnimationStackError"]
  LOADK R4 K92 ["FacsMultipleAnimationStackWarning"]
  LOADK R5 K93 ["FacsNoRootFaceJointError"]
  LOADK R6 K94 ["FacsMultipleRootFaceJointsError"]
  LOADK R7 K95 ["FacsNoJointsError"]
  LOADK R8 K96 ["FacsNearNeutralWarning"]
  LOADK R9 K97 ["FacsIncompletePosesWarning"]
  LOADK R10 K98 ["FacsOnlyNeutralError"]
  LOADK R11 K99 ["FacsNoFaceControlsAllowedError"]
  SETLIST R1 R2 10 [49]
  SETTABLEKS R1 R0 K18 ["ObjectGeneral"]
  SETGLOBAL R0 K100 ["StatusPropertyMap"]
  DUPCLOSURE R0 K101 [PROTO_0]
  GETIMPORT R1 K103 [pairs]
  GETGLOBAL R2 K100 ["StatusPropertyMap"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETGLOBAL R6 K100 ["StatusPropertyMap"]
  NEWTABLE R8 0 0
  GETIMPORT R9 K103 [pairs]
  MOVE R10 R5
  CALL R9 1 3
  FORGPREP_NEXT R9
  LOADB R14 1
  SETTABLE R14 R8 R13
  FORGLOOP R9 2 [-3]
  MOVE R7 R8
  SETTABLE R7 R6 R4
  FORGLOOP R1 2 [-16]
  GETGLOBAL R1 K100 ["StatusPropertyMap"]
  RETURN R1 1
