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
       95 GETTABLEKS                       R14 R14 K23 ["getFFlagUGCValidateCurveAnimRotationSpeed"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K4 [require]
      100 GETTABLEKS                       R15 R0 K15 ["flags"]
      102 GETTABLEKS                       R15 R15 K24 ["getFFlagUGCValidateTexturePack"]
      104 CALL                             R14 1 1
      105 DUPCLOSURE                       R15 K25 [PROTO_0]
      106 NEWTABLE                         R16 16 0
      108 NEWTABLE                         R17 256 0
      110 LOADK                            R18 K26 ["resetPhysicsData_FailedToLoadMesh"]
      111 SETTABLEKS                       R18 R17 K26 ["resetPhysicsData_FailedToLoadMesh"]
      113 LOADK                            R18 K27 ["validateAccurateBoundingBox"]
      114 SETTABLEKS                       R18 R17 K27 ["validateAccurateBoundingBox"]
      116 LOADK                            R18 K28 ["validateAssetBounds_AssetSizeTooBig"]
      117 SETTABLEKS                       R18 R17 K28 ["validateAssetBounds_AssetSizeTooBig"]
      119 LOADK                            R18 K29 ["validateAssetBounds_AssetSizeTooSmall"]
      120 SETTABLEKS                       R18 R17 K29 ["validateAssetBounds_AssetSizeTooSmall"]
      122 LOADK                            R18 K30 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
      123 SETTABLEKS                       R18 R17 K30 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
      125 LOADK                            R18 K31 ["validateScaleType_InvalidAvatarPartScaleType"]
      126 SETTABLEKS                       R18 R17 K31 ["validateScaleType_InvalidAvatarPartScaleType"]
      128 LOADK                            R18 K32 ["validateAssetCreator_DependencyNotOwnedByCreator"]
      129 SETTABLEKS                       R18 R17 K32 ["validateAssetCreator_DependencyNotOwnedByCreator"]
      131 LOADK                            R18 K33 ["validateAssetCreator_FailedToLoad"]
      132 SETTABLEKS                       R18 R17 K33 ["validateAssetCreator_FailedToLoad"]
      134 LOADK                            R18 K34 ["validateAssetCreator_TooManyDependencies"]
      135 SETTABLEKS                       R18 R17 K34 ["validateAssetCreator_TooManyDependencies"]
      137 LOADK                            R18 K35 ["validateAssetTransparency_AssetTransparencyThresholds"]
      138 SETTABLEKS                       R18 R17 K35 ["validateAssetTransparency_AssetTransparencyThresholds"]
      140 LOADK                            R18 K36 ["validateAttributes"]
      141 SETTABLEKS                       R18 R17 K36 ["validateAttributes"]
      143 LOADK                            R18 K37 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
      144 SETTABLEKS                       R18 R17 K37 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
      146 LOADK                            R18 K38 ["validateBodyPartCollisionFidelity"]
      147 SETTABLEKS                       R18 R17 K38 ["validateBodyPartCollisionFidelity"]
      149 LOADK                            R18 K39 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
      150 SETTABLEKS                       R18 R17 K39 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
      152 LOADK                            R18 K40 ["validateCageUVs_TestExecutedSuccessfully"]
      153 SETTABLEKS                       R18 R17 K40 ["validateCageUVs_TestExecutedSuccessfully"]
      155 LOADK                            R18 K41 ["validateCageUVs_TestPassed"]
      156 SETTABLEKS                       R18 R17 K41 ["validateCageUVs_TestPassed"]
      158 LOADK                            R18 K42 ["validateCageUVTriangleArea_FailedToLoadMesh"]
      159 SETTABLEKS                       R18 R17 K42 ["validateCageUVTriangleArea_FailedToLoadMesh"]
      161 LOADK                            R18 K43 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
      162 SETTABLEKS                       R18 R17 K43 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
      164 LOADK                            R18 K44 ["validateCageUVValues_FailedToLoadMesh"]
      165 SETTABLEKS                       R18 R17 K44 ["validateCageUVValues_FailedToLoadMesh"]
      167 LOADK                            R18 K45 ["validateCageUVValues_UnexpectedUVValue"]
      168 SETTABLEKS                       R18 R17 K45 ["validateCageUVValues_UnexpectedUVValue"]
      170 LOADK                            R18 K46 ["validateCanLoad"]
      171 SETTABLEKS                       R18 R17 K46 ["validateCanLoad"]
      173 LOADK                            R18 K47 ["validateDependencies_IsNotApproved"]
      174 SETTABLEKS                       R18 R17 K47 ["validateDependencies_IsNotApproved"]
      176 LOADK                            R18 K48 ["validateDependencies_IsRestrictedUserId"]
      177 SETTABLEKS                       R18 R17 K48 ["validateDependencies_IsRestrictedUserId"]
      179 LOADK                            R18 K49 ["validateDependencies_IsReviewing"]
      180 SETTABLEKS                       R18 R17 K49 ["validateDependencies_IsReviewing"]
      182 LOADK                            R18 K50 ["validateDependencies_ParseFailure"]
      183 SETTABLEKS                       R18 R17 K50 ["validateDependencies_ParseFailure"]
      185 LOADK                            R18 K51 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
      186 SETTABLEKS                       R18 R17 K51 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
      188 LOADK                            R18 K52 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
      189 SETTABLEKS                       R18 R17 K52 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
      191 LOADK                            R18 K53 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
      192 SETTABLEKS                       R18 R17 K53 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
      194 LOADK                            R18 K54 ["validateDescendantMeshMetrics_NoSkinningInfo"]
      195 SETTABLEKS                       R18 R17 K54 ["validateDescendantMeshMetrics_NoSkinningInfo"]
      197 LOADK                            R18 K55 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
      198 SETTABLEKS                       R18 R17 K55 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
      200 LOADK                            R18 K56 ["validateDescendantMeshMetrics_TooManyTriangles"]
      201 SETTABLEKS                       R18 R17 K56 ["validateDescendantMeshMetrics_TooManyTriangles"]
      203 LOADK                            R18 K57 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
      204 SETTABLEKS                       R18 R17 K57 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
      206 LOADK                            R18 K58 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
      207 SETTABLEKS                       R18 R17 K58 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
      209 LOADK                            R18 K59 ["validateFullBody_IncorrectAssetTypeSet"]
      210 SETTABLEKS                       R18 R17 K59 ["validateFullBody_IncorrectAssetTypeSet"]
      212 LOADK                            R18 K60 ["validateFullBody_InstancesMissing"]
      213 SETTABLEKS                       R18 R17 K60 ["validateFullBody_InstancesMissing"]
      215 LOADK                            R18 K61 ["validateFullBody_MeshIdsMissing"]
      216 SETTABLEKS                       R18 R17 K61 ["validateFullBody_MeshIdsMissing"]
      218 LOADK                            R18 K62 ["validateHSR_HSRDataNotReady"]
      219 SETTABLEKS                       R18 R17 K62 ["validateHSR_HSRDataNotReady"]
      221 LOADK                            R18 K63 ["validateHSR_NoWrapLayer"]
      222 SETTABLEKS                       R18 R17 K63 ["validateHSR_NoWrapLayer"]
      224 LOADK                            R18 K64 ["validateInstanceTree"]
      225 SETTABLEKS                       R18 R17 K64 ["validateInstanceTree"]
      227 LOADK                            R18 K65 ["validateInstanceTree_InvalidDescendants"]
      228 SETTABLEKS                       R18 R17 K65 ["validateInstanceTree_InvalidDescendants"]
      230 LOADK                            R18 K66 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
      231 SETTABLEKS                       R18 R17 K66 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
      233 LOADK                            R18 K67 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      234 SETTABLEKS                       R18 R17 K67 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      236 LOADK                            R18 K68 ["validateLayeredClothingAccessory_NoInnerCageId"]
      237 SETTABLEKS                       R18 R17 K68 ["validateLayeredClothingAccessory_NoInnerCageId"]
      239 LOADK                            R18 K69 ["validateLayeredClothingAccessory_NoMeshId"]
      240 SETTABLEKS                       R18 R17 K69 ["validateLayeredClothingAccessory_NoMeshId"]
      242 LOADK                            R18 K70 ["validateLayeredClothingAccessory_NoOuterCageId"]
      243 SETTABLEKS                       R18 R17 K70 ["validateLayeredClothingAccessory_NoOuterCageId"]
      245 LOADK                            R18 K71 ["validateLayeredClothingAccessory_NoWrapLayer"]
      246 SETTABLEKS                       R18 R17 K71 ["validateLayeredClothingAccessory_NoWrapLayer"]
      248 LOADK                            R18 K72 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      249 SETTABLEKS                       R18 R17 K72 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      251 LOADK                            R18 K73 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      252 SETTABLEKS                       R18 R17 K73 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      254 LOADK                            R18 K74 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
      255 SETTABLEKS                       R18 R17 K74 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
      257 LOADK                            R18 K75 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      258 SETTABLEKS                       R18 R17 K75 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      260 LOADK                            R18 K76 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      261 SETTABLEKS                       R18 R17 K76 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      263 LOADK                            R18 K77 ["validateLimbsAndTorso_FolderInfoMismatch"]
      264 SETTABLEKS                       R18 R17 K77 ["validateLimbsAndTorso_FolderInfoMismatch"]
      266 LOADK                            R18 K78 ["validateLimbsAndTorso_R6FolderHasChildren"]
      267 SETTABLEKS                       R18 R17 K78 ["validateLimbsAndTorso_R6FolderHasChildren"]
      269 LOADK                            R18 K79 ["validateLimbsAndTorso_TopLevelFolders"]
      270 SETTABLEKS                       R18 R17 K79 ["validateLimbsAndTorso_TopLevelFolders"]
      272 LOADK                            R18 K80 ["validateMaterials"]
      273 SETTABLEKS                       R18 R17 K80 ["validateMaterials"]
      275 LOADK                            R18 K81 ["validateMeshBounds_FailedToExecute"]
      276 SETTABLEKS                       R18 R17 K81 ["validateMeshBounds_FailedToExecute"]
      278 LOADK                            R18 K82 ["validateMeshBounds_FailedToLoadMesh"]
      279 SETTABLEKS                       R18 R17 K82 ["validateMeshBounds_FailedToLoadMesh"]
      281 LOADK                            R18 K83 ["validateMeshBounds_TooLarge"]
      282 SETTABLEKS                       R18 R17 K83 ["validateMeshBounds_TooLarge"]
      284 LOADK                            R18 K84 ["validateMeshComparison"]
      285 SETTABLEKS                       R18 R17 K84 ["validateMeshComparison"]
      287 LOADK                            R18 K85 ["validateMeshPartAccessory_DoubleSided"]
      288 SETTABLEKS                       R18 R17 K85 ["validateMeshPartAccessory_DoubleSided"]
      290 LOADK                            R18 K86 ["validateMeshPartAccessory_FailedToLoadMesh"]
      291 SETTABLEKS                       R18 R17 K86 ["validateMeshPartAccessory_FailedToLoadMesh"]
      293 LOADK                            R18 K87 ["validateMeshPartAccessory_NoMeshId"]
      294 SETTABLEKS                       R18 R17 K87 ["validateMeshPartAccessory_NoMeshId"]
      296 LOADK                            R18 K88 ["validateMeshPartBodyPart_ValidateWithSchema"]
      297 SETTABLEKS                       R18 R17 K88 ["validateMeshPartBodyPart_ValidateWithSchema"]
      299 LOADK                            R18 K89 ["validateMeshTriangleArea_FailedToLoadMesh"]
      300 SETTABLEKS                       R18 R17 K89 ["validateMeshTriangleArea_FailedToLoadMesh"]
      302 LOADK                            R18 K90 ["validateMeshTriangleArea_NoArea"]
      303 SETTABLEKS                       R18 R17 K90 ["validateMeshTriangleArea_NoArea"]
      305 LOADK                            R18 K91 ["validateMeshTriangles_FailedToExecute"]
      306 SETTABLEKS                       R18 R17 K91 ["validateMeshTriangles_FailedToExecute"]
      308 LOADK                            R18 K92 ["validateMeshTriangles_FailedToLoadMesh"]
      309 SETTABLEKS                       R18 R17 K92 ["validateMeshTriangles_FailedToLoadMesh"]
      311 LOADK                            R18 K93 ["validateMeshTriangles_TooManyTriangles"]
      312 SETTABLEKS                       R18 R17 K93 ["validateMeshTriangles_TooManyTriangles"]
      314 LOADK                            R18 K94 ["validateMeshVertexColors_FailedToLoadMesh"]
      315 SETTABLEKS                       R18 R17 K94 ["validateMeshVertexColors_FailedToLoadMesh"]
      317 LOADK                            R18 K95 ["validateMeshVertexColors_NonNeutralVertexColors"]
      318 SETTABLEKS                       R18 R17 K95 ["validateMeshVertexColors_NonNeutralVertexColors"]
      320 LOADK                            R18 K96 ["validateModeration_AssetsHaveNotPassedModeration"]
      321 SETTABLEKS                       R18 R17 K96 ["validateModeration_AssetsHaveNotPassedModeration"]
      323 LOADK                            R18 K97 ["validateModeration_CouldNotFetchModerationDetails"]
      324 SETTABLEKS                       R18 R17 K97 ["validateModeration_CouldNotFetchModerationDetails"]
      326 LOADK                            R18 K98 ["validateModeration_FailedToParse"]
      327 SETTABLEKS                       R18 R17 K98 ["validateModeration_FailedToParse"]
      329 LOADK                            R18 K99 ["validateModeration_ValidateUser"]
      330 SETTABLEKS                       R18 R17 K99 ["validateModeration_ValidateUser"]
      332 LOADK                            R18 K100 ["validatePackage_FailedToParse"]
      333 SETTABLEKS                       R18 R17 K100 ["validatePackage_FailedToParse"]
      335 LOADK                            R18 K101 ["validateProperties_PropertyDoesNotExist"]
      336 SETTABLEKS                       R18 R17 K101 ["validateProperties_PropertyDoesNotExist"]
      338 LOADK                            R18 K102 ["validateProperties_PropertyMismatch"]
      339 SETTABLEKS                       R18 R17 K102 ["validateProperties_PropertyMismatch"]
      341 LOADK                            R18 K103 ["validateSingleInstance_MultipleInstances"]
      342 SETTABLEKS                       R18 R17 K103 ["validateSingleInstance_MultipleInstances"]
      344 LOADK                            R18 K104 ["validateSingleInstance_ZeroInstances"]
      345 SETTABLEKS                       R18 R17 K104 ["validateSingleInstance_ZeroInstances"]
      347 LOADK                            R18 K105 ["validateSurfaceAppearances_InvalidAlphaMode"]
      348 SETTABLEKS                       R18 R17 K105 ["validateSurfaceAppearances_InvalidAlphaMode"]
      350 LOADK                            R18 K106 ["validateSurfaceAppearances_MeshPartHasTexture"]
      351 SETTABLEKS                       R18 R17 K106 ["validateSurfaceAppearances_MeshPartHasTexture"]
      353 LOADK                            R18 K107 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
      354 SETTABLEKS                       R18 R17 K107 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
      356 LOADK                            R18 K108 ["validateTags"]
      357 SETTABLEKS                       R18 R17 K108 ["validateTags"]
      359 LOADK                            R18 K109 ["validateTextureSize_FailedToExecute"]
      360 SETTABLEKS                       R18 R17 K109 ["validateTextureSize_FailedToExecute"]
      362 LOADK                            R18 K110 ["validateTextureSize_FailedToLoadTexture"]
      363 SETTABLEKS                       R18 R17 K110 ["validateTextureSize_FailedToLoadTexture"]
      365 LOADK                            R18 K111 ["validateTextureSize_InvalidTextureId"]
      366 SETTABLEKS                       R18 R17 K111 ["validateTextureSize_InvalidTextureId"]
      368 LOADK                            R18 K112 ["validateTextureSize_TextureTooBig"]
      369 SETTABLEKS                       R18 R17 K112 ["validateTextureSize_TextureTooBig"]
      371 LOADK                            R18 K113 ["validateTextureTransparency_InvalidTextureId"]
      372 SETTABLEKS                       R18 R17 K113 ["validateTextureTransparency_InvalidTextureId"]
      374 LOADK                            R18 K114 ["validateTextureTransparency_TransparentTexture"]
      375 SETTABLEKS                       R18 R17 K114 ["validateTextureTransparency_TransparentTexture"]
      377 LOADK                            R18 K115 ["validateThumbnailConfiguration_InvalidTarget"]
      378 SETTABLEKS                       R18 R17 K115 ["validateThumbnailConfiguration_InvalidTarget"]
      380 LOADK                            R18 K116 ["validateThumbnailConfiguration_OutsideView"]
      381 SETTABLEKS                       R18 R17 K116 ["validateThumbnailConfiguration_OutsideView"]
      383 LOADK                            R18 K117 ["validateVertexDensity_FailedToExecute"]
      384 SETTABLEKS                       R18 R17 K117 ["validateVertexDensity_FailedToExecute"]
      386 LOADK                            R18 K118 ["validateVertexDensity_MaxDensityExceeded"]
      387 SETTABLEKS                       R18 R17 K118 ["validateVertexDensity_MaxDensityExceeded"]
      389 LOADK                            R18 K119 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
      390 SETTABLEKS                       R18 R17 K119 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
      392 LOADK                            R18 K120 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
      393 SETTABLEKS                       R18 R17 K120 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
      395 LOADK                            R18 K121 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
      396 SETTABLEKS                       R18 R17 K121 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
      398 LOADK                            R18 K122 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
      399 SETTABLEKS                       R18 R17 K122 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
      401 LOADK                            R18 K123 ["validateBodyPart_CageOriginOutOfBounds"]
      402 SETTABLEKS                       R18 R17 K123 ["validateBodyPart_CageOriginOutOfBounds"]
      404 LOADK                            R18 K124 ["validateTotalSurfaceArea_FailedToExecute"]
      405 SETTABLEKS                       R18 R17 K124 ["validateTotalSurfaceArea_FailedToExecute"]
      407 LOADK                            R18 K125 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
      408 SETTABLEKS                       R18 R17 K125 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
      410 LOADK                            R18 K126 ["validateCoplanarIntersection_FailedToExecute"]
      411 SETTABLEKS                       R18 R17 K126 ["validateCoplanarIntersection_FailedToExecute"]
      413 LOADK                            R18 K127 ["validateCoplanarIntersection_CoplanarIntersection"]
      414 SETTABLEKS                       R18 R17 K127 ["validateCoplanarIntersection_CoplanarIntersection"]
      416 LOADK                            R18 K128 ["validateExcludedModifiedCageUVs_FailedToExecute"]
      417 SETTABLEKS                       R18 R17 K128 ["validateExcludedModifiedCageUVs_FailedToExecute"]
      419 LOADK                            R18 K129 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
      420 SETTABLEKS                       R18 R17 K129 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
      422 LOADK                            R18 K130 ["validateMainModifiedCageUVs_FailedToExecute"]
      423 SETTABLEKS                       R18 R17 K130 ["validateMainModifiedCageUVs_FailedToExecute"]
      425 LOADK                            R18 K131 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
      426 SETTABLEKS                       R18 R17 K131 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
      428 LOADK                            R18 K132 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
      429 SETTABLEKS                       R18 R17 K132 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
      431 LOADK                            R18 K133 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
      432 SETTABLEKS                       R18 R17 K133 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
      434 LOADK                            R18 K134 ["validateBodyPartCage_FailedToExecute"]
      435 SETTABLEKS                       R18 R17 K134 ["validateBodyPartCage_FailedToExecute"]
      437 LOADK                            R18 K135 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
      438 SETTABLEKS                       R18 R17 K135 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
      440 LOADK                            R18 K136 ["validateCurveAnimation_IncorrectNumericalData"]
      441 SETTABLEKS                       R18 R17 K136 ["validateCurveAnimation_IncorrectNumericalData"]
      443 LOADK                            R18 K137 ["validateCurveAnimation_PositionalMovement"]
      444 SETTABLEKS                       R18 R17 K137 ["validateCurveAnimation_PositionalMovement"]
      446 LOADK                            R18 K138 ["validateVerticesSimilarity_FailedToExecute"]
      447 SETTABLEKS                       R18 R17 K138 ["validateVerticesSimilarity_FailedToExecute"]
      449 LOADK                            R18 K139 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
      450 SETTABLEKS                       R18 R17 K139 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
      452 LOADK                            R18 K140 ["validateCagingRelevancy_FailedToExecute"]
      453 SETTABLEKS                       R18 R17 K140 ["validateCagingRelevancy_FailedToExecute"]
      455 LOADK                            R18 K141 ["validateCagingRelevancy_IrrelevantCaging"]
      456 SETTABLEKS                       R18 R17 K141 ["validateCagingRelevancy_IrrelevantCaging"]
      458 LOADK                            R18 K142 ["validateCageMeshDistance_FailedToExecute"]
      459 SETTABLEKS                       R18 R17 K142 ["validateCageMeshDistance_FailedToExecute"]
      461 LOADK                            R18 K143 ["validateCageMeshDistance_OuterCageToMeshDistance"]
      462 SETTABLEKS                       R18 R17 K143 ["validateCageMeshDistance_OuterCageToMeshDistance"]
      464 LOADK                            R18 K144 ["validateCageUVDuplicate_FailedToExecute"]
      465 SETTABLEKS                       R18 R17 K144 ["validateCageUVDuplicate_FailedToExecute"]
      467 LOADK                            R18 K145 ["validateCageUVDuplicate_UnexpectedUVValue"]
      468 SETTABLEKS                       R18 R17 K145 ["validateCageUVDuplicate_UnexpectedUVValue"]
      470 LOADK                            R18 K146 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
      471 SETTABLEKS                       R18 R17 K146 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
      473 LOADK                            R18 K147 ["validateLayeredClothingAccessory_HandleIsScaled"]
      474 SETTABLEKS                       R18 R17 K147 ["validateLayeredClothingAccessory_HandleIsScaled"]
      476 LOADK                            R18 K148 ["resetPhysicsData_LargeMass"]
      477 SETTABLEKS                       R18 R17 K148 ["resetPhysicsData_LargeMass"]
      479 LOADK                            R18 K149 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
      480 SETTABLEKS                       R18 R17 K149 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
      482 LOADK                            R18 K150 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
      483 SETTABLEKS                       R18 R17 K150 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
      485 LOADK                            R18 K151 ["validateBodyBlockingTests_ZeroMeshSize"]
      486 SETTABLEKS                       R18 R17 K151 ["validateBodyBlockingTests_ZeroMeshSize"]
      488 LOADK                            R18 K152 ["validateFullBody_ZeroMeshSize"]
      489 SETTABLEKS                       R18 R17 K152 ["validateFullBody_ZeroMeshSize"]
      491 LOADK                            R18 K153 ["validateMeshBounds_Shifted"]
      492 SETTABLEKS                       R18 R17 K153 ["validateMeshBounds_Shifted"]
      494 LOADK                            R18 K154 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
      495 SETTABLEKS                       R18 R17 K154 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
      497 LOADK                            R18 K155 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
      498 SETTABLEKS                       R18 R17 K155 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
      500 LOADK                            R18 K156 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
      501 SETTABLEKS                       R18 R17 K156 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
      503 LOADK                            R18 K157 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
      504 SETTABLEKS                       R18 R17 K157 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
      506 LOADK                            R18 K158 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
      507 SETTABLEKS                       R18 R17 K158 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
      509 LOADK                            R18 K159 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
      510 SETTABLEKS                       R18 R17 K159 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
      512 LOADK                            R18 K160 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
      513 SETTABLEKS                       R18 R17 K160 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
      515 LOADK                            R18 K161 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
      516 SETTABLEKS                       R18 R17 K161 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
      518 LOADK                            R18 K162 ["validateCurveAnimation_UnacceptableLength"]
      519 SETTABLEKS                       R18 R17 K162 ["validateCurveAnimation_UnacceptableLength"]
      521 LOADK                            R18 K163 ["validateCurveAnimation_UnacceptableSizeBounds"]
      522 SETTABLEKS                       R18 R17 K163 ["validateCurveAnimation_UnacceptableSizeBounds"]
      524 LOADK                            R18 K164 ["validateCurveAnimation_UnacceptableFrameDelta"]
      525 SETTABLEKS                       R18 R17 K164 ["validateCurveAnimation_UnacceptableFrameDelta"]
      527 SETTABLEKS                       R17 R16 K165 ["ErrorType"]
      529 MOVE                             R17 R14
      530 CALL                             R17 0 1
      531 JUMPIFNOT                        R17 ; [+15]
      532 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      534 LOADK                            R18 K166 ["validateTexturePack_InvalidTexturePackURL"]
      535 SETTABLEKS                       R18 R17 K166 ["validateTexturePack_InvalidTexturePackURL"]
      537 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      539 LOADK                            R18 K167 ["validateTexturePack_FailedToDownloadTexturePack"]
      540 SETTABLEKS                       R18 R17 K167 ["validateTexturePack_FailedToDownloadTexturePack"]
      542 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      544 LOADK                            R18 K168 ["validateTexturePack_TexturePackMismatch"]
      545 SETTABLEKS                       R18 R17 K168 ["validateTexturePack_TexturePackMismatch"]
      547 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      549 LOADK                            R18 K169 ["validateLegsSeparation_InvalidAttachmentPosition"]
      550 SETTABLEKS                       R18 R17 K169 ["validateLegsSeparation_InvalidAttachmentPosition"]
      552 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      554 LOADK                            R18 K170 ["validateLegsSeparation_LegsOverlap"]
      555 SETTABLEKS                       R18 R17 K170 ["validateLegsSeparation_LegsOverlap"]
      557 MOVE                             R17 R8
      558 CALL                             R17 0 1
      559 JUMPIFNOT                        R17 ; [+10]
      560 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      562 LOADK                            R18 K171 ["validateRigidMeshSkinning_FailedToDownload"]
      563 SETTABLEKS                       R18 R17 K171 ["validateRigidMeshSkinning_FailedToDownload"]
      565 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      567 LOADK                            R18 K172 ["validateRigidMeshSkinning_BonesFoundInMesh"]
      568 SETTABLEKS                       R18 R17 K172 ["validateRigidMeshSkinning_BonesFoundInMesh"]
      570 MOVE                             R17 R13
      571 CALL                             R17 0 1
      572 JUMPIFNOT                        R17 ; [+5]
      573 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      575 LOADK                            R18 K173 ["validateCurveAnimation_UnacceptableFrameRotationDelta"]
      576 SETTABLEKS                       R18 R17 K173 ["validateCurveAnimation_UnacceptableFrameRotationDelta"]
      578 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      580 LOADK                            R18 K174 ["validateCurveAnimation_IncorrectAnimationRigData"]
      581 SETTABLEKS                       R18 R17 K174 ["validateCurveAnimation_IncorrectAnimationRigData"]
      583 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      585 LOADK                            R18 K175 ["validateMeshSizeProperty_FailedToLoadMesh"]
      586 SETTABLEKS                       R18 R17 K175 ["validateMeshSizeProperty_FailedToLoadMesh"]
      588 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      590 LOADK                            R18 K176 ["validateMeshSizeProperty_Mismatch"]
      591 SETTABLEKS                       R18 R17 K176 ["validateMeshSizeProperty_Mismatch"]
      593 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      595 LOADK                            R18 K177 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
      596 SETTABLEKS                       R18 R17 K177 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
      598 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      600 LOADK                            R18 K178 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
      601 SETTABLEKS                       R18 R17 K178 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
      603 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      605 LOADK                            R18 K179 ["validateSkinningTransfer_FailedToExecute"]
      606 SETTABLEKS                       R18 R17 K179 ["validateSkinningTransfer_FailedToExecute"]
      608 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      610 LOADK                            R18 K180 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
      611 SETTABLEKS                       R18 R17 K180 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
      613 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      615 LOADK                            R18 K181 ["validateSkinningTransfer_SkinningTransferOverride"]
      616 SETTABLEKS                       R18 R17 K181 ["validateSkinningTransfer_SkinningTransferOverride"]
      618 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      620 LOADK                            R18 K182 ["validateSkinningTransfer_Weights"]
      621 SETTABLEKS                       R18 R17 K182 ["validateSkinningTransfer_Weights"]
      623 MOVE                             R17 R12
      624 CALL                             R17 0 1
      625 JUMPIFNOT                        R17 ; [+5]
      626 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      628 LOADK                            R18 K183 ["validateSkinningTransfer_RequiredAssetTypes"]
      629 SETTABLEKS                       R18 R17 K183 ["validateSkinningTransfer_RequiredAssetTypes"]
      631 MOVE                             R17 R10
      632 CALL                             R17 0 1
      633 JUMPIFNOT                        R17 ; [+5]
      634 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      636 LOADK                            R18 K184 ["validatePropertiesSensible_IncorrectPropertiesFound"]
      637 SETTABLEKS                       R18 R17 K184 ["validatePropertiesSensible_IncorrectPropertiesFound"]
      639 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      641 LOADK                            R18 K185 ["validateHSR_FileDataInvalid"]
      642 SETTABLEKS                       R18 R17 K185 ["validateHSR_FileDataInvalid"]
      644 MOVE                             R17 R11
      645 CALL                             R17 0 1
      646 JUMPIFNOT                        R17 ; [+5]
      647 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      649 LOADK                            R18 K186 ["validataHSR_HSRMeshIdsMismatch"]
      650 SETTABLEKS                       R18 R17 K186 ["validataHSR_HSRMeshIdsMismatch"]
      652 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      654 LOADK                            R18 K187 ["validateMakeupDecal_FailedToLoadTexture"]
      655 SETTABLEKS                       R18 R17 K187 ["validateMakeupDecal_FailedToLoadTexture"]
      657 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      659 LOADK                            R18 K188 ["validateMakeupDecal_NoColorMap"]
      660 SETTABLEKS                       R18 R17 K188 ["validateMakeupDecal_NoColorMap"]
      662 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      664 LOADK                            R18 K189 ["validateMakeupDecal_UVZoneError"]
      665 SETTABLEKS                       R18 R17 K189 ["validateMakeupDecal_UVZoneError"]
      667 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      669 LOADK                            R18 K190 ["validateWrapTextureTransfer_FailedToLoadCage"]
      670 SETTABLEKS                       R18 R17 K190 ["validateWrapTextureTransfer_FailedToLoadCage"]
      672 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      674 LOADK                            R18 K191 ["validateWrapTextureTransfer_NoCage"]
      675 SETTABLEKS                       R18 R17 K191 ["validateWrapTextureTransfer_NoCage"]
      677 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      679 LOADK                            R18 K192 ["validateWrapTextureTransfer_FailedToLoadUV"]
      680 SETTABLEKS                       R18 R17 K192 ["validateWrapTextureTransfer_FailedToLoadUV"]
      682 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      684 LOADK                            R18 K193 ["validateWrapTextureTransfer_InvalidUV"]
      685 SETTABLEKS                       R18 R17 K193 ["validateWrapTextureTransfer_InvalidUV"]
      687 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      689 LOADK                            R18 K194 ["validateWrapTextureTransfer_InvalidMinBound"]
      690 SETTABLEKS                       R18 R17 K194 ["validateWrapTextureTransfer_InvalidMinBound"]
      692 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      694 LOADK                            R18 K195 ["validateWrapTextureTransfer_InvalidMaxBound"]
      695 SETTABLEKS                       R18 R17 K195 ["validateWrapTextureTransfer_InvalidMaxBound"]
      697 MOVE                             R17 R9
      698 CALL                             R17 0 1
      699 JUMPIFNOT                        R17 ; [+10]
      700 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      702 LOADK                            R18 K196 ["validateFACSJointTransformsWithinBounds_Error"]
      703 SETTABLEKS                       R18 R17 K196 ["validateFACSJointTransformsWithinBounds_Error"]
      705 GETTABLEKS                       R17 R16 K165 ["ErrorType"]
      707 LOADK                            R18 K197 ["validateFACSJointTransformsWithinBounds_OOB"]
      708 SETTABLEKS                       R18 R17 K197 ["validateFACSJointTransformsWithinBounds_OOB"]
      710 GETTABLEKS                       R18 R16 K165 ["ErrorType"]
      712 DUPTABLE                         R19 K199 [{"__index"}]
      713 DUPCLOSURE                       R20 K200 [PROTO_1]
      714 SETTABLEKS                       R20 R19 K198 ["__index"]
      716 FASTCALL2                        SETMETATABLE R18 R19 ; [+3]
      718 GETIMPORT                        R17 K202 [setmetatable]
      720 CALL                             R17 2 0
      721 NEWTABLE                         R17 0 0
      723 SETTABLEKS                       R17 R16 K203 ["metadata"]
      725 DUPCLOSURE                       R17 K204 [PROTO_2]
      726 CAPTURE                          VAL R16
      727 SETTABLEKS                       R17 R16 K205 ["setMetadata"]
      729 DUPCLOSURE                       R17 K206 [PROTO_3]
      730 CAPTURE                          VAL R7
      731 CAPTURE                          VAL R2
      732 SETTABLEKS                       R17 R16 K207 ["shouldReportIECTelemetry"]
      734 DUPCLOSURE                       R17 K208 [PROTO_4]
      735 CAPTURE                          VAL R16
      736 CAPTURE                          VAL R3
      737 SETTABLEKS                       R17 R16 K209 ["reportCounter"]
      739 DUPCLOSURE                       R17 K210 [PROTO_5]
      740 CAPTURE                          VAL R2
      741 CAPTURE                          VAL R15
      742 CAPTURE                          VAL R16
      743 CAPTURE                          VAL R5
      744 CAPTURE                          VAL R4
      745 CAPTURE                          VAL R3
      746 SETTABLEKS                       R17 R16 K211 ["reportFailure"]
      748 DUPCLOSURE                       R17 K212 [PROTO_6]
      749 CAPTURE                          VAL R2
      750 CAPTURE                          VAL R15
      751 CAPTURE                          VAL R16
      752 CAPTURE                          VAL R5
      753 CAPTURE                          VAL R4
      754 SETTABLEKS                       R17 R16 K213 ["reportThumbnailing"]
      756 DUPCLOSURE                       R17 K214 [PROTO_7]
      757 CAPTURE                          VAL R6
      758 SETTABLEKS                       R17 R16 K215 ["recordScriptTime"]
      760 DUPCLOSURE                       R17 K216 [PROTO_8]
      761 CAPTURE                          VAL R6
      762 CAPTURE                          VAL R2
      763 CAPTURE                          VAL R16
      764 CAPTURE                          VAL R3
      765 SETTABLEKS                       R17 R16 K217 ["reportScriptTimes"]
      767 RETURN                           R16 1
