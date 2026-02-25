PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 LOADB                            R7 1
        8 SETTABLE                         R7 R1 R6
        9 FORGLOOP                         R2 2 ; [-3]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagUnlinkImporterAndAvatarPreview"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Flags"]
       22 GETTABLEKS                       R3 R4 K9 ["getEFEnableEmissiveMask"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K31 [{"ImportName", "ImportAsPackage", "Dimensions", "FileDimensions", "PolygonCount", "CageNonManifoldPreview", "CageOverlappingVerticesPreview", "CageUVMisMatchedPreview", "CageMeshIntersectedPreview", "MeshHoleDetectedPreview", "IrrelevantCageModifiedPreview", "OuterCageFarExtendedFromMeshPreview", "RigType", "DiffuseFilePath", "RoughnessFilePath", "NormalFilePath", "MetalnessFilePath", "EmissiveFilePath", "FileGeneral", "ValidateUgcBody", "ObjectGeneral"}]
       26 NEWTABLE                         R4 0 1
       28 LOADK                            R5 K32 ["NameExceedsCharacterLimitWarning"]
       29 SETLIST                          R4 R5 1 [1]
       31 SETTABLEKS                       R4 R3 K10 ["ImportName"]
       33 NEWTABLE                         R4 0 1
       35 LOADK                            R5 K33 ["AnimationInPackageWarning"]
       36 SETLIST                          R4 R5 1 [1]
       38 SETTABLEKS                       R4 R3 K11 ["ImportAsPackage"]
       40 NEWTABLE                         R4 0 1
       42 LOADK                            R5 K34 ["MeshScaleWarning"]
       43 SETLIST                          R4 R5 1 [1]
       45 SETTABLEKS                       R4 R3 K12 ["Dimensions"]
       47 NEWTABLE                         R4 0 1
       49 LOADK                            R5 K34 ["MeshScaleWarning"]
       50 SETLIST                          R4 R5 1 [1]
       52 SETTABLEKS                       R4 R3 K13 ["FileDimensions"]
       54 NEWTABLE                         R4 0 1
       56 LOADK                            R5 K35 ["MeshSizeWarning"]
       57 SETLIST                          R4 R5 1 [1]
       59 SETTABLEKS                       R4 R3 K14 ["PolygonCount"]
       61 NEWTABLE                         R4 0 1
       63 LOADK                            R5 K36 ["CageNonManifoldWarning"]
       64 SETLIST                          R4 R5 1 [1]
       66 SETTABLEKS                       R4 R3 K15 ["CageNonManifoldPreview"]
       68 NEWTABLE                         R4 0 1
       70 LOADK                            R5 K37 ["CageOverlappingVerticesWarning"]
       71 SETLIST                          R4 R5 1 [1]
       73 SETTABLEKS                       R4 R3 K16 ["CageOverlappingVerticesPreview"]
       75 NEWTABLE                         R4 0 1
       77 LOADK                            R5 K38 ["CageUVMisMatchedWarning"]
       78 SETLIST                          R4 R5 1 [1]
       80 SETTABLEKS                       R4 R3 K17 ["CageUVMisMatchedPreview"]
       82 NEWTABLE                         R4 0 1
       84 LOADK                            R5 K39 ["CageMeshIntersectedWarning"]
       85 SETLIST                          R4 R5 1 [1]
       87 SETTABLEKS                       R4 R3 K18 ["CageMeshIntersectedPreview"]
       89 NEWTABLE                         R4 0 1
       91 LOADK                            R5 K40 ["MeshHoleDetectedWarning"]
       92 SETLIST                          R4 R5 1 [1]
       94 SETTABLEKS                       R4 R3 K19 ["MeshHoleDetectedPreview"]
       96 NEWTABLE                         R4 0 1
       98 LOADK                            R5 K41 ["IrrelevantCageModifiedWarning"]
       99 SETLIST                          R4 R5 1 [1]
      101 SETTABLEKS                       R4 R3 K20 ["IrrelevantCageModifiedPreview"]
      103 NEWTABLE                         R4 0 1
      105 LOADK                            R5 K42 ["OuterCageFarExtendedFromMeshWarning"]
      106 SETLIST                          R4 R5 1 [1]
      108 SETTABLEKS                       R4 R3 K21 ["OuterCageFarExtendedFromMeshPreview"]
      110 NEWTABLE                         R4 0 1
      112 LOADK                            R5 K43 ["IncorrectR15Warning"]
      113 SETLIST                          R4 R5 1 [1]
      115 SETTABLEKS                       R4 R3 K22 ["RigType"]
      117 MOVE                             R5 R2
      118 CALL                             R5 0 1
      119 JUMPIFNOT                        R5 ; [+8]
      120 NEWTABLE                         R4 0 3
      122 LOADK                            R5 K44 ["CouldNotReadDiffuseError"]
      123 LOADK                            R6 K45 ["DiffuseBadFileFormatError"]
      124 LOADK                            R7 K46 ["EmissiveNeedsTransformWarning"]
      125 SETLIST                          R4 R5 3 [1]
      127 JUMP                             ; [+6]
      128 NEWTABLE                         R4 0 2
      130 LOADK                            R5 K44 ["CouldNotReadDiffuseError"]
      131 LOADK                            R6 K45 ["DiffuseBadFileFormatError"]
      132 SETLIST                          R4 R5 2 [1]
      134 SETTABLEKS                       R4 R3 K23 ["DiffuseFilePath"]
      136 NEWTABLE                         R4 0 2
      138 LOADK                            R5 K47 ["CouldNotReadRoughnessError"]
      139 LOADK                            R6 K48 ["RoughnessBadFileFormatError"]
      140 SETLIST                          R4 R5 2 [1]
      142 SETTABLEKS                       R4 R3 K24 ["RoughnessFilePath"]
      144 NEWTABLE                         R4 0 2
      146 LOADK                            R5 K49 ["CouldNotReadNormalError"]
      147 LOADK                            R6 K50 ["NormalBadFileFormatError"]
      148 SETLIST                          R4 R5 2 [1]
      150 SETTABLEKS                       R4 R3 K25 ["NormalFilePath"]
      152 NEWTABLE                         R4 0 2
      154 LOADK                            R5 K51 ["CouldNotReadMetalnessError"]
      155 LOADK                            R6 K52 ["MetalnessBadFileFormatError"]
      156 SETLIST                          R4 R5 2 [1]
      158 SETTABLEKS                       R4 R3 K26 ["MetalnessFilePath"]
      160 MOVE                             R5 R2
      161 CALL                             R5 0 1
      162 JUMPIFNOT                        R5 ; [+8]
      163 NEWTABLE                         R4 0 3
      165 LOADK                            R5 K53 ["CouldNotReadEmissiveError"]
      166 LOADK                            R6 K54 ["EmissiveBadFileFormatError"]
      167 LOADK                            R7 K46 ["EmissiveNeedsTransformWarning"]
      168 SETLIST                          R4 R5 3 [1]
      170 JUMP                             ; [+1]
      171 LOADNIL                          R4
      172 SETTABLEKS                       R4 R3 K27 ["EmissiveFilePath"]
      174 NEWTABLE                         R4 0 2
      176 LOADK                            R5 K55 ["CantImportAvatarGltfsWarning"]
      177 LOADK                            R6 K56 ["CantImportScaleOrWeightAnimationsWarning"]
      178 SETLIST                          R4 R5 2 [1]
      180 SETTABLEKS                       R4 R3 K28 ["FileGeneral"]
      182 MOVE                             R5 R1
      183 CALL                             R5 0 1
      184 JUMPIFNOT                        R5 ; [+2]
      185 LOADNIL                          R4
      186 JUMP                             ; [+5]
      187 NEWTABLE                         R4 0 1
      189 LOADK                            R5 K57 ["ValidateUgcButNoInsertError"]
      190 SETLIST                          R4 R5 1 [1]
      192 SETTABLEKS                       R4 R3 K29 ["ValidateUgcBody"]
      194 NEWTABLE                         R4 0 62
      196 LOADK                            R5 K58 ["MaterialIgnoredWarning"]
      197 LOADK                            R6 K59 ["CouldNotReadTextureError"]
      198 LOADK                            R7 K60 ["TextureBadFileFormatError"]
      199 LOADK                            R8 K61 ["ContentNotFoundError"]
      200 LOADK                            R9 K62 ["MeshIdNotFoundError"]
      201 LOADK                            R10 K63 ["NoValidParentError"]
      202 LOADK                            R11 K64 ["NullNodeError"]
      203 LOADK                            R12 K65 ["ImportDataTypeMismatchError"]
      204 LOADK                            R13 K66 ["ImportDataNotCreatedError"]
      205 LOADK                            R14 K67 ["ImportDataInstanceNotCreatedError"]
      206 LOADK                            R15 K68 ["TextureInvalidSizeError"]
      207 LOADK                            R16 K69 ["IllegalNodeTypeError"]
      208 LOADK                            R17 K70 ["BadCallError"]
      209 LOADK                            R18 K71 ["PoseError"]
      210 LOADK                            R19 K72 ["UncaughtExceptionError"]
      211 LOADK                            R20 K73 ["UploadAlreadyRunningError"]
      212 SETLIST                          R4 R5 16 [1]
      214 LOADK                            R5 K74 ["CageMismatchWarning"]
      215 LOADK                            R6 K75 ["CageHasMaterialWarning"]
      216 LOADK                            R7 K76 ["CageNoGeoParentError"]
      217 LOADK                            R8 K77 ["UGCMeshVertColorsWarning"]
      218 LOADK                            R9 K78 ["UGCMaxMeshTrianglesWarning"]
      219 LOADK                            R10 K79 ["UGCExceedUVSpaceWarning"]
      220 LOADK                            R11 K80 ["UGCExceedTextureSizeWarning"]
      221 LOADK                            R12 K81 ["InnerButNoOuterCageWarning"]
      222 LOADK                            R13 K82 ["NoRefMeshForCageWarning"]
      223 LOADK                            R14 K83 ["NoRefMeshForCageWithSuggestionWarning"]
      224 LOADK                            R15 K84 ["AvatarCagesMissingWarning"]
      225 LOADK                            R16 K85 ["CageNameHasTypoWarning"]
      226 LOADK                            R17 K86 ["DeletedCageGeometryWarning"]
      227 LOADK                            R18 K87 ["UnsupportedPreviewTextureTypeWarning"]
      228 LOADK                            R19 K88 ["OuterCageBloatingWarning"]
      229 LOADK                            R20 K89 ["FacsFrameExtraCharsWarning"]
      230 SETLIST                          R4 R5 16 [17]
      232 LOADK                            R5 K90 ["FacsMax3CorrectivesError"]
      233 LOADK                            R6 K91 ["FacsUnrecognizedFacsError"]
      234 LOADK                            R7 K92 ["FacsInvalidCorrectiveError"]
      235 LOADK                            R8 K93 ["FacsCorrectiveDupeError"]
      236 LOADK                            R9 K94 ["FacsRootFaceJointNotStringError"]
      237 LOADK                            R10 K95 ["FacsRootFaceJointNoValueError"]
      238 LOADK                            R11 K96 ["FacsFrameAttrNotStringError"]
      239 LOADK                            R12 K97 ["FacsUnparseableFrameNumberError"]
      240 LOADK                            R13 K98 ["FacsEmptyAttributeWarning"]
      241 LOADK                            R14 K99 ["FacsDupeControlError"]
      242 LOADK                            R15 K100 ["FacsRootFaceJointExtraCharsError"]
      243 LOADK                            R16 K101 ["FacsHasFramesNoRootFaceJointError"]
      244 LOADK                            R17 K102 ["FacsNoAttributesError"]
      245 LOADK                            R18 K103 ["FacsNoNeutralError"]
      246 LOADK                            R19 K104 ["FacsMissingSupportCorrectiveWarning"]
      247 LOADK                            R20 K105 ["FacsMissingBaseError"]
      248 SETLIST                          R4 R5 16 [33]
      250 LOADK                            R5 K106 ["FacsMissingKeyFrameError"]
      251 LOADK                            R6 K107 ["FacsNoAnimationStackError"]
      252 LOADK                            R7 K108 ["FacsMultipleAnimationStackWarning"]
      253 LOADK                            R8 K109 ["FacsNoRootFaceJointError"]
      254 LOADK                            R9 K110 ["FacsMultipleRootFaceJointsError"]
      255 LOADK                            R10 K111 ["FacsNoJointsError"]
      256 LOADK                            R11 K112 ["FacsNearNeutralWarning"]
      257 LOADK                            R12 K113 ["FacsIncompletePosesWarning"]
      258 LOADK                            R13 K114 ["FacsOnlyNeutralError"]
      259 LOADK                            R14 K115 ["FacsNoFaceControlsAllowedError"]
      260 LOADK                            R15 K116 ["DropSpecialJointsWarning"]
      261 LOADK                            R16 K117 ["DuplicateTransferTargetWarning"]
      262 LOADK                            R17 K118 ["MissingTransferTargetWarning"]
      263 LOADK                            R18 K119 ["MissingTransferTextureWarning"]
      264 SETLIST                          R4 R5 14 [49]
      266 SETTABLEKS                       R4 R3 K30 ["ObjectGeneral"]
      268 DUPCLOSURE                       R4 K120 [PROTO_0]
      269 GETIMPORT                        R5 K122 [pairs]
      271 MOVE                             R6 R3
      272 CALL                             R5 1 3
      273 FORGPREP_NEXT                    R5
      274 NEWTABLE                         R11 0 0
      276 GETIMPORT                        R12 K122 [pairs]
      278 MOVE                             R13 R9
      279 CALL                             R12 1 3
      280 FORGPREP_NEXT                    R12
      281 LOADB                            R17 1
      282 SETTABLE                         R17 R11 R16
      283 FORGLOOP                         R12 2 ; [-3]
      285 MOVE                             R10 R11
      286 SETTABLE                         R10 R3 R8
      287 FORGLOOP                         R5 2 ; [-14]
      289 RETURN                           R3 1
