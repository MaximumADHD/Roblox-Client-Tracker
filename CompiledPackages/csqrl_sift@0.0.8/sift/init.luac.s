MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Types"]
  CALL R0 1 1
  DUPTABLE R1 K11 [{"Array", "Dictionary", "Set", "None", "Types", "equalObjects", "isEmpty"}]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K5 ["Array"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["Array"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["Dictionary"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["Dictionary"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K7 ["Set"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["Set"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K8 ["None"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["None"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Types"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K4 ["Types"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K12 ["Util"]
  GETTABLEKS R3 R4 K9 ["equalObjects"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K9 ["equalObjects"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K12 ["Util"]
  GETTABLEKS R3 R4 K10 ["isEmpty"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K10 ["isEmpty"]
  GETTABLEKS R2 R1 K5 ["Array"]
  SETTABLEKS R2 R1 K13 ["List"]
  RETURN R1 1
