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
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Flags"]
  GETTABLEKS R3 R4 K9 ["getEFEnableEmissiveMask"]
  CALL R2 1 1
  DUPTABLE R3 K31 [{"ImportName", "ImportAsPackage", "Dimensions", "FileDimensions", "PolygonCount", "CageNonManifoldPreview", "CageOverlappingVerticesPreview", "CageUVMisMatchedPreview", "CageMeshIntersectedPreview", "MeshHoleDetectedPreview", "IrrelevantCageModifiedPreview", "OuterCageFarExtendedFromMeshPreview", "RigType", "DiffuseFilePath", "RoughnessFilePath", "NormalFilePath", "MetalnessFilePath", "EmissiveFilePath", "FileGeneral", "ValidateUgcBody", "ObjectGeneral"}]
  NEWTABLE R4 0 1
  LOADK R5 K32 ["NameExceedsCharacterLimitWarning"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K10 ["ImportName"]
  NEWTABLE R4 0 1
  LOADK R5 K33 ["AnimationInPackageWarning"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K11 ["ImportAsPackage"]
  NEWTABLE R4 0 1
  LOADK R5 K34 ["MeshScaleWarning"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K12 ["Dimensions"]
  NEWTABLE R4 0 1
  LOADK R5 K34 ["MeshScaleWarning"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K13 ["FileDimensions"]
  NEWTABLE R4 0 1
  LOADK R5 K35 ["MeshSizeWarning"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K14 ["PolygonCount"]
  NEWTABLE R4 0 1
  LOADK R5 K36 ["CageNonManifoldWarning"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K15 ["CageNonManifoldPreview"]
  NEWTABLE R4 0 1
  LOADK R5 K37 ["CageOverlappingVerticesWarning"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K16 ["CageOverlappingVerticesPreview"]
  NEWTABLE R4 0 1
  LOADK R5 K38 ["CageUVMisMatchedWarning"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K17 ["CageUVMisMatchedPreview"]
  NEWTABLE R4 0 1
  LOADK R5 K39 ["CageMeshIntersectedWarning"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K18 ["CageMeshIntersectedPreview"]
  NEWTABLE R4 0 1
  LOADK R5 K40 ["MeshHoleDetectedWarning"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K19 ["MeshHoleDetectedPreview"]
  NEWTABLE R4 0 1
  LOADK R5 K41 ["IrrelevantCageModifiedWarning"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K20 ["IrrelevantCageModifiedPreview"]
  NEWTABLE R4 0 1
  LOADK R5 K42 ["OuterCageFarExtendedFromMeshWarning"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K21 ["OuterCageFarExtendedFromMeshPreview"]
  NEWTABLE R4 0 1
  LOADK R5 K43 ["IncorrectR15Warning"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K22 ["RigType"]
  NEWTABLE R4 0 2
  LOADK R5 K44 ["CouldNotReadDiffuseError"]
  LOADK R6 K45 ["DiffuseBadFileFormatError"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K23 ["DiffuseFilePath"]
  NEWTABLE R4 0 2
  LOADK R5 K46 ["CouldNotReadRoughnessError"]
  LOADK R6 K47 ["RoughnessBadFileFormatError"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K24 ["RoughnessFilePath"]
  NEWTABLE R4 0 2
  LOADK R5 K48 ["CouldNotReadNormalError"]
  LOADK R6 K49 ["NormalBadFileFormatError"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K25 ["NormalFilePath"]
  NEWTABLE R4 0 2
  LOADK R5 K50 ["CouldNotReadMetalnessError"]
  LOADK R6 K51 ["MetalnessBadFileFormatError"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K26 ["MetalnessFilePath"]
  MOVE R5 R2
  CALL R5 0 1
  JUMPIFNOT R5 [+7]
  NEWTABLE R4 0 2
  LOADK R5 K52 ["CouldNotReadEmissiveError"]
  LOADK R6 K53 ["EmissiveBadFileFormatError"]
  SETLIST R4 R5 2 [1]
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K27 ["EmissiveFilePath"]
  NEWTABLE R4 0 2
  LOADK R5 K54 ["CantImportAvatarGltfsWarning"]
  LOADK R6 K55 ["CantImportScaleOrWeightAnimationsWarning"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K28 ["FileGeneral"]
  MOVE R5 R1
  CALL R5 0 1
  JUMPIFNOT R5 [+2]
  LOADNIL R4
  JUMP [+5]
  NEWTABLE R4 0 1
  LOADK R5 K56 ["ValidateUgcButNoInsertError"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K29 ["ValidateUgcBody"]
  NEWTABLE R4 0 62
  LOADK R5 K57 ["MaterialIgnoredWarning"]
  LOADK R6 K58 ["CouldNotReadTextureError"]
  LOADK R7 K59 ["TextureBadFileFormatError"]
  LOADK R8 K60 ["ContentNotFoundError"]
  LOADK R9 K61 ["MeshIdNotFoundError"]
  LOADK R10 K62 ["NoValidParentError"]
  LOADK R11 K63 ["NullNodeError"]
  LOADK R12 K64 ["ImportDataTypeMismatchError"]
  LOADK R13 K65 ["ImportDataNotCreatedError"]
  LOADK R14 K66 ["ImportDataInstanceNotCreatedError"]
  LOADK R15 K67 ["TextureInvalidSizeError"]
  LOADK R16 K68 ["IllegalNodeTypeError"]
  LOADK R17 K69 ["BadCallError"]
  LOADK R18 K70 ["PoseError"]
  LOADK R19 K71 ["UncaughtExceptionError"]
  LOADK R20 K72 ["UploadAlreadyRunningError"]
  SETLIST R4 R5 16 [1]
  LOADK R5 K73 ["CageMismatchWarning"]
  LOADK R6 K74 ["CageHasMaterialWarning"]
  LOADK R7 K75 ["CageNoGeoParentError"]
  LOADK R8 K76 ["UGCMeshVertColorsWarning"]
  LOADK R9 K77 ["UGCMaxMeshTrianglesWarning"]
  LOADK R10 K78 ["UGCExceedUVSpaceWarning"]
  LOADK R11 K79 ["UGCExceedTextureSizeWarning"]
  LOADK R12 K80 ["InnerButNoOuterCageWarning"]
  LOADK R13 K81 ["NoRefMeshForCageWarning"]
  LOADK R14 K82 ["NoRefMeshForCageWithSuggestionWarning"]
  LOADK R15 K83 ["AvatarCagesMissingWarning"]
  LOADK R16 K84 ["CageNameHasTypoWarning"]
  LOADK R17 K85 ["DeletedCageGeometryWarning"]
  LOADK R18 K86 ["UnsupportedPreviewTextureTypeWarning"]
  LOADK R19 K87 ["OuterCageBloatingWarning"]
  LOADK R20 K88 ["FacsFrameExtraCharsWarning"]
  SETLIST R4 R5 16 [17]
  LOADK R5 K89 ["FacsMax3CorrectivesError"]
  LOADK R6 K90 ["FacsUnrecognizedFacsError"]
  LOADK R7 K91 ["FacsInvalidCorrectiveError"]
  LOADK R8 K92 ["FacsCorrectiveDupeError"]
  LOADK R9 K93 ["FacsRootFaceJointNotStringError"]
  LOADK R10 K94 ["FacsRootFaceJointNoValueError"]
  LOADK R11 K95 ["FacsFrameAttrNotStringError"]
  LOADK R12 K96 ["FacsUnparseableFrameNumberError"]
  LOADK R13 K97 ["FacsEmptyAttributeWarning"]
  LOADK R14 K98 ["FacsDupeControlError"]
  LOADK R15 K99 ["FacsRootFaceJointExtraCharsError"]
  LOADK R16 K100 ["FacsHasFramesNoRootFaceJointError"]
  LOADK R17 K101 ["FacsNoAttributesError"]
  LOADK R18 K102 ["FacsNoNeutralError"]
  LOADK R19 K103 ["FacsMissingSupportCorrectiveWarning"]
  LOADK R20 K104 ["FacsMissingBaseError"]
  SETLIST R4 R5 16 [33]
  LOADK R5 K105 ["FacsMissingKeyFrameError"]
  LOADK R6 K106 ["FacsNoAnimationStackError"]
  LOADK R7 K107 ["FacsMultipleAnimationStackWarning"]
  LOADK R8 K108 ["FacsNoRootFaceJointError"]
  LOADK R9 K109 ["FacsMultipleRootFaceJointsError"]
  LOADK R10 K110 ["FacsNoJointsError"]
  LOADK R11 K111 ["FacsNearNeutralWarning"]
  LOADK R12 K112 ["FacsIncompletePosesWarning"]
  LOADK R13 K113 ["FacsOnlyNeutralError"]
  LOADK R14 K114 ["FacsNoFaceControlsAllowedError"]
  LOADK R15 K115 ["DropSpecialJointsWarning"]
  LOADK R16 K116 ["DuplicateTransferTargetWarning"]
  LOADK R17 K117 ["MissingTransferTargetWarning"]
  LOADK R18 K118 ["MissingTransferTextureWarning"]
  SETLIST R4 R5 14 [49]
  SETTABLEKS R4 R3 K30 ["ObjectGeneral"]
  DUPCLOSURE R4 K119 [PROTO_0]
  GETIMPORT R5 K121 [pairs]
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP_NEXT R5
  NEWTABLE R11 0 0
  GETIMPORT R12 K121 [pairs]
  MOVE R13 R9
  CALL R12 1 3
  FORGPREP_NEXT R12
  LOADB R17 1
  SETTABLE R17 R11 R16
  FORGLOOP R12 2 [-3]
  MOVE R10 R11
  SETTABLE R10 R3 R8
  FORGLOOP R5 2 [-14]
  RETURN R3 1
