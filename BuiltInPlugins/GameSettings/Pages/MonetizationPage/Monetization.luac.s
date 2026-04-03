PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getTaxRate"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K1 ["taxRate"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getMinimumFee"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K1 ["minimumFee"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getShowRewardedAdsToggle"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["showRewardedAdsToggle"]
        7 JUMPIFNOT                        R1 ; [+26]
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R4 1
       10 NAMECALL                         R2 R2 K2 ["getIsUniverseEligibleForRewardedOnDemandAds"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+12]
       14 GETTABLEKS                       R3 R2 K3 ["isUniverseEligible"]
       16 SETTABLEKS                       R3 R0 K4 ["isUniverseEligibleForRewardedOnDemandAds"]
       18 GETTABLEKS                       R3 R2 K5 ["isUniverseSuspendedFromRewardedAds"]
       20 SETTABLEKS                       R3 R0 K5 ["isUniverseSuspendedFromRewardedAds"]
       22 GETTABLEKS                       R3 R2 K6 ["hasUniverseBeenEligible"]
       24 SETTABLEKS                       R3 R0 K7 ["hasUniverseBeenEligibleForRewardedAds"]
       26 GETUPVAL                         R3 0
       27 GETUPVAL                         R5 1
       28 NAMECALL                         R3 R3 K8 ["getIsRewardedOnDemandAdsAllowed"]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R4 2
       32 CALL                             R4 0 1
       33 SETTABLE                         R3 R0 R4
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getPaidAccessEnabled"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 1
        7 SETTABLE                         R1 R0 R2
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getPaidAccessPrice"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["price"]
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getVIPServersEnabled"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 1
        7 SETTABLE                         R1 R0 R2
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getVIPServersPrice"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 MOVE                             R2 R1
        7 JUMPIF                           R2 ; [+1]
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R0 K1 ["vipServersPrice"]
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getVIPServersActiveServersCount"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["vipServersActiveServersCount"]
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getVIPServersActiveSubscriptionsCount"]
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K1 ["vipServersActiveSubscriptionsCount"]
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["getDeveloperProducts"]
        4 CALL                             R1 2 2
        5 SETTABLEKS                       R1 R0 K1 ["developerProducts"]
        7 SETTABLEKS                       R2 R0 K2 ["devProductsCursor"]
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 LOADB                            R4 1
        6 NAMECALL                         R1 R1 K0 ["getDevSubs"]
        8 CALL                             R1 3 1
        9 SETTABLEKS                       R1 R0 K1 ["DeveloperSubscriptions"]
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Settings"]
        3 GETTABLEKS                       R2 R3 K1 ["Current"]
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOTEQKNIL                  R1 ; [+9]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R3 3
       12 NAMECALL                         R1 R1 K2 ["isActive"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 1
       16 CALL                             R2 0 1
       17 SETTABLE                         R1 R0 R2
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Settings"]
        3 GETTABLEKS                       R2 R3 K1 ["Current"]
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOTEQKNIL                  R1 ; [+9]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R3 3
       12 NAMECALL                         R1 R1 K2 ["isFriendsOnly"]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 1
       16 CALL                             R2 0 1
       17 SETTABLE                         R1 R0 R2
       18 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R1 R1 K0 ["getBadges"]
        7 CALL                             R1 2 2
        8 SETTABLEKS                       R1 R0 K1 ["badges"]
       10 SETTABLEKS                       R2 R0 K2 ["badgesCursor"]
       12 RETURN                           R0 0

PROTO_14:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R4 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["monetizationController"]
        9 GETTABLEKS                       R5 R1 K4 ["devSubsController"]
       11 GETTABLEKS                       R6 R1 K5 ["gamePermissionsController"]
       13 NEWTABLE                         R7 0 13
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          VAL R4
       17 NEWCLOSURE                       R9 P1
       18 CAPTURE                          VAL R4
       19 NEWCLOSURE                       R10 P2
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U0
       23 NEWCLOSURE                       R11 P3
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U1
       27 NEWCLOSURE                       R12 P4
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 NEWCLOSURE                       R13 P5
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U2
       34 NEWCLOSURE                       R14 P6
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 NEWCLOSURE                       R15 P7
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 NEWCLOSURE                       R16 P8
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 NEWCLOSURE                       R17 P9
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 NEWCLOSURE                       R18 P10
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R3
       50 NEWCLOSURE                       R19 P11
       51 CAPTURE                          VAL R2
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R3
       55 NEWCLOSURE                       R20 P12
       56 CAPTURE                          VAL R2
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R3
       60 SETLIST                          R7 R8 13 [1]
       62 NEWCLOSURE                       R10 P13
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R3
       66 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       68 MOVE                             R9 R7
       69 GETIMPORT                        R8 K8 [table.insert]
       71 CALL                             R8 2 0
       72 RETURN                           R7 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["isForSale"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setPaidAccessEnabled"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["price"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setPaidAccessPrice"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["vipServersIsEnabled"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setVIPServersEnabled"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Settings"]
        3 GETTABLEKS                       R1 R2 K1 ["Changed"]
        5 GETTABLEKS                       R0 R1 K2 ["vipServersPrice"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setVIPServersPrice"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["Settings"]
        5 GETTABLEKS                       R1 R2 K1 ["Changed"]
        7 GETTABLEKS                       R0 R1 K2 ["isRewardedOnDemandAdsAllowed"]
        9 JUMPIFEQKNIL                     R0 ; [+7]
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R3 3
       13 MOVE                             R4 R0
       14 NAMECALL                         R1 R1 K3 ["setIsRewardedOnDemandAdsAllowed"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["createDevProduct"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["updateDevProduct"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["createDevSub"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLE                         R2 R3 R4
        4 NAMECALL                         R0 R0 K0 ["discontinueDevSub"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLE                         R2 R3 R4
        4 GETUPVAL                         R3 3
        5 NAMECALL                         R0 R0 K0 ["changeDevSub"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_25:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R4 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R4 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["monetizationController"]
        9 GETTABLEKS                       R5 R1 K4 ["devsubs"]
       11 GETTABLEKS                       R8 R2 K5 ["Settings"]
       13 GETTABLEKS                       R7 R8 K6 ["Changed"]
       15 GETTABLEKS                       R6 R7 K7 ["unsavedDevProducts"]
       17 GETTABLEKS                       R9 R2 K5 ["Settings"]
       19 GETTABLEKS                       R8 R9 K6 ["Changed"]
       21 GETTABLEKS                       R7 R8 K8 ["editedDeveloperProducts"]
       23 GETTABLEKS                       R10 R2 K5 ["Settings"]
       25 GETTABLEKS                       R9 R10 K9 ["Current"]
       27 GETTABLEKS                       R8 R9 K10 ["DeveloperSubscriptions"]
       29 GETTABLEKS                       R11 R2 K5 ["Settings"]
       31 GETTABLEKS                       R10 R11 K6 ["Changed"]
       33 GETTABLEKS                       R9 R10 K10 ["DeveloperSubscriptions"]
       35 JUMPIF                           R9 ; [+2]
       36 NEWTABLE                         R9 0 0
       38 GETTABLEKS                       R12 R2 K5 ["Settings"]
       40 GETTABLEKS                       R11 R12 K9 ["Current"]
       42 GETTABLEKS                       R10 R11 K11 ["showRewardedAdsToggle"]
       44 NEWTABLE                         R11 0 5
       46 NEWCLOSURE                       R12 P0
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 NEWCLOSURE                       R13 P1
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 NEWCLOSURE                       R14 P2
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R3
       58 NEWCLOSURE                       R15 P3
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 NEWCLOSURE                       R16 P4
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R3
       67 SETLIST                          R11 R12 5 [1]
       69 JUMPIFEQKNIL                     R6 ; [+18]
       71 GETIMPORT                        R12 K13 [pairs]
       73 MOVE                             R13 R6
       74 CALL                             R12 1 3
       75 FORGPREP_NEXT                    R12
       76 NEWCLOSURE                       R19 P5
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R16
       80 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
       82 MOVE                             R18 R11
       83 GETIMPORT                        R17 K16 [table.insert]
       85 CALL                             R17 2 0
       86 FORGLOOP                         R12 2 ; [-11]
       88 JUMPIFEQKNIL                     R7 ; [+18]
       90 GETIMPORT                        R12 K13 [pairs]
       92 MOVE                             R13 R7
       93 CALL                             R12 1 3
       94 FORGPREP_NEXT                    R12
       95 NEWCLOSURE                       R19 P6
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R16
       99 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
      101 MOVE                             R18 R11
      102 GETIMPORT                        R17 K16 [table.insert]
      104 CALL                             R17 2 0
      105 FORGLOOP                         R12 2 ; [-11]
      107 GETUPVAL                         R12 0
      108 JUMPIFNOT                        R12 ; [+49]
      109 JUMPIFEQKNIL                     R9 ; [+48]
      111 GETIMPORT                        R12 K13 [pairs]
      113 MOVE                             R13 R9
      114 CALL                             R12 1 3
      115 FORGPREP_NEXT                    R12
      116 GETTABLEKS                       R17 R16 K17 ["IsNew"]
      118 JUMPIFNOT                        R17 ; [+11]
      119 NEWCLOSURE                       R19 P7
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R16
      123 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
      125 MOVE                             R18 R11
      126 GETIMPORT                        R17 K16 [table.insert]
      128 CALL                             R17 2 0
      129 JUMP                             ; [+26]
      130 GETTABLEKS                       R17 R16 K18 ["Active"]
      132 JUMPIFNOTEQKB                    R17 FALSE ; [+12]
      134 NEWCLOSURE                       R19 P8
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R15
      138 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
      140 MOVE                             R18 R11
      141 GETIMPORT                        R17 K16 [table.insert]
      143 CALL                             R17 2 0
      144 JUMP                             ; [+11]
      145 NEWCLOSURE                       R19 P9
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R16
      150 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
      152 MOVE                             R18 R11
      153 GETIMPORT                        R17 K16 [table.insert]
      155 CALL                             R17 2 0
      156 FORGLOOP                         R12 2 ; [-41]
      158 RETURN                           R11 1

PROTO_26:
        0 GETTABLEKS                       R3 R1 K0 ["Settings"]
        2 GETTABLEKS                       R2 R3 K1 ["Errors"]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K2 ["showRewardedAdsToggle"]
        6 CALL                             R3 1 1
        7 LOADB                            R4 0
        8 GETTABLEKS                       R8 R1 K0 ["Settings"]
       10 GETTABLEKS                       R7 R8 K3 ["Changed"]
       12 GETTABLEKS                       R6 R7 K4 ["vipServersIsEnabled"]
       14 JUMPIFEQKB                       R6 FALSE ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 GETTABLEKS                       R8 R1 K0 ["Settings"]
       20 GETTABLEKS                       R7 R8 K5 ["Current"]
       22 GETTABLEKS                       R6 R7 K4 ["vipServersIsEnabled"]
       24 JUMPIFNOT                        R6 ; [+9]
       25 GETTABLEKS                       R8 R1 K0 ["Settings"]
       27 GETTABLEKS                       R7 R8 K3 ["Changed"]
       29 GETTABLEKS                       R6 R7 K6 ["vipServersPrice"]
       31 JUMPIFEQKNIL                     R6 ; [+2]
       33 LOADB                            R4 1
       34 DUPTABLE                         R6 K25 [{"TaxRate", "MinimumFee", "RewardedOnDemandAdsSetting", "PaidAccess", "VIPServers", "UnsavedDevProducts", "DevProducts", "EditedDevProducts", "EditDevProductId", "AccessPriceError", "DevProductPriceError", "DevProductNameError", "isEditingSubscription", "editedSubscriptionKey", "Badges", "BadgeLoadState", "isPublic", "isInitiallyEnabled"}]
       35 MOVE                             R7 R0
       36 LOADK                            R8 K26 ["taxRate"]
       37 CALL                             R7 1 1
       38 SETTABLEKS                       R7 R6 K7 ["TaxRate"]
       40 MOVE                             R7 R0
       41 LOADK                            R8 K27 ["minimumFee"]
       42 CALL                             R7 1 1
       43 SETTABLEKS                       R7 R6 K8 ["MinimumFee"]
       45 DUPTABLE                         R7 K32 [{"showRewardedAdsToggle", "isUniverseEligibleForRewardedOnDemandAds", "isRewardedOnDemandAdsAllowed", "isUniverseSuspendedFromRewardedAds", "hasUniverseBeenEligible"}]
       46 SETTABLEKS                       R3 R7 K2 ["showRewardedAdsToggle"]
       48 JUMPIFNOT                        R3 ; [+4]
       49 MOVE                             R8 R0
       50 LOADK                            R9 K28 ["isUniverseEligibleForRewardedOnDemandAds"]
       51 CALL                             R8 1 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R8
       54 SETTABLEKS                       R8 R7 K28 ["isUniverseEligibleForRewardedOnDemandAds"]
       56 JUMPIFNOT                        R3 ; [+7]
       57 GETTABLEKS                       R10 R1 K0 ["Settings"]
       59 GETTABLEKS                       R9 R10 K5 ["Current"]
       61 GETTABLEKS                       R8 R9 K29 ["isRewardedOnDemandAdsAllowed"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R8
       65 SETTABLEKS                       R8 R7 K29 ["isRewardedOnDemandAdsAllowed"]
       67 MOVE                             R8 R0
       68 LOADK                            R9 K30 ["isUniverseSuspendedFromRewardedAds"]
       69 CALL                             R8 1 1
       70 SETTABLEKS                       R8 R7 K30 ["isUniverseSuspendedFromRewardedAds"]
       72 MOVE                             R8 R0
       73 LOADK                            R9 K33 ["hasUniverseBeenEligibleForRewardedAds"]
       74 CALL                             R8 1 1
       75 SETTABLEKS                       R8 R7 K31 ["hasUniverseBeenEligible"]
       77 SETTABLEKS                       R7 R6 K9 ["RewardedOnDemandAdsSetting"]
       79 DUPTABLE                         R7 K37 [{"enabled", "price", "initialPrice"}]
       80 MOVE                             R8 R0
       81 GETUPVAL                         R9 0
       82 CALL                             R9 0 -1
       83 CALL                             R8 -1 1
       84 SETTABLEKS                       R8 R7 K34 ["enabled"]
       86 MOVE                             R8 R0
       87 LOADK                            R9 K35 ["price"]
       88 CALL                             R8 1 1
       89 SETTABLEKS                       R8 R7 K35 ["price"]
       91 GETTABLEKS                       R11 R1 K0 ["Settings"]
       93 GETTABLEKS                       R10 R11 K5 ["Current"]
       95 GETTABLEKS                       R9 R10 K35 ["price"]
       97 JUMPIFNOT                        R9 ; [+7]
       98 GETTABLEKS                       R10 R1 K0 ["Settings"]
      100 GETTABLEKS                       R9 R10 K5 ["Current"]
      102 GETTABLEKS                       R8 R9 K35 ["price"]
      104 JUMPIF                           R8 ; [+1]
      105 LOADN                            R8 0
      106 SETTABLEKS                       R8 R7 K36 ["initialPrice"]
      108 SETTABLEKS                       R7 R6 K10 ["PaidAccess"]
      110 DUPTABLE                         R7 K43 [{"isEnabled", "price", "initialPrice", "activeServersCount", "activeSubscriptionsCount", "changed", "willShutdown"}]
      111 MOVE                             R8 R0
      112 GETUPVAL                         R9 1
      113 CALL                             R9 0 -1
      114 CALL                             R8 -1 1
      115 SETTABLEKS                       R8 R7 K38 ["isEnabled"]
      117 MOVE                             R8 R0
      118 LOADK                            R9 K6 ["vipServersPrice"]
      119 CALL                             R8 1 1
      120 SETTABLEKS                       R8 R7 K35 ["price"]
      122 GETTABLEKS                       R11 R1 K0 ["Settings"]
      124 GETTABLEKS                       R10 R11 K5 ["Current"]
      126 GETTABLEKS                       R9 R10 K6 ["vipServersPrice"]
      128 JUMPIFNOT                        R9 ; [+7]
      129 GETTABLEKS                       R10 R1 K0 ["Settings"]
      131 GETTABLEKS                       R9 R10 K5 ["Current"]
      133 GETTABLEKS                       R8 R9 K6 ["vipServersPrice"]
      135 JUMPIF                           R8 ; [+1]
      136 LOADN                            R8 0
      137 SETTABLEKS                       R8 R7 K36 ["initialPrice"]
      139 MOVE                             R8 R0
      140 LOADK                            R9 K44 ["vipServersActiveServersCount"]
      141 CALL                             R8 1 1
      142 SETTABLEKS                       R8 R7 K39 ["activeServersCount"]
      144 MOVE                             R8 R0
      145 LOADK                            R9 K45 ["vipServersActiveSubscriptionsCount"]
      146 CALL                             R8 1 1
      147 SETTABLEKS                       R8 R7 K40 ["activeSubscriptionsCount"]
      149 SETTABLEKS                       R4 R7 K41 ["changed"]
      151 SETTABLEKS                       R5 R7 K42 ["willShutdown"]
      153 SETTABLEKS                       R7 R6 K11 ["VIPServers"]
      155 MOVE                             R7 R0
      156 LOADK                            R8 K46 ["unsavedDevProducts"]
      157 CALL                             R7 1 1
      158 SETTABLEKS                       R7 R6 K12 ["UnsavedDevProducts"]
      160 GETTABLEKS                       R9 R1 K0 ["Settings"]
      162 GETTABLEKS                       R8 R9 K5 ["Current"]
      164 GETTABLEKS                       R7 R8 K47 ["developerProducts"]
      166 SETTABLEKS                       R7 R6 K13 ["DevProducts"]
      168 GETTABLEKS                       R9 R1 K0 ["Settings"]
      170 GETTABLEKS                       R8 R9 K3 ["Changed"]
      172 GETTABLEKS                       R7 R8 K48 ["editedDeveloperProducts"]
      174 SETTABLEKS                       R7 R6 K14 ["EditedDevProducts"]
      176 GETTABLEKS                       R8 R1 K49 ["EditAsset"]
      178 GETTABLEKS                       R7 R8 K50 ["editDevProductId"]
      180 SETTABLEKS                       R7 R6 K15 ["EditDevProductId"]
      182 GETTABLEKS                       R7 R2 K51 ["monetizationPrice"]
      184 SETTABLEKS                       R7 R6 K16 ["AccessPriceError"]
      186 GETTABLEKS                       R7 R2 K52 ["devProductPrice"]
      188 SETTABLEKS                       R7 R6 K17 ["DevProductPriceError"]
      190 GETTABLEKS                       R7 R2 K53 ["devProductName"]
      192 SETTABLEKS                       R7 R6 K18 ["DevProductNameError"]
      194 MOVE                             R7 R0
      195 LOADK                            R8 K19 ["isEditingSubscription"]
      196 CALL                             R7 1 1
      197 SETTABLEKS                       R7 R6 K19 ["isEditingSubscription"]
      199 MOVE                             R7 R0
      200 LOADK                            R8 K20 ["editedSubscriptionKey"]
      201 CALL                             R7 1 1
      202 SETTABLEKS                       R7 R6 K20 ["editedSubscriptionKey"]
      204 GETTABLEKS                       R9 R1 K0 ["Settings"]
      206 GETTABLEKS                       R8 R9 K5 ["Current"]
      208 GETTABLEKS                       R7 R8 K54 ["badges"]
      210 SETTABLEKS                       R7 R6 K21 ["Badges"]
      212 GETTABLEKS                       R8 R1 K55 ["ComponentLoadState"]
      214 GETTABLEKS                       R7 R8 K21 ["Badges"]
      216 SETTABLEKS                       R7 R6 K22 ["BadgeLoadState"]
      218 MOVE                             R7 R0
      219 GETUPVAL                         R8 2
      220 CALL                             R8 0 -1
      221 CALL                             R7 -1 1
      222 JUMPIFNOT                        R7 ; [+5]
      223 MOVE                             R8 R0
      224 GETUPVAL                         R9 3
      225 CALL                             R9 0 -1
      226 CALL                             R8 -1 1
      227 NOT                              R7 R8
      228 SETTABLEKS                       R7 R6 K23 ["isPublic"]
      230 GETTABLEKS                       R10 R1 K0 ["Settings"]
      232 GETTABLEKS                       R9 R10 K5 ["Current"]
      234 GETUPVAL                         R10 2
      235 CALL                             R10 0 1
      236 GETTABLE                         R8 R9 R10
      237 JUMPIFNOT                        R8 ; [+8]
      238 GETTABLEKS                       R9 R1 K0 ["Settings"]
      240 GETTABLEKS                       R8 R9 K5 ["Current"]
      242 GETUPVAL                         R9 3
      243 CALL                             R9 0 1
      244 GETTABLE                         R7 R8 R9
      245 JUMPIFNOT                        R7 ; [+15]
      246 GETTABLEKS                       R9 R1 K0 ["Settings"]
      248 GETTABLEKS                       R8 R9 K5 ["Current"]
      250 GETUPVAL                         R9 0
      251 CALL                             R9 0 1
      252 GETTABLE                         R7 R8 R9
      253 JUMPIF                           R7 ; [+7]
      254 GETTABLEKS                       R9 R1 K0 ["Settings"]
      256 GETTABLEKS                       R8 R9 K5 ["Current"]
      258 GETUPVAL                         R9 1
      259 CALL                             R9 0 1
      260 GETTABLE                         R7 R8 R9
      261 SETTABLEKS                       R7 R6 K24 ["isInitiallyEnabled"]
      263 GETUPVAL                         R7 4
      264 JUMPIFNOT                        R7 ; [+6]
      265 GETTABLEKS                       R8 R1 K56 ["Metadata"]
      267 GETTABLEKS                       R7 R8 K57 ["gameId"]
      269 SETTABLEKS                       R7 R6 K58 ["GameId"]
      271 RETURN                           R6 1

PROTO_27:
        0 JUMPIFNOTEQKS                    R2 K0 ["Name"] ; [+16]
        2 JUMPIFEQKS                       R3 K1 [""] ; [+3]
        4 JUMPIFNOTEQKNIL                  R3 ; [+12]
        6 MOVE                             R4 R0
        7 GETUPVAL                         R5 0
        8 MOVE                             R6 R1
        9 MOVE                             R7 R2
       10 DUPTABLE                         R8 K3 [{"Empty"}]
       11 LOADK                            R9 K4 ["Name can't be empty"]
       12 SETTABLEKS                       R9 R8 K2 ["Empty"]
       14 CALL                             R5 3 -1
       15 CALL                             R4 -1 0
       16 RETURN                           R0 0
       17 JUMPIFNOTEQKS                    R2 K5 ["Price"] ; [+37]
       19 FASTCALL1                        TONUMBER R3 ; [+3]
       20 MOVE                             R5 R3
       21 GETIMPORT                        R4 K7 [tonumber]
       23 CALL                             R4 1 1
       24 JUMPIFNOT                        R4 ; [+3]
       25 LOADN                            R5 0
       26 JUMPIFNOTLE                      R4 R5 ; [+12]
       28 MOVE                             R5 R0
       29 GETUPVAL                         R6 0
       30 MOVE                             R7 R1
       31 MOVE                             R8 R2
       32 DUPTABLE                         R9 K9 [{"NotANumber"}]
       33 LOADK                            R10 K10 ["Price needs to be a valid number"]
       34 SETTABLEKS                       R10 R9 K8 ["NotANumber"]
       36 CALL                             R6 3 -1
       37 CALL                             R5 -1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R5 1
       40 JUMPIFNOT                        R5 ; [+30]
       41 GETUPVAL                         R5 1
       42 JUMPIFNOTLT                      R5 R4 ; [+28]
       44 MOVE                             R5 R0
       45 GETUPVAL                         R6 0
       46 MOVE                             R7 R1
       47 MOVE                             R8 R2
       48 DUPTABLE                         R9 K12 [{"AboveMaxRobuxAmount"}]
       49 LOADK                            R10 K13 ["Price must be less than a certain amount"]
       50 SETTABLEKS                       R10 R9 K11 ["AboveMaxRobuxAmount"]
       52 CALL                             R6 3 -1
       53 CALL                             R5 -1 0
       54 RETURN                           R0 0
       55 JUMPIFNOTEQKS                    R2 K14 ["Image"] ; [+15]
       57 JUMPIFEQKNIL                     R3 ; [+3]
       59 JUMPIFNOTEQKS                    R3 K15 ["None"] ; [+11]
       61 MOVE                             R4 R0
       62 GETUPVAL                         R5 0
       63 MOVE                             R6 R1
       64 MOVE                             R7 R2
       65 DUPTABLE                         R8 K3 [{"Empty"}]
       66 LOADK                            R9 K16 ["Image can't be empty"]
       67 SETTABLEKS                       R9 R8 K2 ["Empty"]
       69 CALL                             R5 3 -1
       70 CALL                             R4 -1 0
       71 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R1 K0 ["Key"]
        2 GETTABLEKS                       R3 R1 K1 ["Name"]
        4 JUMPIFEQKS                       R3 K2 [""] ; [+3]
        6 JUMPIFNOTEQKNIL                  R3 ; [+12]
        8 MOVE                             R4 R0
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R2
       11 LOADK                            R7 K1 ["Name"]
       12 DUPTABLE                         R8 K4 [{"Empty"}]
       13 LOADK                            R9 K5 ["Name can't be empty"]
       14 SETTABLEKS                       R9 R8 K3 ["Empty"]
       16 CALL                             R5 3 -1
       17 CALL                             R4 -1 0
       18 JUMP                             ; [0]
       19 GETTABLEKS                       R2 R1 K0 ["Key"]
       21 GETTABLEKS                       R3 R1 K6 ["Image"]
       23 JUMPIFEQKNIL                     R3 ; [+3]
       25 JUMPIFNOTEQKS                    R3 K7 ["None"] ; [+11]
       27 MOVE                             R4 R0
       28 GETUPVAL                         R5 0
       29 MOVE                             R6 R2
       30 LOADK                            R7 K6 ["Image"]
       31 DUPTABLE                         R8 K4 [{"Empty"}]
       32 LOADK                            R9 K8 ["Image can't be empty"]
       33 SETTABLEKS                       R9 R8 K3 ["Empty"]
       35 CALL                             R5 3 -1
       36 CALL                             R4 -1 0
       37 GETTABLEKS                       R2 R1 K0 ["Key"]
       39 GETTABLEKS                       R3 R1 K9 ["Price"]
       41 FASTCALL1                        TONUMBER R3 ; [+3]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K11 [tonumber]
       45 CALL                             R4 1 1
       46 JUMPIFNOT                        R4 ; [+3]
       47 LOADN                            R5 0
       48 JUMPIFNOTLE                      R4 R5 ; [+12]
       50 MOVE                             R5 R0
       51 GETUPVAL                         R6 0
       52 MOVE                             R7 R2
       53 LOADK                            R8 K9 ["Price"]
       54 DUPTABLE                         R9 K13 [{"NotANumber"}]
       55 LOADK                            R10 K14 ["Price needs to be a valid number"]
       56 SETTABLEKS                       R10 R9 K12 ["NotANumber"]
       58 CALL                             R6 3 -1
       59 CALL                             R5 -1 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R5 1
       62 JUMPIFNOT                        R5 ; [+13]
       63 GETUPVAL                         R5 1
       64 JUMPIFNOTLT                      R5 R4 ; [+11]
       66 MOVE                             R5 R0
       67 GETUPVAL                         R6 0
       68 MOVE                             R7 R2
       69 LOADK                            R8 K9 ["Price"]
       70 DUPTABLE                         R9 K16 [{"AboveMaxRobuxAmount"}]
       71 LOADK                            R10 K17 ["Price must be less than a certain amount"]
       72 SETTABLEKS                       R10 R9 K15 ["AboveMaxRobuxAmount"]
       74 CALL                             R6 3 -1
       75 CALL                             R5 -1 0
       76 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R3 0 1
        4 MOVE                             R4 R0
        5 CALL                             R2 2 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 LOADK                            R4 K0 ["price"]
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 LOADK                            R4 K1 ["monetizationPrice"]
        9 CALL                             R3 1 -1
       10 CALL                             R2 -1 0
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R4 3
       14 CALL                             R4 0 1
       15 MOVE                             R5 R0
       16 CALL                             R3 2 -1
       17 CALL                             R2 -1 0
       18 RETURN                           R0 0

PROTO_31:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 LOADK                            R4 K2 ["price"]
        8 MOVE                             R5 R1
        9 CALL                             R3 2 -1
       10 CALL                             R2 -1 0
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R3 2
       13 LOADK                            R4 K3 ["monetizationPrice"]
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 0
       16 JUMPIF                           R1 ; [+9]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R3 3
       19 DUPTABLE                         R4 K4 [{"monetizationPrice"}]
       20 LOADK                            R5 K5 ["Invalid"]
       21 SETTABLEKS                       R5 R4 K3 ["monetizationPrice"]
       23 CALL                             R3 1 -1
       24 CALL                             R2 -1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 4
       27 JUMPIFNOTLT                      R1 R2 ; [+10]
       29 GETUPVAL                         R2 0
       30 GETUPVAL                         R3 3
       31 DUPTABLE                         R4 K4 [{"monetizationPrice"}]
       32 LOADK                            R5 K6 ["BelowMin"]
       33 SETTABLEKS                       R5 R4 K3 ["monetizationPrice"]
       35 CALL                             R3 1 -1
       36 CALL                             R2 -1 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 5
       39 JUMPIFNOTLT                      R2 R1 ; [+9]
       41 GETUPVAL                         R2 0
       42 GETUPVAL                         R3 3
       43 DUPTABLE                         R4 K4 [{"monetizationPrice"}]
       44 LOADK                            R5 K7 ["AboveMax"]
       45 SETTABLEKS                       R5 R4 K3 ["monetizationPrice"]
       47 CALL                             R3 1 -1
       48 CALL                             R2 -1 0
       49 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 LOADK                            R4 K0 ["vipServersPrice"]
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 LOADK                            R4 K1 ["monetizationPrice"]
        9 CALL                             R3 1 -1
       10 CALL                             R2 -1 0
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R4 3
       14 CALL                             R4 0 1
       15 MOVE                             R5 R0
       16 CALL                             R3 2 -1
       17 CALL                             R2 -1 0
       18 RETURN                           R0 0

PROTO_33:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 LOADK                            R4 K2 ["vipServersPrice"]
        8 MOVE                             R5 R1
        9 CALL                             R3 2 -1
       10 CALL                             R2 -1 0
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R3 2
       13 LOADK                            R4 K3 ["monetizationPrice"]
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 0
       16 JUMPIF                           R1 ; [+9]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R3 3
       19 DUPTABLE                         R4 K4 [{"monetizationPrice"}]
       20 LOADK                            R5 K5 ["Invalid"]
       21 SETTABLEKS                       R5 R4 K3 ["monetizationPrice"]
       23 CALL                             R3 1 -1
       24 CALL                             R2 -1 0
       25 RETURN                           R0 0
       26 JUMPIFEQKN                       R1 K6 [0] ; [+12]
       28 GETUPVAL                         R2 4
       29 JUMPIFNOTLT                      R1 R2 ; [+9]
       31 GETUPVAL                         R2 0
       32 GETUPVAL                         R3 3
       33 DUPTABLE                         R4 K4 [{"monetizationPrice"}]
       34 LOADK                            R5 K7 ["BelowMin"]
       35 SETTABLEKS                       R5 R4 K3 ["monetizationPrice"]
       37 CALL                             R3 1 -1
       38 CALL                             R2 -1 0
       39 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_35:
        0 JUMPIFNOT                        R2 ; [+8]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 NEWTABLE                         R5 1 0
        5 SETTABLE                         R2 R5 R1
        6 CALL                             R4 1 -1
        7 CALL                             R3 -1 0
        8 JUMP                             ; [+26]
        9 JUMPIFNOT                        R1 ; [+25]
       10 FASTCALL1                        TYPE R1 ; [+3]
       11 MOVE                             R4 R1
       12 GETIMPORT                        R3 K1 [type]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+14]
       17 GETIMPORT                        R3 K4 [ipairs]
       19 MOVE                             R4 R1
       20 CALL                             R3 1 3
       21 FORGPREP_INEXT                   R3
       22 GETUPVAL                         R8 0
       23 GETUPVAL                         R9 2
       24 MOVE                             R10 R7
       25 CALL                             R9 1 -1
       26 CALL                             R8 -1 0
       27 FORGLOOP                         R3 2 [inext] ; [-6]
       29 JUMP                             ; [+5]
       30 GETUPVAL                         R3 0
       31 GETUPVAL                         R4 2
       32 MOVE                             R5 R1
       33 CALL                             R4 1 -1
       34 CALL                             R3 -1 0
       35 GETUPVAL                         R3 0
       36 GETUPVAL                         R4 3
       37 LOADK                            R5 K5 ["unsavedDevProducts"]
       38 MOVE                             R6 R0
       39 CALL                             R4 2 -1
       40 CALL                             R3 -1 0
       41 RETURN                           R0 0

PROTO_36:
        0 JUMPIFNOT                        R2 ; [+8]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 NEWTABLE                         R5 1 0
        5 SETTABLE                         R2 R5 R1
        6 CALL                             R4 1 -1
        7 CALL                             R3 -1 0
        8 JUMP                             ; [+26]
        9 JUMPIFNOT                        R1 ; [+25]
       10 FASTCALL1                        TYPE R1 ; [+3]
       11 MOVE                             R4 R1
       12 GETIMPORT                        R3 K1 [type]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+14]
       17 GETIMPORT                        R3 K4 [ipairs]
       19 MOVE                             R4 R1
       20 CALL                             R3 1 3
       21 FORGPREP_INEXT                   R3
       22 GETUPVAL                         R8 0
       23 GETUPVAL                         R9 2
       24 MOVE                             R10 R7
       25 CALL                             R9 1 -1
       26 CALL                             R8 -1 0
       27 FORGLOOP                         R3 2 [inext] ; [-6]
       29 JUMP                             ; [+5]
       30 GETUPVAL                         R3 0
       31 GETUPVAL                         R4 2
       32 MOVE                             R5 R1
       33 CALL                             R4 1 -1
       34 CALL                             R3 -1 0
       35 GETUPVAL                         R3 0
       36 GETUPVAL                         R4 3
       37 LOADK                            R5 K5 ["editedDeveloperProducts"]
       38 MOVE                             R6 R0
       39 CALL                             R4 2 -1
       40 CALL                             R3 -1 0
       41 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["Badges"]
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R3 R4 K1 ["Loading"]
        6 CALL                             R1 2 -1
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R1 3
       10 LOADB                            R2 1
       11 CALL                             R1 1 -1
       12 CALL                             R0 -1 0
       13 GETUPVAL                         R0 0
       14 GETUPVAL                         R1 1
       15 LOADK                            R2 K0 ["Badges"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K2 ["Loaded"]
       19 CALL                             R1 2 -1
       20 CALL                             R0 -1 0
       21 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 CALL                             R3 4 0
       13 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Key"]
        3 GETTABLEKS                       R3 R0 K1 ["Name"]
        5 JUMPIFEQKS                       R3 K2 [""] ; [+3]
        7 JUMPIFNOTEQKNIL                  R3 ; [+12]
        9 MOVE                             R4 R1
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R2
       12 LOADK                            R7 K1 ["Name"]
       13 DUPTABLE                         R8 K4 [{"Empty"}]
       14 LOADK                            R9 K5 ["Name can't be empty"]
       15 SETTABLEKS                       R9 R8 K3 ["Empty"]
       17 CALL                             R5 3 -1
       18 CALL                             R4 -1 0
       19 JUMP                             ; [0]
       20 GETTABLEKS                       R2 R0 K0 ["Key"]
       22 GETTABLEKS                       R3 R0 K6 ["Image"]
       24 JUMPIFEQKNIL                     R3 ; [+3]
       26 JUMPIFNOTEQKS                    R3 K7 ["None"] ; [+11]
       28 MOVE                             R4 R1
       29 GETUPVAL                         R5 1
       30 MOVE                             R6 R2
       31 LOADK                            R7 K6 ["Image"]
       32 DUPTABLE                         R8 K4 [{"Empty"}]
       33 LOADK                            R9 K8 ["Image can't be empty"]
       34 SETTABLEKS                       R9 R8 K3 ["Empty"]
       36 CALL                             R5 3 -1
       37 CALL                             R4 -1 0
       38 GETTABLEKS                       R2 R0 K0 ["Key"]
       40 GETTABLEKS                       R3 R0 K9 ["Price"]
       42 FASTCALL1                        TONUMBER R3 ; [+3]
       43 MOVE                             R5 R3
       44 GETIMPORT                        R4 K11 [tonumber]
       46 CALL                             R4 1 1
       47 JUMPIFNOT                        R4 ; [+3]
       48 LOADN                            R5 0
       49 JUMPIFNOTLE                      R4 R5 ; [+12]
       51 MOVE                             R5 R1
       52 GETUPVAL                         R6 1
       53 MOVE                             R7 R2
       54 LOADK                            R8 K9 ["Price"]
       55 DUPTABLE                         R9 K13 [{"NotANumber"}]
       56 LOADK                            R10 K14 ["Price needs to be a valid number"]
       57 SETTABLEKS                       R10 R9 K12 ["NotANumber"]
       59 CALL                             R6 3 -1
       60 CALL                             R5 -1 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R5 2
       63 JUMPIFNOT                        R5 ; [+13]
       64 GETUPVAL                         R5 2
       65 JUMPIFNOTLT                      R5 R4 ; [+11]
       67 MOVE                             R5 R1
       68 GETUPVAL                         R6 1
       69 MOVE                             R7 R2
       70 LOADK                            R8 K9 ["Price"]
       71 DUPTABLE                         R9 K16 [{"AboveMaxRobuxAmount"}]
       72 LOADK                            R10 K17 ["Price must be less than a certain amount"]
       73 SETTABLEKS                       R10 R9 K15 ["AboveMaxRobuxAmount"]
       75 CALL                             R6 3 -1
       76 CALL                             R5 -1 0
       77 RETURN                           R0 0

PROTO_42:
        0 LOADK                            R1 K0 ["TEMPORARY_"]
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        4 CALL                             R2 1 1
        5 CONCAT                           R0 R1 R2
        6 DUPTABLE                         R1 K9 [{"IsNew", "Key", "Price", "Subscribers", "Active", "Id", "Prepaid"}]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R1 K2 ["IsNew"]
       10 SETTABLEKS                       R0 R1 K3 ["Key"]
       12 LOADN                            R2 0
       13 SETTABLEKS                       R2 R1 K4 ["Price"]
       15 LOADN                            R2 0
       16 SETTABLEKS                       R2 R1 K5 ["Subscribers"]
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R1 K6 ["Active"]
       21 LOADN                            R2 255
       22 SETTABLEKS                       R2 R1 K7 ["Id"]
       24 LOADN                            R2 6
       25 SETTABLEKS                       R2 R1 K8 ["Prepaid"]
       27 GETUPVAL                         R2 1
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R4 R1 K3 ["Key"]
       31 MOVE                             R5 R1
       32 CALL                             R3 2 -1
       33 CALL                             R2 -1 0
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R3 R1 K3 ["Key"]
       37 GETTABLEKS                       R4 R1 K10 ["Name"]
       39 JUMPIFEQKS                       R4 K11 [""] ; [+3]
       41 JUMPIFNOTEQKNIL                  R4 ; [+12]
       43 MOVE                             R5 R2
       44 GETUPVAL                         R6 3
       45 MOVE                             R7 R3
       46 LOADK                            R8 K10 ["Name"]
       47 DUPTABLE                         R9 K13 [{"Empty"}]
       48 LOADK                            R10 K14 ["Name can't be empty"]
       49 SETTABLEKS                       R10 R9 K12 ["Empty"]
       51 CALL                             R6 3 -1
       52 CALL                             R5 -1 0
       53 JUMP                             ; [0]
       54 GETTABLEKS                       R3 R1 K3 ["Key"]
       56 GETTABLEKS                       R4 R1 K15 ["Image"]
       58 JUMPIFEQKNIL                     R4 ; [+3]
       60 JUMPIFNOTEQKS                    R4 K16 ["None"] ; [+11]
       62 MOVE                             R5 R2
       63 GETUPVAL                         R6 3
       64 MOVE                             R7 R3
       65 LOADK                            R8 K15 ["Image"]
       66 DUPTABLE                         R9 K13 [{"Empty"}]
       67 LOADK                            R10 K17 ["Image can't be empty"]
       68 SETTABLEKS                       R10 R9 K12 ["Empty"]
       70 CALL                             R6 3 -1
       71 CALL                             R5 -1 0
       72 GETTABLEKS                       R3 R1 K3 ["Key"]
       74 GETTABLEKS                       R4 R1 K4 ["Price"]
       76 FASTCALL1                        TONUMBER R4 ; [+3]
       77 MOVE                             R6 R4
       78 GETIMPORT                        R5 K19 [tonumber]
       80 CALL                             R5 1 1
       81 JUMPIFNOT                        R5 ; [+3]
       82 LOADN                            R6 0
       83 JUMPIFNOTLE                      R5 R6 ; [+12]
       85 MOVE                             R6 R2
       86 GETUPVAL                         R7 3
       87 MOVE                             R8 R3
       88 LOADK                            R9 K4 ["Price"]
       89 DUPTABLE                         R10 K21 [{"NotANumber"}]
       90 LOADK                            R11 K22 ["Price needs to be a valid number"]
       91 SETTABLEKS                       R11 R10 K20 ["NotANumber"]
       93 CALL                             R7 3 -1
       94 CALL                             R6 -1 0
       95 JUMP                             ; [+15]
       96 GETUPVAL                         R6 4
       97 JUMPIFNOT                        R6 ; [+13]
       98 GETUPVAL                         R6 4
       99 JUMPIFNOTLT                      R6 R5 ; [+11]
      101 MOVE                             R6 R2
      102 GETUPVAL                         R7 3
      103 MOVE                             R8 R3
      104 LOADK                            R9 K4 ["Price"]
      105 DUPTABLE                         R10 K24 [{"AboveMaxRobuxAmount"}]
      106 LOADK                            R11 K25 ["Price must be less than a certain amount"]
      107 SETTABLEKS                       R11 R10 K23 ["AboveMaxRobuxAmount"]
      109 CALL                             R7 3 -1
      110 CALL                             R6 -1 0
      111 GETUPVAL                         R2 1
      112 GETUPVAL                         R3 5
      113 LOADK                            R4 K26 ["isEditingSubscription"]
      114 LOADB                            R5 1
      115 CALL                             R3 2 -1
      116 CALL                             R2 -1 0
      117 GETUPVAL                         R2 1
      118 GETUPVAL                         R3 5
      119 LOADK                            R4 K27 ["editedSubscriptionKey"]
      120 GETTABLEKS                       R5 R1 K3 ["Key"]
      122 CALL                             R3 2 -1
      123 CALL                             R2 -1 0
      124 RETURN                           R0 0

PROTO_43:
        0 DUPTABLE                         R2 K14 [{"RewardedOnDemandAdsToggled", "PaidAccessToggled", "PaidAccessPriceChanged", "VIPServersToggled", "VIPServersPriceChanged", "SetEditDevProductId", "SetUnsavedDevProducts", "SetDevProducts", "LoadMoreDevProducts", "LoadMoreBadges", "RefreshBadges", "SetDevSubKey", "OnDeveloperSubscriptionChanged", "OnDeveloperSubscriptionCreated"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R3 R2 K0 ["RewardedOnDemandAdsToggled"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 SETTABLEKS                       R3 R2 K1 ["PaidAccessToggled"]
       14 NEWCLOSURE                       R3 P2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 SETTABLEKS                       R3 R2 K2 ["PaidAccessPriceChanged"]
       23 NEWCLOSURE                       R3 P3
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U7
       28 SETTABLEKS                       R3 R2 K3 ["VIPServersToggled"]
       30 NEWCLOSURE                       R3 P4
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U8
       36 SETTABLEKS                       R3 R2 K4 ["VIPServersPriceChanged"]
       38 NEWCLOSURE                       R3 P5
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U9
       41 SETTABLEKS                       R3 R2 K5 ["SetEditDevProductId"]
       43 NEWCLOSURE                       R3 P6
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U0
       48 SETTABLEKS                       R3 R2 K6 ["SetUnsavedDevProducts"]
       50 NEWCLOSURE                       R3 P7
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U0
       55 SETTABLEKS                       R3 R2 K7 ["SetDevProducts"]
       57 NEWCLOSURE                       R3 P8
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U10
       60 SETTABLEKS                       R3 R2 K8 ["LoadMoreDevProducts"]
       62 NEWCLOSURE                       R3 P9
       63 CAPTURE                          VAL R1
       64 CAPTURE                          UPVAL U11
       65 SETTABLEKS                       R3 R2 K9 ["LoadMoreBadges"]
       67 NEWCLOSURE                       R4 P10
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U12
       70 CAPTURE                          UPVAL U13
       71 CAPTURE                          UPVAL U11
       72 ORK                              R3 R4 K15 []
       73 SETTABLEKS                       R3 R2 K10 ["RefreshBadges"]
       75 NEWCLOSURE                       R3 P11
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U14
       78 CAPTURE                          UPVAL U15
       79 SETTABLEKS                       R3 R2 K11 ["SetDevSubKey"]
       81 NEWCLOSURE                       R3 P12
       82 CAPTURE                          VAL R1
       83 CAPTURE                          UPVAL U16
       84 CAPTURE                          UPVAL U17
       85 SETTABLEKS                       R3 R2 K12 ["OnDeveloperSubscriptionChanged"]
       87 NEWCLOSURE                       R3 P13
       88 CAPTURE                          UPVAL U18
       89 CAPTURE                          VAL R1
       90 CAPTURE                          UPVAL U19
       91 CAPTURE                          UPVAL U16
       92 CAPTURE                          UPVAL U17
       93 CAPTURE                          UPVAL U0
       94 SETTABLEKS                       R3 R2 K13 ["OnDeveloperSubscriptionCreated"]
       96 RETURN                           R2 1

PROTO_44:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETTABLEKS                       R7 R6 K2 ["id"]
        9 DUPTABLE                         R8 K6 [{"index", "row", "icon"}]
       10 SETTABLEKS                       R5 R8 K3 ["index"]
       12 NEWTABLE                         R9 0 2
       14 GETTABLEKS                       R10 R6 K7 ["name"]
       16 GETTABLEKS                       R11 R6 K8 ["description"]
       18 SETLIST                          R9 R10 2 [1]
       20 SETTABLEKS                       R9 R8 K4 ["row"]
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R9 R10 K9 ["createElement"]
       25 GETUPVAL                         R10 1
       26 DUPTABLE                         R11 K12 [{"Id", "Size"}]
       27 GETTABLEKS                       R12 R6 K13 ["iconImageId"]
       29 SETTABLEKS                       R12 R11 K10 ["Id"]
       31 GETIMPORT                        R12 K16 [UDim2.fromScale]
       33 LOADN                            R13 1
       34 LOADN                            R14 1
       35 CALL                             R12 2 1
       36 SETTABLEKS                       R12 R11 K11 ["Size"]
       38 CALL                             R9 2 1
       39 SETTABLEKS                       R9 R8 K5 ["icon"]
       41 SETTABLE                         R8 R1 R7
       42 FORGLOOP                         R2 2 ; [-36]
       44 RETURN                           R1 1

PROTO_45:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R3 1
        3 GETIMPORT                        R4 K1 [pairs]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 3
        7 FORGPREP_NEXT                    R4
        8 GETTABLEKS                       R10 R8 K2 ["id"]
       10 JUMPIFNOTEQKNIL                  R10 ; [+2]
       12 LOADB                            R9 0 +1
       13 LOADB                            R9 1
       14 JUMPIFNOT                        R9 ; [+3]
       15 GETTABLEKS                       R10 R8 K2 ["id"]
       17 JUMPIF                           R10 ; [+5]
       18 LOADK                            R12 K3 ["Monetization"]
       19 LOADK                            R13 K4 ["UnsavedDevProduct"]
       20 NAMECALL                         R10 R1 K5 ["getText"]
       22 CALL                             R10 3 1
       23 JUMPIFNOT                        R9 ; [+3]
       24 GETTABLEKS                       R11 R8 K2 ["id"]
       26 JUMPIF                           R11 ; [+1]
       27 MOVE                             R11 R3
       28 DUPTABLE                         R12 K8 [{"index", "row"}]
       29 SETTABLEKS                       R7 R12 K6 ["index"]
       31 NEWTABLE                         R13 0 3
       33 MOVE                             R14 R10
       34 GETTABLEKS                       R15 R8 K9 ["name"]
       36 GETTABLEKS                       R16 R8 K10 ["price"]
       38 SETLIST                          R13 R14 3 [1]
       40 SETTABLEKS                       R13 R12 K7 ["row"]
       42 SETTABLE                         R12 R2 R11
       43 ADDK                             R3 R3 K11 [1]
       44 FORGLOOP                         R4 2 ; [-37]
       46 MOVE                             R4 R2
       47 SUBK                             R5 R3 K11 [1]
       48 RETURN                           R4 2

PROTO_46:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
        9 MOVE                             R9 R2
       10 MOVE                             R10 R6
       11 GETIMPORT                        R8 K4 [table.insert]
       13 CALL                             R8 2 0
       14 FORGLOOP                         R3 2 ; [-8]
       16 GETIMPORT                        R3 K6 [table.sort]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 0
       20 NEWTABLE                         R3 0 0
       22 LOADN                            R4 1
       23 GETIMPORT                        R5 K1 [pairs]
       25 MOVE                             R6 R0
       26 CALL                             R5 1 3
       27 FORGPREP_NEXT                    R5
       28 FASTCALL3                        TABLE_INSERT R3 R4 R9
       30 MOVE                             R11 R3
       31 MOVE                             R12 R4
       32 MOVE                             R13 R9
       33 GETIMPORT                        R10 K4 [table.insert]
       35 CALL                             R10 3 0
       36 ADDK                             R4 R4 K7 [1]
       37 FORGLOOP                         R5 2 ; [-10]
       39 GETIMPORT                        R5 K9 [ipairs]
       41 MOVE                             R6 R2
       42 CALL                             R5 1 3
       43 FORGPREP_INEXT                   R5
       44 GETTABLE                         R13 R1 R9
       45 FASTCALL3                        TABLE_INSERT R3 R4 R13
       47 MOVE                             R11 R3
       48 MOVE                             R12 R4
       49 GETIMPORT                        R10 K4 [table.insert]
       51 CALL                             R10 3 0
       52 ADDK                             R4 R4 K7 [1]
       53 FORGLOOP                         R5 2 [inext] ; [-10]
       55 RETURN                           R3 1

PROTO_47:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R4
        2 RETURN                           R4 1
        3 LOADNIL                          R4
        4 GETUPVAL                         R6 0
        5 GETTABLE                         R5 R6 R0
        6 JUMPIFNOT                        R5 ; [+54]
        7 LOADNIL                          R5
        8 JUMPIFNOTEQKS                    R0 K0 ["BelowMin"] ; [+24]
       10 JUMPIFNOT                        R1 ; [+7]
       11 GETIMPORT                        R6 K3 [string.format]
       13 LOADK                            R7 K4 ["%.f"]
       14 GETUPVAL                         R8 1
       15 CALL                             R6 2 1
       16 MOVE                             R5 R6
       17 JUMP                             ; [+31]
       18 JUMPIFNOT                        R2 ; [+7]
       19 GETIMPORT                        R6 K3 [string.format]
       21 LOADK                            R7 K4 ["%.f"]
       22 GETUPVAL                         R8 2
       23 CALL                             R6 2 1
       24 MOVE                             R5 R6
       25 JUMP                             ; [+23]
       26 GETIMPORT                        R6 K3 [string.format]
       28 LOADK                            R7 K4 ["%.f"]
       29 GETUPVAL                         R8 3
       30 CALL                             R6 2 1
       31 MOVE                             R5 R6
       32 JUMP                             ; [+16]
       33 JUMPIFNOTEQKS                    R0 K5 ["AboveMax"] ; [+15]
       35 JUMPIFNOT                        R2 ; [+7]
       36 GETIMPORT                        R6 K3 [string.format]
       38 LOADK                            R7 K4 ["%.f"]
       39 GETUPVAL                         R8 4
       40 CALL                             R6 2 1
       41 MOVE                             R5 R6
       42 JUMP                             ; [+6]
       43 GETIMPORT                        R6 K3 [string.format]
       45 LOADK                            R7 K4 ["%.f"]
       46 GETUPVAL                         R8 5
       47 CALL                             R6 2 1
       48 MOVE                             R5 R6
       49 LOADK                            R8 K6 ["Errors"]
       50 GETUPVAL                         R10 0
       51 GETTABLE                         R9 R10 R0
       52 NEWTABLE                         R10 0 1
       54 MOVE                             R11 R5
       55 SETLIST                          R10 R11 1 [1]
       57 NAMECALL                         R6 R3 K7 ["getText"]
       59 CALL                             R6 4 1
       60 MOVE                             R4 R6
       61 RETURN                           R4 1

PROTO_48:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R2
        2 RETURN                           R2 1
        3 LOADNIL                          R2
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R0
        6 JUMPIFNOT                        R3 ; [+9]
        7 JUMPIFNOTEQKS                    R0 K0 ["Empty"] ; [+8]
        9 LOADK                            R5 K1 ["General"]
       10 GETUPVAL                         R7 0
       11 GETTABLE                         R6 R7 R0
       12 NAMECALL                         R3 R1 K2 ["getText"]
       14 CALL                             R3 3 1
       15 MOVE                             R2 R3
       16 RETURN                           R2 1

PROTO_49:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["name"]
        4 GETIMPORT                        R4 K3 [utf8.len]
        6 MOVE                             R5 R3
        7 CALL                             R4 1 1
        8 GETTABLEKS                       R6 R0 K4 ["price"]
       10 FASTCALL1                        TONUMBER R6 ; [+2]
       11 GETIMPORT                        R5 K6 [tonumber]
       13 CALL                             R5 1 1
       14 LOADN                            R6 1
       15 JUMPIFLT                         R4 R6 ; [+4]
       17 GETUPVAL                         R6 0
       18 JUMPIFNOTLT                      R6 R4 ; [+19]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R7 R8 K7 ["Dictionary"]
       23 GETTABLEKS                       R6 R7 K8 ["join"]
       25 MOVE                             R7 R0
       26 DUPTABLE                         R8 K9 [{"name"}]
       27 SETTABLEKS                       R1 R8 K0 ["name"]
       29 CALL                             R6 2 1
       30 MOVE                             R0 R6
       31 FASTCALL2K                       TABLE_INSERT R2 K10 ; [+5]
       33 MOVE                             R7 R2
       34 LOADK                            R8 K10 ["devProductName"]
       35 GETIMPORT                        R6 K13 [table.insert]
       37 CALL                             R6 2 0
       38 FASTCALL1                        TYPE R5 ; [+3]
       39 MOVE                             R7 R5
       40 GETIMPORT                        R6 K15 [type]
       42 CALL                             R6 1 1
       43 JUMPIFNOTEQKS                    R6 K16 ["number"] ; [+4]
       45 LOADN                            R6 1
       46 JUMPIFNOTLT                      R5 R6 ; [+20]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R7 R8 K7 ["Dictionary"]
       51 GETTABLEKS                       R6 R7 K8 ["join"]
       53 MOVE                             R7 R0
       54 DUPTABLE                         R8 K17 [{"price"}]
       55 LOADN                            R9 1
       56 SETTABLEKS                       R9 R8 K4 ["price"]
       58 CALL                             R6 2 1
       59 MOVE                             R0 R6
       60 FASTCALL2K                       TABLE_INSERT R2 K18 ; [+5]
       62 MOVE                             R7 R2
       63 LOADK                            R8 K18 ["devProductPrice"]
       64 GETIMPORT                        R6 K13 [table.insert]
       66 CALL                             R6 2 0
       67 MOVE                             R6 R0
       68 MOVE                             R7 R2
       69 RETURN                           R6 2

PROTO_50:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_51:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["PaidAccess"]
        3 GETTABLEKS                       R2 R3 K1 ["initialPrice"]
        5 GETUPVAL                         R3 1
        6 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        8 GETIMPORT                        R1 K4 [math.max]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_52:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["VIPServers"]
        3 GETTABLEKS                       R2 R3 K1 ["initialPrice"]
        5 GETUPVAL                         R3 1
        6 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        8 GETIMPORT                        R1 K4 [math.max]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_53:
        0 GETIMPORT                        R0 K2 [string.format]
        2 LOADK                            R1 K3 ["%d"]
        3 GETUPVAL                         R3 0
        4 ADDK                             R2 R3 K4 [1]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 2
        7 LOADK                            R3 K5 ["Monetization"]
        8 LOADK                            R4 K6 ["UnsavedDevProductName1"]
        9 NEWTABLE                         R5 0 1
       11 MOVE                             R6 R0
       12 SETLIST                          R5 R6 1 [1]
       14 NAMECALL                         R1 R1 K7 ["getText"]
       16 CALL                             R1 4 1
       17 SETUPVAL                         R1 1
       18 GETUPVAL                         R2 3
       19 LOADN                            R3 1
       20 DUPTABLE                         R4 K11 [{"name", "price", "iconImageAssetId"}]
       21 GETUPVAL                         R5 1
       22 SETTABLEKS                       R5 R4 K8 ["name"]
       24 LOADN                            R5 1
       25 SETTABLEKS                       R5 R4 K9 ["price"]
       27 LOADK                            R5 K12 ["None"]
       28 SETTABLEKS                       R5 R4 K10 ["iconImageAssetId"]
       30 FASTCALL                         TABLE_INSERT ; [+2]
       31 GETIMPORT                        R1 K15 [table.insert]
       33 CALL                             R1 3 0
       34 GETUPVAL                         R1 4
       35 GETUPVAL                         R2 3
       36 LOADNIL                          R3
       37 LOADNIL                          R4
       38 CALL                             R1 3 0
       39 RETURN                           R0 0

PROTO_54:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+2]
        3 GETTABLEKS                       R1 R0 K0 ["GameId"]
        5 LOADB                            R2 0
        6 GETTABLEKS                       R3 R0 K1 ["RewardedOnDemandAdsSetting"]
        8 JUMPIFEQKNIL                     R3 ; [+5]
       10 GETTABLEKS                       R3 R0 K1 ["RewardedOnDemandAdsSetting"]
       12 GETTABLEKS                       R2 R3 K2 ["showRewardedAdsToggle"]
       14 GETTABLEKS                       R3 R0 K3 ["Localization"]
       16 GETTABLEKS                       R4 R0 K4 ["Stylizer"]
       18 GETTABLEKS                       R5 R0 K5 ["TaxRate"]
       20 GETTABLEKS                       R6 R0 K6 ["MinimumFee"]
       22 LOADNIL                          R7
       23 LOADNIL                          R8
       24 LOADNIL                          R9
       25 JUMPIFNOT                        R2 ; [+10]
       26 GETTABLEKS                       R10 R0 K1 ["RewardedOnDemandAdsSetting"]
       28 GETTABLEKS                       R7 R10 K7 ["isUniverseEligibleForRewardedOnDemandAds"]
       30 GETTABLEKS                       R10 R0 K1 ["RewardedOnDemandAdsSetting"]
       32 GETTABLEKS                       R8 R10 K8 ["isRewardedOnDemandAdsAllowed"]
       34 GETTABLEKS                       R9 R0 K9 ["RewardedOnDemandAdsToggled"]
       36 GETTABLEKS                       R11 R0 K1 ["RewardedOnDemandAdsSetting"]
       38 GETTABLEKS                       R10 R11 K10 ["isUniverseSuspendedFromRewardedAds"]
       40 GETTABLEKS                       R12 R0 K1 ["RewardedOnDemandAdsSetting"]
       42 GETTABLEKS                       R11 R12 K11 ["hasUniverseBeenEligible"]
       44 GETTABLEKS                       R13 R0 K12 ["PaidAccess"]
       46 GETTABLEKS                       R12 R13 K13 ["enabled"]
       48 GETTABLEKS                       R14 R0 K12 ["PaidAccess"]
       50 GETTABLEKS                       R13 R14 K14 ["price"]
       52 GETTABLEKS                       R14 R0 K15 ["VIPServers"]
       54 GETTABLEKS                       R16 R0 K16 ["UnsavedDevProducts"]
       56 JUMPIFNOT                        R16 ; [+3]
       57 GETTABLEKS                       R15 R0 K16 ["UnsavedDevProducts"]
       59 JUMPIF                           R15 ; [+2]
       60 NEWTABLE                         R15 0 0
       62 GETTABLEKS                       R17 R0 K17 ["DevProducts"]
       64 JUMPIFNOT                        R17 ; [+3]
       65 GETTABLEKS                       R16 R0 K17 ["DevProducts"]
       67 JUMPIF                           R16 ; [+2]
       68 NEWTABLE                         R16 0 0
       70 GETTABLEKS                       R18 R0 K18 ["EditedDevProducts"]
       72 JUMPIFNOT                        R18 ; [+3]
       73 GETTABLEKS                       R17 R0 K18 ["EditedDevProducts"]
       75 JUMPIF                           R17 ; [+2]
       76 NEWTABLE                         R17 0 0
       78 GETUPVAL                         R20 1
       79 GETTABLEKS                       R19 R20 K19 ["Dictionary"]
       81 GETTABLEKS                       R18 R19 K20 ["join"]
       83 MOVE                             R19 R16
       84 MOVE                             R20 R17
       85 CALL                             R18 2 1
       86 MOVE                             R16 R18
       87 GETUPVAL                         R18 2
       88 MOVE                             R19 R15
       89 MOVE                             R20 R16
       90 CALL                             R18 2 1
       91 GETUPVAL                         R19 3
       92 MOVE                             R20 R18
       93 MOVE                             R21 R3
       94 CALL                             R19 2 2
       95 GETTABLEKS                       R21 R0 K21 ["PaidAccessToggled"]
       97 GETTABLEKS                       R22 R0 K22 ["PaidAccessPriceChanged"]
       99 GETTABLEKS                       R23 R0 K23 ["VIPServersToggled"]
      101 GETTABLEKS                       R24 R0 K24 ["VIPServersPriceChanged"]
      103 GETTABLEKS                       R25 R0 K25 ["SetUnsavedDevProducts"]
      105 GETTABLEKS                       R26 R0 K26 ["SetEditDevProductId"]
      107 GETTABLEKS                       R27 R0 K27 ["LoadMoreDevProducts"]
      109 GETTABLEKS                       R28 R0 K28 ["isPublic"]
      111 GETTABLEKS                       R29 R0 K29 ["isInitiallyEnabled"]
      113 LOADNIL                          R30
      114 LOADNIL                          R31
      115 LOADNIL                          R32
      116 LOADNIL                          R33
      117 GETUPVAL                         R34 4
      118 CALL                             R34 0 1
      119 JUMPIFNOT                        R34 ; [+11]
      120 GETUPVAL                         R35 5
      121 GETTABLEKS                       R36 R0 K30 ["Badges"]
      123 CALL                             R35 1 1
      124 MOVE                             R30 R35
      125 GETTABLEKS                       R31 R0 K31 ["LoadMoreBadges"]
      127 GETTABLEKS                       R32 R0 K32 ["RefreshBadges"]
      129 GETTABLEKS                       R33 R0 K33 ["BadgeLoadState"]
      131 GETTABLEKS                       R35 R0 K34 ["OnDeveloperSubscriptionCreated"]
      133 GETUPVAL                         R36 6
      134 GETTABLEKS                       R37 R0 K35 ["AccessPriceError"]
      136 GETTABLEKS                       R38 R14 K36 ["isEnabled"]
      138 MOVE                             R39 R12
      139 MOVE                             R40 R3
      140 CALL                             R36 4 1
      141 GETUPVAL                         R38 7
      142 GETTABLEKS                       R37 R38 K37 ["new"]
      144 CALL                             R37 0 1
      145 JUMPIF                           R5 ; [+4]
      146 LOADNIL                          R12
      147 LOADNIL                          R38
      148 SETTABLEKS                       R38 R14 K36 ["isEnabled"]
      150 DUPTABLE                         R38 K41 [{"BadgesLoadingIndicatorContainer", "Badges", "Separator", "RewardedOnDemandAdsSetting", "PaidAccess", "VIPServers", "DevSubsList", "DevProducts"}]
      151 MOVE                             R39 R34
      152 JUMPIFNOT                        R39 ; [+48]
      153 LOADB                            R39 0
      154 GETUPVAL                         R41 8
      155 GETTABLEKS                       R40 R41 K42 ["Loading"]
      157 JUMPIFNOTEQ                      R33 R40 ; [+43]
      159 GETUPVAL                         R40 9
      160 GETTABLEKS                       R39 R40 K43 ["createElement"]
      162 GETUPVAL                         R40 10
      163 DUPTABLE                         R41 K45 [{"Size"}]
      164 GETIMPORT                        R42 K47 [UDim2.new]
      166 LOADN                            R43 1
      167 LOADN                            R44 0
      168 LOADN                            R45 0
      169 GETTABLEKS                       R48 R4 K49 ["table"]
      171 GETTABLEKS                       R47 R48 K50 ["height"]
      173 DIVK                             R46 R47 K48 [2]
      174 CALL                             R42 4 1
      175 SETTABLEKS                       R42 R41 K44 ["Size"]
      177 DUPTABLE                         R42 K52 [{"BadgesLoadingIndicator"}]
      178 GETUPVAL                         R44 9
      179 GETTABLEKS                       R43 R44 K43 ["createElement"]
      181 GETUPVAL                         R44 11
      182 DUPTABLE                         R45 K55 [{"AnchorPoint", "Position"}]
      183 GETIMPORT                        R46 K57 [Vector2.new]
      185 LOADK                            R47 K58 [0.5]
      186 LOADK                            R48 K58 [0.5]
      187 CALL                             R46 2 1
      188 SETTABLEKS                       R46 R45 K53 ["AnchorPoint"]
      190 GETIMPORT                        R46 K60 [UDim2.fromScale]
      192 LOADK                            R47 K58 [0.5]
      193 LOADK                            R48 K58 [0.5]
      194 CALL                             R46 2 1
      195 SETTABLEKS                       R46 R45 K54 ["Position"]
      197 CALL                             R43 2 1
      198 SETTABLEKS                       R43 R42 K51 ["BadgesLoadingIndicator"]
      200 CALL                             R39 3 1
      201 SETTABLEKS                       R39 R38 K38 ["BadgesLoadingIndicatorContainer"]
      203 MOVE                             R39 R34
      204 JUMPIFNOT                        R39 ; [+23]
      205 LOADB                            R39 0
      206 GETUPVAL                         R41 8
      207 GETTABLEKS                       R40 R41 K42 ["Loading"]
      209 JUMPIFEQ                         R33 R40 ; [+18]
      211 GETUPVAL                         R40 9
      212 GETTABLEKS                       R39 R40 K43 ["createElement"]
      214 GETUPVAL                         R40 12
      215 DUPTABLE                         R41 K64 [{"BadgeList", "LayoutOrder", "OnLoadMoreBadges", "RefreshBadges"}]
      216 SETTABLEKS                       R30 R41 K61 ["BadgeList"]
      218 NAMECALL                         R42 R37 K65 ["getNextOrder"]
      220 CALL                             R42 1 1
      221 SETTABLEKS                       R42 R41 K62 ["LayoutOrder"]
      223 SETTABLEKS                       R31 R41 K63 ["OnLoadMoreBadges"]
      225 SETTABLEKS                       R32 R41 K32 ["RefreshBadges"]
      227 CALL                             R39 2 1
      228 SETTABLEKS                       R39 R38 K30 ["Badges"]
      230 MOVE                             R39 R34
      231 JUMPIFNOT                        R39 ; [+11]
      232 GETUPVAL                         R40 9
      233 GETTABLEKS                       R39 R40 K43 ["createElement"]
      235 GETUPVAL                         R40 13
      236 DUPTABLE                         R41 K66 [{"LayoutOrder"}]
      237 NAMECALL                         R42 R37 K65 ["getNextOrder"]
      239 CALL                             R42 1 1
      240 SETTABLEKS                       R42 R41 K62 ["LayoutOrder"]
      242 CALL                             R39 2 1
      243 SETTABLEKS                       R39 R38 K39 ["Separator"]
      245 JUMPIFNOT                        R2 ; [+47]
      246 GETUPVAL                         R40 9
      247 GETTABLEKS                       R39 R40 K43 ["createElement"]
      249 GETUPVAL                         R40 14
      250 DUPTABLE                         R41 K75 [{"LayoutOrder", "IsEligible", "IsEnabled", "Title", "SubText", "LinkText", "OnToggled", "IsSuspended", "HasBeenEligible", "Localization"}]
      251 NAMECALL                         R42 R37 K65 ["getNextOrder"]
      253 CALL                             R42 1 1
      254 SETTABLEKS                       R42 R41 K62 ["LayoutOrder"]
      256 SETTABLEKS                       R7 R41 K67 ["IsEligible"]
      258 SETTABLEKS                       R8 R41 K68 ["IsEnabled"]
      260 LOADK                            R44 K76 ["Monetization"]
      261 LOADK                            R45 K77 ["RewardedAdsTitle"]
      262 NAMECALL                         R42 R3 K78 ["getText"]
      264 CALL                             R42 3 1
      265 SETTABLEKS                       R42 R41 K69 ["Title"]
      267 LOADK                            R44 K76 ["Monetization"]
      268 LOADK                            R45 K79 ["RewardedAdsSubtext"]
      269 NAMECALL                         R42 R3 K78 ["getText"]
      271 CALL                             R42 3 1
      272 SETTABLEKS                       R42 R41 K70 ["SubText"]
      274 LOADK                            R44 K76 ["Monetization"]
      275 LOADK                            R45 K80 ["RewardedAdsSubtextLink"]
      276 NAMECALL                         R42 R3 K78 ["getText"]
      278 CALL                             R42 3 1
      279 SETTABLEKS                       R42 R41 K71 ["LinkText"]
      281 NEWCLOSURE                       R42 P0
      282 CAPTURE                          REF R9
      283 SETTABLEKS                       R42 R41 K72 ["OnToggled"]
      285 SETTABLEKS                       R10 R41 K73 ["IsSuspended"]
      287 SETTABLEKS                       R11 R41 K74 ["HasBeenEligible"]
      289 SETTABLEKS                       R3 R41 K3 ["Localization"]
      291 CALL                             R39 2 1
      292 JUMP                             ; [+1]
      293 LOADNIL                          R39
      294 SETTABLEKS                       R39 R38 K1 ["RewardedOnDemandAdsSetting"]
      296 GETUPVAL                         R40 9
      297 GETTABLEKS                       R39 R40 K43 ["createElement"]
      299 GETUPVAL                         R40 15
      300 DUPTABLE                         R41 K87 [{"GameId", "Price", "TaxRate", "MinimumFee", "PriceError", "LayoutOrder", "Enabled", "Selected", "OnPaidAccessToggle", "OnPaidAccessPriceChanged"}]
      301 GETUPVAL                         R43 0
      302 JUMPIFNOT                        R43 ; [+2]
      303 MOVE                             R42 R1
      304 JUMP                             ; [+1]
      305 LOADNIL                          R42
      306 SETTABLEKS                       R42 R41 K0 ["GameId"]
      308 SETTABLEKS                       R13 R41 K81 ["Price"]
      310 SETTABLEKS                       R5 R41 K5 ["TaxRate"]
      312 SETTABLEKS                       R6 R41 K6 ["MinimumFee"]
      314 JUMPIFNOT                        R12 ; [+2]
      315 MOVE                             R42 R36
      316 JUMPIF                           R42 ; [+1]
      317 LOADNIL                          R42
      318 SETTABLEKS                       R42 R41 K82 ["PriceError"]
      320 NAMECALL                         R42 R37 K65 ["getNextOrder"]
      322 CALL                             R42 1 1
      323 SETTABLEKS                       R42 R41 K62 ["LayoutOrder"]
      325 LOADB                            R42 0
      326 GETTABLEKS                       R43 R14 K36 ["isEnabled"]
      328 JUMPIFNOTEQKB                    R43 FALSE ; [+5]
      330 JUMPIFNOT                        R12 ; [+2]
      331 MOVE                             R42 R29
      332 JUMPIF                           R42 ; [+1]
      333 MOVE                             R42 R28
      334 SETTABLEKS                       R42 R41 K83 ["Enabled"]
      336 SETTABLEKS                       R12 R41 K84 ["Selected"]
      338 NEWCLOSURE                       R42 P1
      339 CAPTURE                          VAL R0
      340 CAPTURE                          UPVAL U16
      341 CAPTURE                          VAL R21
      342 SETTABLEKS                       R42 R41 K85 ["OnPaidAccessToggle"]
      344 SETTABLEKS                       R22 R41 K86 ["OnPaidAccessPriceChanged"]
      346 CALL                             R39 2 1
      347 SETTABLEKS                       R39 R38 K12 ["PaidAccess"]
      349 GETUPVAL                         R40 9
      350 GETTABLEKS                       R39 R40 K43 ["createElement"]
      352 GETUPVAL                         R40 17
      353 DUPTABLE                         R41 K91 [{"VIPServersData", "TaxRate", "MinimumFee", "PriceError", "LayoutOrder", "Enabled", "OnVipServersToggled", "OnVipServersPriceChanged"}]
      354 SETTABLEKS                       R14 R41 K88 ["VIPServersData"]
      356 SETTABLEKS                       R5 R41 K5 ["TaxRate"]
      358 SETTABLEKS                       R6 R41 K6 ["MinimumFee"]
      360 GETTABLEKS                       R43 R14 K36 ["isEnabled"]
      362 JUMPIFNOT                        R43 ; [+2]
      363 MOVE                             R42 R36
      364 JUMPIF                           R42 ; [+1]
      365 LOADNIL                          R42
      366 SETTABLEKS                       R42 R41 K82 ["PriceError"]
      368 NAMECALL                         R42 R37 K65 ["getNextOrder"]
      370 CALL                             R42 1 1
      371 SETTABLEKS                       R42 R41 K62 ["LayoutOrder"]
      373 LOADB                            R42 0
      374 JUMPIFNOTEQKB                    R12 FALSE ; [+7]
      376 GETTABLEKS                       R43 R14 K36 ["isEnabled"]
      378 JUMPIFNOT                        R43 ; [+2]
      379 MOVE                             R42 R29
      380 JUMPIF                           R42 ; [+1]
      381 MOVE                             R42 R28
      382 SETTABLEKS                       R42 R41 K83 ["Enabled"]
      384 NEWCLOSURE                       R42 P2
      385 CAPTURE                          VAL R0
      386 CAPTURE                          UPVAL U18
      387 CAPTURE                          VAL R23
      388 SETTABLEKS                       R42 R41 K89 ["OnVipServersToggled"]
      390 SETTABLEKS                       R24 R41 K90 ["OnVipServersPriceChanged"]
      392 CALL                             R39 2 1
      393 SETTABLEKS                       R39 R38 K15 ["VIPServers"]
      395 GETUPVAL                         R39 19
      396 JUMPIFNOT                        R39 ; [+13]
      397 GETUPVAL                         R40 9
      398 GETTABLEKS                       R39 R40 K43 ["createElement"]
      400 GETUPVAL                         R40 20
      401 DUPTABLE                         R41 K92 [{"LayoutOrder", "OnDeveloperSubscriptionCreated"}]
      402 NAMECALL                         R42 R37 K65 ["getNextOrder"]
      404 CALL                             R42 1 1
      405 SETTABLEKS                       R42 R41 K62 ["LayoutOrder"]
      407 SETTABLEKS                       R35 R41 K34 ["OnDeveloperSubscriptionCreated"]
      409 CALL                             R39 2 1
      410 SETTABLEKS                       R39 R38 K40 ["DevSubsList"]
      412 GETUPVAL                         R40 9
      413 GETTABLEKS                       R39 R40 K43 ["createElement"]
      415 GETUPVAL                         R40 21
      416 DUPTABLE                         R41 K98 [{"ProductList", "ShowTable", "LayoutOrder", "CreateNewDevProduct", "OnLoadMoreDevProducts", "OnEditDevProductClicked"}]
      417 SETTABLEKS                       R19 R41 K93 ["ProductList"]
      419 JUMPIFNOTEQKN                    R20 K99 [0] ; [+2]
      421 LOADB                            R42 0 +1
      422 LOADB                            R42 1
      423 SETTABLEKS                       R42 R41 K94 ["ShowTable"]
      425 NAMECALL                         R42 R37 K65 ["getNextOrder"]
      427 CALL                             R42 1 1
      428 SETTABLEKS                       R42 R41 K62 ["LayoutOrder"]
      430 NEWCLOSURE                       R42 P3
      431 CAPTURE                          VAL R20
      432 CAPTURE                          UPVAL U22
      433 CAPTURE                          VAL R3
      434 CAPTURE                          VAL R15
      435 CAPTURE                          VAL R25
      436 SETTABLEKS                       R42 R41 K95 ["CreateNewDevProduct"]
      438 SETTABLEKS                       R27 R41 K96 ["OnLoadMoreDevProducts"]
      440 SETTABLEKS                       R26 R41 K97 ["OnEditDevProductClicked"]
      442 CALL                             R39 2 1
      443 SETTABLEKS                       R39 R38 K17 ["DevProducts"]
      445 CLOSEUPVALS                      R9
      446 RETURN                           R38 1

PROTO_55:
        0 GETIMPORT                        R1 K2 [utf8.len]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADNIL                          R2
        5 JUMPIFNOTEQKN                    R1 K3 [0] ; [+2]
        7 LOADK                            R2 K4 ["Empty"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K5 ["Dictionary"]
       11 GETTABLEKS                       R3 R4 K6 ["join"]
       13 GETUPVAL                         R4 0
       14 DUPTABLE                         R5 K8 [{"name"}]
       15 FASTCALL1                        TOSTRING R0 ; [+3]
       16 MOVE                             R7 R0
       17 GETIMPORT                        R6 K10 [tostring]
       19 CALL                             R6 1 1
       20 SETTABLEKS                       R6 R5 K7 ["name"]
       22 CALL                             R3 2 1
       23 SETUPVAL                         R3 0
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K11 ["id"]
       27 JUMPIFNOT                        R3 ; [+19]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K5 ["Dictionary"]
       31 GETTABLEKS                       R3 R4 K6 ["join"]
       33 GETUPVAL                         R4 2
       34 NEWTABLE                         R5 1 0
       36 GETUPVAL                         R6 3
       37 GETUPVAL                         R7 0
       38 SETTABLE                         R7 R5 R6
       39 CALL                             R3 2 1
       40 SETUPVAL                         R3 2
       41 GETUPVAL                         R3 4
       42 GETUPVAL                         R4 2
       43 LOADK                            R5 K12 ["devProductName"]
       44 MOVE                             R6 R2
       45 CALL                             R3 3 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R4 R5 K5 ["Dictionary"]
       50 GETTABLEKS                       R3 R4 K6 ["join"]
       52 GETUPVAL                         R4 5
       53 NEWTABLE                         R5 1 0
       55 GETUPVAL                         R6 3
       56 GETUPVAL                         R7 0
       57 SETTABLE                         R7 R5 R6
       58 CALL                             R3 2 1
       59 SETUPVAL                         R3 5
       60 GETUPVAL                         R3 6
       61 GETUPVAL                         R4 5
       62 LOADK                            R5 K12 ["devProductName"]
       63 MOVE                             R6 R2
       64 CALL                             R3 3 0
       65 RETURN                           R0 0

PROTO_56:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tonumber]
        4 CALL                             R1 1 1
        5 LOADNIL                          R2
        6 JUMPIF                           R1 ; [+2]
        7 LOADK                            R2 K2 ["Invalid"]
        8 JUMP                             ; [+9]
        9 GETUPVAL                         R3 0
       10 JUMPIFNOTLT                      R1 R3 ; [+3]
       12 LOADK                            R2 K3 ["BelowMin"]
       13 JUMP                             ; [+4]
       14 GETUPVAL                         R3 1
       15 JUMPIFNOTLT                      R3 R1 ; [+2]
       17 LOADK                            R2 K4 ["AboveMax"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K5 ["Dictionary"]
       21 GETTABLEKS                       R3 R4 K6 ["join"]
       23 GETUPVAL                         R4 2
       24 DUPTABLE                         R5 K8 [{"price"}]
       25 FASTCALL1                        TOSTRING R0 ; [+3]
       26 MOVE                             R7 R0
       27 GETIMPORT                        R6 K10 [tostring]
       29 CALL                             R6 1 1
       30 SETTABLEKS                       R6 R5 K7 ["price"]
       32 CALL                             R3 2 1
       33 SETUPVAL                         R3 2
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R3 R4 K11 ["id"]
       37 JUMPIFNOT                        R3 ; [+19]
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R4 R5 K5 ["Dictionary"]
       41 GETTABLEKS                       R3 R4 K6 ["join"]
       43 GETUPVAL                         R4 4
       44 NEWTABLE                         R5 1 0
       46 GETUPVAL                         R6 5
       47 GETUPVAL                         R7 2
       48 SETTABLE                         R7 R5 R6
       49 CALL                             R3 2 1
       50 SETUPVAL                         R3 4
       51 GETUPVAL                         R3 6
       52 GETUPVAL                         R4 4
       53 LOADK                            R5 K12 ["devProductPrice"]
       54 MOVE                             R6 R2
       55 CALL                             R3 3 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R5 3
       58 GETTABLEKS                       R4 R5 K5 ["Dictionary"]
       60 GETTABLEKS                       R3 R4 K6 ["join"]
       62 GETUPVAL                         R4 7
       63 NEWTABLE                         R5 1 0
       65 GETUPVAL                         R6 5
       66 GETUPVAL                         R7 2
       67 SETTABLE                         R7 R5 R6
       68 CALL                             R3 2 1
       69 SETUPVAL                         R3 7
       70 GETUPVAL                         R3 8
       71 GETUPVAL                         R4 7
       72 LOADK                            R5 K12 ["devProductPrice"]
       73 MOVE                             R6 R2
       74 CALL                             R3 3 0
       75 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 2
        4 GETTABLEKS                       R2 R0 K0 ["id"]
        6 JUMPIFNOT                        R2 ; [+17]
        7 GETUPVAL                         R4 4
        8 GETTABLEKS                       R3 R4 K1 ["Dictionary"]
       10 GETTABLEKS                       R2 R3 K2 ["join"]
       12 GETUPVAL                         R3 3
       13 NEWTABLE                         R4 1 0
       15 GETUPVAL                         R5 5
       16 SETTABLE                         R0 R4 R5
       17 CALL                             R2 2 1
       18 SETUPVAL                         R2 3
       19 GETUPVAL                         R2 6
       20 GETUPVAL                         R3 3
       21 MOVE                             R4 R1
       22 CALL                             R2 2 0
       23 JUMP                             ; [+16]
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R3 R4 K1 ["Dictionary"]
       27 GETTABLEKS                       R2 R3 K2 ["join"]
       29 GETUPVAL                         R3 7
       30 NEWTABLE                         R4 1 0
       32 GETUPVAL                         R5 5
       33 SETTABLE                         R0 R4 R5
       34 CALL                             R2 2 1
       35 SETUPVAL                         R2 7
       36 GETUPVAL                         R2 8
       37 GETUPVAL                         R3 7
       38 MOVE                             R4 R1
       39 CALL                             R2 2 0
       40 GETUPVAL                         R2 9
       41 LOADNIL                          R3
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_58:
        0 GETTABLEKS                       R1 R0 K0 ["Stylizer"]
        2 GETTABLEKS                       R2 R0 K1 ["Localization"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["new"]
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R4 R0 K3 ["EditDevProductId"]
       10 GETTABLEKS                       R6 R0 K4 ["UnsavedDevProducts"]
       12 JUMPIFNOT                        R6 ; [+3]
       13 GETTABLEKS                       R5 R0 K4 ["UnsavedDevProducts"]
       15 JUMPIF                           R5 ; [+2]
       16 NEWTABLE                         R5 0 0
       18 GETTABLEKS                       R7 R0 K5 ["DevProducts"]
       20 JUMPIFNOT                        R7 ; [+3]
       21 GETTABLEKS                       R6 R0 K5 ["DevProducts"]
       23 JUMPIF                           R6 ; [+2]
       24 NEWTABLE                         R6 0 0
       26 LOADNIL                          R7
       27 GETTABLE                         R8 R6 R4
       28 JUMPIFNOT                        R8 ; [+4]
       29 GETTABLE                         R8 R6 R4
       30 GETTABLEKS                       R7 R8 K6 ["name"]
       32 JUMP                             ; [+3]
       33 GETTABLE                         R8 R5 R4
       34 JUMPIFNOT                        R8 ; [+1]
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R9 R0 K7 ["EditedDevProducts"]
       38 JUMPIFNOT                        R9 ; [+3]
       39 GETTABLEKS                       R8 R0 K7 ["EditedDevProducts"]
       41 JUMPIF                           R8 ; [+2]
       42 NEWTABLE                         R8 0 0
       44 GETUPVAL                         R11 2
       45 GETTABLEKS                       R10 R11 K8 ["Dictionary"]
       47 GETTABLEKS                       R9 R10 K9 ["join"]
       49 MOVE                             R10 R6
       50 MOVE                             R11 R8
       51 CALL                             R9 2 1
       52 MOVE                             R6 R9
       53 GETUPVAL                         R11 2
       54 GETTABLEKS                       R10 R11 K8 ["Dictionary"]
       56 GETTABLEKS                       R9 R10 K9 ["join"]
       58 MOVE                             R10 R5
       59 MOVE                             R11 R6
       60 CALL                             R9 2 1
       61 GETTABLE                         R10 R9 R4
       62 JUMPIF                           R10 ; [+2]
       63 NEWTABLE                         R10 0 0
       65 JUMPIF                           R7 ; [+2]
       66 GETTABLEKS                       R7 R10 K6 ["name"]
       68 GETTABLEKS                       R11 R10 K6 ["name"]
       70 GETTABLEKS                       R12 R10 K10 ["price"]
       72 GETTABLEKS                       R13 R0 K11 ["SetEditDevProductId"]
       74 GETTABLEKS                       R14 R0 K12 ["SetDevProducts"]
       76 GETTABLEKS                       R16 R0 K13 ["DevProductPriceError"]
       78 JUMPIF                           R16 ; [+2]
       79 LOADNIL                          R15
       80 JUMP                             ; [+35]
       81 LOADNIL                          R17
       82 GETUPVAL                         R19 3
       83 GETTABLE                         R18 R19 R16
       84 JUMPIFNOT                        R18 ; [+30]
       85 LOADNIL                          R18
       86 JUMPIFNOTEQKS                    R16 K14 ["BelowMin"] ; [+8]
       88 GETIMPORT                        R19 K17 [string.format]
       90 LOADK                            R20 K18 ["%.f"]
       91 GETUPVAL                         R21 4
       92 CALL                             R19 2 1
       93 MOVE                             R18 R19
       94 JUMP                             ; [+8]
       95 JUMPIFNOTEQKS                    R16 K19 ["AboveMax"] ; [+7]
       97 GETIMPORT                        R19 K17 [string.format]
       99 LOADK                            R20 K18 ["%.f"]
      100 GETUPVAL                         R21 5
      101 CALL                             R19 2 1
      102 MOVE                             R18 R19
      103 LOADK                            R21 K20 ["Errors"]
      104 GETUPVAL                         R23 3
      105 GETTABLE                         R22 R23 R16
      106 NEWTABLE                         R23 0 1
      108 MOVE                             R24 R18
      109 SETLIST                          R23 R24 1 [1]
      111 NAMECALL                         R19 R2 K21 ["getText"]
      113 CALL                             R19 4 1
      114 MOVE                             R17 R19
      115 MOVE                             R15 R17
      116 LOADNIL                          R16
      117 JUMPIFNOT                        R15 ; [+17]
      118 GETUPVAL                         R17 6
      119 MOVE                             R18 R15
      120 GETTABLEKS                       R21 R1 K22 ["fontStyle"]
      122 GETTABLEKS                       R20 R21 K23 ["SmallError"]
      124 GETTABLEKS                       R19 R20 K24 ["TextSize"]
      126 GETTABLEKS                       R22 R1 K22 ["fontStyle"]
      128 GETTABLEKS                       R21 R22 K23 ["SmallError"]
      130 GETTABLEKS                       R20 R21 K25 ["Font"]
      132 CALL                             R17 3 1
      133 MOVE                             R16 R17
      134 JUMP                             ; [+2]
      135 NEWTABLE                         R16 0 0
      137 GETTABLEKS                       R18 R0 K26 ["DevProductNameError"]
      139 JUMPIF                           R18 ; [+2]
      140 LOADNIL                          R17
      141 JUMP                             ; [+14]
      142 LOADNIL                          R19
      143 GETUPVAL                         R21 7
      144 GETTABLE                         R20 R21 R18
      145 JUMPIFNOT                        R20 ; [+9]
      146 JUMPIFNOTEQKS                    R18 K27 ["Empty"] ; [+8]
      148 LOADK                            R22 K28 ["General"]
      149 GETUPVAL                         R24 7
      150 GETTABLE                         R23 R24 R18
      151 NAMECALL                         R20 R2 K21 ["getText"]
      153 CALL                             R20 3 1
      154 MOVE                             R19 R20
      155 MOVE                             R17 R19
      156 GETTABLEKS                       R18 R0 K29 ["SetUnsavedDevProducts"]
      158 NEWCLOSURE                       R19 P0
      159 CAPTURE                          REF R10
      160 CAPTURE                          UPVAL U2
      161 CAPTURE                          REF R8
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R14
      164 CAPTURE                          REF R5
      165 CAPTURE                          VAL R18
      166 NEWCLOSURE                       R20 P1
      167 CAPTURE                          UPVAL U4
      168 CAPTURE                          UPVAL U5
      169 CAPTURE                          REF R10
      170 CAPTURE                          UPVAL U2
      171 CAPTURE                          REF R8
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R14
      174 CAPTURE                          REF R5
      175 CAPTURE                          VAL R18
      176 DUPTABLE                         R21 K33 [{"HeaderFrame", "Name", "Price"}]
      177 GETUPVAL                         R23 8
      178 GETTABLEKS                       R22 R23 K34 ["createElement"]
      180 GETUPVAL                         R23 9
      181 DUPTABLE                         R24 K40 [{"LayoutOrder", "BackgroundTransparency", "axis", "minimumSize", "contentPadding"}]
      182 NAMECALL                         R25 R3 K41 ["getNextOrder"]
      184 CALL                             R25 1 1
      185 SETTABLEKS                       R25 R24 K35 ["LayoutOrder"]
      187 LOADN                            R25 1
      188 SETTABLEKS                       R25 R24 K36 ["BackgroundTransparency"]
      190 GETUPVAL                         R27 9
      191 GETTABLEKS                       R26 R27 K42 ["Axis"]
      193 GETTABLEKS                       R25 R26 K43 ["Vertical"]
      195 SETTABLEKS                       R25 R24 K37 ["axis"]
      197 GETIMPORT                        R25 K45 [UDim2.new]
      199 LOADN                            R26 1
      200 LOADN                            R27 0
      201 LOADN                            R28 0
      202 LOADN                            R29 0
      203 CALL                             R25 4 1
      204 SETTABLEKS                       R25 R24 K38 ["minimumSize"]
      206 GETIMPORT                        R25 K47 [UDim.new]
      208 LOADN                            R26 0
      209 GETTABLEKS                       R28 R1 K48 ["settingsPage"]
      211 GETTABLEKS                       R27 R28 K49 ["headerPadding"]
      213 CALL                             R25 2 1
      214 SETTABLEKS                       R25 R24 K39 ["contentPadding"]
      216 NEWTABLE                         R25 2 1
      218 GETUPVAL                         R28 8
      219 GETTABLEKS                       R27 R28 K34 ["createElement"]
      221 LOADK                            R28 K50 ["ImageButton"]
      222 NEWTABLE                         R29 8 0
      224 GETIMPORT                        R30 K45 [UDim2.new]
      226 LOADN                            R31 0
      227 GETTABLEKS                       R33 R1 K51 ["backButton"]
      229 GETTABLEKS                       R32 R33 K52 ["size"]
      231 LOADN                            R33 0
      232 GETTABLEKS                       R35 R1 K51 ["backButton"]
      234 GETTABLEKS                       R34 R35 K52 ["size"]
      236 CALL                             R30 4 1
      237 SETTABLEKS                       R30 R29 K53 ["Size"]
      239 LOADN                            R30 0
      240 SETTABLEKS                       R30 R29 K35 ["LayoutOrder"]
      242 GETTABLEKS                       R31 R1 K51 ["backButton"]
      244 GETTABLEKS                       R30 R31 K54 ["image"]
      246 SETTABLEKS                       R30 R29 K55 ["Image"]
      248 LOADN                            R30 1
      249 SETTABLEKS                       R30 R29 K36 ["BackgroundTransparency"]
      251 GETUPVAL                         R32 8
      252 GETTABLEKS                       R31 R32 K56 ["Event"]
      254 GETTABLEKS                       R30 R31 K57 ["Activated"]
      256 NEWCLOSURE                       R31 P2
      257 CAPTURE                          UPVAL U10
      258 CAPTURE                          REF R10
      259 CAPTURE                          REF R7
      260 CAPTURE                          REF R8
      261 CAPTURE                          UPVAL U2
      262 CAPTURE                          VAL R4
      263 CAPTURE                          VAL R14
      264 CAPTURE                          REF R5
      265 CAPTURE                          VAL R18
      266 CAPTURE                          VAL R13
      267 SETTABLE                         R31 R29 R30
      268 NEWTABLE                         R30 0 1
      270 GETUPVAL                         R32 8
      271 GETTABLEKS                       R31 R32 K34 ["createElement"]
      273 GETUPVAL                         R32 11
      274 DUPTABLE                         R33 K59 [{"Cursor"}]
      275 LOADK                            R34 K60 ["PointingHand"]
      276 SETTABLEKS                       R34 R33 K58 ["Cursor"]
      278 CALL                             R31 2 -1
      279 SETLIST                          R30 R31 -1 [1]
      281 CALL                             R27 3 1
      282 SETTABLEKS                       R27 R25 K61 ["BackButton"]
      284 GETUPVAL                         R27 8
      285 GETTABLEKS                       R26 R27 K34 ["createElement"]
      287 GETUPVAL                         R27 12
      288 DUPTABLE                         R28 K62 [{"LayoutOrder"}]
      289 LOADN                            R29 1
      290 SETTABLEKS                       R29 R28 K35 ["LayoutOrder"]
      292 CALL                             R26 2 1
      293 SETLIST                          R25 R26 1 [1]
      295 GETUPVAL                         R28 8
      296 GETTABLEKS                       R27 R28 K34 ["createElement"]
      298 GETUPVAL                         R28 13
      299 DUPTABLE                         R29 K64 [{"Title", "LayoutOrder"}]
      300 LOADK                            R32 K65 ["Monetization"]
      301 LOADK                            R33 K66 ["EditDeveloperProduct"]
      302 NAMECALL                         R30 R2 K21 ["getText"]
      304 CALL                             R30 3 1
      305 SETTABLEKS                       R30 R29 K63 ["Title"]
      307 LOADN                            R30 2
      308 SETTABLEKS                       R30 R29 K35 ["LayoutOrder"]
      310 CALL                             R27 2 1
      311 SETTABLEKS                       R27 R25 K67 ["Header"]
      313 CALL                             R22 3 1
      314 SETTABLEKS                       R22 R21 K30 ["HeaderFrame"]
      316 GETUPVAL                         R23 8
      317 GETTABLEKS                       R22 R23 K34 ["createElement"]
      319 GETUPVAL                         R23 14
      320 DUPTABLE                         R24 K68 [{"LayoutOrder", "Title"}]
      321 NAMECALL                         R25 R3 K41 ["getNextOrder"]
      323 CALL                             R25 1 1
      324 SETTABLEKS                       R25 R24 K35 ["LayoutOrder"]
      326 LOADK                            R27 K28 ["General"]
      327 LOADK                            R28 K69 ["TitleName"]
      328 NAMECALL                         R25 R2 K21 ["getText"]
      330 CALL                             R25 3 1
      331 SETTABLEKS                       R25 R24 K63 ["Title"]
      333 DUPTABLE                         R25 K71 [{"TextBox"}]
      334 GETUPVAL                         R27 8
      335 GETTABLEKS                       R26 R27 K34 ["createElement"]
      337 GETUPVAL                         R27 15
      338 DUPTABLE                         R28 K76 [{"ErrorText", "MaxLength", "OnTextChanged", "Text"}]
      339 SETTABLEKS                       R17 R28 K72 ["ErrorText"]
      341 GETUPVAL                         R29 16
      342 SETTABLEKS                       R29 R28 K73 ["MaxLength"]
      344 SETTABLEKS                       R19 R28 K74 ["OnTextChanged"]
      346 SETTABLEKS                       R11 R28 K75 ["Text"]
      348 CALL                             R26 2 1
      349 SETTABLEKS                       R26 R25 K70 ["TextBox"]
      351 CALL                             R22 3 1
      352 SETTABLEKS                       R22 R21 K31 ["Name"]
      354 GETUPVAL                         R23 8
      355 GETTABLEKS                       R22 R23 K34 ["createElement"]
      357 GETUPVAL                         R23 14
      358 DUPTABLE                         R24 K68 [{"LayoutOrder", "Title"}]
      359 NAMECALL                         R25 R3 K41 ["getNextOrder"]
      361 CALL                             R25 1 1
      362 SETTABLEKS                       R25 R24 K35 ["LayoutOrder"]
      364 LOADK                            R27 K65 ["Monetization"]
      365 LOADK                            R28 K77 ["PriceTitle"]
      366 NAMECALL                         R25 R2 K21 ["getText"]
      368 CALL                             R25 3 1
      369 SETTABLEKS                       R25 R24 K63 ["Title"]
      371 DUPTABLE                         R25 K81 [{"VerticalLayout", "PriceFrame", "ErrorMessage"}]
      372 GETUPVAL                         R27 8
      373 GETTABLEKS                       R26 R27 K34 ["createElement"]
      375 LOADK                            R27 K82 ["UIListLayout"]
      376 DUPTABLE                         R28 K85 [{"SortOrder", "FillDirection"}]
      377 GETIMPORT                        R29 K87 [Enum.SortOrder.LayoutOrder]
      379 SETTABLEKS                       R29 R28 K83 ["SortOrder"]
      381 GETIMPORT                        R29 K88 [Enum.FillDirection.Vertical]
      383 SETTABLEKS                       R29 R28 K84 ["FillDirection"]
      385 CALL                             R26 2 1
      386 SETTABLEKS                       R26 R25 K78 ["VerticalLayout"]
      388 GETUPVAL                         R27 8
      389 GETTABLEKS                       R26 R27 K34 ["createElement"]
      391 GETUPVAL                         R27 15
      392 DUPTABLE                         R28 K91 [{"OnTextChanged", "Size", "Text", "LeadingComponent", "LeadingComponentProps"}]
      393 SETTABLEKS                       R20 R28 K74 ["OnTextChanged"]
      395 GETIMPORT                        R29 K45 [UDim2.new]
      397 LOADN                            R30 0
      398 LOADN                            R31 200
      399 LOADN                            R32 0
      400 LOADN                            R33 32
      401 CALL                             R29 4 1
      402 SETTABLEKS                       R29 R28 K53 ["Size"]
      404 SETTABLEKS                       R12 R28 K75 ["Text"]
      406 GETUPVAL                         R29 17
      407 SETTABLEKS                       R29 R28 K89 ["LeadingComponent"]
      409 DUPTABLE                         R29 K93 [{"Size", "ImageColor3", "Image"}]
      410 GETIMPORT                        R30 K45 [UDim2.new]
      412 LOADN                            R31 0
      413 GETTABLEKS                       R34 R1 K94 ["robuxFeeBase"]
      415 GETTABLEKS                       R33 R34 K95 ["icon"]
      417 GETTABLEKS                       R32 R33 K52 ["size"]
      419 LOADN                            R33 0
      420 GETTABLEKS                       R36 R1 K94 ["robuxFeeBase"]
      422 GETTABLEKS                       R35 R36 K95 ["icon"]
      424 GETTABLEKS                       R34 R35 K52 ["size"]
      426 CALL                             R30 4 1
      427 SETTABLEKS                       R30 R29 K53 ["Size"]
      429 GETTABLEKS                       R32 R1 K94 ["robuxFeeBase"]
      431 GETTABLEKS                       R31 R32 K95 ["icon"]
      433 GETTABLEKS                       R30 R31 K96 ["imageColor"]
      435 SETTABLEKS                       R30 R29 K92 ["ImageColor3"]
      437 GETTABLEKS                       R32 R1 K94 ["robuxFeeBase"]
      439 GETTABLEKS                       R31 R32 K95 ["icon"]
      441 GETTABLEKS                       R30 R31 K54 ["image"]
      443 SETTABLEKS                       R30 R29 K55 ["Image"]
      445 SETTABLEKS                       R29 R28 K90 ["LeadingComponentProps"]
      447 CALL                             R26 2 1
      448 SETTABLEKS                       R26 R25 K79 ["PriceFrame"]
      450 MOVE                             R26 R15
      451 JUMPIFNOT                        R26 ; [+39]
      452 GETUPVAL                         R27 8
      453 GETTABLEKS                       R26 R27 K34 ["createElement"]
      455 LOADK                            R27 K97 ["TextLabel"]
      456 GETUPVAL                         R30 2
      457 GETTABLEKS                       R29 R30 K8 ["Dictionary"]
      459 GETTABLEKS                       R28 R29 K9 ["join"]
      461 GETTABLEKS                       R30 R1 K22 ["fontStyle"]
      463 GETTABLEKS                       R29 R30 K23 ["SmallError"]
      465 DUPTABLE                         R30 K102 [{"AutomaticSize", "BackgroundTransparency", "Text", "TextYAlignment", "TextXAlignment", "TextWrapped", "LayoutOrder"}]
      466 GETIMPORT                        R31 K104 [Enum.AutomaticSize.XY]
      468 SETTABLEKS                       R31 R30 K98 ["AutomaticSize"]
      470 LOADN                            R31 1
      471 SETTABLEKS                       R31 R30 K36 ["BackgroundTransparency"]
      473 SETTABLEKS                       R15 R30 K75 ["Text"]
      475 GETIMPORT                        R31 K106 [Enum.TextYAlignment.Center]
      477 SETTABLEKS                       R31 R30 K99 ["TextYAlignment"]
      479 GETIMPORT                        R31 K108 [Enum.TextXAlignment.Left]
      481 SETTABLEKS                       R31 R30 K100 ["TextXAlignment"]
      483 LOADB                            R31 1
      484 SETTABLEKS                       R31 R30 K101 ["TextWrapped"]
      486 LOADN                            R31 2
      487 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      489 CALL                             R28 2 -1
      490 CALL                             R26 -1 1
      491 SETTABLEKS                       R26 R25 K80 ["ErrorMessage"]
      493 CALL                             R22 3 1
      494 SETTABLEKS                       R22 R21 K32 ["Price"]
      496 CLOSEUPVALS                      R5
      497 RETURN                           R21 1

PROTO_59:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K3 [{"SetDevSubKey", "OnDeveloperSubscriptionChanged"}]
        7 GETTABLEKS                       R5 R0 K1 ["SetDevSubKey"]
        9 SETTABLEKS                       R5 R4 K1 ["SetDevSubKey"]
       11 GETTABLEKS                       R5 R0 K2 ["OnDeveloperSubscriptionChanged"]
       13 SETTABLEKS                       R5 R4 K2 ["OnDeveloperSubscriptionChanged"]
       15 CALL                             R2 2 -1
       16 SETLIST                          R1 R2 -1 [1]
       18 RETURN                           R1 1

PROTO_60:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_62:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_63:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["EditDevProductId"]
        6 GETTABLEKS                       R4 R1 K3 ["isEditingSubscription"]
        8 LOADNIL                          R5
        9 JUMPIFEQKN                       R3 K4 [0] ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 JUMPIFNOT                        R4 ; [+4]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R1
       17 JUMP                             ; [+18]
       18 JUMPIFNOTEQKNIL                  R3 ; [+6]
       20 LOADB                            R6 1
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R1
       24 JUMP                             ; [+11]
       25 FASTCALL1                        TYPE R3 ; [+3]
       26 MOVE                             R8 R3
       27 GETIMPORT                        R7 K6 [type]
       29 CALL                             R7 1 1
       30 JUMPIFNOTEQKS                    R7 K7 ["number"] ; [+5]
       32 LOADB                            R6 0
       33 NEWCLOSURE                       R5 P2
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R1
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R7 R8 K8 ["createElement"]
       39 GETUPVAL                         R8 4
       40 DUPTABLE                         R9 K15 [{"SettingsLoadJobs", "SettingsSaveJobs", "Title", "PageId", "CreateChildren", "ShowHeader"}]
       41 GETUPVAL                         R10 5
       42 SETTABLEKS                       R10 R9 K9 ["SettingsLoadJobs"]
       44 GETUPVAL                         R10 6
       45 SETTABLEKS                       R10 R9 K10 ["SettingsSaveJobs"]
       47 LOADK                            R12 K16 ["General"]
       48 LOADK                            R14 K17 ["Category"]
       49 GETUPVAL                         R15 7
       50 CONCAT                           R13 R14 R15
       51 NAMECALL                         R10 R2 K18 ["getText"]
       53 CALL                             R10 3 1
       54 SETTABLEKS                       R10 R9 K11 ["Title"]
       56 GETUPVAL                         R10 7
       57 SETTABLEKS                       R10 R9 K12 ["PageId"]
       59 SETTABLEKS                       R5 R9 K13 ["CreateChildren"]
       61 SETTABLEKS                       R6 R9 K14 ["ShowHeader"]
       63 CALL                             R7 2 -1
       64 RETURN                           R7 -1

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["Settings"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_65:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 MOVE                             R5 R0
        8 CALL                             R3 2 1
        9 RETURN                           R3 1

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_67:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

PROTO_68:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MaxNameLength"]
        4 LOADN                            R3 50
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 1
        8 GETIMPORT                        R1 K1 [game]
       10 LOADK                            R3 K4 ["PaidAccessMinPrice"]
       11 LOADN                            R4 25
       12 NAMECALL                         R1 R1 K3 ["DefineFastInt"]
       14 CALL                             R1 3 1
       15 GETIMPORT                        R2 K1 [game]
       17 LOADK                            R4 K5 ["PaidAccessMaxPrice"]
       18 LOADN                            R5 232
       19 NAMECALL                         R2 R2 K3 ["DefineFastInt"]
       21 CALL                             R2 3 1
       22 GETIMPORT                        R3 K1 [game]
       24 LOADK                            R5 K6 ["PrivateServersMinPrice"]
       25 LOADN                            R6 10
       26 NAMECALL                         R3 R3 K3 ["DefineFastInt"]
       28 CALL                             R3 3 1
       29 GETIMPORT                        R4 K1 [game]
       31 LOADK                            R6 K7 ["DevProductsMinPrice"]
       32 LOADN                            R7 1
       33 NAMECALL                         R4 R4 K3 ["DefineFastInt"]
       35 CALL                             R4 3 1
       36 GETIMPORT                        R5 K1 [game]
       38 LOADK                            R7 K8 ["DevProductsMaxPrice"]
       39 LOADK                            R8 K9 [1000000000]
       40 NAMECALL                         R5 R5 K3 ["DefineFastInt"]
       42 CALL                             R5 3 1
       43 GETIMPORT                        R6 K1 [game]
       45 LOADK                            R8 K10 ["DeveloperSubscriptionsMaxRobuxPrice"]
       46 LOADN                            R9 208
       47 NAMECALL                         R6 R6 K3 ["DefineFastInt"]
       49 CALL                             R6 3 1
       50 GETIMPORT                        R8 K12 [script]
       52 GETTABLEKS                       R7 R8 K13 ["Parent"]
       54 GETIMPORT                        R11 K12 [script]
       56 GETTABLEKS                       R10 R11 K13 ["Parent"]
       58 GETTABLEKS                       R9 R10 K13 ["Parent"]
       60 GETTABLEKS                       R8 R9 K13 ["Parent"]
       62 GETIMPORT                        R9 K15 [require]
       64 GETTABLEKS                       R11 R8 K16 ["Packages"]
       66 GETTABLEKS                       R10 R11 K17 ["FitFrame"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K15 [require]
       71 GETTABLEKS                       R12 R8 K16 ["Packages"]
       73 GETTABLEKS                       R11 R12 K18 ["Roact"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K15 [require]
       78 GETTABLEKS                       R13 R8 K16 ["Packages"]
       80 GETTABLEKS                       R12 R13 K19 ["RoactRodux"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K15 [require]
       85 GETTABLEKS                       R14 R8 K16 ["Packages"]
       87 GETTABLEKS                       R13 R14 K20 ["Cryo"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K15 [require]
       92 GETTABLEKS                       R15 R8 K16 ["Packages"]
       94 GETTABLEKS                       R14 R15 K21 ["Framework"]
       96 CALL                             R13 1 1
       97 GETTABLEKS                       R14 R13 K22 ["Util"]
       99 GETTABLEKS                       R15 R13 K23 ["ContextServices"]
      101 GETTABLEKS                       R16 R15 K24 ["withContext"]
      103 GETIMPORT                        R17 K15 [require]
      105 GETTABLEKS                       R20 R8 K25 ["Src"]
      107 GETTABLEKS                       R19 R20 K26 ["Components"]
      109 GETTABLEKS                       R18 R19 K27 ["Header"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K15 [require]
      114 GETTABLEKS                       R20 R7 K26 ["Components"]
      116 GETTABLEKS                       R19 R20 K28 ["RewardedOnDemandAdsSetting"]
      118 CALL                             R18 1 1
      119 GETIMPORT                        R19 K15 [require]
      121 GETTABLEKS                       R21 R7 K26 ["Components"]
      123 GETTABLEKS                       R20 R21 K29 ["PaidAccess"]
      125 CALL                             R19 1 1
      126 GETIMPORT                        R20 K15 [require]
      128 GETTABLEKS                       R22 R7 K26 ["Components"]
      130 GETTABLEKS                       R21 R22 K30 ["VIPServers"]
      132 CALL                             R20 1 1
      133 GETIMPORT                        R21 K15 [require]
      135 GETTABLEKS                       R23 R7 K26 ["Components"]
      137 GETTABLEKS                       R22 R23 K31 ["DevProducts"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K15 [require]
      142 GETTABLEKS                       R26 R8 K25 ["Src"]
      144 GETTABLEKS                       R25 R26 K26 ["Components"]
      146 GETTABLEKS                       R24 R25 K32 ["SettingsPages"]
      148 GETTABLEKS                       R23 R24 K33 ["SettingsPage"]
      150 CALL                             R22 1 1
      151 GETIMPORT                        R23 K15 [require]
      153 GETTABLEKS                       R25 R7 K26 ["Components"]
      155 GETTABLEKS                       R24 R25 K34 ["DevSubList"]
      157 CALL                             R23 1 1
      158 GETIMPORT                        R24 K15 [require]
      160 GETTABLEKS                       R26 R7 K26 ["Components"]
      162 GETTABLEKS                       R25 R26 K35 ["DevSubDetails"]
      164 CALL                             R24 1 1
      165 GETIMPORT                        R25 K15 [require]
      167 GETTABLEKS                       R27 R7 K26 ["Components"]
      169 GETTABLEKS                       R26 R27 K36 ["Badges"]
      171 CALL                             R25 1 1
      172 GETTABLEKS                       R26 R13 K37 ["UI"]
      174 GETTABLEKS                       R27 R26 K38 ["Container"]
      176 GETTABLEKS                       R28 R26 K39 ["HoverArea"]
      178 GETTABLEKS                       R29 R26 K40 ["Image"]
      180 GETTABLEKS                       R30 R26 K41 ["LoadingIndicator"]
      182 GETTABLEKS                       R31 R26 K42 ["Separator"]
      184 GETTABLEKS                       R32 R26 K43 ["TextInput"]
      186 GETTABLEKS                       R33 R26 K44 ["TitledFrame"]
      188 GETTABLEKS                       R34 R14 K45 ["LayoutOrderIterator"]
      190 GETTABLEKS                       R35 R9 K46 ["FitFrameOnAxis"]
      192 GETTABLEKS                       R36 R14 K47 ["GetTextSize"]
      194 GETIMPORT                        R37 K15 [require]
      196 GETTABLEKS                       R41 R8 K25 ["Src"]
      198 GETTABLEKS                       R40 R41 K26 ["Components"]
      200 GETTABLEKS                       R39 R40 K48 ["AutoThumbnails"]
      202 GETTABLEKS                       R38 R39 K49 ["BadgeIconThumbnail"]
      204 CALL                             R37 1 1
      205 GETIMPORT                        R38 K15 [require]
      207 GETTABLEKS                       R41 R8 K25 ["Src"]
      209 GETTABLEKS                       R40 R41 K50 ["Actions"]
      211 GETTABLEKS                       R39 R40 K51 ["AddChange"]
      213 CALL                             R38 1 1
      214 GETIMPORT                        R39 K15 [require]
      216 GETTABLEKS                       R42 R8 K25 ["Src"]
      218 GETTABLEKS                       R41 R42 K50 ["Actions"]
      220 GETTABLEKS                       R40 R41 K52 ["AddErrors"]
      222 CALL                             R39 1 1
      223 GETIMPORT                        R40 K15 [require]
      225 GETTABLEKS                       R43 R8 K25 ["Src"]
      227 GETTABLEKS                       R42 R43 K50 ["Actions"]
      229 GETTABLEKS                       R41 R42 K53 ["DiscardError"]
      231 CALL                             R40 1 1
      232 GETIMPORT                        R41 K15 [require]
      234 GETTABLEKS                       R44 R8 K25 ["Src"]
      236 GETTABLEKS                       R43 R44 K50 ["Actions"]
      238 GETTABLEKS                       R42 R43 K54 ["SetEditDevProductId"]
      240 CALL                             R41 1 1
      241 GETIMPORT                        R42 K15 [require]
      243 GETTABLEKS                       R45 R8 K25 ["Src"]
      245 GETTABLEKS                       R44 R45 K50 ["Actions"]
      247 GETTABLEKS                       R43 R44 K55 ["SetComponentLoadState"]
      249 CALL                             R42 1 1
      250 GETIMPORT                        R43 K15 [require]
      252 GETTABLEKS                       R45 R7 K56 ["Thunks"]
      254 GETTABLEKS                       R44 R45 K57 ["LoadDeveloperProducts"]
      256 CALL                             R43 1 1
      257 GETIMPORT                        R44 K15 [require]
      259 GETTABLEKS                       R46 R7 K56 ["Thunks"]
      261 GETTABLEKS                       R45 R46 K58 ["LoadBadges"]
      263 CALL                             R44 1 1
      264 GETIMPORT                        R45 K15 [require]
      266 GETTABLEKS                       R47 R7 K56 ["Thunks"]
      268 GETTABLEKS                       R46 R47 K59 ["AddDevSubKeyChange"]
      270 CALL                             R45 1 1
      271 GETIMPORT                        R46 K15 [require]
      273 GETTABLEKS                       R48 R7 K56 ["Thunks"]
      275 GETTABLEKS                       R47 R48 K60 ["AddDevSubKeyError"]
      277 CALL                             R46 1 1
      278 GETIMPORT                        R47 K15 [require]
      280 GETTABLEKS                       R49 R7 K56 ["Thunks"]
      282 GETTABLEKS                       R48 R49 K61 ["AddDevSubChange"]
      284 CALL                             R47 1 1
      285 GETIMPORT                        R48 K15 [require]
      287 GETTABLEKS                       R51 R8 K25 ["Src"]
      289 GETTABLEKS                       R50 R51 K22 ["Util"]
      291 GETTABLEKS                       R49 R50 K62 ["LoadState"]
      293 CALL                             R48 1 1
      294 GETIMPORT                        R50 K15 [require]
      296 GETTABLEKS                       R53 R8 K25 ["Src"]
      298 GETTABLEKS                       R52 R53 K22 ["Util"]
      300 GETTABLEKS                       R51 R52 K63 ["GameSettingsUtilities"]
      302 CALL                             R50 1 1
      303 GETTABLEKS                       R49 R50 K64 ["shouldAllowBadges"]
      305 GETIMPORT                        R50 K1 [game]
      307 LOADK                            R52 K65 ["PaidAccessInFiat"]
      308 NAMECALL                         R50 R50 K66 ["GetFastFlag"]
      310 CALL                             R50 2 1
      311 GETIMPORT                        R51 K1 [game]
      313 LOADK                            R53 K67 ["HttpService"]
      314 NAMECALL                         R51 R51 K68 ["GetService"]
      316 CALL                             R51 2 1
      317 GETIMPORT                        R52 K15 [require]
      319 GETTABLEKS                       R53 R7 K69 ["FFlagDeveloperSubscriptionsEnabled"]
      321 CALL                             R52 1 1
      322 GETTABLEKS                       R53 R10 K70 ["PureComponent"]
      324 GETIMPORT                        R56 K12 [script]
      326 GETTABLEKS                       R55 R56 K71 ["Name"]
      328 NAMECALL                         R53 R53 K72 ["extend"]
      330 CALL                             R53 2 1
      331 GETIMPORT                        R55 K12 [script]
      333 GETTABLEKS                       R54 R55 K71 ["Name"]
      335 DUPTABLE                         R55 K76 [{"BelowMin", "AboveMax", "Invalid"}]
      336 LOADK                            R56 K77 ["ErrorPriceBelowMin"]
      337 SETTABLEKS                       R56 R55 K73 ["BelowMin"]
      339 LOADK                            R56 K78 ["ErrorPriceAboveMax"]
      340 SETTABLEKS                       R56 R55 K74 ["AboveMax"]
      342 LOADK                            R56 K79 ["ErrorPriceInvalid"]
      343 SETTABLEKS                       R56 R55 K75 ["Invalid"]
      345 DUPTABLE                         R56 K81 [{"Empty"}]
      346 LOADK                            R57 K82 ["ErrorNameEmpty"]
      347 SETTABLEKS                       R57 R56 K80 ["Empty"]
      349 LOADK                            R57 K83 [""]
      350 GETIMPORT                        R58 K15 [require]
      352 GETTABLEKS                       R61 R8 K25 ["Src"]
      354 GETTABLEKS                       R60 R61 K22 ["Util"]
      356 GETTABLEKS                       R59 R60 K84 ["KeyProvider"]
      358 CALL                             R58 1 1
      359 GETTABLEKS                       R59 R58 K85 ["getIsFriendOnlyKeyName"]
      361 GETTABLEKS                       R60 R58 K86 ["getIsActiveKeyName"]
      363 GETTABLEKS                       R61 R58 K87 ["getIsForSaleKeyName"]
      365 GETTABLEKS                       R62 R58 K88 ["getIsRewardedOnDemandAdsAllowedKeyName"]
      367 GETTABLEKS                       R63 R58 K89 ["getVipServersIsEnabledKeyName"]
      369 DUPCLOSURE                       R64 K90 [PROTO_14]
      370 CAPTURE                          VAL R62
      371 CAPTURE                          VAL R61
      372 CAPTURE                          VAL R63
      373 CAPTURE                          VAL R52
      374 CAPTURE                          VAL R60
      375 CAPTURE                          VAL R59
      376 CAPTURE                          VAL R49
      377 DUPCLOSURE                       R65 K91 [PROTO_25]
      378 CAPTURE                          VAL R52
      379 DUPCLOSURE                       R66 K92 [PROTO_26]
      380 CAPTURE                          VAL R61
      381 CAPTURE                          VAL R63
      382 CAPTURE                          VAL R60
      383 CAPTURE                          VAL R59
      384 CAPTURE                          VAL R50
      385 DUPCLOSURE                       R67 K93 [PROTO_27]
      386 CAPTURE                          VAL R46
      387 CAPTURE                          VAL R6
      388 DUPCLOSURE                       R68 K94 [PROTO_28]
      389 CAPTURE                          VAL R46
      390 CAPTURE                          VAL R6
      391 DUPCLOSURE                       R69 K95 [PROTO_43]
      392 CAPTURE                          VAL R38
      393 CAPTURE                          VAL R62
      394 CAPTURE                          VAL R40
      395 CAPTURE                          VAL R61
      396 CAPTURE                          VAL R39
      397 CAPTURE                          VAL R1
      398 CAPTURE                          VAL R2
      399 CAPTURE                          VAL R63
      400 CAPTURE                          VAL R3
      401 CAPTURE                          VAL R41
      402 CAPTURE                          VAL R43
      403 CAPTURE                          VAL R44
      404 CAPTURE                          VAL R42
      405 CAPTURE                          VAL R48
      406 CAPTURE                          VAL R45
      407 CAPTURE                          VAL R67
      408 CAPTURE                          VAL R46
      409 CAPTURE                          VAL R6
      410 CAPTURE                          VAL R51
      411 CAPTURE                          VAL R47
      412 DUPCLOSURE                       R70 K96 [PROTO_44]
      413 CAPTURE                          VAL R10
      414 CAPTURE                          VAL R37
      415 DUPCLOSURE                       R71 K97 [PROTO_45]
      416 DUPCLOSURE                       R72 K98 [PROTO_46]
      417 DUPCLOSURE                       R73 K99 [PROTO_47]
      418 CAPTURE                          VAL R55
      419 CAPTURE                          VAL R3
      420 CAPTURE                          VAL R1
      421 CAPTURE                          VAL R4
      422 CAPTURE                          VAL R2
      423 CAPTURE                          VAL R5
      424 DUPCLOSURE                       R74 K100 [PROTO_48]
      425 CAPTURE                          VAL R56
      426 DUPCLOSURE                       R75 K101 [PROTO_49]
      427 CAPTURE                          VAL R0
      428 CAPTURE                          VAL R12
      429 NEWCLOSURE                       R76 P12
      430 CAPTURE                          VAL R50
      431 CAPTURE                          VAL R12
      432 CAPTURE                          VAL R72
      433 CAPTURE                          VAL R71
      434 CAPTURE                          VAL R49
      435 CAPTURE                          VAL R70
      436 CAPTURE                          VAL R73
      437 CAPTURE                          VAL R34
      438 CAPTURE                          VAL R48
      439 CAPTURE                          VAL R10
      440 CAPTURE                          VAL R27
      441 CAPTURE                          VAL R30
      442 CAPTURE                          VAL R25
      443 CAPTURE                          VAL R31
      444 CAPTURE                          VAL R18
      445 CAPTURE                          VAL R19
      446 CAPTURE                          VAL R1
      447 CAPTURE                          VAL R20
      448 CAPTURE                          VAL R3
      449 CAPTURE                          VAL R52
      450 CAPTURE                          VAL R23
      451 CAPTURE                          VAL R21
      452 CAPTURE                          REF R57
      453 NEWCLOSURE                       R77 P13
      454 CAPTURE                          VAL R34
      455 CAPTURE                          REF R57
      456 CAPTURE                          VAL R12
      457 CAPTURE                          VAL R55
      458 CAPTURE                          VAL R4
      459 CAPTURE                          VAL R5
      460 CAPTURE                          VAL R36
      461 CAPTURE                          VAL R56
      462 CAPTURE                          VAL R10
      463 CAPTURE                          VAL R35
      464 CAPTURE                          VAL R75
      465 CAPTURE                          VAL R28
      466 CAPTURE                          VAL R31
      467 CAPTURE                          VAL R17
      468 CAPTURE                          VAL R33
      469 CAPTURE                          VAL R32
      470 CAPTURE                          VAL R0
      471 CAPTURE                          VAL R29
      472 DUPCLOSURE                       R78 K102 [PROTO_59]
      473 CAPTURE                          VAL R10
      474 CAPTURE                          VAL R24
      475 DUPCLOSURE                       R79 K103 [PROTO_63]
      476 CAPTURE                          VAL R78
      477 CAPTURE                          VAL R76
      478 CAPTURE                          VAL R77
      479 CAPTURE                          VAL R10
      480 CAPTURE                          VAL R22
      481 CAPTURE                          VAL R64
      482 CAPTURE                          VAL R65
      483 CAPTURE                          VAL R54
      484 SETTABLEKS                       R79 R53 K104 ["render"]
      486 MOVE                             R79 R16
      487 DUPTABLE                         R80 K107 [{"Localization", "Stylizer"}]
      488 GETTABLEKS                       R81 R15 K105 ["Localization"]
      490 SETTABLEKS                       R81 R80 K105 ["Localization"]
      492 GETTABLEKS                       R81 R15 K106 ["Stylizer"]
      494 SETTABLEKS                       R81 R80 K106 ["Stylizer"]
      496 CALL                             R79 1 1
      497 MOVE                             R80 R53
      498 CALL                             R79 1 1
      499 MOVE                             R53 R79
      500 GETIMPORT                        R79 K15 [require]
      502 GETTABLEKS                       R82 R8 K25 ["Src"]
      504 GETTABLEKS                       R81 R82 K108 ["Networking"]
      506 GETTABLEKS                       R80 R81 K109 ["settingFromState"]
      508 CALL                             R79 1 1
      509 GETTABLEKS                       R80 R11 K110 ["connect"]
      511 DUPCLOSURE                       R81 K111 [PROTO_65]
      512 CAPTURE                          VAL R79
      513 CAPTURE                          VAL R66
      514 DUPCLOSURE                       R82 K112 [PROTO_68]
      515 CAPTURE                          VAL R38
      516 CAPTURE                          VAL R69
      517 CALL                             R80 2 1
      518 MOVE                             R81 R53
      519 CALL                             R80 1 1
      520 MOVE                             R53 R80
      521 SETTABLEKS                       R54 R53 K113 ["LocalizationId"]
      523 CLOSEUPVALS                      R57
      524 RETURN                           R53 1
