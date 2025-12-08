MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K7 [{"CoreGui", "GuiService", "LocalizationService", "Players", "RunService", "TextService", "UserInputService"}]
  GETIMPORT R1 K9 [game]
  LOADK R3 K0 ["CoreGui"]
  NAMECALL R1 R1 K10 ["GetService"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["CoreGui"]
  GETIMPORT R1 K9 [game]
  LOADK R3 K1 ["GuiService"]
  NAMECALL R1 R1 K10 ["GetService"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K1 ["GuiService"]
  GETIMPORT R1 K9 [game]
  LOADK R3 K2 ["LocalizationService"]
  NAMECALL R1 R1 K10 ["GetService"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K2 ["LocalizationService"]
  GETIMPORT R1 K9 [game]
  LOADK R3 K3 ["Players"]
  NAMECALL R1 R1 K10 ["GetService"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K3 ["Players"]
  GETIMPORT R1 K9 [game]
  LOADK R3 K4 ["RunService"]
  NAMECALL R1 R1 K10 ["GetService"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["RunService"]
  GETIMPORT R1 K9 [game]
  LOADK R3 K5 ["TextService"]
  NAMECALL R1 R1 K10 ["GetService"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K5 ["TextService"]
  GETIMPORT R1 K9 [game]
  LOADK R3 K6 ["UserInputService"]
  NAMECALL R1 R1 K10 ["GetService"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K6 ["UserInputService"]
  RETURN R0 1
