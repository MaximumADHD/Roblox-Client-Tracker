MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"GetFFlagAFTSelectHandleOnly", "GetFFlagUseModelCageForAccessoryFittingTool"}]
  GETIMPORT R1 K4 [require]
  GETIMPORT R3 K6 [script]
  GETTABLEKS R2 R3 K0 ["GetFFlagAFTSelectHandleOnly"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["GetFFlagAFTSelectHandleOnly"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R3 K6 [script]
  GETTABLEKS R2 R3 K1 ["GetFFlagUseModelCageForAccessoryFittingTool"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["GetFFlagUseModelCageForAccessoryFittingTool"]
  RETURN R0 1
