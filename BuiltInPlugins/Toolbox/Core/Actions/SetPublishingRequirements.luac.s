PROTO_0:
  DUPTABLE R1 K1 [{"publishingRequirements"}]
  SETTABLEKS R0 R1 K0 ["publishingRequirements"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["Util"]
  GETTABLEKS R3 R2 K8 ["Action"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Core"]
  GETTABLEKS R6 R7 K10 ["Types"]
  GETTABLEKS R5 R6 K11 ["PublishingRequirementsType"]
  CALL R4 1 1
  MOVE R5 R3
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K12 ["Name"]
  DUPCLOSURE R7 K13 [PROTO_0]
  CALL R5 2 -1
  RETURN R5 -1
