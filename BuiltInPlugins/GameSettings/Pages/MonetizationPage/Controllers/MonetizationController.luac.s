PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 SETTABLEKS                       R0 R1 K0 ["__networking"]
        4 GETUPVAL                         R4 0
        5 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["__networking"]
        2 LOADK                            R4 K1 ["economy"]
        3 LOADK                            R5 K2 ["/v1/resale-tax-rate"]
        4 NAMECALL                         R2 R1 K3 ["get"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v2/universes/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/configuration"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["develop"]
        3 LOADK                            R8 K2 ["/v2/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/configuration"]
        6 CONCAT                           R7 R8 R10
        7 DUPTABLE                         R8 K5 [{"Body"}]
        8 SETTABLEKS                       R2 R8 K4 ["Body"]
       10 NAMECALL                         R4 R3 K6 ["patch"]
       12 CALL                             R4 4 -1
       13 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["apis"]
        3 LOADK                            R7 K2 ["/developer-ads-stats-api/v1/universe-suitability-criteria/"]
        4 MOVE                             R8 R1
        5 CONCAT                           R6 R7 R8
        6 NAMECALL                         R3 R2 K3 ["get"]
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["__networking"]
        2 LOADK                            R5 K1 ["develop"]
        3 LOADK                            R7 K2 ["/v1/universes/"]
        4 MOVE                             R8 R1
        5 LOADK                            R9 K3 ["/configuration/vip-servers"]
        6 CONCAT                           R6 R7 R9
        7 NAMECALL                         R3 R2 K4 ["get"]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["apis"]
        3 LOADK                            R8 K2 ["/developer-products/v2/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/developerproducts"]
        6 CONCAT                           R7 R8 R10
        7 DUPTABLE                         R8 K5 [{"Params"}]
        8 DUPTABLE                         R9 K9 [{["cursor"], ["limit"] = 50}]
        9 SETTABLEKS                       R2 R9 K6 ["cursor"]
       11 SETTABLEKS                       R9 R8 K4 ["Params"]
       13 NAMECALL                         R4 R3 K10 ["get"]
       15 CALL                             R4 4 -1
       16 RETURN                           R4 -1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["apis"]
        3 LOADK                            R8 K2 ["/developer-products/v1/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/developerproducts"]
        6 CONCAT                           R7 R8 R10
        7 DUPTABLE                         R8 K6 [{"Params", "Body"}]
        8 DUPTABLE                         R9 K11 [{["name"], ["description"] = " ", ["priceInRobux"]}]
        9 GETTABLEKS                       R10 R2 K7 ["name"]
       11 SETTABLEKS                       R10 R9 K7 ["name"]
       13 GETTABLEKS                       R10 R2 K12 ["price"]
       15 SETTABLEKS                       R10 R9 K10 ["priceInRobux"]
       17 SETTABLEKS                       R9 R8 K4 ["Params"]
       19 NEWTABLE                         R9 0 0
       21 SETTABLEKS                       R9 R8 K5 ["Body"]
       23 NAMECALL                         R4 R3 K13 ["post"]
       25 CALL                             R4 4 -1
       26 RETURN                           R4 -1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["apis"]
        3 LOADK                            R8 K2 ["/developer-products/v1/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/developerproducts/"]
        6 GETTABLEKS                       R11 R2 K4 ["id"]
        8 LOADK                            R12 K5 ["/update"]
        9 CONCAT                           R7 R8 R12
       10 DUPTABLE                         R8 K7 [{"Body"}]
       11 DUPTABLE                         R9 K10 [{"name", "priceInRobux"}]
       12 GETTABLEKS                       R10 R2 K8 ["name"]
       14 SETTABLEKS                       R10 R9 K8 ["name"]
       16 GETTABLEKS                       R10 R2 K11 ["price"]
       18 SETTABLEKS                       R10 R9 K9 ["priceInRobux"]
       20 SETTABLEKS                       R9 R8 K6 ["Body"]
       22 NAMECALL                         R4 R3 K12 ["post"]
       24 CALL                             R4 4 -1
       25 RETURN                           R4 -1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["__networking"]
        2 LOADK                            R6 K1 ["badges"]
        3 LOADK                            R8 K2 ["/v1/universes/"]
        4 MOVE                             R9 R1
        5 LOADK                            R10 K3 ["/badges"]
        6 CONCAT                           R7 R8 R10
        7 DUPTABLE                         R8 K5 [{"Params"}]
        8 DUPTABLE                         R9 K9 [{["sortOrder"] = "Asc", ["cursor"]}]
        9 SETTABLEKS                       R2 R9 K8 ["cursor"]
       11 SETTABLEKS                       R9 R8 K4 ["Params"]
       13 NAMECALL                         R4 R3 K10 ["get"]
       15 CALL                             R4 4 -1
       16 RETURN                           R4 -1

PROTO_10:
        0 NAMECALL                         R1 R0 K0 ["economyV1GET"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R1 R1 K1 ["await"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R1 K2 ["responseBody"]
        8 GETTABLEKS                       R2 R2 K3 ["taxRate"]
       10 RETURN                           R2 1

PROTO_11:
        0 NAMECALL                         R1 R0 K0 ["economyV1GET"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R1 R1 K1 ["await"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R1 K2 ["responseBody"]
        8 GETTABLEKS                       R2 R2 K3 ["minimumFee"]
       10 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["developerAdsStatsV1GET"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R0 R0 K1 ["await"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+14]
        7 JUMPIFNOT                        R3 ; [+13]
        8 GETTABLEKS                       R4 R3 K2 ["responseCode"]
       10 JUMPIFNOTEQKN                    R4 K3 [200] ; [+10]
       12 GETTABLEKS                       R4 R3 K4 ["responseBody"]
       14 JUMPIFNOT                        R4 ; [+6]
       15 GETTABLEKS                       R4 R3 K4 ["responseBody"]
       17 GETTABLEKS                       R4 R4 K5 ["isUniverseEligible"]
       19 JUMPIFNOTEQKNIL                  R4 ; [+12]
       21 GETUPVAL                         R4 0
       22 LOADK                            R5 K6 ["/developer-ads-stats-api/v1/universe-suitability-criteria"]
       23 JUMPIFNOT                        R3 ; [+3]
       24 GETTABLEKS                       R6 R3 K2 ["responseCode"]
       26 JUMP                             ; [+1]
       27 LOADN                            R6 -1
       28 LOADK                            R7 K7 ["Error fetching rewarded on demand ads eligibility"]
       29 CALL                             R4 3 0
       30 LOADNIL                          R4
       31 RETURN                           R4 1
       32 DUPTABLE                         R4 K10 [{"isUniverseEligible", "isUniverseSuspendedFromRewardedAds", "hasUniverseBeenEligible"}]
       33 GETTABLEKS                       R6 R3 K4 ["responseBody"]
       35 GETTABLEKS                       R6 R6 K5 ["isUniverseEligible"]
       37 JUMPIFEQKB                       R6 TRUE ; [+2]
       39 LOADB                            R5 0 +1
       40 LOADB                            R5 1
       41 SETTABLEKS                       R5 R4 K5 ["isUniverseEligible"]
       43 GETTABLEKS                       R6 R3 K4 ["responseBody"]
       45 GETTABLEKS                       R6 R6 K8 ["isUniverseSuspendedFromRewardedAds"]
       47 JUMPIFEQKB                       R6 TRUE ; [+2]
       49 LOADB                            R5 0 +1
       50 LOADB                            R5 1
       51 SETTABLEKS                       R5 R4 K8 ["isUniverseSuspendedFromRewardedAds"]
       53 GETTABLEKS                       R6 R3 K4 ["responseBody"]
       55 GETTABLEKS                       R6 R6 K9 ["hasUniverseBeenEligible"]
       57 JUMPIFEQKB                       R6 TRUE ; [+2]
       59 LOADB                            R5 0 +1
       60 LOADB                            R5 1
       61 SETTABLEKS                       R5 R4 K9 ["hasUniverseBeenEligible"]
       63 RETURN                           R4 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["developerAdsStatsV1GET"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R0 R0 K1 ["await"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+32]
        2 GETIMPORT                        R2 K1 [pcall]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R2 ; [+14]
        9 JUMPIFNOT                        R3 ; [+13]
       10 GETTABLEKS                       R4 R3 K2 ["responseCode"]
       12 JUMPIFNOTEQKN                    R4 K3 [200] ; [+10]
       14 GETTABLEKS                       R4 R3 K4 ["responseBody"]
       16 JUMPIFNOT                        R4 ; [+6]
       17 GETTABLEKS                       R4 R3 K4 ["responseBody"]
       19 GETTABLEKS                       R4 R4 K5 ["showRewardedAdsToggle"]
       21 JUMPIFNOTEQKNIL                  R4 ; [+3]
       23 LOADB                            R4 0
       24 RETURN                           R4 1
       25 GETTABLEKS                       R5 R3 K4 ["responseBody"]
       27 GETTABLEKS                       R5 R5 K5 ["showRewardedAdsToggle"]
       29 JUMPIFEQKB                       R5 TRUE ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 RETURN                           R4 1
       34 MOVE                             R4 R1
       35 NAMECALL                         R2 R0 K6 ["developerAdsStatsV1GET"]
       37 CALL                             R2 2 1
       38 NAMECALL                         R2 R2 K7 ["await"]
       40 CALL                             R2 1 1
       41 GETTABLEKS                       R3 R2 K4 ["responseBody"]
       43 GETTABLEKS                       R3 R3 K5 ["showRewardedAdsToggle"]
       45 RETURN                           R3 1

PROTO_16:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["configurationV2GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["isRewardedOnDemandAdsAllowed"]
       11 RETURN                           R3 1

PROTO_17:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"isRewardedOnDemandAdsAllowed"}]
        2 SETTABLEKS                       R2 R6 K0 ["isRewardedOnDemandAdsAllowed"]
        4 NAMECALL                         R3 R0 K2 ["configurationV2PATCH"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_18:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["configurationV2GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["isForSale"]
       11 RETURN                           R3 1

PROTO_19:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"isForSale"}]
        2 SETTABLEKS                       R2 R6 K0 ["isForSale"]
        4 NAMECALL                         R3 R0 K2 ["configurationV2PATCH"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_20:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["configurationV2GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["price"]
       11 RETURN                           R3 1

PROTO_21:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"price"}]
        2 SETTABLEKS                       R2 R6 K0 ["price"]
        4 NAMECALL                         R3 R0 K2 ["configurationV2PATCH"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_22:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["vipServersV1GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["isEnabled"]
       11 RETURN                           R3 1

PROTO_23:
        0 MOVE                             R5 R1
        1 DUPTABLE                         R6 K1 [{"allowPrivateServers"}]
        2 SETTABLEKS                       R2 R6 K0 ["allowPrivateServers"]
        4 NAMECALL                         R3 R0 K2 ["configurationV2PATCH"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_24:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["vipServersV1GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["price"]
       11 RETURN                           R3 1

PROTO_25:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+35]
        7 GETTABLEKS                       R1 R0 K3 ["responseBody"]
        9 JUMPIFNOT                        R1 ; [+31]
       10 GETTABLEKS                       R1 R0 K3 ["responseBody"]
       12 GETTABLEKS                       R1 R1 K4 ["errors"]
       14 JUMPIFNOT                        R1 ; [+26]
       15 GETIMPORT                        R1 K6 [ipairs]
       17 GETTABLEKS                       R2 R0 K3 ["responseBody"]
       19 GETTABLEKS                       R2 R2 K4 ["errors"]
       21 CALL                             R1 1 3
       22 FORGPREP_INEXT                   R1
       23 GETTABLEKS                       R6 R5 K7 ["code"]
       25 JUMPIFNOTEQKN                    R6 K8 [41] ; [+13]
       27 GETIMPORT                        R6 K11 [string.match]
       29 GETTABLEKS                       R8 R5 K13 ["userFacingMessage"]
       31 ORK                              R7 R8 K12 [""]
       32 LOADK                            R8 K14 ["until (.+) UTC"]
       33 CALL                             R6 2 1
       34 DUPTABLE                         R7 K18 [{["key"] = "PriceChangeTooSoon", ["date"]}]
       35 SETTABLEKS                       R6 R7 K17 ["date"]
       37 SETUPVAL                         R7 0
       38 RETURN                           R0 0
       39 FORGLOOP                         R1 2 [inext] ; [-17]
       41 GETIMPORT                        R1 K20 [error]
       43 MOVE                             R2 R0
       44 CALL                             R1 1 0
       45 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+19]
        2 LOADNIL                          R3
        3 MOVE                             R6 R1
        4 DUPTABLE                         R7 K1 [{"privateServerPrice"}]
        5 SETTABLEKS                       R2 R7 K0 ["privateServerPrice"]
        7 NAMECALL                         R4 R0 K2 ["configurationV2PATCH"]
        9 CALL                             R4 3 1
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          REF R3
       12 NAMECALL                         R4 R4 K3 ["catch"]
       14 CALL                             R4 2 1
       15 NAMECALL                         R4 R4 K4 ["await"]
       17 CALL                             R4 1 0
       18 CLOSEUPVALS                      R3
       19 RETURN                           R3 1
       20 CLOSEUPVALS                      R3
       21 MOVE                             R5 R1
       22 DUPTABLE                         R6 K1 [{"privateServerPrice"}]
       23 SETTABLEKS                       R2 R6 K0 ["privateServerPrice"]
       25 NAMECALL                         R3 R0 K2 ["configurationV2PATCH"]
       27 CALL                             R3 3 0
       28 RETURN                           R0 0

PROTO_27:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["vipServersV1GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["activeServersCount"]
       11 RETURN                           R3 1

PROTO_28:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["vipServersV1GET"]
        3 CALL                             R2 2 1
        4 NAMECALL                         R2 R2 K1 ["await"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["responseBody"]
        9 GETTABLEKS                       R3 R3 K3 ["activeSubscriptionsCount"]
       11 RETURN                           R3 1

PROTO_29:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["getDeveloperProductsV2"]
        4 CALL                             R3 3 -1
        5 RETURN                           R3 -1

PROTO_30:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["developerProductsV2GET"]
        4 CALL                             R3 3 1
        5 NAMECALL                         R3 R3 K1 ["await"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R4 R3 K2 ["responseBody"]
       10 GETTABLEKS                       R4 R4 K3 ["nextPageCursor"]
       12 JUMPIF                           R4 ; [+3]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["None"]
       16 GETTABLEKS                       R5 R3 K2 ["responseBody"]
       18 GETTABLEKS                       R5 R5 K5 ["developerProducts"]
       20 NEWTABLE                         R6 0 0
       22 GETIMPORT                        R7 K7 [ipairs]
       24 MOVE                             R8 R5
       25 CALL                             R7 1 3
       26 FORGPREP_INEXT                   R7
       27 GETTABLEKS                       R12 R11 K8 ["ProductId"]
       29 DUPTABLE                         R13 K12 [{"id", "name", "price"}]
       30 GETTABLEKS                       R14 R11 K8 ["ProductId"]
       32 SETTABLEKS                       R14 R13 K9 ["id"]
       34 GETTABLEKS                       R14 R11 K13 ["Name"]
       36 SETTABLEKS                       R14 R13 K10 ["name"]
       38 GETTABLEKS                       R14 R11 K14 ["PriceInRobux"]
       40 SETTABLEKS                       R14 R13 K11 ["price"]
       42 SETTABLE                         R13 R6 R12
       43 FORGLOOP                         R7 2 [inext] ; [-17]
       45 MOVE                             R7 R6
       46 MOVE                             R8 R4
       47 RETURN                           R7 2

PROTO_31:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["developerProductsCreateV1POST"]
        4 CALL                             R3 3 1
        5 NAMECALL                         R3 R3 K1 ["await"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_32:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["developerProductsUpdateV1POST"]
        4 CALL                             R3 3 1
        5 NAMECALL                         R3 R3 K1 ["await"]
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_33:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["badgesV1GET"]
        4 CALL                             R3 3 1
        5 NAMECALL                         R3 R3 K1 ["await"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R4 R3 K2 ["responseBody"]
       10 GETTABLEKS                       R2 R4 K3 ["nextPageCursor"]
       12 GETTABLEKS                       R4 R3 K2 ["responseBody"]
       14 GETTABLEKS                       R4 R4 K4 ["data"]
       16 NEWTABLE                         R5 0 0
       18 GETIMPORT                        R6 K6 [ipairs]
       20 MOVE                             R7 R4
       21 CALL                             R6 1 3
       22 FORGPREP_INEXT                   R6
       23 GETTABLEKS                       R11 R10 K7 ["id"]
       25 DUPTABLE                         R12 K11 [{"id", "name", "description", "iconImageId"}]
       26 GETTABLEKS                       R13 R10 K7 ["id"]
       28 SETTABLEKS                       R13 R12 K7 ["id"]
       30 GETTABLEKS                       R13 R10 K8 ["name"]
       32 SETTABLEKS                       R13 R12 K8 ["name"]
       34 GETTABLEKS                       R14 R10 K9 ["description"]
       36 ORK                              R13 R14 K12 [""]
       37 SETTABLEKS                       R13 R12 K9 ["description"]
       39 GETTABLEKS                       R13 R10 K10 ["iconImageId"]
       41 SETTABLEKS                       R13 R12 K10 ["iconImageId"]
       43 SETTABLE                         R12 R5 R11
       44 FORGLOOP                         R6 2 [inext] ; [-22]
       46 MOVE                             R6 R5
       47 MOVE                             R7 R2
       48 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 GETIMPORT                        R1 K1 [script]
        5 GETTABLEKS                       R1 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETIMPORT                        R2 K4 [require]
       15 GETTABLEKS                       R3 R1 K5 ["Packages"]
       17 GETTABLEKS                       R3 R3 K6 ["Cryo"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETIMPORT                        R4 K1 [script]
       24 GETTABLEKS                       R4 R4 K2 ["Parent"]
       26 GETTABLEKS                       R4 R4 K2 ["Parent"]
       28 GETTABLEKS                       R4 R4 K7 ["Util"]
       30 GETTABLEKS                       R4 R4 K8 ["telemetry"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K4 [require]
       35 GETIMPORT                        R5 K1 [script]
       37 GETTABLEKS                       R5 R5 K2 ["Parent"]
       39 GETTABLEKS                       R5 R5 K2 ["Parent"]
       41 GETTABLEKS                       R5 R5 K9 ["Flags"]
       43 CALL                             R4 1 1
       44 GETTABLEKS                       R5 R4 K10 ["GetFFlagEnableDeveloperAdsStatsApiMonetizationPageFix"]
       46 CALL                             R5 0 1
       47 GETTABLEKS                       R6 R4 K11 ["GetFFlagGameSettingsVIPServerPriceChangeTooSoon"]
       49 CALL                             R6 0 1
       50 SETTABLEKS                       R0 R0 K12 ["__index"]
       52 DUPCLOSURE                       R7 K13 [PROTO_0]
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R7 R0 K14 ["new"]
       56 DUPCLOSURE                       R7 K15 [PROTO_1]
       57 SETTABLEKS                       R7 R0 K16 ["economyV1GET"]
       59 DUPCLOSURE                       R7 K17 [PROTO_2]
       60 SETTABLEKS                       R7 R0 K18 ["configurationV2GET"]
       62 DUPCLOSURE                       R7 K19 [PROTO_3]
       63 SETTABLEKS                       R7 R0 K20 ["configurationV2PATCH"]
       65 DUPCLOSURE                       R7 K21 [PROTO_4]
       66 SETTABLEKS                       R7 R0 K22 ["developerAdsStatsV1GET"]
       68 DUPCLOSURE                       R7 K23 [PROTO_5]
       69 SETTABLEKS                       R7 R0 K24 ["vipServersV1GET"]
       71 DUPCLOSURE                       R7 K25 [PROTO_6]
       72 SETTABLEKS                       R7 R0 K26 ["developerProductsV2GET"]
       74 DUPCLOSURE                       R7 K27 [PROTO_7]
       75 SETTABLEKS                       R7 R0 K28 ["developerProductsCreateV1POST"]
       77 DUPCLOSURE                       R7 K29 [PROTO_8]
       78 SETTABLEKS                       R7 R0 K30 ["developerProductsUpdateV1POST"]
       80 DUPCLOSURE                       R7 K31 [PROTO_9]
       81 SETTABLEKS                       R7 R0 K32 ["badgesV1GET"]
       83 DUPCLOSURE                       R7 K33 [PROTO_10]
       84 SETTABLEKS                       R7 R0 K34 ["getTaxRate"]
       86 DUPCLOSURE                       R7 K35 [PROTO_11]
       87 SETTABLEKS                       R7 R0 K36 ["getMinimumFee"]
       89 DUPCLOSURE                       R7 K37 [PROTO_13]
       90 CAPTURE                          VAL R3
       91 SETTABLEKS                       R7 R0 K38 ["getIsUniverseEligibleForRewardedOnDemandAds"]
       93 DUPCLOSURE                       R7 K39 [PROTO_15]
       94 CAPTURE                          VAL R5
       95 SETTABLEKS                       R7 R0 K40 ["getShowRewardedAdsToggle"]
       97 DUPCLOSURE                       R7 K41 [PROTO_16]
       98 SETTABLEKS                       R7 R0 K42 ["getIsRewardedOnDemandAdsAllowed"]
      100 DUPCLOSURE                       R7 K43 [PROTO_17]
      101 SETTABLEKS                       R7 R0 K44 ["setIsRewardedOnDemandAdsAllowed"]
      103 DUPCLOSURE                       R7 K45 [PROTO_18]
      104 SETTABLEKS                       R7 R0 K46 ["getPaidAccessEnabled"]
      106 DUPCLOSURE                       R7 K47 [PROTO_19]
      107 SETTABLEKS                       R7 R0 K48 ["setPaidAccessEnabled"]
      109 DUPCLOSURE                       R7 K49 [PROTO_20]
      110 SETTABLEKS                       R7 R0 K50 ["getPaidAccessPrice"]
      112 DUPCLOSURE                       R7 K51 [PROTO_21]
      113 SETTABLEKS                       R7 R0 K52 ["setPaidAccessPrice"]
      115 DUPCLOSURE                       R7 K53 [PROTO_22]
      116 SETTABLEKS                       R7 R0 K54 ["getVIPServersEnabled"]
      118 DUPCLOSURE                       R7 K55 [PROTO_23]
      119 SETTABLEKS                       R7 R0 K56 ["setVIPServersEnabled"]
      121 DUPCLOSURE                       R7 K57 [PROTO_24]
      122 SETTABLEKS                       R7 R0 K58 ["getVIPServersPrice"]
      124 DUPCLOSURE                       R7 K59 [PROTO_26]
      125 CAPTURE                          VAL R6
      126 SETTABLEKS                       R7 R0 K60 ["setVIPServersPrice"]
      128 DUPCLOSURE                       R7 K61 [PROTO_27]
      129 SETTABLEKS                       R7 R0 K62 ["getVIPServersActiveServersCount"]
      131 DUPCLOSURE                       R7 K63 [PROTO_28]
      132 SETTABLEKS                       R7 R0 K64 ["getVIPServersActiveSubscriptionsCount"]
      134 DUPCLOSURE                       R7 K65 [PROTO_29]
      135 SETTABLEKS                       R7 R0 K66 ["getDeveloperProducts"]
      137 DUPCLOSURE                       R7 K67 [PROTO_30]
      138 CAPTURE                          VAL R2
      139 SETTABLEKS                       R7 R0 K68 ["getDeveloperProductsV2"]
      141 DUPCLOSURE                       R7 K69 [PROTO_31]
      142 SETTABLEKS                       R7 R0 K70 ["createDevProduct"]
      144 DUPCLOSURE                       R7 K71 [PROTO_32]
      145 SETTABLEKS                       R7 R0 K72 ["updateDevProduct"]
      147 DUPCLOSURE                       R7 K73 [PROTO_33]
      148 SETTABLEKS                       R7 R0 K74 ["getBadges"]
      150 RETURN                           R0 1
