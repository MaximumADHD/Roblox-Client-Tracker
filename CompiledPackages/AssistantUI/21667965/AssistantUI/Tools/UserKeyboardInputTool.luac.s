PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["keyboardInput"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 LOADK                            R1 K1 ["Success"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["keyboardInput"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 0
        5 LOADK                            R2 K1 ["Success"]
        6 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["keyboardInput"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 0
        5 LOADK                            R2 K1 ["Success"]
        6 RETURN                           R2 1

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["targetDataModel"]
        3 JUMPIF                           R3 ; [+1]
        4 LOADNIL                          R3
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["FFlagAssistantUseNewDMNetworking"]
        8 JUMPIFNOT                        R5 ; [+6]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["forTarget"]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K1 ["FFlagAssistantUseNewDMNetworking"]
       20 JUMPIFNOT                        R6 ; [+8]
       21 GETUPVAL                         R6 2
       22 MOVE                             R8 R4
       23 MOVE                             R9 R0
       24 NAMECALL                         R6 R6 K3 ["InvokeAsync"]
       26 CALL                             R6 3 1
       27 MOVE                             R5 R6
       28 JUMP                             ; [+5]
       29 GETUPVAL                         R6 3
       30 MOVE                             R7 R3
       31 MOVE                             R8 R0
       32 CALL                             R6 2 1
       33 MOVE                             R5 R6
       34 GETUPVAL                         R6 4
       35 CALL                             R6 0 1
       36 MOVE                             R8 R5
       37 NAMECALL                         R6 R6 K4 ["addText"]
       39 CALL                             R6 2 1
       40 NAMECALL                         R6 R6 K5 ["build"]
       42 CALL                             R6 1 1
       43 RETURN                           R6 1

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableUserInputConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantUseNewDMNetworking"]
        9 JUMPIFNOT                        R5 ; [+35]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["invoke"]
       13 MOVE                             R6 R1
       14 LOADK                            R7 K4 ["UserKeyboardInputTool.SendUserKeyboardInput"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K5 ["new"]
       20 CALL                             R5 0 1
       21 NAMECALL                         R6 R1 K6 ["GetIdentity"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K7 ["Identity"]
       27 GETTABLEKS                       R7 R7 K8 ["Standalone"]
       29 JUMPIFEQ                         R6 R7 ; [+9]
       31 DUPCLOSURE                       R10 K9 [PROTO_1]
       32 CAPTURE                          UPVAL U4
       33 NAMECALL                         R8 R4 K10 ["Connect"]
       35 CALL                             R8 2 -1
       36 NAMECALL                         R6 R5 K11 ["Add"]
       38 CALL                             R6 -1 0
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R5
       41 NAMECALL                         R6 R2 K12 ["Once"]
       43 CALL                             R6 2 0
       44 JUMP                             ; [+9]
       45 GETTABLEKS                       R5 R0 K13 ["networkingOLD"]
       47 LOADK                            R8 K14 ["UserKeyboardInputTool_SendUserKeyboardInput"]
       48 DUPCLOSURE                       R9 K15 [PROTO_3]
       49 CAPTURE                          UPVAL U4
       50 NAMECALL                         R6 R5 K16 ["OnHostInvokeAsync"]
       52 CALL                             R6 3 1
       53 MOVE                             R3 R6
       54 NEWCLOSURE                       R5 P3
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          REF R4
       58 CAPTURE                          REF R3
       59 CAPTURE                          UPVAL U6
       60 GETUPVAL                         R6 7
       61 GETTABLEKS                       R6 R6 K17 ["define"]
       63 CALL                             R6 0 1
       64 GETUPVAL                         R8 8
       65 GETTABLEKS                       R8 R8 K18 ["UserKeyboardInput"]
       67 NAMECALL                         R6 R6 K19 ["setName"]
       69 CALL                             R6 2 1
       70 LOADK                            R8 K20 ["Send one or more keyboard inputs to the game in order. Each step is keyDown, keyUp, keyPress (keyDown then keyUp), textInput, or wait."]
       71 NAMECALL                         R6 R6 K21 ["setDescription"]
       73 CALL                             R6 2 1
       74 LOADK                            R8 K22 ["actions"]
       75 DUPTABLE                         R9 K28 [{["type"] = "array", ["description"] = "Ordered list of keyboard actions to perform.", ["items"]}]
       76 DUPTABLE                         R10 K32 [{["type"] = "object", ["properties"], ["required"]}]
       77 DUPTABLE                         R11 K38 [{"action", "key_code", "text_inputs", "wait_time_ms", "instance_path"}]
       78 DUPTABLE                         R12 K42 [{["type"] = "string", ["enum"], ["description"] = "The keyboard action for this step."}]
       79 NEWTABLE                         R13 0 5
       81 LOADK                            R14 K43 ["keyDown"]
       82 LOADK                            R15 K44 ["keyUp"]
       83 LOADK                            R16 K45 ["keyPress"]
       84 LOADK                            R17 K46 ["textInput"]
       85 LOADK                            R18 K47 ["wait"]
       86 SETLIST                          R13 R14 5 [1]
       88 SETTABLEKS                       R13 R12 K40 ["enum"]
       90 SETTABLEKS                       R12 R11 K33 ["action"]
       92 DUPTABLE                         R12 K49 [{["enum"], ["type"] = "string", ["description"] = "The key code to send to the game. Required when action is keyDown, keyUp, or keyPress."}]
       93 GETUPVAL                         R13 9
       94 GETTABLEKS                       R13 R13 K50 ["useEnum"]
       96 GETIMPORT                        R14 K53 [Enum.KeyCode]
       98 CALL                             R13 1 1
       99 SETTABLEKS                       R13 R12 K40 ["enum"]
      101 SETTABLEKS                       R12 R11 K34 ["key_code"]
      103 DUPTABLE                         R12 K55 [{["type"] = "string", ["description"] = "The text to send to the game. Required when action is textInput."}]
      104 SETTABLEKS                       R12 R11 K35 ["text_inputs"]
      106 DUPTABLE                         R12 K58 [{["type"] = "number", ["description"] = "The time to wait in milliseconds before the next action, required for wait action, range from 0 to 10000."}]
      107 SETTABLEKS                       R12 R11 K36 ["wait_time_ms"]
      109 DUPTABLE                         R12 K60 [{["type"] = "string", ["description"] = "The instance path that the keyboard input should be sent to. for example: \"LocalPlayer.PlayerGui.Frame\", \"game.Workspace.Folder.Frame\". The path should start with game, LocalPlayer, or Workspace."}]
      110 SETTABLEKS                       R12 R11 K37 ["instance_path"]
      112 SETTABLEKS                       R11 R10 K30 ["properties"]
      114 NEWTABLE                         R11 0 1
      116 LOADK                            R12 K33 ["action"]
      117 SETLIST                          R11 R12 1 [1]
      119 SETTABLEKS                       R11 R10 K31 ["required"]
      121 SETTABLEKS                       R10 R9 K27 ["items"]
      123 NAMECALL                         R6 R6 K61 ["addArgument"]
      125 CALL                             R6 3 1
      126 DUPTABLE                         R8 K69 [{["title"] = "User Keyboard Input", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      127 NAMECALL                         R6 R6 K70 ["setAnnotations"]
      129 CALL                             R6 2 1
      130 MOVE                             R8 R5
      131 NAMECALL                         R6 R6 K71 ["setHandler"]
      133 CALL                             R6 2 1
      134 NAMECALL                         R6 R6 K72 ["build"]
      136 CALL                             R6 1 1
      137 DUPTABLE                         R7 K76 [{"availableDataModelTypes", "definition", "getPreExecuteWarning"}]
      138 NEWTABLE                         R8 0 1
      140 GETUPVAL                         R9 10
      141 GETTABLEKS                       R9 R9 K77 ["Types"]
      143 GETTABLEKS                       R9 R9 K78 ["Client"]
      145 SETLIST                          R8 R9 1 [1]
      147 SETTABLEKS                       R8 R7 K73 ["availableDataModelTypes"]
      149 SETTABLEKS                       R6 R7 K74 ["definition"]
      151 DUPCLOSURE                       R8 K79 [PROTO_5]
      152 CAPTURE                          UPVAL U0
      153 SETTABLEKS                       R8 R7 K75 ["getPreExecuteWarning"]
      155 CLOSEUPVALS                      R3
      156 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Bin"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["DataModelType"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Flags"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K8 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ModelContextProtocol"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Util"]
       44 GETTABLEKS                       R7 R7 K13 ["NetworkingIdentity"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Util"]
       51 GETTABLEKS                       R8 R8 K14 ["TestAutomationUtils"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K15 ["Tools"]
       58 GETTABLEKS                       R9 R9 K16 ["ToolTypes"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Util"]
       65 GETTABLEKS                       R10 R10 K17 ["ToolUtils"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R2 K18 ["Remote"]
       70 GETTABLEKS                       R11 R5 K6 ["Util"]
       72 GETTABLEKS                       R11 R11 K19 ["ToolBuilder"]
       74 GETTABLEKS                       R12 R5 K6 ["Util"]
       76 GETTABLEKS                       R12 R12 K20 ["ToolResult"]
       78 GETTABLEKS                       R13 R8 K21 ["ToolNames"]
       80 DUPCLOSURE                       R14 K22 [PROTO_0]
       81 CAPTURE                          VAL R7
       82 DUPCLOSURE                       R15 K23 [PROTO_6]
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R3
       94 RETURN                           R15 1
