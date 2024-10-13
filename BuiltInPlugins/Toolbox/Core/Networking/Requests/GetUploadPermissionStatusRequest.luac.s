PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  GETTABLEKS R2 R1 K1 ["isAllowed"]
  JUMPIFNOT R2 [+5]
  DUPTABLE R2 K3 [{"type"}]
  LOADK R3 K4 ["allowed"]
  SETTABLEKS R3 R2 K2 ["type"]
  RETURN R2 1
  DUPTABLE R2 K6 [{"type", "denyReason"}]
  LOADK R3 K7 ["notAllowed"]
  SETTABLEKS R3 R2 K2 ["type"]
  GETUPVAL R4 0
  GETTABLEKS R5 R1 K8 ["deniedReason"]
  GETTABLE R3 R4 R5
  JUMPIF R3 [+2]
  GETTABLEKS R3 R1 K8 ["deniedReason"]
  SETTABLEKS R3 R2 K5 ["denyReason"]
  RETURN R2 1

PROTO_1:
  DUPTABLE R1 K2 [{"type", "message"}]
  LOADK R2 K3 ["error"]
  SETTABLEKS R2 R1 K0 ["type"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K5 [tostring]
  CALL R2 1 1
  SETTABLEKS R2 R1 K1 ["message"]
  RETURN R1 1

PROTO_2:
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["getUploadPermissionStatus"]
  CALL R3 3 1
  DUPCLOSURE R5 K1 [PROTO_0]
  CAPTURE UPVAL U0
  NAMECALL R3 R3 K2 ["andThen"]
  CALL R3 2 1
  DUPCLOSURE R5 K3 [PROTO_1]
  NAMECALL R3 R3 K4 ["catch"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Core"]
  GETTABLEKS R1 R2 K5 ["Util"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["DebugFlags"]
  CALL R2 1 1
  NEWTABLE R3 128 0
  LOADN R4 0
  LOADK R5 K9 ["Unknown"]
  SETTABLE R5 R3 R4
  LOADK R4 K10 ["InvalidTargetType"]
  SETTABLEN R4 R3 1
  LOADK R4 K11 ["FailedToFetchPublishingFee"]
  SETTABLEN R4 R3 2
  LOADK R4 K12 ["ServiceUnavailable"]
  SETTABLEN R4 R3 3
  LOADK R4 K13 ["InvalidArgument"]
  SETTABLEN R4 R3 4
  LOADK R4 K14 ["NotFound"]
  SETTABLEN R4 R3 5
  LOADK R4 K15 ["FailedToGetCollectibleItemId"]
  SETTABLEN R4 R3 6
  LOADK R4 K16 ["FailedToGetCommissionRates"]
  SETTABLEN R4 R3 7
  LOADK R4 K17 ["NullParameterRequest"]
  SETTABLEN R4 R3 8
  LOADK R4 K18 ["PublishLimitExceeded"]
  SETTABLEN R4 R3 9
  LOADK R4 K19 ["AssetIsPendingValidation"]
  SETTABLEN R4 R3 10
  LOADK R4 K20 ["AssetContainsInvalidContent"]
  SETTABLEN R4 R3 11
  LOADK R4 K21 ["UserDoesNotHavePermissionsForGroupAsset"]
  SETTABLEN R4 R3 12
  LOADK R4 K22 ["AssetTypeCannotBeReleased"]
  SETTABLEN R4 R3 13
  LOADK R4 K23 ["AssetIsPendingReview"]
  SETTABLEN R4 R3 14
  LOADK R4 K24 ["AssetIsModerated"]
  SETTABLEN R4 R3 15
  LOADK R4 K25 ["ItemIsReleased"]
  SETTABLEN R4 R3 16
  LOADK R4 K26 ["UserDoesNotHavePermissionToRelease"]
  SETTABLEN R4 R3 17
  LOADK R4 K27 ["UserDoesNotOwnTheItem"]
  SETTABLEN R4 R3 18
  LOADK R4 K28 ["ItemPriceTooLow"]
  SETTABLEN R4 R3 19
  LOADK R4 K29 ["ItemPriceTooHigh"]
  SETTABLEN R4 R3 20
  LOADK R4 K30 ["InvalidAssetId"]
  SETTABLEN R4 R3 21
  LOADK R4 K31 ["InvalidAgent"]
  SETTABLEN R4 R3 22
  LOADK R4 K32 ["NoExperiencesListed"]
  SETTABLEN R4 R3 23
  LOADK R4 K33 ["NameIsModerated"]
  SETTABLEN R4 R3 24
  LOADK R4 K34 ["DescriptionIsModerated"]
  SETTABLEN R4 R3 25
  LOADK R4 K35 ["TextIsModerated"]
  SETTABLEN R4 R3 26
  LOADK R4 K36 ["FailedToFilterText"]
  SETTABLEN R4 R3 27
  LOADK R4 K37 ["AssetAlreadyReleasedAsUnlimited"]
  SETTABLEN R4 R3 28
  LOADK R4 K38 ["AssetInDelayedRelease"]
  SETTABLEN R4 R3 29
  LOADK R4 K39 ["InvalidIdempotencyToken"]
  SETTABLEN R4 R3 30
  LOADK R4 K40 ["InvalidAgreedPublishingFee"]
  SETTABLEN R4 R3 31
  LOADK R4 K41 ["GatewayCouldNotPublishItem"]
  SETTABLEN R4 R3 32
  LOADK R4 K42 ["GroupAssetNotSupported"]
  SETTABLEN R4 R3 33
  LOADK R4 K43 ["CouldNotFindInitialUserAsset"]
  SETTABLEN R4 R3 34
  LOADK R4 K44 ["InvalidQuantity"]
  SETTABLEN R4 R3 35
  LOADK R4 K45 ["SaleLocationCurrentlyNotSupported"]
  SETTABLEN R4 R3 36
  LOADK R4 K46 ["InvalidCollectibleItemId"]
  SETTABLEN R4 R3 37
  LOADK R4 K47 ["FailedToGetCollectibleItemInformation"]
  SETTABLEN R4 R3 38
  LOADK R4 K48 ["GroupItemsNotSupported"]
  SETTABLEN R4 R3 39
  LOADK R4 K49 ["FailedToUpdateCollectibleItem"]
  SETTABLEN R4 R3 40
  LOADK R4 K50 ["PublishQuotaUnavailable"]
  SETTABLEN R4 R3 41
  LOADK R4 K51 ["FailedToFetchMarketplaceFee"]
  SETTABLEN R4 R3 42
  LOADK R4 K52 ["QuantityLimitCurrentlyNotSupported"]
  SETTABLEN R4 R3 43
  LOADK R4 K53 ["InvalidQuantityLimit"]
  SETTABLEN R4 R3 44
  LOADK R4 K54 ["ExactCopyOfAssetHasBeenPublished"]
  SETTABLEN R4 R3 45
  LOADK R4 K55 ["ItemIsInBundle"]
  SETTABLEN R4 R3 46
  LOADK R4 K56 ["ResaleRestrictionCurrentlyNotSupported"]
  SETTABLEN R4 R3 47
  LOADK R4 K57 ["InvalidResaleRestriction"]
  SETTABLEN R4 R3 48
  LOADK R4 K58 ["FailedToUpdateCollectibleDescription"]
  SETTABLEN R4 R3 49
  LOADK R4 K59 ["InvalidBundleId"]
  SETTABLEN R4 R3 50
  LOADK R4 K60 ["BundleTypeCannotBeReleased"]
  SETTABLEN R4 R3 51
  LOADK R4 K61 ["BundleIsModerated"]
  SETTABLEN R4 R3 52
  LOADK R4 K62 ["BundleAlreadyReleasedAsUnlimited"]
  SETTABLEN R4 R3 53
  LOADK R4 K63 ["BundlesGatewayUnexpectedErrorCode"]
  SETTABLEN R4 R3 54
  LOADK R4 K64 ["CissUnexpectedException"]
  SETTABLEN R4 R3 55
  LOADK R4 K65 ["PublishingGatewayUnexpectedException"]
  SETTABLEN R4 R3 56
  LOADK R4 K66 ["NonLimitedPublishingNotSupported"]
  SETTABLEN R4 R3 57
  LOADK R4 K67 ["InvalidPublishingType"]
  SETTABLEN R4 R3 58
  LOADK R4 K68 ["InvalidPriceOffset"]
  SETTABLEN R4 R3 59
  LOADK R4 K69 ["InvalidMinimumPrice"]
  SETTABLEN R4 R3 60
  LOADK R4 K70 ["InvalidSaleStatus"]
  SETTABLEN R4 R3 61
  LOADK R4 K71 ["InvalidPriceConfiguration"]
  SETTABLEN R4 R3 62
  LOADK R4 K72 ["FailedToGetPriceConfiguration"]
  SETTABLEN R4 R3 63
  LOADK R4 K73 ["CannotBeFree"]
  SETTABLEN R4 R3 64
  LOADK R4 K74 ["UnexpectedPlaceIds"]
  SETTABLEN R4 R3 65
  LOADK R4 K75 ["MissingAuthenticatedUser"]
  SETTABLEN R4 R3 66
  LOADK R4 K76 ["InvalidCreatorType"]
  SETTABLEN R4 R3 67
  LOADK R4 K77 ["PermissionProviderNotEnabled"]
  SETTABLEN R4 R3 68
  LOADK R4 K78 ["InvalidGroupId"]
  SETTABLEN R4 R3 69
  LOADK R4 K79 ["InsufficientRobux"]
  SETTABLEN R4 R3 70
  LOADK R4 K80 ["ItemNotFound"]
  SETTABLEN R4 R3 71
  LOADK R4 K81 ["ItemIsModerated"]
  SETTABLEN R4 R3 72
  LOADK R4 K82 ["ItemModerationUnknown"]
  SETTABLEN R4 R3 73
  LOADK R4 K83 ["InvalidItemType"]
  SETTABLEN R4 R3 74
  LOADK R4 K84 ["CalendarQuotaExceeded"]
  SETTABLEN R4 R3 101
  LOADK R4 K85 ["CalendarQuotaUnavailable"]
  SETTABLEN R4 R3 102
  LOADK R4 K86 ["PublishingGatewayMissingReason"]
  SETTABLEN R4 R3 103
  LOADK R4 K87 ["PublishingGatewayUnexpectedReason"]
  SETTABLEN R4 R3 104
  LOADK R4 K88 ["PublishingGatewayUnexpectedAccessStatus"]
  SETTABLEN R4 R3 105
  LOADK R4 K89 ["MissingIdVerification"]
  SETTABLEN R4 R3 106
  LOADK R4 K90 ["CreationAccessBlocked"]
  SETTABLEN R4 R3 107
  LOADK R4 K91 ["MissingPremiumSubscriptionTier"]
  SETTABLEN R4 R3 108
  LOADK R4 K92 ["GroupOwnerMissingPremiumSubscriptionTier"]
  SETTABLEN R4 R3 109
  LOADK R4 K93 ["MissingCicRoleset"]
  SETTABLEN R4 R3 110
  DUPCLOSURE R4 K94 [PROTO_2]
  CAPTURE VAL R3
  RETURN R4 1
