PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["requestAndRetryGet"]
        3 LOADK                            R3 K1 ["https://itemconfiguration.%*/v1/collectibles/check-item-upload-access?targetType=1&groupId=%*"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["getBaseDomain"]
        7 CALL                             R5 0 1
        8 ORK                              R6 R0 K3 [""]
        9 NAMECALL                         R3 R3 K4 ["format"]
       11 CALL                             R3 3 1
       12 MOVE                             R2 R3
       13 CALL                             R1 1 2
       14 JUMPIF                           R1 ; [+4]
       15 DUPTABLE                         R3 K8 [{["type"] = "error", ["message"]}]
       16 SETTABLEKS                       R2 R3 K7 ["message"]
       18 RETURN                           R3 1
       19 GETUPVAL                         R3 1
       20 MOVE                             R5 R2
       21 NAMECALL                         R3 R3 K9 ["JSONDecode"]
       23 CALL                             R3 2 1
       24 GETTABLEKS                       R4 R3 K10 ["isAllowed"]
       26 JUMPIFNOT                        R4 ; [+2]
       27 DUPTABLE                         R4 K12 [{["type"] = "allowed"}]
       28 RETURN                           R4 1
       29 GETTABLEKS                       R6 R3 K10 ["isAllowed"]
       31 JUMPIFEQKB                       R6 FALSE ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 FASTCALL2K                       ASSERT R5 K13 ; [+4]
       37 LOADK                            R6 K13 ["Luau"]
       38 GETIMPORT                        R4 K15 [assert]
       40 CALL                             R4 2 0
       41 DUPTABLE                         R4 K18 [{["type"] = "notAllowed", ["denyReason"]}]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R7 R3 K19 ["deniedReason"]
       45 GETTABLE                         R5 R6 R7
       46 JUMPIF                           R5 ; [+2]
       47 GETTABLEKS                       R5 R3 K19 ["deniedReason"]
       49 SETTABLEKS                       R5 R4 K17 ["denyReason"]
       51 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UGCValidation"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["util"]
       17 GETTABLEKS                       R3 R3 K11 ["APIUtil"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 128 0
       22 LOADN                            R4 0
       23 LOADK                            R5 K12 ["Unknown"]
       24 SETTABLE                         R5 R3 R4
       25 LOADK                            R4 K13 ["InvalidTargetType"]
       26 SETTABLEN                        R4 R3 1
       27 LOADK                            R4 K14 ["FailedToFetchPublishingFee"]
       28 SETTABLEN                        R4 R3 2
       29 LOADK                            R4 K15 ["ServiceUnavailable"]
       30 SETTABLEN                        R4 R3 3
       31 LOADK                            R4 K16 ["InvalidArgument"]
       32 SETTABLEN                        R4 R3 4
       33 LOADK                            R4 K17 ["NotFound"]
       34 SETTABLEN                        R4 R3 5
       35 LOADK                            R4 K18 ["FailedToGetCollectibleItemId"]
       36 SETTABLEN                        R4 R3 6
       37 LOADK                            R4 K19 ["FailedToGetCommissionRates"]
       38 SETTABLEN                        R4 R3 7
       39 LOADK                            R4 K20 ["NullParameterRequest"]
       40 SETTABLEN                        R4 R3 8
       41 LOADK                            R4 K21 ["PublishLimitExceeded"]
       42 SETTABLEN                        R4 R3 9
       43 LOADK                            R4 K22 ["AssetIsPendingValidation"]
       44 SETTABLEN                        R4 R3 10
       45 LOADK                            R4 K23 ["AssetContainsInvalidContent"]
       46 SETTABLEN                        R4 R3 11
       47 LOADK                            R4 K24 ["UserDoesNotHavePermissionsForGroupAsset"]
       48 SETTABLEN                        R4 R3 12
       49 LOADK                            R4 K25 ["AssetTypeCannotBeReleased"]
       50 SETTABLEN                        R4 R3 13
       51 LOADK                            R4 K26 ["AssetIsPendingReview"]
       52 SETTABLEN                        R4 R3 14
       53 LOADK                            R4 K27 ["AssetIsModerated"]
       54 SETTABLEN                        R4 R3 15
       55 LOADK                            R4 K28 ["ItemIsReleased"]
       56 SETTABLEN                        R4 R3 16
       57 LOADK                            R4 K29 ["UserDoesNotHavePermissionToRelease"]
       58 SETTABLEN                        R4 R3 17
       59 LOADK                            R4 K30 ["UserDoesNotOwnTheItem"]
       60 SETTABLEN                        R4 R3 18
       61 LOADK                            R4 K31 ["ItemPriceTooLow"]
       62 SETTABLEN                        R4 R3 19
       63 LOADK                            R4 K32 ["ItemPriceTooHigh"]
       64 SETTABLEN                        R4 R3 20
       65 LOADK                            R4 K33 ["InvalidAssetId"]
       66 SETTABLEN                        R4 R3 21
       67 LOADK                            R4 K34 ["InvalidAgent"]
       68 SETTABLEN                        R4 R3 22
       69 LOADK                            R4 K35 ["NoExperiencesListed"]
       70 SETTABLEN                        R4 R3 23
       71 LOADK                            R4 K36 ["NameIsModerated"]
       72 SETTABLEN                        R4 R3 24
       73 LOADK                            R4 K37 ["DescriptionIsModerated"]
       74 SETTABLEN                        R4 R3 25
       75 LOADK                            R4 K38 ["TextIsModerated"]
       76 SETTABLEN                        R4 R3 26
       77 LOADK                            R4 K39 ["FailedToFilterText"]
       78 SETTABLEN                        R4 R3 27
       79 LOADK                            R4 K40 ["AssetAlreadyReleasedAsUnlimited"]
       80 SETTABLEN                        R4 R3 28
       81 LOADK                            R4 K41 ["AssetInDelayedRelease"]
       82 SETTABLEN                        R4 R3 29
       83 LOADK                            R4 K42 ["InvalidIdempotencyToken"]
       84 SETTABLEN                        R4 R3 30
       85 LOADK                            R4 K43 ["InvalidAgreedPublishingFee"]
       86 SETTABLEN                        R4 R3 31
       87 LOADK                            R4 K44 ["GatewayCouldNotPublishItem"]
       88 SETTABLEN                        R4 R3 32
       89 LOADK                            R4 K45 ["GroupAssetNotSupported"]
       90 SETTABLEN                        R4 R3 33
       91 LOADK                            R4 K46 ["CouldNotFindInitialUserAsset"]
       92 SETTABLEN                        R4 R3 34
       93 LOADK                            R4 K47 ["InvalidQuantity"]
       94 SETTABLEN                        R4 R3 35
       95 LOADK                            R4 K48 ["SaleLocationCurrentlyNotSupported"]
       96 SETTABLEN                        R4 R3 36
       97 LOADK                            R4 K49 ["InvalidCollectibleItemId"]
       98 SETTABLEN                        R4 R3 37
       99 LOADK                            R4 K50 ["FailedToGetCollectibleItemInformation"]
      100 SETTABLEN                        R4 R3 38
      101 LOADK                            R4 K51 ["GroupItemsNotSupported"]
      102 SETTABLEN                        R4 R3 39
      103 LOADK                            R4 K52 ["FailedToUpdateCollectibleItem"]
      104 SETTABLEN                        R4 R3 40
      105 LOADK                            R4 K53 ["PublishQuotaUnavailable"]
      106 SETTABLEN                        R4 R3 41
      107 LOADK                            R4 K54 ["FailedToFetchMarketplaceFee"]
      108 SETTABLEN                        R4 R3 42
      109 LOADK                            R4 K55 ["QuantityLimitCurrentlyNotSupported"]
      110 SETTABLEN                        R4 R3 43
      111 LOADK                            R4 K56 ["InvalidQuantityLimit"]
      112 SETTABLEN                        R4 R3 44
      113 LOADK                            R4 K57 ["ExactCopyOfAssetHasBeenPublished"]
      114 SETTABLEN                        R4 R3 45
      115 LOADK                            R4 K58 ["ItemIsInBundle"]
      116 SETTABLEN                        R4 R3 46
      117 LOADK                            R4 K59 ["ResaleRestrictionCurrentlyNotSupported"]
      118 SETTABLEN                        R4 R3 47
      119 LOADK                            R4 K60 ["InvalidResaleRestriction"]
      120 SETTABLEN                        R4 R3 48
      121 LOADK                            R4 K61 ["FailedToUpdateCollectibleDescription"]
      122 SETTABLEN                        R4 R3 49
      123 LOADK                            R4 K62 ["InvalidBundleId"]
      124 SETTABLEN                        R4 R3 50
      125 LOADK                            R4 K63 ["BundleTypeCannotBeReleased"]
      126 SETTABLEN                        R4 R3 51
      127 LOADK                            R4 K64 ["BundleIsModerated"]
      128 SETTABLEN                        R4 R3 52
      129 LOADK                            R4 K65 ["BundleAlreadyReleasedAsUnlimited"]
      130 SETTABLEN                        R4 R3 53
      131 LOADK                            R4 K66 ["BundlesGatewayUnexpectedErrorCode"]
      132 SETTABLEN                        R4 R3 54
      133 LOADK                            R4 K67 ["CissUnexpectedException"]
      134 SETTABLEN                        R4 R3 55
      135 LOADK                            R4 K68 ["PublishingGatewayUnexpectedException"]
      136 SETTABLEN                        R4 R3 56
      137 LOADK                            R4 K69 ["NonLimitedPublishingNotSupported"]
      138 SETTABLEN                        R4 R3 57
      139 LOADK                            R4 K70 ["InvalidPublishingType"]
      140 SETTABLEN                        R4 R3 58
      141 LOADK                            R4 K71 ["InvalidPriceOffset"]
      142 SETTABLEN                        R4 R3 59
      143 LOADK                            R4 K72 ["InvalidMinimumPrice"]
      144 SETTABLEN                        R4 R3 60
      145 LOADK                            R4 K73 ["InvalidSaleStatus"]
      146 SETTABLEN                        R4 R3 61
      147 LOADK                            R4 K74 ["InvalidPriceConfiguration"]
      148 SETTABLEN                        R4 R3 62
      149 LOADK                            R4 K75 ["FailedToGetPriceConfiguration"]
      150 SETTABLEN                        R4 R3 63
      151 LOADK                            R4 K76 ["CannotBeFree"]
      152 SETTABLEN                        R4 R3 64
      153 LOADK                            R4 K77 ["UnexpectedPlaceIds"]
      154 SETTABLEN                        R4 R3 65
      155 LOADK                            R4 K78 ["MissingAuthenticatedUser"]
      156 SETTABLEN                        R4 R3 66
      157 LOADK                            R4 K79 ["InvalidCreatorType"]
      158 SETTABLEN                        R4 R3 67
      159 LOADK                            R4 K80 ["PermissionProviderNotEnabled"]
      160 SETTABLEN                        R4 R3 68
      161 LOADK                            R4 K81 ["InvalidGroupId"]
      162 SETTABLEN                        R4 R3 69
      163 LOADK                            R4 K82 ["InsufficientRobux"]
      164 SETTABLEN                        R4 R3 70
      165 LOADK                            R4 K83 ["ItemNotFound"]
      166 SETTABLEN                        R4 R3 71
      167 LOADK                            R4 K84 ["ItemIsModerated"]
      168 SETTABLEN                        R4 R3 72
      169 LOADK                            R4 K85 ["ItemModerationUnknown"]
      170 SETTABLEN                        R4 R3 73
      171 LOADK                            R4 K86 ["InvalidItemType"]
      172 SETTABLEN                        R4 R3 74
      173 LOADK                            R4 K87 ["CalendarQuotaExceeded"]
      174 SETTABLEN                        R4 R3 101
      175 LOADK                            R4 K88 ["CalendarQuotaUnavailable"]
      176 SETTABLEN                        R4 R3 102
      177 LOADK                            R4 K89 ["PublishingGatewayMissingReason"]
      178 SETTABLEN                        R4 R3 103
      179 LOADK                            R4 K90 ["PublishingGatewayUnexpectedReason"]
      180 SETTABLEN                        R4 R3 104
      181 LOADK                            R4 K91 ["PublishingGatewayUnexpectedAccessStatus"]
      182 SETTABLEN                        R4 R3 105
      183 LOADK                            R4 K92 ["MissingIdVerification"]
      184 SETTABLEN                        R4 R3 106
      185 LOADK                            R4 K93 ["CreationAccessBlocked"]
      186 SETTABLEN                        R4 R3 107
      187 LOADK                            R4 K94 ["MissingPremiumSubscriptionTier"]
      188 SETTABLEN                        R4 R3 108
      189 LOADK                            R4 K95 ["GroupOwnerMissingPremiumSubscriptionTier"]
      190 SETTABLEN                        R4 R3 109
      191 LOADK                            R4 K96 ["MissingCicRoleset"]
      192 SETTABLEN                        R4 R3 110
      193 DUPCLOSURE                       R4 K97 [PROTO_0]
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R0
      196 CAPTURE                          VAL R3
      197 RETURN                           R4 1
