MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Types"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["External"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["RobloxExternal"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K7 ["setExternalProvider"]
  MOVE R4 R2
  CALL R3 1 0
  GETIMPORT R2 K10 [table.freeze]
  DUPTABLE R3 K38 [{"version", "Contextual", "Safe", "cleanup", "deriveScope", "doCleanup", "innerScope", "scoped", "Observer", "Computed", "ForKeys", "ForPairs", "ForValues", "peek", "Value", "Attribute", "AttributeChange", "AttributeOut", "Child", "Children", "Hydrate", "New", "OnChange", "OnEvent", "Out", "Tween", "Spring"}]
  DUPTABLE R4 K42 [{"major", "minor", "isRelease"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K39 ["major"]
  LOADN R5 3
  SETTABLEKS R5 R4 K40 ["minor"]
  LOADB R5 1
  SETTABLEKS R5 R4 K41 ["isRelease"]
  SETTABLEKS R4 R3 K11 ["version"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K43 ["Utility"]
  GETTABLEKS R5 R6 K12 ["Contextual"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["Contextual"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K43 ["Utility"]
  GETTABLEKS R5 R6 K13 ["Safe"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["Safe"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K44 ["Memory"]
  GETTABLEKS R5 R6 K45 ["legacyCleanup"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["cleanup"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K44 ["Memory"]
  GETTABLEKS R5 R6 K15 ["deriveScope"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K15 ["deriveScope"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K44 ["Memory"]
  GETTABLEKS R5 R6 K16 ["doCleanup"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["doCleanup"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K44 ["Memory"]
  GETTABLEKS R5 R6 K17 ["innerScope"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K17 ["innerScope"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K44 ["Memory"]
  GETTABLEKS R5 R6 K18 ["scoped"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["scoped"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K46 ["Graph"]
  GETTABLEKS R5 R6 K19 ["Observer"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K19 ["Observer"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K47 ["State"]
  GETTABLEKS R5 R6 K20 ["Computed"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K20 ["Computed"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K47 ["State"]
  GETTABLEKS R5 R6 K21 ["ForKeys"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K21 ["ForKeys"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K47 ["State"]
  GETTABLEKS R5 R6 K22 ["ForPairs"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K22 ["ForPairs"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K47 ["State"]
  GETTABLEKS R5 R6 K23 ["ForValues"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K23 ["ForValues"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K47 ["State"]
  GETTABLEKS R5 R6 K24 ["peek"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K24 ["peek"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K47 ["State"]
  GETTABLEKS R5 R6 K25 ["Value"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K25 ["Value"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K48 ["Instances"]
  GETTABLEKS R5 R6 K26 ["Attribute"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K26 ["Attribute"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K48 ["Instances"]
  GETTABLEKS R5 R6 K27 ["AttributeChange"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K27 ["AttributeChange"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K48 ["Instances"]
  GETTABLEKS R5 R6 K28 ["AttributeOut"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K28 ["AttributeOut"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K48 ["Instances"]
  GETTABLEKS R5 R6 K29 ["Child"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K29 ["Child"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K48 ["Instances"]
  GETTABLEKS R5 R6 K30 ["Children"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K30 ["Children"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K48 ["Instances"]
  GETTABLEKS R5 R6 K31 ["Hydrate"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K31 ["Hydrate"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K48 ["Instances"]
  GETTABLEKS R5 R6 K32 ["New"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K32 ["New"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K48 ["Instances"]
  GETTABLEKS R5 R6 K33 ["OnChange"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K33 ["OnChange"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K48 ["Instances"]
  GETTABLEKS R5 R6 K34 ["OnEvent"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K34 ["OnEvent"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K48 ["Instances"]
  GETTABLEKS R5 R6 K35 ["Out"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K35 ["Out"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K49 ["Animation"]
  GETTABLEKS R5 R6 K36 ["Tween"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K36 ["Tween"]
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K49 ["Animation"]
  GETTABLEKS R5 R6 K37 ["Spring"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K37 ["Spring"]
  CALL R2 1 1
  RETURN R2 1
