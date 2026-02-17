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
  JUMPIFNOT R1 [+51]
  GETUPVAL R1 1
  NAMECALL R1 R1 K1 ["IsStudio"]
  CALL R1 1 1
  JUMPIF R1 [+46]
  GETTABLEKS R1 R0 K2 ["scriptTimes"]
  JUMPIFNOT R1 [+43]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["metadata"]
  FASTCALL2K ASSERT R2 K4 [+4]
  LOADK R3 K4 ["Metadata is never nil"]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  GETUPVAL R3 2
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
  GETUPVAL R3 3
  MOVE R5 R2
  GETTABLEKS R6 R0 K2 ["scriptTimes"]
  NAMECALL R3 R3 K14 ["ReportUGCValidationTelemetry"]
  CALL R3 3 0
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
  GETTABLEKS R15 R16 K24 ["getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R17 R0 K15 ["flags"]
  GETTABLEKS R16 R17 K25 ["getFFlagUGCValidateMeshBBoxIsCentered"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R18 R0 K15 ["flags"]
  GETTABLEKS R17 R18 K26 ["getFFlagUGCValidateLCHandleScale"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R19 R0 K15 ["flags"]
  GETTABLEKS R18 R19 K27 ["getFFlagUGCValidatePartMass"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R20 R0 K15 ["flags"]
  GETTABLEKS R19 R20 K28 ["getFFlagUGCValidateIndividualPartBBoxes"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R21 R0 K15 ["flags"]
  GETTABLEKS R20 R21 K29 ["getFFlagRefactorBodyAttachmentOrientationsCheck"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R22 R0 K15 ["flags"]
  GETTABLEKS R21 R22 K30 ["getFFlagValidateDeformedLayeredClothingIsInBounds"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R23 R0 K15 ["flags"]
  GETTABLEKS R22 R23 K31 ["getFFlagReportVisibilityAndIslandTelemetry"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R24 R0 K15 ["flags"]
  GETTABLEKS R23 R24 K32 ["getEngineFeatureUGCValidationFullBodyFacs"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R25 R0 K15 ["flags"]
  GETTABLEKS R24 R25 K33 ["getEngineUGCValidateRelativeSkinningTransfer"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R26 R0 K15 ["flags"]
  GETTABLEKS R25 R26 K34 ["getEngineFeatureEngineUGCIsValidR15AnimationRigCheck"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R27 R0 K15 ["flags"]
  GETTABLEKS R26 R27 K35 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R28 R0 K15 ["flags"]
  GETTABLEKS R27 R28 K36 ["getFFlagUGCValidateCheckHSRFileDataFix"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R29 R0 K15 ["flags"]
  GETTABLEKS R28 R29 K37 ["getFFlagUGCValidateHSRMeshIds"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R30 R0 K15 ["flags"]
  GETTABLEKS R29 R30 K38 ["getFFlagUGCValidationEyebrowEyelashSupport"]
  CALL R28 1 1
  GETIMPORT R29 K4 [require]
  GETTABLEKS R31 R0 K15 ["flags"]
  GETTABLEKS R30 R31 K39 ["getFFlagUGCValidationMakeupSupport"]
  CALL R29 1 1
  GETIMPORT R30 K4 [require]
  GETTABLEKS R32 R0 K15 ["flags"]
  GETTABLEKS R31 R32 K40 ["getFFlagUGCValidateCurveAnimRotationSpeed"]
  CALL R30 1 1
  GETIMPORT R31 K4 [require]
  GETTABLEKS R33 R0 K15 ["flags"]
  GETTABLEKS R32 R33 K41 ["getFFlagUGCValidateLegAssetSeparation"]
  CALL R31 1 1
  GETIMPORT R32 K4 [require]
  GETTABLEKS R34 R0 K15 ["flags"]
  GETTABLEKS R33 R34 K42 ["getFFlagUGCValidateTexturePack"]
  CALL R32 1 1
  DUPCLOSURE R33 K43 [PROTO_0]
  NEWTABLE R34 16 0
  NEWTABLE R35 128 0
  LOADK R36 K44 ["resetPhysicsData_FailedToLoadMesh"]
  SETTABLEKS R36 R35 K44 ["resetPhysicsData_FailedToLoadMesh"]
  MOVE R37 R21
  CALL R37 0 1
  JUMPIFNOT R37 [+2]
  LOADK R36 K45 ["validateAccurateBoundingBox"]
  JUMP [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K45 ["validateAccurateBoundingBox"]
  LOADK R36 K46 ["validateAssetBounds_AssetSizeTooBig"]
  SETTABLEKS R36 R35 K46 ["validateAssetBounds_AssetSizeTooBig"]
  LOADK R36 K47 ["validateAssetBounds_AssetSizeTooSmall"]
  SETTABLEKS R36 R35 K47 ["validateAssetBounds_AssetSizeTooSmall"]
  LOADK R36 K48 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
  SETTABLEKS R36 R35 K48 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
  LOADK R36 K49 ["validateScaleType_InvalidAvatarPartScaleType"]
  SETTABLEKS R36 R35 K49 ["validateScaleType_InvalidAvatarPartScaleType"]
  LOADK R36 K50 ["validateAssetCreator_DependencyNotOwnedByCreator"]
  SETTABLEKS R36 R35 K50 ["validateAssetCreator_DependencyNotOwnedByCreator"]
  LOADK R36 K51 ["validateAssetCreator_FailedToLoad"]
  SETTABLEKS R36 R35 K51 ["validateAssetCreator_FailedToLoad"]
  LOADK R36 K52 ["validateAssetCreator_TooManyDependencies"]
  SETTABLEKS R36 R35 K52 ["validateAssetCreator_TooManyDependencies"]
  MOVE R37 R21
  CALL R37 0 1
  JUMPIFNOT R37 [+2]
  LOADK R36 K53 ["validateAssetTransparency_AssetTransparencyThresholds"]
  JUMP [+1]
  LOADNIL R36
  SETTABLEKS R36 R35 K53 ["validateAssetTransparency_AssetTransparencyThresholds"]
  LOADK R36 K54 ["validateAttributes"]
  SETTABLEKS R36 R35 K54 ["validateAttributes"]
  MOVE R37 R19
  CALL R37 0 1
  JUMPIFNOT R37 [+2]
  LOADNIL R36
  JUMP [+1]
  LOADK R36 K55 ["validateBodyPartChildAttachmentBounds_AttachmentRotated"]
  SETTABLEKS R36 R35 K55 ["validateBodyPartChildAttachmentBounds_AttachmentRotated"]
  LOADK R36 K56 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
  SETTABLEKS R36 R35 K56 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
  LOADK R36 K57 ["validateBodyPartCollisionFidelity"]
  SETTABLEKS R36 R35 K57 ["validateBodyPartCollisionFidelity"]
  LOADK R36 K58 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
  SETTABLEKS R36 R35 K58 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
  LOADK R36 K59 ["validateCageUVs_TestExecutedSuccessfully"]
  SETTABLEKS R36 R35 K59 ["validateCageUVs_TestExecutedSuccessfully"]
  LOADK R36 K60 ["validateCageUVs_TestPassed"]
  SETTABLEKS R36 R35 K60 ["validateCageUVs_TestPassed"]
  LOADK R36 K61 ["validateCageUVTriangleArea_FailedToLoadMesh"]
  SETTABLEKS R36 R35 K61 ["validateCageUVTriangleArea_FailedToLoadMesh"]
  LOADK R36 K62 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
  SETTABLEKS R36 R35 K62 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
  LOADK R36 K63 ["validateCageUVValues_FailedToLoadMesh"]
  SETTABLEKS R36 R35 K63 ["validateCageUVValues_FailedToLoadMesh"]
  LOADK R36 K64 ["validateCageUVValues_UnexpectedUVValue"]
  SETTABLEKS R36 R35 K64 ["validateCageUVValues_UnexpectedUVValue"]
  LOADK R36 K65 ["validateCanLoad"]
  SETTABLEKS R36 R35 K65 ["validateCanLoad"]
  LOADK R36 K66 ["validateDependencies_IsNotApproved"]
  SETTABLEKS R36 R35 K66 ["validateDependencies_IsNotApproved"]
  LOADK R36 K67 ["validateDependencies_IsRestrictedUserId"]
  SETTABLEKS R36 R35 K67 ["validateDependencies_IsRestrictedUserId"]
  LOADK R36 K68 ["validateDependencies_IsReviewing"]
  SETTABLEKS R36 R35 K68 ["validateDependencies_IsReviewing"]
  LOADK R36 K69 ["validateDependencies_ParseFailure"]
  SETTABLEKS R36 R35 K69 ["validateDependencies_ParseFailure"]
  LOADK R36 K70 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
  SETTABLEKS R36 R35 K70 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
  LOADK R36 K71 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
  SETTABLEKS R36 R35 K71 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
  LOADK R36 K72 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
  SETTABLEKS R36 R35 K72 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
  LOADK R36 K73 ["validateDescendantMeshMetrics_NoSkinningInfo"]
  SETTABLEKS R36 R35 K73 ["validateDescendantMeshMetrics_NoSkinningInfo"]
  LOADK R36 K74 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
  SETTABLEKS R36 R35 K74 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
  LOADK R36 K75 ["validateDescendantMeshMetrics_TooManyTriangles"]
  SETTABLEKS R36 R35 K75 ["validateDescendantMeshMetrics_TooManyTriangles"]
  LOADK R36 K76 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
  SETTABLEKS R36 R35 K76 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
  LOADK R36 K77 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
  SETTABLEKS R36 R35 K77 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
  LOADK R36 K78 ["validateFullBody_IncorrectAssetTypeSet"]
  SETTABLEKS R36 R35 K78 ["validateFullBody_IncorrectAssetTypeSet"]
  LOADK R36 K79 ["validateFullBody_InstancesMissing"]
  SETTABLEKS R36 R35 K79 ["validateFullBody_InstancesMissing"]
  LOADK R36 K80 ["validateFullBody_MeshIdsMissing"]
  SETTABLEKS R36 R35 K80 ["validateFullBody_MeshIdsMissing"]
  LOADK R36 K81 ["validateHSR_HSRDataNotReady"]
  SETTABLEKS R36 R35 K81 ["validateHSR_HSRDataNotReady"]
  LOADK R36 K82 ["validateHSR_NoWrapLayer"]
  SETTABLEKS R36 R35 K82 ["validateHSR_NoWrapLayer"]
  LOADK R36 K83 ["validateInstanceTree"]
  SETTABLEKS R36 R35 K83 ["validateInstanceTree"]
  LOADK R36 K84 ["validateInstanceTree_InvalidDescendants"]
  SETTABLEKS R36 R35 K84 ["validateInstanceTree_InvalidDescendants"]
  LOADK R36 K85 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
  SETTABLEKS R36 R35 K85 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
  LOADK R36 K86 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
  SETTABLEKS R36 R35 K86 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
  LOADK R36 K87 ["validateLayeredClothingAccessory_NoInnerCageId"]
  SETTABLEKS R36 R35 K87 ["validateLayeredClothingAccessory_NoInnerCageId"]
  LOADK R36 K88 ["validateLayeredClothingAccessory_NoMeshId"]
  SETTABLEKS R36 R35 K88 ["validateLayeredClothingAccessory_NoMeshId"]
  LOADK R36 K89 ["validateLayeredClothingAccessory_NoOuterCageId"]
  SETTABLEKS R36 R35 K89 ["validateLayeredClothingAccessory_NoOuterCageId"]
  LOADK R36 K90 ["validateLayeredClothingAccessory_NoWrapLayer"]
  SETTABLEKS R36 R35 K90 ["validateLayeredClothingAccessory_NoWrapLayer"]
  LOADK R36 K91 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  SETTABLEKS R36 R35 K91 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  LOADK R36 K92 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  SETTABLEKS R36 R35 K92 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  LOADK R36 K93 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
  SETTABLEKS R36 R35 K93 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
  LOADK R36 K94 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  SETTABLEKS R36 R35 K94 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  LOADK R36 K95 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  SETTABLEKS R36 R35 K95 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  LOADK R36 K96 ["validateLimbsAndTorso_FolderInfoMismatch"]
  SETTABLEKS R36 R35 K96 ["validateLimbsAndTorso_FolderInfoMismatch"]
  LOADK R36 K97 ["validateLimbsAndTorso_R6FolderHasChildren"]
  SETTABLEKS R36 R35 K97 ["validateLimbsAndTorso_R6FolderHasChildren"]
  LOADK R36 K98 ["validateLimbsAndTorso_TopLevelFolders"]
  SETTABLEKS R36 R35 K98 ["validateLimbsAndTorso_TopLevelFolders"]
  LOADK R36 K99 ["validateMaterials"]
  SETTABLEKS R36 R35 K99 ["validateMaterials"]
  LOADK R36 K100 ["validateMeshBounds_FailedToExecute"]
  SETTABLEKS R36 R35 K100 ["validateMeshBounds_FailedToExecute"]
  LOADK R36 K101 ["validateMeshBounds_FailedToLoadMesh"]
  SETTABLEKS R36 R35 K101 ["validateMeshBounds_FailedToLoadMesh"]
  LOADK R36 K102 ["validateMeshBounds_TooLarge"]
  SETTABLEKS R36 R35 K102 ["validateMeshBounds_TooLarge"]
  LOADK R36 K103 ["validateMeshComparison"]
  SETTABLEKS R36 R35 K103 ["validateMeshComparison"]
  LOADK R36 K104 ["validateMeshPartAccessory_DoubleSided"]
  SETTABLEKS R36 R35 K104 ["validateMeshPartAccessory_DoubleSided"]
  LOADK R36 K105 ["validateMeshPartAccessory_FailedToLoadMesh"]
  SETTABLEKS R36 R35 K105 ["validateMeshPartAccessory_FailedToLoadMesh"]
  LOADK R36 K106 ["validateMeshPartAccessory_NoMeshId"]
  SETTABLEKS R36 R35 K106 ["validateMeshPartAccessory_NoMeshId"]
  LOADK R36 K107 ["validateMeshPartBodyPart_ValidateWithSchema"]
  SETTABLEKS R36 R35 K107 ["validateMeshPartBodyPart_ValidateWithSchema"]
  LOADK R36 K108 ["validateMeshTriangleArea_FailedToLoadMesh"]
  SETTABLEKS R36 R35 K108 ["validateMeshTriangleArea_FailedToLoadMesh"]
  LOADK R36 K109 ["validateMeshTriangleArea_NoArea"]
  SETTABLEKS R36 R35 K109 ["validateMeshTriangleArea_NoArea"]
  LOADK R36 K110 ["validateMeshTriangles_FailedToExecute"]
  SETTABLEKS R36 R35 K110 ["validateMeshTriangles_FailedToExecute"]
  LOADK R36 K111 ["validateMeshTriangles_FailedToLoadMesh"]
  SETTABLEKS R36 R35 K111 ["validateMeshTriangles_FailedToLoadMesh"]
  LOADK R36 K112 ["validateMeshTriangles_TooManyTriangles"]
  SETTABLEKS R36 R35 K112 ["validateMeshTriangles_TooManyTriangles"]
  LOADK R36 K113 ["validateMeshVertexColors_FailedToLoadMesh"]
  SETTABLEKS R36 R35 K113 ["validateMeshVertexColors_FailedToLoadMesh"]
  LOADK R36 K114 ["validateMeshVertexColors_NonNeutralVertexColors"]
  SETTABLEKS R36 R35 K114 ["validateMeshVertexColors_NonNeutralVertexColors"]
  LOADK R36 K115 ["validateModeration_AssetsHaveNotPassedModeration"]
  SETTABLEKS R36 R35 K115 ["validateModeration_AssetsHaveNotPassedModeration"]
  LOADK R36 K116 ["validateModeration_CouldNotFetchModerationDetails"]
  SETTABLEKS R36 R35 K116 ["validateModeration_CouldNotFetchModerationDetails"]
  LOADK R36 K117 ["validateModeration_FailedToParse"]
  SETTABLEKS R36 R35 K117 ["validateModeration_FailedToParse"]
  LOADK R36 K118 ["validateModeration_ValidateUser"]
  SETTABLEKS R36 R35 K118 ["validateModeration_ValidateUser"]
  LOADK R36 K119 ["validatePackage_FailedToParse"]
  SETTABLEKS R36 R35 K119 ["validatePackage_FailedToParse"]
  LOADK R36 K120 ["validateProperties_PropertyDoesNotExist"]
  SETTABLEKS R36 R35 K120 ["validateProperties_PropertyDoesNotExist"]
  LOADK R36 K121 ["validateProperties_PropertyMismatch"]
  SETTABLEKS R36 R35 K121 ["validateProperties_PropertyMismatch"]
  LOADK R36 K122 ["validateSingleInstance_MultipleInstances"]
  SETTABLEKS R36 R35 K122 ["validateSingleInstance_MultipleInstances"]
  LOADK R36 K123 ["validateSingleInstance_ZeroInstances"]
  SETTABLEKS R36 R35 K123 ["validateSingleInstance_ZeroInstances"]
  LOADK R36 K124 ["validateSurfaceAppearances_InvalidAlphaMode"]
  SETTABLEKS R36 R35 K124 ["validateSurfaceAppearances_InvalidAlphaMode"]
  LOADK R36 K125 ["validateSurfaceAppearances_MeshPartHasTexture"]
  SETTABLEKS R36 R35 K125 ["validateSurfaceAppearances_MeshPartHasTexture"]
  LOADK R36 K126 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
  SETTABLEKS R36 R35 K126 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
  LOADK R36 K127 ["validateTags"]
  SETTABLEKS R36 R35 K127 ["validateTags"]
  LOADK R36 K128 ["validateTextureSize_FailedToExecute"]
  SETTABLEKS R36 R35 K128 ["validateTextureSize_FailedToExecute"]
  LOADK R36 K129 ["validateTextureSize_FailedToLoadTexture"]
  SETTABLEKS R36 R35 K129 ["validateTextureSize_FailedToLoadTexture"]
  LOADK R36 K130 ["validateTextureSize_InvalidTextureId"]
  SETTABLEKS R36 R35 K130 ["validateTextureSize_InvalidTextureId"]
  LOADK R36 K131 ["validateTextureSize_TextureTooBig"]
  SETTABLEKS R36 R35 K131 ["validateTextureSize_TextureTooBig"]
  LOADK R36 K132 ["validateTextureTransparency_InvalidTextureId"]
  SETTABLEKS R36 R35 K132 ["validateTextureTransparency_InvalidTextureId"]
  LOADK R36 K133 ["validateTextureTransparency_TransparentTexture"]
  SETTABLEKS R36 R35 K133 ["validateTextureTransparency_TransparentTexture"]
  LOADK R36 K134 ["validateThumbnailConfiguration_InvalidTarget"]
  SETTABLEKS R36 R35 K134 ["validateThumbnailConfiguration_InvalidTarget"]
  LOADK R36 K135 ["validateThumbnailConfiguration_OutsideView"]
  SETTABLEKS R36 R35 K135 ["validateThumbnailConfiguration_OutsideView"]
  LOADK R36 K136 ["validateVertexDensity_FailedToExecute"]
  SETTABLEKS R36 R35 K136 ["validateVertexDensity_FailedToExecute"]
  LOADK R36 K137 ["validateVertexDensity_MaxDensityExceeded"]
  SETTABLEKS R36 R35 K137 ["validateVertexDensity_MaxDensityExceeded"]
  LOADK R36 K138 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
  SETTABLEKS R36 R35 K138 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
  LOADK R36 K139 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
  SETTABLEKS R36 R35 K139 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
  LOADK R36 K140 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
  SETTABLEKS R36 R35 K140 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
  LOADK R36 K141 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
  SETTABLEKS R36 R35 K141 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
  LOADK R36 K142 ["validateBodyPart_CageOriginOutOfBounds"]
  SETTABLEKS R36 R35 K142 ["validateBodyPart_CageOriginOutOfBounds"]
  LOADK R36 K143 ["validateTotalSurfaceArea_FailedToExecute"]
  SETTABLEKS R36 R35 K143 ["validateTotalSurfaceArea_FailedToExecute"]
  LOADK R36 K144 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
  SETTABLEKS R36 R35 K144 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
  LOADK R36 K145 ["validateCoplanarIntersection_FailedToExecute"]
  SETTABLEKS R36 R35 K145 ["validateCoplanarIntersection_FailedToExecute"]
  LOADK R36 K146 ["validateCoplanarIntersection_CoplanarIntersection"]
  SETTABLEKS R36 R35 K146 ["validateCoplanarIntersection_CoplanarIntersection"]
  LOADK R36 K147 ["validateExcludedModifiedCageUVs_FailedToExecute"]
  SETTABLEKS R36 R35 K147 ["validateExcludedModifiedCageUVs_FailedToExecute"]
  LOADK R36 K148 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
  SETTABLEKS R36 R35 K148 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
  LOADK R36 K149 ["validateMainModifiedCageUVs_FailedToExecute"]
  SETTABLEKS R36 R35 K149 ["validateMainModifiedCageUVs_FailedToExecute"]
  LOADK R36 K150 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
  SETTABLEKS R36 R35 K150 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
  LOADK R36 K151 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
  SETTABLEKS R36 R35 K151 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
  LOADK R36 K152 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
  SETTABLEKS R36 R35 K152 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
  LOADK R36 K153 ["validateBodyPartCage_FailedToExecute"]
  SETTABLEKS R36 R35 K153 ["validateBodyPartCage_FailedToExecute"]
  LOADK R36 K154 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
  SETTABLEKS R36 R35 K154 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
  LOADK R36 K155 ["validateCurveAnimation_IncorrectNumericalData"]
  SETTABLEKS R36 R35 K155 ["validateCurveAnimation_IncorrectNumericalData"]
  LOADK R36 K156 ["validateCurveAnimation_PositionalMovement"]
  SETTABLEKS R36 R35 K156 ["validateCurveAnimation_PositionalMovement"]
  SETTABLEKS R35 R34 K157 ["ErrorType"]
  MOVE R35 R32
  CALL R35 0 1
  JUMPIFNOT R35 [+15]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K158 ["validateTexturePack_InvalidTexturePackURL"]
  SETTABLEKS R36 R35 K158 ["validateTexturePack_InvalidTexturePackURL"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K159 ["validateTexturePack_FailedToDownloadTexturePack"]
  SETTABLEKS R36 R35 K159 ["validateTexturePack_FailedToDownloadTexturePack"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K160 ["validateTexturePack_TexturePackMismatch"]
  SETTABLEKS R36 R35 K160 ["validateTexturePack_TexturePackMismatch"]
  MOVE R35 R31
  CALL R35 0 1
  JUMPIFNOT R35 [+10]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K161 ["validateLegsSeparation_InvalidAttachmentPosition"]
  SETTABLEKS R36 R35 K161 ["validateLegsSeparation_InvalidAttachmentPosition"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K162 ["validateLegsSeparation_LegsOverlap"]
  SETTABLEKS R36 R35 K162 ["validateLegsSeparation_LegsOverlap"]
  MOVE R35 R15
  CALL R35 0 1
  JUMPIFNOT R35 [+5]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K163 ["validateMeshBounds_Shifted"]
  SETTABLEKS R36 R35 K163 ["validateMeshBounds_Shifted"]
  MOVE R35 R22
  CALL R35 0 1
  JUMPIFNOT R35 [+10]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K164 ["validateEachBodyPartFacsBounds_FailedToExecute"]
  SETTABLEKS R36 R35 K164 ["validateEachBodyPartFacsBounds_FailedToExecute"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K165 ["validateEachBodyPartFacsBounds_ExtendedBounds"]
  SETTABLEKS R36 R35 K165 ["validateEachBodyPartFacsBounds_ExtendedBounds"]
  MOVE R35 R10
  CALL R35 0 1
  JUMPIFNOT R35 [+10]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K166 ["validateVerticesSimilarity_FailedToExecute"]
  SETTABLEKS R36 R35 K166 ["validateVerticesSimilarity_FailedToExecute"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K167 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
  SETTABLEKS R36 R35 K167 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
  MOVE R35 R11
  CALL R35 0 1
  JUMPIFNOT R35 [+10]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K168 ["validateCagingRelevancy_FailedToExecute"]
  SETTABLEKS R36 R35 K168 ["validateCagingRelevancy_FailedToExecute"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K169 ["validateCagingRelevancy_IrrelevantCaging"]
  SETTABLEKS R36 R35 K169 ["validateCagingRelevancy_IrrelevantCaging"]
  MOVE R35 R7
  CALL R35 0 1
  JUMPIFNOT R35 [+10]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K170 ["validateCageMeshDistance_FailedToExecute"]
  SETTABLEKS R36 R35 K170 ["validateCageMeshDistance_FailedToExecute"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K171 ["validateCageMeshDistance_OuterCageToMeshDistance"]
  SETTABLEKS R36 R35 K171 ["validateCageMeshDistance_OuterCageToMeshDistance"]
  MOVE R35 R9
  CALL R35 0 1
  JUMPIFNOT R35 [+10]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K172 ["validateCageUVDuplicate_FailedToExecute"]
  SETTABLEKS R36 R35 K172 ["validateCageUVDuplicate_FailedToExecute"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K173 ["validateCageUVDuplicate_UnexpectedUVValue"]
  SETTABLEKS R36 R35 K173 ["validateCageUVDuplicate_UnexpectedUVValue"]
  MOVE R35 R13
  CALL R35 0 1
  JUMPIFNOT R35 [+5]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K174 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
  SETTABLEKS R36 R35 K174 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
  MOVE R35 R16
  CALL R35 0 1
  JUMPIFNOT R35 [+5]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K175 ["validateLayeredClothingAccessory_HandleIsScaled"]
  SETTABLEKS R36 R35 K175 ["validateLayeredClothingAccessory_HandleIsScaled"]
  MOVE R35 R17
  CALL R35 0 1
  JUMPIFNOT R35 [+5]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K176 ["resetPhysicsData_LargeMass"]
  SETTABLEKS R36 R35 K176 ["resetPhysicsData_LargeMass"]
  MOVE R35 R12
  CALL R35 0 1
  JUMPIFNOT R35 [+10]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K177 ["validateRigidMeshSkinning_FailedToDownload"]
  SETTABLEKS R36 R35 K177 ["validateRigidMeshSkinning_FailedToDownload"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K178 ["validateRigidMeshSkinning_BonesFoundInMesh"]
  SETTABLEKS R36 R35 K178 ["validateRigidMeshSkinning_BonesFoundInMesh"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K179 ["validateBodyBlockingTests_ZeroMeshSize"]
  SETTABLEKS R36 R35 K179 ["validateBodyBlockingTests_ZeroMeshSize"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K180 ["validateFullBody_ZeroMeshSize"]
  SETTABLEKS R36 R35 K180 ["validateFullBody_ZeroMeshSize"]
  MOVE R35 R18
  CALL R35 0 1
  JUMPIFNOT R35 [+10]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K181 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
  SETTABLEKS R36 R35 K181 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K182 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
  SETTABLEKS R36 R35 K182 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
  MOVE R35 R19
  CALL R35 0 1
  JUMPIFNOT R35 [+15]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K183 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
  SETTABLEKS R36 R35 K183 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K184 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
  SETTABLEKS R36 R35 K184 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K185 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
  SETTABLEKS R36 R35 K185 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
  MOVE R35 R20
  CALL R35 0 1
  JUMPIFNOT R35 [+10]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K186 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
  SETTABLEKS R36 R35 K186 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K187 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
  SETTABLEKS R36 R35 K187 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K188 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
  SETTABLEKS R36 R35 K188 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K189 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
  SETTABLEKS R36 R35 K189 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K190 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
  SETTABLEKS R36 R35 K190 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K191 ["validateCurveAnimation_UnacceptableLength"]
  SETTABLEKS R36 R35 K191 ["validateCurveAnimation_UnacceptableLength"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K192 ["validateCurveAnimation_UnacceptableSizeBounds"]
  SETTABLEKS R36 R35 K192 ["validateCurveAnimation_UnacceptableSizeBounds"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K193 ["validateCurveAnimation_UnacceptableFrameDelta"]
  SETTABLEKS R36 R35 K193 ["validateCurveAnimation_UnacceptableFrameDelta"]
  MOVE R35 R30
  CALL R35 0 1
  JUMPIFNOT R35 [+5]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K194 ["validateCurveAnimation_UnacceptableFrameRotationDelta"]
  SETTABLEKS R36 R35 K194 ["validateCurveAnimation_UnacceptableFrameRotationDelta"]
  MOVE R35 R24
  CALL R35 0 1
  JUMPIFNOT R35 [+5]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K195 ["validateCurveAnimation_IncorrectAnimationRigData"]
  SETTABLEKS R36 R35 K195 ["validateCurveAnimation_IncorrectAnimationRigData"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K196 ["validateMeshSizeProperty_FailedToLoadMesh"]
  SETTABLEKS R36 R35 K196 ["validateMeshSizeProperty_FailedToLoadMesh"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K197 ["validateMeshSizeProperty_Mismatch"]
  SETTABLEKS R36 R35 K197 ["validateMeshSizeProperty_Mismatch"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K198 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
  SETTABLEKS R36 R35 K198 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K199 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
  SETTABLEKS R36 R35 K199 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
  MOVE R35 R23
  CALL R35 0 1
  JUMPIFNOT R35 [+20]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K200 ["validateSkinningTransfer_FailedToExecute"]
  SETTABLEKS R36 R35 K200 ["validateSkinningTransfer_FailedToExecute"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K201 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
  SETTABLEKS R36 R35 K201 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K202 ["validateSkinningTransfer_SkinningTransferOverride"]
  SETTABLEKS R36 R35 K202 ["validateSkinningTransfer_SkinningTransferOverride"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K203 ["validateSkinningTransfer_Weights"]
  SETTABLEKS R36 R35 K203 ["validateSkinningTransfer_Weights"]
  MOVE R35 R28
  CALL R35 0 1
  JUMPIFNOT R35 [+5]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K204 ["validateSkinningTransfer_RequiredAssetTypes"]
  SETTABLEKS R36 R35 K204 ["validateSkinningTransfer_RequiredAssetTypes"]
  MOVE R35 R25
  CALL R35 0 1
  JUMPIFNOT R35 [+5]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K205 ["validatePropertiesSensible_IncorrectPropertiesFound"]
  SETTABLEKS R36 R35 K205 ["validatePropertiesSensible_IncorrectPropertiesFound"]
  MOVE R35 R26
  CALL R35 0 1
  JUMPIFNOT R35 [+5]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K206 ["validateHSR_FileDataInvalid"]
  SETTABLEKS R36 R35 K206 ["validateHSR_FileDataInvalid"]
  MOVE R35 R27
  CALL R35 0 1
  JUMPIFNOT R35 [+5]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K207 ["validataHSR_HSRMeshIdsMismatch"]
  SETTABLEKS R36 R35 K207 ["validataHSR_HSRMeshIdsMismatch"]
  MOVE R35 R29
  CALL R35 0 1
  JUMPIFNOT R35 [+45]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K208 ["validateMakeupDecal_FailedToLoadTexture"]
  SETTABLEKS R36 R35 K208 ["validateMakeupDecal_FailedToLoadTexture"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K209 ["validateMakeupDecal_NoColorMap"]
  SETTABLEKS R36 R35 K209 ["validateMakeupDecal_NoColorMap"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K210 ["validateMakeupDecal_UVZoneError"]
  SETTABLEKS R36 R35 K210 ["validateMakeupDecal_UVZoneError"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K211 ["validateWrapTextureTransfer_FailedToLoadCage"]
  SETTABLEKS R36 R35 K211 ["validateWrapTextureTransfer_FailedToLoadCage"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K212 ["validateWrapTextureTransfer_NoCage"]
  SETTABLEKS R36 R35 K212 ["validateWrapTextureTransfer_NoCage"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K213 ["validateWrapTextureTransfer_FailedToLoadUV"]
  SETTABLEKS R36 R35 K213 ["validateWrapTextureTransfer_FailedToLoadUV"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K214 ["validateWrapTextureTransfer_InvalidUV"]
  SETTABLEKS R36 R35 K214 ["validateWrapTextureTransfer_InvalidUV"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K215 ["validateWrapTextureTransfer_InvalidMinBound"]
  SETTABLEKS R36 R35 K215 ["validateWrapTextureTransfer_InvalidMinBound"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K216 ["validateWrapTextureTransfer_InvalidMaxBound"]
  SETTABLEKS R36 R35 K216 ["validateWrapTextureTransfer_InvalidMaxBound"]
  MOVE R35 R14
  CALL R35 0 1
  JUMPIFNOT R35 [+10]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K217 ["validateFACSJointTransformsWithinBounds_Error"]
  SETTABLEKS R36 R35 K217 ["validateFACSJointTransformsWithinBounds_Error"]
  GETTABLEKS R35 R34 K157 ["ErrorType"]
  LOADK R36 K218 ["validateFACSJointTransformsWithinBounds_OOB"]
  SETTABLEKS R36 R35 K218 ["validateFACSJointTransformsWithinBounds_OOB"]
  GETTABLEKS R36 R34 K157 ["ErrorType"]
  DUPTABLE R37 K220 [{"__index"}]
  DUPCLOSURE R38 K221 [PROTO_1]
  SETTABLEKS R38 R37 K219 ["__index"]
  FASTCALL2 SETMETATABLE R36 R37 [+3]
  GETIMPORT R35 K223 [setmetatable]
  CALL R35 2 0
  NEWTABLE R35 0 0
  SETTABLEKS R35 R34 K224 ["metadata"]
  DUPCLOSURE R35 K225 [PROTO_2]
  CAPTURE VAL R34
  SETTABLEKS R35 R34 K226 ["setMetadata"]
  DUPCLOSURE R35 K227 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R35 R34 K228 ["shouldReportIECTelemetry"]
  DUPCLOSURE R35 K229 [PROTO_4]
  CAPTURE VAL R34
  CAPTURE VAL R3
  SETTABLEKS R35 R34 K230 ["reportCounter"]
  DUPCLOSURE R35 K231 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R33
  CAPTURE VAL R34
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R35 R34 K232 ["reportFailure"]
  DUPCLOSURE R35 K233 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R33
  CAPTURE VAL R34
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R35 R34 K234 ["reportThumbnailing"]
  DUPCLOSURE R35 K235 [PROTO_7]
  CAPTURE VAL R6
  SETTABLEKS R35 R34 K236 ["recordScriptTime"]
  DUPCLOSURE R35 K237 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R34
  CAPTURE VAL R3
  SETTABLEKS R35 R34 K238 ["reportScriptTimes"]
  RETURN R34 1
