PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Checkable"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        7 JUMPIFEQKB                       R1 FALSE ; [+5]
        9 GETTABLEKS                       R1 R0 K2 ["Visible"]
       11 JUMPIFNOTEQKB                    R1 FALSE ; [+3]
       13 LOADB                            R1 0
       14 RETURN                           R1 1
       15 GETTABLEKS                       R1 R0 K3 ["Uri"]
       17 LOADB                            R2 0
       18 JUMPIFEQKNIL                     R1 ; [+12]
       20 LOADB                            R2 0
       21 GETTABLEKS                       R3 R1 K4 ["PluginId"]
       23 JUMPIFEQKNIL                     R3 ; [+7]
       25 GETTABLEKS                       R3 R1 K5 ["ItemId"]
       27 JUMPIFNOTEQKNIL                  R3 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["Uri"]
        8 GETTABLE                         R10 R1 R6
        9 OR                               R9 R10 R7
       10 LOADK                            R13 K1 ["- dataModel: %* | pluginType: %* "]
       11 GETTABLEKS                       R16 R8 K3 ["DataModel"]
       13 ORK                              R15 R16 K2 ["<unknown>"]
       14 GETTABLEKS                       R17 R8 K5 ["PluginType"]
       16 ORK                              R16 R17 K4 ["Feature"]
       17 NAMECALL                         R13 R13 K6 ["format"]
       19 CALL                             R13 3 1
       20 LOADK                            R14 K7 ["| pluginId: %* | itemId: %* | text: %* "]
       21 GETTABLEKS                       R16 R8 K8 ["PluginId"]
       23 GETTABLEKS                       R17 R8 K9 ["ItemId"]
       25 GETTABLEKS                       R19 R7 K11 ["Text"]
       27 ORK                              R18 R19 K10 ["<unnamed>"]
       28 NAMECALL                         R14 R14 K6 ["format"]
       30 CALL                             R14 4 1
       31 LOADK                            R15 K12 ["| open: %*"]
       32 GETTABLEKS                       R18 R9 K13 ["Checked"]
       34 JUMPIFEQKB                       R18 TRUE ; [+2]
       36 LOADB                            R17 0 +1
       37 LOADB                            R17 1
       38 NAMECALL                         R15 R15 K6 ["format"]
       40 CALL                             R15 2 1
       41 CONCAT                           R12 R13 R15
       42 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       44 MOVE                             R11 R2
       45 GETIMPORT                        R10 K16 [table.insert]
       47 CALL                             R10 2 0
       48 FORGLOOP                         R3 2 ; [-43]
       50 LENGTH                           R3 R2
       51 JUMPIFNOTEQKN                    R3 K17 [0] ; [+3]
       53 LOADK                            R3 K18 ["No plugin toggle actions found."]
       54 RETURN                           R3 1
       55 GETIMPORT                        R3 K20 [table.sort]
       57 MOVE                             R4 R2
       58 CALL                             R3 1 0
       59 LOADK                            R3 K21 ["Toggle actions: plugin windows, Studio settings and tools. Match a row by its text -- a Feature row's pluginId is a legacy name unrelated to any plugin id (the Animation Clip Editor is the Feature AnimationEditor), while any other pluginType matches the dataModel, type and plugin that the plugin GUI list reports. Pass dataModel, pluginType, pluginId and itemId to the open tool.\n%*"]
       60 GETIMPORT                        R5 K23 [table.concat]
       62 MOVE                             R6 R2
       63 LOADK                            R7 K24 ["\n"]
       64 CALL                             R5 2 1
       65 NAMECALL                         R3 R3 K6 ["format"]
       67 CALL                             R3 2 1
       68 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["tools"]
        5 GETTABLEKS                       R1 R1 K1 ["pluginActivation"]
        7 GETTABLEKS                       R1 R1 K2 ["listActionsAsync"]
        9 CALL                             R1 0 3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R7 R5 K3 ["Checkable"]
       13 JUMPIF                           R7 ; [+2]
       14 LOADB                            R6 0
       15 JUMP                             ; [+26]
       16 GETTABLEKS                       R7 R5 K4 ["Enabled"]
       18 JUMPIFEQKB                       R7 FALSE ; [+5]
       20 GETTABLEKS                       R7 R5 K5 ["Visible"]
       22 JUMPIFNOTEQKB                    R7 FALSE ; [+3]
       24 LOADB                            R6 0
       25 JUMP                             ; [+16]
       26 GETTABLEKS                       R7 R5 K6 ["Uri"]
       28 LOADB                            R6 0
       29 JUMPIFEQKNIL                     R7 ; [+12]
       31 LOADB                            R6 0
       32 GETTABLEKS                       R8 R7 K7 ["PluginId"]
       34 JUMPIFEQKNIL                     R8 ; [+7]
       36 GETTABLEKS                       R8 R7 K8 ["ItemId"]
       38 JUMPIFNOTEQKNIL                  R8 ; [+2]
       40 LOADB                            R6 0 +1
       41 LOADB                            R6 1
       42 JUMPIFNOT                        R6 ; [+7]
       43 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       45 MOVE                             R7 R0
       46 MOVE                             R8 R5
       47 GETIMPORT                        R6 K11 [table.insert]
       49 CALL                             R6 2 0
       50 FORGLOOP                         R1 2 ; [-40]
       52 NEWTABLE                         R1 0 0
       54 MOVE                             R2 R0
       55 LOADNIL                          R3
       56 LOADNIL                          R4
       57 FORGPREP                         R2
       58 GETTABLEKS                       R7 R6 K6 ["Uri"]
       60 SETTABLE                         R7 R1 R5
       61 FORGLOOP                         R2 2 ; [-4]
       63 GETUPVAL                         R2 0
       64 GETTABLEKS                       R2 R2 K0 ["tools"]
       66 GETTABLEKS                       R2 R2 K1 ["pluginActivation"]
       68 GETTABLEKS                       R2 R2 K12 ["getActionStatesAsync"]
       70 MOVE                             R3 R1
       71 CALL                             R2 1 1
       72 GETUPVAL                         R3 1
       73 MOVE                             R4 R0
       74 MOVE                             R5 R2
       75 CALL                             R3 2 1
       76 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["invoke"]
       12 MOVE                             R6 R2
       13 LOADK                            R7 K4 ["ListPluginActionsTool.ListActions"]
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K5 ["new"]
       18 CALL                             R6 0 1
       19 NAMECALL                         R7 R2 K6 ["GetIdentity"]
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R8 R8 K7 ["Identity"]
       25 GETTABLEKS                       R8 R8 K8 ["Standalone"]
       27 JUMPIFEQ                         R7 R8 ; [+9]
       29 NEWCLOSURE                       R11 P1
       30 CAPTURE                          VAL R4
       31 NAMECALL                         R9 R5 K9 ["Connect"]
       33 CALL                             R9 2 -1
       34 NAMECALL                         R7 R6 K10 ["Add"]
       36 CALL                             R7 -1 0
       37 NEWCLOSURE                       R9 P2
       38 CAPTURE                          VAL R6
       39 NAMECALL                         R7 R3 K11 ["Once"]
       41 CALL                             R7 2 0
       42 NEWCLOSURE                       R7 P3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U4
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R8 R8 K12 ["define"]
       49 CALL                             R8 0 1
       50 GETUPVAL                         R10 6
       51 GETTABLEKS                       R10 R10 K13 ["ListPluginActions"]
       53 NAMECALL                         R8 R8 K14 ["setName"]
       55 CALL                             R8 2 1
       56 GETUPVAL                         R10 6
       57 GETTABLEKS                       R10 R10 K15 ["replaceTokens"]
       59 LOADK                            R11 K16 ["List Studio toggle actions -- plugin windows, settings and tools -- with each one's dataModel, pluginType, pluginId, itemId, Studio label and on/off state. Pick a row by its label, not its ids, and pass that row's four ids to {ToolNames.OpenPlugin}."]
       60 CALL                             R10 1 -1
       61 NAMECALL                         R8 R8 K17 ["setDescription"]
       63 CALL                             R8 -1 1
       64 LOADK                            R10 K18 ["List Plugin Actions"]
       65 NAMECALL                         R8 R8 K19 ["setTitle"]
       67 CALL                             R8 2 1
       68 DUPTABLE                         R10 K27 [{["title"] = "List Plugin Actions", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       69 NAMECALL                         R8 R8 K28 ["setAnnotations"]
       71 CALL                             R8 2 1
       72 MOVE                             R10 R7
       73 NAMECALL                         R8 R8 K29 ["setHandler"]
       75 CALL                             R8 2 1
       76 NAMECALL                         R8 R8 K30 ["build"]
       78 CALL                             R8 1 1
       79 DUPTABLE                         R9 K32 [{"definition"}]
       80 SETTABLEKS                       R8 R9 K31 ["definition"]
       82 RETURN                           R9 1

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
       51 DUPCLOSURE                       R12 K20 [PROTO_1]
       52 DUPCLOSURE                       R13 K21 [PROTO_6]
       53 CAPTURE                          VAL R12
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R10
       60 RETURN                           R13 1
