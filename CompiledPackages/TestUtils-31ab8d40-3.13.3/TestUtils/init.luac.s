MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  GETIMPORT R1 K3 [require]
  GETTABLEKS R2 R0 K4 ["alignedAnsiStyleSerializer"]
  CALL R1 1 1
  GETIMPORT R2 K3 [require]
  GETTABLEKS R3 R0 K5 ["config"]
  CALL R2 1 1
  DUPTABLE R3 K8 [{"alignedAnsiStyleSerializer", "makeGlobalConfig", "makeProjectConfig"}]
  SETTABLEKS R1 R3 K4 ["alignedAnsiStyleSerializer"]
  GETTABLEKS R4 R2 K6 ["makeGlobalConfig"]
  SETTABLEKS R4 R3 K6 ["makeGlobalConfig"]
  GETTABLEKS R4 R2 K7 ["makeProjectConfig"]
  SETTABLEKS R4 R3 K7 ["makeProjectConfig"]
  RETURN R3 1
