PROTO_0:
  DUPTABLE R0 K5 [{"creatorTargetId", "rootPlaceId", "name", "universeId", "privateType"}]
  LOADK R1 K6 [22915773]
  SETTABLEKS R1 R0 K0 ["creatorTargetId"]
  LOADK R1 K7 [10395446]
  SETTABLEKS R1 R0 K1 ["rootPlaceId"]
  LOADK R1 K8 ["yeet game"]
  SETTABLEKS R1 R0 K2 ["name"]
  LOADK R1 K9 [149757]
  SETTABLEKS R1 R0 K3 ["universeId"]
  LOADK R1 K10 ["Public"]
  SETTABLEKS R1 R0 K4 ["privateType"]
  RETURN R0 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["creatorTargetId"]
  NOT R1 R2
  GETTABLEKS R3 R0 K1 ["rootPlaceId"]
  NOT R2 R3
  GETTABLEKS R3 R0 K2 ["id"]
  JUMPIFNOT R3 [+2]
  JUMPIF R1 [+1]
  JUMPIFNOT R2 [+3]
  LOADB R3 0
  LOADK R4 K3 ["Game.fromJsonData received JSON without required fields"]
  RETURN R3 2
  GETTABLEKS R4 R0 K2 ["id"]
  FASTCALL1 TYPE R4 [+2]
  GETIMPORT R3 K5 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K6 ["number"] [+4]
  LOADB R3 0
  LOADK R4 K7 ["Game.fromJsonData expects id to be a number"]
  RETURN R3 2
  GETTABLEKS R4 R0 K0 ["creatorTargetId"]
  FASTCALL1 TYPE R4 [+2]
  GETIMPORT R3 K5 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K6 ["number"] [+4]
  LOADB R3 0
  LOADK R4 K8 ["Game.fromJsonData expects creatorId to be a number"]
  RETURN R3 2
  GETTABLEKS R4 R0 K1 ["rootPlaceId"]
  FASTCALL1 TYPE R4 [+2]
  GETIMPORT R3 K5 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K6 ["number"] [+4]
  LOADB R3 0
  LOADK R4 K9 ["Game.fromJsonData expects rootPlaceId to be a number"]
  RETURN R3 2
  GETTABLEKS R4 R0 K10 ["name"]
  FASTCALL1 TYPE R4 [+2]
  GETIMPORT R3 K5 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K11 ["string"] [+4]
  LOADB R3 0
  LOADK R4 K12 ["Game.fromJsonData expects name to be a string"]
  RETURN R3 2
  GETTABLEKS R4 R0 K13 ["privacyType"]
  FASTCALL1 TYPE R4 [+2]
  GETIMPORT R3 K5 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K11 ["string"] [+4]
  LOADB R3 0
  LOADK R4 K14 ["Game.fromJsonData expects privacyType to be a string"]
  RETURN R3 2
  LOADB R3 1
  DUPTABLE R4 K17 [{"creatorId", "rootPlaceId", "name", "universeId", "privacyType"}]
  GETTABLEKS R5 R0 K0 ["creatorTargetId"]
  SETTABLEKS R5 R4 K15 ["creatorId"]
  GETTABLEKS R5 R0 K1 ["rootPlaceId"]
  SETTABLEKS R5 R4 K1 ["rootPlaceId"]
  GETTABLEKS R5 R0 K10 ["name"]
  SETTABLEKS R5 R4 K10 ["name"]
  GETTABLEKS R5 R0 K2 ["id"]
  SETTABLEKS R5 R4 K16 ["universeId"]
  GETTABLEKS R5 R0 K13 ["privacyType"]
  SETTABLEKS R5 R4 K13 ["privacyType"]
  RETURN R3 2

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["mock"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["fromJsonData"]
  RETURN R0 1
