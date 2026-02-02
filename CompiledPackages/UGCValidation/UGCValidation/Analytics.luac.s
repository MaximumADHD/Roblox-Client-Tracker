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
  GETTABLEKS R28 R29 K37 ["getFFlagUGCValidationEyebrowEyelashSupport"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R30 R0 K15 ["flags"]
  GETTABLEKS R29 R30 K38 ["getFFlagUGCValidationMakeupSupport"]
  CALL R28 1 1
  GETIMPORT R29 K4 [require]
  GETTABLEKS R31 R0 K15 ["flags"]
  GETTABLEKS R30 R31 K39 ["getFFlagUGCValidateCurveAnimRotationSpeed"]
  CALL R29 1 1
  GETIMPORT R30 K4 [require]
  GETTABLEKS R32 R0 K15 ["flags"]
  GETTABLEKS R31 R32 K40 ["getFFlagUGCValidateLegAssetSeparation"]
  CALL R30 1 1
  DUPCLOSURE R31 K41 [PROTO_0]
  NEWTABLE R32 16 0
  NEWTABLE R33 128 0
  LOADK R34 K42 ["resetPhysicsData_FailedToLoadMesh"]
  SETTABLEKS R34 R33 K42 ["resetPhysicsData_FailedToLoadMesh"]
  MOVE R35 R21
  CALL R35 0 1
  JUMPIFNOT R35 [+2]
  LOADK R34 K43 ["validateAccurateBoundingBox"]
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K43 ["validateAccurateBoundingBox"]
  LOADK R34 K44 ["validateAssetBounds_AssetSizeTooBig"]
  SETTABLEKS R34 R33 K44 ["validateAssetBounds_AssetSizeTooBig"]
  LOADK R34 K45 ["validateAssetBounds_AssetSizeTooSmall"]
  SETTABLEKS R34 R33 K45 ["validateAssetBounds_AssetSizeTooSmall"]
  LOADK R34 K46 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
  SETTABLEKS R34 R33 K46 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
  LOADK R34 K47 ["validateScaleType_InvalidAvatarPartScaleType"]
  SETTABLEKS R34 R33 K47 ["validateScaleType_InvalidAvatarPartScaleType"]
  LOADK R34 K48 ["validateAssetCreator_DependencyNotOwnedByCreator"]
  SETTABLEKS R34 R33 K48 ["validateAssetCreator_DependencyNotOwnedByCreator"]
  LOADK R34 K49 ["validateAssetCreator_FailedToLoad"]
  SETTABLEKS R34 R33 K49 ["validateAssetCreator_FailedToLoad"]
  LOADK R34 K50 ["validateAssetCreator_TooManyDependencies"]
  SETTABLEKS R34 R33 K50 ["validateAssetCreator_TooManyDependencies"]
  MOVE R35 R21
  CALL R35 0 1
  JUMPIFNOT R35 [+2]
  LOADK R34 K51 ["validateAssetTransparency_AssetTransparencyThresholds"]
  JUMP [+1]
  LOADNIL R34
  SETTABLEKS R34 R33 K51 ["validateAssetTransparency_AssetTransparencyThresholds"]
  LOADK R34 K52 ["validateAttributes"]
  SETTABLEKS R34 R33 K52 ["validateAttributes"]
  MOVE R35 R19
  CALL R35 0 1
  JUMPIFNOT R35 [+2]
  LOADNIL R34
  JUMP [+1]
  LOADK R34 K53 ["validateBodyPartChildAttachmentBounds_AttachmentRotated"]
  SETTABLEKS R34 R33 K53 ["validateBodyPartChildAttachmentBounds_AttachmentRotated"]
  LOADK R34 K54 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
  SETTABLEKS R34 R33 K54 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
  LOADK R34 K55 ["validateBodyPartCollisionFidelity"]
  SETTABLEKS R34 R33 K55 ["validateBodyPartCollisionFidelity"]
  LOADK R34 K56 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
  SETTABLEKS R34 R33 K56 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
  LOADK R34 K57 ["validateCageUVs_TestExecutedSuccessfully"]
  SETTABLEKS R34 R33 K57 ["validateCageUVs_TestExecutedSuccessfully"]
  LOADK R34 K58 ["validateCageUVs_TestPassed"]
  SETTABLEKS R34 R33 K58 ["validateCageUVs_TestPassed"]
  LOADK R34 K59 ["validateCageUVTriangleArea_FailedToLoadMesh"]
  SETTABLEKS R34 R33 K59 ["validateCageUVTriangleArea_FailedToLoadMesh"]
  LOADK R34 K60 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
  SETTABLEKS R34 R33 K60 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
  LOADK R34 K61 ["validateCageUVValues_FailedToLoadMesh"]
  SETTABLEKS R34 R33 K61 ["validateCageUVValues_FailedToLoadMesh"]
  LOADK R34 K62 ["validateCageUVValues_UnexpectedUVValue"]
  SETTABLEKS R34 R33 K62 ["validateCageUVValues_UnexpectedUVValue"]
  LOADK R34 K63 ["validateCanLoad"]
  SETTABLEKS R34 R33 K63 ["validateCanLoad"]
  LOADK R34 K64 ["validateDependencies_IsNotApproved"]
  SETTABLEKS R34 R33 K64 ["validateDependencies_IsNotApproved"]
  LOADK R34 K65 ["validateDependencies_IsRestrictedUserId"]
  SETTABLEKS R34 R33 K65 ["validateDependencies_IsRestrictedUserId"]
  LOADK R34 K66 ["validateDependencies_IsReviewing"]
  SETTABLEKS R34 R33 K66 ["validateDependencies_IsReviewing"]
  LOADK R34 K67 ["validateDependencies_ParseFailure"]
  SETTABLEKS R34 R33 K67 ["validateDependencies_ParseFailure"]
  LOADK R34 K68 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
  SETTABLEKS R34 R33 K68 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
  LOADK R34 K69 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
  SETTABLEKS R34 R33 K69 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
  LOADK R34 K70 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
  SETTABLEKS R34 R33 K70 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
  LOADK R34 K71 ["validateDescendantMeshMetrics_NoSkinningInfo"]
  SETTABLEKS R34 R33 K71 ["validateDescendantMeshMetrics_NoSkinningInfo"]
  LOADK R34 K72 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
  SETTABLEKS R34 R33 K72 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
  LOADK R34 K73 ["validateDescendantMeshMetrics_TooManyTriangles"]
  SETTABLEKS R34 R33 K73 ["validateDescendantMeshMetrics_TooManyTriangles"]
  LOADK R34 K74 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
  SETTABLEKS R34 R33 K74 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
  LOADK R34 K75 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
  SETTABLEKS R34 R33 K75 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
  LOADK R34 K76 ["validateFullBody_IncorrectAssetTypeSet"]
  SETTABLEKS R34 R33 K76 ["validateFullBody_IncorrectAssetTypeSet"]
  LOADK R34 K77 ["validateFullBody_InstancesMissing"]
  SETTABLEKS R34 R33 K77 ["validateFullBody_InstancesMissing"]
  LOADK R34 K78 ["validateFullBody_MeshIdsMissing"]
  SETTABLEKS R34 R33 K78 ["validateFullBody_MeshIdsMissing"]
  LOADK R34 K79 ["validateHSR_HSRDataNotReady"]
  SETTABLEKS R34 R33 K79 ["validateHSR_HSRDataNotReady"]
  LOADK R34 K80 ["validateHSR_NoWrapLayer"]
  SETTABLEKS R34 R33 K80 ["validateHSR_NoWrapLayer"]
  LOADK R34 K81 ["validateInstanceTree"]
  SETTABLEKS R34 R33 K81 ["validateInstanceTree"]
  LOADK R34 K82 ["validateInstanceTree_InvalidDescendants"]
  SETTABLEKS R34 R33 K82 ["validateInstanceTree_InvalidDescendants"]
  LOADK R34 K83 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
  SETTABLEKS R34 R33 K83 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
  LOADK R34 K84 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
  SETTABLEKS R34 R33 K84 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
  LOADK R34 K85 ["validateLayeredClothingAccessory_NoInnerCageId"]
  SETTABLEKS R34 R33 K85 ["validateLayeredClothingAccessory_NoInnerCageId"]
  LOADK R34 K86 ["validateLayeredClothingAccessory_NoMeshId"]
  SETTABLEKS R34 R33 K86 ["validateLayeredClothingAccessory_NoMeshId"]
  LOADK R34 K87 ["validateLayeredClothingAccessory_NoOuterCageId"]
  SETTABLEKS R34 R33 K87 ["validateLayeredClothingAccessory_NoOuterCageId"]
  LOADK R34 K88 ["validateLayeredClothingAccessory_NoWrapLayer"]
  SETTABLEKS R34 R33 K88 ["validateLayeredClothingAccessory_NoWrapLayer"]
  LOADK R34 K89 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  SETTABLEKS R34 R33 K89 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  LOADK R34 K90 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  SETTABLEKS R34 R33 K90 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  LOADK R34 K91 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
  SETTABLEKS R34 R33 K91 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
  LOADK R34 K92 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  SETTABLEKS R34 R33 K92 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  LOADK R34 K93 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  SETTABLEKS R34 R33 K93 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  LOADK R34 K94 ["validateLimbsAndTorso_FolderInfoMismatch"]
  SETTABLEKS R34 R33 K94 ["validateLimbsAndTorso_FolderInfoMismatch"]
  LOADK R34 K95 ["validateLimbsAndTorso_R6FolderHasChildren"]
  SETTABLEKS R34 R33 K95 ["validateLimbsAndTorso_R6FolderHasChildren"]
  LOADK R34 K96 ["validateLimbsAndTorso_TopLevelFolders"]
  SETTABLEKS R34 R33 K96 ["validateLimbsAndTorso_TopLevelFolders"]
  LOADK R34 K97 ["validateMaterials"]
  SETTABLEKS R34 R33 K97 ["validateMaterials"]
  LOADK R34 K98 ["validateMeshBounds_FailedToExecute"]
  SETTABLEKS R34 R33 K98 ["validateMeshBounds_FailedToExecute"]
  LOADK R34 K99 ["validateMeshBounds_FailedToLoadMesh"]
  SETTABLEKS R34 R33 K99 ["validateMeshBounds_FailedToLoadMesh"]
  LOADK R34 K100 ["validateMeshBounds_TooLarge"]
  SETTABLEKS R34 R33 K100 ["validateMeshBounds_TooLarge"]
  LOADK R34 K101 ["validateMeshComparison"]
  SETTABLEKS R34 R33 K101 ["validateMeshComparison"]
  LOADK R34 K102 ["validateMeshPartAccessory_DoubleSided"]
  SETTABLEKS R34 R33 K102 ["validateMeshPartAccessory_DoubleSided"]
  LOADK R34 K103 ["validateMeshPartAccessory_FailedToLoadMesh"]
  SETTABLEKS R34 R33 K103 ["validateMeshPartAccessory_FailedToLoadMesh"]
  LOADK R34 K104 ["validateMeshPartAccessory_NoMeshId"]
  SETTABLEKS R34 R33 K104 ["validateMeshPartAccessory_NoMeshId"]
  LOADK R34 K105 ["validateMeshPartBodyPart_ValidateWithSchema"]
  SETTABLEKS R34 R33 K105 ["validateMeshPartBodyPart_ValidateWithSchema"]
  LOADK R34 K106 ["validateMeshTriangleArea_FailedToLoadMesh"]
  SETTABLEKS R34 R33 K106 ["validateMeshTriangleArea_FailedToLoadMesh"]
  LOADK R34 K107 ["validateMeshTriangleArea_NoArea"]
  SETTABLEKS R34 R33 K107 ["validateMeshTriangleArea_NoArea"]
  LOADK R34 K108 ["validateMeshTriangles_FailedToExecute"]
  SETTABLEKS R34 R33 K108 ["validateMeshTriangles_FailedToExecute"]
  LOADK R34 K109 ["validateMeshTriangles_FailedToLoadMesh"]
  SETTABLEKS R34 R33 K109 ["validateMeshTriangles_FailedToLoadMesh"]
  LOADK R34 K110 ["validateMeshTriangles_TooManyTriangles"]
  SETTABLEKS R34 R33 K110 ["validateMeshTriangles_TooManyTriangles"]
  LOADK R34 K111 ["validateMeshVertexColors_FailedToLoadMesh"]
  SETTABLEKS R34 R33 K111 ["validateMeshVertexColors_FailedToLoadMesh"]
  LOADK R34 K112 ["validateMeshVertexColors_NonNeutralVertexColors"]
  SETTABLEKS R34 R33 K112 ["validateMeshVertexColors_NonNeutralVertexColors"]
  LOADK R34 K113 ["validateModeration_AssetsHaveNotPassedModeration"]
  SETTABLEKS R34 R33 K113 ["validateModeration_AssetsHaveNotPassedModeration"]
  LOADK R34 K114 ["validateModeration_CouldNotFetchModerationDetails"]
  SETTABLEKS R34 R33 K114 ["validateModeration_CouldNotFetchModerationDetails"]
  LOADK R34 K115 ["validateModeration_FailedToParse"]
  SETTABLEKS R34 R33 K115 ["validateModeration_FailedToParse"]
  LOADK R34 K116 ["validateModeration_ValidateUser"]
  SETTABLEKS R34 R33 K116 ["validateModeration_ValidateUser"]
  LOADK R34 K117 ["validatePackage_FailedToParse"]
  SETTABLEKS R34 R33 K117 ["validatePackage_FailedToParse"]
  LOADK R34 K118 ["validateProperties_PropertyDoesNotExist"]
  SETTABLEKS R34 R33 K118 ["validateProperties_PropertyDoesNotExist"]
  LOADK R34 K119 ["validateProperties_PropertyMismatch"]
  SETTABLEKS R34 R33 K119 ["validateProperties_PropertyMismatch"]
  LOADK R34 K120 ["validateSingleInstance_MultipleInstances"]
  SETTABLEKS R34 R33 K120 ["validateSingleInstance_MultipleInstances"]
  LOADK R34 K121 ["validateSingleInstance_ZeroInstances"]
  SETTABLEKS R34 R33 K121 ["validateSingleInstance_ZeroInstances"]
  LOADK R34 K122 ["validateSurfaceAppearances_InvalidAlphaMode"]
  SETTABLEKS R34 R33 K122 ["validateSurfaceAppearances_InvalidAlphaMode"]
  LOADK R34 K123 ["validateSurfaceAppearances_MeshPartHasTexture"]
  SETTABLEKS R34 R33 K123 ["validateSurfaceAppearances_MeshPartHasTexture"]
  LOADK R34 K124 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
  SETTABLEKS R34 R33 K124 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
  LOADK R34 K125 ["validateTags"]
  SETTABLEKS R34 R33 K125 ["validateTags"]
  LOADK R34 K126 ["validateTextureSize_FailedToExecute"]
  SETTABLEKS R34 R33 K126 ["validateTextureSize_FailedToExecute"]
  LOADK R34 K127 ["validateTextureSize_FailedToLoadTexture"]
  SETTABLEKS R34 R33 K127 ["validateTextureSize_FailedToLoadTexture"]
  LOADK R34 K128 ["validateTextureSize_InvalidTextureId"]
  SETTABLEKS R34 R33 K128 ["validateTextureSize_InvalidTextureId"]
  LOADK R34 K129 ["validateTextureSize_TextureTooBig"]
  SETTABLEKS R34 R33 K129 ["validateTextureSize_TextureTooBig"]
  LOADK R34 K130 ["validateTextureTransparency_InvalidTextureId"]
  SETTABLEKS R34 R33 K130 ["validateTextureTransparency_InvalidTextureId"]
  LOADK R34 K131 ["validateTextureTransparency_TransparentTexture"]
  SETTABLEKS R34 R33 K131 ["validateTextureTransparency_TransparentTexture"]
  LOADK R34 K132 ["validateThumbnailConfiguration_InvalidTarget"]
  SETTABLEKS R34 R33 K132 ["validateThumbnailConfiguration_InvalidTarget"]
  LOADK R34 K133 ["validateThumbnailConfiguration_OutsideView"]
  SETTABLEKS R34 R33 K133 ["validateThumbnailConfiguration_OutsideView"]
  LOADK R34 K134 ["validateVertexDensity_FailedToExecute"]
  SETTABLEKS R34 R33 K134 ["validateVertexDensity_FailedToExecute"]
  LOADK R34 K135 ["validateVertexDensity_MaxDensityExceeded"]
  SETTABLEKS R34 R33 K135 ["validateVertexDensity_MaxDensityExceeded"]
  LOADK R34 K136 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
  SETTABLEKS R34 R33 K136 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
  LOADK R34 K137 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
  SETTABLEKS R34 R33 K137 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
  LOADK R34 K138 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
  SETTABLEKS R34 R33 K138 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
  LOADK R34 K139 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
  SETTABLEKS R34 R33 K139 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
  LOADK R34 K140 ["validateBodyPart_CageOriginOutOfBounds"]
  SETTABLEKS R34 R33 K140 ["validateBodyPart_CageOriginOutOfBounds"]
  LOADK R34 K141 ["validateTotalSurfaceArea_FailedToExecute"]
  SETTABLEKS R34 R33 K141 ["validateTotalSurfaceArea_FailedToExecute"]
  LOADK R34 K142 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
  SETTABLEKS R34 R33 K142 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
  LOADK R34 K143 ["validateCoplanarIntersection_FailedToExecute"]
  SETTABLEKS R34 R33 K143 ["validateCoplanarIntersection_FailedToExecute"]
  LOADK R34 K144 ["validateCoplanarIntersection_CoplanarIntersection"]
  SETTABLEKS R34 R33 K144 ["validateCoplanarIntersection_CoplanarIntersection"]
  LOADK R34 K145 ["validateExcludedModifiedCageUVs_FailedToExecute"]
  SETTABLEKS R34 R33 K145 ["validateExcludedModifiedCageUVs_FailedToExecute"]
  LOADK R34 K146 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
  SETTABLEKS R34 R33 K146 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
  LOADK R34 K147 ["validateMainModifiedCageUVs_FailedToExecute"]
  SETTABLEKS R34 R33 K147 ["validateMainModifiedCageUVs_FailedToExecute"]
  LOADK R34 K148 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
  SETTABLEKS R34 R33 K148 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
  LOADK R34 K149 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
  SETTABLEKS R34 R33 K149 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
  LOADK R34 K150 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
  SETTABLEKS R34 R33 K150 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
  LOADK R34 K151 ["validateBodyPartCage_FailedToExecute"]
  SETTABLEKS R34 R33 K151 ["validateBodyPartCage_FailedToExecute"]
  LOADK R34 K152 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
  SETTABLEKS R34 R33 K152 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
  LOADK R34 K153 ["validateCurveAnimation_IncorrectNumericalData"]
  SETTABLEKS R34 R33 K153 ["validateCurveAnimation_IncorrectNumericalData"]
  LOADK R34 K154 ["validateCurveAnimation_PositionalMovement"]
  SETTABLEKS R34 R33 K154 ["validateCurveAnimation_PositionalMovement"]
  SETTABLEKS R33 R32 K155 ["ErrorType"]
  MOVE R33 R30
  CALL R33 0 1
  JUMPIFNOT R33 [+10]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K156 ["validateLegsSeparation_InvalidAttachmentPosition"]
  SETTABLEKS R34 R33 K156 ["validateLegsSeparation_InvalidAttachmentPosition"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K157 ["validateLegsSeparation_LegsOverlap"]
  SETTABLEKS R34 R33 K157 ["validateLegsSeparation_LegsOverlap"]
  MOVE R33 R15
  CALL R33 0 1
  JUMPIFNOT R33 [+5]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K158 ["validateMeshBounds_Shifted"]
  SETTABLEKS R34 R33 K158 ["validateMeshBounds_Shifted"]
  MOVE R33 R22
  CALL R33 0 1
  JUMPIFNOT R33 [+10]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K159 ["validateEachBodyPartFacsBounds_FailedToExecute"]
  SETTABLEKS R34 R33 K159 ["validateEachBodyPartFacsBounds_FailedToExecute"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K160 ["validateEachBodyPartFacsBounds_ExtendedBounds"]
  SETTABLEKS R34 R33 K160 ["validateEachBodyPartFacsBounds_ExtendedBounds"]
  MOVE R33 R10
  CALL R33 0 1
  JUMPIFNOT R33 [+10]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K161 ["validateVerticesSimilarity_FailedToExecute"]
  SETTABLEKS R34 R33 K161 ["validateVerticesSimilarity_FailedToExecute"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K162 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
  SETTABLEKS R34 R33 K162 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
  MOVE R33 R11
  CALL R33 0 1
  JUMPIFNOT R33 [+10]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K163 ["validateCagingRelevancy_FailedToExecute"]
  SETTABLEKS R34 R33 K163 ["validateCagingRelevancy_FailedToExecute"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K164 ["validateCagingRelevancy_IrrelevantCaging"]
  SETTABLEKS R34 R33 K164 ["validateCagingRelevancy_IrrelevantCaging"]
  MOVE R33 R7
  CALL R33 0 1
  JUMPIFNOT R33 [+10]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K165 ["validateCageMeshDistance_FailedToExecute"]
  SETTABLEKS R34 R33 K165 ["validateCageMeshDistance_FailedToExecute"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K166 ["validateCageMeshDistance_OuterCageToMeshDistance"]
  SETTABLEKS R34 R33 K166 ["validateCageMeshDistance_OuterCageToMeshDistance"]
  MOVE R33 R9
  CALL R33 0 1
  JUMPIFNOT R33 [+10]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K167 ["validateCageUVDuplicate_FailedToExecute"]
  SETTABLEKS R34 R33 K167 ["validateCageUVDuplicate_FailedToExecute"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K168 ["validateCageUVDuplicate_UnexpectedUVValue"]
  SETTABLEKS R34 R33 K168 ["validateCageUVDuplicate_UnexpectedUVValue"]
  MOVE R33 R13
  CALL R33 0 1
  JUMPIFNOT R33 [+5]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K169 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
  SETTABLEKS R34 R33 K169 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
  MOVE R33 R16
  CALL R33 0 1
  JUMPIFNOT R33 [+5]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K170 ["validateLayeredClothingAccessory_HandleIsScaled"]
  SETTABLEKS R34 R33 K170 ["validateLayeredClothingAccessory_HandleIsScaled"]
  MOVE R33 R17
  CALL R33 0 1
  JUMPIFNOT R33 [+5]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K171 ["resetPhysicsData_LargeMass"]
  SETTABLEKS R34 R33 K171 ["resetPhysicsData_LargeMass"]
  MOVE R33 R12
  CALL R33 0 1
  JUMPIFNOT R33 [+10]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K172 ["validateRigidMeshSkinning_FailedToDownload"]
  SETTABLEKS R34 R33 K172 ["validateRigidMeshSkinning_FailedToDownload"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K173 ["validateRigidMeshSkinning_BonesFoundInMesh"]
  SETTABLEKS R34 R33 K173 ["validateRigidMeshSkinning_BonesFoundInMesh"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K174 ["validateBodyBlockingTests_ZeroMeshSize"]
  SETTABLEKS R34 R33 K174 ["validateBodyBlockingTests_ZeroMeshSize"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K175 ["validateFullBody_ZeroMeshSize"]
  SETTABLEKS R34 R33 K175 ["validateFullBody_ZeroMeshSize"]
  MOVE R33 R18
  CALL R33 0 1
  JUMPIFNOT R33 [+10]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K176 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
  SETTABLEKS R34 R33 K176 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K177 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
  SETTABLEKS R34 R33 K177 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
  MOVE R33 R19
  CALL R33 0 1
  JUMPIFNOT R33 [+15]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K178 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
  SETTABLEKS R34 R33 K178 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K179 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
  SETTABLEKS R34 R33 K179 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K180 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
  SETTABLEKS R34 R33 K180 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
  MOVE R33 R20
  CALL R33 0 1
  JUMPIFNOT R33 [+10]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K181 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
  SETTABLEKS R34 R33 K181 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K182 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
  SETTABLEKS R34 R33 K182 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K183 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
  SETTABLEKS R34 R33 K183 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K184 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
  SETTABLEKS R34 R33 K184 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K185 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
  SETTABLEKS R34 R33 K185 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K186 ["validateCurveAnimation_UnacceptableLength"]
  SETTABLEKS R34 R33 K186 ["validateCurveAnimation_UnacceptableLength"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K187 ["validateCurveAnimation_UnacceptableSizeBounds"]
  SETTABLEKS R34 R33 K187 ["validateCurveAnimation_UnacceptableSizeBounds"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K188 ["validateCurveAnimation_UnacceptableFrameDelta"]
  SETTABLEKS R34 R33 K188 ["validateCurveAnimation_UnacceptableFrameDelta"]
  MOVE R33 R29
  CALL R33 0 1
  JUMPIFNOT R33 [+5]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K189 ["validateCurveAnimation_UnacceptableFrameRotationDelta"]
  SETTABLEKS R34 R33 K189 ["validateCurveAnimation_UnacceptableFrameRotationDelta"]
  MOVE R33 R24
  CALL R33 0 1
  JUMPIFNOT R33 [+5]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K190 ["validateCurveAnimation_IncorrectAnimationRigData"]
  SETTABLEKS R34 R33 K190 ["validateCurveAnimation_IncorrectAnimationRigData"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K191 ["validateMeshSizeProperty_FailedToLoadMesh"]
  SETTABLEKS R34 R33 K191 ["validateMeshSizeProperty_FailedToLoadMesh"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K192 ["validateMeshSizeProperty_Mismatch"]
  SETTABLEKS R34 R33 K192 ["validateMeshSizeProperty_Mismatch"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K193 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
  SETTABLEKS R34 R33 K193 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K194 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
  SETTABLEKS R34 R33 K194 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
  MOVE R33 R23
  CALL R33 0 1
  JUMPIFNOT R33 [+20]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K195 ["validateSkinningTransfer_FailedToExecute"]
  SETTABLEKS R34 R33 K195 ["validateSkinningTransfer_FailedToExecute"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K196 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
  SETTABLEKS R34 R33 K196 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K197 ["validateSkinningTransfer_SkinningTransferOverride"]
  SETTABLEKS R34 R33 K197 ["validateSkinningTransfer_SkinningTransferOverride"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K198 ["validateSkinningTransfer_Weights"]
  SETTABLEKS R34 R33 K198 ["validateSkinningTransfer_Weights"]
  MOVE R33 R27
  CALL R33 0 1
  JUMPIFNOT R33 [+5]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K199 ["validateSkinningTransfer_RequiredAssetTypes"]
  SETTABLEKS R34 R33 K199 ["validateSkinningTransfer_RequiredAssetTypes"]
  MOVE R33 R25
  CALL R33 0 1
  JUMPIFNOT R33 [+5]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K200 ["validatePropertiesSensible_IncorrectPropertiesFound"]
  SETTABLEKS R34 R33 K200 ["validatePropertiesSensible_IncorrectPropertiesFound"]
  MOVE R33 R26
  CALL R33 0 1
  JUMPIFNOT R33 [+5]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K201 ["validateHSR_FileDataInvalid"]
  SETTABLEKS R34 R33 K201 ["validateHSR_FileDataInvalid"]
  MOVE R33 R28
  CALL R33 0 1
  JUMPIFNOT R33 [+45]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K202 ["validateMakeupDecal_FailedToLoadTexture"]
  SETTABLEKS R34 R33 K202 ["validateMakeupDecal_FailedToLoadTexture"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K203 ["validateMakeupDecal_NoColorMap"]
  SETTABLEKS R34 R33 K203 ["validateMakeupDecal_NoColorMap"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K204 ["validateMakeupDecal_OutsideUVZone"]
  SETTABLEKS R34 R33 K204 ["validateMakeupDecal_OutsideUVZone"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K205 ["validateWrapTextureTransfer_FailedToLoadCage"]
  SETTABLEKS R34 R33 K205 ["validateWrapTextureTransfer_FailedToLoadCage"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K206 ["validateWrapTextureTransfer_NoCage"]
  SETTABLEKS R34 R33 K206 ["validateWrapTextureTransfer_NoCage"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K207 ["validateWrapTextureTransfer_FailedToLoadUV"]
  SETTABLEKS R34 R33 K207 ["validateWrapTextureTransfer_FailedToLoadUV"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K208 ["validateWrapTextureTransfer_InvalidUV"]
  SETTABLEKS R34 R33 K208 ["validateWrapTextureTransfer_InvalidUV"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K209 ["validateWrapTextureTransfer_InvalidMinBound"]
  SETTABLEKS R34 R33 K209 ["validateWrapTextureTransfer_InvalidMinBound"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K210 ["validateWrapTextureTransfer_InvalidMaxBound"]
  SETTABLEKS R34 R33 K210 ["validateWrapTextureTransfer_InvalidMaxBound"]
  MOVE R33 R14
  CALL R33 0 1
  JUMPIFNOT R33 [+10]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K211 ["validateFACSJointTransformsWithinBounds_Error"]
  SETTABLEKS R34 R33 K211 ["validateFACSJointTransformsWithinBounds_Error"]
  GETTABLEKS R33 R32 K155 ["ErrorType"]
  LOADK R34 K212 ["validateFACSJointTransformsWithinBounds_OOB"]
  SETTABLEKS R34 R33 K212 ["validateFACSJointTransformsWithinBounds_OOB"]
  GETTABLEKS R34 R32 K155 ["ErrorType"]
  DUPTABLE R35 K214 [{"__index"}]
  DUPCLOSURE R36 K215 [PROTO_1]
  SETTABLEKS R36 R35 K213 ["__index"]
  FASTCALL2 SETMETATABLE R34 R35 [+3]
  GETIMPORT R33 K217 [setmetatable]
  CALL R33 2 0
  NEWTABLE R33 0 0
  SETTABLEKS R33 R32 K218 ["metadata"]
  DUPCLOSURE R33 K219 [PROTO_2]
  CAPTURE VAL R32
  SETTABLEKS R33 R32 K220 ["setMetadata"]
  DUPCLOSURE R33 K221 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R33 R32 K222 ["shouldReportIECTelemetry"]
  DUPCLOSURE R33 K223 [PROTO_4]
  CAPTURE VAL R32
  CAPTURE VAL R3
  SETTABLEKS R33 R32 K224 ["reportCounter"]
  DUPCLOSURE R33 K225 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R31
  CAPTURE VAL R32
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R33 R32 K226 ["reportFailure"]
  DUPCLOSURE R33 K227 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R31
  CAPTURE VAL R32
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R33 R32 K228 ["reportThumbnailing"]
  DUPCLOSURE R33 K229 [PROTO_7]
  CAPTURE VAL R6
  SETTABLEKS R33 R32 K230 ["recordScriptTime"]
  DUPCLOSURE R33 K231 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R32
  CAPTURE VAL R3
  SETTABLEKS R33 R32 K232 ["reportScriptTimes"]
  RETURN R32 1
