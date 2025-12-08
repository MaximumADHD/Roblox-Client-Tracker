PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K6 [{"parts", "modified", "warningText", "errorText"}]
  SETTABLEKS R1 R4 K2 ["parts"]
  LOADB R5 0
  SETTABLEKS R5 R4 K3 ["modified"]
  LOADNIL R5
  SETTABLEKS R5 R4 K4 ["warningText"]
  LOADNIL R5
  SETTABLEKS R5 R4 K5 ["errorText"]
  CALL R2 2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R0 K8 ["PropertyTypes"]
  CALL R3 1 1
  DUPCLOSURE R4 K9 [PROTO_0]
  CAPTURE VAL R2
  RETURN R4 1
