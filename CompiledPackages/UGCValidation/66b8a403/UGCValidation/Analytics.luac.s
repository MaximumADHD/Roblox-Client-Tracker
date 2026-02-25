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
       53 GETTABLEKS                       R8 R9 K17 ["getEngineFeatureUGCValidateCageMeshDistance"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R10 R0 K15 ["flags"]
       60 GETTABLEKS                       R9 R10 K18 ["getEngineFeatureEngineUGCValidationIECTelemetry"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R11 R0 K15 ["flags"]
       67 GETTABLEKS                       R10 R11 K19 ["getEngineFeatureEngineUGCValidationCageUVDuplicates"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R12 R0 K15 ["flags"]
       74 GETTABLEKS                       R11 R12 K20 ["getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R13 R0 K15 ["flags"]
       81 GETTABLEKS                       R12 R13 K21 ["getEngineFeatureEngineUGCValidateLCCagingRelevancy"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R14 R0 K15 ["flags"]
       88 GETTABLEKS                       R13 R14 K22 ["getEngineFeatureEngineUGCValidateRigidNonSkinned"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K4 [require]
       93 GETTABLEKS                       R15 R0 K15 ["flags"]
       95 GETTABLEKS                       R14 R15 K23 ["getFFlagUGCValidatePartSizeWithinRenderSizeLimits"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K4 [require]
      100 GETTABLEKS                       R16 R0 K15 ["flags"]
      102 GETTABLEKS                       R15 R16 K24 ["getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K4 [require]
      107 GETTABLEKS                       R17 R0 K15 ["flags"]
      109 GETTABLEKS                       R16 R17 K25 ["getFFlagUGCValidateMeshBBoxIsCentered"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K4 [require]
      114 GETTABLEKS                       R18 R0 K15 ["flags"]
      116 GETTABLEKS                       R17 R18 K26 ["getFFlagUGCValidateLCHandleScale"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K4 [require]
      121 GETTABLEKS                       R19 R0 K15 ["flags"]
      123 GETTABLEKS                       R18 R19 K27 ["getFFlagUGCValidatePartMass"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K4 [require]
      128 GETTABLEKS                       R20 R0 K15 ["flags"]
      130 GETTABLEKS                       R19 R20 K28 ["getFFlagUGCValidateIndividualPartBBoxes"]
      132 CALL                             R18 1 1
      133 GETIMPORT                        R19 K4 [require]
      135 GETTABLEKS                       R21 R0 K15 ["flags"]
      137 GETTABLEKS                       R20 R21 K29 ["getFFlagRefactorBodyAttachmentOrientationsCheck"]
      139 CALL                             R19 1 1
      140 GETIMPORT                        R20 K4 [require]
      142 GETTABLEKS                       R22 R0 K15 ["flags"]
      144 GETTABLEKS                       R21 R22 K30 ["getFFlagValidateDeformedLayeredClothingIsInBounds"]
      146 CALL                             R20 1 1
      147 GETIMPORT                        R21 K4 [require]
      149 GETTABLEKS                       R23 R0 K15 ["flags"]
      151 GETTABLEKS                       R22 R23 K31 ["getFFlagReportVisibilityAndIslandTelemetry"]
      153 CALL                             R21 1 1
      154 GETIMPORT                        R22 K4 [require]
      156 GETTABLEKS                       R24 R0 K15 ["flags"]
      158 GETTABLEKS                       R23 R24 K32 ["getEngineFeatureUGCValidationFullBodyFacs"]
      160 CALL                             R22 1 1
      161 GETIMPORT                        R23 K4 [require]
      163 GETTABLEKS                       R25 R0 K15 ["flags"]
      165 GETTABLEKS                       R24 R25 K33 ["getEngineUGCValidateRelativeSkinningTransfer"]
      167 CALL                             R23 1 1
      168 GETIMPORT                        R24 K4 [require]
      170 GETTABLEKS                       R26 R0 K15 ["flags"]
      172 GETTABLEKS                       R25 R26 K34 ["getEngineFeatureEngineUGCIsValidR15AnimationRigCheck"]
      174 CALL                             R24 1 1
      175 GETIMPORT                        R25 K4 [require]
      177 GETTABLEKS                       R27 R0 K15 ["flags"]
      179 GETTABLEKS                       R26 R27 K35 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      181 CALL                             R25 1 1
      182 GETIMPORT                        R26 K4 [require]
      184 GETTABLEKS                       R28 R0 K15 ["flags"]
      186 GETTABLEKS                       R27 R28 K36 ["getFFlagUGCValidateCheckHSRFileDataFix"]
      188 CALL                             R26 1 1
      189 GETIMPORT                        R27 K4 [require]
      191 GETTABLEKS                       R29 R0 K15 ["flags"]
      193 GETTABLEKS                       R28 R29 K37 ["getFFlagUGCValidateHSRMeshIds"]
      195 CALL                             R27 1 1
      196 GETIMPORT                        R28 K4 [require]
      198 GETTABLEKS                       R30 R0 K15 ["flags"]
      200 GETTABLEKS                       R29 R30 K38 ["getFFlagUGCValidationEyebrowEyelashSupport"]
      202 CALL                             R28 1 1
      203 GETIMPORT                        R29 K4 [require]
      205 GETTABLEKS                       R31 R0 K15 ["flags"]
      207 GETTABLEKS                       R30 R31 K39 ["getFFlagUGCValidationMakeupSupport"]
      209 CALL                             R29 1 1
      210 GETIMPORT                        R30 K4 [require]
      212 GETTABLEKS                       R32 R0 K15 ["flags"]
      214 GETTABLEKS                       R31 R32 K40 ["getFFlagUGCValidateCurveAnimRotationSpeed"]
      216 CALL                             R30 1 1
      217 GETIMPORT                        R31 K4 [require]
      219 GETTABLEKS                       R33 R0 K15 ["flags"]
      221 GETTABLEKS                       R32 R33 K41 ["getFFlagUGCValidateLegAssetSeparation"]
      223 CALL                             R31 1 1
      224 GETIMPORT                        R32 K4 [require]
      226 GETTABLEKS                       R34 R0 K15 ["flags"]
      228 GETTABLEKS                       R33 R34 K42 ["getFFlagUGCValidateTexturePack"]
      230 CALL                             R32 1 1
      231 DUPCLOSURE                       R33 K43 [PROTO_0]
      232 NEWTABLE                         R34 16 0
      234 NEWTABLE                         R35 128 0
      236 LOADK                            R36 K44 ["resetPhysicsData_FailedToLoadMesh"]
      237 SETTABLEKS                       R36 R35 K44 ["resetPhysicsData_FailedToLoadMesh"]
      239 MOVE                             R37 R21
      240 CALL                             R37 0 1
      241 JUMPIFNOT                        R37 ; [+2]
      242 LOADK                            R36 K45 ["validateAccurateBoundingBox"]
      243 JUMP                             ; [+1]
      244 LOADNIL                          R36
      245 SETTABLEKS                       R36 R35 K45 ["validateAccurateBoundingBox"]
      247 LOADK                            R36 K46 ["validateAssetBounds_AssetSizeTooBig"]
      248 SETTABLEKS                       R36 R35 K46 ["validateAssetBounds_AssetSizeTooBig"]
      250 LOADK                            R36 K47 ["validateAssetBounds_AssetSizeTooSmall"]
      251 SETTABLEKS                       R36 R35 K47 ["validateAssetBounds_AssetSizeTooSmall"]
      253 LOADK                            R36 K48 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
      254 SETTABLEKS                       R36 R35 K48 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
      256 LOADK                            R36 K49 ["validateScaleType_InvalidAvatarPartScaleType"]
      257 SETTABLEKS                       R36 R35 K49 ["validateScaleType_InvalidAvatarPartScaleType"]
      259 LOADK                            R36 K50 ["validateAssetCreator_DependencyNotOwnedByCreator"]
      260 SETTABLEKS                       R36 R35 K50 ["validateAssetCreator_DependencyNotOwnedByCreator"]
      262 LOADK                            R36 K51 ["validateAssetCreator_FailedToLoad"]
      263 SETTABLEKS                       R36 R35 K51 ["validateAssetCreator_FailedToLoad"]
      265 LOADK                            R36 K52 ["validateAssetCreator_TooManyDependencies"]
      266 SETTABLEKS                       R36 R35 K52 ["validateAssetCreator_TooManyDependencies"]
      268 MOVE                             R37 R21
      269 CALL                             R37 0 1
      270 JUMPIFNOT                        R37 ; [+2]
      271 LOADK                            R36 K53 ["validateAssetTransparency_AssetTransparencyThresholds"]
      272 JUMP                             ; [+1]
      273 LOADNIL                          R36
      274 SETTABLEKS                       R36 R35 K53 ["validateAssetTransparency_AssetTransparencyThresholds"]
      276 LOADK                            R36 K54 ["validateAttributes"]
      277 SETTABLEKS                       R36 R35 K54 ["validateAttributes"]
      279 MOVE                             R37 R19
      280 CALL                             R37 0 1
      281 JUMPIFNOT                        R37 ; [+2]
      282 LOADNIL                          R36
      283 JUMP                             ; [+1]
      284 LOADK                            R36 K55 ["validateBodyPartChildAttachmentBounds_AttachmentRotated"]
      285 SETTABLEKS                       R36 R35 K55 ["validateBodyPartChildAttachmentBounds_AttachmentRotated"]
      287 LOADK                            R36 K56 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
      288 SETTABLEKS                       R36 R35 K56 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
      290 LOADK                            R36 K57 ["validateBodyPartCollisionFidelity"]
      291 SETTABLEKS                       R36 R35 K57 ["validateBodyPartCollisionFidelity"]
      293 LOADK                            R36 K58 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
      294 SETTABLEKS                       R36 R35 K58 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
      296 LOADK                            R36 K59 ["validateCageUVs_TestExecutedSuccessfully"]
      297 SETTABLEKS                       R36 R35 K59 ["validateCageUVs_TestExecutedSuccessfully"]
      299 LOADK                            R36 K60 ["validateCageUVs_TestPassed"]
      300 SETTABLEKS                       R36 R35 K60 ["validateCageUVs_TestPassed"]
      302 LOADK                            R36 K61 ["validateCageUVTriangleArea_FailedToLoadMesh"]
      303 SETTABLEKS                       R36 R35 K61 ["validateCageUVTriangleArea_FailedToLoadMesh"]
      305 LOADK                            R36 K62 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
      306 SETTABLEKS                       R36 R35 K62 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
      308 LOADK                            R36 K63 ["validateCageUVValues_FailedToLoadMesh"]
      309 SETTABLEKS                       R36 R35 K63 ["validateCageUVValues_FailedToLoadMesh"]
      311 LOADK                            R36 K64 ["validateCageUVValues_UnexpectedUVValue"]
      312 SETTABLEKS                       R36 R35 K64 ["validateCageUVValues_UnexpectedUVValue"]
      314 LOADK                            R36 K65 ["validateCanLoad"]
      315 SETTABLEKS                       R36 R35 K65 ["validateCanLoad"]
      317 LOADK                            R36 K66 ["validateDependencies_IsNotApproved"]
      318 SETTABLEKS                       R36 R35 K66 ["validateDependencies_IsNotApproved"]
      320 LOADK                            R36 K67 ["validateDependencies_IsRestrictedUserId"]
      321 SETTABLEKS                       R36 R35 K67 ["validateDependencies_IsRestrictedUserId"]
      323 LOADK                            R36 K68 ["validateDependencies_IsReviewing"]
      324 SETTABLEKS                       R36 R35 K68 ["validateDependencies_IsReviewing"]
      326 LOADK                            R36 K69 ["validateDependencies_ParseFailure"]
      327 SETTABLEKS                       R36 R35 K69 ["validateDependencies_ParseFailure"]
      329 LOADK                            R36 K70 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
      330 SETTABLEKS                       R36 R35 K70 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
      332 LOADK                            R36 K71 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
      333 SETTABLEKS                       R36 R35 K71 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
      335 LOADK                            R36 K72 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
      336 SETTABLEKS                       R36 R35 K72 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
      338 LOADK                            R36 K73 ["validateDescendantMeshMetrics_NoSkinningInfo"]
      339 SETTABLEKS                       R36 R35 K73 ["validateDescendantMeshMetrics_NoSkinningInfo"]
      341 LOADK                            R36 K74 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
      342 SETTABLEKS                       R36 R35 K74 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
      344 LOADK                            R36 K75 ["validateDescendantMeshMetrics_TooManyTriangles"]
      345 SETTABLEKS                       R36 R35 K75 ["validateDescendantMeshMetrics_TooManyTriangles"]
      347 LOADK                            R36 K76 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
      348 SETTABLEKS                       R36 R35 K76 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
      350 LOADK                            R36 K77 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
      351 SETTABLEKS                       R36 R35 K77 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
      353 LOADK                            R36 K78 ["validateFullBody_IncorrectAssetTypeSet"]
      354 SETTABLEKS                       R36 R35 K78 ["validateFullBody_IncorrectAssetTypeSet"]
      356 LOADK                            R36 K79 ["validateFullBody_InstancesMissing"]
      357 SETTABLEKS                       R36 R35 K79 ["validateFullBody_InstancesMissing"]
      359 LOADK                            R36 K80 ["validateFullBody_MeshIdsMissing"]
      360 SETTABLEKS                       R36 R35 K80 ["validateFullBody_MeshIdsMissing"]
      362 LOADK                            R36 K81 ["validateHSR_HSRDataNotReady"]
      363 SETTABLEKS                       R36 R35 K81 ["validateHSR_HSRDataNotReady"]
      365 LOADK                            R36 K82 ["validateHSR_NoWrapLayer"]
      366 SETTABLEKS                       R36 R35 K82 ["validateHSR_NoWrapLayer"]
      368 LOADK                            R36 K83 ["validateInstanceTree"]
      369 SETTABLEKS                       R36 R35 K83 ["validateInstanceTree"]
      371 LOADK                            R36 K84 ["validateInstanceTree_InvalidDescendants"]
      372 SETTABLEKS                       R36 R35 K84 ["validateInstanceTree_InvalidDescendants"]
      374 LOADK                            R36 K85 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
      375 SETTABLEKS                       R36 R35 K85 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
      377 LOADK                            R36 K86 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      378 SETTABLEKS                       R36 R35 K86 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      380 LOADK                            R36 K87 ["validateLayeredClothingAccessory_NoInnerCageId"]
      381 SETTABLEKS                       R36 R35 K87 ["validateLayeredClothingAccessory_NoInnerCageId"]
      383 LOADK                            R36 K88 ["validateLayeredClothingAccessory_NoMeshId"]
      384 SETTABLEKS                       R36 R35 K88 ["validateLayeredClothingAccessory_NoMeshId"]
      386 LOADK                            R36 K89 ["validateLayeredClothingAccessory_NoOuterCageId"]
      387 SETTABLEKS                       R36 R35 K89 ["validateLayeredClothingAccessory_NoOuterCageId"]
      389 LOADK                            R36 K90 ["validateLayeredClothingAccessory_NoWrapLayer"]
      390 SETTABLEKS                       R36 R35 K90 ["validateLayeredClothingAccessory_NoWrapLayer"]
      392 LOADK                            R36 K91 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      393 SETTABLEKS                       R36 R35 K91 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      395 LOADK                            R36 K92 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      396 SETTABLEKS                       R36 R35 K92 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      398 LOADK                            R36 K93 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
      399 SETTABLEKS                       R36 R35 K93 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
      401 LOADK                            R36 K94 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      402 SETTABLEKS                       R36 R35 K94 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
      404 LOADK                            R36 K95 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      405 SETTABLEKS                       R36 R35 K95 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
      407 LOADK                            R36 K96 ["validateLimbsAndTorso_FolderInfoMismatch"]
      408 SETTABLEKS                       R36 R35 K96 ["validateLimbsAndTorso_FolderInfoMismatch"]
      410 LOADK                            R36 K97 ["validateLimbsAndTorso_R6FolderHasChildren"]
      411 SETTABLEKS                       R36 R35 K97 ["validateLimbsAndTorso_R6FolderHasChildren"]
      413 LOADK                            R36 K98 ["validateLimbsAndTorso_TopLevelFolders"]
      414 SETTABLEKS                       R36 R35 K98 ["validateLimbsAndTorso_TopLevelFolders"]
      416 LOADK                            R36 K99 ["validateMaterials"]
      417 SETTABLEKS                       R36 R35 K99 ["validateMaterials"]
      419 LOADK                            R36 K100 ["validateMeshBounds_FailedToExecute"]
      420 SETTABLEKS                       R36 R35 K100 ["validateMeshBounds_FailedToExecute"]
      422 LOADK                            R36 K101 ["validateMeshBounds_FailedToLoadMesh"]
      423 SETTABLEKS                       R36 R35 K101 ["validateMeshBounds_FailedToLoadMesh"]
      425 LOADK                            R36 K102 ["validateMeshBounds_TooLarge"]
      426 SETTABLEKS                       R36 R35 K102 ["validateMeshBounds_TooLarge"]
      428 LOADK                            R36 K103 ["validateMeshComparison"]
      429 SETTABLEKS                       R36 R35 K103 ["validateMeshComparison"]
      431 LOADK                            R36 K104 ["validateMeshPartAccessory_DoubleSided"]
      432 SETTABLEKS                       R36 R35 K104 ["validateMeshPartAccessory_DoubleSided"]
      434 LOADK                            R36 K105 ["validateMeshPartAccessory_FailedToLoadMesh"]
      435 SETTABLEKS                       R36 R35 K105 ["validateMeshPartAccessory_FailedToLoadMesh"]
      437 LOADK                            R36 K106 ["validateMeshPartAccessory_NoMeshId"]
      438 SETTABLEKS                       R36 R35 K106 ["validateMeshPartAccessory_NoMeshId"]
      440 LOADK                            R36 K107 ["validateMeshPartBodyPart_ValidateWithSchema"]
      441 SETTABLEKS                       R36 R35 K107 ["validateMeshPartBodyPart_ValidateWithSchema"]
      443 LOADK                            R36 K108 ["validateMeshTriangleArea_FailedToLoadMesh"]
      444 SETTABLEKS                       R36 R35 K108 ["validateMeshTriangleArea_FailedToLoadMesh"]
      446 LOADK                            R36 K109 ["validateMeshTriangleArea_NoArea"]
      447 SETTABLEKS                       R36 R35 K109 ["validateMeshTriangleArea_NoArea"]
      449 LOADK                            R36 K110 ["validateMeshTriangles_FailedToExecute"]
      450 SETTABLEKS                       R36 R35 K110 ["validateMeshTriangles_FailedToExecute"]
      452 LOADK                            R36 K111 ["validateMeshTriangles_FailedToLoadMesh"]
      453 SETTABLEKS                       R36 R35 K111 ["validateMeshTriangles_FailedToLoadMesh"]
      455 LOADK                            R36 K112 ["validateMeshTriangles_TooManyTriangles"]
      456 SETTABLEKS                       R36 R35 K112 ["validateMeshTriangles_TooManyTriangles"]
      458 LOADK                            R36 K113 ["validateMeshVertexColors_FailedToLoadMesh"]
      459 SETTABLEKS                       R36 R35 K113 ["validateMeshVertexColors_FailedToLoadMesh"]
      461 LOADK                            R36 K114 ["validateMeshVertexColors_NonNeutralVertexColors"]
      462 SETTABLEKS                       R36 R35 K114 ["validateMeshVertexColors_NonNeutralVertexColors"]
      464 LOADK                            R36 K115 ["validateModeration_AssetsHaveNotPassedModeration"]
      465 SETTABLEKS                       R36 R35 K115 ["validateModeration_AssetsHaveNotPassedModeration"]
      467 LOADK                            R36 K116 ["validateModeration_CouldNotFetchModerationDetails"]
      468 SETTABLEKS                       R36 R35 K116 ["validateModeration_CouldNotFetchModerationDetails"]
      470 LOADK                            R36 K117 ["validateModeration_FailedToParse"]
      471 SETTABLEKS                       R36 R35 K117 ["validateModeration_FailedToParse"]
      473 LOADK                            R36 K118 ["validateModeration_ValidateUser"]
      474 SETTABLEKS                       R36 R35 K118 ["validateModeration_ValidateUser"]
      476 LOADK                            R36 K119 ["validatePackage_FailedToParse"]
      477 SETTABLEKS                       R36 R35 K119 ["validatePackage_FailedToParse"]
      479 LOADK                            R36 K120 ["validateProperties_PropertyDoesNotExist"]
      480 SETTABLEKS                       R36 R35 K120 ["validateProperties_PropertyDoesNotExist"]
      482 LOADK                            R36 K121 ["validateProperties_PropertyMismatch"]
      483 SETTABLEKS                       R36 R35 K121 ["validateProperties_PropertyMismatch"]
      485 LOADK                            R36 K122 ["validateSingleInstance_MultipleInstances"]
      486 SETTABLEKS                       R36 R35 K122 ["validateSingleInstance_MultipleInstances"]
      488 LOADK                            R36 K123 ["validateSingleInstance_ZeroInstances"]
      489 SETTABLEKS                       R36 R35 K123 ["validateSingleInstance_ZeroInstances"]
      491 LOADK                            R36 K124 ["validateSurfaceAppearances_InvalidAlphaMode"]
      492 SETTABLEKS                       R36 R35 K124 ["validateSurfaceAppearances_InvalidAlphaMode"]
      494 LOADK                            R36 K125 ["validateSurfaceAppearances_MeshPartHasTexture"]
      495 SETTABLEKS                       R36 R35 K125 ["validateSurfaceAppearances_MeshPartHasTexture"]
      497 LOADK                            R36 K126 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
      498 SETTABLEKS                       R36 R35 K126 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
      500 LOADK                            R36 K127 ["validateTags"]
      501 SETTABLEKS                       R36 R35 K127 ["validateTags"]
      503 LOADK                            R36 K128 ["validateTextureSize_FailedToExecute"]
      504 SETTABLEKS                       R36 R35 K128 ["validateTextureSize_FailedToExecute"]
      506 LOADK                            R36 K129 ["validateTextureSize_FailedToLoadTexture"]
      507 SETTABLEKS                       R36 R35 K129 ["validateTextureSize_FailedToLoadTexture"]
      509 LOADK                            R36 K130 ["validateTextureSize_InvalidTextureId"]
      510 SETTABLEKS                       R36 R35 K130 ["validateTextureSize_InvalidTextureId"]
      512 LOADK                            R36 K131 ["validateTextureSize_TextureTooBig"]
      513 SETTABLEKS                       R36 R35 K131 ["validateTextureSize_TextureTooBig"]
      515 LOADK                            R36 K132 ["validateTextureTransparency_InvalidTextureId"]
      516 SETTABLEKS                       R36 R35 K132 ["validateTextureTransparency_InvalidTextureId"]
      518 LOADK                            R36 K133 ["validateTextureTransparency_TransparentTexture"]
      519 SETTABLEKS                       R36 R35 K133 ["validateTextureTransparency_TransparentTexture"]
      521 LOADK                            R36 K134 ["validateThumbnailConfiguration_InvalidTarget"]
      522 SETTABLEKS                       R36 R35 K134 ["validateThumbnailConfiguration_InvalidTarget"]
      524 LOADK                            R36 K135 ["validateThumbnailConfiguration_OutsideView"]
      525 SETTABLEKS                       R36 R35 K135 ["validateThumbnailConfiguration_OutsideView"]
      527 LOADK                            R36 K136 ["validateVertexDensity_FailedToExecute"]
      528 SETTABLEKS                       R36 R35 K136 ["validateVertexDensity_FailedToExecute"]
      530 LOADK                            R36 K137 ["validateVertexDensity_MaxDensityExceeded"]
      531 SETTABLEKS                       R36 R35 K137 ["validateVertexDensity_MaxDensityExceeded"]
      533 LOADK                            R36 K138 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
      534 SETTABLEKS                       R36 R35 K138 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
      536 LOADK                            R36 K139 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
      537 SETTABLEKS                       R36 R35 K139 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
      539 LOADK                            R36 K140 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
      540 SETTABLEKS                       R36 R35 K140 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
      542 LOADK                            R36 K141 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
      543 SETTABLEKS                       R36 R35 K141 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
      545 LOADK                            R36 K142 ["validateBodyPart_CageOriginOutOfBounds"]
      546 SETTABLEKS                       R36 R35 K142 ["validateBodyPart_CageOriginOutOfBounds"]
      548 LOADK                            R36 K143 ["validateTotalSurfaceArea_FailedToExecute"]
      549 SETTABLEKS                       R36 R35 K143 ["validateTotalSurfaceArea_FailedToExecute"]
      551 LOADK                            R36 K144 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
      552 SETTABLEKS                       R36 R35 K144 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
      554 LOADK                            R36 K145 ["validateCoplanarIntersection_FailedToExecute"]
      555 SETTABLEKS                       R36 R35 K145 ["validateCoplanarIntersection_FailedToExecute"]
      557 LOADK                            R36 K146 ["validateCoplanarIntersection_CoplanarIntersection"]
      558 SETTABLEKS                       R36 R35 K146 ["validateCoplanarIntersection_CoplanarIntersection"]
      560 LOADK                            R36 K147 ["validateExcludedModifiedCageUVs_FailedToExecute"]
      561 SETTABLEKS                       R36 R35 K147 ["validateExcludedModifiedCageUVs_FailedToExecute"]
      563 LOADK                            R36 K148 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
      564 SETTABLEKS                       R36 R35 K148 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
      566 LOADK                            R36 K149 ["validateMainModifiedCageUVs_FailedToExecute"]
      567 SETTABLEKS                       R36 R35 K149 ["validateMainModifiedCageUVs_FailedToExecute"]
      569 LOADK                            R36 K150 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
      570 SETTABLEKS                       R36 R35 K150 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
      572 LOADK                            R36 K151 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
      573 SETTABLEKS                       R36 R35 K151 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
      575 LOADK                            R36 K152 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
      576 SETTABLEKS                       R36 R35 K152 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
      578 LOADK                            R36 K153 ["validateBodyPartCage_FailedToExecute"]
      579 SETTABLEKS                       R36 R35 K153 ["validateBodyPartCage_FailedToExecute"]
      581 LOADK                            R36 K154 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
      582 SETTABLEKS                       R36 R35 K154 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
      584 LOADK                            R36 K155 ["validateCurveAnimation_IncorrectNumericalData"]
      585 SETTABLEKS                       R36 R35 K155 ["validateCurveAnimation_IncorrectNumericalData"]
      587 LOADK                            R36 K156 ["validateCurveAnimation_PositionalMovement"]
      588 SETTABLEKS                       R36 R35 K156 ["validateCurveAnimation_PositionalMovement"]
      590 SETTABLEKS                       R35 R34 K157 ["ErrorType"]
      592 MOVE                             R35 R32
      593 CALL                             R35 0 1
      594 JUMPIFNOT                        R35 ; [+15]
      595 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      597 LOADK                            R36 K158 ["validateTexturePack_InvalidTexturePackURL"]
      598 SETTABLEKS                       R36 R35 K158 ["validateTexturePack_InvalidTexturePackURL"]
      600 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      602 LOADK                            R36 K159 ["validateTexturePack_FailedToDownloadTexturePack"]
      603 SETTABLEKS                       R36 R35 K159 ["validateTexturePack_FailedToDownloadTexturePack"]
      605 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      607 LOADK                            R36 K160 ["validateTexturePack_TexturePackMismatch"]
      608 SETTABLEKS                       R36 R35 K160 ["validateTexturePack_TexturePackMismatch"]
      610 MOVE                             R35 R31
      611 CALL                             R35 0 1
      612 JUMPIFNOT                        R35 ; [+10]
      613 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      615 LOADK                            R36 K161 ["validateLegsSeparation_InvalidAttachmentPosition"]
      616 SETTABLEKS                       R36 R35 K161 ["validateLegsSeparation_InvalidAttachmentPosition"]
      618 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      620 LOADK                            R36 K162 ["validateLegsSeparation_LegsOverlap"]
      621 SETTABLEKS                       R36 R35 K162 ["validateLegsSeparation_LegsOverlap"]
      623 MOVE                             R35 R15
      624 CALL                             R35 0 1
      625 JUMPIFNOT                        R35 ; [+5]
      626 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      628 LOADK                            R36 K163 ["validateMeshBounds_Shifted"]
      629 SETTABLEKS                       R36 R35 K163 ["validateMeshBounds_Shifted"]
      631 MOVE                             R35 R22
      632 CALL                             R35 0 1
      633 JUMPIFNOT                        R35 ; [+10]
      634 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      636 LOADK                            R36 K164 ["validateEachBodyPartFacsBounds_FailedToExecute"]
      637 SETTABLEKS                       R36 R35 K164 ["validateEachBodyPartFacsBounds_FailedToExecute"]
      639 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      641 LOADK                            R36 K165 ["validateEachBodyPartFacsBounds_ExtendedBounds"]
      642 SETTABLEKS                       R36 R35 K165 ["validateEachBodyPartFacsBounds_ExtendedBounds"]
      644 MOVE                             R35 R10
      645 CALL                             R35 0 1
      646 JUMPIFNOT                        R35 ; [+10]
      647 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      649 LOADK                            R36 K166 ["validateVerticesSimilarity_FailedToExecute"]
      650 SETTABLEKS                       R36 R35 K166 ["validateVerticesSimilarity_FailedToExecute"]
      652 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      654 LOADK                            R36 K167 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
      655 SETTABLEKS                       R36 R35 K167 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
      657 MOVE                             R35 R11
      658 CALL                             R35 0 1
      659 JUMPIFNOT                        R35 ; [+10]
      660 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      662 LOADK                            R36 K168 ["validateCagingRelevancy_FailedToExecute"]
      663 SETTABLEKS                       R36 R35 K168 ["validateCagingRelevancy_FailedToExecute"]
      665 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      667 LOADK                            R36 K169 ["validateCagingRelevancy_IrrelevantCaging"]
      668 SETTABLEKS                       R36 R35 K169 ["validateCagingRelevancy_IrrelevantCaging"]
      670 MOVE                             R35 R7
      671 CALL                             R35 0 1
      672 JUMPIFNOT                        R35 ; [+10]
      673 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      675 LOADK                            R36 K170 ["validateCageMeshDistance_FailedToExecute"]
      676 SETTABLEKS                       R36 R35 K170 ["validateCageMeshDistance_FailedToExecute"]
      678 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      680 LOADK                            R36 K171 ["validateCageMeshDistance_OuterCageToMeshDistance"]
      681 SETTABLEKS                       R36 R35 K171 ["validateCageMeshDistance_OuterCageToMeshDistance"]
      683 MOVE                             R35 R9
      684 CALL                             R35 0 1
      685 JUMPIFNOT                        R35 ; [+10]
      686 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      688 LOADK                            R36 K172 ["validateCageUVDuplicate_FailedToExecute"]
      689 SETTABLEKS                       R36 R35 K172 ["validateCageUVDuplicate_FailedToExecute"]
      691 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      693 LOADK                            R36 K173 ["validateCageUVDuplicate_UnexpectedUVValue"]
      694 SETTABLEKS                       R36 R35 K173 ["validateCageUVDuplicate_UnexpectedUVValue"]
      696 MOVE                             R35 R13
      697 CALL                             R35 0 1
      698 JUMPIFNOT                        R35 ; [+5]
      699 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      701 LOADK                            R36 K174 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
      702 SETTABLEKS                       R36 R35 K174 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
      704 MOVE                             R35 R16
      705 CALL                             R35 0 1
      706 JUMPIFNOT                        R35 ; [+5]
      707 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      709 LOADK                            R36 K175 ["validateLayeredClothingAccessory_HandleIsScaled"]
      710 SETTABLEKS                       R36 R35 K175 ["validateLayeredClothingAccessory_HandleIsScaled"]
      712 MOVE                             R35 R17
      713 CALL                             R35 0 1
      714 JUMPIFNOT                        R35 ; [+5]
      715 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      717 LOADK                            R36 K176 ["resetPhysicsData_LargeMass"]
      718 SETTABLEKS                       R36 R35 K176 ["resetPhysicsData_LargeMass"]
      720 MOVE                             R35 R12
      721 CALL                             R35 0 1
      722 JUMPIFNOT                        R35 ; [+10]
      723 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      725 LOADK                            R36 K177 ["validateRigidMeshSkinning_FailedToDownload"]
      726 SETTABLEKS                       R36 R35 K177 ["validateRigidMeshSkinning_FailedToDownload"]
      728 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      730 LOADK                            R36 K178 ["validateRigidMeshSkinning_BonesFoundInMesh"]
      731 SETTABLEKS                       R36 R35 K178 ["validateRigidMeshSkinning_BonesFoundInMesh"]
      733 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      735 LOADK                            R36 K179 ["validateBodyBlockingTests_ZeroMeshSize"]
      736 SETTABLEKS                       R36 R35 K179 ["validateBodyBlockingTests_ZeroMeshSize"]
      738 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      740 LOADK                            R36 K180 ["validateFullBody_ZeroMeshSize"]
      741 SETTABLEKS                       R36 R35 K180 ["validateFullBody_ZeroMeshSize"]
      743 MOVE                             R35 R18
      744 CALL                             R35 0 1
      745 JUMPIFNOT                        R35 ; [+10]
      746 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      748 LOADK                            R36 K181 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
      749 SETTABLEKS                       R36 R35 K181 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
      751 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      753 LOADK                            R36 K182 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
      754 SETTABLEKS                       R36 R35 K182 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
      756 MOVE                             R35 R19
      757 CALL                             R35 0 1
      758 JUMPIFNOT                        R35 ; [+15]
      759 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      761 LOADK                            R36 K183 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
      762 SETTABLEKS                       R36 R35 K183 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
      764 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      766 LOADK                            R36 K184 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
      767 SETTABLEKS                       R36 R35 K184 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
      769 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      771 LOADK                            R36 K185 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
      772 SETTABLEKS                       R36 R35 K185 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
      774 MOVE                             R35 R20
      775 CALL                             R35 0 1
      776 JUMPIFNOT                        R35 ; [+10]
      777 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      779 LOADK                            R36 K186 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
      780 SETTABLEKS                       R36 R35 K186 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
      782 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      784 LOADK                            R36 K187 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
      785 SETTABLEKS                       R36 R35 K187 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
      787 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      789 LOADK                            R36 K188 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
      790 SETTABLEKS                       R36 R35 K188 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
      792 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      794 LOADK                            R36 K189 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
      795 SETTABLEKS                       R36 R35 K189 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
      797 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      799 LOADK                            R36 K190 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
      800 SETTABLEKS                       R36 R35 K190 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
      802 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      804 LOADK                            R36 K191 ["validateCurveAnimation_UnacceptableLength"]
      805 SETTABLEKS                       R36 R35 K191 ["validateCurveAnimation_UnacceptableLength"]
      807 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      809 LOADK                            R36 K192 ["validateCurveAnimation_UnacceptableSizeBounds"]
      810 SETTABLEKS                       R36 R35 K192 ["validateCurveAnimation_UnacceptableSizeBounds"]
      812 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      814 LOADK                            R36 K193 ["validateCurveAnimation_UnacceptableFrameDelta"]
      815 SETTABLEKS                       R36 R35 K193 ["validateCurveAnimation_UnacceptableFrameDelta"]
      817 MOVE                             R35 R30
      818 CALL                             R35 0 1
      819 JUMPIFNOT                        R35 ; [+5]
      820 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      822 LOADK                            R36 K194 ["validateCurveAnimation_UnacceptableFrameRotationDelta"]
      823 SETTABLEKS                       R36 R35 K194 ["validateCurveAnimation_UnacceptableFrameRotationDelta"]
      825 MOVE                             R35 R24
      826 CALL                             R35 0 1
      827 JUMPIFNOT                        R35 ; [+5]
      828 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      830 LOADK                            R36 K195 ["validateCurveAnimation_IncorrectAnimationRigData"]
      831 SETTABLEKS                       R36 R35 K195 ["validateCurveAnimation_IncorrectAnimationRigData"]
      833 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      835 LOADK                            R36 K196 ["validateMeshSizeProperty_FailedToLoadMesh"]
      836 SETTABLEKS                       R36 R35 K196 ["validateMeshSizeProperty_FailedToLoadMesh"]
      838 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      840 LOADK                            R36 K197 ["validateMeshSizeProperty_Mismatch"]
      841 SETTABLEKS                       R36 R35 K197 ["validateMeshSizeProperty_Mismatch"]
      843 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      845 LOADK                            R36 K198 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
      846 SETTABLEKS                       R36 R35 K198 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
      848 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      850 LOADK                            R36 K199 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
      851 SETTABLEKS                       R36 R35 K199 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
      853 MOVE                             R35 R23
      854 CALL                             R35 0 1
      855 JUMPIFNOT                        R35 ; [+20]
      856 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      858 LOADK                            R36 K200 ["validateSkinningTransfer_FailedToExecute"]
      859 SETTABLEKS                       R36 R35 K200 ["validateSkinningTransfer_FailedToExecute"]
      861 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      863 LOADK                            R36 K201 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
      864 SETTABLEKS                       R36 R35 K201 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
      866 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      868 LOADK                            R36 K202 ["validateSkinningTransfer_SkinningTransferOverride"]
      869 SETTABLEKS                       R36 R35 K202 ["validateSkinningTransfer_SkinningTransferOverride"]
      871 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      873 LOADK                            R36 K203 ["validateSkinningTransfer_Weights"]
      874 SETTABLEKS                       R36 R35 K203 ["validateSkinningTransfer_Weights"]
      876 MOVE                             R35 R28
      877 CALL                             R35 0 1
      878 JUMPIFNOT                        R35 ; [+5]
      879 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      881 LOADK                            R36 K204 ["validateSkinningTransfer_RequiredAssetTypes"]
      882 SETTABLEKS                       R36 R35 K204 ["validateSkinningTransfer_RequiredAssetTypes"]
      884 MOVE                             R35 R25
      885 CALL                             R35 0 1
      886 JUMPIFNOT                        R35 ; [+5]
      887 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      889 LOADK                            R36 K205 ["validatePropertiesSensible_IncorrectPropertiesFound"]
      890 SETTABLEKS                       R36 R35 K205 ["validatePropertiesSensible_IncorrectPropertiesFound"]
      892 MOVE                             R35 R26
      893 CALL                             R35 0 1
      894 JUMPIFNOT                        R35 ; [+5]
      895 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      897 LOADK                            R36 K206 ["validateHSR_FileDataInvalid"]
      898 SETTABLEKS                       R36 R35 K206 ["validateHSR_FileDataInvalid"]
      900 MOVE                             R35 R27
      901 CALL                             R35 0 1
      902 JUMPIFNOT                        R35 ; [+5]
      903 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      905 LOADK                            R36 K207 ["validataHSR_HSRMeshIdsMismatch"]
      906 SETTABLEKS                       R36 R35 K207 ["validataHSR_HSRMeshIdsMismatch"]
      908 MOVE                             R35 R29
      909 CALL                             R35 0 1
      910 JUMPIFNOT                        R35 ; [+45]
      911 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      913 LOADK                            R36 K208 ["validateMakeupDecal_FailedToLoadTexture"]
      914 SETTABLEKS                       R36 R35 K208 ["validateMakeupDecal_FailedToLoadTexture"]
      916 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      918 LOADK                            R36 K209 ["validateMakeupDecal_NoColorMap"]
      919 SETTABLEKS                       R36 R35 K209 ["validateMakeupDecal_NoColorMap"]
      921 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      923 LOADK                            R36 K210 ["validateMakeupDecal_UVZoneError"]
      924 SETTABLEKS                       R36 R35 K210 ["validateMakeupDecal_UVZoneError"]
      926 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      928 LOADK                            R36 K211 ["validateWrapTextureTransfer_FailedToLoadCage"]
      929 SETTABLEKS                       R36 R35 K211 ["validateWrapTextureTransfer_FailedToLoadCage"]
      931 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      933 LOADK                            R36 K212 ["validateWrapTextureTransfer_NoCage"]
      934 SETTABLEKS                       R36 R35 K212 ["validateWrapTextureTransfer_NoCage"]
      936 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      938 LOADK                            R36 K213 ["validateWrapTextureTransfer_FailedToLoadUV"]
      939 SETTABLEKS                       R36 R35 K213 ["validateWrapTextureTransfer_FailedToLoadUV"]
      941 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      943 LOADK                            R36 K214 ["validateWrapTextureTransfer_InvalidUV"]
      944 SETTABLEKS                       R36 R35 K214 ["validateWrapTextureTransfer_InvalidUV"]
      946 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      948 LOADK                            R36 K215 ["validateWrapTextureTransfer_InvalidMinBound"]
      949 SETTABLEKS                       R36 R35 K215 ["validateWrapTextureTransfer_InvalidMinBound"]
      951 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      953 LOADK                            R36 K216 ["validateWrapTextureTransfer_InvalidMaxBound"]
      954 SETTABLEKS                       R36 R35 K216 ["validateWrapTextureTransfer_InvalidMaxBound"]
      956 MOVE                             R35 R14
      957 CALL                             R35 0 1
      958 JUMPIFNOT                        R35 ; [+10]
      959 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      961 LOADK                            R36 K217 ["validateFACSJointTransformsWithinBounds_Error"]
      962 SETTABLEKS                       R36 R35 K217 ["validateFACSJointTransformsWithinBounds_Error"]
      964 GETTABLEKS                       R35 R34 K157 ["ErrorType"]
      966 LOADK                            R36 K218 ["validateFACSJointTransformsWithinBounds_OOB"]
      967 SETTABLEKS                       R36 R35 K218 ["validateFACSJointTransformsWithinBounds_OOB"]
      969 GETTABLEKS                       R36 R34 K157 ["ErrorType"]
      971 DUPTABLE                         R37 K220 [{"__index"}]
      972 DUPCLOSURE                       R38 K221 [PROTO_1]
      973 SETTABLEKS                       R38 R37 K219 ["__index"]
      975 FASTCALL2                        SETMETATABLE R36 R37 ; [+3]
      977 GETIMPORT                        R35 K223 [setmetatable]
      979 CALL                             R35 2 0
      980 NEWTABLE                         R35 0 0
      982 SETTABLEKS                       R35 R34 K224 ["metadata"]
      984 DUPCLOSURE                       R35 K225 [PROTO_2]
      985 CAPTURE                          VAL R34
      986 SETTABLEKS                       R35 R34 K226 ["setMetadata"]
      988 DUPCLOSURE                       R35 K227 [PROTO_3]
      989 CAPTURE                          VAL R8
      990 CAPTURE                          VAL R2
      991 SETTABLEKS                       R35 R34 K228 ["shouldReportIECTelemetry"]
      993 DUPCLOSURE                       R35 K229 [PROTO_4]
      994 CAPTURE                          VAL R34
      995 CAPTURE                          VAL R3
      996 SETTABLEKS                       R35 R34 K230 ["reportCounter"]
      998 DUPCLOSURE                       R35 K231 [PROTO_5]
      999 CAPTURE                          VAL R2
     1000 CAPTURE                          VAL R33
     1001 CAPTURE                          VAL R34
     1002 CAPTURE                          VAL R5
     1003 CAPTURE                          VAL R4
     1004 CAPTURE                          VAL R3
     1005 SETTABLEKS                       R35 R34 K232 ["reportFailure"]
     1007 DUPCLOSURE                       R35 K233 [PROTO_6]
     1008 CAPTURE                          VAL R2
     1009 CAPTURE                          VAL R33
     1010 CAPTURE                          VAL R34
     1011 CAPTURE                          VAL R5
     1012 CAPTURE                          VAL R4
     1013 SETTABLEKS                       R35 R34 K234 ["reportThumbnailing"]
     1015 DUPCLOSURE                       R35 K235 [PROTO_7]
     1016 CAPTURE                          VAL R6
     1017 SETTABLEKS                       R35 R34 K236 ["recordScriptTime"]
     1019 DUPCLOSURE                       R35 K237 [PROTO_8]
     1020 CAPTURE                          VAL R6
     1021 CAPTURE                          VAL R2
     1022 CAPTURE                          VAL R34
     1023 CAPTURE                          VAL R3
     1024 SETTABLEKS                       R35 R34 K238 ["reportScriptTimes"]
     1026 RETURN                           R34 1
