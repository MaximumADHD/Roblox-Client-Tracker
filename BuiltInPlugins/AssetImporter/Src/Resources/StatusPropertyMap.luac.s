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
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagUnlinkImporterAndAvatarPreview"]
  CALL R1 1 1
  DUPTABLE R2 K29 [{"ImportName", "ImportAsPackage", "Dimensions", "FileDimensions", "PolygonCount", "CageNonManifoldPreview", "CageOverlappingVerticesPreview", "CageUVMisMatchedPreview", "CageMeshIntersectedPreview", "MeshHoleDetectedPreview", "IrrelevantCageModifiedPreview", "OuterCageFarExtendedFromMeshPreview", "RigType", "DiffuseFilePath", "RoughnessFilePath", "NormalFilePath", "MetalnessFilePath", "FileGeneral", "ValidateUgcBody", "ObjectGeneral"}]
  NEWTABLE R3 0 1
  LOADK R4 K30 ["NameExceedsCharacterLimitWarning"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K9 ["ImportName"]
  NEWTABLE R3 0 1
  LOADK R4 K31 ["AnimationInPackageWarning"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K10 ["ImportAsPackage"]
  NEWTABLE R3 0 1
  LOADK R4 K32 ["MeshScaleWarning"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K11 ["Dimensions"]
  NEWTABLE R3 0 1
  LOADK R4 K32 ["MeshScaleWarning"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K12 ["FileDimensions"]
  NEWTABLE R3 0 1
  LOADK R4 K33 ["MeshSizeWarning"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K13 ["PolygonCount"]
  NEWTABLE R3 0 1
  LOADK R4 K34 ["CageNonManifoldWarning"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K14 ["CageNonManifoldPreview"]
  NEWTABLE R3 0 1
  LOADK R4 K35 ["CageOverlappingVerticesWarning"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K15 ["CageOverlappingVerticesPreview"]
  NEWTABLE R3 0 1
  LOADK R4 K36 ["CageUVMisMatchedWarning"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K16 ["CageUVMisMatchedPreview"]
  NEWTABLE R3 0 1
  LOADK R4 K37 ["CageMeshIntersectedWarning"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K17 ["CageMeshIntersectedPreview"]
  NEWTABLE R3 0 1
  LOADK R4 K38 ["MeshHoleDetectedWarning"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K18 ["MeshHoleDetectedPreview"]
  NEWTABLE R3 0 1
  LOADK R4 K39 ["IrrelevantCageModifiedWarning"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K19 ["IrrelevantCageModifiedPreview"]
  NEWTABLE R3 0 1
  LOADK R4 K40 ["OuterCageFarExtendedFromMeshWarning"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K20 ["OuterCageFarExtendedFromMeshPreview"]
  NEWTABLE R3 0 1
  LOADK R4 K41 ["IncorrectR15Warning"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K21 ["RigType"]
  NEWTABLE R3 0 2
  LOADK R4 K42 ["CouldNotReadDiffuseError"]
  LOADK R5 K43 ["DiffuseBadFileFormatError"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K22 ["DiffuseFilePath"]
  NEWTABLE R3 0 2
  LOADK R4 K44 ["CouldNotReadRoughnessError"]
  LOADK R5 K45 ["RoughnessBadFileFormatError"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K23 ["RoughnessFilePath"]
  NEWTABLE R3 0 2
  LOADK R4 K46 ["CouldNotReadNormalError"]
  LOADK R5 K47 ["NormalBadFileFormatError"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K24 ["NormalFilePath"]
  NEWTABLE R3 0 2
  LOADK R4 K48 ["CouldNotReadMetalnessError"]
  LOADK R5 K49 ["MetalnessBadFileFormatError"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K25 ["MetalnessFilePath"]
  NEWTABLE R3 0 2
  LOADK R4 K50 ["CantImportAvatarGltfsWarning"]
  LOADK R5 K51 ["CantImportScaleOrWeightAnimationsWarning"]
  SETLIST R3 R4 2 [1]
  SETTABLEKS R3 R2 K26 ["FileGeneral"]
  MOVE R4 R1
  CALL R4 0 1
  JUMPIFNOT R4 [+2]
  LOADNIL R3
  JUMP [+5]
  NEWTABLE R3 0 1
  LOADK R4 K52 ["ValidateUgcButNoInsertError"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K27 ["ValidateUgcBody"]
  NEWTABLE R3 0 58
  LOADK R4 K53 ["MaterialIgnoredWarning"]
  LOADK R5 K54 ["CouldNotReadTextureError"]
  LOADK R6 K55 ["TextureBadFileFormatError"]
  LOADK R7 K56 ["ContentNotFoundError"]
  LOADK R8 K57 ["MeshIdNotFoundError"]
  LOADK R9 K58 ["NoValidParentError"]
  LOADK R10 K59 ["NullNodeError"]
  LOADK R11 K60 ["ImportDataTypeMismatchError"]
  LOADK R12 K61 ["ImportDataNotCreatedError"]
  LOADK R13 K62 ["ImportDataInstanceNotCreatedError"]
  LOADK R14 K63 ["TextureInvalidSizeError"]
  LOADK R15 K64 ["IllegalNodeTypeError"]
  LOADK R16 K65 ["BadCallError"]
  LOADK R17 K66 ["PoseError"]
  LOADK R18 K67 ["UncaughtExceptionError"]
  LOADK R19 K68 ["UploadAlreadyRunningError"]
  SETLIST R3 R4 16 [1]
  LOADK R4 K69 ["CageMismatchWarning"]
  LOADK R5 K70 ["CageHasMaterialWarning"]
  LOADK R6 K71 ["CageNoGeoParentError"]
  LOADK R7 K72 ["UGCMeshVertColorsWarning"]
  LOADK R8 K73 ["UGCMaxMeshTrianglesWarning"]
  LOADK R9 K74 ["UGCExceedUVSpaceWarning"]
  LOADK R10 K75 ["UGCExceedTextureSizeWarning"]
  LOADK R11 K76 ["InnerButNoOuterCageWarning"]
  LOADK R12 K77 ["NoRefMeshForCageWarning"]
  LOADK R13 K78 ["NoRefMeshForCageWithSuggestionWarning"]
  LOADK R14 K79 ["AvatarCagesMissingWarning"]
  LOADK R15 K80 ["CageNameHasTypoWarning"]
  LOADK R16 K81 ["DeletedCageGeometryWarning"]
  LOADK R17 K82 ["UnsupportedPreviewTextureTypeWarning"]
  LOADK R18 K83 ["OuterCageBloatingWarning"]
  LOADK R19 K84 ["FacsFrameExtraCharsWarning"]
  SETLIST R3 R4 16 [17]
  LOADK R4 K85 ["FacsMax3CorrectivesError"]
  LOADK R5 K86 ["FacsUnrecognizedFacsError"]
  LOADK R6 K87 ["FacsInvalidCorrectiveError"]
  LOADK R7 K88 ["FacsCorrectiveDupeError"]
  LOADK R8 K89 ["FacsRootFaceJointNotStringError"]
  LOADK R9 K90 ["FacsRootFaceJointNoValueError"]
  LOADK R10 K91 ["FacsFrameAttrNotStringError"]
  LOADK R11 K92 ["FacsUnparseableFrameNumberError"]
  LOADK R12 K93 ["FacsEmptyAttributeWarning"]
  LOADK R13 K94 ["FacsDupeControlError"]
  LOADK R14 K95 ["FacsRootFaceJointExtraCharsError"]
  LOADK R15 K96 ["FacsHasFramesNoRootFaceJointError"]
  LOADK R16 K97 ["FacsNoAttributesError"]
  LOADK R17 K98 ["FacsNoNeutralError"]
  LOADK R18 K99 ["FacsMissingSupportCorrectiveWarning"]
  LOADK R19 K100 ["FacsMissingBaseError"]
  SETLIST R3 R4 16 [33]
  LOADK R4 K101 ["FacsMissingKeyFrameError"]
  LOADK R5 K102 ["FacsNoAnimationStackError"]
  LOADK R6 K103 ["FacsMultipleAnimationStackWarning"]
  LOADK R7 K104 ["FacsNoRootFaceJointError"]
  LOADK R8 K105 ["FacsMultipleRootFaceJointsError"]
  LOADK R9 K106 ["FacsNoJointsError"]
  LOADK R10 K107 ["FacsNearNeutralWarning"]
  LOADK R11 K108 ["FacsIncompletePosesWarning"]
  LOADK R12 K109 ["FacsOnlyNeutralError"]
  LOADK R13 K110 ["FacsNoFaceControlsAllowedError"]
  SETLIST R3 R4 10 [49]
  SETTABLEKS R3 R2 K28 ["ObjectGeneral"]
  DUPCLOSURE R3 K111 [PROTO_0]
  GETIMPORT R4 K113 [pairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_NEXT R4
  NEWTABLE R10 0 0
  GETIMPORT R11 K113 [pairs]
  MOVE R12 R8
  CALL R11 1 3
  FORGPREP_NEXT R11
  LOADB R16 1
  SETTABLE R16 R10 R15
  FORGLOOP R11 2 [-3]
  MOVE R9 R10
  SETTABLE R9 R2 R7
  FORGLOOP R4 2 [-14]
  RETURN R2 1
