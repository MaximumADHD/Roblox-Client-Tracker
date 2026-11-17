PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["pluginCapture"]
        5 GETTABLEKS                       R0 R0 K2 ["capturePluginGuiByIdAsync"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["tools"]
        3 GETTABLEKS                       R1 R1 K1 ["pluginCapture"]
        5 GETTABLEKS                       R2 R1 K2 ["listPluginGuisAsync"]
        7 CALL                             R2 0 3
        8 FORGPREP                         R2
        9 MOVE                             R7 R6
       10 LOADNIL                          R8
       11 LOADNIL                          R9
       12 FORGPREP                         R7
       13 GETTABLEKS                       R12 R11 K3 ["ItemId"]
       15 JUMPIFNOTEQ                      R12 R0 ; [+22]
       17 GETTABLEKS                       R12 R1 K4 ["focusPanelAsync"]
       19 DUPTABLE                         R13 K10 [{["DataModel"], ["PluginType"], ["PluginId"], ["Category"] = "Panels", ["ItemId"]}]
       20 GETTABLEKS                       R14 R11 K5 ["DataModel"]
       22 SETTABLEKS                       R14 R13 K5 ["DataModel"]
       24 GETTABLEKS                       R14 R11 K6 ["PluginType"]
       26 SETTABLEKS                       R14 R13 K6 ["PluginType"]
       28 GETTABLEKS                       R14 R11 K7 ["PluginId"]
       30 SETTABLEKS                       R14 R13 K7 ["PluginId"]
       32 GETTABLEKS                       R14 R11 K3 ["ItemId"]
       34 SETTABLEKS                       R14 R13 K3 ["ItemId"]
       36 CALL                             R12 1 0
       37 RETURN                           R0 0
       38 FORGLOOP                         R7 2 ; [-26]
       40 FORGLOOP                         R2 2 ; [-32]
       42 GETIMPORT                        R2 K12 [error]
       44 LOADK                            R3 K13 ["no plugin GUI is listed with plugin_gui_id %*"]
       45 MOVE                             R5 R0
       46 NAMECALL                         R3 R3 K14 ["format"]
       48 CALL                             R3 2 1
       49 LOADN                            R4 0
       50 CALL                             R2 2 0
       51 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["plugin_gui_id"]
        4 CALL                             R0 1 0
        5 LOADNIL                          R0
        6 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["plugin_gui_id"]
        2 FASTCALL1                        TYPE R2 ; [+2]
        3 GETIMPORT                        R1 K2 [type]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+5]
        8 GETTABLEKS                       R1 R0 K0 ["plugin_gui_id"]
       10 JUMPIFNOTEQKS                    R1 K4 [""] ; [+6]
       12 GETIMPORT                        R1 K6 [error]
       14 LOADK                            R2 K7 ["plugin_gui_id must be a non-empty string"]
       15 LOADN                            R3 0
       16 CALL                             R1 2 0
       17 GETTABLEKS                       R3 R0 K0 ["plugin_gui_id"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R3
       22 FASTPCALL                        pcall 1 ; [+2]
       23 GETIMPORT                        R4 K9 [pcall]
       25 CALL                             R4 1 2
       26 MOVE                             R1 R4
       27 MOVE                             R2 R5
       28 JUMPIF                           R1 ; [+55]
       29 GETUPVAL                         R3 1
       30 JUMPIFNOT                        R3 ; [+53]
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R0
       34 FASTPCALL                        pcall 1 ; [+2]
       35 GETIMPORT                        R3 K9 [pcall]
       37 CALL                             R3 1 2
       38 JUMPIFNOT                        R3 ; [+27]
       39 LOADN                            R7 1
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R5 R5 K10 ["FIntAssistantCapturePluginGuiDelayFrames"]
       43 LOADN                            R6 1
       44 FORNPREP                         R5
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R8 R8 K11 ["Heartbeat"]
       48 NAMECALL                         R8 R8 K12 ["Wait"]
       50 CALL                             R8 1 0
       51 FORNLOOP                         R5
       52 GETTABLEKS                       R7 R0 K0 ["plugin_gui_id"]
       54 NEWCLOSURE                       R9 P0
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R7
       57 FASTPCALL                        pcall 1 ; [+2]
       58 GETIMPORT                        R8 K9 [pcall]
       60 CALL                             R8 1 2
       61 MOVE                             R5 R8
       62 MOVE                             R6 R9
       63 MOVE                             R1 R5
       64 MOVE                             R2 R6
       65 JUMP                             ; [+18]
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R5 R5 K13 ["FFlagDebugLogAssistantUI"]
       69 JUMPIFNOT                        R5 ; [+14]
       70 GETIMPORT                        R5 K15 [print]
       72 LOADK                            R6 K16 ["[CapturePluginGuiTool] Not retrying %*: %*"]
       73 GETTABLEKS                       R8 R0 K0 ["plugin_gui_id"]
       75 FASTCALL1                        TOSTRING R4 ; [+3]
       76 MOVE                             R10 R4
       77 GETIMPORT                        R9 K18 [tostring]
       79 CALL                             R9 1 1
       80 NAMECALL                         R6 R6 K19 ["format"]
       82 CALL                             R6 3 1
       83 CALL                             R5 1 0
       84 JUMPIF                           R1 ; [+13]
       85 GETIMPORT                        R3 K6 [error]
       87 LOADK                            R4 K20 ["Plugin GUI capture failed: %*"]
       88 FASTCALL1                        TOSTRING R2 ; [+3]
       89 MOVE                             R7 R2
       90 GETIMPORT                        R6 K18 [tostring]
       92 CALL                             R6 1 1
       93 NAMECALL                         R4 R4 K19 ["format"]
       95 CALL                             R4 2 1
       96 LOADN                            R5 0
       97 CALL                             R3 2 0
       98 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Identity"]
        4 GETTABLEKS                       R3 R3 K1 ["Edit"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 1
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 MOVE                             R4 R1
       13 LOADK                            R5 K3 ["image/png"]
       14 NAMECALL                         R2 R2 K4 ["addImage"]
       16 CALL                             R2 3 1
       17 NAMECALL                         R2 R2 K5 ["build"]
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_8:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["FFlagAssistantCapturePluginGuiFocusPanel"]
        9 JUMPIFNOT                        R4 ; [+3]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K4 ["EngineFeatureStudioPanelsResolveFullPluginGuiId"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R1
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          VAL R1
       17 NEWCLOSURE                       R7 P2
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R6
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K5 ["invoke"]
       26 MOVE                             R9 R2
       27 LOADK                            R10 K6 ["CapturePluginGuiTool.Capture"]
       28 CALL                             R8 2 1
       29 GETUPVAL                         R9 3
       30 GETTABLEKS                       R9 R9 K7 ["new"]
       32 CALL                             R9 0 1
       33 NAMECALL                         R10 R2 K8 ["GetIdentity"]
       35 CALL                             R10 1 1
       36 GETUPVAL                         R11 4
       37 GETTABLEKS                       R11 R11 K9 ["Identity"]
       39 GETTABLEKS                       R11 R11 K10 ["Standalone"]
       41 JUMPIFEQ                         R10 R11 ; [+9]
       43 NEWCLOSURE                       R14 P3
       44 CAPTURE                          VAL R7
       45 NAMECALL                         R12 R8 K11 ["Connect"]
       47 CALL                             R12 2 -1
       48 NAMECALL                         R10 R9 K12 ["Add"]
       50 CALL                             R10 -1 0
       51 NEWCLOSURE                       R12 P4
       52 CAPTURE                          VAL R9
       53 NAMECALL                         R10 R3 K13 ["Once"]
       55 CALL                             R10 2 0
       56 NEWCLOSURE                       R10 P5
       57 CAPTURE                          VAL R8
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          UPVAL U5
       60 LOADNIL                          R11
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K14 ["FFlagAssistantShorterCapturePluginGuiDescription"]
       64 JUMPIFNOT                        R12 ; [+2]
       65 LOADK                            R11 K15 ["Capture a screenshot of a plugin by plugin_gui_id and return the image data. Obtain plugin_gui_id from {ToolNames.ListPluginGuis}."]
       66 JUMP                             ; [+1]
       67 LOADK                            R11 K16 ["Capture a screenshot of a specific open plugin GUI (widget/window) by its plugin_gui_id, and return the image data. Obtain the plugin_gui_id from the {ToolNames.ListPluginGuis} tool."]
       68 JUMPIF                           R4 ; [+3]
       69 MOVE                             R12 R11
       70 LOADK                            R13 K17 [" Only GUIs that are currently visible on screen can be captured; {ToolNames.ListPluginGuis} also reports GUIs that exist but are hidden, and capturing those fails."]
       71 CONCAT                           R11 R12 R13
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R12 R12 K18 ["EngineFeatureStudioPluginCaptureFromOwnWindow"]
       75 JUMPIF                           R12 ; [+3]
       76 MOVE                             R12 R11
       77 LOADK                            R13 K19 [" Studio itself must also be visible on the monitor: if it is occluded or minimized, the capture will return whatever is on screen at the widget/window's position instead of the plugin GUI."]
       78 CONCAT                           R11 R12 R13
       79 GETUPVAL                         R12 6
       80 GETTABLEKS                       R12 R12 K20 ["define"]
       82 CALL                             R12 0 1
       83 GETUPVAL                         R14 7
       84 GETTABLEKS                       R14 R14 K21 ["CapturePluginGui"]
       86 NAMECALL                         R12 R12 K22 ["setName"]
       88 CALL                             R12 2 1
       89 GETUPVAL                         R14 7
       90 GETTABLEKS                       R14 R14 K23 ["replaceTokens"]
       92 MOVE                             R15 R11
       93 CALL                             R14 1 -1
       94 NAMECALL                         R12 R12 K24 ["setDescription"]
       96 CALL                             R12 -1 1
       97 LOADK                            R14 K25 ["plugin_gui_id"]
       98 DUPTABLE                         R15 K29 [{["type"] = "string", ["description"]}]
       99 GETUPVAL                         R16 7
      100 GETTABLEKS                       R16 R16 K23 ["replaceTokens"]
      102 LOADK                            R17 K30 ["The plugin_gui_id of the plugin GUI to capture, as returned by the {ToolNames.ListPluginGuis} tool."]
      103 CALL                             R16 1 1
      104 SETTABLEKS                       R16 R15 K28 ["description"]
      106 NAMECALL                         R12 R12 K31 ["addArgument"]
      108 CALL                             R12 3 1
      109 LOADK                            R14 K32 ["Capture Plugin GUI"]
      110 NAMECALL                         R12 R12 K33 ["setTitle"]
      112 CALL                             R12 2 1
      113 DUPTABLE                         R14 K41 [{["title"] = "Capture Plugin GUI", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      114 NAMECALL                         R12 R12 K42 ["setAnnotations"]
      116 CALL                             R12 2 1
      117 MOVE                             R14 R10
      118 NAMECALL                         R12 R12 K43 ["setHandler"]
      120 CALL                             R12 2 1
      121 NAMECALL                         R12 R12 K44 ["build"]
      123 CALL                             R12 1 1
      124 DUPTABLE                         R13 K47 [{"definition", "getPreExecuteWarning"}]
      125 SETTABLEKS                       R12 R13 K45 ["definition"]
      127 DUPCLOSURE                       R14 K48 [PROTO_8]
      128 SETTABLEKS                       R14 R13 K46 ["getPreExecuteWarning"]
      130 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Bin"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["DMNetworking"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["ModelContextProtocol"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R1 K14 ["Flags"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K10 [require]
       37 GETTABLEKS                       R8 R1 K15 ["Tools"]
       39 GETTABLEKS                       R8 R8 K16 ["ToolTypes"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R4 K17 ["Remote"]
       44 GETTABLEKS                       R9 R5 K18 ["Util"]
       46 GETTABLEKS                       R9 R9 K19 ["ToolBuilder"]
       48 GETTABLEKS                       R10 R5 K18 ["Util"]
       50 GETTABLEKS                       R10 R10 K20 ["ToolResult"]
       52 GETTABLEKS                       R11 R7 K21 ["ToolNames"]
       54 DUPCLOSURE                       R12 K22 [PROTO_9]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R11
       63 RETURN                           R12 1
