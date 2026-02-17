PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["requestAndRetryGet"]
  LOADK R3 K1 ["https://itemconfiguration.%*/v1/collectibles/check-item-upload-access?targetType=1&groupId=%*"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["getBaseDomain"]
  CALL R5 0 1
  ORK R6 R0 K3 [""]
  NAMECALL R3 R3 K4 ["format"]
  CALL R3 3 1
  MOVE R2 R3
  CALL R1 1 2
  JUMPIF R1 [+7]
  DUPTABLE R3 K7 [{"type", "message"}]
  LOADK R4 K8 ["error"]
  SETTABLEKS R4 R3 K5 ["type"]
  SETTABLEKS R2 R3 K6 ["message"]
  RETURN R3 1
  GETUPVAL R3 1
  MOVE R5 R2
  NAMECALL R3 R3 K9 ["JSONDecode"]
  CALL R3 2 1
  GETTABLEKS R4 R3 K10 ["isAllowed"]
  JUMPIFNOT R4 [+5]
  DUPTABLE R4 K11 [{"type"}]
  LOADK R5 K12 ["allowed"]
  SETTABLEKS R5 R4 K5 ["type"]
  RETURN R4 1
  GETTABLEKS R6 R3 K10 ["isAllowed"]
  JUMPIFEQKB R6 FALSE [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K13 [+4]
  LOADK R6 K13 ["Luau"]
  GETIMPORT R4 K15 [assert]
  CALL R4 2 0
  DUPTABLE R4 K17 [{"type", "denyReason"}]
  LOADK R5 K18 ["notAllowed"]
  SETTABLEKS R5 R4 K5 ["type"]
  GETUPVAL R6 2
  GETTABLEKS R7 R3 K19 ["deniedReason"]
  GETTABLE R5 R6 R7
  JUMPIF R5 [+2]
  GETTABLEKS R5 R3 K19 ["deniedReason"]
  SETTABLEKS R5 R4 K16 ["denyReason"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["UGCValidation"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["util"]
  GETTABLEKS R3 R4 K11 ["APIUtil"]
  CALL R2 1 1
  NEWTABLE R3 128 0
  LOADN R4 0
  LOADK R5 K12 ["Unknown"]
  SETTABLE R5 R3 R4
  LOADK R4 K13 ["InvalidTargetType"]
  SETTABLEN R4 R3 1
  LOADK R4 K14 ["FailedToFetchPublishingFee"]
  SETTABLEN R4 R3 2
  LOADK R4 K15 ["ServiceUnavailable"]
  SETTABLEN R4 R3 3
  LOADK R4 K16 ["InvalidArgument"]
  SETTABLEN R4 R3 4
  LOADK R4 K17 ["NotFound"]
  SETTABLEN R4 R3 5
  LOADK R4 K18 ["FailedToGetCollectibleItemId"]
  SETTABLEN R4 R3 6
  LOADK R4 K19 ["FailedToGetCommissionRates"]
  SETTABLEN R4 R3 7
  LOADK R4 K20 ["NullParameterRequest"]
  SETTABLEN R4 R3 8
  LOADK R4 K21 ["PublishLimitExceeded"]
  SETTABLEN R4 R3 9
  LOADK R4 K22 ["AssetIsPendingValidation"]
  SETTABLEN R4 R3 10
  LOADK R4 K23 ["AssetContainsInvalidContent"]
  SETTABLEN R4 R3 11
  LOADK R4 K24 ["UserDoesNotHavePermissionsForGroupAsset"]
  SETTABLEN R4 R3 12
  LOADK R4 K25 ["AssetTypeCannotBeReleased"]
  SETTABLEN R4 R3 13
  LOADK R4 K26 ["AssetIsPendingReview"]
  SETTABLEN R4 R3 14
  LOADK R4 K27 ["AssetIsModerated"]
  SETTABLEN R4 R3 15
  LOADK R4 K28 ["ItemIsReleased"]
  SETTABLEN R4 R3 16
  LOADK R4 K29 ["UserDoesNotHavePermissionToRelease"]
  SETTABLEN R4 R3 17
  LOADK R4 K30 ["UserDoesNotOwnTheItem"]
  SETTABLEN R4 R3 18
  LOADK R4 K31 ["ItemPriceTooLow"]
  SETTABLEN R4 R3 19
  LOADK R4 K32 ["ItemPriceTooHigh"]
  SETTABLEN R4 R3 20
  LOADK R4 K33 ["InvalidAssetId"]
  SETTABLEN R4 R3 21
  LOADK R4 K34 ["InvalidAgent"]
  SETTABLEN R4 R3 22
  LOADK R4 K35 ["NoExperiencesListed"]
  SETTABLEN R4 R3 23
  LOADK R4 K36 ["NameIsModerated"]
  SETTABLEN R4 R3 24
  LOADK R4 K37 ["DescriptionIsModerated"]
  SETTABLEN R4 R3 25
  LOADK R4 K38 ["TextIsModerated"]
  SETTABLEN R4 R3 26
  LOADK R4 K39 ["FailedToFilterText"]
  SETTABLEN R4 R3 27
  LOADK R4 K40 ["AssetAlreadyReleasedAsUnlimited"]
  SETTABLEN R4 R3 28
  LOADK R4 K41 ["AssetInDelayedRelease"]
  SETTABLEN R4 R3 29
  LOADK R4 K42 ["InvalidIdempotencyToken"]
  SETTABLEN R4 R3 30
  LOADK R4 K43 ["InvalidAgreedPublishingFee"]
  SETTABLEN R4 R3 31
  LOADK R4 K44 ["GatewayCouldNotPublishItem"]
  SETTABLEN R4 R3 32
  LOADK R4 K45 ["GroupAssetNotSupported"]
  SETTABLEN R4 R3 33
  LOADK R4 K46 ["CouldNotFindInitialUserAsset"]
  SETTABLEN R4 R3 34
  LOADK R4 K47 ["InvalidQuantity"]
  SETTABLEN R4 R3 35
  LOADK R4 K48 ["SaleLocationCurrentlyNotSupported"]
  SETTABLEN R4 R3 36
  LOADK R4 K49 ["InvalidCollectibleItemId"]
  SETTABLEN R4 R3 37
  LOADK R4 K50 ["FailedToGetCollectibleItemInformation"]
  SETTABLEN R4 R3 38
  LOADK R4 K51 ["GroupItemsNotSupported"]
  SETTABLEN R4 R3 39
  LOADK R4 K52 ["FailedToUpdateCollectibleItem"]
  SETTABLEN R4 R3 40
  LOADK R4 K53 ["PublishQuotaUnavailable"]
  SETTABLEN R4 R3 41
  LOADK R4 K54 ["FailedToFetchMarketplaceFee"]
  SETTABLEN R4 R3 42
  LOADK R4 K55 ["QuantityLimitCurrentlyNotSupported"]
  SETTABLEN R4 R3 43
  LOADK R4 K56 ["InvalidQuantityLimit"]
  SETTABLEN R4 R3 44
  LOADK R4 K57 ["ExactCopyOfAssetHasBeenPublished"]
  SETTABLEN R4 R3 45
  LOADK R4 K58 ["ItemIsInBundle"]
  SETTABLEN R4 R3 46
  LOADK R4 K59 ["ResaleRestrictionCurrentlyNotSupported"]
  SETTABLEN R4 R3 47
  LOADK R4 K60 ["InvalidResaleRestriction"]
  SETTABLEN R4 R3 48
  LOADK R4 K61 ["FailedToUpdateCollectibleDescription"]
  SETTABLEN R4 R3 49
  LOADK R4 K62 ["InvalidBundleId"]
  SETTABLEN R4 R3 50
  LOADK R4 K63 ["BundleTypeCannotBeReleased"]
  SETTABLEN R4 R3 51
  LOADK R4 K64 ["BundleIsModerated"]
  SETTABLEN R4 R3 52
  LOADK R4 K65 ["BundleAlreadyReleasedAsUnlimited"]
  SETTABLEN R4 R3 53
  LOADK R4 K66 ["BundlesGatewayUnexpectedErrorCode"]
  SETTABLEN R4 R3 54
  LOADK R4 K67 ["CissUnexpectedException"]
  SETTABLEN R4 R3 55
  LOADK R4 K68 ["PublishingGatewayUnexpectedException"]
  SETTABLEN R4 R3 56
  LOADK R4 K69 ["NonLimitedPublishingNotSupported"]
  SETTABLEN R4 R3 57
  LOADK R4 K70 ["InvalidPublishingType"]
  SETTABLEN R4 R3 58
  LOADK R4 K71 ["InvalidPriceOffset"]
  SETTABLEN R4 R3 59
  LOADK R4 K72 ["InvalidMinimumPrice"]
  SETTABLEN R4 R3 60
  LOADK R4 K73 ["InvalidSaleStatus"]
  SETTABLEN R4 R3 61
  LOADK R4 K74 ["InvalidPriceConfiguration"]
  SETTABLEN R4 R3 62
  LOADK R4 K75 ["FailedToGetPriceConfiguration"]
  SETTABLEN R4 R3 63
  LOADK R4 K76 ["CannotBeFree"]
  SETTABLEN R4 R3 64
  LOADK R4 K77 ["UnexpectedPlaceIds"]
  SETTABLEN R4 R3 65
  LOADK R4 K78 ["MissingAuthenticatedUser"]
  SETTABLEN R4 R3 66
  LOADK R4 K79 ["InvalidCreatorType"]
  SETTABLEN R4 R3 67
  LOADK R4 K80 ["PermissionProviderNotEnabled"]
  SETTABLEN R4 R3 68
  LOADK R4 K81 ["InvalidGroupId"]
  SETTABLEN R4 R3 69
  LOADK R4 K82 ["InsufficientRobux"]
  SETTABLEN R4 R3 70
  LOADK R4 K83 ["ItemNotFound"]
  SETTABLEN R4 R3 71
  LOADK R4 K84 ["ItemIsModerated"]
  SETTABLEN R4 R3 72
  LOADK R4 K85 ["ItemModerationUnknown"]
  SETTABLEN R4 R3 73
  LOADK R4 K86 ["InvalidItemType"]
  SETTABLEN R4 R3 74
  LOADK R4 K87 ["CalendarQuotaExceeded"]
  SETTABLEN R4 R3 101
  LOADK R4 K88 ["CalendarQuotaUnavailable"]
  SETTABLEN R4 R3 102
  LOADK R4 K89 ["PublishingGatewayMissingReason"]
  SETTABLEN R4 R3 103
  LOADK R4 K90 ["PublishingGatewayUnexpectedReason"]
  SETTABLEN R4 R3 104
  LOADK R4 K91 ["PublishingGatewayUnexpectedAccessStatus"]
  SETTABLEN R4 R3 105
  LOADK R4 K92 ["MissingIdVerification"]
  SETTABLEN R4 R3 106
  LOADK R4 K93 ["CreationAccessBlocked"]
  SETTABLEN R4 R3 107
  LOADK R4 K94 ["MissingPremiumSubscriptionTier"]
  SETTABLEN R4 R3 108
  LOADK R4 K95 ["GroupOwnerMissingPremiumSubscriptionTier"]
  SETTABLEN R4 R3 109
  LOADK R4 K96 ["MissingCicRoleset"]
  SETTABLEN R4 R3 110
  DUPCLOSURE R4 K97 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R3
  RETURN R4 1
