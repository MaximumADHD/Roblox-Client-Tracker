MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  LOADK R3 K2 ["Components"]
  NAMECALL R1 R1 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K6 [require]
  GETTABLEKS R3 R0 K4 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["Symbol"]
  GETTABLEKS R2 R3 K9 ["new"]
  LOADK R3 K10 ["InlineLayoutHardBreak"]
  CALL R2 1 1
  RETURN R2 1
