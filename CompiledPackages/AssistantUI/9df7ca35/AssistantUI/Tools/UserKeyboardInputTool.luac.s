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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["pluginGuiKeyboardInput"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 LOADK                            R2 K1 ["Success"]
        7 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+16]
        2 GETTABLEKS                       R3 R0 K0 ["plugin_gui_id"]
        4 JUMPIFEQKNIL                     R3 ; [+13]
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 GETUPVAL                         R5 0
        9 MOVE                             R6 R0
       10 CALL                             R5 1 -1
       11 NAMECALL                         R3 R3 K1 ["addText"]
       13 CALL                             R3 -1 1
       14 NAMECALL                         R3 R3 K2 ["build"]
       16 CALL                             R3 1 -1
       17 RETURN                           R3 -1
       18 JUMPIFNOT                        R1 ; [+3]
       19 GETTABLEKS                       R3 R1 K3 ["targetDataModel"]
       21 JUMPIF                           R3 ; [+1]
       22 LOADNIL                          R3
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K4 ["assertViewportDataModel"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 0
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K5 ["forTarget"]
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETUPVAL                         R5 4
       34 MOVE                             R7 R4
       35 MOVE                             R8 R0
       36 NAMECALL                         R5 R5 K6 ["InvokeAsync"]
       38 CALL                             R5 3 1
       39 GETUPVAL                         R6 1
       40 CALL                             R6 0 1
       41 MOVE                             R8 R5
       42 NAMECALL                         R6 R6 K1 ["addText"]
       44 CALL                             R6 2 1
       45 NAMECALL                         R6 R6 K2 ["build"]
       47 CALL                             R6 1 1
       48 RETURN                           R6 1

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableUserInputConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantListPluginGuisTool"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUserInputPluginGuiTarget"]
        7 GETTABLEKS                       R2 R0 K2 ["net"]
        9 GETTABLEKS                       R3 R0 K3 ["destroying"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K4 ["invoke"]
       14 MOVE                             R5 R2
       15 LOADK                            R6 K5 ["UserKeyboardInputTool.SendUserKeyboardInput"]
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K6 ["new"]
       20 CALL                             R5 0 1
       21 NAMECALL                         R6 R2 K7 ["GetIdentity"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K8 ["Identity"]
       27 GETTABLEKS                       R7 R7 K9 ["Standalone"]
       29 JUMPIFEQ                         R6 R7 ; [+9]
       31 DUPCLOSURE                       R10 K10 [PROTO_1]
       32 CAPTURE                          UPVAL U4
       33 NAMECALL                         R8 R4 K11 ["Connect"]
       35 CALL                             R8 2 -1
       36 NAMECALL                         R6 R5 K12 ["Add"]
       38 CALL                             R6 -1 0
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R5
       41 NAMECALL                         R6 R3 K13 ["Once"]
       43 CALL                             R6 2 0
       44 JUMPIFNOT                        R1 ; [+9]
       45 GETUPVAL                         R6 5
       46 GETTABLEKS                       R6 R6 K14 ["createRouter"]
       48 MOVE                             R7 R0
       49 LOADK                            R8 K15 ["UserKeyboardInputTool"]
       50 DUPCLOSURE                       R9 K16 [PROTO_3]
       51 CAPTURE                          UPVAL U4
       52 CALL                             R6 3 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R6
       55 NEWCLOSURE                       R7 P3
       56 CAPTURE                          VAL R6
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          VAL R4
       61 GETUPVAL                         R8 8
       62 GETTABLEKS                       R8 R8 K17 ["define"]
       64 CALL                             R8 0 1
       65 GETUPVAL                         R10 9
       66 GETTABLEKS                       R10 R10 K18 ["UserKeyboardInput"]
       68 NAMECALL                         R8 R8 K19 ["setName"]
       70 CALL                             R8 2 1
       71 LOADK                            R11 K20 ["Send one or more keyboard inputs to the game in order. Each step is keyDown, keyUp, keyPress (keyDown then keyUp), textInput, or wait."]
       72 JUMPIFNOT                        R1 ; [+6]
       73 GETUPVAL                         R12 9
       74 GETTABLEKS                       R12 R12 K21 ["replaceTokens"]
       76 LOADK                            R13 K22 [" To type into a plugin window (e.g. Explorer's search box), set plugin_gui_id and first focus the field by clicking it with {ToolNames.UserMouseInput} and the same plugin_gui_id, locating the field from the DataModel with {ToolNames.ExecuteLuau} as {ToolNames.UserMouseInput} describes."]
       77 CALL                             R12 1 1
       78 JUMP                             ; [+1]
       79 LOADK                            R12 K23 [""]
       80 CONCAT                           R10 R11 R12
       81 NAMECALL                         R8 R8 K24 ["setDescription"]
       83 CALL                             R8 2 1
       84 LOADK                            R10 K25 ["actions"]
       85 DUPTABLE                         R11 K31 [{["type"] = "array", ["description"] = "Ordered list of keyboard actions to perform.", ["items"]}]
       86 DUPTABLE                         R12 K35 [{["type"] = "object", ["properties"], ["required"]}]
       87 DUPTABLE                         R13 K41 [{"action", "key_code", "text_inputs", "wait_time_ms", "instance_path"}]
       88 DUPTABLE                         R14 K45 [{["type"] = "string", ["enum"], ["description"] = "The keyboard action for this step."}]
       89 NEWTABLE                         R15 0 5
       91 LOADK                            R16 K46 ["keyDown"]
       92 LOADK                            R17 K47 ["keyUp"]
       93 LOADK                            R18 K48 ["keyPress"]
       94 LOADK                            R19 K49 ["textInput"]
       95 LOADK                            R20 K50 ["wait"]
       96 SETLIST                          R15 R16 5 [1]
       98 SETTABLEKS                       R15 R14 K43 ["enum"]
      100 SETTABLEKS                       R14 R13 K36 ["action"]
      102 DUPTABLE                         R14 K52 [{["enum"], ["type"] = "string", ["description"] = "The key code to send to the game. Required when action is keyDown, keyUp, or keyPress."}]
      103 GETUPVAL                         R15 10
      104 GETTABLEKS                       R15 R15 K53 ["useEnum"]
      106 GETIMPORT                        R16 K56 [Enum.KeyCode]
      108 CALL                             R15 1 1
      109 SETTABLEKS                       R15 R14 K43 ["enum"]
      111 SETTABLEKS                       R14 R13 K37 ["key_code"]
      113 DUPTABLE                         R14 K58 [{["type"] = "string", ["description"] = "The text to send to the game. Required when action is textInput."}]
      114 SETTABLEKS                       R14 R13 K38 ["text_inputs"]
      116 DUPTABLE                         R14 K61 [{["type"] = "number", ["description"] = "The time to wait in milliseconds before the next action, required for wait action, range from 0 to 10000."}]
      117 SETTABLEKS                       R14 R13 K39 ["wait_time_ms"]
      119 DUPTABLE                         R14 K62 [{["type"] = "string", ["description"]}]
      120 LOADK                            R16 K63 ["The instance path that the keyboard input should be sent to. for example: \"LocalPlayer.PlayerGui.Frame\", \"game.Workspace.Folder.Frame\". The path should start with game, LocalPlayer, or Workspace."]
      121 JUMPIFNOT                        R1 ; [+2]
      122 LOADK                            R17 K64 [" Not supported with plugin_gui_id."]
      123 JUMP                             ; [+1]
      124 LOADK                            R17 K23 [""]
      125 CONCAT                           R15 R16 R17
      126 SETTABLEKS                       R15 R14 K28 ["description"]
      128 SETTABLEKS                       R14 R13 K40 ["instance_path"]
      130 SETTABLEKS                       R13 R12 K33 ["properties"]
      132 NEWTABLE                         R13 0 1
      134 LOADK                            R14 K36 ["action"]
      135 SETLIST                          R13 R14 1 [1]
      137 SETTABLEKS                       R13 R12 K34 ["required"]
      139 SETTABLEKS                       R12 R11 K30 ["items"]
      141 NAMECALL                         R8 R8 K65 ["addArgument"]
      143 CALL                             R8 3 1
      144 JUMPIFNOT                        R1 ; [+12]
      145 LOADK                            R11 K66 ["plugin_gui_id"]
      146 DUPTABLE                         R12 K62 [{["type"] = "string", ["description"]}]
      147 GETUPVAL                         R13 9
      148 GETTABLEKS                       R13 R13 K21 ["replaceTokens"]
      150 LOADK                            R14 K67 ["Optional. A plugin_gui_id from {ToolNames.ListPluginGuis}. Omit to send keys to the game. When set, keyboard input goes to that plugin window (e.g. Explorer) in whichever DataModel owns it, and datamodel_type only needs to be one that is available in the current mode. Focus the target text field first by clicking it with {ToolNames.UserMouseInput} and the same plugin_gui_id. instance_path is not supported in this mode."]
      151 CALL                             R13 1 1
      152 SETTABLEKS                       R13 R12 K28 ["description"]
      154 NAMECALL                         R9 R8 K68 ["addOptionalArgument"]
      156 CALL                             R9 3 0
      157 LOADK                            R11 K69 ["User Keyboard Input"]
      158 NAMECALL                         R9 R8 K70 ["setTitle"]
      160 CALL                             R9 2 1
      161 DUPTABLE                         R11 K77 [{["title"] = "User Keyboard Input", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      162 NAMECALL                         R9 R9 K78 ["setAnnotations"]
      164 CALL                             R9 2 1
      165 MOVE                             R11 R7
      166 NAMECALL                         R9 R9 K79 ["setHandler"]
      168 CALL                             R9 2 1
      169 NAMECALL                         R9 R9 K80 ["build"]
      171 CALL                             R9 1 1
      172 DUPTABLE                         R10 K84 [{"availableDataModelTypes", "definition", "getPreExecuteWarning"}]
      173 GETUPVAL                         R11 5
      174 GETTABLEKS                       R11 R11 K85 ["getAvailableDataModelTypes"]
      176 CALL                             R11 0 1
      177 SETTABLEKS                       R11 R10 K81 ["availableDataModelTypes"]
      179 SETTABLEKS                       R9 R10 K82 ["definition"]
      181 DUPCLOSURE                       R11 K86 [PROTO_5]
      182 CAPTURE                          UPVAL U0
      183 SETTABLEKS                       R11 R10 K83 ["getPreExecuteWarning"]
      185 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ModelContextProtocol"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Flags"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Util"]
       33 GETTABLEKS                       R7 R7 K12 ["NetworkingIdentity"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K11 ["Util"]
       40 GETTABLEKS                       R8 R8 K13 ["PluginGuiInputRouting"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K11 ["Util"]
       47 GETTABLEKS                       R9 R9 K14 ["TestAutomationUtils"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K15 ["Tools"]
       54 GETTABLEKS                       R10 R10 K16 ["ToolTypes"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K11 ["Util"]
       61 GETTABLEKS                       R11 R11 K17 ["ToolUtils"]
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R11 R3 K18 ["Remote"]
       66 GETTABLEKS                       R12 R4 K11 ["Util"]
       68 GETTABLEKS                       R12 R12 K19 ["ToolBuilder"]
       70 GETTABLEKS                       R13 R4 K11 ["Util"]
       72 GETTABLEKS                       R13 R13 K20 ["ToolResult"]
       74 GETTABLEKS                       R14 R9 K21 ["ToolNames"]
       76 DUPCLOSURE                       R15 K22 [PROTO_0]
       77 CAPTURE                          VAL R8
       78 DUPCLOSURE                       R16 K23 [PROTO_6]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R10
       90 RETURN                           R16 1
