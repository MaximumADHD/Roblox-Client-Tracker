PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R2 R1 K1 ["isAllowed"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 DUPTABLE                         R2 K3 [{"type"}]
        6 LOADK                            R3 K4 ["allowed"]
        7 SETTABLEKS                       R3 R2 K2 ["type"]
        9 RETURN                           R2 1
       10 DUPTABLE                         R2 K6 [{"type", "denyReason"}]
       11 LOADK                            R3 K7 ["notAllowed"]
       12 SETTABLEKS                       R3 R2 K2 ["type"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R5 R1 K8 ["deniedReason"]
       17 GETTABLE                         R3 R4 R5
       18 JUMPIF                           R3 ; [+2]
       19 GETTABLEKS                       R3 R1 K8 ["deniedReason"]
       21 SETTABLEKS                       R3 R2 K5 ["denyReason"]
       23 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"type", "message"}]
        1 LOADK                            R2 K3 ["error"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K5 [tostring]
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K1 ["message"]
       11 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["getUploadPermissionStatus"]
        4 CALL                             R3 3 1
        5 DUPCLOSURE                       R5 K1 [PROTO_0]
        6 CAPTURE                          UPVAL U0
        7 NAMECALL                         R3 R3 K2 ["andThen"]
        9 CALL                             R3 2 1
       10 DUPCLOSURE                       R5 K3 [PROTO_1]
       11 NAMECALL                         R3 R3 K4 ["catch"]
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["DebugFlags"]
       15 CALL                             R2 1 1
       16 NEWTABLE                         R3 128 0
       18 LOADN                            R4 0
       19 LOADK                            R5 K9 ["Unknown"]
       20 SETTABLE                         R5 R3 R4
       21 LOADK                            R4 K10 ["InvalidTargetType"]
       22 SETTABLEN                        R4 R3 1
       23 LOADK                            R4 K11 ["FailedToFetchPublishingFee"]
       24 SETTABLEN                        R4 R3 2
       25 LOADK                            R4 K12 ["ServiceUnavailable"]
       26 SETTABLEN                        R4 R3 3
       27 LOADK                            R4 K13 ["InvalidArgument"]
       28 SETTABLEN                        R4 R3 4
       29 LOADK                            R4 K14 ["NotFound"]
       30 SETTABLEN                        R4 R3 5
       31 LOADK                            R4 K15 ["FailedToGetCollectibleItemId"]
       32 SETTABLEN                        R4 R3 6
       33 LOADK                            R4 K16 ["FailedToGetCommissionRates"]
       34 SETTABLEN                        R4 R3 7
       35 LOADK                            R4 K17 ["NullParameterRequest"]
       36 SETTABLEN                        R4 R3 8
       37 LOADK                            R4 K18 ["PublishLimitExceeded"]
       38 SETTABLEN                        R4 R3 9
       39 LOADK                            R4 K19 ["AssetIsPendingValidation"]
       40 SETTABLEN                        R4 R3 10
       41 LOADK                            R4 K20 ["AssetContainsInvalidContent"]
       42 SETTABLEN                        R4 R3 11
       43 LOADK                            R4 K21 ["UserDoesNotHavePermissionsForGroupAsset"]
       44 SETTABLEN                        R4 R3 12
       45 LOADK                            R4 K22 ["AssetTypeCannotBeReleased"]
       46 SETTABLEN                        R4 R3 13
       47 LOADK                            R4 K23 ["AssetIsPendingReview"]
       48 SETTABLEN                        R4 R3 14
       49 LOADK                            R4 K24 ["AssetIsModerated"]
       50 SETTABLEN                        R4 R3 15
       51 LOADK                            R4 K25 ["ItemIsReleased"]
       52 SETTABLEN                        R4 R3 16
       53 LOADK                            R4 K26 ["UserDoesNotHavePermissionToRelease"]
       54 SETTABLEN                        R4 R3 17
       55 LOADK                            R4 K27 ["UserDoesNotOwnTheItem"]
       56 SETTABLEN                        R4 R3 18
       57 LOADK                            R4 K28 ["ItemPriceTooLow"]
       58 SETTABLEN                        R4 R3 19
       59 LOADK                            R4 K29 ["ItemPriceTooHigh"]
       60 SETTABLEN                        R4 R3 20
       61 LOADK                            R4 K30 ["InvalidAssetId"]
       62 SETTABLEN                        R4 R3 21
       63 LOADK                            R4 K31 ["InvalidAgent"]
       64 SETTABLEN                        R4 R3 22
       65 LOADK                            R4 K32 ["NoExperiencesListed"]
       66 SETTABLEN                        R4 R3 23
       67 LOADK                            R4 K33 ["NameIsModerated"]
       68 SETTABLEN                        R4 R3 24
       69 LOADK                            R4 K34 ["DescriptionIsModerated"]
       70 SETTABLEN                        R4 R3 25
       71 LOADK                            R4 K35 ["TextIsModerated"]
       72 SETTABLEN                        R4 R3 26
       73 LOADK                            R4 K36 ["FailedToFilterText"]
       74 SETTABLEN                        R4 R3 27
       75 LOADK                            R4 K37 ["AssetAlreadyReleasedAsUnlimited"]
       76 SETTABLEN                        R4 R3 28
       77 LOADK                            R4 K38 ["AssetInDelayedRelease"]
       78 SETTABLEN                        R4 R3 29
       79 LOADK                            R4 K39 ["InvalidIdempotencyToken"]
       80 SETTABLEN                        R4 R3 30
       81 LOADK                            R4 K40 ["InvalidAgreedPublishingFee"]
       82 SETTABLEN                        R4 R3 31
       83 LOADK                            R4 K41 ["GatewayCouldNotPublishItem"]
       84 SETTABLEN                        R4 R3 32
       85 LOADK                            R4 K42 ["GroupAssetNotSupported"]
       86 SETTABLEN                        R4 R3 33
       87 LOADK                            R4 K43 ["CouldNotFindInitialUserAsset"]
       88 SETTABLEN                        R4 R3 34
       89 LOADK                            R4 K44 ["InvalidQuantity"]
       90 SETTABLEN                        R4 R3 35
       91 LOADK                            R4 K45 ["SaleLocationCurrentlyNotSupported"]
       92 SETTABLEN                        R4 R3 36
       93 LOADK                            R4 K46 ["InvalidCollectibleItemId"]
       94 SETTABLEN                        R4 R3 37
       95 LOADK                            R4 K47 ["FailedToGetCollectibleItemInformation"]
       96 SETTABLEN                        R4 R3 38
       97 LOADK                            R4 K48 ["GroupItemsNotSupported"]
       98 SETTABLEN                        R4 R3 39
       99 LOADK                            R4 K49 ["FailedToUpdateCollectibleItem"]
      100 SETTABLEN                        R4 R3 40
      101 LOADK                            R4 K50 ["PublishQuotaUnavailable"]
      102 SETTABLEN                        R4 R3 41
      103 LOADK                            R4 K51 ["FailedToFetchMarketplaceFee"]
      104 SETTABLEN                        R4 R3 42
      105 LOADK                            R4 K52 ["QuantityLimitCurrentlyNotSupported"]
      106 SETTABLEN                        R4 R3 43
      107 LOADK                            R4 K53 ["InvalidQuantityLimit"]
      108 SETTABLEN                        R4 R3 44
      109 LOADK                            R4 K54 ["ExactCopyOfAssetHasBeenPublished"]
      110 SETTABLEN                        R4 R3 45
      111 LOADK                            R4 K55 ["ItemIsInBundle"]
      112 SETTABLEN                        R4 R3 46
      113 LOADK                            R4 K56 ["ResaleRestrictionCurrentlyNotSupported"]
      114 SETTABLEN                        R4 R3 47
      115 LOADK                            R4 K57 ["InvalidResaleRestriction"]
      116 SETTABLEN                        R4 R3 48
      117 LOADK                            R4 K58 ["FailedToUpdateCollectibleDescription"]
      118 SETTABLEN                        R4 R3 49
      119 LOADK                            R4 K59 ["InvalidBundleId"]
      120 SETTABLEN                        R4 R3 50
      121 LOADK                            R4 K60 ["BundleTypeCannotBeReleased"]
      122 SETTABLEN                        R4 R3 51
      123 LOADK                            R4 K61 ["BundleIsModerated"]
      124 SETTABLEN                        R4 R3 52
      125 LOADK                            R4 K62 ["BundleAlreadyReleasedAsUnlimited"]
      126 SETTABLEN                        R4 R3 53
      127 LOADK                            R4 K63 ["BundlesGatewayUnexpectedErrorCode"]
      128 SETTABLEN                        R4 R3 54
      129 LOADK                            R4 K64 ["CissUnexpectedException"]
      130 SETTABLEN                        R4 R3 55
      131 LOADK                            R4 K65 ["PublishingGatewayUnexpectedException"]
      132 SETTABLEN                        R4 R3 56
      133 LOADK                            R4 K66 ["NonLimitedPublishingNotSupported"]
      134 SETTABLEN                        R4 R3 57
      135 LOADK                            R4 K67 ["InvalidPublishingType"]
      136 SETTABLEN                        R4 R3 58
      137 LOADK                            R4 K68 ["InvalidPriceOffset"]
      138 SETTABLEN                        R4 R3 59
      139 LOADK                            R4 K69 ["InvalidMinimumPrice"]
      140 SETTABLEN                        R4 R3 60
      141 LOADK                            R4 K70 ["InvalidSaleStatus"]
      142 SETTABLEN                        R4 R3 61
      143 LOADK                            R4 K71 ["InvalidPriceConfiguration"]
      144 SETTABLEN                        R4 R3 62
      145 LOADK                            R4 K72 ["FailedToGetPriceConfiguration"]
      146 SETTABLEN                        R4 R3 63
      147 LOADK                            R4 K73 ["CannotBeFree"]
      148 SETTABLEN                        R4 R3 64
      149 LOADK                            R4 K74 ["UnexpectedPlaceIds"]
      150 SETTABLEN                        R4 R3 65
      151 LOADK                            R4 K75 ["MissingAuthenticatedUser"]
      152 SETTABLEN                        R4 R3 66
      153 LOADK                            R4 K76 ["InvalidCreatorType"]
      154 SETTABLEN                        R4 R3 67
      155 LOADK                            R4 K77 ["PermissionProviderNotEnabled"]
      156 SETTABLEN                        R4 R3 68
      157 LOADK                            R4 K78 ["InvalidGroupId"]
      158 SETTABLEN                        R4 R3 69
      159 LOADK                            R4 K79 ["InsufficientRobux"]
      160 SETTABLEN                        R4 R3 70
      161 LOADK                            R4 K80 ["ItemNotFound"]
      162 SETTABLEN                        R4 R3 71
      163 LOADK                            R4 K81 ["ItemIsModerated"]
      164 SETTABLEN                        R4 R3 72
      165 LOADK                            R4 K82 ["ItemModerationUnknown"]
      166 SETTABLEN                        R4 R3 73
      167 LOADK                            R4 K83 ["InvalidItemType"]
      168 SETTABLEN                        R4 R3 74
      169 LOADK                            R4 K84 ["CalendarQuotaExceeded"]
      170 SETTABLEN                        R4 R3 101
      171 LOADK                            R4 K85 ["CalendarQuotaUnavailable"]
      172 SETTABLEN                        R4 R3 102
      173 LOADK                            R4 K86 ["PublishingGatewayMissingReason"]
      174 SETTABLEN                        R4 R3 103
      175 LOADK                            R4 K87 ["PublishingGatewayUnexpectedReason"]
      176 SETTABLEN                        R4 R3 104
      177 LOADK                            R4 K88 ["PublishingGatewayUnexpectedAccessStatus"]
      178 SETTABLEN                        R4 R3 105
      179 LOADK                            R4 K89 ["MissingIdVerification"]
      180 SETTABLEN                        R4 R3 106
      181 LOADK                            R4 K90 ["CreationAccessBlocked"]
      182 SETTABLEN                        R4 R3 107
      183 LOADK                            R4 K91 ["MissingPremiumSubscriptionTier"]
      184 SETTABLEN                        R4 R3 108
      185 LOADK                            R4 K92 ["GroupOwnerMissingPremiumSubscriptionTier"]
      186 SETTABLEN                        R4 R3 109
      187 LOADK                            R4 K93 ["MissingCicRoleset"]
      188 SETTABLEN                        R4 R3 110
      189 DUPCLOSURE                       R4 K94 [PROTO_2]
      190 CAPTURE                          VAL R3
      191 RETURN                           R4 1
