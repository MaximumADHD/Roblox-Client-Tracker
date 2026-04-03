PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+10]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["getDataModelType"]
        6 CALL                             R2 0 1
        7 JUMPIFEQKS                       R2 K1 ["Client"] ; [+5]
        9 GETIMPORT                        R2 K3 [error]
       11 LOADK                            R3 K4 ["This tool is only available in play mode with client datamodel focused."]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K5 ["keyboardInput"]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 LOADK                            R2 K6 ["Success"]
       19 RETURN                           R2 1

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
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R4 R5 K4 ["define"]
       17 CALL                             R4 0 1
       18 GETUPVAL                         R7 5
       19 GETTABLEKS                       R6 R7 K5 ["UserKeyboardInput"]
       21 NAMECALL                         R4 R4 K6 ["setName"]
       23 CALL                             R4 2 1
       24 LOADK                            R6 K7 ["Send one or more keyboard inputs to the game in order. Each step is keyDown, keyUp, keyPress (keyDown then keyUp), textInput, or wait."]
       25 NAMECALL                         R4 R4 K8 ["setDescription"]
       27 CALL                             R4 2 1
       28 LOADK                            R6 K9 ["actions"]
       29 DUPTABLE                         R7 K13 [{"type", "description", "items"}]
       30 LOADK                            R8 K14 ["array"]
       31 SETTABLEKS                       R8 R7 K10 ["type"]
       33 LOADK                            R8 K15 ["Ordered list of keyboard actions to perform."]
       34 SETTABLEKS                       R8 R7 K11 ["description"]
       36 DUPTABLE                         R8 K18 [{"type", "properties", "required"}]
       37 LOADK                            R9 K19 ["object"]
       38 SETTABLEKS                       R9 R8 K10 ["type"]
       40 DUPTABLE                         R9 K25 [{"action", "key_code", "text_inputs", "wait_time_ms", "instance_path"}]
       41 DUPTABLE                         R10 K27 [{"type", "enum", "description"}]
       42 LOADK                            R11 K28 ["string"]
       43 SETTABLEKS                       R11 R10 K10 ["type"]
       45 NEWTABLE                         R11 0 5
       47 LOADK                            R12 K29 ["keyDown"]
       48 LOADK                            R13 K30 ["keyUp"]
       49 LOADK                            R14 K31 ["keyPress"]
       50 LOADK                            R15 K32 ["textInput"]
       51 LOADK                            R16 K33 ["wait"]
       52 SETLIST                          R11 R12 5 [1]
       54 SETTABLEKS                       R11 R10 K26 ["enum"]
       56 LOADK                            R11 K34 ["The keyboard action for this step."]
       57 SETTABLEKS                       R11 R10 K11 ["description"]
       59 SETTABLEKS                       R10 R9 K20 ["action"]
       61 DUPTABLE                         R10 K35 [{"enum", "type", "description"}]
       62 GETUPVAL                         R12 6
       63 GETTABLEKS                       R11 R12 K36 ["useEnum"]
       65 GETIMPORT                        R12 K39 [Enum.KeyCode]
       67 CALL                             R11 1 1
       68 SETTABLEKS                       R11 R10 K26 ["enum"]
       70 LOADK                            R11 K28 ["string"]
       71 SETTABLEKS                       R11 R10 K10 ["type"]
       73 LOADK                            R11 K40 ["The key code to send to the game. Required when action is keyDown, keyUp, or keyPress."]
       74 SETTABLEKS                       R11 R10 K11 ["description"]
       76 SETTABLEKS                       R10 R9 K21 ["key_code"]
       78 DUPTABLE                         R10 K41 [{"type", "description"}]
       79 LOADK                            R11 K28 ["string"]
       80 SETTABLEKS                       R11 R10 K10 ["type"]
       82 LOADK                            R11 K42 ["The text to send to the game. Required when action is textInput."]
       83 SETTABLEKS                       R11 R10 K11 ["description"]
       85 SETTABLEKS                       R10 R9 K22 ["text_inputs"]
       87 DUPTABLE                         R10 K41 [{"type", "description"}]
       88 LOADK                            R11 K43 ["number"]
       89 SETTABLEKS                       R11 R10 K10 ["type"]
       91 LOADK                            R11 K44 ["The time to wait in milliseconds before the next action, required for wait action, range from 0 to 10000."]
       92 SETTABLEKS                       R11 R10 K11 ["description"]
       94 SETTABLEKS                       R10 R9 K23 ["wait_time_ms"]
       96 DUPTABLE                         R10 K41 [{"type", "description"}]
       97 LOADK                            R11 K28 ["string"]
       98 SETTABLEKS                       R11 R10 K10 ["type"]
      100 LOADK                            R11 K45 ["The instance path that the keyboard input should be sent to. for example: \"LocalPlayer.PlayerGui.Frame\", \"game.Workspace.Folder.Frame\". The path should start with game, LocalPlayer, or Workspace."]
      101 SETTABLEKS                       R11 R10 K11 ["description"]
      103 SETTABLEKS                       R10 R9 K24 ["instance_path"]
      105 SETTABLEKS                       R9 R8 K16 ["properties"]
      107 NEWTABLE                         R9 0 1
      109 LOADK                            R10 K20 ["action"]
      110 SETLIST                          R9 R10 1 [1]
      112 SETTABLEKS                       R9 R8 K17 ["required"]
      114 SETTABLEKS                       R8 R7 K12 ["items"]
      116 NAMECALL                         R4 R4 K46 ["addArgument"]
      118 CALL                             R4 3 1
      119 MOVE                             R6 R3
      120 NAMECALL                         R4 R4 K47 ["setHandler"]
      122 CALL                             R4 2 1
      123 NAMECALL                         R4 R4 K48 ["build"]
      125 CALL                             R4 1 1
      126 DUPTABLE                         R5 K53 [{"availableDataModelTypes", "definition", "getPreExecuteWarning", "displayNameFunction"}]
      127 GETUPVAL                         R7 0
      128 CALL                             R7 0 1
      129 JUMPIFNOT                        R7 ; [+10]
      130 NEWTABLE                         R6 0 1
      132 GETUPVAL                         R9 1
      133 GETTABLEKS                       R8 R9 K54 ["Types"]
      135 GETTABLEKS                       R7 R8 K55 ["Client"]
      137 SETLIST                          R6 R7 1 [1]
      139 JUMPIF                           R6 ; [+1]
      140 LOADNIL                          R6
      141 SETTABLEKS                       R6 R5 K49 ["availableDataModelTypes"]
      143 SETTABLEKS                       R4 R5 K50 ["definition"]
      145 DUPCLOSURE                       R6 K56 [PROTO_2]
      146 CAPTURE                          UPVAL U7
      147 SETTABLEKS                       R6 R5 K51 ["getPreExecuteWarning"]
      149 DUPCLOSURE                       R6 K57 [PROTO_3]
      150 CAPTURE                          UPVAL U8
      151 SETTABLEKS                       R6 R5 K52 ["displayNameFunction"]
      153 RETURN                           R5 1

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
       63 GETTABLEKS                       R10 R11 K20 ["FFlagAssistantTestModeToolArgPatch"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R12 R0 K19 ["Flags"]
       70 GETTABLEKS                       R11 R12 K21 ["FFlagDisableUserInputConfirmation"]
       72 CALL                             R10 1 1
       73 GETTABLEKS                       R11 R2 K22 ["ToolNames"]
       75 DUPCLOSURE                       R12 K23 [PROTO_4]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R3
       85 RETURN                           R12 1
