PROTO_0:
  DUPTABLE R2 K7 [{"id", "Name", "description", "bundleType", "Items", "Creator", "product"}]
  SETTABLEKS R1 R2 K0 ["id"]
  LOADK R3 K8 ["ROBLOX Boy"]
  SETTABLEKS R3 R2 K1 ["Name"]
  LOADK R3 K9 ["A free package awarded to new users on sign up."]
  SETTABLEKS R3 R2 K2 ["description"]
  LOADK R3 K10 ["BodyParts"]
  SETTABLEKS R3 R2 K3 ["bundleType"]
  NEWTABLE R3 0 6
  DUPTABLE R4 K14 [{"owned", "id", "name", "type"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K11 ["owned"]
  LOADK R5 K15 [376530220]
  SETTABLEKS R5 R4 K0 ["id"]
  LOADK R5 K16 ["ROBLOX Boy Left Arm"]
  SETTABLEKS R5 R4 K12 ["name"]
  LOADK R5 K17 ["Asset"]
  SETTABLEKS R5 R4 K13 ["type"]
  DUPTABLE R5 K14 [{"owned", "id", "name", "type"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K11 ["owned"]
  LOADK R6 K18 [376531012]
  SETTABLEKS R6 R5 K0 ["id"]
  LOADK R6 K19 ["ROBLOX Boy Right Arm"]
  SETTABLEKS R6 R5 K12 ["name"]
  LOADK R6 K17 ["Asset"]
  SETTABLEKS R6 R5 K13 ["type"]
  DUPTABLE R6 K14 [{"owned", "id", "name", "type"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K11 ["owned"]
  LOADK R7 K20 [376531300]
  SETTABLEKS R7 R6 K0 ["id"]
  LOADK R7 K21 ["ROBLOX Boy Left Leg"]
  SETTABLEKS R7 R6 K12 ["name"]
  LOADK R7 K17 ["Asset"]
  SETTABLEKS R7 R6 K13 ["type"]
  DUPTABLE R7 K14 [{"owned", "id", "name", "type"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K11 ["owned"]
  LOADK R8 K22 [376531703]
  SETTABLEKS R8 R7 K0 ["id"]
  LOADK R8 K23 ["ROBLOX Boy Right Leg"]
  SETTABLEKS R8 R7 K12 ["name"]
  LOADK R8 K17 ["Asset"]
  SETTABLEKS R8 R7 K13 ["type"]
  DUPTABLE R8 K14 [{"owned", "id", "name", "type"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K11 ["owned"]
  LOADK R9 K24 [376532000]
  SETTABLEKS R9 R8 K0 ["id"]
  LOADK R9 K25 ["ROBLOX Boy Torso"]
  SETTABLEKS R9 R8 K12 ["name"]
  LOADK R9 K17 ["Asset"]
  SETTABLEKS R9 R8 K13 ["type"]
  DUPTABLE R9 K26 [{"id", "name", "type"}]
  LOADK R10 K27 [131830044]
  SETTABLEKS R10 R9 K0 ["id"]
  LOADK R10 K8 ["ROBLOX Boy"]
  SETTABLEKS R10 R9 K12 ["name"]
  LOADK R10 K28 ["UserOutfit"]
  SETTABLEKS R10 R9 K13 ["type"]
  SETLIST R3 R4 6 [1]
  SETTABLEKS R3 R2 K4 ["Items"]
  DUPTABLE R3 K26 [{"id", "name", "type"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K0 ["id"]
  LOADK R4 K29 ["Roblox"]
  SETTABLEKS R4 R3 K12 ["name"]
  LOADK R4 K30 ["User"]
  SETTABLEKS R4 R3 K13 ["type"]
  SETTABLEKS R3 R2 K5 ["Creator"]
  DUPTABLE R3 K36 [{"id", "type", "isPublicDomain", "isForSale", "priceInRobux", "isFree", "noPriceText"}]
  LOADK R4 K37 [369653750]
  SETTABLEKS R4 R3 K0 ["id"]
  LOADK R4 K38 ["productType"]
  SETTABLEKS R4 R3 K13 ["type"]
  LOADB R4 1
  SETTABLEKS R4 R3 K31 ["isPublicDomain"]
  LOADB R4 0
  SETTABLEKS R4 R3 K32 ["isForSale"]
  LOADK R4 K39 ["null"]
  SETTABLEKS R4 R3 K33 ["priceInRobux"]
  LOADB R4 1
  SETTABLEKS R4 R3 K34 ["isFree"]
  LOADK R4 K40 ["Free"]
  SETTABLEKS R4 R3 K35 ["noPriceText"]
  SETTABLEKS R3 R2 K6 ["product"]
  RETURN R2 1

PROTO_1:
  NEWTABLE R1 1 0
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K1 [setmetatable]
  CALL R2 2 0
  SETTABLEKS R0 R1 K2 ["_service"]
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  NEWTABLE R2 1 0
  GETUPVAL R5 1
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K1 [setmetatable]
  CALL R3 2 0
  SETTABLEKS R1 R2 K2 ["_service"]
  MOVE R0 R2
  RETURN R0 1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_service"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R2 0
  NEWTABLE R3 1 0
  GETUPVAL R6 1
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K1 [setmetatable]
  CALL R4 2 0
  SETTABLEKS R2 R3 K2 ["_service"]
  MOVE R1 R3
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AssetService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R2 R1 K6 ["Parent"]
  GETIMPORT R3 K8 [require]
  GETTABLEKS R4 R2 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["ContextServices"]
  GETTABLEKS R4 R5 K11 ["ContextItem"]
  LOADK R7 K12 ["AssetServiceWrapper"]
  NAMECALL R5 R4 K13 ["extend"]
  CALL R5 2 1
  NEWTABLE R6 1 0
  DUPCLOSURE R7 K14 [PROTO_0]
  SETTABLEKS R7 R6 K15 ["GetBundleDetailsAsync"]
  DUPCLOSURE R7 K16 [PROTO_1]
  CAPTURE VAL R5
  DUPCLOSURE R8 K17 [PROTO_2]
  CAPTURE VAL R0
  CAPTURE VAL R5
  SETTABLEKS R8 R5 K18 ["new"]
  DUPCLOSURE R8 K19 [PROTO_3]
  SETTABLEKS R8 R5 K20 ["get"]
  DUPCLOSURE R8 K21 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R5
  SETTABLEKS R8 R5 K22 ["mock"]
  RETURN R5 1
