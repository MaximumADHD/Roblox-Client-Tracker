PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getDataModelType"]
  CALL R2 0 1
  JUMPIFEQKS R2 K1 ["Client"] [+5]
  GETIMPORT R2 K3 [error]
  LOADK R3 K4 ["This tool is only available in play mode with client datamodel focused."]
  CALL R2 1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["keyboardInput"]
  MOVE R3 R1
  CALL R2 1 0
  LOADK R2 K6 ["Success"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R1 0
  LOADNIL R2
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 1
  CALL R2 0 1
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["addText"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["build"]
  CALL R2 1 1
  RETURN R2 1

PROTO_2:
  DUPTABLE R0 K1 [{"shouldConfirm"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["shouldConfirm"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["Tools"]
  LOADK R3 K1 ["UserKeyboardInput"]
  NAMECALL R0 R0 K2 ["getText"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["networking"]
  LOADK R4 K1 ["UserKeyboardInputTool_SendUserKeyboardInput"]
  DUPCLOSURE R5 K2 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NAMECALL R2 R1 K3 ["OnHostInvokeAsync"]
  CALL R2 3 1
  NEWCLOSURE R3 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["define"]
  CALL R4 0 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K5 ["UserKeyboardInput"]
  NAMECALL R4 R4 K6 ["setName"]
  CALL R4 2 1
  LOADK R6 K7 ["Send a keyboard input to the game, either keyDown, keyUp, keyPress(keyDown followed by keyUp), textInput."]
  NAMECALL R4 R4 K8 ["setDescription"]
  CALL R4 2 1
  LOADK R6 K9 ["action"]
  DUPTABLE R7 K13 [{"type", "enum", "description"}]
  LOADK R8 K14 ["string"]
  SETTABLEKS R8 R7 K10 ["type"]
  NEWTABLE R8 0 4
  LOADK R9 K15 ["keyDown"]
  LOADK R10 K16 ["keyUp"]
  LOADK R11 K17 ["keyPress"]
  LOADK R12 K18 ["textInput"]
  SETLIST R8 R9 4 [1]
  SETTABLEKS R8 R7 K11 ["enum"]
  LOADK R8 K19 ["The keyboard action to send to the game."]
  SETTABLEKS R8 R7 K12 ["description"]
  NAMECALL R4 R4 K20 ["addArgument"]
  CALL R4 3 1
  LOADK R6 K21 ["key_code"]
  DUPTABLE R7 K22 [{"enum", "description"}]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K23 ["useEnum"]
  GETIMPORT R9 K26 [Enum.KeyCode]
  CALL R8 1 1
  SETTABLEKS R8 R7 K11 ["enum"]
  LOADK R8 K27 ["The key code to send to the game. Required if action is keyDown, keyUp, or keyPress."]
  SETTABLEKS R8 R7 K12 ["description"]
  NAMECALL R4 R4 K28 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K29 ["text_inputs"]
  DUPTABLE R7 K30 [{"type", "description"}]
  LOADK R8 K14 ["string"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K31 ["The text to send to the game. Required if action is textInput."]
  SETTABLEKS R8 R7 K12 ["description"]
  NAMECALL R4 R4 K28 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K32 ["instance_path"]
  DUPTABLE R7 K30 [{"type", "description"}]
  LOADK R8 K14 ["string"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K33 ["The instance path that the keyboard input should be sent to. for example: \"LocalPlayer.PlayerGui.Frame\", \"game.Workspace.Folder.Frame\". The path should start with game, LocalPlayer, or Workspace."]
  SETTABLEKS R8 R7 K12 ["description"]
  NAMECALL R4 R4 K28 ["addOptionalArgument"]
  CALL R4 3 1
  MOVE R6 R3
  NAMECALL R4 R4 K34 ["setHandler"]
  CALL R4 2 1
  NAMECALL R4 R4 K35 ["build"]
  CALL R4 1 1
  DUPTABLE R5 K39 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
  SETTABLEKS R4 R5 K36 ["definition"]
  DUPCLOSURE R6 K40 [PROTO_2]
  SETTABLEKS R6 R5 K37 ["getPreExecuteWarning"]
  DUPCLOSURE R6 K41 [PROTO_3]
  CAPTURE UPVAL U6
  SETTABLEKS R6 R5 K38 ["displayNameFunction"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["ModelContextProtocol"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Tools"]
  GETTABLEKS R3 R4 K9 ["ToolTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Resources"]
  GETTABLEKS R5 R6 K11 ["Localization"]
  GETTABLEKS R4 R5 K12 ["Translator"]
  CALL R3 1 1
  GETTABLEKS R5 R1 K13 ["Util"]
  GETTABLEKS R4 R5 K14 ["ToolBuilder"]
  GETTABLEKS R6 R1 K13 ["Util"]
  GETTABLEKS R5 R6 K15 ["ToolResult"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K13 ["Util"]
  GETTABLEKS R7 R8 K16 ["DataModelType"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K13 ["Util"]
  GETTABLEKS R8 R9 K17 ["TestAutomationUtils"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K13 ["Util"]
  GETTABLEKS R9 R10 K18 ["ToolUtils"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K19 ["ToolNames"]
  DUPCLOSURE R10 K20 [PROTO_4]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R3
  RETURN R10 1
