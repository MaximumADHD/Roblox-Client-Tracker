MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["types"]
  CALL R0 1 1
  DUPTABLE R1 K13 [{"ModuleLoader", "getDebugFlags", "hasInternalPermission", "isCli", "isFTF", "launch", "resetApplicationScope", "waitUntil"}]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K5 ["ModuleLoader"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["ModuleLoader"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["getDebugFlags"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["getDebugFlags"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K7 ["hasInternalPermission"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["hasInternalPermission"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K8 ["isCli"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["isCli"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K9 ["isFTF"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K9 ["isFTF"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K10 ["launch"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K10 ["launch"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K14 ["resetFTFApplicationScope"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K11 ["resetApplicationScope"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K12 ["waitUntil"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K12 ["waitUntil"]
  RETURN R1 1
