MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["types"]
  GETTABLEKS R1 R2 K5 ["common"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["hooks"]
  GETTABLEKS R2 R3 K7 ["useSprings"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K8 ["Controller"]
  CALL R2 1 1
  DUPTABLE R3 K13 [{"useSpring", "useSprings", "useTrail", "Controller", "config", "easings"}]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K6 ["hooks"]
  GETTABLEKS R5 R6 K9 ["useSpring"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["useSpring"]
  SETTABLEKS R1 R3 K7 ["useSprings"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K6 ["hooks"]
  GETTABLEKS R5 R6 K10 ["useTrail"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K10 ["useTrail"]
  SETTABLEKS R2 R3 K8 ["Controller"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K14 ["constants"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K11 ["config"]
  SETTABLEKS R4 R3 K11 ["config"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K14 ["constants"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K12 ["easings"]
  SETTABLEKS R4 R3 K12 ["easings"]
  RETURN R3 1
