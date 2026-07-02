PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+15]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getDataModelType"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["Types"]
       10 GETTABLEKS                       R3 R3 K2 ["Client"]
       12 JUMPIFEQ                         R2 R3 ; [+5]
       14 GETIMPORT                        R2 K4 [error]
       16 LOADK                            R3 K5 ["This tool is only available in play mode with client datamodel focused."]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K6 ["keyboardInput"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 LOADK                            R2 K7 ["Success"]
       24 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+4]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R3 R1 K0 ["targetDataModel"]
        6 JUMPIF                           R3 ; [+1]
        7 LOADNIL                          R3
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R3
       10 MOVE                             R6 R0
       11 CALL                             R4 2 1
       12 GETUPVAL                         R5 2
       13 CALL                             R5 0 1
       14 MOVE                             R7 R4
       15 NAMECALL                         R5 R5 K1 ["addText"]
       17 CALL                             R5 2 1
       18 NAMECALL                         R5 R5 K2 ["build"]
       20 CALL                             R5 1 1
       21 RETURN                           R5 1

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
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        9 CALL                             R2 3 1
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U3
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R4 R4 K4 ["define"]
       17 CALL                             R4 0 1
       18 GETUPVAL                         R6 5
       19 GETTABLEKS                       R6 R6 K5 ["UserKeyboardInput"]
       21 NAMECALL                         R4 R4 K6 ["setName"]
       23 CALL                             R4 2 1
       24 LOADK                            R6 K7 ["Send one or more keyboard inputs to the game in order. Each step is keyDown, keyUp, keyPress (keyDown then keyUp), textInput, or wait."]
       25 NAMECALL                         R4 R4 K8 ["setDescription"]
       27 CALL                             R4 2 1
       28 LOADK                            R6 K9 ["actions"]
       29 DUPTABLE                         R7 K15 [{["type"] = "array", ["description"] = "Ordered list of keyboard actions to perform.", ["items"]}]
       30 DUPTABLE                         R8 K19 [{["type"] = "object", ["properties"], ["required"]}]
       31 DUPTABLE                         R9 K25 [{"action", "key_code", "text_inputs", "wait_time_ms", "instance_path"}]
       32 DUPTABLE                         R10 K29 [{["type"] = "string", ["enum"], ["description"] = "The keyboard action for this step."}]
       33 NEWTABLE                         R11 0 5
       35 LOADK                            R12 K30 ["keyDown"]
       36 LOADK                            R13 K31 ["keyUp"]
       37 LOADK                            R14 K32 ["keyPress"]
       38 LOADK                            R15 K33 ["textInput"]
       39 LOADK                            R16 K34 ["wait"]
       40 SETLIST                          R11 R12 5 [1]
       42 SETTABLEKS                       R11 R10 K27 ["enum"]
       44 SETTABLEKS                       R10 R9 K20 ["action"]
       46 DUPTABLE                         R10 K36 [{["enum"], ["type"] = "string", ["description"] = "The key code to send to the game. Required when action is keyDown, keyUp, or keyPress."}]
       47 GETUPVAL                         R11 6
       48 GETTABLEKS                       R11 R11 K37 ["useEnum"]
       50 GETIMPORT                        R12 K40 [Enum.KeyCode]
       52 CALL                             R11 1 1
       53 SETTABLEKS                       R11 R10 K27 ["enum"]
       55 SETTABLEKS                       R10 R9 K21 ["key_code"]
       57 DUPTABLE                         R10 K42 [{["type"] = "string", ["description"] = "The text to send to the game. Required when action is textInput."}]
       58 SETTABLEKS                       R10 R9 K22 ["text_inputs"]
       60 DUPTABLE                         R10 K45 [{["type"] = "number", ["description"] = "The time to wait in milliseconds before the next action, required for wait action, range from 0 to 10000."}]
       61 SETTABLEKS                       R10 R9 K23 ["wait_time_ms"]
       63 DUPTABLE                         R10 K47 [{["type"] = "string", ["description"] = "The instance path that the keyboard input should be sent to. for example: \"LocalPlayer.PlayerGui.Frame\", \"game.Workspace.Folder.Frame\". The path should start with game, LocalPlayer, or Workspace."}]
       64 SETTABLEKS                       R10 R9 K24 ["instance_path"]
       66 SETTABLEKS                       R9 R8 K17 ["properties"]
       68 NEWTABLE                         R9 0 1
       70 LOADK                            R10 K20 ["action"]
       71 SETLIST                          R9 R10 1 [1]
       73 SETTABLEKS                       R9 R8 K18 ["required"]
       75 SETTABLEKS                       R8 R7 K14 ["items"]
       77 NAMECALL                         R4 R4 K48 ["addArgument"]
       79 CALL                             R4 3 1
       80 DUPTABLE                         R6 K56 [{["title"] = "User Keyboard Input", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       81 NAMECALL                         R4 R4 K57 ["setAnnotations"]
       83 CALL                             R4 2 1
       84 MOVE                             R6 R3
       85 NAMECALL                         R4 R4 K58 ["setHandler"]
       87 CALL                             R4 2 1
       88 NAMECALL                         R4 R4 K59 ["build"]
       90 CALL                             R4 1 1
       91 DUPTABLE                         R5 K64 [{"availableDataModelTypes", "definition", "getPreExecuteWarning", "displayNameFunction"}]
       92 GETUPVAL                         R7 7
       93 CALL                             R7 0 1
       94 JUMPIFNOT                        R7 ; [+10]
       95 NEWTABLE                         R6 0 1
       97 GETUPVAL                         R7 1
       98 GETTABLEKS                       R7 R7 K65 ["Types"]
      100 GETTABLEKS                       R7 R7 K66 ["Client"]
      102 SETLIST                          R6 R7 1 [1]
      104 JUMPIF                           R6 ; [+1]
      105 LOADNIL                          R6
      106 SETTABLEKS                       R6 R5 K60 ["availableDataModelTypes"]
      108 SETTABLEKS                       R4 R5 K61 ["definition"]
      110 DUPCLOSURE                       R6 K67 [PROTO_2]
      111 CAPTURE                          UPVAL U8
      112 SETTABLEKS                       R6 R5 K62 ["getPreExecuteWarning"]
      114 GETUPVAL                         R7 9
      115 CALL                             R7 0 1
      116 JUMPIFNOT                        R7 ; [+2]
      117 LOADNIL                          R6
      118 JUMP                             ; [+2]
      119 DUPCLOSURE                       R6 K68 [PROTO_3]
      120 CAPTURE                          UPVAL U10
      121 SETTABLEKS                       R6 R5 K63 ["displayNameFunction"]
      123 RETURN                           R5 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["TestAutomationUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Tools"]
       32 GETTABLEKS                       R5 R5 K12 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Util"]
       39 GETTABLEKS                       R6 R6 K13 ["ToolUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Resources"]
       46 GETTABLEKS                       R7 R7 K15 ["Localization"]
       48 GETTABLEKS                       R7 R7 K16 ["Translator"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K17 ["Flags"]
       55 GETTABLEKS                       R8 R8 K18 ["FFlagAssistantBackgroundDataModelToolCall"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K17 ["Flags"]
       62 GETTABLEKS                       R9 R9 K19 ["FFlagAssistantSplitToolsAndWidgets"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K17 ["Flags"]
       69 GETTABLEKS                       R10 R10 K20 ["FFlagDisableUserInputConfirmation"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K17 ["Flags"]
       76 GETTABLEKS                       R11 R11 K21 ["getIsAssistantBackgroundDataModelToolCall"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R2 K6 ["Util"]
       81 GETTABLEKS                       R11 R11 K22 ["ToolBuilder"]
       83 GETTABLEKS                       R12 R2 K6 ["Util"]
       85 GETTABLEKS                       R12 R12 K23 ["ToolResult"]
       87 GETTABLEKS                       R13 R4 K24 ["ToolNames"]
       89 DUPCLOSURE                       R14 K25 [PROTO_4]
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R6
      101 RETURN                           R14 1
