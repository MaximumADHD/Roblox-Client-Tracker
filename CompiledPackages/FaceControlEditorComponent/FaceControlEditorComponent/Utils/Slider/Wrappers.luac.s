PROTO_0:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["Connect"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  NAMECALL R1 R0 K0 ["Disconnect"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_2:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["GetPropertyChangedSignal"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"Connect"}]
  DUPCLOSURE R1 K2 [PROTO_0]
  SETTABLEKS R1 R0 K0 ["Connect"]
  DUPTABLE R1 K4 [{"Disconnect"}]
  DUPCLOSURE R2 K5 [PROTO_1]
  SETTABLEKS R2 R1 K3 ["Disconnect"]
  DUPTABLE R2 K7 [{"GetPropertyChangedSignal"}]
  DUPCLOSURE R3 K8 [PROTO_2]
  SETTABLEKS R3 R2 K6 ["GetPropertyChangedSignal"]
  DUPTABLE R3 K16 [{"CoreGui", "GuiService", "LocalizationService", "Players", "RunService", "TextService", "UserInputService"}]
  GETIMPORT R4 K18 [game]
  LOADK R6 K9 ["CoreGui"]
  NAMECALL R4 R4 K19 ["GetService"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["CoreGui"]
  GETIMPORT R4 K18 [game]
  LOADK R6 K10 ["GuiService"]
  NAMECALL R4 R4 K19 ["GetService"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K10 ["GuiService"]
  GETIMPORT R4 K18 [game]
  LOADK R6 K11 ["LocalizationService"]
  NAMECALL R4 R4 K19 ["GetService"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K11 ["LocalizationService"]
  GETIMPORT R4 K18 [game]
  LOADK R6 K12 ["Players"]
  NAMECALL R4 R4 K19 ["GetService"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K12 ["Players"]
  GETIMPORT R4 K18 [game]
  LOADK R6 K13 ["RunService"]
  NAMECALL R4 R4 K19 ["GetService"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K13 ["RunService"]
  GETIMPORT R4 K18 [game]
  LOADK R6 K14 ["TextService"]
  NAMECALL R4 R4 K19 ["GetService"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K14 ["TextService"]
  GETIMPORT R4 K18 [game]
  LOADK R6 K15 ["UserInputService"]
  NAMECALL R4 R4 K19 ["GetService"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K15 ["UserInputService"]
  DUPTABLE R4 K24 [{"Signal", "Connection", "Instance", "Services"}]
  SETTABLEKS R0 R4 K20 ["Signal"]
  SETTABLEKS R1 R4 K21 ["Connection"]
  SETTABLEKS R2 R4 K22 ["Instance"]
  SETTABLEKS R3 R4 K23 ["Services"]
  RETURN R4 1
