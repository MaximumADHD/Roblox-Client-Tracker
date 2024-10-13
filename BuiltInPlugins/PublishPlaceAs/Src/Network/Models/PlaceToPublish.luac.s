PROTO_0:
  DUPTABLE R0 K4 [{"placeId", "universeId", "name", "description"}]
  LOADK R1 K5 [3262491642]
  SETTABLEKS R1 R0 K0 ["placeId"]
  LOADK R1 K6 [1177385430]
  SETTABLEKS R1 R0 K1 ["universeId"]
  LOADK R1 K7 ["test place to publish"]
  SETTABLEKS R1 R0 K2 ["name"]
  LOADK R1 K8 ["MOCK_DESCRIPTION"]
  SETTABLEKS R1 R0 K3 ["description"]
  RETURN R0 1

PROTO_1:
  JUMPIF R0 [+3]
  LOADB R1 0
  LOADK R2 K0 ["Invalid data to PlaceToPublish"]
  RETURN R1 2
  GETTABLEKS R2 R0 K1 ["id"]
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K3 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K4 ["number"] [+4]
  LOADB R1 0
  LOADK R2 K5 ["Place.fromJsonData expects id to be a number"]
  RETURN R1 2
  GETTABLEKS R2 R0 K6 ["universeId"]
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K3 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K4 ["number"] [+4]
  LOADB R1 0
  LOADK R2 K7 ["Place.fromJsonData expects universeId to be a number"]
  RETURN R1 2
  GETTABLEKS R2 R0 K8 ["name"]
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K3 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+4]
  LOADB R1 0
  LOADK R2 K10 ["Place.fromJsonData expects name to be a string"]
  RETURN R1 2
  GETTABLEKS R2 R0 K11 ["description"]
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K3 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K9 ["string"] [+4]
  LOADB R1 0
  LOADK R2 K12 ["Place.fromJsonData expects description to be a string"]
  RETURN R1 2
  LOADB R1 1
  DUPTABLE R2 K14 [{"name", "placeId", "universeId", "description"}]
  GETTABLEKS R3 R0 K8 ["name"]
  SETTABLEKS R3 R2 K8 ["name"]
  GETTABLEKS R3 R0 K1 ["id"]
  SETTABLEKS R3 R2 K13 ["placeId"]
  GETTABLEKS R3 R0 K6 ["universeId"]
  SETTABLEKS R3 R2 K6 ["universeId"]
  GETTABLEKS R3 R0 K11 ["description"]
  SETTABLEKS R3 R2 K11 ["description"]
  RETURN R1 2

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["mock"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["fromJsonData"]
  RETURN R0 1
