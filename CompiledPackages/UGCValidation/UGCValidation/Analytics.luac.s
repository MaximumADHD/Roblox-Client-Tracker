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
  GETTABLEKS R15 R16 K24 ["getFFlagUGCValidateMeshBBoxIsCentered"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R17 R0 K15 ["flags"]
  GETTABLEKS R16 R17 K25 ["getFFlagUGCValidateLCHandleScale"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R18 R0 K15 ["flags"]
  GETTABLEKS R17 R18 K26 ["getFFlagUGCValidatePartMass"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R19 R0 K15 ["flags"]
  GETTABLEKS R18 R19 K27 ["getFFlagUGCValidateIndividualPartBBoxes"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R20 R0 K15 ["flags"]
  GETTABLEKS R19 R20 K28 ["getFFlagRefactorBodyAttachmentOrientationsCheck"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R21 R0 K15 ["flags"]
  GETTABLEKS R20 R21 K29 ["getFFlagValidateDeformedLayeredClothingIsInBounds"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R22 R0 K15 ["flags"]
  GETTABLEKS R21 R22 K30 ["getFFlagReportVisibilityAndIslandTelemetry"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R23 R0 K15 ["flags"]
  GETTABLEKS R22 R23 K31 ["getEngineFeatureUGCValidationFullBodyFacs"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R24 R0 K15 ["flags"]
  GETTABLEKS R23 R24 K32 ["getEngineFeatureEngineUGCValidateBodyPartsSkinnedToR15"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R25 R0 K15 ["flags"]
  GETTABLEKS R24 R25 K33 ["getFFlagUGCValidateRestrictAnimationMovement"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R26 R0 K15 ["flags"]
  GETTABLEKS R25 R26 K34 ["getEngineUGCValidateRelativeSkinningTransfer"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R27 R0 K15 ["flags"]
  GETTABLEKS R26 R27 K35 ["getEngineFeatureEngineUGCIsValidR15AnimationRigCheck"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R28 R0 K15 ["flags"]
  GETTABLEKS R27 R28 K36 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R29 R0 K15 ["flags"]
  GETTABLEKS R28 R29 K37 ["getFFlagUGCValidateCheckHSRFileDataFix"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R30 R0 K15 ["flags"]
  GETTABLEKS R29 R30 K38 ["getFFlagUGCValidationEyebrowEyelashSupport"]
  CALL R28 1 1
  DUPCLOSURE R29 K39 [PROTO_0]
  NEWTABLE R30 16 0
  NEWTABLE R31 128 0
  LOADK R32 K40 ["resetPhysicsData_FailedToLoadMesh"]
  SETTABLEKS R32 R31 K40 ["resetPhysicsData_FailedToLoadMesh"]
  MOVE R33 R20
  CALL R33 0 1
  JUMPIFNOT R33 [+2]
  LOADK R32 K41 ["validateAccurateBoundingBox"]
  JUMP [+1]
  LOADNIL R32
  SETTABLEKS R32 R31 K41 ["validateAccurateBoundingBox"]
  LOADK R32 K42 ["validateAssetBounds_AssetSizeTooBig"]
  SETTABLEKS R32 R31 K42 ["validateAssetBounds_AssetSizeTooBig"]
  LOADK R32 K43 ["validateAssetBounds_AssetSizeTooSmall"]
  SETTABLEKS R32 R31 K43 ["validateAssetBounds_AssetSizeTooSmall"]
  LOADK R32 K44 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
  SETTABLEKS R32 R31 K44 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
  LOADK R32 K45 ["validateScaleType_InvalidAvatarPartScaleType"]
  SETTABLEKS R32 R31 K45 ["validateScaleType_InvalidAvatarPartScaleType"]
  LOADK R32 K46 ["validateAssetCreator_DependencyNotOwnedByCreator"]
  SETTABLEKS R32 R31 K46 ["validateAssetCreator_DependencyNotOwnedByCreator"]
  LOADK R32 K47 ["validateAssetCreator_FailedToLoad"]
  SETTABLEKS R32 R31 K47 ["validateAssetCreator_FailedToLoad"]
  LOADK R32 K48 ["validateAssetCreator_TooManyDependencies"]
  SETTABLEKS R32 R31 K48 ["validateAssetCreator_TooManyDependencies"]
  MOVE R33 R20
  CALL R33 0 1
  JUMPIFNOT R33 [+2]
  LOADK R32 K49 ["validateAssetTransparency_AssetTransparencyThresholds"]
  JUMP [+1]
  LOADNIL R32
  SETTABLEKS R32 R31 K49 ["validateAssetTransparency_AssetTransparencyThresholds"]
  LOADK R32 K50 ["validateAttributes"]
  SETTABLEKS R32 R31 K50 ["validateAttributes"]
  MOVE R33 R18
  CALL R33 0 1
  JUMPIFNOT R33 [+2]
  LOADNIL R32
  JUMP [+1]
  LOADK R32 K51 ["validateBodyPartChildAttachmentBounds_AttachmentRotated"]
  SETTABLEKS R32 R31 K51 ["validateBodyPartChildAttachmentBounds_AttachmentRotated"]
  LOADK R32 K52 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
  SETTABLEKS R32 R31 K52 ["validateBodyPartChildAttachmentBounds_InvalidAttachmentPosition"]
  LOADK R32 K53 ["validateBodyPartCollisionFidelity"]
  SETTABLEKS R32 R31 K53 ["validateBodyPartCollisionFidelity"]
  LOADK R32 K54 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
  SETTABLEKS R32 R31 K54 ["validateBodyPartMeshBounds_FailedToLoadMesh"]
  LOADK R32 K55 ["validateCageUVs_TestExecutedSuccessfully"]
  SETTABLEKS R32 R31 K55 ["validateCageUVs_TestExecutedSuccessfully"]
  LOADK R32 K56 ["validateCageUVs_TestPassed"]
  SETTABLEKS R32 R31 K56 ["validateCageUVs_TestPassed"]
  LOADK R32 K57 ["validateCageUVTriangleArea_FailedToLoadMesh"]
  SETTABLEKS R32 R31 K57 ["validateCageUVTriangleArea_FailedToLoadMesh"]
  LOADK R32 K58 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
  SETTABLEKS R32 R31 K58 ["validateCageUVTriangleArea_ZeroAreaTriangle"]
  LOADK R32 K59 ["validateCageUVValues_FailedToLoadMesh"]
  SETTABLEKS R32 R31 K59 ["validateCageUVValues_FailedToLoadMesh"]
  LOADK R32 K60 ["validateCageUVValues_UnexpectedUVValue"]
  SETTABLEKS R32 R31 K60 ["validateCageUVValues_UnexpectedUVValue"]
  LOADK R32 K61 ["validateCanLoad"]
  SETTABLEKS R32 R31 K61 ["validateCanLoad"]
  LOADK R32 K62 ["validateDependencies_IsNotApproved"]
  SETTABLEKS R32 R31 K62 ["validateDependencies_IsNotApproved"]
  LOADK R32 K63 ["validateDependencies_IsRestrictedUserId"]
  SETTABLEKS R32 R31 K63 ["validateDependencies_IsRestrictedUserId"]
  LOADK R32 K64 ["validateDependencies_IsReviewing"]
  SETTABLEKS R32 R31 K64 ["validateDependencies_IsReviewing"]
  LOADK R32 K65 ["validateDependencies_ParseFailure"]
  SETTABLEKS R32 R31 K65 ["validateDependencies_ParseFailure"]
  LOADK R32 K66 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
  SETTABLEKS R32 R31 K66 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
  LOADK R32 K67 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
  SETTABLEKS R32 R31 K67 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
  LOADK R32 K68 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
  SETTABLEKS R32 R31 K68 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
  LOADK R32 K69 ["validateDescendantMeshMetrics_NoSkinningInfo"]
  SETTABLEKS R32 R31 K69 ["validateDescendantMeshMetrics_NoSkinningInfo"]
  LOADK R32 K70 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
  SETTABLEKS R32 R31 K70 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
  LOADK R32 K71 ["validateDescendantMeshMetrics_TooManyTriangles"]
  SETTABLEKS R32 R31 K71 ["validateDescendantMeshMetrics_TooManyTriangles"]
  LOADK R32 K72 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
  SETTABLEKS R32 R31 K72 ["validateDynamicHeadMeshPartFormat_FailedToLoadMesh"]
  LOADK R32 K73 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
  SETTABLEKS R32 R31 K73 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMesh"]
  LOADK R32 K74 ["validateFullBody_IncorrectAssetTypeSet"]
  SETTABLEKS R32 R31 K74 ["validateFullBody_IncorrectAssetTypeSet"]
  LOADK R32 K75 ["validateFullBody_InstancesMissing"]
  SETTABLEKS R32 R31 K75 ["validateFullBody_InstancesMissing"]
  LOADK R32 K76 ["validateFullBody_MeshIdsMissing"]
  SETTABLEKS R32 R31 K76 ["validateFullBody_MeshIdsMissing"]
  LOADK R32 K77 ["validateHSR_HSRDataNotReady"]
  SETTABLEKS R32 R31 K77 ["validateHSR_HSRDataNotReady"]
  LOADK R32 K78 ["validateHSR_NoWrapLayer"]
  SETTABLEKS R32 R31 K78 ["validateHSR_NoWrapLayer"]
  LOADK R32 K79 ["validateInstanceTree"]
  SETTABLEKS R32 R31 K79 ["validateInstanceTree"]
  LOADK R32 K80 ["validateInstanceTree_InvalidDescendants"]
  SETTABLEKS R32 R31 K80 ["validateInstanceTree_InvalidDescendants"]
  LOADK R32 K81 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
  SETTABLEKS R32 R31 K81 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
  LOADK R32 K82 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
  SETTABLEKS R32 R31 K82 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
  LOADK R32 K83 ["validateLayeredClothingAccessory_NoInnerCageId"]
  SETTABLEKS R32 R31 K83 ["validateLayeredClothingAccessory_NoInnerCageId"]
  LOADK R32 K84 ["validateLayeredClothingAccessory_NoMeshId"]
  SETTABLEKS R32 R31 K84 ["validateLayeredClothingAccessory_NoMeshId"]
  LOADK R32 K85 ["validateLayeredClothingAccessory_NoOuterCageId"]
  SETTABLEKS R32 R31 K85 ["validateLayeredClothingAccessory_NoOuterCageId"]
  LOADK R32 K86 ["validateLayeredClothingAccessory_NoWrapLayer"]
  SETTABLEKS R32 R31 K86 ["validateLayeredClothingAccessory_NoWrapLayer"]
  LOADK R32 K87 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  SETTABLEKS R32 R31 K87 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  LOADK R32 K88 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  SETTABLEKS R32 R31 K88 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  LOADK R32 K89 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
  SETTABLEKS R32 R31 K89 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
  LOADK R32 K90 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  SETTABLEKS R32 R31 K90 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  LOADK R32 K91 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  SETTABLEKS R32 R31 K91 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  LOADK R32 K92 ["validateLimbsAndTorso_FolderInfoMismatch"]
  SETTABLEKS R32 R31 K92 ["validateLimbsAndTorso_FolderInfoMismatch"]
  LOADK R32 K93 ["validateLimbsAndTorso_R6FolderHasChildren"]
  SETTABLEKS R32 R31 K93 ["validateLimbsAndTorso_R6FolderHasChildren"]
  LOADK R32 K94 ["validateLimbsAndTorso_TopLevelFolders"]
  SETTABLEKS R32 R31 K94 ["validateLimbsAndTorso_TopLevelFolders"]
  LOADK R32 K95 ["validateMaterials"]
  SETTABLEKS R32 R31 K95 ["validateMaterials"]
  LOADK R32 K96 ["validateMeshBounds_FailedToExecute"]
  SETTABLEKS R32 R31 K96 ["validateMeshBounds_FailedToExecute"]
  LOADK R32 K97 ["validateMeshBounds_FailedToLoadMesh"]
  SETTABLEKS R32 R31 K97 ["validateMeshBounds_FailedToLoadMesh"]
  LOADK R32 K98 ["validateMeshBounds_TooLarge"]
  SETTABLEKS R32 R31 K98 ["validateMeshBounds_TooLarge"]
  LOADK R32 K99 ["validateMeshComparison"]
  SETTABLEKS R32 R31 K99 ["validateMeshComparison"]
  LOADK R32 K100 ["validateMeshPartAccessory_DoubleSided"]
  SETTABLEKS R32 R31 K100 ["validateMeshPartAccessory_DoubleSided"]
  LOADK R32 K101 ["validateMeshPartAccessory_FailedToLoadMesh"]
  SETTABLEKS R32 R31 K101 ["validateMeshPartAccessory_FailedToLoadMesh"]
  LOADK R32 K102 ["validateMeshPartAccessory_NoMeshId"]
  SETTABLEKS R32 R31 K102 ["validateMeshPartAccessory_NoMeshId"]
  LOADK R32 K103 ["validateMeshPartBodyPart_ValidateWithSchema"]
  SETTABLEKS R32 R31 K103 ["validateMeshPartBodyPart_ValidateWithSchema"]
  LOADK R32 K104 ["validateMeshTriangleArea_FailedToLoadMesh"]
  SETTABLEKS R32 R31 K104 ["validateMeshTriangleArea_FailedToLoadMesh"]
  LOADK R32 K105 ["validateMeshTriangleArea_NoArea"]
  SETTABLEKS R32 R31 K105 ["validateMeshTriangleArea_NoArea"]
  LOADK R32 K106 ["validateMeshTriangles_FailedToExecute"]
  SETTABLEKS R32 R31 K106 ["validateMeshTriangles_FailedToExecute"]
  LOADK R32 K107 ["validateMeshTriangles_FailedToLoadMesh"]
  SETTABLEKS R32 R31 K107 ["validateMeshTriangles_FailedToLoadMesh"]
  LOADK R32 K108 ["validateMeshTriangles_TooManyTriangles"]
  SETTABLEKS R32 R31 K108 ["validateMeshTriangles_TooManyTriangles"]
  LOADK R32 K109 ["validateMeshVertexColors_FailedToLoadMesh"]
  SETTABLEKS R32 R31 K109 ["validateMeshVertexColors_FailedToLoadMesh"]
  LOADK R32 K110 ["validateMeshVertexColors_NonNeutralVertexColors"]
  SETTABLEKS R32 R31 K110 ["validateMeshVertexColors_NonNeutralVertexColors"]
  LOADK R32 K111 ["validateModeration_AssetsHaveNotPassedModeration"]
  SETTABLEKS R32 R31 K111 ["validateModeration_AssetsHaveNotPassedModeration"]
  LOADK R32 K112 ["validateModeration_CouldNotFetchModerationDetails"]
  SETTABLEKS R32 R31 K112 ["validateModeration_CouldNotFetchModerationDetails"]
  LOADK R32 K113 ["validateModeration_FailedToParse"]
  SETTABLEKS R32 R31 K113 ["validateModeration_FailedToParse"]
  LOADK R32 K114 ["validateModeration_ValidateUser"]
  SETTABLEKS R32 R31 K114 ["validateModeration_ValidateUser"]
  LOADK R32 K115 ["validatePackage_FailedToParse"]
  SETTABLEKS R32 R31 K115 ["validatePackage_FailedToParse"]
  LOADK R32 K116 ["validateProperties_PropertyDoesNotExist"]
  SETTABLEKS R32 R31 K116 ["validateProperties_PropertyDoesNotExist"]
  LOADK R32 K117 ["validateProperties_PropertyMismatch"]
  SETTABLEKS R32 R31 K117 ["validateProperties_PropertyMismatch"]
  LOADK R32 K118 ["validateSingleInstance_MultipleInstances"]
  SETTABLEKS R32 R31 K118 ["validateSingleInstance_MultipleInstances"]
  LOADK R32 K119 ["validateSingleInstance_ZeroInstances"]
  SETTABLEKS R32 R31 K119 ["validateSingleInstance_ZeroInstances"]
  LOADK R32 K120 ["validateSurfaceAppearances_InvalidAlphaMode"]
  SETTABLEKS R32 R31 K120 ["validateSurfaceAppearances_InvalidAlphaMode"]
  LOADK R32 K121 ["validateSurfaceAppearances_MeshPartHasTexture"]
  SETTABLEKS R32 R31 K121 ["validateSurfaceAppearances_MeshPartHasTexture"]
  LOADK R32 K122 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
  SETTABLEKS R32 R31 K122 ["validateSurfaceAppearances_MissingSurfaceAppearance"]
  LOADK R32 K123 ["validateTags"]
  SETTABLEKS R32 R31 K123 ["validateTags"]
  LOADK R32 K124 ["validateTextureSize_FailedToExecute"]
  SETTABLEKS R32 R31 K124 ["validateTextureSize_FailedToExecute"]
  LOADK R32 K125 ["validateTextureSize_FailedToLoadTexture"]
  SETTABLEKS R32 R31 K125 ["validateTextureSize_FailedToLoadTexture"]
  LOADK R32 K126 ["validateTextureSize_InvalidTextureId"]
  SETTABLEKS R32 R31 K126 ["validateTextureSize_InvalidTextureId"]
  LOADK R32 K127 ["validateTextureSize_TextureTooBig"]
  SETTABLEKS R32 R31 K127 ["validateTextureSize_TextureTooBig"]
  LOADK R32 K128 ["validateTextureTransparency_InvalidTextureId"]
  SETTABLEKS R32 R31 K128 ["validateTextureTransparency_InvalidTextureId"]
  LOADK R32 K129 ["validateTextureTransparency_TransparentTexture"]
  SETTABLEKS R32 R31 K129 ["validateTextureTransparency_TransparentTexture"]
  LOADK R32 K130 ["validateThumbnailConfiguration_InvalidTarget"]
  SETTABLEKS R32 R31 K130 ["validateThumbnailConfiguration_InvalidTarget"]
  LOADK R32 K131 ["validateThumbnailConfiguration_OutsideView"]
  SETTABLEKS R32 R31 K131 ["validateThumbnailConfiguration_OutsideView"]
  LOADK R32 K132 ["validateUVSpace_FailedToExecute"]
  SETTABLEKS R32 R31 K132 ["validateUVSpace_FailedToExecute"]
  LOADK R32 K133 ["validateUVSpace_InvalidUVSpace"]
  SETTABLEKS R32 R31 K133 ["validateUVSpace_InvalidUVSpace"]
  LOADK R32 K134 ["validateVertexDensity_FailedToExecute"]
  SETTABLEKS R32 R31 K134 ["validateVertexDensity_FailedToExecute"]
  LOADK R32 K135 ["validateVertexDensity_MaxDensityExceeded"]
  SETTABLEKS R32 R31 K135 ["validateVertexDensity_MaxDensityExceeded"]
  LOADK R32 K136 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
  SETTABLEKS R32 R31 K136 ["validateDynamicHeadMeshPartFormat_ValidateDynamicHeadMeshControls"]
  LOADK R32 K137 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
  SETTABLEKS R32 R31 K137 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
  LOADK R32 K138 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
  SETTABLEKS R32 R31 K138 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
  LOADK R32 K139 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
  SETTABLEKS R32 R31 K139 ["validateLayeredClothingAccessory_CageOriginOutOfBounds"]
  LOADK R32 K140 ["validateBodyPart_CageOriginOutOfBounds"]
  SETTABLEKS R32 R31 K140 ["validateBodyPart_CageOriginOutOfBounds"]
  LOADK R32 K141 ["validateTotalSurfaceArea_FailedToExecute"]
  SETTABLEKS R32 R31 K141 ["validateTotalSurfaceArea_FailedToExecute"]
  LOADK R32 K142 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
  SETTABLEKS R32 R31 K142 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
  LOADK R32 K143 ["validateCoplanarIntersection_FailedToExecute"]
  SETTABLEKS R32 R31 K143 ["validateCoplanarIntersection_FailedToExecute"]
  LOADK R32 K144 ["validateCoplanarIntersection_CoplanarIntersection"]
  SETTABLEKS R32 R31 K144 ["validateCoplanarIntersection_CoplanarIntersection"]
  LOADK R32 K145 ["validateExcludedModifiedCageUVs_FailedToExecute"]
  SETTABLEKS R32 R31 K145 ["validateExcludedModifiedCageUVs_FailedToExecute"]
  LOADK R32 K146 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
  SETTABLEKS R32 R31 K146 ["validateExcludedModifiedCageUVs_UnexpectedUVValue"]
  LOADK R32 K147 ["validateMainModifiedCageUVs_FailedToExecute"]
  SETTABLEKS R32 R31 K147 ["validateMainModifiedCageUVs_FailedToExecute"]
  LOADK R32 K148 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
  SETTABLEKS R32 R31 K148 ["validateMainModifiedCageUVs_TooFewModifiedUVsFound"]
  LOADK R32 K149 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
  SETTABLEKS R32 R31 K149 ["validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute"]
  LOADK R32 K150 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
  SETTABLEKS R32 R31 K150 ["validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly"]
  LOADK R32 K151 ["validateBodyPartCage_FailedToExecute"]
  SETTABLEKS R32 R31 K151 ["validateBodyPartCage_FailedToExecute"]
  LOADK R32 K152 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
  SETTABLEKS R32 R31 K152 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
  LOADK R32 K153 ["validateCurveAnimation_IncorrectNumericalData"]
  SETTABLEKS R32 R31 K153 ["validateCurveAnimation_IncorrectNumericalData"]
  SETTABLEKS R31 R30 K154 ["ErrorType"]
  MOVE R31 R14
  CALL R31 0 1
  JUMPIFNOT R31 [+5]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K155 ["validateMeshBounds_Shifted"]
  SETTABLEKS R32 R31 K155 ["validateMeshBounds_Shifted"]
  MOVE R31 R21
  CALL R31 0 1
  JUMPIFNOT R31 [+10]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K156 ["validateEachBodyPartFacsBounds_FailedToExecute"]
  SETTABLEKS R32 R31 K156 ["validateEachBodyPartFacsBounds_FailedToExecute"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K157 ["validateEachBodyPartFacsBounds_ExtendedBounds"]
  SETTABLEKS R32 R31 K157 ["validateEachBodyPartFacsBounds_ExtendedBounds"]
  MOVE R31 R10
  CALL R31 0 1
  JUMPIFNOT R31 [+10]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K158 ["validateVerticesSimilarity_FailedToExecute"]
  SETTABLEKS R32 R31 K158 ["validateVerticesSimilarity_FailedToExecute"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K159 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
  SETTABLEKS R32 R31 K159 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
  MOVE R31 R11
  CALL R31 0 1
  JUMPIFNOT R31 [+10]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K160 ["validateCagingRelevancy_FailedToExecute"]
  SETTABLEKS R32 R31 K160 ["validateCagingRelevancy_FailedToExecute"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K161 ["validateCagingRelevancy_IrrelevantCaging"]
  SETTABLEKS R32 R31 K161 ["validateCagingRelevancy_IrrelevantCaging"]
  MOVE R31 R7
  CALL R31 0 1
  JUMPIFNOT R31 [+10]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K162 ["validateCageMeshDistance_FailedToExecute"]
  SETTABLEKS R32 R31 K162 ["validateCageMeshDistance_FailedToExecute"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K163 ["validateCageMeshDistance_OuterCageToMeshDistance"]
  SETTABLEKS R32 R31 K163 ["validateCageMeshDistance_OuterCageToMeshDistance"]
  MOVE R31 R9
  CALL R31 0 1
  JUMPIFNOT R31 [+10]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K164 ["validateCageUVDuplicate_FailedToExecute"]
  SETTABLEKS R32 R31 K164 ["validateCageUVDuplicate_FailedToExecute"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K165 ["validateCageUVDuplicate_UnexpectedUVValue"]
  SETTABLEKS R32 R31 K165 ["validateCageUVDuplicate_UnexpectedUVValue"]
  MOVE R31 R13
  CALL R31 0 1
  JUMPIFNOT R31 [+5]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K166 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
  SETTABLEKS R32 R31 K166 ["validatePartSizeWithinRenderSizeLimits_SizeExceeded"]
  MOVE R31 R15
  CALL R31 0 1
  JUMPIFNOT R31 [+5]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K167 ["validateLayeredClothingAccessory_HandleIsScaled"]
  SETTABLEKS R32 R31 K167 ["validateLayeredClothingAccessory_HandleIsScaled"]
  MOVE R31 R16
  CALL R31 0 1
  JUMPIFNOT R31 [+5]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K168 ["resetPhysicsData_LargeMass"]
  SETTABLEKS R32 R31 K168 ["resetPhysicsData_LargeMass"]
  MOVE R31 R12
  CALL R31 0 1
  JUMPIFNOT R31 [+10]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K169 ["validateRigidMeshSkinning_FailedToDownload"]
  SETTABLEKS R32 R31 K169 ["validateRigidMeshSkinning_FailedToDownload"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K170 ["validateRigidMeshSkinning_BonesFoundInMesh"]
  SETTABLEKS R32 R31 K170 ["validateRigidMeshSkinning_BonesFoundInMesh"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K171 ["validateBodyBlockingTests_ZeroMeshSize"]
  SETTABLEKS R32 R31 K171 ["validateBodyBlockingTests_ZeroMeshSize"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K172 ["validateFullBody_ZeroMeshSize"]
  SETTABLEKS R32 R31 K172 ["validateFullBody_ZeroMeshSize"]
  MOVE R31 R17
  CALL R31 0 1
  JUMPIFNOT R31 [+10]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K173 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
  SETTABLEKS R32 R31 K173 ["validateBodyAttPosRelativeToParent_PartAboveParent"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K174 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
  SETTABLEKS R32 R31 K174 ["validateBodyAttPosRelativeToParent_ParentBelowPart"]
  MOVE R31 R18
  CALL R31 0 1
  JUMPIFNOT R31 [+15]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K175 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
  SETTABLEKS R32 R31 K175 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K176 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
  SETTABLEKS R32 R31 K176 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K177 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
  SETTABLEKS R32 R31 K177 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
  MOVE R31 R19
  CALL R31 0 1
  JUMPIFNOT R31 [+10]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K178 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
  SETTABLEKS R32 R31 K178 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K179 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
  SETTABLEKS R32 R31 K179 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K180 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
  SETTABLEKS R32 R31 K180 ["validateEmoteAnimation_FailedToDownloadCurveAnimation"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K181 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
  SETTABLEKS R32 R31 K181 ["validateCurveAnimation_AnimationHierarchyIsIncorrect"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K182 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
  SETTABLEKS R32 R31 K182 ["validateCurveAnimation_AnimationContainsNoJointManipulation"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K183 ["validateCurveAnimation_UnacceptableLength"]
  SETTABLEKS R32 R31 K183 ["validateCurveAnimation_UnacceptableLength"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K184 ["validateCurveAnimation_UnacceptableSizeBounds"]
  SETTABLEKS R32 R31 K184 ["validateCurveAnimation_UnacceptableSizeBounds"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K185 ["validateCurveAnimation_UnacceptableFrameDelta"]
  SETTABLEKS R32 R31 K185 ["validateCurveAnimation_UnacceptableFrameDelta"]
  MOVE R31 R23
  CALL R31 0 1
  JUMPIFNOT R31 [+5]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K186 ["validateCurveAnimation_PositionalMovement"]
  SETTABLEKS R32 R31 K186 ["validateCurveAnimation_PositionalMovement"]
  MOVE R31 R25
  CALL R31 0 1
  JUMPIFNOT R31 [+5]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K187 ["validateCurveAnimation_IncorrectAnimationRigData"]
  SETTABLEKS R32 R31 K187 ["validateCurveAnimation_IncorrectAnimationRigData"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K188 ["validateMeshSizeProperty_FailedToLoadMesh"]
  SETTABLEKS R32 R31 K188 ["validateMeshSizeProperty_FailedToLoadMesh"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K189 ["validateMeshSizeProperty_Mismatch"]
  SETTABLEKS R32 R31 K189 ["validateMeshSizeProperty_Mismatch"]
  MOVE R31 R22
  CALL R31 0 1
  JUMPIFNOT R31 [+10]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K190 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
  SETTABLEKS R32 R31 K190 ["validateBodyPartVertsSkinnedToR15_FailedToFetchSkinning"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K191 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
  SETTABLEKS R32 R31 K191 ["validateBodyPartVertsSkinnedToR15_BodyIsSkinnedToFakeJoints"]
  MOVE R31 R24
  CALL R31 0 1
  JUMPIFNOT R31 [+20]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K192 ["validateSkinningTransfer_FailedToExecute"]
  SETTABLEKS R32 R31 K192 ["validateSkinningTransfer_FailedToExecute"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K193 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
  SETTABLEKS R32 R31 K193 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K194 ["validateSkinningTransfer_SkinningTransferOverride"]
  SETTABLEKS R32 R31 K194 ["validateSkinningTransfer_SkinningTransferOverride"]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K195 ["validateSkinningTransfer_Weights"]
  SETTABLEKS R32 R31 K195 ["validateSkinningTransfer_Weights"]
  MOVE R31 R28
  CALL R31 0 1
  JUMPIFNOT R31 [+5]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K196 ["validateSkinningTransfer_RequiredAssetTypes"]
  SETTABLEKS R32 R31 K196 ["validateSkinningTransfer_RequiredAssetTypes"]
  MOVE R31 R26
  CALL R31 0 1
  JUMPIFNOT R31 [+5]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K197 ["validatePropertiesSensible_IncorrectPropertiesFound"]
  SETTABLEKS R32 R31 K197 ["validatePropertiesSensible_IncorrectPropertiesFound"]
  MOVE R31 R27
  CALL R31 0 1
  JUMPIFNOT R31 [+5]
  GETTABLEKS R31 R30 K154 ["ErrorType"]
  LOADK R32 K198 ["validateHSR_FileDataInvalid"]
  SETTABLEKS R32 R31 K198 ["validateHSR_FileDataInvalid"]
  GETTABLEKS R32 R30 K154 ["ErrorType"]
  DUPTABLE R33 K200 [{"__index"}]
  DUPCLOSURE R34 K201 [PROTO_1]
  SETTABLEKS R34 R33 K199 ["__index"]
  FASTCALL2 SETMETATABLE R32 R33 [+3]
  GETIMPORT R31 K203 [setmetatable]
  CALL R31 2 0
  NEWTABLE R31 0 0
  SETTABLEKS R31 R30 K204 ["metadata"]
  DUPCLOSURE R31 K205 [PROTO_2]
  CAPTURE VAL R30
  SETTABLEKS R31 R30 K206 ["setMetadata"]
  DUPCLOSURE R31 K207 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R31 R30 K208 ["shouldReportIECTelemetry"]
  DUPCLOSURE R31 K209 [PROTO_4]
  CAPTURE VAL R30
  CAPTURE VAL R3
  SETTABLEKS R31 R30 K210 ["reportCounter"]
  DUPCLOSURE R31 K211 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R31 R30 K212 ["reportFailure"]
  DUPCLOSURE R31 K213 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R29
  CAPTURE VAL R30
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R31 R30 K214 ["reportThumbnailing"]
  DUPCLOSURE R31 K215 [PROTO_7]
  CAPTURE VAL R6
  SETTABLEKS R31 R30 K216 ["recordScriptTime"]
  DUPCLOSURE R31 K217 [PROTO_8]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R30
  CAPTURE VAL R3
  SETTABLEKS R31 R30 K218 ["reportScriptTimes"]
  RETURN R30 1
