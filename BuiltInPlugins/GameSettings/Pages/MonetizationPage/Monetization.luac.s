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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Settings"]
        3 GETTABLEKS                       R2 R2 K1 ["Current"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Settings"]
        3 GETTABLEKS                       R2 R2 K1 ["Current"]
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
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["isForSale"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setPaidAccessEnabled"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["price"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setPaidAccessPrice"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["vipServersIsEnabled"]
        7 JUMPIFEQKNIL                     R0 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 NAMECALL                         R1 R1 K3 ["setVIPServersEnabled"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Settings"]
        3 GETTABLEKS                       R0 R0 K1 ["Changed"]
        5 GETTABLEKS                       R0 R0 K2 ["vipServersPrice"]
        7 JUMPIFEQKNIL                     R0 ; [+30]
        9 GETUPVAL                         R1 1
       10 JUMPIFNOT                        R1 ; [+21]
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R3 3
       13 MOVE                             R4 R0
       14 NAMECALL                         R1 R1 K3 ["setVIPServersPrice"]
       16 CALL                             R1 3 1
       17 JUMPIFNOT                        R1 ; [+20]
       18 GETUPVAL                         R2 4
       19 GETUPVAL                         R4 5
       20 DUPTABLE                         R5 K5 [{"vipServersPriceChangeTooSoon"}]
       21 SETTABLEKS                       R1 R5 K4 ["vipServersPriceChangeTooSoon"]
       23 CALL                             R4 1 -1
       24 NAMECALL                         R2 R2 K6 ["dispatch"]
       26 CALL                             R2 -1 0
       27 GETIMPORT                        R2 K8 [error]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 2
       33 GETUPVAL                         R3 3
       34 MOVE                             R4 R0
       35 NAMECALL                         R1 R1 K3 ["setVIPServersPrice"]
       37 CALL                             R1 3 0
       38 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["Settings"]
        5 GETTABLEKS                       R0 R0 K1 ["Changed"]
        7 GETTABLEKS                       R0 R0 K2 ["isRewardedOnDemandAdsAllowed"]
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
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R1 K3 ["monetizationController"]
        9 GETTABLEKS                       R5 R1 K4 ["devsubs"]
       11 GETTABLEKS                       R6 R2 K5 ["Settings"]
       13 GETTABLEKS                       R6 R6 K6 ["Changed"]
       15 GETTABLEKS                       R6 R6 K7 ["unsavedDevProducts"]
       17 GETTABLEKS                       R7 R2 K5 ["Settings"]
       19 GETTABLEKS                       R7 R7 K6 ["Changed"]
       21 GETTABLEKS                       R7 R7 K8 ["editedDeveloperProducts"]
       23 GETTABLEKS                       R8 R2 K5 ["Settings"]
       25 GETTABLEKS                       R8 R8 K9 ["Current"]
       27 GETTABLEKS                       R8 R8 K10 ["DeveloperSubscriptions"]
       29 GETTABLEKS                       R9 R2 K5 ["Settings"]
       31 GETTABLEKS                       R9 R9 K6 ["Changed"]
       33 GETTABLEKS                       R9 R9 K10 ["DeveloperSubscriptions"]
       35 JUMPIF                           R9 ; [+2]
       36 NEWTABLE                         R9 0 0
       38 GETTABLEKS                       R10 R2 K5 ["Settings"]
       40 GETTABLEKS                       R10 R10 K9 ["Current"]
       42 GETTABLEKS                       R10 R10 K11 ["showRewardedAdsToggle"]
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
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U1
       65 NEWCLOSURE                       R16 P4
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R3
       70 SETLIST                          R11 R12 5 [1]
       72 JUMPIFEQKNIL                     R6 ; [+18]
       74 GETIMPORT                        R12 K13 [pairs]
       76 MOVE                             R13 R6
       77 CALL                             R12 1 3
       78 FORGPREP_NEXT                    R12
       79 NEWCLOSURE                       R19 P5
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R16
       83 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
       85 MOVE                             R18 R11
       86 GETIMPORT                        R17 K16 [table.insert]
       88 CALL                             R17 2 0
       89 FORGLOOP                         R12 2 ; [-11]
       91 JUMPIFEQKNIL                     R7 ; [+18]
       93 GETIMPORT                        R12 K13 [pairs]
       95 MOVE                             R13 R7
       96 CALL                             R12 1 3
       97 FORGPREP_NEXT                    R12
       98 NEWCLOSURE                       R19 P6
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R16
      102 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
      104 MOVE                             R18 R11
      105 GETIMPORT                        R17 K16 [table.insert]
      107 CALL                             R17 2 0
      108 FORGLOOP                         R12 2 ; [-11]
      110 GETUPVAL                         R12 2
      111 JUMPIFNOT                        R12 ; [+49]
      112 JUMPIFEQKNIL                     R9 ; [+48]
      114 GETIMPORT                        R12 K13 [pairs]
      116 MOVE                             R13 R9
      117 CALL                             R12 1 3
      118 FORGPREP_NEXT                    R12
      119 GETTABLEKS                       R17 R16 K17 ["IsNew"]
      121 JUMPIFNOT                        R17 ; [+11]
      122 NEWCLOSURE                       R19 P7
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R16
      126 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
      128 MOVE                             R18 R11
      129 GETIMPORT                        R17 K16 [table.insert]
      131 CALL                             R17 2 0
      132 JUMP                             ; [+26]
      133 GETTABLEKS                       R17 R16 K18 ["Active"]
      135 JUMPIFNOTEQKB                    R17 FALSE ; [+12]
      137 NEWCLOSURE                       R19 P8
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R15
      141 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
      143 MOVE                             R18 R11
      144 GETIMPORT                        R17 K16 [table.insert]
      146 CALL                             R17 2 0
      147 JUMP                             ; [+11]
      148 NEWCLOSURE                       R19 P9
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R16
      153 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
      155 MOVE                             R18 R11
      156 GETIMPORT                        R17 K16 [table.insert]
      158 CALL                             R17 2 0
      159 FORGLOOP                         R12 2 ; [-41]
      161 RETURN                           R11 1

PROTO_26:
        0 GETTABLEKS                       R2 R1 K0 ["Settings"]
        2 GETTABLEKS                       R2 R2 K1 ["Errors"]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K2 ["showRewardedAdsToggle"]
        6 CALL                             R3 1 1
        7 LOADB                            R4 0
        8 GETTABLEKS                       R6 R1 K0 ["Settings"]
       10 GETTABLEKS                       R6 R6 K3 ["Changed"]
       12 GETTABLEKS                       R6 R6 K4 ["vipServersIsEnabled"]
       14 JUMPIFEQKB                       R6 FALSE ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 GETTABLEKS                       R6 R1 K0 ["Settings"]
       20 GETTABLEKS                       R6 R6 K5 ["Current"]
       22 GETTABLEKS                       R6 R6 K4 ["vipServersIsEnabled"]
       24 JUMPIFNOT                        R6 ; [+9]
       25 GETTABLEKS                       R6 R1 K0 ["Settings"]
       27 GETTABLEKS                       R6 R6 K3 ["Changed"]
       29 GETTABLEKS                       R6 R6 K6 ["vipServersPrice"]
       31 JUMPIFEQKNIL                     R6 ; [+2]
       33 LOADB                            R4 1
       34 DUPTABLE                         R6 K26 [{"TaxRate", "MinimumFee", "RewardedOnDemandAdsSetting", "PaidAccess", "VIPServers", "UnsavedDevProducts", "DevProducts", "EditedDevProducts", "EditDevProductId", "AccessPriceError", "VIPServersPriceChangeTooSoon", "DevProductPriceError", "DevProductNameError", "isEditingSubscription", "editedSubscriptionKey", "Badges", "BadgeLoadState", "isPublic", "isInitiallyEnabled"}]
       35 MOVE                             R7 R0
       36 LOADK                            R8 K27 ["taxRate"]
       37 CALL                             R7 1 1
       38 SETTABLEKS                       R7 R6 K7 ["TaxRate"]
       40 MOVE                             R7 R0
       41 LOADK                            R8 K28 ["minimumFee"]
       42 CALL                             R7 1 1
       43 SETTABLEKS                       R7 R6 K8 ["MinimumFee"]
       45 DUPTABLE                         R7 K33 [{"showRewardedAdsToggle", "isUniverseEligibleForRewardedOnDemandAds", "isRewardedOnDemandAdsAllowed", "isUniverseSuspendedFromRewardedAds", "hasUniverseBeenEligible"}]
       46 SETTABLEKS                       R3 R7 K2 ["showRewardedAdsToggle"]
       48 JUMPIFNOT                        R3 ; [+4]
       49 MOVE                             R8 R0
       50 LOADK                            R9 K29 ["isUniverseEligibleForRewardedOnDemandAds"]
       51 CALL                             R8 1 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R8
       54 SETTABLEKS                       R8 R7 K29 ["isUniverseEligibleForRewardedOnDemandAds"]
       56 JUMPIFNOT                        R3 ; [+7]
       57 GETTABLEKS                       R8 R1 K0 ["Settings"]
       59 GETTABLEKS                       R8 R8 K5 ["Current"]
       61 GETTABLEKS                       R8 R8 K30 ["isRewardedOnDemandAdsAllowed"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R8
       65 SETTABLEKS                       R8 R7 K30 ["isRewardedOnDemandAdsAllowed"]
       67 MOVE                             R8 R0
       68 LOADK                            R9 K31 ["isUniverseSuspendedFromRewardedAds"]
       69 CALL                             R8 1 1
       70 SETTABLEKS                       R8 R7 K31 ["isUniverseSuspendedFromRewardedAds"]
       72 MOVE                             R8 R0
       73 LOADK                            R9 K34 ["hasUniverseBeenEligibleForRewardedAds"]
       74 CALL                             R8 1 1
       75 SETTABLEKS                       R8 R7 K32 ["hasUniverseBeenEligible"]
       77 SETTABLEKS                       R7 R6 K9 ["RewardedOnDemandAdsSetting"]
       79 DUPTABLE                         R7 K38 [{"enabled", "price", "initialPrice"}]
       80 MOVE                             R8 R0
       81 GETUPVAL                         R9 0
       82 CALL                             R9 0 -1
       83 CALL                             R8 -1 1
       84 SETTABLEKS                       R8 R7 K35 ["enabled"]
       86 MOVE                             R8 R0
       87 LOADK                            R9 K36 ["price"]
       88 CALL                             R8 1 1
       89 SETTABLEKS                       R8 R7 K36 ["price"]
       91 GETTABLEKS                       R9 R1 K0 ["Settings"]
       93 GETTABLEKS                       R9 R9 K5 ["Current"]
       95 GETTABLEKS                       R9 R9 K36 ["price"]
       97 JUMPIFNOT                        R9 ; [+7]
       98 GETTABLEKS                       R8 R1 K0 ["Settings"]
      100 GETTABLEKS                       R8 R8 K5 ["Current"]
      102 GETTABLEKS                       R8 R8 K36 ["price"]
      104 JUMPIF                           R8 ; [+1]
      105 LOADN                            R8 0
      106 SETTABLEKS                       R8 R7 K37 ["initialPrice"]
      108 SETTABLEKS                       R7 R6 K10 ["PaidAccess"]
      110 DUPTABLE                         R7 K44 [{"isEnabled", "price", "initialPrice", "activeServersCount", "activeSubscriptionsCount", "changed", "willShutdown"}]
      111 MOVE                             R8 R0
      112 GETUPVAL                         R9 1
      113 CALL                             R9 0 -1
      114 CALL                             R8 -1 1
      115 SETTABLEKS                       R8 R7 K39 ["isEnabled"]
      117 MOVE                             R8 R0
      118 LOADK                            R9 K6 ["vipServersPrice"]
      119 CALL                             R8 1 1
      120 SETTABLEKS                       R8 R7 K36 ["price"]
      122 GETTABLEKS                       R9 R1 K0 ["Settings"]
      124 GETTABLEKS                       R9 R9 K5 ["Current"]
      126 GETTABLEKS                       R9 R9 K6 ["vipServersPrice"]
      128 JUMPIFNOT                        R9 ; [+7]
      129 GETTABLEKS                       R8 R1 K0 ["Settings"]
      131 GETTABLEKS                       R8 R8 K5 ["Current"]
      133 GETTABLEKS                       R8 R8 K6 ["vipServersPrice"]
      135 JUMPIF                           R8 ; [+1]
      136 LOADN                            R8 0
      137 SETTABLEKS                       R8 R7 K37 ["initialPrice"]
      139 MOVE                             R8 R0
      140 LOADK                            R9 K45 ["vipServersActiveServersCount"]
      141 CALL                             R8 1 1
      142 SETTABLEKS                       R8 R7 K40 ["activeServersCount"]
      144 MOVE                             R8 R0
      145 LOADK                            R9 K46 ["vipServersActiveSubscriptionsCount"]
      146 CALL                             R8 1 1
      147 SETTABLEKS                       R8 R7 K41 ["activeSubscriptionsCount"]
      149 SETTABLEKS                       R4 R7 K42 ["changed"]
      151 SETTABLEKS                       R5 R7 K43 ["willShutdown"]
      153 SETTABLEKS                       R7 R6 K11 ["VIPServers"]
      155 MOVE                             R7 R0
      156 LOADK                            R8 K47 ["unsavedDevProducts"]
      157 CALL                             R7 1 1
      158 SETTABLEKS                       R7 R6 K12 ["UnsavedDevProducts"]
      160 GETTABLEKS                       R7 R1 K0 ["Settings"]
      162 GETTABLEKS                       R7 R7 K5 ["Current"]
      164 GETTABLEKS                       R7 R7 K48 ["developerProducts"]
      166 SETTABLEKS                       R7 R6 K13 ["DevProducts"]
      168 GETTABLEKS                       R7 R1 K0 ["Settings"]
      170 GETTABLEKS                       R7 R7 K3 ["Changed"]
      172 GETTABLEKS                       R7 R7 K49 ["editedDeveloperProducts"]
      174 SETTABLEKS                       R7 R6 K14 ["EditedDevProducts"]
      176 GETTABLEKS                       R7 R1 K50 ["EditAsset"]
      178 GETTABLEKS                       R7 R7 K51 ["editDevProductId"]
      180 SETTABLEKS                       R7 R6 K15 ["EditDevProductId"]
      182 GETTABLEKS                       R7 R2 K52 ["monetizationPrice"]
      184 SETTABLEKS                       R7 R6 K16 ["AccessPriceError"]
      186 GETUPVAL                         R8 2
      187 JUMPIFNOT                        R8 ; [+3]
      188 GETTABLEKS                       R7 R2 K53 ["vipServersPriceChangeTooSoon"]
      190 JUMP                             ; [+1]
      191 LOADNIL                          R7
      192 SETTABLEKS                       R7 R6 K17 ["VIPServersPriceChangeTooSoon"]
      194 GETTABLEKS                       R7 R2 K54 ["devProductPrice"]
      196 SETTABLEKS                       R7 R6 K18 ["DevProductPriceError"]
      198 GETTABLEKS                       R7 R2 K55 ["devProductName"]
      200 SETTABLEKS                       R7 R6 K19 ["DevProductNameError"]
      202 MOVE                             R7 R0
      203 LOADK                            R8 K20 ["isEditingSubscription"]
      204 CALL                             R7 1 1
      205 SETTABLEKS                       R7 R6 K20 ["isEditingSubscription"]
      207 MOVE                             R7 R0
      208 LOADK                            R8 K21 ["editedSubscriptionKey"]
      209 CALL                             R7 1 1
      210 SETTABLEKS                       R7 R6 K21 ["editedSubscriptionKey"]
      212 GETTABLEKS                       R7 R1 K0 ["Settings"]
      214 GETTABLEKS                       R7 R7 K5 ["Current"]
      216 GETTABLEKS                       R7 R7 K56 ["badges"]
      218 SETTABLEKS                       R7 R6 K22 ["Badges"]
      220 GETTABLEKS                       R7 R1 K57 ["ComponentLoadState"]
      222 GETTABLEKS                       R7 R7 K22 ["Badges"]
      224 SETTABLEKS                       R7 R6 K23 ["BadgeLoadState"]
      226 MOVE                             R7 R0
      227 GETUPVAL                         R8 3
      228 CALL                             R8 0 -1
      229 CALL                             R7 -1 1
      230 JUMPIFNOT                        R7 ; [+5]
      231 MOVE                             R8 R0
      232 GETUPVAL                         R9 4
      233 CALL                             R9 0 -1
      234 CALL                             R8 -1 1
      235 NOT                              R7 R8
      236 SETTABLEKS                       R7 R6 K24 ["isPublic"]
      238 GETTABLEKS                       R9 R1 K0 ["Settings"]
      240 GETTABLEKS                       R9 R9 K5 ["Current"]
      242 GETUPVAL                         R10 3
      243 CALL                             R10 0 1
      244 GETTABLE                         R8 R9 R10
      245 JUMPIFNOT                        R8 ; [+8]
      246 GETTABLEKS                       R8 R1 K0 ["Settings"]
      248 GETTABLEKS                       R8 R8 K5 ["Current"]
      250 GETUPVAL                         R9 4
      251 CALL                             R9 0 1
      252 GETTABLE                         R7 R8 R9
      253 JUMPIFNOT                        R7 ; [+15]
      254 GETTABLEKS                       R8 R1 K0 ["Settings"]
      256 GETTABLEKS                       R8 R8 K5 ["Current"]
      258 GETUPVAL                         R9 0
      259 CALL                             R9 0 1
      260 GETTABLE                         R7 R8 R9
      261 JUMPIF                           R7 ; [+7]
      262 GETTABLEKS                       R8 R1 K0 ["Settings"]
      264 GETTABLEKS                       R8 R8 K5 ["Current"]
      266 GETUPVAL                         R9 1
      267 CALL                             R9 0 1
      268 GETTABLE                         R7 R8 R9
      269 SETTABLEKS                       R7 R6 K25 ["isInitiallyEnabled"]
      271 GETUPVAL                         R7 5
      272 JUMPIFNOT                        R7 ; [+6]
      273 GETTABLEKS                       R7 R1 K58 ["Metadata"]
      275 GETTABLEKS                       R7 R7 K59 ["gameId"]
      277 SETTABLEKS                       R7 R6 K60 ["GameId"]
      279 RETURN                           R6 1

PROTO_27:
        0 JUMPIFNOTEQKS                    R2 K0 ["Name"] ; [+13]
        2 JUMPIFEQKS                       R3 K1 [""] ; [+3]
        4 JUMPIFNOTEQKNIL                  R3 ; [+9]
        6 MOVE                             R4 R0
        7 GETUPVAL                         R5 0
        8 MOVE                             R6 R1
        9 MOVE                             R7 R2
       10 DUPTABLE                         R8 K4 [{["Empty"] = "Name can't be empty"}]
       11 CALL                             R5 3 -1
       12 CALL                             R4 -1 0
       13 RETURN                           R0 0
       14 JUMPIFNOTEQKS                    R2 K5 ["Price"] ; [+31]
       16 FASTCALL1                        TONUMBER R3 ; [+3]
       17 MOVE                             R5 R3
       18 GETIMPORT                        R4 K7 [tonumber]
       20 CALL                             R4 1 1
       21 JUMPIFNOT                        R4 ; [+3]
       22 LOADN                            R5 0
       23 JUMPIFNOTLE                      R4 R5 ; [+9]
       25 MOVE                             R5 R0
       26 GETUPVAL                         R6 0
       27 MOVE                             R7 R1
       28 MOVE                             R8 R2
       29 DUPTABLE                         R9 K10 [{["NotANumber"] = "Price needs to be a valid number"}]
       30 CALL                             R6 3 -1
       31 CALL                             R5 -1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R5 1
       34 JUMPIFNOT                        R5 ; [+24]
       35 GETUPVAL                         R5 1
       36 JUMPIFNOTLT                      R5 R4 ; [+22]
       38 MOVE                             R5 R0
       39 GETUPVAL                         R6 0
       40 MOVE                             R7 R1
       41 MOVE                             R8 R2
       42 DUPTABLE                         R9 K13 [{["AboveMaxRobuxAmount"] = "Price must be less than a certain amount"}]
       43 CALL                             R6 3 -1
       44 CALL                             R5 -1 0
       45 RETURN                           R0 0
       46 JUMPIFNOTEQKS                    R2 K14 ["Image"] ; [+12]
       48 JUMPIFEQKNIL                     R3 ; [+3]
       50 JUMPIFNOTEQKS                    R3 K15 ["None"] ; [+8]
       52 MOVE                             R4 R0
       53 GETUPVAL                         R5 0
       54 MOVE                             R6 R1
       55 MOVE                             R7 R2
       56 DUPTABLE                         R8 K17 [{["Empty"] = "Image can't be empty"}]
       57 CALL                             R5 3 -1
       58 CALL                             R4 -1 0
       59 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R1 K0 ["Key"]
        2 GETTABLEKS                       R3 R1 K1 ["Name"]
        4 JUMPIFEQKS                       R3 K2 [""] ; [+3]
        6 JUMPIFNOTEQKNIL                  R3 ; [+9]
        8 MOVE                             R4 R0
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R2
       11 LOADK                            R7 K1 ["Name"]
       12 DUPTABLE                         R8 K5 [{["Empty"] = "Name can't be empty"}]
       13 CALL                             R5 3 -1
       14 CALL                             R4 -1 0
       15 JUMP                             ; [0]
       16 GETTABLEKS                       R2 R1 K0 ["Key"]
       18 GETTABLEKS                       R3 R1 K6 ["Image"]
       20 JUMPIFEQKNIL                     R3 ; [+3]
       22 JUMPIFNOTEQKS                    R3 K7 ["None"] ; [+8]
       24 MOVE                             R4 R0
       25 GETUPVAL                         R5 0
       26 MOVE                             R6 R2
       27 LOADK                            R7 K6 ["Image"]
       28 DUPTABLE                         R8 K9 [{["Empty"] = "Image can't be empty"}]
       29 CALL                             R5 3 -1
       30 CALL                             R4 -1 0
       31 GETTABLEKS                       R2 R1 K0 ["Key"]
       33 GETTABLEKS                       R3 R1 K10 ["Price"]
       35 FASTCALL1                        TONUMBER R3 ; [+3]
       36 MOVE                             R5 R3
       37 GETIMPORT                        R4 K12 [tonumber]
       39 CALL                             R4 1 1
       40 JUMPIFNOT                        R4 ; [+3]
       41 LOADN                            R5 0
       42 JUMPIFNOTLE                      R4 R5 ; [+9]
       44 MOVE                             R5 R0
       45 GETUPVAL                         R6 0
       46 MOVE                             R7 R2
       47 LOADK                            R8 K10 ["Price"]
       48 DUPTABLE                         R9 K15 [{["NotANumber"] = "Price needs to be a valid number"}]
       49 CALL                             R6 3 -1
       50 CALL                             R5 -1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R5 1
       53 JUMPIFNOT                        R5 ; [+10]
       54 GETUPVAL                         R5 1
       55 JUMPIFNOTLT                      R5 R4 ; [+8]
       57 MOVE                             R5 R0
       58 GETUPVAL                         R6 0
       59 MOVE                             R7 R2
       60 LOADK                            R8 K10 ["Price"]
       61 DUPTABLE                         R9 K18 [{["AboveMaxRobuxAmount"] = "Price must be less than a certain amount"}]
       62 CALL                             R6 3 -1
       63 CALL                             R5 -1 0
       64 RETURN                           R0 0

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
       16 JUMPIF                           R1 ; [+6]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R3 3
       19 DUPTABLE                         R4 K5 [{["monetizationPrice"] = "Invalid"}]
       20 CALL                             R3 1 -1
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 4
       24 JUMPIFNOTLT                      R1 R2 ; [+7]
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R3 3
       28 DUPTABLE                         R4 K7 [{["monetizationPrice"] = "BelowMin"}]
       29 CALL                             R3 1 -1
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 5
       33 JUMPIFNOTLT                      R2 R1 ; [+6]
       35 GETUPVAL                         R2 0
       36 GETUPVAL                         R3 3
       37 DUPTABLE                         R4 K9 [{["monetizationPrice"] = "AboveMax"}]
       38 CALL                             R3 1 -1
       39 CALL                             R2 -1 0
       40 RETURN                           R0 0

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
       16 JUMPIF                           R1 ; [+6]
       17 GETUPVAL                         R2 0
       18 GETUPVAL                         R3 3
       19 DUPTABLE                         R4 K5 [{["monetizationPrice"] = "Invalid"}]
       20 CALL                             R3 1 -1
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0
       23 JUMPIFEQKN                       R1 K6 [0] ; [+9]
       25 GETUPVAL                         R2 4
       26 JUMPIFNOTLT                      R1 R2 ; [+6]
       28 GETUPVAL                         R2 0
       29 GETUPVAL                         R3 3
       30 DUPTABLE                         R4 K8 [{["monetizationPrice"] = "BelowMin"}]
       31 CALL                             R3 1 -1
       32 CALL                             R2 -1 0
       33 RETURN                           R0 0

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
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K1 ["Loading"]
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
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K2 ["Loaded"]
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
        7 JUMPIFNOTEQKNIL                  R3 ; [+9]
        9 MOVE                             R4 R1
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R2
       12 LOADK                            R7 K1 ["Name"]
       13 DUPTABLE                         R8 K5 [{["Empty"] = "Name can't be empty"}]
       14 CALL                             R5 3 -1
       15 CALL                             R4 -1 0
       16 JUMP                             ; [0]
       17 GETTABLEKS                       R2 R0 K0 ["Key"]
       19 GETTABLEKS                       R3 R0 K6 ["Image"]
       21 JUMPIFEQKNIL                     R3 ; [+3]
       23 JUMPIFNOTEQKS                    R3 K7 ["None"] ; [+8]
       25 MOVE                             R4 R1
       26 GETUPVAL                         R5 1
       27 MOVE                             R6 R2
       28 LOADK                            R7 K6 ["Image"]
       29 DUPTABLE                         R8 K9 [{["Empty"] = "Image can't be empty"}]
       30 CALL                             R5 3 -1
       31 CALL                             R4 -1 0
       32 GETTABLEKS                       R2 R0 K0 ["Key"]
       34 GETTABLEKS                       R3 R0 K10 ["Price"]
       36 FASTCALL1                        TONUMBER R3 ; [+3]
       37 MOVE                             R5 R3
       38 GETIMPORT                        R4 K12 [tonumber]
       40 CALL                             R4 1 1
       41 JUMPIFNOT                        R4 ; [+3]
       42 LOADN                            R5 0
       43 JUMPIFNOTLE                      R4 R5 ; [+9]
       45 MOVE                             R5 R1
       46 GETUPVAL                         R6 1
       47 MOVE                             R7 R2
       48 LOADK                            R8 K10 ["Price"]
       49 DUPTABLE                         R9 K15 [{["NotANumber"] = "Price needs to be a valid number"}]
       50 CALL                             R6 3 -1
       51 CALL                             R5 -1 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R5 2
       54 JUMPIFNOT                        R5 ; [+10]
       55 GETUPVAL                         R5 2
       56 JUMPIFNOTLT                      R5 R4 ; [+8]
       58 MOVE                             R5 R1
       59 GETUPVAL                         R6 1
       60 MOVE                             R7 R2
       61 LOADK                            R8 K10 ["Price"]
       62 DUPTABLE                         R9 K18 [{["AboveMaxRobuxAmount"] = "Price must be less than a certain amount"}]
       63 CALL                             R6 3 -1
       64 CALL                             R5 -1 0
       65 RETURN                           R0 0

PROTO_42:
        0 LOADK                            R1 K0 ["TEMPORARY_"]
        1 GETUPVAL                         R2 0
        2 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        4 CALL                             R2 1 1
        5 CONCAT                           R0 R1 R2
        6 DUPTABLE                         R1 K14 [{["IsNew"] = True, ["Key"], ["Price"] = 0, ["Subscribers"] = 0, ["Active"] = False, ["Id"] = -1, ["Prepaid"] = 6}]
        7 SETTABLEKS                       R0 R1 K4 ["Key"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R4 R1 K4 ["Key"]
       13 MOVE                             R5 R1
       14 CALL                             R3 2 -1
       15 CALL                             R2 -1 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R3 R1 K4 ["Key"]
       19 GETTABLEKS                       R4 R1 K15 ["Name"]
       21 JUMPIFEQKS                       R4 K16 [""] ; [+3]
       23 JUMPIFNOTEQKNIL                  R4 ; [+9]
       25 MOVE                             R5 R2
       26 GETUPVAL                         R6 3
       27 MOVE                             R7 R3
       28 LOADK                            R8 K15 ["Name"]
       29 DUPTABLE                         R9 K19 [{["Empty"] = "Name can't be empty"}]
       30 CALL                             R6 3 -1
       31 CALL                             R5 -1 0
       32 JUMP                             ; [0]
       33 GETTABLEKS                       R3 R1 K4 ["Key"]
       35 GETTABLEKS                       R4 R1 K20 ["Image"]
       37 JUMPIFEQKNIL                     R4 ; [+3]
       39 JUMPIFNOTEQKS                    R4 K21 ["None"] ; [+8]
       41 MOVE                             R5 R2
       42 GETUPVAL                         R6 3
       43 MOVE                             R7 R3
       44 LOADK                            R8 K20 ["Image"]
       45 DUPTABLE                         R9 K23 [{["Empty"] = "Image can't be empty"}]
       46 CALL                             R6 3 -1
       47 CALL                             R5 -1 0
       48 GETTABLEKS                       R3 R1 K4 ["Key"]
       50 GETTABLEKS                       R4 R1 K5 ["Price"]
       52 FASTCALL1                        TONUMBER R4 ; [+3]
       53 MOVE                             R6 R4
       54 GETIMPORT                        R5 K25 [tonumber]
       56 CALL                             R5 1 1
       57 JUMPIFNOT                        R5 ; [+3]
       58 LOADN                            R6 0
       59 JUMPIFNOTLE                      R5 R6 ; [+9]
       61 MOVE                             R6 R2
       62 GETUPVAL                         R7 3
       63 MOVE                             R8 R3
       64 LOADK                            R9 K5 ["Price"]
       65 DUPTABLE                         R10 K28 [{["NotANumber"] = "Price needs to be a valid number"}]
       66 CALL                             R7 3 -1
       67 CALL                             R6 -1 0
       68 JUMP                             ; [+12]
       69 GETUPVAL                         R6 4
       70 JUMPIFNOT                        R6 ; [+10]
       71 GETUPVAL                         R6 4
       72 JUMPIFNOTLT                      R6 R5 ; [+8]
       74 MOVE                             R6 R2
       75 GETUPVAL                         R7 3
       76 MOVE                             R8 R3
       77 LOADK                            R9 K5 ["Price"]
       78 DUPTABLE                         R10 K31 [{["AboveMaxRobuxAmount"] = "Price must be less than a certain amount"}]
       79 CALL                             R7 3 -1
       80 CALL                             R6 -1 0
       81 GETUPVAL                         R2 1
       82 GETUPVAL                         R3 5
       83 LOADK                            R4 K32 ["isEditingSubscription"]
       84 LOADB                            R5 1
       85 CALL                             R3 2 -1
       86 CALL                             R2 -1 0
       87 GETUPVAL                         R2 1
       88 GETUPVAL                         R3 5
       89 LOADK                            R4 K33 ["editedSubscriptionKey"]
       90 GETTABLEKS                       R5 R1 K4 ["Key"]
       92 CALL                             R3 2 -1
       93 CALL                             R2 -1 0
       94 RETURN                           R0 0

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
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K9 ["createElement"]
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
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K7 ["Dictionary"]
       23 GETTABLEKS                       R6 R6 K8 ["join"]
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
       46 JUMPIFNOTLT                      R5 R6 ; [+17]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K7 ["Dictionary"]
       51 GETTABLEKS                       R6 R6 K8 ["join"]
       53 MOVE                             R7 R0
       54 DUPTABLE                         R8 K18 [{["price"] = 1}]
       55 CALL                             R6 2 1
       56 MOVE                             R0 R6
       57 FASTCALL2K                       TABLE_INSERT R2 K19 ; [+5]
       59 MOVE                             R7 R2
       60 LOADK                            R8 K19 ["devProductPrice"]
       61 GETIMPORT                        R6 K13 [table.insert]
       63 CALL                             R6 2 0
       64 MOVE                             R6 R0
       65 MOVE                             R7 R2
       66 RETURN                           R6 2

PROTO_50:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PaidAccess"]
        3 GETTABLEKS                       R2 R2 K1 ["initialPrice"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["VIPServers"]
        3 GETTABLEKS                       R2 R2 K1 ["initialPrice"]
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
       20 DUPTABLE                         R4 K12 [{["name"], ["price"] = 1, ["iconImageAssetId"] = "None"}]
       21 GETUPVAL                         R5 1
       22 SETTABLEKS                       R5 R4 K8 ["name"]
       24 FASTCALL                         TABLE_INSERT ; [+2]
       25 GETIMPORT                        R1 K15 [table.insert]
       27 CALL                             R1 3 0
       28 GETUPVAL                         R1 4
       29 GETUPVAL                         R2 3
       30 LOADNIL                          R3
       31 LOADNIL                          R4
       32 CALL                             R1 3 0
       33 RETURN                           R0 0

PROTO_54:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+2]
        3 GETTABLEKS                       R1 R0 K0 ["GameId"]
        5 LOADB                            R2 0
        6 GETTABLEKS                       R3 R0 K1 ["RewardedOnDemandAdsSetting"]
        8 JUMPIFEQKNIL                     R3 ; [+5]
       10 GETTABLEKS                       R2 R0 K1 ["RewardedOnDemandAdsSetting"]
       12 GETTABLEKS                       R2 R2 K2 ["showRewardedAdsToggle"]
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
       36 GETTABLEKS                       R10 R0 K1 ["RewardedOnDemandAdsSetting"]
       38 GETTABLEKS                       R10 R10 K10 ["isUniverseSuspendedFromRewardedAds"]
       40 GETTABLEKS                       R11 R0 K1 ["RewardedOnDemandAdsSetting"]
       42 GETTABLEKS                       R11 R11 K11 ["hasUniverseBeenEligible"]
       44 GETTABLEKS                       R12 R0 K12 ["PaidAccess"]
       46 GETTABLEKS                       R12 R12 K13 ["enabled"]
       48 GETTABLEKS                       R13 R0 K12 ["PaidAccess"]
       50 GETTABLEKS                       R13 R13 K14 ["price"]
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
       78 GETUPVAL                         R18 1
       79 GETTABLEKS                       R18 R18 K19 ["Dictionary"]
       81 GETTABLEKS                       R18 R18 K20 ["join"]
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
      141 GETUPVAL                         R37 7
      142 GETTABLEKS                       R37 R37 K37 ["new"]
      144 CALL                             R37 0 1
      145 JUMPIF                           R5 ; [+4]
      146 LOADNIL                          R12
      147 LOADNIL                          R38
      148 SETTABLEKS                       R38 R14 K36 ["isEnabled"]
      150 DUPTABLE                         R38 K41 [{"BadgesLoadingIndicatorContainer", "Badges", "Separator", "RewardedOnDemandAdsSetting", "PaidAccess", "VIPServers", "DevSubsList", "DevProducts"}]
      151 MOVE                             R39 R34
      152 JUMPIFNOT                        R39 ; [+48]
      153 LOADB                            R39 0
      154 GETUPVAL                         R40 8
      155 GETTABLEKS                       R40 R40 K42 ["Loading"]
      157 JUMPIFNOTEQ                      R33 R40 ; [+43]
      159 GETUPVAL                         R39 9
      160 GETTABLEKS                       R39 R39 K43 ["createElement"]
      162 GETUPVAL                         R40 10
      163 DUPTABLE                         R41 K45 [{"Size"}]
      164 GETIMPORT                        R42 K47 [UDim2.new]
      166 LOADN                            R43 1
      167 LOADN                            R44 0
      168 LOADN                            R45 0
      169 GETTABLEKS                       R47 R4 K49 ["table"]
      171 GETTABLEKS                       R47 R47 K50 ["height"]
      173 DIVK                             R46 R47 K48 [2]
      174 CALL                             R42 4 1
      175 SETTABLEKS                       R42 R41 K44 ["Size"]
      177 DUPTABLE                         R42 K52 [{"BadgesLoadingIndicator"}]
      178 GETUPVAL                         R43 9
      179 GETTABLEKS                       R43 R43 K43 ["createElement"]
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
      206 GETUPVAL                         R40 8
      207 GETTABLEKS                       R40 R40 K42 ["Loading"]
      209 JUMPIFEQ                         R33 R40 ; [+18]
      211 GETUPVAL                         R39 9
      212 GETTABLEKS                       R39 R39 K43 ["createElement"]
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
      232 GETUPVAL                         R39 9
      233 GETTABLEKS                       R39 R39 K43 ["createElement"]
      235 GETUPVAL                         R40 13
      236 DUPTABLE                         R41 K66 [{"LayoutOrder"}]
      237 NAMECALL                         R42 R37 K65 ["getNextOrder"]
      239 CALL                             R42 1 1
      240 SETTABLEKS                       R42 R41 K62 ["LayoutOrder"]
      242 CALL                             R39 2 1
      243 SETTABLEKS                       R39 R38 K39 ["Separator"]
      245 JUMPIFNOT                        R2 ; [+47]
      246 GETUPVAL                         R39 9
      247 GETTABLEKS                       R39 R39 K43 ["createElement"]
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
      296 GETUPVAL                         R39 9
      297 GETTABLEKS                       R39 R39 K43 ["createElement"]
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
      349 GETUPVAL                         R39 9
      350 GETTABLEKS                       R39 R39 K43 ["createElement"]
      352 GETUPVAL                         R40 17
      353 DUPTABLE                         R41 K91 [{"VIPServersData", "TaxRate", "MinimumFee", "PriceError", "LayoutOrder", "Enabled", "OnVipServersToggled", "OnVipServersPriceChanged"}]
      354 SETTABLEKS                       R14 R41 K88 ["VIPServersData"]
      356 SETTABLEKS                       R5 R41 K5 ["TaxRate"]
      358 SETTABLEKS                       R6 R41 K6 ["MinimumFee"]
      360 GETUPVAL                         R43 18
      361 JUMPIFNOT                        R43 ; [+23]
      362 GETTABLEKS                       R43 R0 K92 ["VIPServersPriceChangeTooSoon"]
      364 JUMPIFNOT                        R43 ; [+13]
      365 LOADK                            R44 K93 ["Errors"]
      366 LOADK                            R45 K94 ["ErrorPriceChangeTooSoonWithDate"]
      367 DUPTABLE                         R46 K96 [{"date"}]
      368 GETTABLEKS                       R47 R0 K92 ["VIPServersPriceChangeTooSoon"]
      370 GETTABLEKS                       R47 R47 K95 ["date"]
      372 SETTABLEKS                       R47 R46 K95 ["date"]
      374 NAMECALL                         R42 R3 K78 ["getText"]
      376 CALL                             R42 4 1
      377 JUMP                             ; [+13]
      378 GETTABLEKS                       R43 R14 K36 ["isEnabled"]
      380 JUMPIFNOT                        R43 ; [+2]
      381 MOVE                             R42 R36
      382 JUMPIF                           R42 ; [+8]
      383 LOADNIL                          R42
      384 JUMP                             ; [+6]
      385 GETTABLEKS                       R43 R14 K36 ["isEnabled"]
      387 JUMPIFNOT                        R43 ; [+2]
      388 MOVE                             R42 R36
      389 JUMPIF                           R42 ; [+1]
      390 LOADNIL                          R42
      391 SETTABLEKS                       R42 R41 K82 ["PriceError"]
      393 NAMECALL                         R42 R37 K65 ["getNextOrder"]
      395 CALL                             R42 1 1
      396 SETTABLEKS                       R42 R41 K62 ["LayoutOrder"]
      398 LOADB                            R42 0
      399 JUMPIFNOTEQKB                    R12 FALSE ; [+7]
      401 GETTABLEKS                       R43 R14 K36 ["isEnabled"]
      403 JUMPIFNOT                        R43 ; [+2]
      404 MOVE                             R42 R29
      405 JUMPIF                           R42 ; [+1]
      406 MOVE                             R42 R28
      407 SETTABLEKS                       R42 R41 K83 ["Enabled"]
      409 NEWCLOSURE                       R42 P2
      410 CAPTURE                          VAL R0
      411 CAPTURE                          UPVAL U19
      412 CAPTURE                          VAL R23
      413 SETTABLEKS                       R42 R41 K89 ["OnVipServersToggled"]
      415 SETTABLEKS                       R24 R41 K90 ["OnVipServersPriceChanged"]
      417 CALL                             R39 2 1
      418 SETTABLEKS                       R39 R38 K15 ["VIPServers"]
      420 GETUPVAL                         R39 20
      421 JUMPIFNOT                        R39 ; [+13]
      422 GETUPVAL                         R39 9
      423 GETTABLEKS                       R39 R39 K43 ["createElement"]
      425 GETUPVAL                         R40 21
      426 DUPTABLE                         R41 K97 [{"LayoutOrder", "OnDeveloperSubscriptionCreated"}]
      427 NAMECALL                         R42 R37 K65 ["getNextOrder"]
      429 CALL                             R42 1 1
      430 SETTABLEKS                       R42 R41 K62 ["LayoutOrder"]
      432 SETTABLEKS                       R35 R41 K34 ["OnDeveloperSubscriptionCreated"]
      434 CALL                             R39 2 1
      435 SETTABLEKS                       R39 R38 K40 ["DevSubsList"]
      437 GETUPVAL                         R39 9
      438 GETTABLEKS                       R39 R39 K43 ["createElement"]
      440 GETUPVAL                         R40 22
      441 DUPTABLE                         R41 K103 [{"ProductList", "ShowTable", "LayoutOrder", "CreateNewDevProduct", "OnLoadMoreDevProducts", "OnEditDevProductClicked"}]
      442 SETTABLEKS                       R19 R41 K98 ["ProductList"]
      444 JUMPIFNOTEQKN                    R20 K104 [0] ; [+2]
      446 LOADB                            R42 0 +1
      447 LOADB                            R42 1
      448 SETTABLEKS                       R42 R41 K99 ["ShowTable"]
      450 NAMECALL                         R42 R37 K65 ["getNextOrder"]
      452 CALL                             R42 1 1
      453 SETTABLEKS                       R42 R41 K62 ["LayoutOrder"]
      455 NEWCLOSURE                       R42 P3
      456 CAPTURE                          VAL R20
      457 CAPTURE                          UPVAL U23
      458 CAPTURE                          VAL R3
      459 CAPTURE                          VAL R15
      460 CAPTURE                          VAL R25
      461 SETTABLEKS                       R42 R41 K100 ["CreateNewDevProduct"]
      463 SETTABLEKS                       R27 R41 K101 ["OnLoadMoreDevProducts"]
      465 SETTABLEKS                       R26 R41 K102 ["OnEditDevProductClicked"]
      467 CALL                             R39 2 1
      468 SETTABLEKS                       R39 R38 K17 ["DevProducts"]
      470 CLOSEUPVALS                      R9
      471 RETURN                           R38 1

PROTO_55:
        0 GETIMPORT                        R1 K2 [utf8.len]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADNIL                          R2
        5 JUMPIFNOTEQKN                    R1 K3 [0] ; [+2]
        7 LOADK                            R2 K4 ["Empty"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K5 ["Dictionary"]
       11 GETTABLEKS                       R3 R3 K6 ["join"]
       13 GETUPVAL                         R4 0
       14 DUPTABLE                         R5 K8 [{"name"}]
       15 FASTCALL1                        TOSTRING R0 ; [+3]
       16 MOVE                             R7 R0
       17 GETIMPORT                        R6 K10 [tostring]
       19 CALL                             R6 1 1
       20 SETTABLEKS                       R6 R5 K7 ["name"]
       22 CALL                             R3 2 1
       23 SETUPVAL                         R3 0
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K11 ["id"]
       27 JUMPIFNOT                        R3 ; [+19]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K5 ["Dictionary"]
       31 GETTABLEKS                       R3 R3 K6 ["join"]
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
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K5 ["Dictionary"]
       50 GETTABLEKS                       R3 R3 K6 ["join"]
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
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K5 ["Dictionary"]
       21 GETTABLEKS                       R3 R3 K6 ["join"]
       23 GETUPVAL                         R4 2
       24 DUPTABLE                         R5 K8 [{"price"}]
       25 FASTCALL1                        TOSTRING R0 ; [+3]
       26 MOVE                             R7 R0
       27 GETIMPORT                        R6 K10 [tostring]
       29 CALL                             R6 1 1
       30 SETTABLEKS                       R6 R5 K7 ["price"]
       32 CALL                             R3 2 1
       33 SETUPVAL                         R3 2
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R3 R3 K11 ["id"]
       37 JUMPIFNOT                        R3 ; [+19]
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K5 ["Dictionary"]
       41 GETTABLEKS                       R3 R3 K6 ["join"]
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
       57 GETUPVAL                         R3 3
       58 GETTABLEKS                       R3 R3 K5 ["Dictionary"]
       60 GETTABLEKS                       R3 R3 K6 ["join"]
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
        7 GETUPVAL                         R2 4
        8 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
       10 GETTABLEKS                       R2 R2 K2 ["join"]
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
       24 GETUPVAL                         R2 4
       25 GETTABLEKS                       R2 R2 K1 ["Dictionary"]
       27 GETTABLEKS                       R2 R2 K2 ["join"]
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
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["new"]
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
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R9 R9 K8 ["Dictionary"]
       47 GETTABLEKS                       R9 R9 K9 ["join"]
       49 MOVE                             R10 R6
       50 MOVE                             R11 R8
       51 CALL                             R9 2 1
       52 MOVE                             R6 R9
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R9 R9 K8 ["Dictionary"]
       56 GETTABLEKS                       R9 R9 K9 ["join"]
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
      120 GETTABLEKS                       R19 R1 K22 ["fontStyle"]
      122 GETTABLEKS                       R19 R19 K23 ["SmallError"]
      124 GETTABLEKS                       R19 R19 K24 ["TextSize"]
      126 GETTABLEKS                       R20 R1 K22 ["fontStyle"]
      128 GETTABLEKS                       R20 R20 K23 ["SmallError"]
      130 GETTABLEKS                       R20 R20 K25 ["Font"]
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
      177 GETUPVAL                         R22 8
      178 GETTABLEKS                       R22 R22 K34 ["createElement"]
      180 GETUPVAL                         R23 9
      181 DUPTABLE                         R24 K41 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["axis"], ["minimumSize"], ["contentPadding"]}]
      182 NAMECALL                         R25 R3 K42 ["getNextOrder"]
      184 CALL                             R25 1 1
      185 SETTABLEKS                       R25 R24 K35 ["LayoutOrder"]
      187 GETUPVAL                         R25 9
      188 GETTABLEKS                       R25 R25 K43 ["Axis"]
      190 GETTABLEKS                       R25 R25 K44 ["Vertical"]
      192 SETTABLEKS                       R25 R24 K38 ["axis"]
      194 GETIMPORT                        R25 K46 [UDim2.new]
      196 LOADN                            R26 1
      197 LOADN                            R27 0
      198 LOADN                            R28 0
      199 LOADN                            R29 0
      200 CALL                             R25 4 1
      201 SETTABLEKS                       R25 R24 K39 ["minimumSize"]
      203 GETIMPORT                        R25 K48 [UDim.new]
      205 LOADN                            R26 0
      206 GETTABLEKS                       R27 R1 K49 ["settingsPage"]
      208 GETTABLEKS                       R27 R27 K50 ["headerPadding"]
      210 CALL                             R25 2 1
      211 SETTABLEKS                       R25 R24 K40 ["contentPadding"]
      213 NEWTABLE                         R25 2 1
      215 GETUPVAL                         R27 8
      216 GETTABLEKS                       R27 R27 K34 ["createElement"]
      218 LOADK                            R28 K51 ["ImageButton"]
      219 NEWTABLE                         R29 8 0
      221 GETIMPORT                        R30 K46 [UDim2.new]
      223 LOADN                            R31 0
      224 GETTABLEKS                       R32 R1 K52 ["backButton"]
      226 GETTABLEKS                       R32 R32 K53 ["size"]
      228 LOADN                            R33 0
      229 GETTABLEKS                       R34 R1 K52 ["backButton"]
      231 GETTABLEKS                       R34 R34 K53 ["size"]
      233 CALL                             R30 4 1
      234 SETTABLEKS                       R30 R29 K54 ["Size"]
      236 LOADN                            R30 0
      237 SETTABLEKS                       R30 R29 K35 ["LayoutOrder"]
      239 GETTABLEKS                       R30 R1 K52 ["backButton"]
      241 GETTABLEKS                       R30 R30 K55 ["image"]
      243 SETTABLEKS                       R30 R29 K56 ["Image"]
      245 LOADN                            R30 1
      246 SETTABLEKS                       R30 R29 K36 ["BackgroundTransparency"]
      248 GETUPVAL                         R30 8
      249 GETTABLEKS                       R30 R30 K57 ["Event"]
      251 GETTABLEKS                       R30 R30 K58 ["Activated"]
      253 NEWCLOSURE                       R31 P2
      254 CAPTURE                          UPVAL U10
      255 CAPTURE                          REF R10
      256 CAPTURE                          REF R7
      257 CAPTURE                          REF R8
      258 CAPTURE                          UPVAL U2
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R14
      261 CAPTURE                          REF R5
      262 CAPTURE                          VAL R18
      263 CAPTURE                          VAL R13
      264 SETTABLE                         R31 R29 R30
      265 NEWTABLE                         R30 0 1
      267 GETUPVAL                         R31 8
      268 GETTABLEKS                       R31 R31 K34 ["createElement"]
      270 GETUPVAL                         R32 11
      271 DUPTABLE                         R33 K61 [{["Cursor"] = "PointingHand"}]
      272 CALL                             R31 2 -1
      273 SETLIST                          R30 R31 -1 [1]
      275 CALL                             R27 3 1
      276 SETTABLEKS                       R27 R25 K62 ["BackButton"]
      278 GETUPVAL                         R26 8
      279 GETTABLEKS                       R26 R26 K34 ["createElement"]
      281 GETUPVAL                         R27 12
      282 DUPTABLE                         R28 K63 [{["LayoutOrder"] = 1}]
      283 CALL                             R26 2 1
      284 SETLIST                          R25 R26 1 [1]
      286 GETUPVAL                         R27 8
      287 GETTABLEKS                       R27 R27 K34 ["createElement"]
      289 GETUPVAL                         R28 13
      290 DUPTABLE                         R29 K66 [{["Title"], ["LayoutOrder"] = 2}]
      291 LOADK                            R32 K67 ["Monetization"]
      292 LOADK                            R33 K68 ["EditDeveloperProduct"]
      293 NAMECALL                         R30 R2 K21 ["getText"]
      295 CALL                             R30 3 1
      296 SETTABLEKS                       R30 R29 K64 ["Title"]
      298 CALL                             R27 2 1
      299 SETTABLEKS                       R27 R25 K69 ["Header"]
      301 CALL                             R22 3 1
      302 SETTABLEKS                       R22 R21 K30 ["HeaderFrame"]
      304 GETUPVAL                         R22 8
      305 GETTABLEKS                       R22 R22 K34 ["createElement"]
      307 GETUPVAL                         R23 14
      308 DUPTABLE                         R24 K70 [{"LayoutOrder", "Title"}]
      309 NAMECALL                         R25 R3 K42 ["getNextOrder"]
      311 CALL                             R25 1 1
      312 SETTABLEKS                       R25 R24 K35 ["LayoutOrder"]
      314 LOADK                            R27 K28 ["General"]
      315 LOADK                            R28 K71 ["TitleName"]
      316 NAMECALL                         R25 R2 K21 ["getText"]
      318 CALL                             R25 3 1
      319 SETTABLEKS                       R25 R24 K64 ["Title"]
      321 DUPTABLE                         R25 K73 [{"TextBox"}]
      322 GETUPVAL                         R26 8
      323 GETTABLEKS                       R26 R26 K34 ["createElement"]
      325 GETUPVAL                         R27 15
      326 DUPTABLE                         R28 K78 [{"ErrorText", "MaxLength", "OnTextChanged", "Text"}]
      327 SETTABLEKS                       R17 R28 K74 ["ErrorText"]
      329 GETUPVAL                         R29 16
      330 SETTABLEKS                       R29 R28 K75 ["MaxLength"]
      332 SETTABLEKS                       R19 R28 K76 ["OnTextChanged"]
      334 SETTABLEKS                       R11 R28 K77 ["Text"]
      336 CALL                             R26 2 1
      337 SETTABLEKS                       R26 R25 K72 ["TextBox"]
      339 CALL                             R22 3 1
      340 SETTABLEKS                       R22 R21 K31 ["Name"]
      342 GETUPVAL                         R22 8
      343 GETTABLEKS                       R22 R22 K34 ["createElement"]
      345 GETUPVAL                         R23 14
      346 DUPTABLE                         R24 K70 [{"LayoutOrder", "Title"}]
      347 NAMECALL                         R25 R3 K42 ["getNextOrder"]
      349 CALL                             R25 1 1
      350 SETTABLEKS                       R25 R24 K35 ["LayoutOrder"]
      352 LOADK                            R27 K67 ["Monetization"]
      353 LOADK                            R28 K79 ["PriceTitle"]
      354 NAMECALL                         R25 R2 K21 ["getText"]
      356 CALL                             R25 3 1
      357 SETTABLEKS                       R25 R24 K64 ["Title"]
      359 DUPTABLE                         R25 K83 [{"VerticalLayout", "PriceFrame", "ErrorMessage"}]
      360 GETUPVAL                         R26 8
      361 GETTABLEKS                       R26 R26 K34 ["createElement"]
      363 LOADK                            R27 K84 ["UIListLayout"]
      364 DUPTABLE                         R28 K87 [{"SortOrder", "FillDirection"}]
      365 GETIMPORT                        R29 K89 [Enum.SortOrder.LayoutOrder]
      367 SETTABLEKS                       R29 R28 K85 ["SortOrder"]
      369 GETIMPORT                        R29 K90 [Enum.FillDirection.Vertical]
      371 SETTABLEKS                       R29 R28 K86 ["FillDirection"]
      373 CALL                             R26 2 1
      374 SETTABLEKS                       R26 R25 K80 ["VerticalLayout"]
      376 GETUPVAL                         R26 8
      377 GETTABLEKS                       R26 R26 K34 ["createElement"]
      379 GETUPVAL                         R27 15
      380 DUPTABLE                         R28 K93 [{"OnTextChanged", "Size", "Text", "LeadingComponent", "LeadingComponentProps"}]
      381 SETTABLEKS                       R20 R28 K76 ["OnTextChanged"]
      383 GETIMPORT                        R29 K46 [UDim2.new]
      385 LOADN                            R30 0
      386 LOADN                            R31 200
      387 LOADN                            R32 0
      388 LOADN                            R33 32
      389 CALL                             R29 4 1
      390 SETTABLEKS                       R29 R28 K54 ["Size"]
      392 SETTABLEKS                       R12 R28 K77 ["Text"]
      394 GETUPVAL                         R29 17
      395 SETTABLEKS                       R29 R28 K91 ["LeadingComponent"]
      397 DUPTABLE                         R29 K95 [{"Size", "ImageColor3", "Image"}]
      398 GETIMPORT                        R30 K46 [UDim2.new]
      400 LOADN                            R31 0
      401 GETTABLEKS                       R32 R1 K96 ["robuxFeeBase"]
      403 GETTABLEKS                       R32 R32 K97 ["icon"]
      405 GETTABLEKS                       R32 R32 K53 ["size"]
      407 LOADN                            R33 0
      408 GETTABLEKS                       R34 R1 K96 ["robuxFeeBase"]
      410 GETTABLEKS                       R34 R34 K97 ["icon"]
      412 GETTABLEKS                       R34 R34 K53 ["size"]
      414 CALL                             R30 4 1
      415 SETTABLEKS                       R30 R29 K54 ["Size"]
      417 GETTABLEKS                       R30 R1 K96 ["robuxFeeBase"]
      419 GETTABLEKS                       R30 R30 K97 ["icon"]
      421 GETTABLEKS                       R30 R30 K98 ["imageColor"]
      423 SETTABLEKS                       R30 R29 K94 ["ImageColor3"]
      425 GETTABLEKS                       R30 R1 K96 ["robuxFeeBase"]
      427 GETTABLEKS                       R30 R30 K97 ["icon"]
      429 GETTABLEKS                       R30 R30 K55 ["image"]
      431 SETTABLEKS                       R30 R29 K56 ["Image"]
      433 SETTABLEKS                       R29 R28 K92 ["LeadingComponentProps"]
      435 CALL                             R26 2 1
      436 SETTABLEKS                       R26 R25 K81 ["PriceFrame"]
      438 MOVE                             R26 R15
      439 JUMPIFNOT                        R26 ; [+30]
      440 GETUPVAL                         R26 8
      441 GETTABLEKS                       R26 R26 K34 ["createElement"]
      443 LOADK                            R27 K99 ["TextLabel"]
      444 GETUPVAL                         R28 2
      445 GETTABLEKS                       R28 R28 K8 ["Dictionary"]
      447 GETTABLEKS                       R28 R28 K9 ["join"]
      449 GETTABLEKS                       R29 R1 K22 ["fontStyle"]
      451 GETTABLEKS                       R29 R29 K23 ["SmallError"]
      453 DUPTABLE                         R30 K105 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["Text"], ["TextYAlignment"], ["TextXAlignment"], ["TextWrapped"] = True, ["LayoutOrder"] = 2}]
      454 GETIMPORT                        R31 K107 [Enum.AutomaticSize.XY]
      456 SETTABLEKS                       R31 R30 K100 ["AutomaticSize"]
      458 SETTABLEKS                       R15 R30 K77 ["Text"]
      460 GETIMPORT                        R31 K109 [Enum.TextYAlignment.Center]
      462 SETTABLEKS                       R31 R30 K101 ["TextYAlignment"]
      464 GETIMPORT                        R31 K111 [Enum.TextXAlignment.Left]
      466 SETTABLEKS                       R31 R30 K102 ["TextXAlignment"]
      468 CALL                             R28 2 -1
      469 CALL                             R26 -1 1
      470 SETTABLEKS                       R26 R25 K82 ["ErrorMessage"]
      472 CALL                             R22 3 1
      473 SETTABLEKS                       R22 R21 K32 ["Price"]
      475 CLOSEUPVALS                      R5
      476 RETURN                           R21 1

PROTO_59:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
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
       36 GETUPVAL                         R7 3
       37 GETTABLEKS                       R7 R7 K8 ["createElement"]
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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Settings"]
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
       18 LOADN                            R5 1000
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
       46 LOADN                            R9 2000
       47 NAMECALL                         R6 R6 K3 ["DefineFastInt"]
       49 CALL                             R6 3 1
       50 GETIMPORT                        R7 K12 [script]
       52 GETTABLEKS                       R7 R7 K13 ["Parent"]
       54 GETIMPORT                        R8 K12 [script]
       56 GETTABLEKS                       R8 R8 K13 ["Parent"]
       58 GETTABLEKS                       R8 R8 K13 ["Parent"]
       60 GETTABLEKS                       R8 R8 K13 ["Parent"]
       62 GETIMPORT                        R9 K15 [require]
       64 GETTABLEKS                       R10 R8 K16 ["Packages"]
       66 GETTABLEKS                       R10 R10 K17 ["FitFrame"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K15 [require]
       71 GETTABLEKS                       R11 R8 K16 ["Packages"]
       73 GETTABLEKS                       R11 R11 K18 ["Roact"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K15 [require]
       78 GETTABLEKS                       R12 R8 K16 ["Packages"]
       80 GETTABLEKS                       R12 R12 K19 ["RoactRodux"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K15 [require]
       85 GETTABLEKS                       R13 R8 K16 ["Packages"]
       87 GETTABLEKS                       R13 R13 K20 ["Cryo"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K15 [require]
       92 GETTABLEKS                       R14 R8 K16 ["Packages"]
       94 GETTABLEKS                       R14 R14 K21 ["Framework"]
       96 CALL                             R13 1 1
       97 GETTABLEKS                       R14 R13 K22 ["Util"]
       99 GETTABLEKS                       R15 R13 K23 ["ContextServices"]
      101 GETTABLEKS                       R16 R15 K24 ["withContext"]
      103 GETIMPORT                        R17 K15 [require]
      105 GETTABLEKS                       R18 R8 K25 ["Src"]
      107 GETTABLEKS                       R18 R18 K26 ["Components"]
      109 GETTABLEKS                       R18 R18 K27 ["Header"]
      111 CALL                             R17 1 1
      112 GETIMPORT                        R18 K15 [require]
      114 GETTABLEKS                       R19 R7 K26 ["Components"]
      116 GETTABLEKS                       R19 R19 K28 ["RewardedOnDemandAdsSetting"]
      118 CALL                             R18 1 1
      119 GETIMPORT                        R19 K15 [require]
      121 GETTABLEKS                       R20 R7 K26 ["Components"]
      123 GETTABLEKS                       R20 R20 K29 ["PaidAccess"]
      125 CALL                             R19 1 1
      126 GETIMPORT                        R20 K15 [require]
      128 GETTABLEKS                       R21 R7 K26 ["Components"]
      130 GETTABLEKS                       R21 R21 K30 ["VIPServers"]
      132 CALL                             R20 1 1
      133 GETIMPORT                        R21 K15 [require]
      135 GETTABLEKS                       R22 R7 K26 ["Components"]
      137 GETTABLEKS                       R22 R22 K31 ["DevProducts"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K15 [require]
      142 GETTABLEKS                       R23 R8 K25 ["Src"]
      144 GETTABLEKS                       R23 R23 K26 ["Components"]
      146 GETTABLEKS                       R23 R23 K32 ["SettingsPages"]
      148 GETTABLEKS                       R23 R23 K33 ["SettingsPage"]
      150 CALL                             R22 1 1
      151 GETIMPORT                        R23 K15 [require]
      153 GETTABLEKS                       R24 R7 K26 ["Components"]
      155 GETTABLEKS                       R24 R24 K34 ["DevSubList"]
      157 CALL                             R23 1 1
      158 GETIMPORT                        R24 K15 [require]
      160 GETTABLEKS                       R25 R7 K26 ["Components"]
      162 GETTABLEKS                       R25 R25 K35 ["DevSubDetails"]
      164 CALL                             R24 1 1
      165 GETIMPORT                        R25 K15 [require]
      167 GETTABLEKS                       R26 R7 K26 ["Components"]
      169 GETTABLEKS                       R26 R26 K36 ["Badges"]
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
      196 GETTABLEKS                       R38 R8 K25 ["Src"]
      198 GETTABLEKS                       R38 R38 K26 ["Components"]
      200 GETTABLEKS                       R38 R38 K48 ["AutoThumbnails"]
      202 GETTABLEKS                       R38 R38 K49 ["BadgeIconThumbnail"]
      204 CALL                             R37 1 1
      205 GETIMPORT                        R38 K15 [require]
      207 GETTABLEKS                       R39 R8 K25 ["Src"]
      209 GETTABLEKS                       R39 R39 K50 ["Actions"]
      211 GETTABLEKS                       R39 R39 K51 ["AddChange"]
      213 CALL                             R38 1 1
      214 GETIMPORT                        R39 K15 [require]
      216 GETTABLEKS                       R40 R8 K25 ["Src"]
      218 GETTABLEKS                       R40 R40 K50 ["Actions"]
      220 GETTABLEKS                       R40 R40 K52 ["AddErrors"]
      222 CALL                             R39 1 1
      223 GETIMPORT                        R40 K15 [require]
      225 GETTABLEKS                       R41 R8 K25 ["Src"]
      227 GETTABLEKS                       R41 R41 K50 ["Actions"]
      229 GETTABLEKS                       R41 R41 K53 ["DiscardError"]
      231 CALL                             R40 1 1
      232 GETIMPORT                        R41 K15 [require]
      234 GETTABLEKS                       R42 R8 K25 ["Src"]
      236 GETTABLEKS                       R42 R42 K50 ["Actions"]
      238 GETTABLEKS                       R42 R42 K54 ["SetEditDevProductId"]
      240 CALL                             R41 1 1
      241 GETIMPORT                        R42 K15 [require]
      243 GETTABLEKS                       R43 R8 K25 ["Src"]
      245 GETTABLEKS                       R43 R43 K50 ["Actions"]
      247 GETTABLEKS                       R43 R43 K55 ["SetComponentLoadState"]
      249 CALL                             R42 1 1
      250 GETIMPORT                        R43 K15 [require]
      252 GETTABLEKS                       R44 R7 K56 ["Thunks"]
      254 GETTABLEKS                       R44 R44 K57 ["LoadDeveloperProducts"]
      256 CALL                             R43 1 1
      257 GETIMPORT                        R44 K15 [require]
      259 GETTABLEKS                       R45 R7 K56 ["Thunks"]
      261 GETTABLEKS                       R45 R45 K58 ["LoadBadges"]
      263 CALL                             R44 1 1
      264 GETIMPORT                        R45 K15 [require]
      266 GETTABLEKS                       R46 R7 K56 ["Thunks"]
      268 GETTABLEKS                       R46 R46 K59 ["AddDevSubKeyChange"]
      270 CALL                             R45 1 1
      271 GETIMPORT                        R46 K15 [require]
      273 GETTABLEKS                       R47 R7 K56 ["Thunks"]
      275 GETTABLEKS                       R47 R47 K60 ["AddDevSubKeyError"]
      277 CALL                             R46 1 1
      278 GETIMPORT                        R47 K15 [require]
      280 GETTABLEKS                       R48 R7 K56 ["Thunks"]
      282 GETTABLEKS                       R48 R48 K61 ["AddDevSubChange"]
      284 CALL                             R47 1 1
      285 GETIMPORT                        R48 K15 [require]
      287 GETTABLEKS                       R49 R8 K25 ["Src"]
      289 GETTABLEKS                       R49 R49 K22 ["Util"]
      291 GETTABLEKS                       R49 R49 K62 ["LoadState"]
      293 CALL                             R48 1 1
      294 GETIMPORT                        R49 K15 [require]
      296 GETTABLEKS                       R50 R8 K25 ["Src"]
      298 GETTABLEKS                       R50 R50 K22 ["Util"]
      300 GETTABLEKS                       R50 R50 K63 ["GameSettingsUtilities"]
      302 CALL                             R49 1 1
      303 GETTABLEKS                       R49 R49 K64 ["shouldAllowBadges"]
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
      322 GETIMPORT                        R53 K15 [require]
      324 GETTABLEKS                       R54 R7 K70 ["Flags"]
      326 CALL                             R53 1 1
      327 GETTABLEKS                       R54 R53 K71 ["GetFFlagGameSettingsVIPServerPriceChangeTooSoon"]
      329 CALL                             R54 0 1
      330 GETTABLEKS                       R55 R10 K72 ["PureComponent"]
      332 GETIMPORT                        R57 K12 [script]
      334 GETTABLEKS                       R57 R57 K73 ["Name"]
      336 NAMECALL                         R55 R55 K74 ["extend"]
      338 CALL                             R55 2 1
      339 GETIMPORT                        R56 K12 [script]
      341 GETTABLEKS                       R56 R56 K73 ["Name"]
      343 DUPTABLE                         R57 K81 [{["BelowMin"] = "ErrorPriceBelowMin", ["AboveMax"] = "ErrorPriceAboveMax", ["Invalid"] = "ErrorPriceInvalid"}]
      344 DUPTABLE                         R58 K84 [{["Empty"] = "ErrorNameEmpty"}]
      345 LOADK                            R59 K85 [""]
      346 GETIMPORT                        R60 K15 [require]
      348 GETTABLEKS                       R61 R8 K25 ["Src"]
      350 GETTABLEKS                       R61 R61 K22 ["Util"]
      352 GETTABLEKS                       R61 R61 K86 ["KeyProvider"]
      354 CALL                             R60 1 1
      355 GETTABLEKS                       R61 R60 K87 ["getIsFriendOnlyKeyName"]
      357 GETTABLEKS                       R62 R60 K88 ["getIsActiveKeyName"]
      359 GETTABLEKS                       R63 R60 K89 ["getIsForSaleKeyName"]
      361 GETTABLEKS                       R64 R60 K90 ["getIsRewardedOnDemandAdsAllowedKeyName"]
      363 GETTABLEKS                       R65 R60 K91 ["getVipServersIsEnabledKeyName"]
      365 DUPCLOSURE                       R66 K92 [PROTO_14]
      366 CAPTURE                          VAL R64
      367 CAPTURE                          VAL R63
      368 CAPTURE                          VAL R65
      369 CAPTURE                          VAL R52
      370 CAPTURE                          VAL R62
      371 CAPTURE                          VAL R61
      372 CAPTURE                          VAL R49
      373 DUPCLOSURE                       R67 K93 [PROTO_25]
      374 CAPTURE                          VAL R54
      375 CAPTURE                          VAL R39
      376 CAPTURE                          VAL R52
      377 DUPCLOSURE                       R68 K94 [PROTO_26]
      378 CAPTURE                          VAL R63
      379 CAPTURE                          VAL R65
      380 CAPTURE                          VAL R54
      381 CAPTURE                          VAL R62
      382 CAPTURE                          VAL R61
      383 CAPTURE                          VAL R50
      384 DUPCLOSURE                       R69 K95 [PROTO_27]
      385 CAPTURE                          VAL R46
      386 CAPTURE                          VAL R6
      387 DUPCLOSURE                       R70 K96 [PROTO_28]
      388 CAPTURE                          VAL R46
      389 CAPTURE                          VAL R6
      390 DUPCLOSURE                       R71 K97 [PROTO_43]
      391 CAPTURE                          VAL R38
      392 CAPTURE                          VAL R64
      393 CAPTURE                          VAL R40
      394 CAPTURE                          VAL R63
      395 CAPTURE                          VAL R39
      396 CAPTURE                          VAL R1
      397 CAPTURE                          VAL R2
      398 CAPTURE                          VAL R65
      399 CAPTURE                          VAL R3
      400 CAPTURE                          VAL R41
      401 CAPTURE                          VAL R43
      402 CAPTURE                          VAL R44
      403 CAPTURE                          VAL R42
      404 CAPTURE                          VAL R48
      405 CAPTURE                          VAL R45
      406 CAPTURE                          VAL R69
      407 CAPTURE                          VAL R46
      408 CAPTURE                          VAL R6
      409 CAPTURE                          VAL R51
      410 CAPTURE                          VAL R47
      411 DUPCLOSURE                       R72 K98 [PROTO_44]
      412 CAPTURE                          VAL R10
      413 CAPTURE                          VAL R37
      414 DUPCLOSURE                       R73 K99 [PROTO_45]
      415 DUPCLOSURE                       R74 K100 [PROTO_46]
      416 DUPCLOSURE                       R75 K101 [PROTO_47]
      417 CAPTURE                          VAL R57
      418 CAPTURE                          VAL R3
      419 CAPTURE                          VAL R1
      420 CAPTURE                          VAL R4
      421 CAPTURE                          VAL R2
      422 CAPTURE                          VAL R5
      423 DUPCLOSURE                       R76 K102 [PROTO_48]
      424 CAPTURE                          VAL R58
      425 DUPCLOSURE                       R77 K103 [PROTO_49]
      426 CAPTURE                          VAL R0
      427 CAPTURE                          VAL R12
      428 NEWCLOSURE                       R78 P12
      429 CAPTURE                          VAL R50
      430 CAPTURE                          VAL R12
      431 CAPTURE                          VAL R74
      432 CAPTURE                          VAL R73
      433 CAPTURE                          VAL R49
      434 CAPTURE                          VAL R72
      435 CAPTURE                          VAL R75
      436 CAPTURE                          VAL R34
      437 CAPTURE                          VAL R48
      438 CAPTURE                          VAL R10
      439 CAPTURE                          VAL R27
      440 CAPTURE                          VAL R30
      441 CAPTURE                          VAL R25
      442 CAPTURE                          VAL R31
      443 CAPTURE                          VAL R18
      444 CAPTURE                          VAL R19
      445 CAPTURE                          VAL R1
      446 CAPTURE                          VAL R20
      447 CAPTURE                          VAL R54
      448 CAPTURE                          VAL R3
      449 CAPTURE                          VAL R52
      450 CAPTURE                          VAL R23
      451 CAPTURE                          VAL R21
      452 CAPTURE                          REF R59
      453 NEWCLOSURE                       R79 P13
      454 CAPTURE                          VAL R34
      455 CAPTURE                          REF R59
      456 CAPTURE                          VAL R12
      457 CAPTURE                          VAL R57
      458 CAPTURE                          VAL R4
      459 CAPTURE                          VAL R5
      460 CAPTURE                          VAL R36
      461 CAPTURE                          VAL R58
      462 CAPTURE                          VAL R10
      463 CAPTURE                          VAL R35
      464 CAPTURE                          VAL R77
      465 CAPTURE                          VAL R28
      466 CAPTURE                          VAL R31
      467 CAPTURE                          VAL R17
      468 CAPTURE                          VAL R33
      469 CAPTURE                          VAL R32
      470 CAPTURE                          VAL R0
      471 CAPTURE                          VAL R29
      472 DUPCLOSURE                       R80 K104 [PROTO_59]
      473 CAPTURE                          VAL R10
      474 CAPTURE                          VAL R24
      475 DUPCLOSURE                       R81 K105 [PROTO_63]
      476 CAPTURE                          VAL R80
      477 CAPTURE                          VAL R78
      478 CAPTURE                          VAL R79
      479 CAPTURE                          VAL R10
      480 CAPTURE                          VAL R22
      481 CAPTURE                          VAL R66
      482 CAPTURE                          VAL R67
      483 CAPTURE                          VAL R56
      484 SETTABLEKS                       R81 R55 K106 ["render"]
      486 MOVE                             R81 R16
      487 DUPTABLE                         R82 K109 [{"Localization", "Stylizer"}]
      488 GETTABLEKS                       R83 R15 K107 ["Localization"]
      490 SETTABLEKS                       R83 R82 K107 ["Localization"]
      492 GETTABLEKS                       R83 R15 K108 ["Stylizer"]
      494 SETTABLEKS                       R83 R82 K108 ["Stylizer"]
      496 CALL                             R81 1 1
      497 MOVE                             R82 R55
      498 CALL                             R81 1 1
      499 MOVE                             R55 R81
      500 GETIMPORT                        R81 K15 [require]
      502 GETTABLEKS                       R82 R8 K25 ["Src"]
      504 GETTABLEKS                       R82 R82 K110 ["Networking"]
      506 GETTABLEKS                       R82 R82 K111 ["settingFromState"]
      508 CALL                             R81 1 1
      509 GETTABLEKS                       R82 R11 K112 ["connect"]
      511 DUPCLOSURE                       R83 K113 [PROTO_65]
      512 CAPTURE                          VAL R81
      513 CAPTURE                          VAL R68
      514 DUPCLOSURE                       R84 K114 [PROTO_68]
      515 CAPTURE                          VAL R38
      516 CAPTURE                          VAL R71
      517 CALL                             R82 2 1
      518 MOVE                             R83 R55
      519 CALL                             R82 1 1
      520 MOVE                             R55 R82
      521 SETTABLEKS                       R56 R55 K115 ["LocalizationId"]
      523 CLOSEUPVALS                      R59
      524 RETURN                           R55 1
