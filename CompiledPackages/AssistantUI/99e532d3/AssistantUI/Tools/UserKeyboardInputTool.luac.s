PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getDataModelType"]
        3 CALL                             R2 0 1
        4 JUMPIFEQKS                       R2 K1 ["Client"] ; [+5]
        6 GETIMPORT                        R2 K3 [error]
        8 LOADK                            R3 K4 ["This tool is only available in play mode with client datamodel focused."]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K5 ["keyboardInput"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 LOADK                            R2 K6 ["Success"]
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K0 ["addText"]
        9 CALL                             R2 2 1
       10 NAMECALL                         R2 R2 K1 ["build"]
       12 CALL                             R2 1 1
       13 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 NOT                              R1 R2
        4 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        6 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["UserKeyboardInput"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["UserKeyboardInputTool_SendUserKeyboardInput"]
        3 DUPCLOSURE                       R5 K2 [PROTO_0]
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        8 CALL                             R2 3 1
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U2
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K4 ["define"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R7 4
       17 GETTABLEKS                       R6 R7 K5 ["UserKeyboardInput"]
       19 NAMECALL                         R4 R4 K6 ["setName"]
       21 CALL                             R4 2 1
       22 LOADK                            R6 K7 ["Send a keyboard input to the game, either keyDown, keyUp, keyPress(keyDown followed by keyUp), textInput."]
       23 NAMECALL                         R4 R4 K8 ["setDescription"]
       25 CALL                             R4 2 1
       26 LOADK                            R6 K9 ["action"]
       27 DUPTABLE                         R7 K13 [{"type", "enum", "description"}]
       28 LOADK                            R8 K14 ["string"]
       29 SETTABLEKS                       R8 R7 K10 ["type"]
       31 NEWTABLE                         R8 0 4
       33 LOADK                            R9 K15 ["keyDown"]
       34 LOADK                            R10 K16 ["keyUp"]
       35 LOADK                            R11 K17 ["keyPress"]
       36 LOADK                            R12 K18 ["textInput"]
       37 SETLIST                          R8 R9 4 [1]
       39 SETTABLEKS                       R8 R7 K11 ["enum"]
       41 LOADK                            R8 K19 ["The keyboard action to send to the game."]
       42 SETTABLEKS                       R8 R7 K12 ["description"]
       44 NAMECALL                         R4 R4 K20 ["addArgument"]
       46 CALL                             R4 3 1
       47 LOADK                            R6 K21 ["key_code"]
       48 DUPTABLE                         R7 K22 [{"enum", "description"}]
       49 GETUPVAL                         R9 5
       50 GETTABLEKS                       R8 R9 K23 ["useEnum"]
       52 GETIMPORT                        R9 K26 [Enum.KeyCode]
       54 CALL                             R8 1 1
       55 SETTABLEKS                       R8 R7 K11 ["enum"]
       57 LOADK                            R8 K27 ["The key code to send to the game. Required if action is keyDown, keyUp, or keyPress."]
       58 SETTABLEKS                       R8 R7 K12 ["description"]
       60 NAMECALL                         R4 R4 K28 ["addOptionalArgument"]
       62 CALL                             R4 3 1
       63 LOADK                            R6 K29 ["text_inputs"]
       64 DUPTABLE                         R7 K30 [{"type", "description"}]
       65 LOADK                            R8 K14 ["string"]
       66 SETTABLEKS                       R8 R7 K10 ["type"]
       68 LOADK                            R8 K31 ["The text to send to the game. Required if action is textInput."]
       69 SETTABLEKS                       R8 R7 K12 ["description"]
       71 NAMECALL                         R4 R4 K28 ["addOptionalArgument"]
       73 CALL                             R4 3 1
       74 LOADK                            R6 K32 ["instance_path"]
       75 DUPTABLE                         R7 K30 [{"type", "description"}]
       76 LOADK                            R8 K14 ["string"]
       77 SETTABLEKS                       R8 R7 K10 ["type"]
       79 LOADK                            R8 K33 ["The instance path that the keyboard input should be sent to. for example: \"LocalPlayer.PlayerGui.Frame\", \"game.Workspace.Folder.Frame\". The path should start with game, LocalPlayer, or Workspace."]
       80 SETTABLEKS                       R8 R7 K12 ["description"]
       82 NAMECALL                         R4 R4 K28 ["addOptionalArgument"]
       84 CALL                             R4 3 1
       85 MOVE                             R6 R3
       86 NAMECALL                         R4 R4 K34 ["setHandler"]
       88 CALL                             R4 2 1
       89 NAMECALL                         R4 R4 K35 ["build"]
       91 CALL                             R4 1 1
       92 DUPTABLE                         R5 K39 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
       93 SETTABLEKS                       R4 R5 K36 ["definition"]
       95 DUPCLOSURE                       R6 K40 [PROTO_2]
       96 CAPTURE                          UPVAL U6
       97 SETTABLEKS                       R6 R5 K37 ["getPreExecuteWarning"]
       99 DUPCLOSURE                       R6 K41 [PROTO_3]
      100 CAPTURE                          UPVAL U7
      101 SETTABLEKS                       R6 R5 K38 ["displayNameFunction"]
      103 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Tools"]
       18 GETTABLEKS                       R3 R4 K9 ["ToolTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Resources"]
       25 GETTABLEKS                       R5 R6 K11 ["Localization"]
       27 GETTABLEKS                       R4 R5 K12 ["Translator"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R1 K13 ["Util"]
       32 GETTABLEKS                       R4 R5 K14 ["ToolBuilder"]
       34 GETTABLEKS                       R6 R1 K13 ["Util"]
       36 GETTABLEKS                       R5 R6 K15 ["ToolResult"]
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Util"]
       42 GETTABLEKS                       R7 R8 K16 ["DataModelType"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R9 R0 K13 ["Util"]
       49 GETTABLEKS                       R8 R9 K17 ["TestAutomationUtils"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R10 R0 K13 ["Util"]
       56 GETTABLEKS                       R9 R10 K18 ["ToolUtils"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R11 R0 K19 ["Flags"]
       63 GETTABLEKS                       R10 R11 K20 ["FFlagDisableUserInputConfirmation"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R10 R2 K21 ["ToolNames"]
       68 DUPCLOSURE                       R11 K22 [PROTO_4]
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R3
       77 RETURN                           R11 1
