PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["pluginCapture"]
        5 GETTABLEKS                       R0 R0 K2 ["capturePluginGuiByIdAsync"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["plugin_gui_id"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_1:
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
       17 GETIMPORT                        R1 K9 [pcall]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 CALL                             R1 1 2
       23 JUMPIF                           R1 ; [+13]
       24 GETIMPORT                        R3 K6 [error]
       26 LOADK                            R4 K10 ["Plugin GUI capture failed: %*"]
       27 FASTCALL1                        TOSTRING R2 ; [+3]
       28 MOVE                             R7 R2
       29 GETIMPORT                        R6 K12 [tostring]
       31 CALL                             R6 1 1
       32 NAMECALL                         R4 R4 K13 ["format"]
       34 CALL                             R4 2 1
       35 LOADN                            R5 0
       36 CALL                             R3 2 0
       37 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_5:
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

PROTO_6:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K3 ["FFlagAssistantUseNewDMNetworking"]
       13 JUMPIFNOT                        R7 ; [+35]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K4 ["invoke"]
       17 MOVE                             R8 R2
       18 LOADK                            R9 K5 ["CapturePluginGuiTool.Capture"]
       19 CALL                             R7 2 1
       20 MOVE                             R6 R7
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K6 ["new"]
       24 CALL                             R7 0 1
       25 NAMECALL                         R8 R2 K7 ["GetIdentity"]
       27 CALL                             R8 1 1
       28 GETUPVAL                         R9 3
       29 GETTABLEKS                       R9 R9 K8 ["Identity"]
       31 GETTABLEKS                       R9 R9 K9 ["Standalone"]
       33 JUMPIFEQ                         R8 R9 ; [+9]
       35 NEWCLOSURE                       R12 P1
       36 CAPTURE                          VAL R4
       37 NAMECALL                         R10 R6 K10 ["Connect"]
       39 CALL                             R10 2 -1
       40 NAMECALL                         R8 R7 K11 ["Add"]
       42 CALL                             R8 -1 0
       43 NEWCLOSURE                       R10 P2
       44 CAPTURE                          VAL R7
       45 NAMECALL                         R8 R3 K12 ["Once"]
       47 CALL                             R8 2 0
       48 JUMP                             ; [+9]
       49 GETTABLEKS                       R7 R0 K13 ["networkingOLD"]
       51 LOADK                            R9 K14 ["CapturePluginGuiTool_Capture"]
       52 NEWCLOSURE                       R10 P3
       53 CAPTURE                          VAL R4
       54 NAMECALL                         R7 R7 K15 ["OnHostInvokeAsync"]
       56 CALL                             R7 3 1
       57 MOVE                             R5 R7
       58 NEWCLOSURE                       R7 P4
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          REF R6
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          REF R5
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          UPVAL U5
       65 GETUPVAL                         R8 6
       66 GETTABLEKS                       R8 R8 K16 ["define"]
       68 CALL                             R8 0 1
       69 GETUPVAL                         R10 7
       70 GETTABLEKS                       R10 R10 K17 ["CapturePluginGui"]
       72 NAMECALL                         R8 R8 K18 ["setName"]
       74 CALL                             R8 2 1
       75 GETUPVAL                         R10 7
       76 GETTABLEKS                       R10 R10 K19 ["replaceTokens"]
       78 LOADK                            R11 K20 ["Capture a screenshot of a specific open plugin GUI (widget/window) by its pluginGuiId, and return the image data. Obtain the pluginGuiId from the {ToolNames.ListPluginGuis} tool. Only GUIs that are currently visible on screen can be captured; {ToolNames.ListPluginGuis} also reports GUIs that exist but are hidden, and capturing those fails. Studio itself must also be visible on the monitor: if it is occluded or minimized, the capture will return whatever is on screen at the widget/window's position instead of the plugin GUI."]
       79 CALL                             R10 1 -1
       80 NAMECALL                         R8 R8 K21 ["setDescription"]
       82 CALL                             R8 -1 1
       83 LOADK                            R10 K22 ["plugin_gui_id"]
       84 DUPTABLE                         R11 K26 [{["type"] = "string", ["description"]}]
       85 GETUPVAL                         R12 7
       86 GETTABLEKS                       R12 R12 K19 ["replaceTokens"]
       88 LOADK                            R13 K27 ["The pluginGuiId of the plugin GUI to capture, as returned by the {ToolNames.ListPluginGuis} tool."]
       89 CALL                             R12 1 1
       90 SETTABLEKS                       R12 R11 K25 ["description"]
       92 NAMECALL                         R8 R8 K28 ["addArgument"]
       94 CALL                             R8 3 1
       95 LOADK                            R10 K29 ["Capture Plugin GUI"]
       96 NAMECALL                         R8 R8 K30 ["setTitle"]
       98 CALL                             R8 2 1
       99 DUPTABLE                         R10 K38 [{["title"] = "Capture Plugin GUI", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      100 NAMECALL                         R8 R8 K39 ["setAnnotations"]
      102 CALL                             R8 2 1
      103 MOVE                             R10 R7
      104 NAMECALL                         R8 R8 K40 ["setHandler"]
      106 CALL                             R8 2 1
      107 NAMECALL                         R8 R8 K41 ["build"]
      109 CALL                             R8 1 1
      110 DUPTABLE                         R9 K44 [{"definition", "getPreExecuteWarning"}]
      111 SETTABLEKS                       R8 R9 K42 ["definition"]
      113 DUPCLOSURE                       R10 K45 [PROTO_6]
      114 SETTABLEKS                       R10 R9 K43 ["getPreExecuteWarning"]
      116 CLOSEUPVALS                      R5
      117 RETURN                           R9 1

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
       26 GETTABLEKS                       R6 R0 K10 ["Util"]
       28 GETTABLEKS                       R6 R6 K11 ["DataModelType"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Flags"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Tools"]
       40 GETTABLEKS                       R8 R8 K14 ["ToolTypes"]
       42 CALL                             R7 1 1
       43 GETTABLEKS                       R8 R3 K15 ["Remote"]
       45 GETTABLEKS                       R9 R4 K10 ["Util"]
       47 GETTABLEKS                       R9 R9 K16 ["ToolBuilder"]
       49 GETTABLEKS                       R10 R4 K10 ["Util"]
       51 GETTABLEKS                       R10 R10 K17 ["ToolResult"]
       53 GETTABLEKS                       R11 R7 K18 ["ToolNames"]
       55 DUPCLOSURE                       R12 K19 [PROTO_7]
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R11
       64 RETURN                           R12 1
