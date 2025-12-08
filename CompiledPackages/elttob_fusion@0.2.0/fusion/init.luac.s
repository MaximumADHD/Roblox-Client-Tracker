MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["PubTypes"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K5 ["Utility"]
  GETTABLEKS R2 R3 K6 ["restrictRead"]
  CALL R1 1 1
  MOVE R2 R1
  LOADK R3 K7 ["Fusion"]
  DUPTABLE R4 K27 [{"version", "New", "Hydrate", "Ref", "Out", "Cleanup", "Children", "OnEvent", "OnChange", "Value", "Computed", "ForPairs", "ForKeys", "ForValues", "Observer", "Tween", "Spring", "cleanup", "doNothing"}]
  DUPTABLE R5 K31 [{"major", "minor", "isRelease"}]
  LOADN R6 0
  SETTABLEKS R6 R5 K28 ["major"]
  LOADN R6 2
  SETTABLEKS R6 R5 K29 ["minor"]
  LOADB R6 1
  SETTABLEKS R6 R5 K30 ["isRelease"]
  SETTABLEKS R5 R4 K8 ["version"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K32 ["Instances"]
  GETTABLEKS R6 R7 K9 ["New"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K9 ["New"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K32 ["Instances"]
  GETTABLEKS R6 R7 K10 ["Hydrate"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K10 ["Hydrate"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K32 ["Instances"]
  GETTABLEKS R6 R7 K11 ["Ref"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K11 ["Ref"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K32 ["Instances"]
  GETTABLEKS R6 R7 K12 ["Out"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K12 ["Out"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K32 ["Instances"]
  GETTABLEKS R6 R7 K13 ["Cleanup"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K13 ["Cleanup"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K32 ["Instances"]
  GETTABLEKS R6 R7 K14 ["Children"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K14 ["Children"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K32 ["Instances"]
  GETTABLEKS R6 R7 K15 ["OnEvent"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K15 ["OnEvent"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K32 ["Instances"]
  GETTABLEKS R6 R7 K16 ["OnChange"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K16 ["OnChange"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K33 ["State"]
  GETTABLEKS R6 R7 K17 ["Value"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K17 ["Value"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K33 ["State"]
  GETTABLEKS R6 R7 K18 ["Computed"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K18 ["Computed"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K33 ["State"]
  GETTABLEKS R6 R7 K19 ["ForPairs"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K19 ["ForPairs"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K33 ["State"]
  GETTABLEKS R6 R7 K20 ["ForKeys"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K20 ["ForKeys"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K33 ["State"]
  GETTABLEKS R6 R7 K21 ["ForValues"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K21 ["ForValues"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K33 ["State"]
  GETTABLEKS R6 R7 K22 ["Observer"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K22 ["Observer"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K34 ["Animation"]
  GETTABLEKS R6 R7 K23 ["Tween"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K23 ["Tween"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K34 ["Animation"]
  GETTABLEKS R6 R7 K24 ["Spring"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K24 ["Spring"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K5 ["Utility"]
  GETTABLEKS R6 R7 K25 ["cleanup"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K25 ["cleanup"]
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K5 ["Utility"]
  GETTABLEKS R6 R7 K26 ["doNothing"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K26 ["doNothing"]
  CALL R2 2 1
  RETURN R2 1
