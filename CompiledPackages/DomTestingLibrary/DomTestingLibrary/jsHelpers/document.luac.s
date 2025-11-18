MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CoreGui"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K6 [Instance.new]
  LOADK R2 K7 ["ScreenGui"]
  CALL R1 1 1
  GETIMPORT R2 K6 [Instance.new]
  LOADK R3 K8 ["Folder"]
  CALL R2 1 1
  LOADK R3 K9 ["Document"]
  SETTABLEKS R3 R2 K10 ["Name"]
  SETTABLEKS R1 R2 K11 ["Parent"]
  SETTABLEKS R0 R1 K11 ["Parent"]
  RETURN R2 1
