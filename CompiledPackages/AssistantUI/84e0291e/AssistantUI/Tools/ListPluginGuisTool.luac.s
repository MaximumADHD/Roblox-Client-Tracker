PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R7 R6
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 GETTABLEKS                       R13 R11 K1 ["ItemId"]
       12 ORK                              R12 R13 K0 ["<unknown>"]
       13 GETTABLEKS                       R14 R11 K2 ["DataModel"]
       15 ORK                              R13 R14 K0 ["<unknown>"]
       16 GETTABLEKS                       R15 R11 K3 ["PluginType"]
       18 ORK                              R14 R15 K0 ["<unknown>"]
       19 GETTABLEKS                       R16 R11 K4 ["PluginId"]
       21 OR                               R15 R16 R5
       22 LOADK                            R18 K5 ["- plugin_gui_id: %* | plugin: %* | dataModel: %* | type: %*"]
       23 MOVE                             R20 R12
       24 MOVE                             R21 R15
       25 MOVE                             R22 R13
       26 MOVE                             R23 R14
       27 NAMECALL                         R18 R18 K6 ["format"]
       29 CALL                             R18 5 1
       30 FASTCALL2                        TABLE_INSERT R1 R18 ; [+4]
       32 MOVE                             R17 R1
       33 GETIMPORT                        R16 K9 [table.insert]
       35 CALL                             R16 2 0
       36 FORGLOOP                         R7 2 ; [-27]
       38 FORGLOOP                         R2 2 ; [-33]
       40 LENGTH                           R2 R1
       41 JUMPIFNOTEQKN                    R2 K10 [0] ; [+3]
       43 LOADK                            R2 K11 ["No plugin GUIs found."]
       44 RETURN                           R2 1
       45 GETIMPORT                        R2 K13 [table.sort]
       47 MOVE                             R3 R1
       48 CALL                             R2 1 0
       49 LOADK                            R2 K14 ["Use these plugin GUI's to interact with specific plugins. Note the pluginGUI may or may not actually be open. if capturing screenshot fails, it's probably because the plugin is not open\n%*"]
       50 GETIMPORT                        R4 K16 [table.concat]
       52 MOVE                             R5 R1
       53 LOADK                            R6 K17 ["\n"]
       54 CALL                             R4 2 1
       55 NAMECALL                         R2 R2 K6 ["format"]
       57 CALL                             R2 2 1
       58 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["pluginCapture"]
        5 GETTABLEKS                       R0 R0 K2 ["listPluginGuisAsync"]
        7 CALL                             R0 0 1
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["tools"]
        3 GETTABLEKS                       R2 R2 K1 ["pluginCapture"]
        5 GETTABLEKS                       R2 R2 K2 ["listPluginGuisAsync"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 MOVE                             R1 R3
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["tools"]
        3 GETTABLEKS                       R3 R3 K1 ["pluginCapture"]
        5 GETTABLEKS                       R3 R3 K2 ["listPluginGuisAsync"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R3
       10 CALL                             R4 1 1
       11 MOVE                             R2 R4
       12 RETURN                           R2 1

PROTO_5:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseNewDMNetworking"]
        4 JUMPIFNOT                        R2 ; [+11]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["Identity"]
        9 GETTABLEKS                       R4 R4 K2 ["Edit"]
       11 NAMECALL                         R2 R2 K3 ["InvokeAsync"]
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+10]
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K4 ["Types"]
       20 GETTABLEKS                       R3 R3 K2 ["Edit"]
       22 NEWTABLE                         R4 0 0
       24 CALL                             R2 2 1
       25 MOVE                             R1 R2
       26 GETUPVAL                         R2 5
       27 CALL                             R2 0 1
       28 MOVE                             R4 R1
       29 NAMECALL                         R2 R2 K5 ["addText"]
       31 CALL                             R2 2 1
       32 NAMECALL                         R2 R2 K6 ["build"]
       34 CALL                             R2 1 -1
       35 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K3 ["FFlagAssistantUseNewDMNetworking"]
       14 JUMPIFNOT                        R7 ; [+36]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K4 ["invoke"]
       18 MOVE                             R8 R2
       19 LOADK                            R9 K5 ["ListPluginGuisTool.ListGuis"]
       20 CALL                             R7 2 1
       21 MOVE                             R6 R7
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R7 R7 K6 ["new"]
       25 CALL                             R7 0 1
       26 NAMECALL                         R8 R2 K7 ["GetIdentity"]
       28 CALL                             R8 1 1
       29 GETUPVAL                         R9 4
       30 GETTABLEKS                       R9 R9 K8 ["Identity"]
       32 GETTABLEKS                       R9 R9 K9 ["Standalone"]
       34 JUMPIFEQ                         R8 R9 ; [+10]
       36 NEWCLOSURE                       R12 P1
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U0
       39 NAMECALL                         R10 R6 K10 ["Connect"]
       41 CALL                             R10 2 -1
       42 NAMECALL                         R8 R7 K11 ["Add"]
       44 CALL                             R8 -1 0
       45 NEWCLOSURE                       R10 P2
       46 CAPTURE                          VAL R7
       47 NAMECALL                         R8 R3 K12 ["Once"]
       49 CALL                             R8 2 0
       50 JUMP                             ; [+10]
       51 GETTABLEKS                       R7 R0 K13 ["networkingOLD"]
       53 LOADK                            R9 K14 ["ListPluginGuisTool_ListGuis"]
       54 NEWCLOSURE                       R10 P3
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U0
       57 NAMECALL                         R7 R7 K15 ["OnHostInvokeAsync"]
       59 CALL                             R7 3 1
       60 MOVE                             R5 R7
       61 NEWCLOSURE                       R7 P4
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          REF R6
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          REF R5
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U6
       68 GETUPVAL                         R8 7
       69 GETTABLEKS                       R8 R8 K16 ["define"]
       71 CALL                             R8 0 1
       72 GETUPVAL                         R10 8
       73 GETTABLEKS                       R10 R10 K17 ["ListPluginGuis"]
       75 NAMECALL                         R8 R8 K18 ["setName"]
       77 CALL                             R8 2 1
       78 GETUPVAL                         R10 8
       79 GETTABLEKS                       R10 R10 K19 ["replaceTokens"]
       81 LOADK                            R11 K20 ["List the plugin GUIs (widgets/windows) that exist in Studio. Returns each plugin GUI's plugin_gui_id along with the owning plugin and data model. Use the plugin_gui_id with the {ToolNames.CapturePluginGui} tool to screenshot a specific plugin GUI. Hidden GUIs are listed too and cannot be captured, so expect some entries here to fail capture."]
       82 CALL                             R10 1 -1
       83 NAMECALL                         R8 R8 K21 ["setDescription"]
       85 CALL                             R8 -1 1
       86 LOADK                            R10 K22 ["List Plugin GUIs"]
       87 NAMECALL                         R8 R8 K23 ["setTitle"]
       89 CALL                             R8 2 1
       90 DUPTABLE                         R10 K31 [{["title"] = "List Plugin GUIs", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       91 NAMECALL                         R8 R8 K32 ["setAnnotations"]
       93 CALL                             R8 2 1
       94 MOVE                             R10 R7
       95 NAMECALL                         R8 R8 K33 ["setHandler"]
       97 CALL                             R8 2 1
       98 NAMECALL                         R8 R8 K34 ["build"]
      100 CALL                             R8 1 1
      101 DUPTABLE                         R9 K36 [{"definition"}]
      102 SETTABLEKS                       R8 R9 K35 ["definition"]
      104 CLOSEUPVALS                      R5
      105 RETURN                           R9 1

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
       33 GETTABLEKS                       R7 R0 K12 ["Guest"]
       35 GETTABLEKS                       R7 R7 K13 ["Environment"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K14 ["Flags"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Tools"]
       47 GETTABLEKS                       R9 R9 K16 ["ToolTypes"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R3 K17 ["Remote"]
       52 GETTABLEKS                       R10 R4 K10 ["Util"]
       54 GETTABLEKS                       R10 R10 K18 ["ToolBuilder"]
       56 GETTABLEKS                       R11 R4 K10 ["Util"]
       58 GETTABLEKS                       R11 R11 K19 ["ToolResult"]
       60 GETTABLEKS                       R12 R8 K20 ["ToolNames"]
       62 DUPCLOSURE                       R13 K21 [PROTO_0]
       63 DUPCLOSURE                       R14 K22 [PROTO_6]
       64 CAPTURE                          VAL R13
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R12
       73 RETURN                           R14 1
