PROTO_0:
  DUPTABLE R2 K3 [{"value", "source", "stack"}]
  SETTABLEKS R0 R2 K0 ["value"]
  SETTABLEKS R1 R2 K1 ["source"]
  GETUPVAL R3 0
  MOVE R4 R1
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["stack"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["ReactInternalTypes"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K7 ["ReactFiberComponentStack"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R1 R2 K8 ["getStackByFiberInDevAndProd"]
  NEWTABLE R2 1 0
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K10 ["createCapturedValue"]
  RETURN R2 1
