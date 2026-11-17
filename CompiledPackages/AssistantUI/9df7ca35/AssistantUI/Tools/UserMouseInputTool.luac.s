PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mouseInput"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 LOADK                            R1 K1 ["Success"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantListPluginGuisTool"]
        3 JUMPIFNOT                        R2 ; [+10]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantUserInputPluginGuiTarget"]
        7 JUMPIFNOT                        R2 ; [+6]
        8 LOADK                            R1 K2 ["%* coordinate in the game viewport, or in the plugin window when plugin_gui_id is set."]
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K3 ["format"]
       12 CALL                             R1 2 1
       13 JUMP                             ; [+5]
       14 LOADK                            R1 K4 ["Screen %* coordinate."]
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K3 ["format"]
       18 CALL                             R1 2 1
       19 LOADK                            R2 K5 ["%* Omit if instance_path is set or a prior step already established position (reused for scroll, mouse button actions, etc.)."]
       20 MOVE                             R4 R1
       21 NAMECALL                         R2 R2 K3 ["format"]
       23 CALL                             R2 2 1
       24 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["mouseInput"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 0
        5 LOADK                            R2 K1 ["Success"]
        6 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["pluginGuiMouseInput"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 LOADK                            R2 K1 ["Success"]
        7 RETURN                           R2 1

PROTO_5:
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

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableUserInputConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_7:
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
       15 LOADK                            R6 K5 ["UserMouseInputTool.SendUserInput"]
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
       31 DUPCLOSURE                       R10 K10 [PROTO_2]
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
       49 LOADK                            R8 K15 ["UserMouseInputTool"]
       50 DUPCLOSURE                       R9 K16 [PROTO_4]
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
       66 GETTABLEKS                       R10 R10 K18 ["UserMouseInput"]
       68 NAMECALL                         R8 R8 K19 ["setName"]
       70 CALL                             R8 2 1
       71 LOADK                            R11 K20 ["Send one or more mouse actions in order: moveTo, mouseButtonDown, mouseButtonUp, mouseButtonClick, scrollUp, scrollDown, or wait."]
       72 LOADK                            R12 K21 [" For mouseButtonDown, mouseButtonUp, and mouseButtonClick, set mouse_button to \"left\" or \"right\"."]
       73 LOADK                            R13 K22 [" After the first step that sets position (x/y or instance_path), later steps may omit coordinates and reuse that position."]
       74 JUMPIFNOT                        R1 ; [+6]
       75 GETUPVAL                         R14 9
       76 GETTABLEKS                       R14 R14 K23 ["replaceTokens"]
       78 LOADK                            R15 K24 [" To click a control in a plugin window (e.g. Explorer or a plugin's widget), set plugin_gui_id and get the control's position from the DataModel: with {ToolNames.ExecuteLuau} in the DataModel that owns the window, find the window by its Title under PluginGuiService (plugins) or RobloxPluginGuiService (built-in Studio windows; it may be nil, meaning they can't be read) and click the control's AbsolutePosition + AbsoluteSize / 2. If the window can't be read, tell the user its controls can't be located; do not guess positions."]
       79 CALL                             R14 1 1
       80 JUMP                             ; [+1]
       81 LOADK                            R14 K25 [""]
       82 CONCAT                           R10 R11 R14
       83 NAMECALL                         R8 R8 K26 ["setDescription"]
       85 CALL                             R8 2 1
       86 LOADK                            R10 K27 ["actions"]
       87 DUPTABLE                         R11 K33 [{["type"] = "array", ["description"] = "Ordered list of mouse actions to perform.", ["items"]}]
       88 DUPTABLE                         R12 K37 [{["type"] = "object", ["properties"], ["required"]}]
       89 DUPTABLE                         R13 K44 [{"action", "x", "y", "mouse_button", "instance_path", "wait_time_ms"}]
       90 DUPTABLE                         R14 K48 [{["type"] = "string", ["enum"], ["description"] = "The mouse action for this step."}]
       91 NEWTABLE                         R15 0 7
       93 LOADK                            R16 K49 ["moveTo"]
       94 LOADK                            R17 K50 ["mouseButtonDown"]
       95 LOADK                            R18 K51 ["mouseButtonUp"]
       96 LOADK                            R19 K52 ["mouseButtonClick"]
       97 LOADK                            R20 K53 ["scrollUp"]
       98 LOADK                            R21 K54 ["scrollDown"]
       99 LOADK                            R22 K55 ["wait"]
      100 SETLIST                          R15 R16 7 [1]
      102 SETTABLEKS                       R15 R14 K46 ["enum"]
      104 SETTABLEKS                       R14 R13 K38 ["action"]
      106 DUPTABLE                         R14 K57 [{["type"] = "number", ["description"]}]
      107 GETUPVAL                         R17 0
      108 GETTABLEKS                       R17 R17 K0 ["FFlagAssistantListPluginGuisTool"]
      110 JUMPIFNOT                        R17 ; [+6]
      111 GETUPVAL                         R17 0
      112 GETTABLEKS                       R17 R17 K1 ["FFlagAssistantUserInputPluginGuiTarget"]
      114 JUMPIFNOT                        R17 ; [+2]
      115 LOADK                            R16 K58 ["X coordinate in the game viewport, or in the plugin window when plugin_gui_id is set."]
      116 JUMP                             ; [+1]
      117 LOADK                            R16 K59 ["Screen X coordinate."]
      118 LOADK                            R17 K60 ["%* Omit if instance_path is set or a prior step already established position (reused for scroll, mouse button actions, etc.)."]
      119 MOVE                             R19 R16
      120 NAMECALL                         R17 R17 K61 ["format"]
      122 CALL                             R17 2 1
      123 MOVE                             R15 R17
      124 SETTABLEKS                       R15 R14 K30 ["description"]
      126 SETTABLEKS                       R14 R13 K39 ["x"]
      128 DUPTABLE                         R14 K57 [{["type"] = "number", ["description"]}]
      129 GETUPVAL                         R17 0
      130 GETTABLEKS                       R17 R17 K0 ["FFlagAssistantListPluginGuisTool"]
      132 JUMPIFNOT                        R17 ; [+6]
      133 GETUPVAL                         R17 0
      134 GETTABLEKS                       R17 R17 K1 ["FFlagAssistantUserInputPluginGuiTarget"]
      136 JUMPIFNOT                        R17 ; [+2]
      137 LOADK                            R16 K62 ["Y coordinate in the game viewport, or in the plugin window when plugin_gui_id is set."]
      138 JUMP                             ; [+1]
      139 LOADK                            R16 K63 ["Screen Y coordinate."]
      140 LOADK                            R17 K60 ["%* Omit if instance_path is set or a prior step already established position (reused for scroll, mouse button actions, etc.)."]
      141 MOVE                             R19 R16
      142 NAMECALL                         R17 R17 K61 ["format"]
      144 CALL                             R17 2 1
      145 MOVE                             R15 R17
      146 SETTABLEKS                       R15 R14 K30 ["description"]
      148 SETTABLEKS                       R14 R13 K40 ["y"]
      150 DUPTABLE                         R14 K65 [{["type"] = "string", ["enum"], ["description"] = "Required when action is mouseButtonDown, mouseButtonUp, or mouseButtonClick."}]
      151 NEWTABLE                         R15 0 2
      153 LOADK                            R16 K66 ["left"]
      154 LOADK                            R17 K67 ["right"]
      155 SETLIST                          R15 R16 2 [1]
      157 SETTABLEKS                       R15 R14 K46 ["enum"]
      159 SETTABLEKS                       R14 R13 K41 ["mouse_button"]
      161 DUPTABLE                         R14 K68 [{["type"] = "string", ["description"]}]
      162 LOADK                            R16 K69 ["The instance path that the mouse should be moved to. for example: \"LocalPlayer.PlayerGui.Frame\", \"game.Workspace.Folder.Frame\". The path should start with game, LocalPlayer, or Workspace. If instance_path is provided, x and y will be ignored, vice versa."]
      163 JUMPIFNOT                        R1 ; [+2]
      164 LOADK                            R17 K70 [" Not supported with plugin_gui_id."]
      165 JUMP                             ; [+1]
      166 LOADK                            R17 K25 [""]
      167 CONCAT                           R15 R16 R17
      168 SETTABLEKS                       R15 R14 K30 ["description"]
      170 SETTABLEKS                       R14 R13 K42 ["instance_path"]
      172 DUPTABLE                         R14 K72 [{["type"] = "number", ["description"] = "Delay in milliseconds before the next step. Required for wait; range 0 to 10000."}]
      173 SETTABLEKS                       R14 R13 K43 ["wait_time_ms"]
      175 SETTABLEKS                       R13 R12 K35 ["properties"]
      177 NEWTABLE                         R13 0 1
      179 LOADK                            R14 K38 ["action"]
      180 SETLIST                          R13 R14 1 [1]
      182 SETTABLEKS                       R13 R12 K36 ["required"]
      184 SETTABLEKS                       R12 R11 K32 ["items"]
      186 NAMECALL                         R8 R8 K73 ["addArgument"]
      188 CALL                             R8 3 1
      189 JUMPIFNOT                        R1 ; [+12]
      190 LOADK                            R11 K74 ["plugin_gui_id"]
      191 DUPTABLE                         R12 K68 [{["type"] = "string", ["description"]}]
      192 GETUPVAL                         R13 9
      193 GETTABLEKS                       R13 R13 K23 ["replaceTokens"]
      195 LOADK                            R14 K75 ["Optional. A plugin_gui_id from {ToolNames.ListPluginGuis}. Omit to send input to the game viewport. When set, input goes to that plugin window (e.g. Explorer) in whichever DataModel owns it, and datamodel_type only needs to be one that is available in the current mode. x/y are relative to the window's top-left, in the same space as the AbsolutePosition of the GuiObjects inside it. To click a control, first find it with {ToolNames.ExecuteLuau} in the DataModel that owns the window (the dataModel from {ToolNames.ListPluginGuis}; PlayClient is Client, PlayServer is Server) and click its AbsolutePosition + AbsoluteSize / 2. Third-party plugin windows are under PluginGuiService and built-in Studio windows under RobloxPluginGuiService. During Play, plugin_gui_ids starting with edit_ can't receive input until Play stops. For a local plugin, use its play_ plugin_gui_id instead, which {ToolNames.ListPluginGuis} lists during Play. instance_path is not supported in this mode."]
      196 CALL                             R13 1 1
      197 SETTABLEKS                       R13 R12 K30 ["description"]
      199 NAMECALL                         R9 R8 K76 ["addOptionalArgument"]
      201 CALL                             R9 3 0
      202 LOADK                            R11 K77 ["User Mouse Input"]
      203 NAMECALL                         R9 R8 K78 ["setTitle"]
      205 CALL                             R9 2 1
      206 DUPTABLE                         R11 K85 [{["title"] = "User Mouse Input", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      207 NAMECALL                         R9 R9 K86 ["setAnnotations"]
      209 CALL                             R9 2 1
      210 MOVE                             R11 R7
      211 NAMECALL                         R9 R9 K87 ["setHandler"]
      213 CALL                             R9 2 1
      214 NAMECALL                         R9 R9 K88 ["build"]
      216 CALL                             R9 1 1
      217 DUPTABLE                         R10 K92 [{"availableDataModelTypes", "definition", "getPreExecuteWarning"}]
      218 GETUPVAL                         R11 5
      219 GETTABLEKS                       R11 R11 K93 ["getAvailableDataModelTypes"]
      221 CALL                             R11 0 1
      222 SETTABLEKS                       R11 R10 K89 ["availableDataModelTypes"]
      224 SETTABLEKS                       R9 R10 K90 ["definition"]
      226 DUPCLOSURE                       R11 K94 [PROTO_6]
      227 CAPTURE                          UPVAL U0
      228 SETTABLEKS                       R11 R10 K91 ["getPreExecuteWarning"]
      230 RETURN                           R10 1

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
       57 GETTABLEKS                       R10 R3 K17 ["Remote"]
       59 GETTABLEKS                       R11 R4 K11 ["Util"]
       61 GETTABLEKS                       R11 R11 K18 ["ToolBuilder"]
       63 GETTABLEKS                       R12 R4 K11 ["Util"]
       65 GETTABLEKS                       R12 R12 K19 ["ToolResult"]
       67 GETTABLEKS                       R13 R9 K20 ["ToolNames"]
       69 DUPCLOSURE                       R14 K21 [PROTO_0]
       70 CAPTURE                          VAL R8
       71 DUPCLOSURE                       R15 K22 [PROTO_1]
       72 CAPTURE                          VAL R5
       73 DUPCLOSURE                       R16 K23 [PROTO_7]
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R13
       84 RETURN                           R16 1
