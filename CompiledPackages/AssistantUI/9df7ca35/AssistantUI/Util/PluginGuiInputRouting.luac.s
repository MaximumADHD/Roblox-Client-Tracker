PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUserInputPluginGuiTarget"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 NEWTABLE                         R0 0 2
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["Types"]
        9 GETTABLEKS                       R1 R1 K2 ["Client"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K1 ["Types"]
       14 GETTABLEKS                       R2 R2 K3 ["Edit"]
       16 SETLIST                          R0 R1 2 [1]
       18 RETURN                           R0 1
       19 NEWTABLE                         R0 0 1
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K1 ["Types"]
       24 GETTABLEKS                       R1 R1 K2 ["Client"]
       26 SETLIST                          R0 R1 1 [1]
       28 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUserInputPluginGuiTarget"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Types"]
        7 GETTABLEKS                       R1 R1 K2 ["Edit"]
        9 JUMPIFNOTEQ                      R0 R1 ; [+10]
       11 GETIMPORT                        R1 K4 [error]
       13 LOADK                            R2 K5 ["This tool is not available in the %* datamodel."]
       14 MOVE                             R4 R0
       15 NAMECALL                         R2 R2 K6 ["format"]
       17 CALL                             R2 2 1
       18 LOADN                            R3 0
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["tools"]
        2 GETTABLEKS                       R3 R3 K1 ["pluginCapture"]
        4 GETTABLEKS                       R3 R3 K2 ["listPluginGuisAsync"]
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R2 K4 [pcall]
        9 CALL                             R2 1 2
       10 JUMPIF                           R2 ; [+13]
       11 GETIMPORT                        R4 K6 [error]
       13 LOADK                            R5 K7 ["Could not list plugin GUIs: %*"]
       14 FASTCALL1                        TOSTRING R3 ; [+3]
       15 MOVE                             R8 R3
       16 GETIMPORT                        R7 K9 [tostring]
       18 CALL                             R7 1 1
       19 NAMECALL                         R5 R5 K10 ["format"]
       21 CALL                             R5 2 1
       22 LOADN                            R6 0
       23 CALL                             R4 2 0
       24 MOVE                             R4 R3
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 MOVE                             R9 R8
       29 LOADNIL                          R10
       30 LOADNIL                          R11
       31 FORGPREP                         R9
       32 GETTABLEKS                       R14 R13 K11 ["ItemId"]
       34 JUMPIFNOTEQ                      R14 R1 ; [+23]
       36 GETUPVAL                         R15 0
       37 GETTABLEKS                       R17 R13 K13 ["DataModel"]
       39 ORK                              R16 R17 K12 [""]
       40 GETTABLE                         R14 R15 R16
       41 JUMPIF                           R14 ; [+15]
       42 GETIMPORT                        R15 K6 [error]
       44 LOADK                            R16 K14 ["Plugin GUI %* is in an unsupported DataModel: %*"]
       45 MOVE                             R18 R1
       46 GETTABLEKS                       R20 R13 K13 ["DataModel"]
       48 FASTCALL1                        TOSTRING R20 ; [+2]
       49 GETIMPORT                        R19 K9 [tostring]
       51 CALL                             R19 1 1
       52 NAMECALL                         R16 R16 K10 ["format"]
       54 CALL                             R16 3 1
       55 LOADN                            R17 0
       56 CALL                             R15 2 0
       57 RETURN                           R14 1
       58 FORGLOOP                         R9 2 ; [-27]
       60 FORGLOOP                         R4 2 ; [-33]
       62 GETIMPORT                        R4 K6 [error]
       64 LOADK                            R5 K15 ["No plugin GUI found with plugin_gui_id %*. Call %* for current ids."]
       65 MOVE                             R7 R1
       66 GETUPVAL                         R8 1
       67 GETTABLEKS                       R8 R8 K16 ["ListPluginGuis"]
       69 NAMECALL                         R5 R5 K10 ["format"]
       71 CALL                             R5 3 1
       72 LOADN                            R6 0
       73 CALL                             R4 2 0
       74 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R3 R0 K0 ["plugin_gui_id"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETTABLEKS                       R3 R0 K0 ["plugin_gui_id"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["plugin_gui_id"]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K2 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+3]
        9 JUMPIFNOTEQKS                    R1 K4 [""] ; [+6]
       11 GETIMPORT                        R2 K6 [error]
       13 LOADK                            R3 K7 ["plugin_gui_id must be a non-empty string"]
       14 LOADN                            R4 0
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K8 ["Identity"]
       20 GETTABLEKS                       R4 R4 K9 ["Edit"]
       22 DUPTABLE                         R5 K10 [{"plugin_gui_id"}]
       23 SETTABLEKS                       R1 R5 K0 ["plugin_gui_id"]
       25 NAMECALL                         R2 R2 K11 ["InvokeAsync"]
       27 CALL                             R2 3 1
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K12 ["fromDataModelType"]
       31 MOVE                             R4 R2
       32 CALL                             R3 1 1
       33 GETUPVAL                         R4 3
       34 NAMECALL                         R4 R4 K13 ["GetIdentity"]
       36 CALL                             R4 1 1
       37 JUMPIFNOTEQ                      R3 R4 ; [+5]
       39 GETUPVAL                         R3 4
       40 MOVE                             R4 R0
       41 CALL                             R3 1 -1
       42 RETURN                           R3 -1
       43 GETUPVAL                         R3 5
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K12 ["fromDataModelType"]
       47 MOVE                             R6 R2
       48 CALL                             R5 1 1
       49 MOVE                             R6 R0
       50 NAMECALL                         R3 R3 K11 ["InvokeAsync"]
       52 CALL                             R3 3 -1
       53 RETURN                           R3 -1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["environment"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R3
        5 NEWCLOSURE                       R5 P1
        6 CAPTURE                          VAL R2
        7 GETTABLEKS                       R6 R0 K1 ["net"]
        9 LOADK                            R7 K2 ["%*."]
       10 MOVE                             R9 R1
       11 NAMECALL                         R7 R7 K3 ["format"]
       13 CALL                             R7 2 1
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K4 ["invoke"]
       17 MOVE                             R9 R6
       18 LOADK                            R10 K5 ["%*ResolvePluginGuiOwner"]
       19 MOVE                             R12 R7
       20 NAMECALL                         R10 R10 K3 ["format"]
       22 CALL                             R10 2 1
       23 CALL                             R8 2 1
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K4 ["invoke"]
       27 MOVE                             R10 R6
       28 LOADK                            R11 K6 ["%*SendPluginGuiInput"]
       29 MOVE                             R13 R7
       30 NAMECALL                         R11 R11 K3 ["format"]
       32 CALL                             R11 2 1
       33 CALL                             R9 2 1
       34 GETUPVAL                         R10 2
       35 GETTABLEKS                       R10 R10 K7 ["new"]
       37 CALL                             R10 0 1
       38 NAMECALL                         R11 R6 K8 ["GetIdentity"]
       40 CALL                             R11 1 1
       41 GETUPVAL                         R12 3
       42 GETTABLEKS                       R12 R12 K9 ["Identity"]
       44 GETTABLEKS                       R12 R12 K10 ["Standalone"]
       46 JUMPIFEQ                         R11 R12 ; [+17]
       48 NEWCLOSURE                       R15 P2
       49 CAPTURE                          VAL R4
       50 NAMECALL                         R13 R8 K11 ["Connect"]
       52 CALL                             R13 2 -1
       53 NAMECALL                         R11 R10 K12 ["Add"]
       55 CALL                             R11 -1 0
       56 NEWCLOSURE                       R15 P3
       57 CAPTURE                          VAL R5
       58 NAMECALL                         R13 R9 K11 ["Connect"]
       60 CALL                             R13 2 -1
       61 NAMECALL                         R11 R10 K12 ["Add"]
       63 CALL                             R11 -1 0
       64 GETTABLEKS                       R11 R0 K13 ["destroying"]
       66 NEWCLOSURE                       R13 P4
       67 CAPTURE                          VAL R10
       68 NAMECALL                         R11 R11 K14 ["Once"]
       70 CALL                             R11 2 0
       71 NEWCLOSURE                       R11 P5
       72 CAPTURE                          VAL R8
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          UPVAL U4
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R9
       78 RETURN                           R11 1

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
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R5 K10 ["DataModelType"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Flags"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K9 ["Util"]
       35 GETTABLEKS                       R7 R7 K12 ["NetworkingIdentity"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Tools"]
       42 GETTABLEKS                       R8 R8 K14 ["ToolTypes"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R3 K15 ["Remote"]
       47 GETTABLEKS                       R9 R7 K16 ["ToolNames"]
       49 DUPTABLE                         R10 K21 [{"Edit", "PlayClient", "PlayServer", "Standalone"}]
       50 GETTABLEKS                       R11 R4 K22 ["Types"]
       52 GETTABLEKS                       R11 R11 K17 ["Edit"]
       54 SETTABLEKS                       R11 R10 K17 ["Edit"]
       56 GETTABLEKS                       R11 R4 K22 ["Types"]
       58 GETTABLEKS                       R11 R11 K23 ["Client"]
       60 SETTABLEKS                       R11 R10 K18 ["PlayClient"]
       62 GETTABLEKS                       R11 R4 K22 ["Types"]
       64 GETTABLEKS                       R11 R11 K24 ["Server"]
       66 SETTABLEKS                       R11 R10 K19 ["PlayServer"]
       68 GETTABLEKS                       R11 R4 K22 ["Types"]
       70 GETTABLEKS                       R11 R11 K20 ["Standalone"]
       72 SETTABLEKS                       R11 R10 K20 ["Standalone"]
       74 NEWTABLE                         R11 4 0
       76 DUPCLOSURE                       R12 K25 [PROTO_0]
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R4
       79 SETTABLEKS                       R12 R11 K26 ["getAvailableDataModelTypes"]
       81 DUPCLOSURE                       R12 K27 [PROTO_1]
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R12 R11 K28 ["assertViewportDataModel"]
       86 DUPCLOSURE                       R12 K29 [PROTO_2]
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R9
       89 DUPCLOSURE                       R13 K30 [PROTO_9]
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R6
       95 SETTABLEKS                       R13 R11 K31 ["createRouter"]
       97 RETURN                           R11 1
