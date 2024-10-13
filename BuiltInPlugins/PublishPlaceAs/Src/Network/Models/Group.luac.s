PROTO_0:
  DUPTABLE R0 K2 [{"groupId", "name"}]
  LOADK R1 K3 [12341234]
  SETTABLEKS R1 R0 K0 ["groupId"]
  LOADK R1 K4 ["yeet"]
  SETTABLEKS R1 R0 K1 ["name"]
  RETURN R0 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["id"]
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K2 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K3 ["number"] [+4]
  LOADB R1 0
  LOADK R2 K4 ["Group.fromJsonData expects id to be a number"]
  RETURN R1 2
  GETTABLEKS R2 R0 K5 ["name"]
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K2 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+4]
  LOADB R1 0
  LOADK R2 K7 ["Group.fromJsonData expects name to be a string"]
  RETURN R1 2
  LOADB R1 1
  DUPTABLE R2 K9 [{"name", "groupId"}]
  GETTABLEKS R3 R0 K5 ["name"]
  SETTABLEKS R3 R2 K5 ["name"]
  GETTABLEKS R3 R0 K0 ["id"]
  SETTABLEKS R3 R2 K8 ["groupId"]
  RETURN R1 2

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["mock"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["fromJsonData"]
  RETURN R0 1
