PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getDataModelType"]
  CALL R2 0 1
  JUMPIFEQKS R2 K1 ["Client"] [+5]
  GETIMPORT R2 K3 [error]
  LOADK R3 K4 ["This tool is only available in play mode with client datamodel focused."]
  CALL R2 1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["characterNavigation"]
  MOVE R3 R1
  CALL R2 1 0
  LOADK R2 K6 ["Success"]
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["stopCharacterNavigation"]
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  LOADB R0 0
  SETUPVAL R0 0
  LOADK R0 K0 ["User stopped the game"]
  SETUPVAL R0 1
  GETUPVAL R0 2
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADNIL R1
  GETUPVAL R2 1
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  GETIMPORT R0 K1 [pcall]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R0 1 2
  SETUPVAL R0 0
  SETUPVAL R1 1
  GETUPVAL R0 4
  NAMECALL R0 R0 K2 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  JUMPIFNOT R2 [+17]
  GETTABLEKS R3 R2 K0 ["signal"]
  JUMPIFNOT R3 [+14]
  GETTABLEKS R4 R2 K0 ["signal"]
  GETTABLEKS R3 R4 K1 ["abortSignal"]
  JUMPIFNOT R3 [+9]
  GETTABLEKS R4 R2 K0 ["signal"]
  GETTABLEKS R3 R4 K1 ["abortSignal"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  NAMECALL R3 R3 K2 ["Once"]
  CALL R3 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["new"]
  CALL R3 0 1
  LOADNIL R4
  LOADNIL R5
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["subscribeGameStopped"]
  GETUPVAL R7 3
  NEWCLOSURE R8 P1
  CAPTURE REF R4
  CAPTURE REF R5
  CAPTURE VAL R3
  CALL R6 2 1
  GETIMPORT R7 K7 [task.spawn]
  NEWCLOSURE R8 P2
  CAPTURE REF R4
  CAPTURE REF R5
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE VAL R3
  CALL R7 1 0
  JUMPIFNOTEQKNIL R4 [+4]
  NAMECALL R7 R3 K8 ["Wait"]
  CALL R7 1 0
  MOVE R7 R6
  CALL R7 0 0
  JUMPIF R4 [+4]
  GETIMPORT R7 K10 [error]
  MOVE R8 R5
  CALL R7 1 0
  GETUPVAL R7 5
  CALL R7 0 1
  MOVE R9 R5
  NAMECALL R7 R7 K11 ["addText"]
  CALL R7 2 1
  NAMECALL R7 R7 K12 ["build"]
  CALL R7 1 1
  CLOSEUPVALS R4
  RETURN R7 1

PROTO_7:
  DUPTABLE R0 K1 [{"shouldConfirm"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["shouldConfirm"]
  RETURN R0 1

PROTO_8:
  GETUPVAL R0 0
  LOADK R2 K0 ["Tools"]
  LOADK R3 K1 ["CharacterNavigation"]
  NAMECALL R0 R0 K2 ["getText"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["networking"]
  GETTABLEKS R2 R0 K1 ["environment"]
  LOADK R5 K2 ["CharacterNavigationTool_NavigateCharacter"]
  DUPCLOSURE R6 K3 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  NAMECALL R3 R1 K4 ["OnHostInvokeAsync"]
  CALL R3 3 1
  LOADK R6 K5 ["CharacterNavigationTool_StopCharacterNavigation"]
  DUPCLOSURE R7 K6 [PROTO_1]
  CAPTURE UPVAL U1
  NAMECALL R4 R1 K4 ["OnHostInvokeAsync"]
  CALL R4 3 1
  NEWCLOSURE R5 P2
  CAPTURE VAL R4
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K7 ["define"]
  CALL R6 0 1
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K8 ["CharacterNavigation"]
  NAMECALL R6 R6 K9 ["setName"]
  CALL R6 2 1
  LOADK R8 K10 ["Navigate the character to the given position, or instance."]
  NAMECALL R6 R6 K11 ["setDescription"]
  CALL R6 2 1
  LOADK R8 K12 ["x"]
  DUPTABLE R9 K15 [{"type", "description"}]
  LOADK R10 K16 ["number"]
  SETTABLEKS R10 R9 K13 ["type"]
  LOADK R10 K17 ["The x coordinate to move the character to. Required if instance_path is not provided."]
  SETTABLEKS R10 R9 K14 ["description"]
  NAMECALL R6 R6 K18 ["addOptionalArgument"]
  CALL R6 3 1
  LOADK R8 K19 ["y"]
  DUPTABLE R9 K15 [{"type", "description"}]
  LOADK R10 K16 ["number"]
  SETTABLEKS R10 R9 K13 ["type"]
  LOADK R10 K20 ["The y coordinate to move the character to. Required if instance_path is not provided."]
  SETTABLEKS R10 R9 K14 ["description"]
  NAMECALL R6 R6 K18 ["addOptionalArgument"]
  CALL R6 3 1
  LOADK R8 K21 ["z"]
  DUPTABLE R9 K15 [{"type", "description"}]
  LOADK R10 K16 ["number"]
  SETTABLEKS R10 R9 K13 ["type"]
  LOADK R10 K22 ["The z coordinate to move the character to. Required if instance_path is not provided."]
  SETTABLEKS R10 R9 K14 ["description"]
  NAMECALL R6 R6 K18 ["addOptionalArgument"]
  CALL R6 3 1
  LOADK R8 K23 ["instance_path"]
  DUPTABLE R9 K15 [{"type", "description"}]
  LOADK R10 K24 ["string"]
  SETTABLEKS R10 R9 K13 ["type"]
  LOADK R10 K25 ["The instance path that the character should be moved to. for example: \"game.Workspace.Part\",\"game.Workspace.Model\". The path should start with game, LocalPlayer, or Workspace."]
  SETTABLEKS R10 R9 K14 ["description"]
  NAMECALL R6 R6 K18 ["addOptionalArgument"]
  CALL R6 3 1
  LOADK R8 K26 ["speed_multiplier"]
  DUPTABLE R9 K15 [{"type", "description"}]
  LOADK R10 K16 ["number"]
  SETTABLEKS R10 R9 K13 ["type"]
  LOADK R10 K27 ["speed multiplier, default is 1.0, 0.5 is half speed, 2.0 is double speed. minimum is 0.1, maximum is 10.0."]
  SETTABLEKS R10 R9 K14 ["description"]
  NAMECALL R6 R6 K18 ["addOptionalArgument"]
  CALL R6 3 1
  MOVE R8 R5
  NAMECALL R6 R6 K28 ["setHandler"]
  CALL R6 2 1
  NAMECALL R6 R6 K29 ["build"]
  CALL R6 1 1
  DUPTABLE R7 K34 [{"toolCallOptions", "definition", "getPreExecuteWarning", "displayNameFunction"}]
  DUPTABLE R8 K36 [{"timeout"}]
  LOADK R9 K37 [200000000]
  SETTABLEKS R9 R8 K35 ["timeout"]
  SETTABLEKS R8 R7 K30 ["toolCallOptions"]
  SETTABLEKS R6 R7 K31 ["definition"]
  DUPCLOSURE R8 K38 [PROTO_7]
  SETTABLEKS R8 R7 K32 ["getPreExecuteWarning"]
  DUPCLOSURE R8 K39 [PROTO_8]
  CAPTURE UPVAL U6
  SETTABLEKS R8 R7 K33 ["displayNameFunction"]
  RETURN R7 1

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
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Signal"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Tools"]
  GETTABLEKS R4 R5 K10 ["ToolTypes"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Resources"]
  GETTABLEKS R6 R7 K12 ["Localization"]
  GETTABLEKS R5 R6 K13 ["Translator"]
  CALL R4 1 1
  GETTABLEKS R6 R1 K14 ["Util"]
  GETTABLEKS R5 R6 K15 ["ToolBuilder"]
  GETTABLEKS R7 R1 K14 ["Util"]
  GETTABLEKS R6 R7 K16 ["ToolResult"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K14 ["Util"]
  GETTABLEKS R8 R9 K17 ["DataModelType"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K14 ["Util"]
  GETTABLEKS R9 R10 K18 ["TestAutomationUtils"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K19 ["ToolNames"]
  DUPCLOSURE R10 K20 [PROTO_9]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R4
  RETURN R10 1
