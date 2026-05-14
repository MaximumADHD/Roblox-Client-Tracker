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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getEFEnableEmissiveMask"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Flags"]
       22 GETTABLEKS                       R3 R3 K9 ["getFFlagAllowUserToSelectPhysicalConstraintTypeForR15"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K32 [{"ImportName", "ImportAsPackage", "Dimensions", "FileDimensions", "ScaleUnit", "PolygonCount", "CageNonManifoldPreview", "CageOverlappingVerticesPreview", "CageUVMisMatchedPreview", "CageMeshIntersectedPreview", "MeshHoleDetectedPreview", "IrrelevantCageModifiedPreview", "OuterCageFarExtendedFromMeshPreview", "RigType", "PhysicalConstraintType", "DiffuseFilePath", "RoughnessFilePath", "NormalFilePath", "MetalnessFilePath", "EmissiveFilePath", "FileGeneral", "ObjectGeneral"}]
       26 NEWTABLE                         R4 0 1
       28 LOADK                            R5 K33 ["NameExceedsCharacterLimitWarning"]
       29 SETLIST                          R4 R5 1 [1]
       31 SETTABLEKS                       R4 R3 K10 ["ImportName"]
       33 NEWTABLE                         R4 0 1
       35 LOADK                            R5 K34 ["AnimationInPackageWarning"]
       36 SETLIST                          R4 R5 1 [1]
       38 SETTABLEKS                       R4 R3 K11 ["ImportAsPackage"]
       40 NEWTABLE                         R4 0 1
       42 LOADK                            R5 K35 ["MeshScaleWarning"]
       43 SETLIST                          R4 R5 1 [1]
       45 SETTABLEKS                       R4 R3 K12 ["Dimensions"]
       47 NEWTABLE                         R4 0 1
       49 LOADK                            R5 K35 ["MeshScaleWarning"]
       50 SETLIST                          R4 R5 1 [1]
       52 SETTABLEKS                       R4 R3 K13 ["FileDimensions"]
       54 NEWTABLE                         R4 0 1
       56 LOADK                            R5 K36 ["ScaleUnitNotStudWarning"]
       57 SETLIST                          R4 R5 1 [1]
       59 SETTABLEKS                       R4 R3 K14 ["ScaleUnit"]
       61 NEWTABLE                         R4 0 1
       63 LOADK                            R5 K37 ["MeshSizeWarning"]
       64 SETLIST                          R4 R5 1 [1]
       66 SETTABLEKS                       R4 R3 K15 ["PolygonCount"]
       68 NEWTABLE                         R4 0 1
       70 LOADK                            R5 K38 ["CageNonManifoldWarning"]
       71 SETLIST                          R4 R5 1 [1]
       73 SETTABLEKS                       R4 R3 K16 ["CageNonManifoldPreview"]
       75 NEWTABLE                         R4 0 1
       77 LOADK                            R5 K39 ["CageOverlappingVerticesWarning"]
       78 SETLIST                          R4 R5 1 [1]
       80 SETTABLEKS                       R4 R3 K17 ["CageOverlappingVerticesPreview"]
       82 NEWTABLE                         R4 0 1
       84 LOADK                            R5 K40 ["CageUVMisMatchedWarning"]
       85 SETLIST                          R4 R5 1 [1]
       87 SETTABLEKS                       R4 R3 K18 ["CageUVMisMatchedPreview"]
       89 NEWTABLE                         R4 0 1
       91 LOADK                            R5 K41 ["CageMeshIntersectedWarning"]
       92 SETLIST                          R4 R5 1 [1]
       94 SETTABLEKS                       R4 R3 K19 ["CageMeshIntersectedPreview"]
       96 NEWTABLE                         R4 0 1
       98 LOADK                            R5 K42 ["MeshHoleDetectedWarning"]
       99 SETLIST                          R4 R5 1 [1]
      101 SETTABLEKS                       R4 R3 K20 ["MeshHoleDetectedPreview"]
      103 NEWTABLE                         R4 0 1
      105 LOADK                            R5 K43 ["IrrelevantCageModifiedWarning"]
      106 SETLIST                          R4 R5 1 [1]
      108 SETTABLEKS                       R4 R3 K21 ["IrrelevantCageModifiedPreview"]
      110 NEWTABLE                         R4 0 1
      112 LOADK                            R5 K44 ["OuterCageFarExtendedFromMeshWarning"]
      113 SETLIST                          R4 R5 1 [1]
      115 SETTABLEKS                       R4 R3 K22 ["OuterCageFarExtendedFromMeshPreview"]
      117 NEWTABLE                         R4 0 1
      119 LOADK                            R5 K45 ["IncorrectR15Warning"]
      120 SETLIST                          R4 R5 1 [1]
      122 SETTABLEKS                       R4 R3 K23 ["RigType"]
      124 MOVE                             R5 R2
      125 CALL                             R5 0 1
      126 JUMPIFNOT                        R5 ; [+6]
      127 NEWTABLE                         R4 0 1
      129 LOADK                            R5 K46 ["IncorrectPhysicalConstraintWarning"]
      130 SETLIST                          R4 R5 1 [1]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R4
      134 SETTABLEKS                       R4 R3 K24 ["PhysicalConstraintType"]
      136 MOVE                             R5 R1
      137 CALL                             R5 0 1
      138 JUMPIFNOT                        R5 ; [+8]
      139 NEWTABLE                         R4 0 3
      141 LOADK                            R5 K47 ["CouldNotReadDiffuseError"]
      142 LOADK                            R6 K48 ["DiffuseBadFileFormatError"]
      143 LOADK                            R7 K49 ["EmissiveNeedsTransformWarning"]
      144 SETLIST                          R4 R5 3 [1]
      146 JUMP                             ; [+6]
      147 NEWTABLE                         R4 0 2
      149 LOADK                            R5 K47 ["CouldNotReadDiffuseError"]
      150 LOADK                            R6 K48 ["DiffuseBadFileFormatError"]
      151 SETLIST                          R4 R5 2 [1]
      153 SETTABLEKS                       R4 R3 K25 ["DiffuseFilePath"]
      155 NEWTABLE                         R4 0 2
      157 LOADK                            R5 K50 ["CouldNotReadRoughnessError"]
      158 LOADK                            R6 K51 ["RoughnessBadFileFormatError"]
      159 SETLIST                          R4 R5 2 [1]
      161 SETTABLEKS                       R4 R3 K26 ["RoughnessFilePath"]
      163 NEWTABLE                         R4 0 2
      165 LOADK                            R5 K52 ["CouldNotReadNormalError"]
      166 LOADK                            R6 K53 ["NormalBadFileFormatError"]
      167 SETLIST                          R4 R5 2 [1]
      169 SETTABLEKS                       R4 R3 K27 ["NormalFilePath"]
      171 NEWTABLE                         R4 0 2
      173 LOADK                            R5 K54 ["CouldNotReadMetalnessError"]
      174 LOADK                            R6 K55 ["MetalnessBadFileFormatError"]
      175 SETLIST                          R4 R5 2 [1]
      177 SETTABLEKS                       R4 R3 K28 ["MetalnessFilePath"]
      179 MOVE                             R5 R1
      180 CALL                             R5 0 1
      181 JUMPIFNOT                        R5 ; [+8]
      182 NEWTABLE                         R4 0 3
      184 LOADK                            R5 K56 ["CouldNotReadEmissiveError"]
      185 LOADK                            R6 K57 ["EmissiveBadFileFormatError"]
      186 LOADK                            R7 K49 ["EmissiveNeedsTransformWarning"]
      187 SETLIST                          R4 R5 3 [1]
      189 JUMP                             ; [+1]
      190 LOADNIL                          R4
      191 SETTABLEKS                       R4 R3 K29 ["EmissiveFilePath"]
      193 NEWTABLE                         R4 0 2
      195 LOADK                            R5 K58 ["CantImportAvatarGltfsWarning"]
      196 LOADK                            R6 K59 ["CantImportScaleOrWeightAnimationsWarning"]
      197 SETLIST                          R4 R5 2 [1]
      199 SETTABLEKS                       R4 R3 K30 ["FileGeneral"]
      201 NEWTABLE                         R4 0 62
      203 LOADK                            R5 K60 ["MaterialIgnoredWarning"]
      204 LOADK                            R6 K61 ["CouldNotReadTextureError"]
      205 LOADK                            R7 K62 ["TextureBadFileFormatError"]
      206 LOADK                            R8 K63 ["ContentNotFoundError"]
      207 LOADK                            R9 K64 ["MeshIdNotFoundError"]
      208 LOADK                            R10 K65 ["NoValidParentError"]
      209 LOADK                            R11 K66 ["NullNodeError"]
      210 LOADK                            R12 K67 ["ImportDataTypeMismatchError"]
      211 LOADK                            R13 K68 ["ImportDataNotCreatedError"]
      212 LOADK                            R14 K69 ["ImportDataInstanceNotCreatedError"]
      213 LOADK                            R15 K70 ["TextureInvalidSizeError"]
      214 LOADK                            R16 K71 ["IllegalNodeTypeError"]
      215 LOADK                            R17 K72 ["BadCallError"]
      216 LOADK                            R18 K73 ["PoseError"]
      217 LOADK                            R19 K74 ["UncaughtExceptionError"]
      218 LOADK                            R20 K75 ["UploadAlreadyRunningError"]
      219 SETLIST                          R4 R5 16 [1]
      221 LOADK                            R5 K76 ["CageMismatchWarning"]
      222 LOADK                            R6 K77 ["CageHasMaterialWarning"]
      223 LOADK                            R7 K78 ["CageNoGeoParentError"]
      224 LOADK                            R8 K79 ["UGCMeshVertColorsWarning"]
      225 LOADK                            R9 K80 ["UGCMaxMeshTrianglesWarning"]
      226 LOADK                            R10 K81 ["UGCExceedUVSpaceWarning"]
      227 LOADK                            R11 K82 ["UGCExceedTextureSizeWarning"]
      228 LOADK                            R12 K83 ["InnerButNoOuterCageWarning"]
      229 LOADK                            R13 K84 ["NoRefMeshForCageWarning"]
      230 LOADK                            R14 K85 ["NoRefMeshForCageWithSuggestionWarning"]
      231 LOADK                            R15 K86 ["AvatarCagesMissingWarning"]
      232 LOADK                            R16 K87 ["CageNameHasTypoWarning"]
      233 LOADK                            R17 K88 ["DeletedCageGeometryWarning"]
      234 LOADK                            R18 K89 ["UnsupportedPreviewTextureTypeWarning"]
      235 LOADK                            R19 K90 ["OuterCageBloatingWarning"]
      236 LOADK                            R20 K91 ["FacsFrameExtraCharsWarning"]
      237 SETLIST                          R4 R5 16 [17]
      239 LOADK                            R5 K92 ["FacsMax3CorrectivesError"]
      240 LOADK                            R6 K93 ["FacsUnrecognizedFacsError"]
      241 LOADK                            R7 K94 ["FacsInvalidCorrectiveError"]
      242 LOADK                            R8 K95 ["FacsCorrectiveDupeError"]
      243 LOADK                            R9 K96 ["FacsRootFaceJointNotStringError"]
      244 LOADK                            R10 K97 ["FacsRootFaceJointNoValueError"]
      245 LOADK                            R11 K98 ["FacsFrameAttrNotStringError"]
      246 LOADK                            R12 K99 ["FacsUnparseableFrameNumberError"]
      247 LOADK                            R13 K100 ["FacsEmptyAttributeWarning"]
      248 LOADK                            R14 K101 ["FacsDupeControlError"]
      249 LOADK                            R15 K102 ["FacsRootFaceJointExtraCharsError"]
      250 LOADK                            R16 K103 ["FacsHasFramesNoRootFaceJointError"]
      251 LOADK                            R17 K104 ["FacsNoAttributesError"]
      252 LOADK                            R18 K105 ["FacsNoNeutralError"]
      253 LOADK                            R19 K106 ["FacsMissingSupportCorrectiveWarning"]
      254 LOADK                            R20 K107 ["FacsMissingBaseError"]
      255 SETLIST                          R4 R5 16 [33]
      257 LOADK                            R5 K108 ["FacsMissingKeyFrameError"]
      258 LOADK                            R6 K109 ["FacsNoAnimationStackError"]
      259 LOADK                            R7 K110 ["FacsMultipleAnimationStackWarning"]
      260 LOADK                            R8 K111 ["FacsNoRootFaceJointError"]
      261 LOADK                            R9 K112 ["FacsMultipleRootFaceJointsError"]
      262 LOADK                            R10 K113 ["FacsNoJointsError"]
      263 LOADK                            R11 K114 ["FacsNearNeutralWarning"]
      264 LOADK                            R12 K115 ["FacsIncompletePosesWarning"]
      265 LOADK                            R13 K116 ["FacsOnlyNeutralError"]
      266 LOADK                            R14 K117 ["FacsNoFaceControlsAllowedError"]
      267 LOADK                            R15 K118 ["DropSpecialJointsWarning"]
      268 LOADK                            R16 K119 ["DuplicateTransferTargetWarning"]
      269 LOADK                            R17 K120 ["MissingTransferTargetWarning"]
      270 LOADK                            R18 K121 ["MissingTransferTextureWarning"]
      271 SETLIST                          R4 R5 14 [49]
      273 SETTABLEKS                       R4 R3 K31 ["ObjectGeneral"]
      275 DUPCLOSURE                       R4 K122 [PROTO_0]
      276 GETIMPORT                        R5 K124 [pairs]
      278 MOVE                             R6 R3
      279 CALL                             R5 1 3
      280 FORGPREP_NEXT                    R5
      281 NEWTABLE                         R11 0 0
      283 GETIMPORT                        R12 K124 [pairs]
      285 MOVE                             R13 R9
      286 CALL                             R12 1 3
      287 FORGPREP_NEXT                    R12
      288 LOADB                            R17 1
      289 SETTABLE                         R17 R11 R16
      290 FORGLOOP                         R12 2 ; [-3]
      292 MOVE                             R10 R11
      293 SETTABLE                         R10 R3 R8
      294 FORGLOOP                         R5 2 ; [-14]
      296 RETURN                           R3 1
