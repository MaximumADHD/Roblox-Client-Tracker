PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["setState"]
  DUPTABLE R2 K2 [{"expand"}]
  GETTABLEKS R3 R0 K1 ["expand"]
  SETTABLEKS R3 R2 K1 ["expand"]
  CALL R1 1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["extend"]
  DUPTABLE R2 K6 [{"toMatchSnapshot", "toThrowErrorMatchingSnapshot"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K4 ["toMatchSnapshot"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K5 ["toThrowErrorMatchingSnapshot"]
  CALL R1 1 0
  GETUPVAL R1 0
  GETUPVAL R2 3
  SETTABLEKS R2 R1 K7 ["addSnapshotSerializer"]
  GETUPVAL R1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K5 ["jest-types"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K7 ["expect"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K8 ["jest-snapshot"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETTABLEKS R4 R3 K9 ["addSerializer"]
  GETTABLEKS R5 R3 K10 ["toMatchSnapshot"]
  GETTABLEKS R6 R3 K11 ["toThrowErrorMatchingSnapshot"]
  DUPCLOSURE R7 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  SETTABLEKS R7 R0 K13 ["default"]
  RETURN R0 1
