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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Identity"]
        4 GETTABLEKS                       R3 R3 K1 ["Edit"]
        6 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K3 ["addText"]
       14 CALL                             R2 2 1
       15 NAMECALL                         R2 R2 K4 ["build"]
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["invoke"]
       12 MOVE                             R6 R2
       13 LOADK                            R7 K4 ["ListPluginGuisTool.ListGuis"]
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K5 ["new"]
       18 CALL                             R6 0 1
       19 NAMECALL                         R7 R2 K6 ["GetIdentity"]
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R8 R8 K7 ["Identity"]
       25 GETTABLEKS                       R8 R8 K8 ["Standalone"]
       27 JUMPIFEQ                         R7 R8 ; [+10]
       29 NEWCLOSURE                       R11 P1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U0
       32 NAMECALL                         R9 R5 K9 ["Connect"]
       34 CALL                             R9 2 -1
       35 NAMECALL                         R7 R6 K10 ["Add"]
       37 CALL                             R7 -1 0
       38 NEWCLOSURE                       R9 P2
       39 CAPTURE                          VAL R6
       40 NAMECALL                         R7 R3 K11 ["Once"]
       42 CALL                             R7 2 0
       43 NEWCLOSURE                       R7 P3
       44 CAPTURE                          VAL R5
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U4
       47 GETUPVAL                         R8 5
       48 GETTABLEKS                       R8 R8 K12 ["define"]
       50 CALL                             R8 0 1
       51 GETUPVAL                         R10 6
       52 GETTABLEKS                       R10 R10 K13 ["ListPluginGuis"]
       54 NAMECALL                         R8 R8 K14 ["setName"]
       56 CALL                             R8 2 1
       57 LOADK                            R10 K15 ["Lists the plugin GUIs (widgets/windows) that are visible in Studio. Returns each plugin GUI's plugin_gui_id along with the owning plugin and data model."]
       58 NAMECALL                         R8 R8 K16 ["setDescription"]
       60 CALL                             R8 2 1
       61 LOADK                            R10 K17 ["List Plugin GUIs"]
       62 NAMECALL                         R8 R8 K18 ["setTitle"]
       64 CALL                             R8 2 1
       65 DUPTABLE                         R10 K26 [{["title"] = "List Plugin GUIs", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       66 NAMECALL                         R8 R8 K27 ["setAnnotations"]
       68 CALL                             R8 2 1
       69 MOVE                             R10 R7
       70 NAMECALL                         R8 R8 K28 ["setHandler"]
       72 CALL                             R8 2 1
       73 NAMECALL                         R8 R8 K29 ["build"]
       75 CALL                             R8 1 1
       76 DUPTABLE                         R9 K31 [{"definition"}]
       77 SETTABLEKS                       R8 R9 K30 ["definition"]
       79 RETURN                           R9 1

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
       26 GETTABLEKS                       R6 R0 K10 ["Guest"]
       28 GETTABLEKS                       R6 R6 K11 ["Environment"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Tools"]
       35 GETTABLEKS                       R7 R7 K13 ["ToolTypes"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R3 K14 ["Remote"]
       40 GETTABLEKS                       R8 R4 K15 ["Util"]
       42 GETTABLEKS                       R8 R8 K16 ["ToolBuilder"]
       44 GETTABLEKS                       R9 R4 K15 ["Util"]
       46 GETTABLEKS                       R9 R9 K17 ["ToolResult"]
       48 GETTABLEKS                       R10 R6 K18 ["ToolNames"]
       50 DUPCLOSURE                       R11 K19 [PROTO_0]
       51 DUPCLOSURE                       R12 K20 [PROTO_5]
       52 CAPTURE                          VAL R11
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R10
       59 RETURN                           R12 1
