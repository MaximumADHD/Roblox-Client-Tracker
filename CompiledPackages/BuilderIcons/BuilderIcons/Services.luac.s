MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"UserInputService"}]
  GETIMPORT R1 K3 [game]
  LOADK R3 K0 ["UserInputService"]
  NAMECALL R1 R1 K4 ["GetService"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["UserInputService"]
  RETURN R0 1
