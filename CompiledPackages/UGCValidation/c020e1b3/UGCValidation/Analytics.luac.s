PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 LOADN                            R3 1
        4 LOADK                            R5 K0 ["#"]
        5 FASTCALL1                        SELECT_VARARG R5 ; [+3]
        6 GETIMPORT                        R4 K2 [select]
        8 GETVARARGS                       R6 -1
        9 CALL                             R4 -1 1
       10 MOVE                             R1 R4
       11 LOADN                            R2 1
       12 FORNPREP                         R1
       13 GETIMPORT                        R4 K2 [select]
       15 MOVE                             R5 R3
       16 GETVARARGS                       R6 -1
       17 CALL                             R4 -1 3
       18 FORGPREP                         R4
       19 SETTABLE                         R8 R0 R7
       20 FORGLOOP                         R4 2 ; [-2]
       22 FORNLOOP                         R1
       23 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R3 K0 ["UNREGISTERED_%*"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K1 ["format"]
        4 CALL                             R3 2 1
        5 MOVE                             R2 R3
        6 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TOSTRING R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K1 [tostring]
       10 CALL                             R7 1 1
       11 SETTABLE                         R7 R1 R5
       12 FORGLOOP                         R2 2 ; [-7]
       14 GETUPVAL                         R2 0
       15 SETTABLEKS                       R1 R2 K2 ["metadata"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 JUMPIF                           R0 ; [+2]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 1
        9 NAMECALL                         R1 R1 K0 ["IsStudio"]
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+6]
       13 GETTABLEKS                       R1 R0 K1 ["allowEditableInstances"]
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETTABLEKS                       R1 R0 K2 ["isServer"]
       18 JUMPIF                           R1 ; [+2]
       19 LOADB                            R1 0
       20 RETURN                           R1 1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["shouldReportIECTelemetry"]
        3 MOVE                             R4 R2
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+6]
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 NAMECALL                         R3 R3 K1 ["ReportUGCValidationCounter"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R4 R4 K0 ["IsStudio"]
        3 CALL                             R4 1 1
        4 JUMPIFNOT                        R4 ; [+2]
        5 LOADK                            R3 K1 ["studio"]
        6 JUMP                             ; [+1]
        7 LOADK                            R3 K2 ["rcc"]
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K3 ["metadata"]
       12 MOVE                             R6 R1
       13 JUMPIF                           R6 ; [+2]
       14 NEWTABLE                         R6 0 0
       16 DUPTABLE                         R7 K9 [{"errorType", "studioSid", "clientId", "placeId", "userId"}]
       17 SETTABLEKS                       R0 R7 K4 ["errorType"]
       19 GETUPVAL                         R8 3
       20 NAMECALL                         R8 R8 K10 ["GetSessionId"]
       22 CALL                             R8 1 1
       23 SETTABLEKS                       R8 R7 K5 ["studioSid"]
       25 GETUPVAL                         R8 3
       26 NAMECALL                         R8 R8 K11 ["GetClientId"]
       28 CALL                             R8 1 1
       29 SETTABLEKS                       R8 R7 K6 ["clientId"]
       31 GETIMPORT                        R8 K13 [game]
       33 GETTABLEKS                       R8 R8 K14 ["PlaceId"]
       35 SETTABLEKS                       R8 R7 K7 ["placeId"]
       37 GETUPVAL                         R9 4
       38 JUMPIFNOT                        R9 ; [+5]
       39 GETUPVAL                         R8 4
       40 NAMECALL                         R8 R8 K15 ["GetUserId"]
       42 CALL                             R8 1 1
       43 JUMP                             ; [+1]
       44 LOADN                            R8 0
       45 SETTABLEKS                       R8 R7 K8 ["userId"]
       47 CALL                             R4 3 1
       48 GETUPVAL                         R5 3
       49 MOVE                             R7 R3
       50 LOADK                            R8 K16 ["ugcValidation"]
       51 LOADK                            R9 K17 ["failure"]
       52 MOVE                             R10 R4
       53 NAMECALL                         R5 R5 K18 ["SendEventDeferred"]
       55 CALL                             R5 5 0
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R5 R5 K19 ["shouldReportIECTelemetry"]
       59 MOVE                             R6 R2
       60 CALL                             R5 1 1
       61 JUMPIFNOT                        R5 ; [+5]
       62 GETUPVAL                         R5 5
       63 MOVE                             R7 R0
       64 NAMECALL                         R5 R5 K20 ["ReportUGCValidationFailureTelemetry"]
       66 CALL                             R5 2 0
       67 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["IsStudio"]
        3 CALL                             R3 1 1
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADK                            R2 K1 ["studio"]
        6 JUMP                             ; [+1]
        7 LOADK                            R2 K2 ["rcc"]
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["metadata"]
       12 MOVE                             R5 R1
       13 JUMPIF                           R5 ; [+2]
       14 NEWTABLE                         R5 0 0
       16 DUPTABLE                         R6 K9 [{"time", "studioSid", "clientId", "placeId", "userId"}]
       17 SETTABLEKS                       R0 R6 K4 ["time"]
       19 GETUPVAL                         R7 3
       20 NAMECALL                         R7 R7 K10 ["GetSessionId"]
       22 CALL                             R7 1 1
       23 SETTABLEKS                       R7 R6 K5 ["studioSid"]
       25 GETUPVAL                         R7 3
       26 NAMECALL                         R7 R7 K11 ["GetClientId"]
       28 CALL                             R7 1 1
       29 SETTABLEKS                       R7 R6 K6 ["clientId"]
       31 GETIMPORT                        R7 K13 [game]
       33 GETTABLEKS                       R7 R7 K14 ["PlaceId"]
       35 SETTABLEKS                       R7 R6 K7 ["placeId"]
       37 GETUPVAL                         R8 4
       38 JUMPIFNOT                        R8 ; [+5]
       39 GETUPVAL                         R7 4
       40 NAMECALL                         R7 R7 K15 ["GetUserId"]
       42 CALL                             R7 1 1
       43 JUMP                             ; [+1]
       44 LOADN                            R7 0
       45 SETTABLEKS                       R7 R6 K8 ["userId"]
       47 CALL                             R3 3 1
       48 GETUPVAL                         R4 3
       49 MOVE                             R6 R2
       50 LOADK                            R7 K16 ["ugcValidation"]
       51 LOADK                            R8 K17 ["thumbnailing"]
       52 MOVE                             R9 R3
       53 NAMECALL                         R4 R4 K18 ["SendEventDeferred"]
       55 CALL                             R4 5 0
       56 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R2 K0 ["scriptTimes"]
        6 JUMPIF                           R3 ; [+4]
        7 NEWTABLE                         R3 0 0
        9 SETTABLEKS                       R3 R2 K0 ["scriptTimes"]
       11 GETTABLEKS                       R3 R2 K0 ["scriptTimes"]
       13 GETTABLE                         R4 R3 R0
       14 JUMPIF                           R4 ; [+2]
       15 LOADN                            R4 0
       16 SETTABLE                         R4 R3 R0
       17 GETIMPORT                        R5 K2 [tick]
       19 CALL                             R5 0 1
       20 SUB                              R4 R5 R1
       21 GETTABLE                         R5 R3 R0
       22 ADD                              R5 R5 R4
       23 SETTABLE                         R5 R3 R0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["isServer"]
        6 JUMPIFNOT                        R1 ; [+51]
        7 GETUPVAL                         R1 1
        8 NAMECALL                         R1 R1 K1 ["IsStudio"]
       10 CALL                             R1 1 1
       11 JUMPIF                           R1 ; [+46]
       12 GETTABLEKS                       R1 R0 K2 ["scriptTimes"]
       14 JUMPIFNOT                        R1 ; [+43]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K3 ["metadata"]
       18 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       20 LOADK                            R3 K4 ["Metadata is never nil"]
       21 GETIMPORT                        R1 K6 [assert]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K3 ["metadata"]
       27 GETTABLEKS                       R1 R1 K7 ["entrypoint"]
       29 LOADK                            R2 K8 ["FullBody"]
       30 GETTABLEKS                       R3 R0 K9 ["assetTypeEnum"]
       32 JUMPIFNOT                        R3 ; [+5]
       33 GETTABLEKS                       R3 R0 K9 ["assetTypeEnum"]
       35 GETTABLEKS                       R2 R3 K10 ["Name"]
       37 JUMP                             ; [+13]
       38 JUMPIFNOT                        R1 ; [+12]
       39 FASTCALL1                        TYPE R1 ; [+3]
       40 MOVE                             R4 R1
       41 GETIMPORT                        R3 K12 [type]
       43 CALL                             R3 1 1
       44 JUMPIFNOTEQKS                    R3 K13 ["string"] ; [+6]
       46 LENGTH                           R3 R1
       47 LOADN                            R4 0
       48 JUMPIFNOTLT                      R4 R3 ; [+2]
       50 MOVE                             R2 R1
       51 GETUPVAL                         R3 3
       52 MOVE                             R5 R2
       53 GETTABLEKS                       R6 R0 K2 ["scriptTimes"]
       55 NAMECALL                         R3 R3 K14 ["ReportUGCValidationTelemetry"]
       57 CALL                             R3 3 0
       58 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["util"]
        9 GETTABLEKS                       R2 R2 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K8 [game]
       14 LOADK                            R4 K9 ["RunService"]
       15 NAMECALL                         R2 R2 K10 ["GetService"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R3 K8 [game]
       20 LOADK                            R5 K11 ["UGCValidationService"]
       21 NAMECALL                         R3 R3 K10 ["GetService"]
       23 CALL                             R3 2 1
       24 NAMECALL                         R5 R2 K12 ["IsStudio"]
       26 CALL                             R5 1 1
       27 JUMPIFNOT                        R5 ; [+7]
       28 GETIMPORT                        R4 K8 [game]
       30 LOADK                            R6 K13 ["StudioService"]
       31 NAMECALL                         R4 R4 K10 ["GetService"]
       33 CALL                             R4 2 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R4
       36 GETIMPORT                        R5 K8 [game]
       38 LOADK                            R7 K14 ["RbxAnalyticsService"]
       39 NAMECALL                         R5 R5 K10 ["GetService"]
       41 CALL                             R5 2 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K15 ["flags"]
       46 GETTABLEKS                       R7 R7 K16 ["getEngineFeatureEngineUGCValidationReportScriptTime"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K15 ["flags"]
       53 GETTABLEKS                       R8 R8 K17 ["getEngineFeatureEngineUGCValidationIECTelemetry"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K15 ["flags"]
       60 GETTABLEKS                       R9 R9 K18 ["getEngineFeatureEngineUGCValidateRigidNonSkinned"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R10 R0 K15 ["flags"]
       67 GETTABLEKS                       R10 R10 K19 ["getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R11 R0 K15 ["flags"]
       74 GETTABLEKS                       R11 R11 K20 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R12 R0 K15 ["flags"]
       81 GETTABLEKS                       R12 R12 K21 ["getFFlagUGCValidateHSRMeshIds"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R13 R0 K15 ["flags"]
       88 GETTABLEKS                       R13 R13 K22 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K4 [require]
       93 GETTABLEKS                       R14 R0 K15 ["flags"]
       95 GETTABLEKS                       R14 R14 K23 ["getFFlagUGCValidationMakeupSupport"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K4 [require]
      100 GETTABLEKS                       R15 R0 K15 ["flags"]
      102 GETTABLEKS                       R15 R15 K24 ["getFFlagUGCValidateCurveAnimRotationSpeed"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K4 [require]
      107 GETTABLEKS                       R16 R0 K15 ["flags"]
      109 GETTABLEKS                       R16 R16 K25 ["getFFlagUGCValidateTexturePack"]
      111 CALL                             R15 1 1
      112 DUPCLOSURE                       R16 K26 [PROTO_0]
      113 NEWTABLE                         R17 16 0
      115 NEWTABLE                         R18 256 0
      117 LOADK                            R19 K27 ["resetPhysicsData_FailedToLoadMesh"]
      118 SETTABLEKS                       R19 R18 K27 ["resetPhysicsData_FailedToLoadMesh"]
      120 LOADK                            R19 K28 ["validateAccurateBoundingBox"]
      121 SETTABLEKS                       R19 R18 K28 ["validateAccurateBoundingBox"]
      123 LOADK                            R19 K29 ["validateAssetBounds_AssetSizeTooBig"]
      124 SETTABLEKS                       R19 R18 K29 ["validateAssetBounds_AssetSizeTooBig"]
      126 LOADK                            R19 K30 ["validateAssetBounds_AssetSizeTooSmall"]
      127 SETTABLEKS                       R19 R18 K30 ["validateAssetBounds_AssetSizeTooSmall"]
      129 LOADK                            R19 K31 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
      130 SETTABLEKS                       R19 R18 K31 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
      132 LOADK                            R19 K32 ["validateScaleType_InvalidAvatarPartScaleType"]
      133 SETTABLEKS                       R19 R18 K32 ["validateScaleType_InvalidAvatarPartScaleType"]
      135 LOADK                            R19 K33 ["validateAssetCreator_DependencyNotOwnedByCreator"]
      136 SETTABLEKS                       R19 R18 K33 ["validateAssetCreator_DependencyNotOwnedByCreator"]
      138 LOADK                            R19 K34 ["validateAssetCreator_FailedToLoad"]
      139 SETTABLEKS                       R19 R18 K34 ["validateAssetCreator_FailedToLoad"]
      141 LOADK                            R19 K35 ["validateAssetCreator_TooManyDependencies"]
      142 SETTABLEKS                       R19 R18 K35 ["validateAssetCreator_TooManyDependencies"]
      144 LOADK                            R19 K36 ["validateAssetTransparency_AssetTransparencyThresholds"]
      145 SETTABLEKS                       R19 R18 K36 ["validateAssetTransparency_AssetTransparencyThresholds"]
      147 LOADK                            R19 K37 ["validateAttributes"]
      148 SETTABLEKS                       R19 R18 K37 ["validateAttributes"]
      150 LOADK                            R19 K38 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
      151 SETTABLEKS                       R19 R18 K38 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
      153 LOADK                            R19 K39 ["validateBodyPartCollisionFidelity"]
      154 SETTABLEKS                       R19 R18 K39 ["validateBodyPartCollisionFidelity"]
      156 LOADK                            R19 K40 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
      157 SETTABLEKS                       R19 R18 K40 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
      159 LOADK                            R19 K41 ["validateCageUVs_TestExecutedSuccessfully"]
      160 SETTABLEKS                       R19 R18 K41 ["validateCageUVs_TestExecutedSuccessfully"]
      162 LOADK                            R19 K42 ["validateCageUVs_TestPassed"]
      163 SETTABLEKS                       R19 R18 K42 ["validateCageUVs_TestPassed"]
      165 LOADK                            R19 K43 ["validateCageUVTriangleArea_FailedToLoadMesh"]
      166 SETTABLEKS                       R19 R18 K43 ["validateCageUVTriangleArea_FailedToLoadMesh"]
      168 LOADK                            R19 K44 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
      169 SETTABLEKS                       R19 R18 K44 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
      171 LOADK                            R19 K45 ["validateCageUVValues_FailedToLoadMesh"]
      172 SETTABLEKS                       R19 R18 K45 ["validateCageUVValues_FailedToLoadMesh"]
      174 LOADK                            R19 K46 ["validateCageUVValues_UnexpectedUVValue"]
      175 SETTABLEKS                       R19 R18 K46 ["validateCageUVValues_UnexpectedUVValue"]
      177 LOADK                            R19 K47 ["validateCanLoad"]
      178 SETTABLEKS                       R19 R18 K47 ["validateCanLoad"]
      180 LOADK                            R19 K48 ["validateDependencies_IsNotApproved"]
      181 SETTABLEKS                       R19 R18 K48 ["validateDependencies_IsNotApproved"]
      183 LOADK                            R19 K49 ["validateDependencies_IsRestrictedUserId"]
      184 SETTABLEKS                       R19 R18 K49 ["validateDependencies_IsRestrictedUserId"]
      186 LOADK                            R19 K50 ["validateDependencies_IsReviewing"]
      187 SETTABLEKS                       R19 R18 K50 ["validateDependencies_IsReviewing"]
      189 LOADK                            R19 K51 ["validateDependencies_ParseFailure"]
      190 SETTABLEKS                       R19 R18 K51 ["validateDependencies_ParseFailure"]
      192 LOADK                            R19 K52 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
      193 SETTABLEKS                       R19 R18 K52 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
      195 LOADK                            R19 K53 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
      196 SETTABLEKS                       R19 R18 K53 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
      198 LOADK                            R19 K54 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
      199 SETTABLEKS                       R19 R18 K54 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
      201 LOADK                            R19 K55 ["validateDescendantMeshMetrics_NoSkinningInfo"]
      202 SETTABLEKS                       R19 R18 K55 ["validateDescendantMeshMetrics_NoSkinningInfo"]
      204 LOADK                            R19 K56 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
      205 SETTABLEKS                       R19 R18 K56 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
      207 LOADK                            R19 K57 ["validateDescendantMeshMetrics_TooManyTriangles"]
      208 SETTABLEKS                       R19 R18 K57 ["validateDescendantMeshMetrics_TooManyTriangles"]
      210 LOADK                            R19 K58 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
      211 SETTABLEKS                       R19 R18 K58 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
      213 LOADK                            R19 K59 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
      214 SETTABLEKS                       R19 R18 K59 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
      216 LOADK                            R19 K60 ["validateFullBody_IncorrectAssetTypeSet"]
      217 SETTABLEKS                       R19 R18 K60 ["validateFullBody_IncorrectAssetTypeSet"]
      219 LOADK                            R19 K61 ["validateFullBody_InstancesMissing"]
      220 SETTABLEKS                       R19 R18 K61 ["validateFullBody_InstancesMissing"]
      222 LOADK                            R19 K62 ["validateFullBody_MeshIdsMissing"]
      223 SETTABLEKS                       R19 R18 K62 ["validateFullBody_MeshIdsMissing"]
      225 LOADK                            R19 K63 ["validateHSR_HSRDataNotReady"]
      226 SETTABLEKS                       R19 R18 K63 ["validateHSR_HSRDataNotReady"]
      228 LOADK                            R19 K64 ["validateHSR_NoWrapLayer"]
      229 SETTABLEKS                       R19 R18 K64 ["validateHSR_NoWrapLayer"]
      231 LOADK                            R19 K65 ["validateInstanceTree"]
      232 SETTABLEKS                       R19 R18 K65 ["validateInstanceTree"]
      234 LOADK                            R19 K66 ["validateInstanceTree_InvalidDescendants"]
      235 SETTABLEKS                       R19 R18 K66 ["validateInstanceTree_InvalidDescendants"]
      237 LOADK                            R19 K67 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
      238 SETTABLEKS                       R19 R18 K67 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
      240 LOADK                            R19 K68 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      241 SETTABLEKS                       R19 R18 K68 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      243 LOADK                            R19 K69 ["validateLayeredClothingAccessory_NoInnerCageId"]
      244 SETTABLEKS                       R19 R18 K69 ["validateLayeredClothingAccessory_NoInnerCageId"]
      246 LOADK                            R19 K70 ["validateLayeredClothingAccessory_NoMeshId"]
      247 SETTABLEKS                       R19 R18 K70 ["validateLayeredClothingAccessory_NoMeshId"]
      249 LOADK                            R19 K71 ["validateLayeredClothingAccessory_NoOuterCageId"]
      250 SETTABLEKS                       R19 R18 K71 ["validateLayeredClothingAccessory_NoOuterCageId"]
      252 LOADK                            R19 K72 ["validateLayeredClothingAccessory_NoWrapLayer"]
      253 SETTABLEKS                       R19 R18 K72 ["validateLayeredClothingAccessory_NoWrapLayer"]
      255 LOADK                            R19 K73 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      256 SETTABLEKS                       R19 R18 K73 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      258 LOADK                            R19 K74 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      259 SETTABLEKS                       R19 R18 K74 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      261 LOADK                            R19 K75 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
      262 SETTABLEKS                       R19 R18 K75 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
      264 LOADK                            R19 K76 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      265 SETTABLEKS                       R19 R18 K76 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      267 LOADK                            R19 K77 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      268 SETTABLEKS                       R19 R18 K77 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      270 LOADK                            R19 K78 ["validateLimbsAndTorso_FolderInfoMismatch"]
      271 SETTABLEKS                       R19 R18 K78 ["validateLimbsAndTorso_FolderInfoMismatch"]
      273 LOADK                            R19 K79 ["validateLimbsAndTorso_R6FolderHasChildren"]
      274 SETTABLEKS                       R19 R18 K79 ["validateLimbsAndTorso_R6FolderHasChildren"]
      276 LOADK                            R19 K80 ["validateLimbsAndTorso_TopLevelFolders"]
      277 SETTABLEKS                       R19 R18 K80 ["validateLimbsAndTorso_TopLevelFolders"]
      279 LOADK                            R19 K81 ["validateMaterials"]
      280 SETTABLEKS                       R19 R18 K81 ["validateMaterials"]
      282 LOADK                            R19 K82 ["validateMeshBounds_FailedToExecute"]
      283 SETTABLEKS                       R19 R18 K82 ["validateMeshBounds_FailedToExecute"]
      285 LOADK                            R19 K83 ["validateMeshBounds_FailedToLoadMesh"]
      286 SETTABLEKS                       R19 R18 K83 ["validateMeshBounds_FailedToLoadMesh"]
      288 LOADK                            R19 K84 ["validateMeshBounds_TooLarge"]
      289 SETTABLEKS                       R19 R18 K84 ["validateMeshBounds_TooLarge"]
      291 LOADK                            R19 K85 ["validateMeshComparison"]
      292 SETTABLEKS                       R19 R18 K85 ["validateMeshComparison"]
      294 LOADK                            R19 K86 ["validateMeshPartAccessory_DoubleSided"]
      295 SETTABLEKS                       R19 R18 K86 ["validateMeshPartAccessory_DoubleSided"]
      297 LOADK                            R19 K87 ["validateMeshPartAccessory_FailedToLoadMesh"]
      298 SETTABLEKS                       R19 R18 K87 ["validateMeshPartAccessory_FailedToLoadMesh"]
      300 LOADK                            R19 K88 ["validateMeshPartAccessory_NoMeshId"]
      301 SETTABLEKS                       R19 R18 K88 ["validateMeshPartAccessory_NoMeshId"]
      303 LOADK                            R19 K89 ["validateMeshPartBodyPart_ValidateWithSchema"]
      304 SETTABLEKS                       R19 R18 K89 ["validateMeshPartBodyPart_ValidateWithSchema"]
      306 LOADK                            R19 K90 ["validateMeshTriangleArea_FailedToLoadMesh"]
      307 SETTABLEKS                       R19 R18 K90 ["validateMeshTriangleArea_FailedToLoadMesh"]
      309 LOADK                            R19 K91 ["validateMeshTriangleArea_NoArea"]
      310 SETTABLEKS                       R19 R18 K91 ["validateMeshTriangleArea_NoArea"]
      312 LOADK                            R19 K92 ["validateMeshTriangles_FailedToExecute"]
      313 SETTABLEKS                       R19 R18 K92 ["validateMeshTriangles_FailedToExecute"]
      315 LOADK                            R19 K93 ["validateMeshTriangles_FailedToLoadMesh"]
      316 SETTABLEKS                       R19 R18 K93 ["validateMeshTriangles_FailedToLoadMesh"]
      318 LOADK                            R19 K94 ["validateMeshTriangles_TooManyTriangles"]
      319 SETTABLEKS                       R19 R18 K94 ["validateMeshTriangles_TooManyTriangles"]
      321 LOADK                            R19 K95 ["validateMeshVertexColors_FailedToLoadMesh"]
      322 SETTABLEKS                       R19 R18 K95 ["validateMeshVertexColors_FailedToLoadMesh"]
      324 LOADK                            R19 K96 ["validateMeshVertexColors_NonNeutralVertexColors"]
      325 SETTABLEKS                       R19 R18 K96 ["validateMeshVertexColors_NonNeutralVertexColors"]
      327 LOADK                            R19 K97 ["validateModeration_AssetsHaveNotPassedModeration"]
      328 SETTABLEKS                       R19 R18 K97 ["validateModeration_AssetsHaveNotPassedModeration"]
      330 LOADK                            R19 K98 ["validateModeration_CouldNotFetchModerationDetails"]
      331 SETTABLEKS                       R19 R18 K98 ["validateModeration_CouldNotFetchModerationDetails"]
      333 LOADK                            R19 K99 ["validateModeration_FailedToParse"]
      334 SETTABLEKS                       R19 R18 K99 ["validateModeration_FailedToParse"]
      336 LOADK                            R19 K100 ["validateModeration_ValidateUser"]
      337 SETTABLEKS                       R19 R18 K100 ["validateModeration_ValidateUser"]
      339 LOADK                            R19 K101 ["validatePackage_FailedToParse"]
      340 SETTABLEKS                       R19 R18 K101 ["validatePackage_FailedToParse"]
      342 LOADK                            R19 K102 ["validateProperties_PropertyDoesNotExist"]
      343 SETTABLEKS                       R19 R18 K102 ["validateProperties_PropertyDoesNotExist"]
      345 LOADK                            R19 K103 ["validateProperties_PropertyMismatch"]
      346 SETTABLEKS                       R19 R18 K103 ["validateProperties_PropertyMismatch"]
      348 LOADK                            R19 K104 ["validateSingleInstance_MultipleInstances"]
      349 SETTABLEKS                       R19 R18 K104 ["validateSingleInstance_MultipleInstances"]
      351 LOADK                            R19 K105 ["validateSingleInstance_ZeroInstances"]
      352 SETTABLEKS                       R19 R18 K105 ["validateSingleInstance_ZeroInstances"]
      354 LOADK                            R19 K106 ["validateSurfaceAppearances_InvalidAlphaMode"]
      355 SETTABLEKS                       R19 R18 K106 ["validateSurfaceAppearances_InvalidAlphaMode"]
      357 LOADK                            R19 K107 ["validateSurfaceAppearances_MeshPartHasTexture"]
      358 SETTABLEKS                       R19 R18 K107 ["validateSurfaceAppearances_MeshPartHasTexture"]
      360 LOADK                            R19 K108 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
      361 SETTABLEKS                       R19 R18 K108 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
      363 LOADK                            R19 K109 ["validateTags"]
      364 SETTABLEKS                       R19 R18 K109 ["validateTags"]
      366 LOADK                            R19 K110 ["validateTextureSize_FailedToExecute"]
      367 SETTABLEKS                       R19 R18 K110 ["validateTextureSize_FailedToExecute"]
      369 LOADK                            R19 K111 ["validateTextureSize_FailedToLoadTexture"]
      370 SETTABLEKS                       R19 R18 K111 ["validateTextureSize_FailedToLoadTexture"]
      372 LOADK                            R19 K112 ["validateTextureSize_InvalidTextureId"]
      373 SETTABLEKS                       R19 R18 K112 ["validateTextureSize_InvalidTextureId"]
      375 LOADK                            R19 K113 ["validateTextureSize_TextureTooBig"]
      376 SETTABLEKS                       R19 R18 K113 ["validateTextureSize_TextureTooBig"]
      378 LOADK                            R19 K114 ["validateTextureTransparency_InvalidTextureId"]
      379 SETTABLEKS                       R19 R18 K114 ["validateTextureTransparency_InvalidTextureId"]
      381 LOADK                            R19 K115 ["validateTextureTransparency_TransparentTexture"]
      382 SETTABLEKS                       R19 R18 K115 ["validateTextureTransparency_TransparentTexture"]
      384 LOADK                            R19 K116 ["validateThumbnailConfiguration_InvalidTarget"]
      385 SETTABLEKS                       R19 R18 K116 ["validateThumbnailConfiguration_InvalidTarget"]
      387 LOADK                            R19 K117 ["validateThumbnailConfiguration_OutsideView"]
      388 SETTABLEKS                       R19 R18 K117 ["validateThumbnailConfiguration_OutsideView"]
      390 LOADK                            R19 K118 ["validateVertexDensity_FailedToExecute"]
      391 SETTABLEKS                       R19 R18 K118 ["validateVertexDensity_FailedToExecute"]
      393 LOADK                            R19 K119 ["validateVertexDensity_MaxDensityExceeded"]
      394 SETTABLEKS                       R19 R18 K119 ["validateVertexDensity_MaxDensityExceeded"]
      396 LOADK                            R19 K120 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
      397 SETTABLEKS                       R19 R18 K120 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
      399 LOADK                            R19 K121 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
      400 SETTABLEKS                       R19 R18 K121 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
      402 LOADK                            R19 K122 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
      403 SETTABLEKS                       R19 R18 K122 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
      405 LOADK                            R19 K123 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
      406 SETTABLEKS                       R19 R18 K123 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
      408 LOADK                            R19 K124 ["validateBodyPart_CageOriginOutOfBounds"]
      409 SETTABLEKS                       R19 R18 K124 ["validateBodyPart_CageOriginOutOfBounds"]
      411 LOADK                            R19 K125 ["validateTotalSurfaceArea_FailedToExecute"]
      412 SETTABLEKS                       R19 R18 K125 ["validateTotalSurfaceArea_FailedToExecute"]
      414 LOADK                            R19 K126 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
      415 SETTABLEKS                       R19 R18 K126 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
      417 LOADK                            R19 K127 ["validateCoplanarIntersection_FailedToExecute"]
      418 SETTABLEKS                       R19 R18 K127 ["validateCoplanarIntersection_FailedToExecute"]
      420 LOADK                            R19 K128 ["validateCoplanarIntersection_CoplanarIntersection"]
      421 SETTABLEKS                       R19 R18 K128 ["validateCoplanarIntersection_CoplanarIntersection"]
      423 LOADK                            R19 K129 ["validateExcludedModifiedCageUVs_FailedToExecute"]
      424 SETTABLEKS                       R19 R18 K129 ["validateExcludedModifiedCageUVs_FailedToExecute"]
      426 LOADK                            R19 K130 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
      427 SETTABLEKS                       R19 R18 K130 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
      429 LOADK                            R19 K131 ["validateMainModifiedCageUVs_FailedToExecute"]
      430 SETTABLEKS                       R19 R18 K131 ["validateMainModifiedCageUVs_FailedToExecute"]
      432 LOADK                            R19 K132 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
      433 SETTABLEKS                       R19 R18 K132 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
      435 LOADK                            R19 K133 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
      436 SETTABLEKS                       R19 R18 K133 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
      438 LOADK                            R19 K134 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
      439 SETTABLEKS                       R19 R18 K134 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
      441 LOADK                            R19 K135 ["validateBodyPartCage_FailedToExecute"]
      442 SETTABLEKS                       R19 R18 K135 ["validateBodyPartCage_FailedToExecute"]
      444 LOADK                            R19 K136 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
      445 SETTABLEKS                       R19 R18 K136 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
      447 LOADK                            R19 K137 ["validateCurveAnimation_IncorrectNumericalData"]
      448 SETTABLEKS                       R19 R18 K137 ["validateCurveAnimation_IncorrectNumericalData"]
      450 LOADK                            R19 K138 ["validateCurveAnimation_PositionalMovement"]
      451 SETTABLEKS                       R19 R18 K138 ["validateCurveAnimation_PositionalMovement"]
      453 LOADK                            R19 K139 ["validateVerticesSimilarity_FailedToExecute"]
      454 SETTABLEKS                       R19 R18 K139 ["validateVerticesSimilarity_FailedToExecute"]
      456 LOADK                            R19 K140 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
      457 SETTABLEKS                       R19 R18 K140 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
      459 LOADK                            R19 K141 ["validateCagingRelevancy_FailedToExecute"]
      460 SETTABLEKS                       R19 R18 K141 ["validateCagingRelevancy_FailedToExecute"]
      462 LOADK                            R19 K142 ["validateCagingRelevancy_IrrelevantCaging"]
      463 SETTABLEKS                       R19 R18 K142 ["validateCagingRelevancy_IrrelevantCaging"]
      465 LOADK                            R19 K143 ["validateCageMeshDistance_FailedToExecute"]
      466 SETTABLEKS                       R19 R18 K143 ["validateCageMeshDistance_FailedToExecute"]
      468 LOADK                            R19 K144 ["validateCageMeshDistance_OuterCageToMeshDistance"]
      469 SETTABLEKS                       R19 R18 K144 ["validateCageMeshDistance_OuterCageToMeshDistance"]
      471 LOADK                            R19 K145 ["validateCageUVDuplicate_FailedToExecute"]
      472 SETTABLEKS                       R19 R18 K145 ["validateCageUVDuplicate_FailedToExecute"]
      474 LOADK                            R19 K146 ["validateCageUVDuplicate_UnexpectedUVValue"]
      475 SETTABLEKS                       R19 R18 K146 ["validateCageUVDuplicate_UnexpectedUVValue"]
      477 LOADK                            R19 K147 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
      478 SETTABLEKS                       R19 R18 K147 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
      480 LOADK                            R19 K148 ["validateLayeredClothingAccessory_HandleIsScaled"]
      481 SETTABLEKS                       R19 R18 K148 ["validateLayeredClothingAccessory_HandleIsScaled"]
      483 LOADK                            R19 K149 ["resetPhysicsData_LargeMass"]
      484 SETTABLEKS                       R19 R18 K149 ["resetPhysicsData_LargeMass"]
      486 LOADK                            R19 K150 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
      487 SETTABLEKS                       R19 R18 K150 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
      489 LOADK                            R19 K151 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
      490 SETTABLEKS                       R19 R18 K151 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
      492 LOADK                            R19 K152 ["validateBodyBlockingTests_ZeroMeshSize"]
      493 SETTABLEKS                       R19 R18 K152 ["validateBodyBlockingTests_ZeroMeshSize"]
      495 LOADK                            R19 K153 ["validateFullBody_ZeroMeshSize"]
      496 SETTABLEKS                       R19 R18 K153 ["validateFullBody_ZeroMeshSize"]
      498 LOADK                            R19 K154 ["validateMeshBounds_Shifted"]
      499 SETTABLEKS                       R19 R18 K154 ["validateMeshBounds_Shifted"]
      501 LOADK                            R19 K155 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
      502 SETTABLEKS                       R19 R18 K155 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
      504 LOADK                            R19 K156 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
      505 SETTABLEKS                       R19 R18 K156 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
      507 LOADK                            R19 K157 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
      508 SETTABLEKS                       R19 R18 K157 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
      510 LOADK                            R19 K158 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
      511 SETTABLEKS                       R19 R18 K158 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
      513 LOADK                            R19 K159 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
      514 SETTABLEKS                       R19 R18 K159 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
      516 LOADK                            R19 K160 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
      517 SETTABLEKS                       R19 R18 K160 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
      519 LOADK                            R19 K161 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
      520 SETTABLEKS                       R19 R18 K161 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
      522 LOADK                            R19 K162 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
      523 SETTABLEKS                       R19 R18 K162 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
      525 LOADK                            R19 K163 ["validateCurveAnimation_UnacceptableLength"]
      526 SETTABLEKS                       R19 R18 K163 ["validateCurveAnimation_UnacceptableLength"]
      528 LOADK                            R19 K164 ["validateCurveAnimation_UnacceptableSizeBounds"]
      529 SETTABLEKS                       R19 R18 K164 ["validateCurveAnimation_UnacceptableSizeBounds"]
      531 LOADK                            R19 K165 ["validateCurveAnimation_UnacceptableFrameDelta"]
      532 SETTABLEKS                       R19 R18 K165 ["validateCurveAnimation_UnacceptableFrameDelta"]
      534 SETTABLEKS                       R18 R17 K166 ["ErrorType"]
      536 MOVE                             R18 R15
      537 CALL                             R18 0 1
      538 JUMPIFNOT                        R18 ; [+15]
      539 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      541 LOADK                            R19 K167 ["validateTexturePack_InvalidTexturePackURL"]
      542 SETTABLEKS                       R19 R18 K167 ["validateTexturePack_InvalidTexturePackURL"]
      544 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      546 LOADK                            R19 K168 ["validateTexturePack_FailedToDownloadTexturePack"]
      547 SETTABLEKS                       R19 R18 K168 ["validateTexturePack_FailedToDownloadTexturePack"]
      549 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      551 LOADK                            R19 K169 ["validateTexturePack_TexturePackMismatch"]
      552 SETTABLEKS                       R19 R18 K169 ["validateTexturePack_TexturePackMismatch"]
      554 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      556 LOADK                            R19 K170 ["validateLegsSeparation_InvalidAttachmentPosition"]
      557 SETTABLEKS                       R19 R18 K170 ["validateLegsSeparation_InvalidAttachmentPosition"]
      559 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      561 LOADK                            R19 K171 ["validateLegsSeparation_LegsOverlap"]
      562 SETTABLEKS                       R19 R18 K171 ["validateLegsSeparation_LegsOverlap"]
      564 MOVE                             R18 R8
      565 CALL                             R18 0 1
      566 JUMPIFNOT                        R18 ; [+10]
      567 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      569 LOADK                            R19 K172 ["validateRigidMeshSkinning_FailedToDownload"]
      570 SETTABLEKS                       R19 R18 K172 ["validateRigidMeshSkinning_FailedToDownload"]
      572 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      574 LOADK                            R19 K173 ["validateRigidMeshSkinning_BonesFoundInMesh"]
      575 SETTABLEKS                       R19 R18 K173 ["validateRigidMeshSkinning_BonesFoundInMesh"]
      577 MOVE                             R18 R14
      578 CALL                             R18 0 1
      579 JUMPIFNOT                        R18 ; [+5]
      580 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      582 LOADK                            R19 K174 ["validateCurveAnimation_UnacceptableFrameRotationDelta"]
      583 SETTABLEKS                       R19 R18 K174 ["validateCurveAnimation_UnacceptableFrameRotationDelta"]
      585 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      587 LOADK                            R19 K175 ["validateCurveAnimation_IncorrectAnimationRigData"]
      588 SETTABLEKS                       R19 R18 K175 ["validateCurveAnimation_IncorrectAnimationRigData"]
      590 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      592 LOADK                            R19 K176 ["validateMeshSizeProperty_FailedToLoadMesh"]
      593 SETTABLEKS                       R19 R18 K176 ["validateMeshSizeProperty_FailedToLoadMesh"]
      595 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      597 LOADK                            R19 K177 ["validateMeshSizeProperty_Mismatch"]
      598 SETTABLEKS                       R19 R18 K177 ["validateMeshSizeProperty_Mismatch"]
      600 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      602 LOADK                            R19 K178 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
      603 SETTABLEKS                       R19 R18 K178 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
      605 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      607 LOADK                            R19 K179 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
      608 SETTABLEKS                       R19 R18 K179 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
      610 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      612 LOADK                            R19 K180 ["validateSkinningTransfer_FailedToExecute"]
      613 SETTABLEKS                       R19 R18 K180 ["validateSkinningTransfer_FailedToExecute"]
      615 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      617 LOADK                            R19 K181 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
      618 SETTABLEKS                       R19 R18 K181 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
      620 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      622 LOADK                            R19 K182 ["validateSkinningTransfer_SkinningTransferOverride"]
      623 SETTABLEKS                       R19 R18 K182 ["validateSkinningTransfer_SkinningTransferOverride"]
      625 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      627 LOADK                            R19 K183 ["validateSkinningTransfer_Weights"]
      628 SETTABLEKS                       R19 R18 K183 ["validateSkinningTransfer_Weights"]
      630 MOVE                             R18 R12
      631 CALL                             R18 0 1
      632 JUMPIFNOT                        R18 ; [+5]
      633 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      635 LOADK                            R19 K184 ["validateSkinningTransfer_RequiredAssetTypes"]
      636 SETTABLEKS                       R19 R18 K184 ["validateSkinningTransfer_RequiredAssetTypes"]
      638 MOVE                             R18 R10
      639 CALL                             R18 0 1
      640 JUMPIFNOT                        R18 ; [+5]
      641 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      643 LOADK                            R19 K185 ["validatePropertiesSensible_IncorrectPropertiesFound"]
      644 SETTABLEKS                       R19 R18 K185 ["validatePropertiesSensible_IncorrectPropertiesFound"]
      646 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      648 LOADK                            R19 K186 ["validateHSR_FileDataInvalid"]
      649 SETTABLEKS                       R19 R18 K186 ["validateHSR_FileDataInvalid"]
      651 MOVE                             R18 R11
      652 CALL                             R18 0 1
      653 JUMPIFNOT                        R18 ; [+5]
      654 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      656 LOADK                            R19 K187 ["validataHSR_HSRMeshIdsMismatch"]
      657 SETTABLEKS                       R19 R18 K187 ["validataHSR_HSRMeshIdsMismatch"]
      659 MOVE                             R18 R13
      660 CALL                             R18 0 1
      661 JUMPIFNOT                        R18 ; [+45]
      662 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      664 LOADK                            R19 K188 ["validateMakeupDecal_FailedToLoadTexture"]
      665 SETTABLEKS                       R19 R18 K188 ["validateMakeupDecal_FailedToLoadTexture"]
      667 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      669 LOADK                            R19 K189 ["validateMakeupDecal_NoColorMap"]
      670 SETTABLEKS                       R19 R18 K189 ["validateMakeupDecal_NoColorMap"]
      672 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      674 LOADK                            R19 K190 ["validateMakeupDecal_UVZoneError"]
      675 SETTABLEKS                       R19 R18 K190 ["validateMakeupDecal_UVZoneError"]
      677 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      679 LOADK                            R19 K191 ["validateWrapTextureTransfer_FailedToLoadCage"]
      680 SETTABLEKS                       R19 R18 K191 ["validateWrapTextureTransfer_FailedToLoadCage"]
      682 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      684 LOADK                            R19 K192 ["validateWrapTextureTransfer_NoCage"]
      685 SETTABLEKS                       R19 R18 K192 ["validateWrapTextureTransfer_NoCage"]
      687 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      689 LOADK                            R19 K193 ["validateWrapTextureTransfer_FailedToLoadUV"]
      690 SETTABLEKS                       R19 R18 K193 ["validateWrapTextureTransfer_FailedToLoadUV"]
      692 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      694 LOADK                            R19 K194 ["validateWrapTextureTransfer_InvalidUV"]
      695 SETTABLEKS                       R19 R18 K194 ["validateWrapTextureTransfer_InvalidUV"]
      697 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      699 LOADK                            R19 K195 ["validateWrapTextureTransfer_InvalidMinBound"]
      700 SETTABLEKS                       R19 R18 K195 ["validateWrapTextureTransfer_InvalidMinBound"]
      702 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      704 LOADK                            R19 K196 ["validateWrapTextureTransfer_InvalidMaxBound"]
      705 SETTABLEKS                       R19 R18 K196 ["validateWrapTextureTransfer_InvalidMaxBound"]
      707 MOVE                             R18 R9
      708 CALL                             R18 0 1
      709 JUMPIFNOT                        R18 ; [+10]
      710 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      712 LOADK                            R19 K197 ["validateFACSJointTransformsWithinBounds_Error"]
      713 SETTABLEKS                       R19 R18 K197 ["validateFACSJointTransformsWithinBounds_Error"]
      715 GETTABLEKS                       R18 R17 K166 ["ErrorType"]
      717 LOADK                            R19 K198 ["validateFACSJointTransformsWithinBounds_OOB"]
      718 SETTABLEKS                       R19 R18 K198 ["validateFACSJointTransformsWithinBounds_OOB"]
      720 GETTABLEKS                       R19 R17 K166 ["ErrorType"]
      722 DUPTABLE                         R20 K200 [{"__index"}]
      723 DUPCLOSURE                       R21 K201 [PROTO_1]
      724 SETTABLEKS                       R21 R20 K199 ["__index"]
      726 FASTCALL2                        SETMETATABLE R19 R20 ; [+3]
      728 GETIMPORT                        R18 K203 [setmetatable]
      730 CALL                             R18 2 0
      731 NEWTABLE                         R18 0 0
      733 SETTABLEKS                       R18 R17 K204 ["metadata"]
      735 DUPCLOSURE                       R18 K205 [PROTO_2]
      736 CAPTURE                          VAL R17
      737 SETTABLEKS                       R18 R17 K206 ["setMetadata"]
      739 DUPCLOSURE                       R18 K207 [PROTO_3]
      740 CAPTURE                          VAL R7
      741 CAPTURE                          VAL R2
      742 SETTABLEKS                       R18 R17 K208 ["shouldReportIECTelemetry"]
      744 DUPCLOSURE                       R18 K209 [PROTO_4]
      745 CAPTURE                          VAL R17
      746 CAPTURE                          VAL R3
      747 SETTABLEKS                       R18 R17 K210 ["reportCounter"]
      749 DUPCLOSURE                       R18 K211 [PROTO_5]
      750 CAPTURE                          VAL R2
      751 CAPTURE                          VAL R16
      752 CAPTURE                          VAL R17
      753 CAPTURE                          VAL R5
      754 CAPTURE                          VAL R4
      755 CAPTURE                          VAL R3
      756 SETTABLEKS                       R18 R17 K212 ["reportFailure"]
      758 DUPCLOSURE                       R18 K213 [PROTO_6]
      759 CAPTURE                          VAL R2
      760 CAPTURE                          VAL R16
      761 CAPTURE                          VAL R17
      762 CAPTURE                          VAL R5
      763 CAPTURE                          VAL R4
      764 SETTABLEKS                       R18 R17 K214 ["reportThumbnailing"]
      766 DUPCLOSURE                       R18 K215 [PROTO_7]
      767 CAPTURE                          VAL R6
      768 SETTABLEKS                       R18 R17 K216 ["recordScriptTime"]
      770 DUPCLOSURE                       R18 K217 [PROTO_8]
      771 CAPTURE                          VAL R6
      772 CAPTURE                          VAL R2
      773 CAPTURE                          VAL R17
      774 CAPTURE                          VAL R3
      775 SETTABLEKS                       R18 R17 K218 ["reportScriptTimes"]
      777 RETURN                           R17 1
