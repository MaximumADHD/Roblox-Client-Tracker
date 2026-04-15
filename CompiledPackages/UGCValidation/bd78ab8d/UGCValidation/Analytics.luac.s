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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["shouldReportIECTelemetry"]
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
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K3 ["metadata"]
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
       31 GETIMPORT                        R9 K13 [game]
       33 GETTABLEKS                       R8 R9 K14 ["PlaceId"]
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
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R5 R6 K19 ["shouldReportIECTelemetry"]
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
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K3 ["metadata"]
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
       31 GETIMPORT                        R8 K13 [game]
       33 GETTABLEKS                       R7 R8 K14 ["PlaceId"]
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
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K3 ["metadata"]
       18 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       20 LOADK                            R3 K4 ["Metadata is never nil"]
       21 GETIMPORT                        R1 K6 [assert]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R2 R3 K3 ["metadata"]
       27 GETTABLEKS                       R1 R2 K7 ["entrypoint"]
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
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R3 R0 K5 ["util"]
        9 GETTABLEKS                       R2 R3 K6 ["Types"]
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
       44 GETTABLEKS                       R8 R0 K15 ["flags"]
       46 GETTABLEKS                       R7 R8 K16 ["getEngineFeatureEngineUGCValidationReportScriptTime"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R9 R0 K15 ["flags"]
       53 GETTABLEKS                       R8 R9 K17 ["getEngineFeatureEngineUGCValidationIECTelemetry"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R10 R0 K15 ["flags"]
       60 GETTABLEKS                       R9 R10 K18 ["getEngineFeatureEngineUGCValidateRigidNonSkinned"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R11 R0 K15 ["flags"]
       67 GETTABLEKS                       R10 R11 K19 ["getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R12 R0 K15 ["flags"]
       74 GETTABLEKS                       R11 R12 K20 ["getEngineUGCValidateRelativeSkinningTransfer"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R13 R0 K15 ["flags"]
       81 GETTABLEKS                       R12 R13 K21 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R14 R0 K15 ["flags"]
       88 GETTABLEKS                       R13 R14 K22 ["getFFlagUGCValidateHSRMeshIds"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K4 [require]
       93 GETTABLEKS                       R15 R0 K15 ["flags"]
       95 GETTABLEKS                       R14 R15 K23 ["getFFlagUGCValidationEyebrowEyelashSupport"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K4 [require]
      100 GETTABLEKS                       R16 R0 K15 ["flags"]
      102 GETTABLEKS                       R15 R16 K24 ["getFFlagUGCValidationMakeupSupport"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K4 [require]
      107 GETTABLEKS                       R17 R0 K15 ["flags"]
      109 GETTABLEKS                       R16 R17 K25 ["getFFlagUGCValidateCurveAnimRotationSpeed"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K4 [require]
      114 GETTABLEKS                       R18 R0 K15 ["flags"]
      116 GETTABLEKS                       R17 R18 K26 ["getFFlagUGCValidateTexturePack"]
      118 CALL                             R16 1 1
      119 DUPCLOSURE                       R17 K27 [PROTO_0]
      120 NEWTABLE                         R18 16 0
      122 NEWTABLE                         R19 256 0
      124 LOADK                            R20 K28 ["resetPhysicsData_FailedToLoadMesh"]
      125 SETTABLEKS                       R20 R19 K28 ["resetPhysicsData_FailedToLoadMesh"]
      127 LOADK                            R20 K29 ["validateAccurateBoundingBox"]
      128 SETTABLEKS                       R20 R19 K29 ["validateAccurateBoundingBox"]
      130 LOADK                            R20 K30 ["validateAssetBounds_AssetSizeTooBig"]
      131 SETTABLEKS                       R20 R19 K30 ["validateAssetBounds_AssetSizeTooBig"]
      133 LOADK                            R20 K31 ["validateAssetBounds_AssetSizeTooSmall"]
      134 SETTABLEKS                       R20 R19 K31 ["validateAssetBounds_AssetSizeTooSmall"]
      136 LOADK                            R20 K32 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
      137 SETTABLEKS                       R20 R19 K32 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
      139 LOADK                            R20 K33 ["validateScaleType_InvalidAvatarPartScaleType"]
      140 SETTABLEKS                       R20 R19 K33 ["validateScaleType_InvalidAvatarPartScaleType"]
      142 LOADK                            R20 K34 ["validateAssetCreator_DependencyNotOwnedByCreator"]
      143 SETTABLEKS                       R20 R19 K34 ["validateAssetCreator_DependencyNotOwnedByCreator"]
      145 LOADK                            R20 K35 ["validateAssetCreator_FailedToLoad"]
      146 SETTABLEKS                       R20 R19 K35 ["validateAssetCreator_FailedToLoad"]
      148 LOADK                            R20 K36 ["validateAssetCreator_TooManyDependencies"]
      149 SETTABLEKS                       R20 R19 K36 ["validateAssetCreator_TooManyDependencies"]
      151 LOADK                            R20 K37 ["validateAssetTransparency_AssetTransparencyThresholds"]
      152 SETTABLEKS                       R20 R19 K37 ["validateAssetTransparency_AssetTransparencyThresholds"]
      154 LOADK                            R20 K38 ["validateAttributes"]
      155 SETTABLEKS                       R20 R19 K38 ["validateAttributes"]
      157 LOADK                            R20 K39 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
      158 SETTABLEKS                       R20 R19 K39 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
      160 LOADK                            R20 K40 ["validateBodyPartCollisionFidelity"]
      161 SETTABLEKS                       R20 R19 K40 ["validateBodyPartCollisionFidelity"]
      163 LOADK                            R20 K41 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
      164 SETTABLEKS                       R20 R19 K41 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
      166 LOADK                            R20 K42 ["validateCageUVs_TestExecutedSuccessfully"]
      167 SETTABLEKS                       R20 R19 K42 ["validateCageUVs_TestExecutedSuccessfully"]
      169 LOADK                            R20 K43 ["validateCageUVs_TestPassed"]
      170 SETTABLEKS                       R20 R19 K43 ["validateCageUVs_TestPassed"]
      172 LOADK                            R20 K44 ["validateCageUVTriangleArea_FailedToLoadMesh"]
      173 SETTABLEKS                       R20 R19 K44 ["validateCageUVTriangleArea_FailedToLoadMesh"]
      175 LOADK                            R20 K45 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
      176 SETTABLEKS                       R20 R19 K45 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
      178 LOADK                            R20 K46 ["validateCageUVValues_FailedToLoadMesh"]
      179 SETTABLEKS                       R20 R19 K46 ["validateCageUVValues_FailedToLoadMesh"]
      181 LOADK                            R20 K47 ["validateCageUVValues_UnexpectedUVValue"]
      182 SETTABLEKS                       R20 R19 K47 ["validateCageUVValues_UnexpectedUVValue"]
      184 LOADK                            R20 K48 ["validateCanLoad"]
      185 SETTABLEKS                       R20 R19 K48 ["validateCanLoad"]
      187 LOADK                            R20 K49 ["validateDependencies_IsNotApproved"]
      188 SETTABLEKS                       R20 R19 K49 ["validateDependencies_IsNotApproved"]
      190 LOADK                            R20 K50 ["validateDependencies_IsRestrictedUserId"]
      191 SETTABLEKS                       R20 R19 K50 ["validateDependencies_IsRestrictedUserId"]
      193 LOADK                            R20 K51 ["validateDependencies_IsReviewing"]
      194 SETTABLEKS                       R20 R19 K51 ["validateDependencies_IsReviewing"]
      196 LOADK                            R20 K52 ["validateDependencies_ParseFailure"]
      197 SETTABLEKS                       R20 R19 K52 ["validateDependencies_ParseFailure"]
      199 LOADK                            R20 K53 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
      200 SETTABLEKS                       R20 R19 K53 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
      202 LOADK                            R20 K54 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
      203 SETTABLEKS                       R20 R19 K54 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
      205 LOADK                            R20 K55 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
      206 SETTABLEKS                       R20 R19 K55 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
      208 LOADK                            R20 K56 ["validateDescendantMeshMetrics_NoSkinningInfo"]
      209 SETTABLEKS                       R20 R19 K56 ["validateDescendantMeshMetrics_NoSkinningInfo"]
      211 LOADK                            R20 K57 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
      212 SETTABLEKS                       R20 R19 K57 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
      214 LOADK                            R20 K58 ["validateDescendantMeshMetrics_TooManyTriangles"]
      215 SETTABLEKS                       R20 R19 K58 ["validateDescendantMeshMetrics_TooManyTriangles"]
      217 LOADK                            R20 K59 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
      218 SETTABLEKS                       R20 R19 K59 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
      220 LOADK                            R20 K60 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
      221 SETTABLEKS                       R20 R19 K60 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
      223 LOADK                            R20 K61 ["validateFullBody_IncorrectAssetTypeSet"]
      224 SETTABLEKS                       R20 R19 K61 ["validateFullBody_IncorrectAssetTypeSet"]
      226 LOADK                            R20 K62 ["validateFullBody_InstancesMissing"]
      227 SETTABLEKS                       R20 R19 K62 ["validateFullBody_InstancesMissing"]
      229 LOADK                            R20 K63 ["validateFullBody_MeshIdsMissing"]
      230 SETTABLEKS                       R20 R19 K63 ["validateFullBody_MeshIdsMissing"]
      232 LOADK                            R20 K64 ["validateHSR_HSRDataNotReady"]
      233 SETTABLEKS                       R20 R19 K64 ["validateHSR_HSRDataNotReady"]
      235 LOADK                            R20 K65 ["validateHSR_NoWrapLayer"]
      236 SETTABLEKS                       R20 R19 K65 ["validateHSR_NoWrapLayer"]
      238 LOADK                            R20 K66 ["validateInstanceTree"]
      239 SETTABLEKS                       R20 R19 K66 ["validateInstanceTree"]
      241 LOADK                            R20 K67 ["validateInstanceTree_InvalidDescendants"]
      242 SETTABLEKS                       R20 R19 K67 ["validateInstanceTree_InvalidDescendants"]
      244 LOADK                            R20 K68 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
      245 SETTABLEKS                       R20 R19 K68 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
      247 LOADK                            R20 K69 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      248 SETTABLEKS                       R20 R19 K69 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      250 LOADK                            R20 K70 ["validateLayeredClothingAccessory_NoInnerCageId"]
      251 SETTABLEKS                       R20 R19 K70 ["validateLayeredClothingAccessory_NoInnerCageId"]
      253 LOADK                            R20 K71 ["validateLayeredClothingAccessory_NoMeshId"]
      254 SETTABLEKS                       R20 R19 K71 ["validateLayeredClothingAccessory_NoMeshId"]
      256 LOADK                            R20 K72 ["validateLayeredClothingAccessory_NoOuterCageId"]
      257 SETTABLEKS                       R20 R19 K72 ["validateLayeredClothingAccessory_NoOuterCageId"]
      259 LOADK                            R20 K73 ["validateLayeredClothingAccessory_NoWrapLayer"]
      260 SETTABLEKS                       R20 R19 K73 ["validateLayeredClothingAccessory_NoWrapLayer"]
      262 LOADK                            R20 K74 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      263 SETTABLEKS                       R20 R19 K74 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      265 LOADK                            R20 K75 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      266 SETTABLEKS                       R20 R19 K75 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      268 LOADK                            R20 K76 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
      269 SETTABLEKS                       R20 R19 K76 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
      271 LOADK                            R20 K77 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      272 SETTABLEKS                       R20 R19 K77 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      274 LOADK                            R20 K78 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      275 SETTABLEKS                       R20 R19 K78 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      277 LOADK                            R20 K79 ["validateLimbsAndTorso_FolderInfoMismatch"]
      278 SETTABLEKS                       R20 R19 K79 ["validateLimbsAndTorso_FolderInfoMismatch"]
      280 LOADK                            R20 K80 ["validateLimbsAndTorso_R6FolderHasChildren"]
      281 SETTABLEKS                       R20 R19 K80 ["validateLimbsAndTorso_R6FolderHasChildren"]
      283 LOADK                            R20 K81 ["validateLimbsAndTorso_TopLevelFolders"]
      284 SETTABLEKS                       R20 R19 K81 ["validateLimbsAndTorso_TopLevelFolders"]
      286 LOADK                            R20 K82 ["validateMaterials"]
      287 SETTABLEKS                       R20 R19 K82 ["validateMaterials"]
      289 LOADK                            R20 K83 ["validateMeshBounds_FailedToExecute"]
      290 SETTABLEKS                       R20 R19 K83 ["validateMeshBounds_FailedToExecute"]
      292 LOADK                            R20 K84 ["validateMeshBounds_FailedToLoadMesh"]
      293 SETTABLEKS                       R20 R19 K84 ["validateMeshBounds_FailedToLoadMesh"]
      295 LOADK                            R20 K85 ["validateMeshBounds_TooLarge"]
      296 SETTABLEKS                       R20 R19 K85 ["validateMeshBounds_TooLarge"]
      298 LOADK                            R20 K86 ["validateMeshComparison"]
      299 SETTABLEKS                       R20 R19 K86 ["validateMeshComparison"]
      301 LOADK                            R20 K87 ["validateMeshPartAccessory_DoubleSided"]
      302 SETTABLEKS                       R20 R19 K87 ["validateMeshPartAccessory_DoubleSided"]
      304 LOADK                            R20 K88 ["validateMeshPartAccessory_FailedToLoadMesh"]
      305 SETTABLEKS                       R20 R19 K88 ["validateMeshPartAccessory_FailedToLoadMesh"]
      307 LOADK                            R20 K89 ["validateMeshPartAccessory_NoMeshId"]
      308 SETTABLEKS                       R20 R19 K89 ["validateMeshPartAccessory_NoMeshId"]
      310 LOADK                            R20 K90 ["validateMeshPartBodyPart_ValidateWithSchema"]
      311 SETTABLEKS                       R20 R19 K90 ["validateMeshPartBodyPart_ValidateWithSchema"]
      313 LOADK                            R20 K91 ["validateMeshTriangleArea_FailedToLoadMesh"]
      314 SETTABLEKS                       R20 R19 K91 ["validateMeshTriangleArea_FailedToLoadMesh"]
      316 LOADK                            R20 K92 ["validateMeshTriangleArea_NoArea"]
      317 SETTABLEKS                       R20 R19 K92 ["validateMeshTriangleArea_NoArea"]
      319 LOADK                            R20 K93 ["validateMeshTriangles_FailedToExecute"]
      320 SETTABLEKS                       R20 R19 K93 ["validateMeshTriangles_FailedToExecute"]
      322 LOADK                            R20 K94 ["validateMeshTriangles_FailedToLoadMesh"]
      323 SETTABLEKS                       R20 R19 K94 ["validateMeshTriangles_FailedToLoadMesh"]
      325 LOADK                            R20 K95 ["validateMeshTriangles_TooManyTriangles"]
      326 SETTABLEKS                       R20 R19 K95 ["validateMeshTriangles_TooManyTriangles"]
      328 LOADK                            R20 K96 ["validateMeshVertexColors_FailedToLoadMesh"]
      329 SETTABLEKS                       R20 R19 K96 ["validateMeshVertexColors_FailedToLoadMesh"]
      331 LOADK                            R20 K97 ["validateMeshVertexColors_NonNeutralVertexColors"]
      332 SETTABLEKS                       R20 R19 K97 ["validateMeshVertexColors_NonNeutralVertexColors"]
      334 LOADK                            R20 K98 ["validateModeration_AssetsHaveNotPassedModeration"]
      335 SETTABLEKS                       R20 R19 K98 ["validateModeration_AssetsHaveNotPassedModeration"]
      337 LOADK                            R20 K99 ["validateModeration_CouldNotFetchModerationDetails"]
      338 SETTABLEKS                       R20 R19 K99 ["validateModeration_CouldNotFetchModerationDetails"]
      340 LOADK                            R20 K100 ["validateModeration_FailedToParse"]
      341 SETTABLEKS                       R20 R19 K100 ["validateModeration_FailedToParse"]
      343 LOADK                            R20 K101 ["validateModeration_ValidateUser"]
      344 SETTABLEKS                       R20 R19 K101 ["validateModeration_ValidateUser"]
      346 LOADK                            R20 K102 ["validatePackage_FailedToParse"]
      347 SETTABLEKS                       R20 R19 K102 ["validatePackage_FailedToParse"]
      349 LOADK                            R20 K103 ["validateProperties_PropertyDoesNotExist"]
      350 SETTABLEKS                       R20 R19 K103 ["validateProperties_PropertyDoesNotExist"]
      352 LOADK                            R20 K104 ["validateProperties_PropertyMismatch"]
      353 SETTABLEKS                       R20 R19 K104 ["validateProperties_PropertyMismatch"]
      355 LOADK                            R20 K105 ["validateSingleInstance_MultipleInstances"]
      356 SETTABLEKS                       R20 R19 K105 ["validateSingleInstance_MultipleInstances"]
      358 LOADK                            R20 K106 ["validateSingleInstance_ZeroInstances"]
      359 SETTABLEKS                       R20 R19 K106 ["validateSingleInstance_ZeroInstances"]
      361 LOADK                            R20 K107 ["validateSurfaceAppearances_InvalidAlphaMode"]
      362 SETTABLEKS                       R20 R19 K107 ["validateSurfaceAppearances_InvalidAlphaMode"]
      364 LOADK                            R20 K108 ["validateSurfaceAppearances_MeshPartHasTexture"]
      365 SETTABLEKS                       R20 R19 K108 ["validateSurfaceAppearances_MeshPartHasTexture"]
      367 LOADK                            R20 K109 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
      368 SETTABLEKS                       R20 R19 K109 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
      370 LOADK                            R20 K110 ["validateTags"]
      371 SETTABLEKS                       R20 R19 K110 ["validateTags"]
      373 LOADK                            R20 K111 ["validateTextureSize_FailedToExecute"]
      374 SETTABLEKS                       R20 R19 K111 ["validateTextureSize_FailedToExecute"]
      376 LOADK                            R20 K112 ["validateTextureSize_FailedToLoadTexture"]
      377 SETTABLEKS                       R20 R19 K112 ["validateTextureSize_FailedToLoadTexture"]
      379 LOADK                            R20 K113 ["validateTextureSize_InvalidTextureId"]
      380 SETTABLEKS                       R20 R19 K113 ["validateTextureSize_InvalidTextureId"]
      382 LOADK                            R20 K114 ["validateTextureSize_TextureTooBig"]
      383 SETTABLEKS                       R20 R19 K114 ["validateTextureSize_TextureTooBig"]
      385 LOADK                            R20 K115 ["validateTextureTransparency_InvalidTextureId"]
      386 SETTABLEKS                       R20 R19 K115 ["validateTextureTransparency_InvalidTextureId"]
      388 LOADK                            R20 K116 ["validateTextureTransparency_TransparentTexture"]
      389 SETTABLEKS                       R20 R19 K116 ["validateTextureTransparency_TransparentTexture"]
      391 LOADK                            R20 K117 ["validateThumbnailConfiguration_InvalidTarget"]
      392 SETTABLEKS                       R20 R19 K117 ["validateThumbnailConfiguration_InvalidTarget"]
      394 LOADK                            R20 K118 ["validateThumbnailConfiguration_OutsideView"]
      395 SETTABLEKS                       R20 R19 K118 ["validateThumbnailConfiguration_OutsideView"]
      397 LOADK                            R20 K119 ["validateVertexDensity_FailedToExecute"]
      398 SETTABLEKS                       R20 R19 K119 ["validateVertexDensity_FailedToExecute"]
      400 LOADK                            R20 K120 ["validateVertexDensity_MaxDensityExceeded"]
      401 SETTABLEKS                       R20 R19 K120 ["validateVertexDensity_MaxDensityExceeded"]
      403 LOADK                            R20 K121 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
      404 SETTABLEKS                       R20 R19 K121 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
      406 LOADK                            R20 K122 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
      407 SETTABLEKS                       R20 R19 K122 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
      409 LOADK                            R20 K123 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
      410 SETTABLEKS                       R20 R19 K123 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
      412 LOADK                            R20 K124 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
      413 SETTABLEKS                       R20 R19 K124 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
      415 LOADK                            R20 K125 ["validateBodyPart_CageOriginOutOfBounds"]
      416 SETTABLEKS                       R20 R19 K125 ["validateBodyPart_CageOriginOutOfBounds"]
      418 LOADK                            R20 K126 ["validateTotalSurfaceArea_FailedToExecute"]
      419 SETTABLEKS                       R20 R19 K126 ["validateTotalSurfaceArea_FailedToExecute"]
      421 LOADK                            R20 K127 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
      422 SETTABLEKS                       R20 R19 K127 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
      424 LOADK                            R20 K128 ["validateCoplanarIntersection_FailedToExecute"]
      425 SETTABLEKS                       R20 R19 K128 ["validateCoplanarIntersection_FailedToExecute"]
      427 LOADK                            R20 K129 ["validateCoplanarIntersection_CoplanarIntersection"]
      428 SETTABLEKS                       R20 R19 K129 ["validateCoplanarIntersection_CoplanarIntersection"]
      430 LOADK                            R20 K130 ["validateExcludedModifiedCageUVs_FailedToExecute"]
      431 SETTABLEKS                       R20 R19 K130 ["validateExcludedModifiedCageUVs_FailedToExecute"]
      433 LOADK                            R20 K131 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
      434 SETTABLEKS                       R20 R19 K131 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
      436 LOADK                            R20 K132 ["validateMainModifiedCageUVs_FailedToExecute"]
      437 SETTABLEKS                       R20 R19 K132 ["validateMainModifiedCageUVs_FailedToExecute"]
      439 LOADK                            R20 K133 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
      440 SETTABLEKS                       R20 R19 K133 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
      442 LOADK                            R20 K134 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
      443 SETTABLEKS                       R20 R19 K134 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
      445 LOADK                            R20 K135 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
      446 SETTABLEKS                       R20 R19 K135 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
      448 LOADK                            R20 K136 ["validateBodyPartCage_FailedToExecute"]
      449 SETTABLEKS                       R20 R19 K136 ["validateBodyPartCage_FailedToExecute"]
      451 LOADK                            R20 K137 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
      452 SETTABLEKS                       R20 R19 K137 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
      454 LOADK                            R20 K138 ["validateCurveAnimation_IncorrectNumericalData"]
      455 SETTABLEKS                       R20 R19 K138 ["validateCurveAnimation_IncorrectNumericalData"]
      457 LOADK                            R20 K139 ["validateCurveAnimation_PositionalMovement"]
      458 SETTABLEKS                       R20 R19 K139 ["validateCurveAnimation_PositionalMovement"]
      460 LOADK                            R20 K140 ["validateVerticesSimilarity_FailedToExecute"]
      461 SETTABLEKS                       R20 R19 K140 ["validateVerticesSimilarity_FailedToExecute"]
      463 LOADK                            R20 K141 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
      464 SETTABLEKS                       R20 R19 K141 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
      466 LOADK                            R20 K142 ["validateCagingRelevancy_FailedToExecute"]
      467 SETTABLEKS                       R20 R19 K142 ["validateCagingRelevancy_FailedToExecute"]
      469 LOADK                            R20 K143 ["validateCagingRelevancy_IrrelevantCaging"]
      470 SETTABLEKS                       R20 R19 K143 ["validateCagingRelevancy_IrrelevantCaging"]
      472 LOADK                            R20 K144 ["validateCageMeshDistance_FailedToExecute"]
      473 SETTABLEKS                       R20 R19 K144 ["validateCageMeshDistance_FailedToExecute"]
      475 LOADK                            R20 K145 ["validateCageMeshDistance_OuterCageToMeshDistance"]
      476 SETTABLEKS                       R20 R19 K145 ["validateCageMeshDistance_OuterCageToMeshDistance"]
      478 LOADK                            R20 K146 ["validateCageUVDuplicate_FailedToExecute"]
      479 SETTABLEKS                       R20 R19 K146 ["validateCageUVDuplicate_FailedToExecute"]
      481 LOADK                            R20 K147 ["validateCageUVDuplicate_UnexpectedUVValue"]
      482 SETTABLEKS                       R20 R19 K147 ["validateCageUVDuplicate_UnexpectedUVValue"]
      484 LOADK                            R20 K148 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
      485 SETTABLEKS                       R20 R19 K148 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
      487 LOADK                            R20 K149 ["validateLayeredClothingAccessory_HandleIsScaled"]
      488 SETTABLEKS                       R20 R19 K149 ["validateLayeredClothingAccessory_HandleIsScaled"]
      490 LOADK                            R20 K150 ["resetPhysicsData_LargeMass"]
      491 SETTABLEKS                       R20 R19 K150 ["resetPhysicsData_LargeMass"]
      493 LOADK                            R20 K151 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
      494 SETTABLEKS                       R20 R19 K151 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
      496 LOADK                            R20 K152 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
      497 SETTABLEKS                       R20 R19 K152 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
      499 LOADK                            R20 K153 ["validateBodyBlockingTests_ZeroMeshSize"]
      500 SETTABLEKS                       R20 R19 K153 ["validateBodyBlockingTests_ZeroMeshSize"]
      502 LOADK                            R20 K154 ["validateFullBody_ZeroMeshSize"]
      503 SETTABLEKS                       R20 R19 K154 ["validateFullBody_ZeroMeshSize"]
      505 LOADK                            R20 K155 ["validateMeshBounds_Shifted"]
      506 SETTABLEKS                       R20 R19 K155 ["validateMeshBounds_Shifted"]
      508 LOADK                            R20 K156 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
      509 SETTABLEKS                       R20 R19 K156 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
      511 LOADK                            R20 K157 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
      512 SETTABLEKS                       R20 R19 K157 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
      514 LOADK                            R20 K158 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
      515 SETTABLEKS                       R20 R19 K158 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
      517 LOADK                            R20 K159 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
      518 SETTABLEKS                       R20 R19 K159 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
      520 LOADK                            R20 K160 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
      521 SETTABLEKS                       R20 R19 K160 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
      523 LOADK                            R20 K161 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
      524 SETTABLEKS                       R20 R19 K161 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
      526 LOADK                            R20 K162 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
      527 SETTABLEKS                       R20 R19 K162 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
      529 LOADK                            R20 K163 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
      530 SETTABLEKS                       R20 R19 K163 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
      532 LOADK                            R20 K164 ["validateCurveAnimation_UnacceptableLength"]
      533 SETTABLEKS                       R20 R19 K164 ["validateCurveAnimation_UnacceptableLength"]
      535 LOADK                            R20 K165 ["validateCurveAnimation_UnacceptableSizeBounds"]
      536 SETTABLEKS                       R20 R19 K165 ["validateCurveAnimation_UnacceptableSizeBounds"]
      538 LOADK                            R20 K166 ["validateCurveAnimation_UnacceptableFrameDelta"]
      539 SETTABLEKS                       R20 R19 K166 ["validateCurveAnimation_UnacceptableFrameDelta"]
      541 SETTABLEKS                       R19 R18 K167 ["ErrorType"]
      543 MOVE                             R19 R16
      544 CALL                             R19 0 1
      545 JUMPIFNOT                        R19 ; [+15]
      546 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      548 LOADK                            R20 K168 ["validateTexturePack_InvalidTexturePackURL"]
      549 SETTABLEKS                       R20 R19 K168 ["validateTexturePack_InvalidTexturePackURL"]
      551 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      553 LOADK                            R20 K169 ["validateTexturePack_FailedToDownloadTexturePack"]
      554 SETTABLEKS                       R20 R19 K169 ["validateTexturePack_FailedToDownloadTexturePack"]
      556 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      558 LOADK                            R20 K170 ["validateTexturePack_TexturePackMismatch"]
      559 SETTABLEKS                       R20 R19 K170 ["validateTexturePack_TexturePackMismatch"]
      561 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      563 LOADK                            R20 K171 ["validateLegsSeparation_InvalidAttachmentPosition"]
      564 SETTABLEKS                       R20 R19 K171 ["validateLegsSeparation_InvalidAttachmentPosition"]
      566 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      568 LOADK                            R20 K172 ["validateLegsSeparation_LegsOverlap"]
      569 SETTABLEKS                       R20 R19 K172 ["validateLegsSeparation_LegsOverlap"]
      571 MOVE                             R19 R8
      572 CALL                             R19 0 1
      573 JUMPIFNOT                        R19 ; [+10]
      574 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      576 LOADK                            R20 K173 ["validateRigidMeshSkinning_FailedToDownload"]
      577 SETTABLEKS                       R20 R19 K173 ["validateRigidMeshSkinning_FailedToDownload"]
      579 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      581 LOADK                            R20 K174 ["validateRigidMeshSkinning_BonesFoundInMesh"]
      582 SETTABLEKS                       R20 R19 K174 ["validateRigidMeshSkinning_BonesFoundInMesh"]
      584 MOVE                             R19 R15
      585 CALL                             R19 0 1
      586 JUMPIFNOT                        R19 ; [+5]
      587 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      589 LOADK                            R20 K175 ["validateCurveAnimation_UnacceptableFrameRotationDelta"]
      590 SETTABLEKS                       R20 R19 K175 ["validateCurveAnimation_UnacceptableFrameRotationDelta"]
      592 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      594 LOADK                            R20 K176 ["validateCurveAnimation_IncorrectAnimationRigData"]
      595 SETTABLEKS                       R20 R19 K176 ["validateCurveAnimation_IncorrectAnimationRigData"]
      597 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      599 LOADK                            R20 K177 ["validateMeshSizeProperty_FailedToLoadMesh"]
      600 SETTABLEKS                       R20 R19 K177 ["validateMeshSizeProperty_FailedToLoadMesh"]
      602 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      604 LOADK                            R20 K178 ["validateMeshSizeProperty_Mismatch"]
      605 SETTABLEKS                       R20 R19 K178 ["validateMeshSizeProperty_Mismatch"]
      607 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      609 LOADK                            R20 K179 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
      610 SETTABLEKS                       R20 R19 K179 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
      612 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      614 LOADK                            R20 K180 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
      615 SETTABLEKS                       R20 R19 K180 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
      617 MOVE                             R19 R10
      618 CALL                             R19 0 1
      619 JUMPIFNOT                        R19 ; [+20]
      620 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      622 LOADK                            R20 K181 ["validateSkinningTransfer_FailedToExecute"]
      623 SETTABLEKS                       R20 R19 K181 ["validateSkinningTransfer_FailedToExecute"]
      625 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      627 LOADK                            R20 K182 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
      628 SETTABLEKS                       R20 R19 K182 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
      630 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      632 LOADK                            R20 K183 ["validateSkinningTransfer_SkinningTransferOverride"]
      633 SETTABLEKS                       R20 R19 K183 ["validateSkinningTransfer_SkinningTransferOverride"]
      635 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      637 LOADK                            R20 K184 ["validateSkinningTransfer_Weights"]
      638 SETTABLEKS                       R20 R19 K184 ["validateSkinningTransfer_Weights"]
      640 MOVE                             R19 R13
      641 CALL                             R19 0 1
      642 JUMPIFNOT                        R19 ; [+5]
      643 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      645 LOADK                            R20 K185 ["validateSkinningTransfer_RequiredAssetTypes"]
      646 SETTABLEKS                       R20 R19 K185 ["validateSkinningTransfer_RequiredAssetTypes"]
      648 MOVE                             R19 R11
      649 CALL                             R19 0 1
      650 JUMPIFNOT                        R19 ; [+5]
      651 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      653 LOADK                            R20 K186 ["validatePropertiesSensible_IncorrectPropertiesFound"]
      654 SETTABLEKS                       R20 R19 K186 ["validatePropertiesSensible_IncorrectPropertiesFound"]
      656 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      658 LOADK                            R20 K187 ["validateHSR_FileDataInvalid"]
      659 SETTABLEKS                       R20 R19 K187 ["validateHSR_FileDataInvalid"]
      661 MOVE                             R19 R12
      662 CALL                             R19 0 1
      663 JUMPIFNOT                        R19 ; [+5]
      664 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      666 LOADK                            R20 K188 ["validataHSR_HSRMeshIdsMismatch"]
      667 SETTABLEKS                       R20 R19 K188 ["validataHSR_HSRMeshIdsMismatch"]
      669 MOVE                             R19 R14
      670 CALL                             R19 0 1
      671 JUMPIFNOT                        R19 ; [+45]
      672 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      674 LOADK                            R20 K189 ["validateMakeupDecal_FailedToLoadTexture"]
      675 SETTABLEKS                       R20 R19 K189 ["validateMakeupDecal_FailedToLoadTexture"]
      677 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      679 LOADK                            R20 K190 ["validateMakeupDecal_NoColorMap"]
      680 SETTABLEKS                       R20 R19 K190 ["validateMakeupDecal_NoColorMap"]
      682 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      684 LOADK                            R20 K191 ["validateMakeupDecal_UVZoneError"]
      685 SETTABLEKS                       R20 R19 K191 ["validateMakeupDecal_UVZoneError"]
      687 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      689 LOADK                            R20 K192 ["validateWrapTextureTransfer_FailedToLoadCage"]
      690 SETTABLEKS                       R20 R19 K192 ["validateWrapTextureTransfer_FailedToLoadCage"]
      692 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      694 LOADK                            R20 K193 ["validateWrapTextureTransfer_NoCage"]
      695 SETTABLEKS                       R20 R19 K193 ["validateWrapTextureTransfer_NoCage"]
      697 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      699 LOADK                            R20 K194 ["validateWrapTextureTransfer_FailedToLoadUV"]
      700 SETTABLEKS                       R20 R19 K194 ["validateWrapTextureTransfer_FailedToLoadUV"]
      702 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      704 LOADK                            R20 K195 ["validateWrapTextureTransfer_InvalidUV"]
      705 SETTABLEKS                       R20 R19 K195 ["validateWrapTextureTransfer_InvalidUV"]
      707 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      709 LOADK                            R20 K196 ["validateWrapTextureTransfer_InvalidMinBound"]
      710 SETTABLEKS                       R20 R19 K196 ["validateWrapTextureTransfer_InvalidMinBound"]
      712 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      714 LOADK                            R20 K197 ["validateWrapTextureTransfer_InvalidMaxBound"]
      715 SETTABLEKS                       R20 R19 K197 ["validateWrapTextureTransfer_InvalidMaxBound"]
      717 MOVE                             R19 R9
      718 CALL                             R19 0 1
      719 JUMPIFNOT                        R19 ; [+10]
      720 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      722 LOADK                            R20 K198 ["validateFACSJointTransformsWithinBounds_Error"]
      723 SETTABLEKS                       R20 R19 K198 ["validateFACSJointTransformsWithinBounds_Error"]
      725 GETTABLEKS                       R19 R18 K167 ["ErrorType"]
      727 LOADK                            R20 K199 ["validateFACSJointTransformsWithinBounds_OOB"]
      728 SETTABLEKS                       R20 R19 K199 ["validateFACSJointTransformsWithinBounds_OOB"]
      730 GETTABLEKS                       R20 R18 K167 ["ErrorType"]
      732 DUPTABLE                         R21 K201 [{"__index"}]
      733 DUPCLOSURE                       R22 K202 [PROTO_1]
      734 SETTABLEKS                       R22 R21 K200 ["__index"]
      736 FASTCALL2                        SETMETATABLE R20 R21 ; [+3]
      738 GETIMPORT                        R19 K204 [setmetatable]
      740 CALL                             R19 2 0
      741 NEWTABLE                         R19 0 0
      743 SETTABLEKS                       R19 R18 K205 ["metadata"]
      745 DUPCLOSURE                       R19 K206 [PROTO_2]
      746 CAPTURE                          VAL R18
      747 SETTABLEKS                       R19 R18 K207 ["setMetadata"]
      749 DUPCLOSURE                       R19 K208 [PROTO_3]
      750 CAPTURE                          VAL R7
      751 CAPTURE                          VAL R2
      752 SETTABLEKS                       R19 R18 K209 ["shouldReportIECTelemetry"]
      754 DUPCLOSURE                       R19 K210 [PROTO_4]
      755 CAPTURE                          VAL R18
      756 CAPTURE                          VAL R3
      757 SETTABLEKS                       R19 R18 K211 ["reportCounter"]
      759 DUPCLOSURE                       R19 K212 [PROTO_5]
      760 CAPTURE                          VAL R2
      761 CAPTURE                          VAL R17
      762 CAPTURE                          VAL R18
      763 CAPTURE                          VAL R5
      764 CAPTURE                          VAL R4
      765 CAPTURE                          VAL R3
      766 SETTABLEKS                       R19 R18 K213 ["reportFailure"]
      768 DUPCLOSURE                       R19 K214 [PROTO_6]
      769 CAPTURE                          VAL R2
      770 CAPTURE                          VAL R17
      771 CAPTURE                          VAL R18
      772 CAPTURE                          VAL R5
      773 CAPTURE                          VAL R4
      774 SETTABLEKS                       R19 R18 K215 ["reportThumbnailing"]
      776 DUPCLOSURE                       R19 K216 [PROTO_7]
      777 CAPTURE                          VAL R6
      778 SETTABLEKS                       R19 R18 K217 ["recordScriptTime"]
      780 DUPCLOSURE                       R19 K218 [PROTO_8]
      781 CAPTURE                          VAL R6
      782 CAPTURE                          VAL R2
      783 CAPTURE                          VAL R18
      784 CAPTURE                          VAL R3
      785 SETTABLEKS                       R19 R18 K219 ["reportScriptTimes"]
      787 RETURN                           R18 1
