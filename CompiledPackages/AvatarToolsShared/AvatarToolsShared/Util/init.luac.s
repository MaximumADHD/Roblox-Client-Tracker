MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K5 [{"AccessoryAndBodyToolShared", "getDescendants", "isProductionEnvironment", "runAvatarToolsSharedTests", "TestRunner"}]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K0 ["AccessoryAndBodyToolShared"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["AccessoryAndBodyToolShared"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K1 ["getDescendants"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["getDescendants"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K2 ["isProductionEnvironment"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["isProductionEnvironment"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K3 ["runAvatarToolsSharedTests"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["runAvatarToolsSharedTests"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K4 ["TestRunner"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["TestRunner"]
  RETURN R0 1
