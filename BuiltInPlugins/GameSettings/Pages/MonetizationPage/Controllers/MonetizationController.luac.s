PROTO_0:
  NEWTABLE R1 1 0
  SETTABLEKS R0 R1 K0 ["__networking"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K2 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["__networking"]
  LOADK R4 K1 ["economy"]
  LOADK R5 K2 ["/v1/resale-tax-rate"]
  NAMECALL R2 R1 K3 ["get"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["develop"]
  LOADK R7 K2 ["/v2/universes/"]
  MOVE R8 R1
  LOADK R9 K3 ["/configuration"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_3:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["develop"]
  LOADK R8 K2 ["/v2/universes/"]
  MOVE R9 R1
  LOADK R10 K3 ["/configuration"]
  CONCAT R7 R8 R10
  DUPTABLE R8 K5 [{"Body"}]
  SETTABLEKS R2 R8 K4 ["Body"]
  NAMECALL R4 R3 K6 ["patch"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["apis"]
  LOADK R7 K2 ["/developer-ads-stats-api/v1/universe-suitability-criteria/"]
  MOVE R8 R1
  CONCAT R6 R7 R8
  NAMECALL R3 R2 K3 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["develop"]
  LOADK R7 K2 ["/v1/universes/"]
  MOVE R8 R1
  LOADK R9 K3 ["/configuration/vip-servers"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_6:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["apis"]
  LOADK R8 K2 ["/developer-products/v2/universes/"]
  MOVE R9 R1
  LOADK R10 K3 ["/developerproducts"]
  CONCAT R7 R8 R10
  DUPTABLE R8 K5 [{"Params"}]
  DUPTABLE R9 K8 [{"cursor", "limit"}]
  SETTABLEKS R2 R9 K6 ["cursor"]
  LOADN R10 50
  SETTABLEKS R10 R9 K7 ["limit"]
  SETTABLEKS R9 R8 K4 ["Params"]
  NAMECALL R4 R3 K9 ["get"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_7:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["apis"]
  LOADK R8 K2 ["/developer-products/v1/universes/"]
  MOVE R9 R1
  LOADK R10 K3 ["/developerproducts"]
  CONCAT R7 R8 R10
  DUPTABLE R8 K6 [{"Params", "Body"}]
  DUPTABLE R9 K10 [{"name", "description", "priceInRobux"}]
  GETTABLEKS R10 R2 K7 ["name"]
  SETTABLEKS R10 R9 K7 ["name"]
  LOADK R10 K11 [" "]
  SETTABLEKS R10 R9 K8 ["description"]
  GETTABLEKS R10 R2 K12 ["price"]
  SETTABLEKS R10 R9 K9 ["priceInRobux"]
  SETTABLEKS R9 R8 K4 ["Params"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K5 ["Body"]
  NAMECALL R4 R3 K13 ["post"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["apis"]
  LOADK R8 K2 ["/developer-products/v1/universes/"]
  MOVE R9 R1
  LOADK R10 K3 ["/developerproducts/"]
  GETTABLEKS R11 R2 K4 ["id"]
  LOADK R12 K5 ["/update"]
  CONCAT R7 R8 R12
  DUPTABLE R8 K7 [{"Body"}]
  DUPTABLE R9 K10 [{"name", "priceInRobux"}]
  GETTABLEKS R10 R2 K8 ["name"]
  SETTABLEKS R10 R9 K8 ["name"]
  GETTABLEKS R10 R2 K11 ["price"]
  SETTABLEKS R10 R9 K9 ["priceInRobux"]
  SETTABLEKS R9 R8 K6 ["Body"]
  NAMECALL R4 R3 K12 ["post"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_9:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["badges"]
  LOADK R8 K2 ["/v1/universes/"]
  MOVE R9 R1
  LOADK R10 K3 ["/badges"]
  CONCAT R7 R8 R10
  DUPTABLE R8 K5 [{"Params"}]
  DUPTABLE R9 K8 [{"sortOrder", "cursor"}]
  LOADK R10 K9 ["Asc"]
  SETTABLEKS R10 R9 K6 ["sortOrder"]
  SETTABLEKS R2 R9 K7 ["cursor"]
  SETTABLEKS R9 R8 K4 ["Params"]
  NAMECALL R4 R3 K10 ["get"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_10:
  NAMECALL R1 R0 K0 ["economyV1GET"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K2 ["responseBody"]
  GETTABLEKS R2 R3 K3 ["taxRate"]
  RETURN R2 1

PROTO_11:
  NAMECALL R1 R0 K0 ["economyV1GET"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K2 ["responseBody"]
  GETTABLEKS R2 R3 K3 ["minimumFee"]
  RETURN R2 1

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["developerAdsStatsV1GET"]
  CALL R0 2 1
  NAMECALL R0 R0 K1 ["await"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_13:
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R2 1 2
  JUMPIFNOT R2 [+14]
  JUMPIFNOT R3 [+13]
  GETTABLEKS R4 R3 K2 ["responseCode"]
  JUMPIFNOTEQKN R4 K3 [200] [+10]
  GETTABLEKS R4 R3 K4 ["responseBody"]
  JUMPIFNOT R4 [+6]
  GETTABLEKS R5 R3 K4 ["responseBody"]
  GETTABLEKS R4 R5 K5 ["isUniverseEligible"]
  JUMPIFNOTEQKNIL R4 [+12]
  GETUPVAL R4 0
  LOADK R5 K6 ["/developer-ads-stats-api/v1/universe-suitability-criteria"]
  JUMPIFNOT R3 [+3]
  GETTABLEKS R6 R3 K2 ["responseCode"]
  JUMP [+1]
  LOADN R6 255
  LOADK R7 K7 ["Error fetching rewarded on demand ads eligibility"]
  CALL R4 3 0
  LOADNIL R4
  RETURN R4 1
  DUPTABLE R4 K10 [{"isUniverseEligible", "isUniverseSuspendedFromRewardedAds", "hasUniverseBeenEligible"}]
  GETTABLEKS R7 R3 K4 ["responseBody"]
  GETTABLEKS R6 R7 K5 ["isUniverseEligible"]
  JUMPIFEQKB R6 TRUE [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["isUniverseEligible"]
  GETTABLEKS R7 R3 K4 ["responseBody"]
  GETTABLEKS R6 R7 K8 ["isUniverseSuspendedFromRewardedAds"]
  JUMPIFEQKB R6 TRUE [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["isUniverseSuspendedFromRewardedAds"]
  GETTABLEKS R7 R3 K4 ["responseBody"]
  GETTABLEKS R6 R7 K9 ["hasUniverseBeenEligible"]
  JUMPIFEQKB R6 TRUE [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R4 K9 ["hasUniverseBeenEligible"]
  RETURN R4 1

PROTO_14:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["developerAdsStatsV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["showRewardedAdsToggle"]
  RETURN R3 1

PROTO_15:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["configurationV2GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["isRewardedOnDemandAdsAllowed"]
  RETURN R3 1

PROTO_16:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"isRewardedOnDemandAdsAllowed"}]
  SETTABLEKS R2 R6 K0 ["isRewardedOnDemandAdsAllowed"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 0
  RETURN R0 0

PROTO_17:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["configurationV2GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["isForSale"]
  RETURN R3 1

PROTO_18:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"isForSale"}]
  SETTABLEKS R2 R6 K0 ["isForSale"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 0
  RETURN R0 0

PROTO_19:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["configurationV2GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["price"]
  RETURN R3 1

PROTO_20:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"price"}]
  SETTABLEKS R2 R6 K0 ["price"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 0
  RETURN R0 0

PROTO_21:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["vipServersV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["isEnabled"]
  RETURN R3 1

PROTO_22:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"allowPrivateServers"}]
  SETTABLEKS R2 R6 K0 ["allowPrivateServers"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 0
  RETURN R0 0

PROTO_23:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["vipServersV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["price"]
  RETURN R3 1

PROTO_24:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"privateServerPrice"}]
  SETTABLEKS R2 R6 K0 ["privateServerPrice"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 0
  RETURN R0 0

PROTO_25:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["vipServersV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["activeServersCount"]
  RETURN R3 1

PROTO_26:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["vipServersV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["activeSubscriptionsCount"]
  RETURN R3 1

PROTO_27:
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["getDeveloperProductsV2"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_28:
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["developerProductsV2GET"]
  CALL R3 3 1
  NAMECALL R3 R3 K1 ["await"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K2 ["responseBody"]
  GETTABLEKS R4 R5 K3 ["nextPageCursor"]
  JUMPIF R4 [+3]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["None"]
  GETTABLEKS R6 R3 K2 ["responseBody"]
  GETTABLEKS R5 R6 K5 ["developerProducts"]
  NEWTABLE R6 0 0
  GETIMPORT R7 K7 [ipairs]
  MOVE R8 R5
  CALL R7 1 3
  FORGPREP_INEXT R7
  GETTABLEKS R12 R11 K8 ["ProductId"]
  DUPTABLE R13 K12 [{"id", "name", "price"}]
  GETTABLEKS R14 R11 K8 ["ProductId"]
  SETTABLEKS R14 R13 K9 ["id"]
  GETTABLEKS R14 R11 K13 ["Name"]
  SETTABLEKS R14 R13 K10 ["name"]
  GETTABLEKS R14 R11 K14 ["PriceInRobux"]
  SETTABLEKS R14 R13 K11 ["price"]
  SETTABLE R13 R6 R12
  FORGLOOP R7 2 [inext] [-17]
  MOVE R7 R6
  MOVE R8 R4
  RETURN R7 2

PROTO_29:
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["developerProductsCreateV1POST"]
  CALL R3 3 1
  NAMECALL R3 R3 K1 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_30:
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["developerProductsUpdateV1POST"]
  CALL R3 3 1
  NAMECALL R3 R3 K1 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_31:
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["badgesV1GET"]
  CALL R3 3 1
  NAMECALL R3 R3 K1 ["await"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K2 ["responseBody"]
  GETTABLEKS R2 R4 K3 ["nextPageCursor"]
  GETTABLEKS R5 R3 K2 ["responseBody"]
  GETTABLEKS R4 R5 K4 ["data"]
  NEWTABLE R5 0 0
  GETIMPORT R6 K6 [ipairs]
  MOVE R7 R4
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETTABLEKS R11 R10 K7 ["id"]
  DUPTABLE R12 K11 [{"id", "name", "description", "iconImageId"}]
  GETTABLEKS R13 R10 K7 ["id"]
  SETTABLEKS R13 R12 K7 ["id"]
  GETTABLEKS R13 R10 K8 ["name"]
  SETTABLEKS R13 R12 K8 ["name"]
  GETTABLEKS R14 R10 K9 ["description"]
  ORK R13 R14 K12 [""]
  SETTABLEKS R13 R12 K9 ["description"]
  GETTABLEKS R13 R10 K10 ["iconImageId"]
  SETTABLEKS R13 R12 K10 ["iconImageId"]
  SETTABLE R12 R5 R11
  FORGLOOP R6 2 [inext] [-22]
  MOVE R6 R5
  MOVE R7 R2
  RETURN R6 2

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 32 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R1 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K8 ["telemetry"]
  CALL R3 1 1
  SETTABLEKS R0 R0 K9 ["__index"]
  DUPCLOSURE R4 K10 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R4 R0 K11 ["new"]
  DUPCLOSURE R4 K12 [PROTO_1]
  SETTABLEKS R4 R0 K13 ["economyV1GET"]
  DUPCLOSURE R4 K14 [PROTO_2]
  SETTABLEKS R4 R0 K15 ["configurationV2GET"]
  DUPCLOSURE R4 K16 [PROTO_3]
  SETTABLEKS R4 R0 K17 ["configurationV2PATCH"]
  DUPCLOSURE R4 K18 [PROTO_4]
  SETTABLEKS R4 R0 K19 ["developerAdsStatsV1GET"]
  DUPCLOSURE R4 K20 [PROTO_5]
  SETTABLEKS R4 R0 K21 ["vipServersV1GET"]
  DUPCLOSURE R4 K22 [PROTO_6]
  SETTABLEKS R4 R0 K23 ["developerProductsV2GET"]
  DUPCLOSURE R4 K24 [PROTO_7]
  SETTABLEKS R4 R0 K25 ["developerProductsCreateV1POST"]
  DUPCLOSURE R4 K26 [PROTO_8]
  SETTABLEKS R4 R0 K27 ["developerProductsUpdateV1POST"]
  DUPCLOSURE R4 K28 [PROTO_9]
  SETTABLEKS R4 R0 K29 ["badgesV1GET"]
  DUPCLOSURE R4 K30 [PROTO_10]
  SETTABLEKS R4 R0 K31 ["getTaxRate"]
  DUPCLOSURE R4 K32 [PROTO_11]
  SETTABLEKS R4 R0 K33 ["getMinimumFee"]
  DUPCLOSURE R4 K34 [PROTO_13]
  CAPTURE VAL R3
  SETTABLEKS R4 R0 K35 ["getIsUniverseEligibleForRewardedOnDemandAds"]
  DUPCLOSURE R4 K36 [PROTO_14]
  SETTABLEKS R4 R0 K37 ["getShowRewardedAdsToggle"]
  DUPCLOSURE R4 K38 [PROTO_15]
  SETTABLEKS R4 R0 K39 ["getIsRewardedOnDemandAdsAllowed"]
  DUPCLOSURE R4 K40 [PROTO_16]
  SETTABLEKS R4 R0 K41 ["setIsRewardedOnDemandAdsAllowed"]
  DUPCLOSURE R4 K42 [PROTO_17]
  SETTABLEKS R4 R0 K43 ["getPaidAccessEnabled"]
  DUPCLOSURE R4 K44 [PROTO_18]
  SETTABLEKS R4 R0 K45 ["setPaidAccessEnabled"]
  DUPCLOSURE R4 K46 [PROTO_19]
  SETTABLEKS R4 R0 K47 ["getPaidAccessPrice"]
  DUPCLOSURE R4 K48 [PROTO_20]
  SETTABLEKS R4 R0 K49 ["setPaidAccessPrice"]
  DUPCLOSURE R4 K50 [PROTO_21]
  SETTABLEKS R4 R0 K51 ["getVIPServersEnabled"]
  DUPCLOSURE R4 K52 [PROTO_22]
  SETTABLEKS R4 R0 K53 ["setVIPServersEnabled"]
  DUPCLOSURE R4 K54 [PROTO_23]
  SETTABLEKS R4 R0 K55 ["getVIPServersPrice"]
  DUPCLOSURE R4 K56 [PROTO_24]
  SETTABLEKS R4 R0 K57 ["setVIPServersPrice"]
  DUPCLOSURE R4 K58 [PROTO_25]
  SETTABLEKS R4 R0 K59 ["getVIPServersActiveServersCount"]
  DUPCLOSURE R4 K60 [PROTO_26]
  SETTABLEKS R4 R0 K61 ["getVIPServersActiveSubscriptionsCount"]
  DUPCLOSURE R4 K62 [PROTO_27]
  SETTABLEKS R4 R0 K63 ["getDeveloperProducts"]
  DUPCLOSURE R4 K64 [PROTO_28]
  CAPTURE VAL R2
  SETTABLEKS R4 R0 K65 ["getDeveloperProductsV2"]
  DUPCLOSURE R4 K66 [PROTO_29]
  SETTABLEKS R4 R0 K67 ["createDevProduct"]
  DUPCLOSURE R4 K68 [PROTO_30]
  SETTABLEKS R4 R0 K69 ["updateDevProduct"]
  DUPCLOSURE R4 K70 [PROTO_31]
  SETTABLEKS R4 R0 K71 ["getBadges"]
  RETURN R0 1
