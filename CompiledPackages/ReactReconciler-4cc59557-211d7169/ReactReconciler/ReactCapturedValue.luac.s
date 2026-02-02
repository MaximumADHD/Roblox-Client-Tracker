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
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["ReactInternalTypes"]
  CALL R0 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K6 ["ReactFiberComponentStack"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K7 ["getStackByFiberInDevAndProd"]
  NEWTABLE R2 1 0
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K9 ["createCapturedValue"]
  RETURN R2 1
