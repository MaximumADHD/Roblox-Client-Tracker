PROTO_0:
  PREPVARARGS 0
  NEWTABLE R0 0 0
  LOADN R3 1
  LOADK R5 K0 ["#"]
  FASTCALL1 SELECT_VARARG R5 [+3]
  GETIMPORT R4 K2 [select]
  GETVARARGS R6 -1
  CALL R4 -1 1
  MOVE R1 R4
  LOADN R2 1
  FORNPREP R1
  GETIMPORT R4 K2 [select]
  MOVE R5 R3
  GETVARARGS R6 -1
  CALL R4 -1 3
  FORGPREP R4
  SETTABLE R8 R0 R7
  FORGLOOP R4 2 [-2]
  FORNLOOP R1
  RETURN R0 1

PROTO_1:
  LOADK R3 K0 ["UNREGISTERED_%*"]
  MOVE R5 R1
  NAMECALL R3 R3 K1 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  RETURN R2 1

PROTO_2:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  FASTCALL1 TOSTRING R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K1 [tostring]
  CALL R7 1 1
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-7]
  GETUPVAL R2 0
  SETTABLEKS R1 R2 K2 ["metadata"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  JUMPIF R0 [+2]
  LOADB R1 0
  RETURN R1 1
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["IsStudio"]
  CALL R1 1 1
  JUMPIF R1 [+6]
  GETTABLEKS R1 R0 K1 ["allowEditableInstances"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K2 ["isServer"]
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  LOADB R1 1
  RETURN R1 1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["shouldReportIECTelemetry"]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIFNOT R3 [+6]
  GETUPVAL R3 1
  MOVE R5 R0
  MOVE R6 R1
  NAMECALL R3 R3 K1 ["ReportUGCValidationCounter"]
  CALL R3 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R4 0
  NAMECALL R4 R4 K0 ["IsStudio"]
  CALL R4 1 1
  JUMPIFNOT R4 [+2]
  LOADK R3 K1 ["studio"]
  JUMP [+1]
  LOADK R3 K2 ["rcc"]
  GETUPVAL R4 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["metadata"]
  MOVE R6 R1
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  DUPTABLE R7 K9 [{"errorType", "studioSid", "clientId", "placeId", "userId"}]
  SETTABLEKS R0 R7 K4 ["errorType"]
  GETUPVAL R8 3
  NAMECALL R8 R8 K10 ["GetSessionId"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K5 ["studioSid"]
  GETUPVAL R8 3
  NAMECALL R8 R8 K11 ["GetClientId"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K6 ["clientId"]
  GETIMPORT R9 K13 [game]
  GETTABLEKS R8 R9 K14 ["PlaceId"]
  SETTABLEKS R8 R7 K7 ["placeId"]
  GETUPVAL R9 4
  JUMPIFNOT R9 [+5]
  GETUPVAL R8 4
  NAMECALL R8 R8 K15 ["GetUserId"]
  CALL R8 1 1
  JUMP [+1]
  LOADN R8 0
  SETTABLEKS R8 R7 K8 ["userId"]
  CALL R4 3 1
  GETUPVAL R5 3
  MOVE R7 R3
  LOADK R8 K16 ["ugcValidation"]
  LOADK R9 K17 ["failure"]
  MOVE R10 R4
  NAMECALL R5 R5 K18 ["SendEventDeferred"]
  CALL R5 5 0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K19 ["shouldReportIECTelemetry"]
  MOVE R6 R2
  CALL R5 1 1
  JUMPIFNOT R5 [+5]
  GETUPVAL R5 5
  MOVE R7 R0
  NAMECALL R5 R5 K20 ["ReportUGCValidationFailureTelemetry"]
  CALL R5 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  NAMECALL R3 R3 K0 ["IsStudio"]
  CALL R3 1 1
  JUMPIFNOT R3 [+2]
  LOADK R2 K1 ["studio"]
  JUMP [+1]
  LOADK R2 K2 ["rcc"]
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["metadata"]
  MOVE R5 R1
  JUMPIF R5 [+2]
  NEWTABLE R5 0 0
  DUPTABLE R6 K9 [{"time", "studioSid", "clientId", "placeId", "userId"}]
  SETTABLEKS R0 R6 K4 ["time"]
  GETUPVAL R7 3
  NAMECALL R7 R7 K10 ["GetSessionId"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K5 ["studioSid"]
  GETUPVAL R7 3
  NAMECALL R7 R7 K11 ["GetClientId"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K6 ["clientId"]
  GETIMPORT R8 K13 [game]
  GETTABLEKS R7 R8 K14 ["PlaceId"]
  SETTABLEKS R7 R6 K7 ["placeId"]
  GETUPVAL R8 4
  JUMPIFNOT R8 [+5]
  GETUPVAL R7 4
  NAMECALL R7 R7 K15 ["GetUserId"]
  CALL R7 1 1
  JUMP [+1]
  LOADN R7 0
  SETTABLEKS R7 R6 K8 ["userId"]
  CALL R3 3 1
  GETUPVAL R4 3
  MOVE R6 R2
  LOADK R7 K16 ["ugcValidation"]
  LOADK R8 K17 ["thumbnailing"]
  MOVE R9 R3
  NAMECALL R4 R4 K18 ["SendEventDeferred"]
  CALL R4 5 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R3 R2 K0 ["scriptTimes"]
  JUMPIF R3 [+4]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K0 ["scriptTimes"]
  GETTABLEKS R3 R2 K0 ["scriptTimes"]
  GETTABLE R4 R3 R0
  JUMPIF R4 [+2]
  LOADN R4 0
  SETTABLE R4 R3 R0
  GETIMPORT R5 K2 [tick]
  CALL R5 0 1
  SUB R4 R5 R1
  GETTABLE R5 R3 R0
  ADD R5 R5 R4
  SETTABLE R5 R3 R0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETTABLEKS R1 R0 K0 ["isServer"]
  JUMPIFNOT R1 [+70]
  GETUPVAL R1 1
  NAMECALL R1 R1 K1 ["IsStudio"]
  CALL R1 1 1
  JUMPIF R1 [+65]
  GETTABLEKS R1 R0 K2 ["scriptTimes"]
  JUMPIFNOT R1 [+62]
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+44]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K3 ["metadata"]
  FASTCALL2K ASSERT R2 K4 [+4]
  LOADK R3 K4 ["Metadata is never nil"]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K3 ["metadata"]
  GETTABLEKS R1 R2 K7 ["entrypoint"]
  LOADK R2 K8 ["FullBody"]
  GETTABLEKS R3 R0 K9 ["assetTypeEnum"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R0 K9 ["assetTypeEnum"]
  GETTABLEKS R2 R3 K10 ["Name"]
  JUMP [+13]
  JUMPIFNOT R1 [+12]
  FASTCALL1 TYPE R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K12 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K13 ["string"] [+6]
  LENGTH R3 R1
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+2]
  MOVE R2 R1
  GETUPVAL R3 4
  MOVE R5 R2
  GETTABLEKS R6 R0 K2 ["scriptTimes"]
  NAMECALL R3 R3 K14 ["ReportUGCValidationTelemetry"]
  CALL R3 3 0
  RETURN R0 0
  GETUPVAL R1 4
  GETTABLEKS R4 R0 K9 ["assetTypeEnum"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R0 K9 ["assetTypeEnum"]
  GETTABLEKS R3 R4 K10 ["Name"]
  JUMP [+1]
  LOADK R3 K8 ["FullBody"]
  GETTABLEKS R4 R0 K2 ["scriptTimes"]
  NAMECALL R1 R1 K14 ["ReportUGCValidationTelemetry"]
  CALL R1 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["util"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K8 [game]
  LOADK R4 K9 ["RunService"]
  NAMECALL R2 R2 K10 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K8 [game]
  LOADK R5 K11 ["UGCValidationService"]
  NAMECALL R3 R3 K10 ["GetService"]
  CALL R3 2 1
  NAMECALL R5 R2 K12 ["IsStudio"]
  CALL R5 1 1
  JUMPIFNOT R5 [+7]
  GETIMPORT R4 K8 [game]
  LOADK R6 K13 ["StudioService"]
  NAMECALL R4 R4 K10 ["GetService"]
  CALL R4 2 1
  JUMP [+1]
  LOADNIL R4
  GETIMPORT R5 K8 [game]
  LOADK R7 K14 ["RbxAnalyticsService"]
  NAMECALL R5 R5 K10 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K15 ["flags"]
  GETTABLEKS R7 R8 K16 ["getEngineFeatureEngineUGCValidationReportScriptTime"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K15 ["flags"]
  GETTABLEKS R8 R9 K17 ["getEngineFeatureUGCValidateCageMeshDistance"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K15 ["flags"]
  GETTABLEKS R9 R10 K18 ["getEngineFeatureEngineUGCValidationIECTelemetry"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R0 K15 ["flags"]
  GETTABLEKS R10 R11 K19 ["getEngineFeatureEngineUGCValidationCageUVDuplicates"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K15 ["flags"]
  GETTABLEKS R11 R12 K20 ["getEngineFeatureEngineUGCValidateLCCagesVerticesSimilarity"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K15 ["flags"]
  GETTABLEKS R12 R13 K21 ["getEngineFeatureEngineUGCValidateLCCagingRelevancy"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R14 R0 K15 ["flags"]
  GETTABLEKS R13 R14 K22 ["getEngineFeatureEngineUGCValidateRigidNonSkinned"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R15 R0 K15 ["flags"]
  GETTABLEKS R14 R15 K23 ["getFFlagUGCValidatePartSizeWithinRenderSizeLimits"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R16 R0 K15 ["flags"]
  GETTABLEKS R15 R16 K24 ["getFFlagUGCValidateLCHandleScale"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R17 R0 K15 ["flags"]
  GETTABLEKS R16 R17 K25 ["getFFlagUGCValidatePartMass"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R18 R0 K15 ["flags"]
  GETTABLEKS R17 R18 K26 ["getFFlagUGCValidateMeshMin"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R19 R0 K15 ["flags"]
  GETTABLEKS R18 R19 K27 ["getFFlagUGCValidateUseAnalyticsEntryPoint"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R20 R0 K15 ["flags"]
  GETTABLEKS R19 R20 K28 ["getEngineFeatureUGCValidateExtraShoesTests"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R21 R0 K15 ["flags"]
  GETTABLEKS R20 R21 K29 ["getEngineFeatureUGCValidateBodyPartCageMeshDistance"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R22 R0 K15 ["flags"]
  GETTABLEKS R21 R22 K30 ["getEngineFeatureUGCValidateBodyMaxCageMeshDistance"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R23 R0 K15 ["flags"]
  GETTABLEKS R22 R23 K31 ["getFFlagUGCValidateIndividualPartBBoxes"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R24 R0 K15 ["flags"]
  GETTABLEKS R23 R24 K32 ["getFFlagRefactorBodyAttachmentOrientationsCheck"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R25 R0 K15 ["flags"]
  GETTABLEKS R24 R25 K33 ["getFFlagValidateDeformedLayeredClothingIsInBounds"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R26 R0 K15 ["flags"]
  GETTABLEKS R25 R26 K34 ["getFFlagReportVisibilityAndIslandTelemetry"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R27 R0 K15 ["flags"]
  GETTABLEKS R26 R27 K35 ["getFFlagUGCValidateEmoteAnimationExtendedTests"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R28 R0 K15 ["flags"]
  GETTABLEKS R27 R28 K36 ["getFFlagCheckAccessoryMeshSize"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R29 R0 K15 ["flags"]
  GETTABLEKS R28 R29 K37 ["getFFlagCheckBodyPartMeshSize"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R30 R0 K15 ["flags"]
  GETTABLEKS R29 R30 K38 ["getFFlagCheckLayeredClothingMeshSize"]
  CALL R28 1 1
  GETIMPORT R29 K4 [require]
  GETTABLEKS R31 R0 K15 ["flags"]
  GETTABLEKS R30 R31 K39 ["getEngineFeatureUGCValidationFullBodyFacs"]
  CALL R29 1 1
  GETIMPORT R30 K4 [require]
  GETTABLEKS R32 R0 K15 ["flags"]
  GETTABLEKS R31 R32 K40 ["getEngineFeatureEngineUGCValidateBodyPartsSkinnedToR15"]
  CALL R30 1 1
  GETIMPORT R31 K4 [require]
  GETTABLEKS R33 R0 K15 ["flags"]
  GETTABLEKS R32 R33 K41 ["getFFlagUGCValidateIncorrectNumericalData"]
  CALL R31 1 1
  GETIMPORT R32 K4 [require]
  GETTABLEKS R34 R0 K15 ["flags"]
  GETTABLEKS R33 R34 K42 ["getFFlagUGCValidateRestrictAnimationMovement"]
  CALL R32 1 1
  GETIMPORT R33 K4 [require]
  GETTABLEKS R35 R0 K15 ["flags"]
  GETTABLEKS R34 R35 K43 ["getEngineUGCValidateRelativeSkinningTransfer"]
  CALL R33 1 1
  GETIMPORT R34 K4 [require]
  GETTABLEKS R36 R0 K15 ["flags"]
  GETTABLEKS R35 R36 K44 ["getFFlagUGCValidateStopNaNsInfsInAnimationKeys"]
  CALL R34 1 1
  GETIMPORT R35 K4 [require]
  GETTABLEKS R37 R0 K15 ["flags"]
  GETTABLEKS R36 R37 K45 ["getFFlagUGCValidateStopNaNsInfsInCalculatedData"]
  CALL R35 1 1
  GETIMPORT R36 K4 [require]
  GETTABLEKS R38 R0 K15 ["flags"]
  GETTABLEKS R37 R38 K46 ["getEngineFeatureEngineUGCIsValidR15AnimationRigCheck"]
  CALL R36 1 1
  GETIMPORT R37 K4 [require]
  GETTABLEKS R39 R0 K15 ["flags"]
  GETTABLEKS R38 R39 K47 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
  CALL R37 1 1
  GETIMPORT R38 K4 [require]
  GETTABLEKS R40 R0 K15 ["flags"]
  GETTABLEKS R39 R40 K48 ["getEngineFeatureUGCValidateCheckHSRFileData"]
  CALL R38 1 1
  DUPCLOSURE R39 K49 [PROTO_0]
  NEWTABLE R40 16 0
  NEWTABLE R41 128 0
  LOADK R42 K50 ["resetPhysicsData_FailedToLoadMesh"]
  SETTABLEKS R42 R41 K50 ["resetPhysicsData_FailedToLoadMesh"]
  MOVE R43 R24
  CALL R43 0 1
  JUMPIFNOT R43 [+2]
  LOADK R42 K51 ["validateAccurateBoundingBox"]
  JUMP [+1]
  LOADNIL R42
  SETTABLEKS R42 R41 K51 ["validateAccurateBoundingBox"]
  LOADK R42 K52 ["validateAssetBounds_AssetSizeTooBig"]
  SETTABLEKS R42 R41 K52 ["validateAssetBounds_AssetSizeTooBig"]
  LOADK R42 K53 ["validateAssetBounds_AssetSizeTooSmall"]
  SETTABLEKS R42 R41 K53 ["validateAssetBounds_AssetSizeTooSmall"]
  LOADK R42 K54 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
  SETTABLEKS R42 R41 K54 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
  LOADK R42 K55 ["validateScaleType_InvalidAvatarPartScaleType"]
  SETTABLEKS R42 R41 K55 ["validateScaleType_InvalidAvatarPartScaleType"]
  LOADK R42 K56 ["validateAssetCreator_DependencyNotOwnedByCreator"]
  SETTABLEKS R42 R41 K56 ["validateAssetCreator_DependencyNotOwnedByCreator"]
  LOADK R42 K57 ["validateAssetCreator_FailedToLoad"]
  SETTABLEKS R42 R41 K57 ["validateAssetCreator_FailedToLoad"]
  LOADK R42 K58 ["validateAssetCreator_TooManyDependencies"]
  SETTABLEKS R42 R41 K58 ["validateAssetCreator_TooManyDependencies"]
  MOVE R43 R24
  CALL R43 0 1
  JUMPIFNOT R43 [+2]
  LOADK R42 K59 ["validateAssetTransparency_AssetTransparencyThresholds"]
  JUMP [+1]
  LOADNIL R42
  SETTABLEKS R42 R41 K59 ["validateAssetTransparency_AssetTransparencyThresholds"]
  LOADK R42 K60 ["validateAttributes"]
  SETTABLEKS R42 R41 K60 ["validateAttributes"]
  MOVE R43 R22
  CALL R43 0 1
  JUMPIFNOT R43 [+2]
  LOADNIL R42
  JUMP [+1]
  LOADK R42 K61 ["validateBodyPartChildAttachmentBounds_AttachmentRotated"]
  SETTABLEKS R42 R41 K61 ["validateBodyPartChildAttachmentBounds_AttachmentRotated"]
  LOADK R42 K62 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
  SETTABLEKS R42 R41 K62 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
  LOADK R42 K63 ["validateBodyPartCollisionFidelity"]
  SETTABLEKS R42 R41 K63 ["validateBodyPartCollisionFidelity"]
  LOADK R42 K64 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
  SETTABLEKS R42 R41 K64 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
  LOADK R42 K65 ["validateCageMeshIntersection_AverageOuterCageToMeshVertDistances"]
  SETTABLEKS R42 R41 K65 ["validateCageMeshIntersection_AverageOuterCageToMeshVertDistances"]
  LOADK R42 K66 ["validateCageMeshIntersection_FailedToExecute"]
  SETTABLEKS R42 R41 K66 ["validateCageMeshIntersection_FailedToExecute"]
  LOADK R42 K67 ["validateCageMeshIntersection_Intersection"]
  SETTABLEKS R42 R41 K67 ["validateCageMeshIntersection_Intersection"]
  LOADK R42 K68 ["validateCageMeshIntersection_InvalidRefMeshId"]
  SETTABLEKS R42 R41 K68 ["validateCageMeshIntersection_InvalidRefMeshId"]
  LOADK R42 K69 ["validateCageMeshIntersection_IrrelevantCageModified"]
  SETTABLEKS R42 R41 K69 ["validateCageMeshIntersection_IrrelevantCageModified"]
  LOADK R42 K70 ["validateCageMeshIntersection_OuterCageFarExtendedFromMesh"]
  SETTABLEKS R42 R41 K70 ["validateCageMeshIntersection_OuterCageFarExtendedFromMesh"]
  LOADK R42 K71 ["validateCageNonManifoldAndHoles_CageHoles"]
  SETTABLEKS R42 R41 K71 ["validateCageNonManifoldAndHoles_CageHoles"]
  LOADK R42 K72 ["validateCageNonManifoldAndHoles_FailedToExecute"]
  SETTABLEKS R42 R41 K72 ["validateCageNonManifoldAndHoles_FailedToExecute"]
  LOADK R42 K73 ["validateCageNonManifoldAndHoles_NonManifold"]
  SETTABLEKS R42 R41 K73 ["validateCageNonManifoldAndHoles_NonManifold"]
  LOADK R42 K74 ["validateCageUVs_TestExecutedSuccessfully"]
  SETTABLEKS R42 R41 K74 ["validateCageUVs_TestExecutedSuccessfully"]
  LOADK R42 K75 ["validateCageUVs_TestPassed"]
  SETTABLEKS R42 R41 K75 ["validateCageUVs_TestPassed"]
  LOADK R42 K76 ["validateCageUVTriangleArea_FailedToLoadMesh"]
  SETTABLEKS R42 R41 K76 ["validateCageUVTriangleArea_FailedToLoadMesh"]
  LOADK R42 K77 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
  SETTABLEKS R42 R41 K77 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
  LOADK R42 K78 ["validateCageUVValues_FailedToLoadMesh"]
  SETTABLEKS R42 R41 K78 ["validateCageUVValues_FailedToLoadMesh"]
  LOADK R42 K79 ["validateCageUVValues_UnexpectedUVValue"]
  SETTABLEKS R42 R41 K79 ["validateCageUVValues_UnexpectedUVValue"]
  LOADK R42 K80 ["validateCanLoad"]
  SETTABLEKS R42 R41 K80 ["validateCanLoad"]
  LOADK R42 K81 ["validateDependencies_IsNotApproved"]
  SETTABLEKS R42 R41 K81 ["validateDependencies_IsNotApproved"]
  LOADK R42 K82 ["validateDependencies_IsRestrictedUserId"]
  SETTABLEKS R42 R41 K82 ["validateDependencies_IsRestrictedUserId"]
  LOADK R42 K83 ["validateDependencies_IsReviewing"]
  SETTABLEKS R42 R41 K83 ["validateDependencies_IsReviewing"]
  LOADK R42 K84 ["validateDependencies_ParseFailure"]
  SETTABLEKS R42 R41 K84 ["validateDependencies_ParseFailure"]
  LOADK R42 K85 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
  SETTABLEKS R42 R41 K85 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
  LOADK R42 K86 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
  SETTABLEKS R42 R41 K86 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
  LOADK R42 K87 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
  SETTABLEKS R42 R41 K87 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
  LOADK R42 K88 ["validateDescendantMeshMetrics_NoSkinningInfo"]
  SETTABLEKS R42 R41 K88 ["validateDescendantMeshMetrics_NoSkinningInfo"]
  LOADK R42 K89 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
  SETTABLEKS R42 R41 K89 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
  LOADK R42 K90 ["validateDescendantMeshMetrics_TooManyTriangles"]
  SETTABLEKS R42 R41 K90 ["validateDescendantMeshMetrics_TooManyTriangles"]
  LOADK R42 K91 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
  SETTABLEKS R42 R41 K91 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
  LOADK R42 K92 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
  SETTABLEKS R42 R41 K92 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
  LOADK R42 K93 ["validateFullBody_IncorrectAssetTypeSet"]
  SETTABLEKS R42 R41 K93 ["validateFullBody_IncorrectAssetTypeSet"]
  LOADK R42 K94 ["validateFullBody_InstancesMissing"]
  SETTABLEKS R42 R41 K94 ["validateFullBody_InstancesMissing"]
  LOADK R42 K95 ["validateFullBodyCageDeletion_FailedToExecute"]
  SETTABLEKS R42 R41 K95 ["validateFullBodyCageDeletion_FailedToExecute"]
  LOADK R42 K96 ["validateFullBodyCageDeletion_GeometryRemoved"]
  SETTABLEKS R42 R41 K96 ["validateFullBodyCageDeletion_GeometryRemoved"]
  LOADK R42 K97 ["validateFullBody_MeshIdsMissing"]
  SETTABLEKS R42 R41 K97 ["validateFullBody_MeshIdsMissing"]
  LOADK R42 K98 ["validateHSR_HSRDataNotReady"]
  SETTABLEKS R42 R41 K98 ["validateHSR_HSRDataNotReady"]
  LOADK R42 K99 ["validateHSR_NoWrapLayer"]
  SETTABLEKS R42 R41 K99 ["validateHSR_NoWrapLayer"]
  LOADK R42 K100 ["validateInstanceTree"]
  SETTABLEKS R42 R41 K100 ["validateInstanceTree"]
  LOADK R42 K101 ["validateInstanceTree_InvalidDescendants"]
  SETTABLEKS R42 R41 K101 ["validateInstanceTree_InvalidDescendants"]
  LOADK R42 K102 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
  SETTABLEKS R42 R41 K102 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
  LOADK R42 K103 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
  SETTABLEKS R42 R41 K103 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
  LOADK R42 K104 ["validateLayeredClothingAccessory_NoInnerCageId"]
  SETTABLEKS R42 R41 K104 ["validateLayeredClothingAccessory_NoInnerCageId"]
  LOADK R42 K105 ["validateLayeredClothingAccessory_NoMeshId"]
  SETTABLEKS R42 R41 K105 ["validateLayeredClothingAccessory_NoMeshId"]
  LOADK R42 K106 ["validateLayeredClothingAccessory_NoOuterCageId"]
  SETTABLEKS R42 R41 K106 ["validateLayeredClothingAccessory_NoOuterCageId"]
  LOADK R42 K107 ["validateLayeredClothingAccessory_NoWrapLayer"]
  SETTABLEKS R42 R41 K107 ["validateLayeredClothingAccessory_NoWrapLayer"]
  LOADK R42 K108 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  SETTABLEKS R42 R41 K108 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  LOADK R42 K109 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  SETTABLEKS R42 R41 K109 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  LOADK R42 K110 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
  SETTABLEKS R42 R41 K110 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
  LOADK R42 K111 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  SETTABLEKS R42 R41 K111 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  LOADK R42 K112 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  SETTABLEKS R42 R41 K112 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  LOADK R42 K113 ["validateLimbsAndTorso_FolderInfoMismatch"]
  SETTABLEKS R42 R41 K113 ["validateLimbsAndTorso_FolderInfoMismatch"]
  LOADK R42 K114 ["validateLimbsAndTorso_R6FolderHasChildren"]
  SETTABLEKS R42 R41 K114 ["validateLimbsAndTorso_R6FolderHasChildren"]
  LOADK R42 K115 ["validateLimbsAndTorso_TopLevelFolders"]
  SETTABLEKS R42 R41 K115 ["validateLimbsAndTorso_TopLevelFolders"]
  LOADK R42 K116 ["validateMaterials"]
  SETTABLEKS R42 R41 K116 ["validateMaterials"]
  LOADK R42 K117 ["validateMeshBounds_FailedToExecute"]
  SETTABLEKS R42 R41 K117 ["validateMeshBounds_FailedToExecute"]
  LOADK R42 K118 ["validateMeshBounds_FailedToLoadMesh"]
  SETTABLEKS R42 R41 K118 ["validateMeshBounds_FailedToLoadMesh"]
  LOADK R42 K119 ["validateMeshBounds_TooLarge"]
  SETTABLEKS R42 R41 K119 ["validateMeshBounds_TooLarge"]
  LOADK R42 K120 ["validateMeshComparison"]
  SETTABLEKS R42 R41 K120 ["validateMeshComparison"]
  LOADK R42 K121 ["validateMeshPartAccessory_DoubleSided"]
  SETTABLEKS R42 R41 K121 ["validateMeshPartAccessory_DoubleSided"]
  LOADK R42 K122 ["validateMeshPartAccessory_FailedToLoadMesh"]
  SETTABLEKS R42 R41 K122 ["validateMeshPartAccessory_FailedToLoadMesh"]
  LOADK R42 K123 ["validateMeshPartAccessory_NoMeshId"]
  SETTABLEKS R42 R41 K123 ["validateMeshPartAccessory_NoMeshId"]
  LOADK R42 K124 ["validateMeshPartBodyPart_ValidateWithSchema"]
  SETTABLEKS R42 R41 K124 ["validateMeshPartBodyPart_ValidateWithSchema"]
  LOADK R42 K125 ["validateMeshTriangleArea_FailedToLoadMesh"]
  SETTABLEKS R42 R41 K125 ["validateMeshTriangleArea_FailedToLoadMesh"]
  LOADK R42 K126 ["validateMeshTriangleArea_NoArea"]
  SETTABLEKS R42 R41 K126 ["validateMeshTriangleArea_NoArea"]
  LOADK R42 K127 ["validateMeshTriangles_FailedToExecute"]
  SETTABLEKS R42 R41 K127 ["validateMeshTriangles_FailedToExecute"]
  LOADK R42 K128 ["validateMeshTriangles_FailedToLoadMesh"]
  SETTABLEKS R42 R41 K128 ["validateMeshTriangles_FailedToLoadMesh"]
  LOADK R42 K129 ["validateMeshTriangles_TooManyTriangles"]
  SETTABLEKS R42 R41 K129 ["validateMeshTriangles_TooManyTriangles"]
  LOADK R42 K130 ["validateMeshVertexColors_FailedToLoadMesh"]
  SETTABLEKS R42 R41 K130 ["validateMeshVertexColors_FailedToLoadMesh"]
  LOADK R42 K131 ["validateMeshVertexColors_NonNeutralVertexColors"]
  SETTABLEKS R42 R41 K131 ["validateMeshVertexColors_NonNeutralVertexColors"]
  LOADK R42 K132 ["validateMisMatchUV_FailedToExecute"]
  SETTABLEKS R42 R41 K132 ["validateMisMatchUV_FailedToExecute"]
  LOADK R42 K133 ["validateMisMatchUV_UVMismatch"]
  SETTABLEKS R42 R41 K133 ["validateMisMatchUV_UVMismatch"]
  LOADK R42 K134 ["validateModeration_AssetsHaveNotPassedModeration"]
  SETTABLEKS R42 R41 K134 ["validateModeration_AssetsHaveNotPassedModeration"]
  LOADK R42 K135 ["validateModeration_CouldNotFetchModerationDetails"]
  SETTABLEKS R42 R41 K135 ["validateModeration_CouldNotFetchModerationDetails"]
  LOADK R42 K136 ["validateModeration_FailedToParse"]
  SETTABLEKS R42 R41 K136 ["validateModeration_FailedToParse"]
  LOADK R42 K137 ["validateModeration_ValidateUser"]
  SETTABLEKS R42 R41 K137 ["validateModeration_ValidateUser"]
  LOADK R42 K138 ["validateOverlappingVertices_FailedToExecute"]
  SETTABLEKS R42 R41 K138 ["validateOverlappingVertices_FailedToExecute"]
  LOADK R42 K139 ["validateOverlappingVertices_OverlappingVertices"]
  SETTABLEKS R42 R41 K139 ["validateOverlappingVertices_OverlappingVertices"]
  LOADK R42 K140 ["validatePackage_FailedToParse"]
  SETTABLEKS R42 R41 K140 ["validatePackage_FailedToParse"]
  LOADK R42 K141 ["validateProperties_PropertyDoesNotExist"]
  SETTABLEKS R42 R41 K141 ["validateProperties_PropertyDoesNotExist"]
  LOADK R42 K142 ["validateProperties_PropertyMismatch"]
  SETTABLEKS R42 R41 K142 ["validateProperties_PropertyMismatch"]
  LOADK R42 K143 ["validateSingleInstance_MultipleInstances"]
  SETTABLEKS R42 R41 K143 ["validateSingleInstance_MultipleInstances"]
  LOADK R42 K144 ["validateSingleInstance_ZeroInstances"]
  SETTABLEKS R42 R41 K144 ["validateSingleInstance_ZeroInstances"]
  LOADK R42 K145 ["validateSurfaceAppearances_InvalidAlphaMode"]
  SETTABLEKS R42 R41 K145 ["validateSurfaceAppearances_InvalidAlphaMode"]
  LOADK R42 K146 ["validateSurfaceAppearances_MeshPartHasTexture"]
  SETTABLEKS R42 R41 K146 ["validateSurfaceAppearances_MeshPartHasTexture"]
  LOADK R42 K147 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
  SETTABLEKS R42 R41 K147 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
  LOADK R42 K148 ["validateTags"]
  SETTABLEKS R42 R41 K148 ["validateTags"]
  LOADK R42 K149 ["validateTextureSize_FailedToExecute"]
  SETTABLEKS R42 R41 K149 ["validateTextureSize_FailedToExecute"]
  LOADK R42 K150 ["validateTextureSize_FailedToLoadTexture"]
  SETTABLEKS R42 R41 K150 ["validateTextureSize_FailedToLoadTexture"]
  LOADK R42 K151 ["validateTextureSize_InvalidTextureId"]
  SETTABLEKS R42 R41 K151 ["validateTextureSize_InvalidTextureId"]
  LOADK R42 K152 ["validateTextureSize_TextureTooBig"]
  SETTABLEKS R42 R41 K152 ["validateTextureSize_TextureTooBig"]
  LOADK R42 K153 ["validateTextureTransparency_InvalidTextureId"]
  SETTABLEKS R42 R41 K153 ["validateTextureTransparency_InvalidTextureId"]
  LOADK R42 K154 ["validateTextureTransparency_TransparentTexture"]
  SETTABLEKS R42 R41 K154 ["validateTextureTransparency_TransparentTexture"]
  LOADK R42 K155 ["validateThumbnailConfiguration_InvalidTarget"]
  SETTABLEKS R42 R41 K155 ["validateThumbnailConfiguration_InvalidTarget"]
  LOADK R42 K156 ["validateThumbnailConfiguration_OutsideView"]
  SETTABLEKS R42 R41 K156 ["validateThumbnailConfiguration_OutsideView"]
  LOADK R42 K157 ["validateUVSpace_FailedToExecute"]
  SETTABLEKS R42 R41 K157 ["validateUVSpace_FailedToExecute"]
  LOADK R42 K158 ["validateUVSpace_InvalidUVSpace"]
  SETTABLEKS R42 R41 K158 ["validateUVSpace_InvalidUVSpace"]
  LOADK R42 K159 ["validateVertexDensity_FailedToExecute"]
  SETTABLEKS R42 R41 K159 ["validateVertexDensity_FailedToExecute"]
  LOADK R42 K160 ["validateVertexDensity_MaxDensityExceeded"]
  SETTABLEKS R42 R41 K160 ["validateVertexDensity_MaxDensityExceeded"]
  LOADK R42 K161 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
  SETTABLEKS R42 R41 K161 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
  LOADK R42 K162 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
  SETTABLEKS R42 R41 K162 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
  LOADK R42 K163 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
  SETTABLEKS R42 R41 K163 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
  LOADK R42 K164 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
  SETTABLEKS R42 R41 K164 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
  LOADK R42 K165 ["validateBodyPart_CageOriginOutOfBounds"]
  SETTABLEKS R42 R41 K165 ["validateBodyPart_CageOriginOutOfBounds"]
  LOADK R42 K166 ["validateTotalSurfaceArea_FailedToExecute"]
  SETTABLEKS R42 R41 K166 ["validateTotalSurfaceArea_FailedToExecute"]
  LOADK R42 K167 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
  SETTABLEKS R42 R41 K167 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
  LOADK R42 K168 ["validateCoplanarIntersection_FailedToExecute"]
  SETTABLEKS R42 R41 K168 ["validateCoplanarIntersection_FailedToExecute"]
  LOADK R42 K169 ["validateCoplanarIntersection_CoplanarIntersection"]
  SETTABLEKS R42 R41 K169 ["validateCoplanarIntersection_CoplanarIntersection"]
  SETTABLEKS R41 R40 K170 ["ErrorType"]
  MOVE R41 R29
  CALL R41 0 1
  JUMPIFNOT R41 [+10]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K171 ["validateEachBodyPartFacsBounds_FailedToExecute"]
  SETTABLEKS R42 R41 K171 ["validateEachBodyPartFacsBounds_FailedToExecute"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K172 ["validateEachBodyPartFacsBounds_ExtendedBounds"]
  SETTABLEKS R42 R41 K172 ["validateEachBodyPartFacsBounds_ExtendedBounds"]
  MOVE R41 R10
  CALL R41 0 1
  JUMPIFNOT R41 [+10]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K173 ["validateVerticesSimilarity_FailedToExecute"]
  SETTABLEKS R42 R41 K173 ["validateVerticesSimilarity_FailedToExecute"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K174 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
  SETTABLEKS R42 R41 K174 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
  MOVE R41 R11
  CALL R41 0 1
  JUMPIFNOT R41 [+10]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K175 ["validateCagingRelevancy_FailedToExecute"]
  SETTABLEKS R42 R41 K175 ["validateCagingRelevancy_FailedToExecute"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K176 ["validateCagingRelevancy_IrrelevantCaging"]
  SETTABLEKS R42 R41 K176 ["validateCagingRelevancy_IrrelevantCaging"]
  MOVE R41 R7
  CALL R41 0 1
  JUMPIFNOT R41 [+10]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K177 ["validateCageMeshDistance_FailedToExecute"]
  SETTABLEKS R42 R41 K177 ["validateCageMeshDistance_FailedToExecute"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K178 ["validateCageMeshDistance_OuterCageToMeshDistance"]
  SETTABLEKS R42 R41 K178 ["validateCageMeshDistance_OuterCageToMeshDistance"]
  MOVE R41 R9
  CALL R41 0 1
  JUMPIFNOT R41 [+10]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K179 ["validateCageUVDuplicate_FailedToExecute"]
  SETTABLEKS R42 R41 K179 ["validateCageUVDuplicate_FailedToExecute"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K180 ["validateCageUVDuplicate_UnexpectedUVValue"]
  SETTABLEKS R42 R41 K180 ["validateCageUVDuplicate_UnexpectedUVValue"]
  MOVE R41 R18
  CALL R41 0 1
  JUMPIFNOT R41 [+30]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K181 ["validateExcludedModifiedCageUVs_FailedToExecute"]
  SETTABLEKS R42 R41 K181 ["validateExcludedModifiedCageUVs_FailedToExecute"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K182 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
  SETTABLEKS R42 R41 K182 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K183 ["validateMainModifiedCageUVs_FailedToExecute"]
  SETTABLEKS R42 R41 K183 ["validateMainModifiedCageUVs_FailedToExecute"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K184 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
  SETTABLEKS R42 R41 K184 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K185 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
  SETTABLEKS R42 R41 K185 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K186 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
  SETTABLEKS R42 R41 K186 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
  MOVE R41 R19
  CALL R41 0 1
  JUMPIF R41 [+3]
  MOVE R41 R20
  CALL R41 0 1
  JUMPIFNOT R41 [+10]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K187 ["validateBodyPartCage_FailedToExecute"]
  SETTABLEKS R42 R41 K187 ["validateBodyPartCage_FailedToExecute"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K188 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
  SETTABLEKS R42 R41 K188 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
  MOVE R41 R13
  CALL R41 0 1
  JUMPIFNOT R41 [+5]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K189 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
  SETTABLEKS R42 R41 K189 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
  MOVE R41 R14
  CALL R41 0 1
  JUMPIFNOT R41 [+5]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K190 ["validateLayeredClothingAccessory_HandleIsScaled"]
  SETTABLEKS R42 R41 K190 ["validateLayeredClothingAccessory_HandleIsScaled"]
  MOVE R41 R15
  CALL R41 0 1
  JUMPIFNOT R41 [+5]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K191 ["resetPhysicsData_LargeMass"]
  SETTABLEKS R42 R41 K191 ["resetPhysicsData_LargeMass"]
  MOVE R41 R12
  CALL R41 0 1
  JUMPIFNOT R41 [+10]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K192 ["validateRigidMeshSkinning_FailedToDownload"]
  SETTABLEKS R42 R41 K192 ["validateRigidMeshSkinning_FailedToDownload"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K193 ["validateRigidMeshSkinning_BonesFoundInMesh"]
  SETTABLEKS R42 R41 K193 ["validateRigidMeshSkinning_BonesFoundInMesh"]
  MOVE R41 R16
  CALL R41 0 1
  JUMPIFNOT R41 [+10]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K194 ["validateBodyBlockingTests_ZeroMeshSize"]
  SETTABLEKS R42 R41 K194 ["validateBodyBlockingTests_ZeroMeshSize"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K195 ["validateFullBody_ZeroMeshSize"]
  SETTABLEKS R42 R41 K195 ["validateFullBody_ZeroMeshSize"]
  MOVE R41 R21
  CALL R41 0 1
  JUMPIFNOT R41 [+10]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K196 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
  SETTABLEKS R42 R41 K196 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K197 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
  SETTABLEKS R42 R41 K197 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
  MOVE R41 R22
  CALL R41 0 1
  JUMPIFNOT R41 [+15]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K198 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
  SETTABLEKS R42 R41 K198 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K199 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
  SETTABLEKS R42 R41 K199 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K200 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
  SETTABLEKS R42 R41 K200 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
  MOVE R41 R23
  CALL R41 0 1
  JUMPIFNOT R41 [+10]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K201 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
  SETTABLEKS R42 R41 K201 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K202 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
  SETTABLEKS R42 R41 K202 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
  MOVE R41 R25
  CALL R41 0 1
  JUMPIFNOT R41 [+30]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K203 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
  SETTABLEKS R42 R41 K203 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K204 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
  SETTABLEKS R42 R41 K204 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K205 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
  SETTABLEKS R42 R41 K205 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K206 ["validateCurveAnimation_UnacceptableLength"]
  SETTABLEKS R42 R41 K206 ["validateCurveAnimation_UnacceptableLength"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K207 ["validateCurveAnimation_UnacceptableSizeBounds"]
  SETTABLEKS R42 R41 K207 ["validateCurveAnimation_UnacceptableSizeBounds"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K208 ["validateCurveAnimation_UnacceptableFrameDelta"]
  SETTABLEKS R42 R41 K208 ["validateCurveAnimation_UnacceptableFrameDelta"]
  MOVE R41 R31
  CALL R41 0 1
  JUMPIF R41 [+6]
  MOVE R41 R34
  CALL R41 0 1
  JUMPIF R41 [+3]
  MOVE R41 R35
  CALL R41 0 1
  JUMPIFNOT R41 [+5]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K209 ["validateCurveAnimation_IncorrectNumericalData"]
  SETTABLEKS R42 R41 K209 ["validateCurveAnimation_IncorrectNumericalData"]
  MOVE R41 R32
  CALL R41 0 1
  JUMPIFNOT R41 [+5]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K210 ["validateCurveAnimation_PositionalMovement"]
  SETTABLEKS R42 R41 K210 ["validateCurveAnimation_PositionalMovement"]
  MOVE R41 R36
  CALL R41 0 1
  JUMPIFNOT R41 [+5]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K211 ["validateCurveAnimation_IncorrectAnimationRigData"]
  SETTABLEKS R42 R41 K211 ["validateCurveAnimation_IncorrectAnimationRigData"]
  MOVE R41 R26
  CALL R41 0 1
  JUMPIF R41 [+6]
  MOVE R41 R27
  CALL R41 0 1
  JUMPIF R41 [+3]
  MOVE R41 R28
  CALL R41 0 1
  JUMPIFNOT R41 [+10]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K212 ["validateMeshSizeProperty_FailedToLoadMesh"]
  SETTABLEKS R42 R41 K212 ["validateMeshSizeProperty_FailedToLoadMesh"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K213 ["validateMeshSizeProperty_Mismatch"]
  SETTABLEKS R42 R41 K213 ["validateMeshSizeProperty_Mismatch"]
  MOVE R41 R30
  CALL R41 0 1
  JUMPIFNOT R41 [+10]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K214 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
  SETTABLEKS R42 R41 K214 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K215 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
  SETTABLEKS R42 R41 K215 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
  MOVE R41 R33
  CALL R41 0 1
  JUMPIFNOT R41 [+20]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K216 ["validateSkinningTransfer_FailedToExecute"]
  SETTABLEKS R42 R41 K216 ["validateSkinningTransfer_FailedToExecute"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K217 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
  SETTABLEKS R42 R41 K217 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K218 ["validateSkinningTransfer_SkinningTransferOverride"]
  SETTABLEKS R42 R41 K218 ["validateSkinningTransfer_SkinningTransferOverride"]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K219 ["validateSkinningTransfer_Weights"]
  SETTABLEKS R42 R41 K219 ["validateSkinningTransfer_Weights"]
  MOVE R41 R37
  CALL R41 0 1
  JUMPIFNOT R41 [+5]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K220 ["validatePropertiesSensible_IncorrectPropertiesFound"]
  SETTABLEKS R42 R41 K220 ["validatePropertiesSensible_IncorrectPropertiesFound"]
  MOVE R41 R38
  CALL R41 0 1
  JUMPIFNOT R41 [+5]
  GETTABLEKS R41 R40 K170 ["ErrorType"]
  LOADK R42 K221 ["validateHSR_FileDataInvalid"]
  SETTABLEKS R42 R41 K221 ["validateHSR_FileDataInvalid"]
  GETTABLEKS R42 R40 K170 ["ErrorType"]
  DUPTABLE R43 K223 [{"__index"}]
  DUPCLOSURE R44 K224 [PROTO_1]
  SETTABLEKS R44 R43 K222 ["__index"]
  FASTCALL2 SETMETATABLE R42 R43 [+3]
  GETIMPORT R41 K226 [setmetatable]
  CALL R41 2 0
  NEWTABLE R41 0 0
  SETTABLEKS R41 R40 K227 ["metadata"]
  DUPCLOSURE R41 K228 [PROTO_2]
  CAPTURE VAL R40
  SETTABLEKS R41 R40 K229 ["setMetadata"]
  DUPCLOSURE R41 K230 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R41 R40 K231 ["shouldReportIECTelemetry"]
  DUPCLOSURE R41 K232 [PROTO_4]
  CAPTURE VAL R40
  CAPTURE VAL R3
  SETTABLEKS R41 R40 K233 ["reportCounter"]
  DUPCLOSURE R41 K234 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R39
  CAPTURE VAL R40
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R41 R40 K235 ["reportFailure"]
  DUPCLOSURE R41 K236 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R39
  CAPTURE VAL R40
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R41 R40 K237 ["reportThumbnailing"]
  DUPCLOSURE R41 K238 [PROTO_7]
  CAPTURE VAL R6
  SETTABLEKS R41 R40 K239 ["recordScriptTime"]
  DUPCLOSURE R41 K240 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R40
  CAPTURE VAL R3
  SETTABLEKS R41 R40 K241 ["reportScriptTimes"]
  RETURN R40 1
