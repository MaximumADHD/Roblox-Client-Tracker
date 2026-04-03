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
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K7 ["Flags"]
       31 GETTABLEKS                       R4 R5 K10 ["getFFlagAllowUserToSelectPhysicalConstraintTypeForR15"]
       33 CALL                             R3 1 1
       34 DUPTABLE                         R4 K33 [{"ImportName", "ImportAsPackage", "Dimensions", "FileDimensions", "PolygonCount", "CageNonManifoldPreview", "CageOverlappingVerticesPreview", "CageUVMisMatchedPreview", "CageMeshIntersectedPreview", "MeshHoleDetectedPreview", "IrrelevantCageModifiedPreview", "OuterCageFarExtendedFromMeshPreview", "RigType", "PhysicalConstraintType", "DiffuseFilePath", "RoughnessFilePath", "NormalFilePath", "MetalnessFilePath", "EmissiveFilePath", "FileGeneral", "ValidateUgcBody", "ObjectGeneral"}]
       35 NEWTABLE                         R5 0 1
       37 LOADK                            R6 K34 ["NameExceedsCharacterLimitWarning"]
       38 SETLIST                          R5 R6 1 [1]
       40 SETTABLEKS                       R5 R4 K11 ["ImportName"]
       42 NEWTABLE                         R5 0 1
       44 LOADK                            R6 K35 ["AnimationInPackageWarning"]
       45 SETLIST                          R5 R6 1 [1]
       47 SETTABLEKS                       R5 R4 K12 ["ImportAsPackage"]
       49 NEWTABLE                         R5 0 1
       51 LOADK                            R6 K36 ["MeshScaleWarning"]
       52 SETLIST                          R5 R6 1 [1]
       54 SETTABLEKS                       R5 R4 K13 ["Dimensions"]
       56 NEWTABLE                         R5 0 1
       58 LOADK                            R6 K36 ["MeshScaleWarning"]
       59 SETLIST                          R5 R6 1 [1]
       61 SETTABLEKS                       R5 R4 K14 ["FileDimensions"]
       63 NEWTABLE                         R5 0 1
       65 LOADK                            R6 K37 ["MeshSizeWarning"]
       66 SETLIST                          R5 R6 1 [1]
       68 SETTABLEKS                       R5 R4 K15 ["PolygonCount"]
       70 NEWTABLE                         R5 0 1
       72 LOADK                            R6 K38 ["CageNonManifoldWarning"]
       73 SETLIST                          R5 R6 1 [1]
       75 SETTABLEKS                       R5 R4 K16 ["CageNonManifoldPreview"]
       77 NEWTABLE                         R5 0 1
       79 LOADK                            R6 K39 ["CageOverlappingVerticesWarning"]
       80 SETLIST                          R5 R6 1 [1]
       82 SETTABLEKS                       R5 R4 K17 ["CageOverlappingVerticesPreview"]
       84 NEWTABLE                         R5 0 1
       86 LOADK                            R6 K40 ["CageUVMisMatchedWarning"]
       87 SETLIST                          R5 R6 1 [1]
       89 SETTABLEKS                       R5 R4 K18 ["CageUVMisMatchedPreview"]
       91 NEWTABLE                         R5 0 1
       93 LOADK                            R6 K41 ["CageMeshIntersectedWarning"]
       94 SETLIST                          R5 R6 1 [1]
       96 SETTABLEKS                       R5 R4 K19 ["CageMeshIntersectedPreview"]
       98 NEWTABLE                         R5 0 1
      100 LOADK                            R6 K42 ["MeshHoleDetectedWarning"]
      101 SETLIST                          R5 R6 1 [1]
      103 SETTABLEKS                       R5 R4 K20 ["MeshHoleDetectedPreview"]
      105 NEWTABLE                         R5 0 1
      107 LOADK                            R6 K43 ["IrrelevantCageModifiedWarning"]
      108 SETLIST                          R5 R6 1 [1]
      110 SETTABLEKS                       R5 R4 K21 ["IrrelevantCageModifiedPreview"]
      112 NEWTABLE                         R5 0 1
      114 LOADK                            R6 K44 ["OuterCageFarExtendedFromMeshWarning"]
      115 SETLIST                          R5 R6 1 [1]
      117 SETTABLEKS                       R5 R4 K22 ["OuterCageFarExtendedFromMeshPreview"]
      119 NEWTABLE                         R5 0 1
      121 LOADK                            R6 K45 ["IncorrectR15Warning"]
      122 SETLIST                          R5 R6 1 [1]
      124 SETTABLEKS                       R5 R4 K23 ["RigType"]
      126 MOVE                             R6 R3
      127 CALL                             R6 0 1
      128 JUMPIFNOT                        R6 ; [+6]
      129 NEWTABLE                         R5 0 1
      131 LOADK                            R6 K46 ["IncorrectPhysicalConstraintWarning"]
      132 SETLIST                          R5 R6 1 [1]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R5
      136 SETTABLEKS                       R5 R4 K24 ["PhysicalConstraintType"]
      138 MOVE                             R6 R2
      139 CALL                             R6 0 1
      140 JUMPIFNOT                        R6 ; [+8]
      141 NEWTABLE                         R5 0 3
      143 LOADK                            R6 K47 ["CouldNotReadDiffuseError"]
      144 LOADK                            R7 K48 ["DiffuseBadFileFormatError"]
      145 LOADK                            R8 K49 ["EmissiveNeedsTransformWarning"]
      146 SETLIST                          R5 R6 3 [1]
      148 JUMP                             ; [+6]
      149 NEWTABLE                         R5 0 2
      151 LOADK                            R6 K47 ["CouldNotReadDiffuseError"]
      152 LOADK                            R7 K48 ["DiffuseBadFileFormatError"]
      153 SETLIST                          R5 R6 2 [1]
      155 SETTABLEKS                       R5 R4 K25 ["DiffuseFilePath"]
      157 NEWTABLE                         R5 0 2
      159 LOADK                            R6 K50 ["CouldNotReadRoughnessError"]
      160 LOADK                            R7 K51 ["RoughnessBadFileFormatError"]
      161 SETLIST                          R5 R6 2 [1]
      163 SETTABLEKS                       R5 R4 K26 ["RoughnessFilePath"]
      165 NEWTABLE                         R5 0 2
      167 LOADK                            R6 K52 ["CouldNotReadNormalError"]
      168 LOADK                            R7 K53 ["NormalBadFileFormatError"]
      169 SETLIST                          R5 R6 2 [1]
      171 SETTABLEKS                       R5 R4 K27 ["NormalFilePath"]
      173 NEWTABLE                         R5 0 2
      175 LOADK                            R6 K54 ["CouldNotReadMetalnessError"]
      176 LOADK                            R7 K55 ["MetalnessBadFileFormatError"]
      177 SETLIST                          R5 R6 2 [1]
      179 SETTABLEKS                       R5 R4 K28 ["MetalnessFilePath"]
      181 MOVE                             R6 R2
      182 CALL                             R6 0 1
      183 JUMPIFNOT                        R6 ; [+8]
      184 NEWTABLE                         R5 0 3
      186 LOADK                            R6 K56 ["CouldNotReadEmissiveError"]
      187 LOADK                            R7 K57 ["EmissiveBadFileFormatError"]
      188 LOADK                            R8 K49 ["EmissiveNeedsTransformWarning"]
      189 SETLIST                          R5 R6 3 [1]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R5
      193 SETTABLEKS                       R5 R4 K29 ["EmissiveFilePath"]
      195 NEWTABLE                         R5 0 2
      197 LOADK                            R6 K58 ["CantImportAvatarGltfsWarning"]
      198 LOADK                            R7 K59 ["CantImportScaleOrWeightAnimationsWarning"]
      199 SETLIST                          R5 R6 2 [1]
      201 SETTABLEKS                       R5 R4 K30 ["FileGeneral"]
      203 MOVE                             R6 R1
      204 CALL                             R6 0 1
      205 JUMPIFNOT                        R6 ; [+2]
      206 LOADNIL                          R5
      207 JUMP                             ; [+5]
      208 NEWTABLE                         R5 0 1
      210 LOADK                            R6 K60 ["ValidateUgcButNoInsertError"]
      211 SETLIST                          R5 R6 1 [1]
      213 SETTABLEKS                       R5 R4 K31 ["ValidateUgcBody"]
      215 NEWTABLE                         R5 0 62
      217 LOADK                            R6 K61 ["MaterialIgnoredWarning"]
      218 LOADK                            R7 K62 ["CouldNotReadTextureError"]
      219 LOADK                            R8 K63 ["TextureBadFileFormatError"]
      220 LOADK                            R9 K64 ["ContentNotFoundError"]
      221 LOADK                            R10 K65 ["MeshIdNotFoundError"]
      222 LOADK                            R11 K66 ["NoValidParentError"]
      223 LOADK                            R12 K67 ["NullNodeError"]
      224 LOADK                            R13 K68 ["ImportDataTypeMismatchError"]
      225 LOADK                            R14 K69 ["ImportDataNotCreatedError"]
      226 LOADK                            R15 K70 ["ImportDataInstanceNotCreatedError"]
      227 LOADK                            R16 K71 ["TextureInvalidSizeError"]
      228 LOADK                            R17 K72 ["IllegalNodeTypeError"]
      229 LOADK                            R18 K73 ["BadCallError"]
      230 LOADK                            R19 K74 ["PoseError"]
      231 LOADK                            R20 K75 ["UncaughtExceptionError"]
      232 LOADK                            R21 K76 ["UploadAlreadyRunningError"]
      233 SETLIST                          R5 R6 16 [1]
      235 LOADK                            R6 K77 ["CageMismatchWarning"]
      236 LOADK                            R7 K78 ["CageHasMaterialWarning"]
      237 LOADK                            R8 K79 ["CageNoGeoParentError"]
      238 LOADK                            R9 K80 ["UGCMeshVertColorsWarning"]
      239 LOADK                            R10 K81 ["UGCMaxMeshTrianglesWarning"]
      240 LOADK                            R11 K82 ["UGCExceedUVSpaceWarning"]
      241 LOADK                            R12 K83 ["UGCExceedTextureSizeWarning"]
      242 LOADK                            R13 K84 ["InnerButNoOuterCageWarning"]
      243 LOADK                            R14 K85 ["NoRefMeshForCageWarning"]
      244 LOADK                            R15 K86 ["NoRefMeshForCageWithSuggestionWarning"]
      245 LOADK                            R16 K87 ["AvatarCagesMissingWarning"]
      246 LOADK                            R17 K88 ["CageNameHasTypoWarning"]
      247 LOADK                            R18 K89 ["DeletedCageGeometryWarning"]
      248 LOADK                            R19 K90 ["UnsupportedPreviewTextureTypeWarning"]
      249 LOADK                            R20 K91 ["OuterCageBloatingWarning"]
      250 LOADK                            R21 K92 ["FacsFrameExtraCharsWarning"]
      251 SETLIST                          R5 R6 16 [17]
      253 LOADK                            R6 K93 ["FacsMax3CorrectivesError"]
      254 LOADK                            R7 K94 ["FacsUnrecognizedFacsError"]
      255 LOADK                            R8 K95 ["FacsInvalidCorrectiveError"]
      256 LOADK                            R9 K96 ["FacsCorrectiveDupeError"]
      257 LOADK                            R10 K97 ["FacsRootFaceJointNotStringError"]
      258 LOADK                            R11 K98 ["FacsRootFaceJointNoValueError"]
      259 LOADK                            R12 K99 ["FacsFrameAttrNotStringError"]
      260 LOADK                            R13 K100 ["FacsUnparseableFrameNumberError"]
      261 LOADK                            R14 K101 ["FacsEmptyAttributeWarning"]
      262 LOADK                            R15 K102 ["FacsDupeControlError"]
      263 LOADK                            R16 K103 ["FacsRootFaceJointExtraCharsError"]
      264 LOADK                            R17 K104 ["FacsHasFramesNoRootFaceJointError"]
      265 LOADK                            R18 K105 ["FacsNoAttributesError"]
      266 LOADK                            R19 K106 ["FacsNoNeutralError"]
      267 LOADK                            R20 K107 ["FacsMissingSupportCorrectiveWarning"]
      268 LOADK                            R21 K108 ["FacsMissingBaseError"]
      269 SETLIST                          R5 R6 16 [33]
      271 LOADK                            R6 K109 ["FacsMissingKeyFrameError"]
      272 LOADK                            R7 K110 ["FacsNoAnimationStackError"]
      273 LOADK                            R8 K111 ["FacsMultipleAnimationStackWarning"]
      274 LOADK                            R9 K112 ["FacsNoRootFaceJointError"]
      275 LOADK                            R10 K113 ["FacsMultipleRootFaceJointsError"]
      276 LOADK                            R11 K114 ["FacsNoJointsError"]
      277 LOADK                            R12 K115 ["FacsNearNeutralWarning"]
      278 LOADK                            R13 K116 ["FacsIncompletePosesWarning"]
      279 LOADK                            R14 K117 ["FacsOnlyNeutralError"]
      280 LOADK                            R15 K118 ["FacsNoFaceControlsAllowedError"]
      281 LOADK                            R16 K119 ["DropSpecialJointsWarning"]
      282 LOADK                            R17 K120 ["DuplicateTransferTargetWarning"]
      283 LOADK                            R18 K121 ["MissingTransferTargetWarning"]
      284 LOADK                            R19 K122 ["MissingTransferTextureWarning"]
      285 SETLIST                          R5 R6 14 [49]
      287 SETTABLEKS                       R5 R4 K32 ["ObjectGeneral"]
      289 DUPCLOSURE                       R5 K123 [PROTO_0]
      290 GETIMPORT                        R6 K125 [pairs]
      292 MOVE                             R7 R4
      293 CALL                             R6 1 3
      294 FORGPREP_NEXT                    R6
      295 NEWTABLE                         R12 0 0
      297 GETIMPORT                        R13 K125 [pairs]
      299 MOVE                             R14 R10
      300 CALL                             R13 1 3
      301 FORGPREP_NEXT                    R13
      302 LOADB                            R18 1
      303 SETTABLE                         R18 R12 R17
      304 FORGLOOP                         R13 2 ; [-3]
      306 MOVE                             R11 R12
      307 SETTABLE                         R11 R4 R9
      308 FORGLOOP                         R6 2 ; [-14]
      310 RETURN                           R4 1
