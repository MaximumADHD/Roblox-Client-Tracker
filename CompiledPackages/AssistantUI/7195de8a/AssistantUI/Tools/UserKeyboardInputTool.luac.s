PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["keyboardInput"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 LOADK                            R2 K1 ["Success"]
        6 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["targetDataModel"]
        3 JUMPIF                           R3 ; [+1]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R3
        7 MOVE                             R6 R0
        8 CALL                             R4 2 1
        9 GETUPVAL                         R5 1
       10 CALL                             R5 0 1
       11 MOVE                             R7 R4
       12 NAMECALL                         R5 R5 K1 ["addText"]
       14 CALL                             R5 2 1
       15 NAMECALL                         R5 R5 K2 ["build"]
       17 CALL                             R5 1 1
       18 RETURN                           R5 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableUserInputConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["UserKeyboardInputTool_SendUserKeyboardInput"]
        3 DUPCLOSURE                       R5 K2 [PROTO_0]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        7 CALL                             R2 3 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["define"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K5 ["UserKeyboardInput"]
       18 NAMECALL                         R4 R4 K6 ["setName"]
       20 CALL                             R4 2 1
       21 LOADK                            R6 K7 ["Send one or more keyboard inputs to the game in order. Each step is keyDown, keyUp, keyPress (keyDown then keyUp), textInput, or wait."]
       22 NAMECALL                         R4 R4 K8 ["setDescription"]
       24 CALL                             R4 2 1
       25 LOADK                            R6 K9 ["actions"]
       26 DUPTABLE                         R7 K15 [{["type"] = "array", ["description"] = "Ordered list of keyboard actions to perform.", ["items"]}]
       27 DUPTABLE                         R8 K19 [{["type"] = "object", ["properties"], ["required"]}]
       28 DUPTABLE                         R9 K25 [{"action", "key_code", "text_inputs", "wait_time_ms", "instance_path"}]
       29 DUPTABLE                         R10 K29 [{["type"] = "string", ["enum"], ["description"] = "The keyboard action for this step."}]
       30 NEWTABLE                         R11 0 5
       32 LOADK                            R12 K30 ["keyDown"]
       33 LOADK                            R13 K31 ["keyUp"]
       34 LOADK                            R14 K32 ["keyPress"]
       35 LOADK                            R15 K33 ["textInput"]
       36 LOADK                            R16 K34 ["wait"]
       37 SETLIST                          R11 R12 5 [1]
       39 SETTABLEKS                       R11 R10 K27 ["enum"]
       41 SETTABLEKS                       R10 R9 K20 ["action"]
       43 DUPTABLE                         R10 K36 [{["enum"], ["type"] = "string", ["description"] = "The key code to send to the game. Required when action is keyDown, keyUp, or keyPress."}]
       44 GETUPVAL                         R11 4
       45 GETTABLEKS                       R11 R11 K37 ["useEnum"]
       47 GETIMPORT                        R12 K40 [Enum.KeyCode]
       49 CALL                             R11 1 1
       50 SETTABLEKS                       R11 R10 K27 ["enum"]
       52 SETTABLEKS                       R10 R9 K21 ["key_code"]
       54 DUPTABLE                         R10 K42 [{["type"] = "string", ["description"] = "The text to send to the game. Required when action is textInput."}]
       55 SETTABLEKS                       R10 R9 K22 ["text_inputs"]
       57 DUPTABLE                         R10 K45 [{["type"] = "number", ["description"] = "The time to wait in milliseconds before the next action, required for wait action, range from 0 to 10000."}]
       58 SETTABLEKS                       R10 R9 K23 ["wait_time_ms"]
       60 DUPTABLE                         R10 K47 [{["type"] = "string", ["description"] = "The instance path that the keyboard input should be sent to. for example: \"LocalPlayer.PlayerGui.Frame\", \"game.Workspace.Folder.Frame\". The path should start with game, LocalPlayer, or Workspace."}]
       61 SETTABLEKS                       R10 R9 K24 ["instance_path"]
       63 SETTABLEKS                       R9 R8 K17 ["properties"]
       65 NEWTABLE                         R9 0 1
       67 LOADK                            R10 K20 ["action"]
       68 SETLIST                          R9 R10 1 [1]
       70 SETTABLEKS                       R9 R8 K18 ["required"]
       72 SETTABLEKS                       R8 R7 K14 ["items"]
       74 NAMECALL                         R4 R4 K48 ["addArgument"]
       76 CALL                             R4 3 1
       77 DUPTABLE                         R6 K56 [{["title"] = "User Keyboard Input", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       78 NAMECALL                         R4 R4 K57 ["setAnnotations"]
       80 CALL                             R4 2 1
       81 MOVE                             R6 R3
       82 NAMECALL                         R4 R4 K58 ["setHandler"]
       84 CALL                             R4 2 1
       85 NAMECALL                         R4 R4 K59 ["build"]
       87 CALL                             R4 1 1
       88 DUPTABLE                         R5 K63 [{"availableDataModelTypes", "definition", "getPreExecuteWarning"}]
       89 NEWTABLE                         R6 0 1
       91 GETUPVAL                         R7 5
       92 GETTABLEKS                       R7 R7 K64 ["Types"]
       94 GETTABLEKS                       R7 R7 K65 ["Client"]
       96 SETLIST                          R6 R7 1 [1]
       98 SETTABLEKS                       R6 R5 K60 ["availableDataModelTypes"]
      100 SETTABLEKS                       R4 R5 K61 ["definition"]
      102 DUPCLOSURE                       R6 K66 [PROTO_2]
      103 CAPTURE                          UPVAL U6
      104 SETTABLEKS                       R6 R5 K62 ["getPreExecuteWarning"]
      106 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["DataModelType"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Util"]
       30 GETTABLEKS                       R5 R5 K11 ["TestAutomationUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Tools"]
       37 GETTABLEKS                       R6 R6 K13 ["ToolTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Util"]
       44 GETTABLEKS                       R7 R7 K14 ["ToolUtils"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R3 K6 ["Util"]
       49 GETTABLEKS                       R7 R7 K15 ["ToolBuilder"]
       51 GETTABLEKS                       R8 R3 K6 ["Util"]
       53 GETTABLEKS                       R8 R8 K16 ["ToolResult"]
       55 GETTABLEKS                       R9 R5 K17 ["ToolNames"]
       57 DUPCLOSURE                       R10 K18 [PROTO_3]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 RETURN                           R10 1
