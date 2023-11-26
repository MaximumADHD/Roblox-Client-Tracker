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
  NEWTABLE R1 0 84
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
  LOADK R11 K67 ["NoRefMeshForCageWarningWithSuggestion"]
  LOADK R12 K68 ["NoRefMeshForCageWarningWithSuggestion_v1"]
  LOADK R13 K69 ["NoRefMeshForCageWithSuggestionWarning"]
  LOADK R14 K70 ["NoRefMeshForCageWithSuggestionV1Warning"]
  LOADK R15 K71 ["AvatarCagesMissingWarning"]
  LOADK R16 K72 ["CageNameHasTypoWarning"]
  LOADK R17 K73 ["CageNameHasTypoWarning_v1"]
  SETLIST R1 R2 16 [17]
  LOADK R2 K74 ["CageNameHasTypoV1Warning"]
  LOADK R3 K75 ["DeletedCageGeometryWarning"]
  LOADK R4 K76 ["UnsupportedPreviewTextureType"]
  LOADK R5 K77 ["UnsupportedPreviewTextureTypeWarning"]
  LOADK R6 K78 ["OuterCageBloatingWarning"]
  LOADK R7 K79 ["FacsFrameExtraCharsWarning1"]
  LOADK R8 K80 ["FacsFrameExtraCharsWarning"]
  LOADK R9 K81 ["FacsMax3CorrectivesError3"]
  LOADK R10 K82 ["FacsMax3CorrectivesError"]
  LOADK R11 K83 ["FacsUnrecognizedFACSError2"]
  LOADK R12 K84 ["FacsUnrecognizedFacsError"]
  LOADK R13 K85 ["FacsInvalidCorrectiveError2"]
  LOADK R14 K86 ["FacsInvalidCorrectiveError"]
  LOADK R15 K87 ["FacsCorrectiveDupeError3"]
  LOADK R16 K88 ["FacsCorrectiveDupeError"]
  LOADK R17 K89 ["FacsRootFaceJointNotStringError"]
  SETLIST R1 R2 16 [33]
  LOADK R2 K90 ["FacsRootFaceJointNoValueError"]
  LOADK R3 K91 ["FacsFrameAttrNotStringError1"]
  LOADK R4 K92 ["FacsFrameAttrNotStringError"]
  LOADK R5 K93 ["FacsUnparseableFrameNumberError1"]
  LOADK R6 K94 ["FacsUnparseableFrameNumberError"]
  LOADK R7 K95 ["FacsEmptyAttributeWarning1"]
  LOADK R8 K96 ["FacsEmptyAttributeWarning"]
  LOADK R9 K97 ["FacsDupeControlError3"]
  LOADK R10 K98 ["FacsDupeControlError"]
  LOADK R11 K99 ["FacsRootFaceJointExtraCharsError1"]
  LOADK R12 K100 ["FacsRootFaceJointExtraCharsError"]
  LOADK R13 K101 ["FacsHasFramesNoRootFaceJointError1"]
  LOADK R14 K102 ["FacsHasFramesNoRootFaceJointError"]
  LOADK R15 K103 ["FacsNoAttributesError1"]
  LOADK R16 K104 ["FacsNoAttributesError"]
  LOADK R17 K105 ["FacsNoNeutralError"]
  SETLIST R1 R2 16 [49]
  LOADK R2 K106 ["FacsMissingSupportCorrectiveWarning2"]
  LOADK R3 K107 ["FacsMissingSupportCorrectiveWarning"]
  LOADK R4 K108 ["FacsMissingBaseError2"]
  LOADK R5 K109 ["FacsMissingBaseError"]
  LOADK R6 K110 ["FacsMissingKeyFrameError2"]
  LOADK R7 K111 ["FacsMissingKeyFrameError"]
  LOADK R8 K112 ["FacsNoAnimationStackError"]
  LOADK R9 K113 ["FacsMultipleAnimationStackWarning"]
  LOADK R10 K114 ["FacsNoRootFaceJoint1"]
  LOADK R11 K115 ["FacsNoRootFaceJointError"]
  LOADK R12 K116 ["FacsMultipleRootFaceJoints1"]
  LOADK R13 K117 ["FacsMultipleRootFaceJointsError"]
  LOADK R14 K118 ["FacsNoJointsErrors1"]
  LOADK R15 K119 ["FacsNoJointsError"]
  LOADK R16 K120 ["FacsNearNeutralWarning1"]
  LOADK R17 K121 ["FacsNearNeutralWarning"]
  SETLIST R1 R2 16 [65]
  LOADK R2 K122 ["FacsIncompletePosesWarning1"]
  LOADK R3 K123 ["FacsIncompletePosesWarning"]
  LOADK R4 K124 ["FacsOnlyNeutralError"]
  LOADK R5 K125 ["FacsNoFaceControlsAllowedError"]
  SETLIST R1 R2 4 [81]
  SETTABLEKS R1 R0 K18 ["ObjectGeneral"]
  SETGLOBAL R0 K126 ["StatusPropertyMap"]
  DUPCLOSURE R0 K127 [PROTO_0]
  GETIMPORT R1 K129 [pairs]
  GETGLOBAL R2 K126 ["StatusPropertyMap"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  GETGLOBAL R6 K126 ["StatusPropertyMap"]
  NEWTABLE R8 0 0
  GETIMPORT R9 K129 [pairs]
  MOVE R10 R5
  CALL R9 1 3
  FORGPREP_NEXT R9
  LOADB R14 1
  SETTABLE R14 R8 R13
  FORGLOOP R9 2 [-3]
  MOVE R7 R8
  SETTABLE R7 R6 R4
  FORGLOOP R1 2 [-16]
  GETGLOBAL R1 K126 ["StatusPropertyMap"]
  RETURN R1 1
