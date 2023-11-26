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
  LOADK R5 K1 ["develop"]
  LOADK R7 K2 ["/v1/universes/"]
  MOVE R8 R1
  LOADK R9 K3 ["/configuration/vip-servers"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_5:
  GETTABLEKS R3 R0 K0 ["__networking"]
  MODK R4 R1 K1 [100]
  GETUPVAL R5 0
  JUMPIFNOTLT R4 R5 [+15]
  LOADK R6 K2 ["apis"]
  LOADK R7 K3 ["/developer-products/v1/developer-products/list"]
  DUPTABLE R8 K5 [{"Params"}]
  DUPTABLE R9 K8 [{"universeId", "page"}]
  SETTABLEKS R1 R9 K6 ["universeId"]
  SETTABLEKS R2 R9 K7 ["page"]
  SETTABLEKS R9 R8 K4 ["Params"]
  NAMECALL R4 R3 K9 ["get"]
  CALL R4 4 -1
  RETURN R4 -1
  LOADK R6 K10 ["api"]
  LOADK R7 K11 ["/developerproducts/list"]
  DUPTABLE R8 K5 [{"Params"}]
  DUPTABLE R9 K8 [{"universeId", "page"}]
  SETTABLEKS R1 R9 K6 ["universeId"]
  SETTABLEKS R2 R9 K7 ["page"]
  SETTABLEKS R9 R8 K4 ["Params"]
  NAMECALL R4 R3 K9 ["get"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_6:
  GETTABLEKS R3 R0 K0 ["__networking"]
  MODK R4 R1 K1 [100]
  GETUPVAL R5 0
  JUMPIFNOTLT R4 R5 [+29]
  LOADK R6 K2 ["apis"]
  LOADK R8 K3 ["/developer-products/v1/universes/"]
  MOVE R9 R1
  LOADK R10 K4 ["/developerproducts"]
  CONCAT R7 R8 R10
  DUPTABLE R8 K7 [{"Params", "Body"}]
  DUPTABLE R9 K11 [{"name", "description", "priceInRobux"}]
  GETTABLEKS R10 R2 K8 ["name"]
  SETTABLEKS R10 R9 K8 ["name"]
  LOADK R10 K12 [" "]
  SETTABLEKS R10 R9 K9 ["description"]
  GETTABLEKS R10 R2 K13 ["price"]
  SETTABLEKS R10 R9 K10 ["priceInRobux"]
  SETTABLEKS R9 R8 K5 ["Params"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K6 ["Body"]
  NAMECALL R4 R3 K14 ["post"]
  CALL R4 4 -1
  RETURN R4 -1
  LOADK R6 K15 ["develop"]
  LOADK R8 K16 ["/v1/universes/"]
  MOVE R9 R1
  LOADK R10 K4 ["/developerproducts"]
  CONCAT R7 R8 R10
  DUPTABLE R8 K7 [{"Params", "Body"}]
  DUPTABLE R9 K11 [{"name", "description", "priceInRobux"}]
  GETTABLEKS R10 R2 K8 ["name"]
  SETTABLEKS R10 R9 K8 ["name"]
  LOADK R10 K12 [" "]
  SETTABLEKS R10 R9 K9 ["description"]
  GETTABLEKS R10 R2 K13 ["price"]
  SETTABLEKS R10 R9 K10 ["priceInRobux"]
  SETTABLEKS R9 R8 K5 ["Params"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K6 ["Body"]
  NAMECALL R4 R3 K14 ["post"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_7:
  GETTABLEKS R3 R0 K0 ["__networking"]
  MODK R4 R1 K1 [100]
  GETUPVAL R5 0
  JUMPIFNOTLT R4 R5 [+25]
  LOADK R6 K2 ["apis"]
  LOADK R8 K3 ["/developer-products/v1/universes/"]
  MOVE R9 R1
  LOADK R10 K4 ["/developerproducts/"]
  GETTABLEKS R11 R2 K5 ["id"]
  LOADK R12 K6 ["/update"]
  CONCAT R7 R8 R12
  DUPTABLE R8 K8 [{"Body"}]
  DUPTABLE R9 K11 [{"name", "priceInRobux"}]
  GETTABLEKS R10 R2 K9 ["name"]
  SETTABLEKS R10 R9 K9 ["name"]
  GETTABLEKS R10 R2 K12 ["price"]
  SETTABLEKS R10 R9 K10 ["priceInRobux"]
  SETTABLEKS R9 R8 K7 ["Body"]
  NAMECALL R4 R3 K13 ["post"]
  CALL R4 4 -1
  RETURN R4 -1
  LOADK R6 K14 ["develop"]
  LOADK R8 K15 ["/v1/universes/"]
  MOVE R9 R1
  LOADK R10 K4 ["/developerproducts/"]
  GETTABLEKS R11 R2 K5 ["id"]
  LOADK R12 K6 ["/update"]
  CONCAT R7 R8 R12
  DUPTABLE R8 K8 [{"Body"}]
  DUPTABLE R9 K11 [{"name", "priceInRobux"}]
  GETTABLEKS R10 R2 K9 ["name"]
  SETTABLEKS R10 R9 K9 ["name"]
  GETTABLEKS R10 R2 K12 ["price"]
  SETTABLEKS R10 R9 K10 ["priceInRobux"]
  SETTABLEKS R9 R8 K7 ["Body"]
  NAMECALL R4 R3 K13 ["post"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_8:
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

PROTO_9:
  NAMECALL R1 R0 K0 ["economyV1GET"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K2 ["responseBody"]
  GETTABLEKS R2 R3 K3 ["taxRate"]
  RETURN R2 1

PROTO_10:
  NAMECALL R1 R0 K0 ["economyV1GET"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["await"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K2 ["responseBody"]
  GETTABLEKS R2 R3 K3 ["minimumFee"]
  RETURN R2 1

PROTO_11:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["configurationV2GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["isForSale"]
  RETURN R3 1

PROTO_12:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"isForSale"}]
  SETTABLEKS R2 R6 K0 ["isForSale"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 0
  RETURN R0 0

PROTO_13:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["configurationV2GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["price"]
  RETURN R3 1

PROTO_14:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"price"}]
  SETTABLEKS R2 R6 K0 ["price"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 0
  RETURN R0 0

PROTO_15:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["vipServersV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["isEnabled"]
  RETURN R3 1

PROTO_16:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"allowPrivateServers"}]
  SETTABLEKS R2 R6 K0 ["allowPrivateServers"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 0
  RETURN R0 0

PROTO_17:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["vipServersV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["price"]
  RETURN R3 1

PROTO_18:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"privateServerPrice"}]
  SETTABLEKS R2 R6 K0 ["privateServerPrice"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 0
  RETURN R0 0

PROTO_19:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["vipServersV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["activeServersCount"]
  RETURN R3 1

PROTO_20:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["vipServersV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["activeSubscriptionsCount"]
  RETURN R3 1

PROTO_21:
  JUMPIFNOT R2 [+6]
  GETTABLEKS R4 R2 K0 ["page"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R2 K0 ["page"]
  JUMPIF R3 [+1]
  LOADN R3 1
  MOVE R6 R1
  MOVE R7 R3
  NAMECALL R4 R0 K1 ["developerProductsV1GET"]
  CALL R4 3 1
  NAMECALL R4 R4 K2 ["await"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K3 ["responseBody"]
  GETTABLEKS R5 R6 K4 ["FinalPage"]
  JUMPIFNOT R5 [+4]
  GETUPVAL R6 0
  GETTABLEKS R2 R6 K5 ["None"]
  JUMP [+5]
  DUPTABLE R6 K6 [{"page"}]
  ADDK R7 R3 K7 [1]
  SETTABLEKS R7 R6 K0 ["page"]
  MOVE R2 R6
  GETTABLEKS R7 R4 K3 ["responseBody"]
  GETTABLEKS R6 R7 K8 ["DeveloperProducts"]
  NEWTABLE R7 0 0
  GETIMPORT R8 K10 [ipairs]
  MOVE R9 R6
  CALL R8 1 3
  FORGPREP_INEXT R8
  GETTABLEKS R13 R12 K11 ["ProductId"]
  DUPTABLE R14 K15 [{"id", "name", "price"}]
  GETTABLEKS R15 R12 K11 ["ProductId"]
  SETTABLEKS R15 R14 K12 ["id"]
  GETTABLEKS R15 R12 K16 ["Name"]
  SETTABLEKS R15 R14 K13 ["name"]
  GETTABLEKS R15 R12 K17 ["PriceInRobux"]
  SETTABLEKS R15 R14 K14 ["price"]
  SETTABLE R14 R7 R13
  FORGLOOP R8 2 [inext] [-17]
  MOVE R8 R7
  MOVE R9 R2
  RETURN R8 2

PROTO_22:
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["developerProductsCreateV1POST"]
  CALL R3 3 1
  NAMECALL R3 R3 K1 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_23:
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["developerProductsUpdateV1POST"]
  CALL R3 3 1
  NAMECALL R3 R3 K1 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_24:
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
  GETIMPORT R3 K8 [game]
  LOADK R5 K9 ["ListDevProductsUniverseRollout"]
  LOADN R6 0
  NAMECALL R3 R3 K10 ["DefineFastInt"]
  CALL R3 3 1
  GETIMPORT R4 K8 [game]
  LOADK R6 K11 ["CreateUpdateDevProductRollout"]
  LOADN R7 0
  NAMECALL R4 R4 K10 ["DefineFastInt"]
  CALL R4 3 1
  SETTABLEKS R0 R0 K12 ["__index"]
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R5 R0 K14 ["new"]
  DUPCLOSURE R5 K15 [PROTO_1]
  SETTABLEKS R5 R0 K16 ["economyV1GET"]
  DUPCLOSURE R5 K17 [PROTO_2]
  SETTABLEKS R5 R0 K18 ["configurationV2GET"]
  DUPCLOSURE R5 K19 [PROTO_3]
  SETTABLEKS R5 R0 K20 ["configurationV2PATCH"]
  DUPCLOSURE R5 K21 [PROTO_4]
  SETTABLEKS R5 R0 K22 ["vipServersV1GET"]
  DUPCLOSURE R5 K23 [PROTO_5]
  CAPTURE VAL R3
  SETTABLEKS R5 R0 K24 ["developerProductsV1GET"]
  DUPCLOSURE R5 K25 [PROTO_6]
  CAPTURE VAL R4
  SETTABLEKS R5 R0 K26 ["developerProductsCreateV1POST"]
  DUPCLOSURE R5 K27 [PROTO_7]
  CAPTURE VAL R4
  SETTABLEKS R5 R0 K28 ["developerProductsUpdateV1POST"]
  DUPCLOSURE R5 K29 [PROTO_8]
  SETTABLEKS R5 R0 K30 ["badgesV1GET"]
  DUPCLOSURE R5 K31 [PROTO_9]
  SETTABLEKS R5 R0 K32 ["getTaxRate"]
  DUPCLOSURE R5 K33 [PROTO_10]
  SETTABLEKS R5 R0 K34 ["getMinimumFee"]
  DUPCLOSURE R5 K35 [PROTO_11]
  SETTABLEKS R5 R0 K36 ["getPaidAccessEnabled"]
  DUPCLOSURE R5 K37 [PROTO_12]
  SETTABLEKS R5 R0 K38 ["setPaidAccessEnabled"]
  DUPCLOSURE R5 K39 [PROTO_13]
  SETTABLEKS R5 R0 K40 ["getPaidAccessPrice"]
  DUPCLOSURE R5 K41 [PROTO_14]
  SETTABLEKS R5 R0 K42 ["setPaidAccessPrice"]
  DUPCLOSURE R5 K43 [PROTO_15]
  SETTABLEKS R5 R0 K44 ["getVIPServersEnabled"]
  DUPCLOSURE R5 K45 [PROTO_16]
  SETTABLEKS R5 R0 K46 ["setVIPServersEnabled"]
  DUPCLOSURE R5 K47 [PROTO_17]
  SETTABLEKS R5 R0 K48 ["getVIPServersPrice"]
  DUPCLOSURE R5 K49 [PROTO_18]
  SETTABLEKS R5 R0 K50 ["setVIPServersPrice"]
  DUPCLOSURE R5 K51 [PROTO_19]
  SETTABLEKS R5 R0 K52 ["getVIPServersActiveServersCount"]
  DUPCLOSURE R5 K53 [PROTO_20]
  SETTABLEKS R5 R0 K54 ["getVIPServersActiveSubscriptionsCount"]
  DUPCLOSURE R5 K55 [PROTO_21]
  CAPTURE VAL R2
  SETTABLEKS R5 R0 K56 ["getDeveloperProducts"]
  DUPCLOSURE R5 K57 [PROTO_22]
  SETTABLEKS R5 R0 K58 ["createDevProduct"]
  DUPCLOSURE R5 K59 [PROTO_23]
  SETTABLEKS R5 R0 K60 ["updateDevProduct"]
  DUPCLOSURE R5 K61 [PROTO_24]
  SETTABLEKS R5 R0 K62 ["getBadges"]
  RETURN R0 1
