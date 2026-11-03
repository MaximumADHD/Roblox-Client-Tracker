PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["pluginCapture"]
        5 GETTABLEKS                       R0 R0 K2 ["capturePluginGuiByIdAsync"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

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
       19 GETIMPORT                        R4 K9 [pcall]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R3
       24 CALL                             R4 1 2
       25 MOVE                             R1 R4
       26 MOVE                             R2 R5
       27 JUMPIF                           R1 ; [+53]
       28 GETUPVAL                         R3 1
       29 JUMPIFNOT                        R3 ; [+51]
       30 GETIMPORT                        R3 K9 [pcall]
       32 NEWCLOSURE                       R4 P1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R0
       35 CALL                             R3 1 2
       36 JUMPIFNOT                        R3 ; [+26]
       37 LOADN                            R7 1
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K10 ["FIntAssistantCapturePluginGuiDelayFrames"]
       41 LOADN                            R6 1
       42 FORNPREP                         R5
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R8 R8 K11 ["Heartbeat"]
       46 NAMECALL                         R8 R8 K12 ["Wait"]
       48 CALL                             R8 1 0
       49 FORNLOOP                         R5
       50 GETTABLEKS                       R7 R0 K0 ["plugin_gui_id"]
       52 GETIMPORT                        R8 K9 [pcall]
       54 NEWCLOSURE                       R9 P0
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R7
       57 CALL                             R8 1 2
       58 MOVE                             R5 R8
       59 MOVE                             R6 R9
       60 MOVE                             R1 R5
       61 MOVE                             R2 R6
       62 JUMP                             ; [+18]
       63 GETUPVAL                         R5 3
       64 GETTABLEKS                       R5 R5 K13 ["FFlagDebugLogAssistantUI"]
       66 JUMPIFNOT                        R5 ; [+14]
       67 GETIMPORT                        R5 K15 [print]
       69 LOADK                            R6 K16 ["[CapturePluginGuiTool] Not retrying %*: %*"]
       70 GETTABLEKS                       R8 R0 K0 ["plugin_gui_id"]
       72 FASTCALL1                        TOSTRING R4 ; [+3]
       73 MOVE                             R10 R4
       74 GETIMPORT                        R9 K18 [tostring]
       76 CALL                             R9 1 1
       77 NAMECALL                         R6 R6 K19 ["format"]
       79 CALL                             R6 3 1
       80 CALL                             R5 1 0
       81 JUMPIF                           R1 ; [+13]
       82 GETIMPORT                        R3 K6 [error]
       84 LOADK                            R4 K20 ["Plugin GUI capture failed: %*"]
       85 FASTCALL1                        TOSTRING R2 ; [+3]
       86 MOVE                             R7 R2
       87 GETIMPORT                        R6 K18 [tostring]
       89 CALL                             R6 1 1
       90 NAMECALL                         R4 R4 K19 ["format"]
       92 CALL                             R4 2 1
       93 LOADN                            R5 0
       94 CALL                             R3 2 0
       95 RETURN                           R2 1

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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_8:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseNewDMNetworking"]
        4 JUMPIFNOT                        R2 ; [+12]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["Identity"]
        9 GETTABLEKS                       R4 R4 K2 ["Edit"]
       11 MOVE                             R5 R0
       12 NAMECALL                         R2 R2 K3 ["InvokeAsync"]
       14 CALL                             R2 3 1
       15 MOVE                             R1 R2
       16 JUMP                             ; [+9]
       17 GETUPVAL                         R2 3
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K4 ["Types"]
       21 GETTABLEKS                       R3 R3 K2 ["Edit"]
       23 MOVE                             R4 R0
       24 CALL                             R2 2 1
       25 MOVE                             R1 R2
       26 GETUPVAL                         R2 5
       27 CALL                             R2 0 1
       28 MOVE                             R4 R1
       29 LOADK                            R5 K5 ["image/png"]
       30 NAMECALL                         R2 R2 K6 ["addImage"]
       32 CALL                             R2 3 1
       33 NAMECALL                         R2 R2 K7 ["build"]
       35 CALL                             R2 1 -1
       36 RETURN                           R2 -1

PROTO_9:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_10:
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
       23 LOADNIL                          R8
       24 LOADNIL                          R9
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K5 ["FFlagAssistantUseNewDMNetworking"]
       28 JUMPIFNOT                        R10 ; [+35]
       29 GETUPVAL                         R10 2
       30 GETTABLEKS                       R10 R10 K6 ["invoke"]
       32 MOVE                             R11 R2
       33 LOADK                            R12 K7 ["CapturePluginGuiTool.Capture"]
       34 CALL                             R10 2 1
       35 MOVE                             R9 R10
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R10 R10 K8 ["new"]
       39 CALL                             R10 0 1
       40 NAMECALL                         R11 R2 K9 ["GetIdentity"]
       42 CALL                             R11 1 1
       43 GETUPVAL                         R12 4
       44 GETTABLEKS                       R12 R12 K10 ["Identity"]
       46 GETTABLEKS                       R12 R12 K11 ["Standalone"]
       48 JUMPIFEQ                         R11 R12 ; [+9]
       50 NEWCLOSURE                       R15 P3
       51 CAPTURE                          VAL R7
       52 NAMECALL                         R13 R9 K12 ["Connect"]
       54 CALL                             R13 2 -1
       55 NAMECALL                         R11 R10 K13 ["Add"]
       57 CALL                             R11 -1 0
       58 NEWCLOSURE                       R13 P4
       59 CAPTURE                          VAL R10
       60 NAMECALL                         R11 R3 K14 ["Once"]
       62 CALL                             R11 2 0
       63 JUMP                             ; [+9]
       64 GETTABLEKS                       R10 R0 K15 ["networkingOLD"]
       66 LOADK                            R12 K16 ["CapturePluginGuiTool_Capture"]
       67 NEWCLOSURE                       R13 P5
       68 CAPTURE                          VAL R7
       69 NAMECALL                         R10 R10 K17 ["OnHostInvokeAsync"]
       71 CALL                             R10 3 1
       72 MOVE                             R8 R10
       73 NEWCLOSURE                       R10 P6
       74 CAPTURE                          UPVAL U0
       75 CAPTURE                          REF R9
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          REF R8
       78 CAPTURE                          UPVAL U5
       79 CAPTURE                          UPVAL U6
       80 LOADK                            R11 K18 ["Capture a screenshot of a specific open plugin GUI (widget/window) by its plugin_gui_id, and return the image data. Obtain the plugin_gui_id from the {ToolNames.ListPluginGuis} tool."]
       81 JUMPIF                           R4 ; [+3]
       82 MOVE                             R12 R11
       83 LOADK                            R13 K19 [" Only GUIs that are currently visible on screen can be captured; {ToolNames.ListPluginGuis} also reports GUIs that exist but are hidden, and capturing those fails."]
       84 CONCAT                           R11 R12 R13
       85 MOVE                             R12 R11
       86 LOADK                            R13 K20 [" Studio itself must also be visible on the monitor: if it is occluded or minimized, the capture will return whatever is on screen at the widget/window's position instead of the plugin GUI."]
       87 CONCAT                           R11 R12 R13
       88 GETUPVAL                         R12 7
       89 GETTABLEKS                       R12 R12 K21 ["define"]
       91 CALL                             R12 0 1
       92 GETUPVAL                         R14 8
       93 GETTABLEKS                       R14 R14 K22 ["CapturePluginGui"]
       95 NAMECALL                         R12 R12 K23 ["setName"]
       97 CALL                             R12 2 1
       98 GETUPVAL                         R14 8
       99 GETTABLEKS                       R14 R14 K24 ["replaceTokens"]
      101 MOVE                             R15 R11
      102 CALL                             R14 1 -1
      103 NAMECALL                         R12 R12 K25 ["setDescription"]
      105 CALL                             R12 -1 1
      106 LOADK                            R14 K26 ["plugin_gui_id"]
      107 DUPTABLE                         R15 K30 [{["type"] = "string", ["description"]}]
      108 GETUPVAL                         R16 8
      109 GETTABLEKS                       R16 R16 K24 ["replaceTokens"]
      111 LOADK                            R17 K31 ["The plugin_gui_id of the plugin GUI to capture, as returned by the {ToolNames.ListPluginGuis} tool."]
      112 CALL                             R16 1 1
      113 SETTABLEKS                       R16 R15 K29 ["description"]
      115 NAMECALL                         R12 R12 K32 ["addArgument"]
      117 CALL                             R12 3 1
      118 LOADK                            R14 K33 ["Capture Plugin GUI"]
      119 NAMECALL                         R12 R12 K34 ["setTitle"]
      121 CALL                             R12 2 1
      122 DUPTABLE                         R14 K42 [{["title"] = "Capture Plugin GUI", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      123 NAMECALL                         R12 R12 K43 ["setAnnotations"]
      125 CALL                             R12 2 1
      126 MOVE                             R14 R10
      127 NAMECALL                         R12 R12 K44 ["setHandler"]
      129 CALL                             R12 2 1
      130 NAMECALL                         R12 R12 K45 ["build"]
      132 CALL                             R12 1 1
      133 DUPTABLE                         R13 K48 [{"definition", "getPreExecuteWarning"}]
      134 SETTABLEKS                       R12 R13 K46 ["definition"]
      136 DUPCLOSURE                       R14 K49 [PROTO_9]
      137 SETTABLEKS                       R14 R13 K47 ["getPreExecuteWarning"]
      139 CLOSEUPVALS                      R8
      140 RETURN                           R13 1

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
       32 GETTABLEKS                       R7 R1 K14 ["Util"]
       34 GETTABLEKS                       R7 R7 K15 ["DataModelType"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R8 R1 K16 ["Flags"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K10 [require]
       44 GETTABLEKS                       R9 R1 K17 ["Tools"]
       46 GETTABLEKS                       R9 R9 K18 ["ToolTypes"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R4 K19 ["Remote"]
       51 GETTABLEKS                       R10 R5 K14 ["Util"]
       53 GETTABLEKS                       R10 R10 K20 ["ToolBuilder"]
       55 GETTABLEKS                       R11 R5 K14 ["Util"]
       57 GETTABLEKS                       R11 R11 K21 ["ToolResult"]
       59 GETTABLEKS                       R12 R8 K22 ["ToolNames"]
       61 DUPCLOSURE                       R13 K23 [PROTO_10]
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R12
       71 RETURN                           R13 1
