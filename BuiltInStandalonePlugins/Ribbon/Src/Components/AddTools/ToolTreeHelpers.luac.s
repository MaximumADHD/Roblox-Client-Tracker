PROTO_0:
        0 LOADK                            R2 K0 ["%*.%*"]
        1 GETTABLEKS                       R4 R0 K1 ["PluginType"]
        3 GETTABLEKS                       R5 R0 K2 ["PluginId"]
        5 NAMECALL                         R2 R2 K3 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["Type"]
        6 JUMPIFNOTEQKS                    R7 K1 ["IconButton"] ; [+15]
        8 GETTABLEKS                       R7 R6 K2 ["Action"]
       10 JUMPIFEQKNIL                     R7 ; [+11]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K3 ["equals"]
       15 GETTABLEKS                       R8 R6 K2 ["Action"]
       17 MOVE                             R9 R1
       18 CALL                             R7 2 1
       19 JUMPIFNOT                        R7 ; [+2]
       20 LOADB                            R7 1
       21 RETURN                           R7 1
       22 FORGLOOP                         R2 2 ; [-19]
       24 LOADB                            R2 0
       25 RETURN                           R2 1

PROTO_2:
        0 LOADB                            R2 1
        1 LOADB                            R3 0
        2 MOVE                             R4 R1
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R9 R9 K0 ["doesUriExistInTab"]
        9 MOVE                             R10 R0
       10 GETTABLEKS                       R11 R8 K1 ["Uri"]
       12 CALL                             R9 2 1
       13 JUMPIFNOT                        R9 ; [+2]
       14 LOADB                            R3 1
       15 JUMP                             ; [+1]
       16 LOADB                            R2 0
       17 FORGLOOP                         R4 2 ; [-12]
       19 JUMPIFNOT                        R3 ; [+3]
       20 JUMPIF                           R2 ; [+2]
       21 LOADK                            R4 K2 ["Indeterminate"]
       22 RETURN                           R4 1
       23 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R2 K5 [{"Icon", "Placed", "Title", "Description", "Uri"}]
        1 GETTABLEKS                       R3 R1 K0 ["Icon"]
        3 SETTABLEKS                       R3 R2 K0 ["Icon"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K6 ["doesUriExistInTab"]
        8 MOVE                             R4 R0
        9 GETTABLEKS                       R5 R1 K4 ["Uri"]
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K1 ["Placed"]
       14 GETTABLEKS                       R3 R1 K7 ["Text"]
       16 SETTABLEKS                       R3 R2 K2 ["Title"]
       18 GETTABLEKS                       R3 R1 K8 ["Tooltip"]
       20 SETTABLEKS                       R3 R2 K3 ["Description"]
       22 GETTABLEKS                       R3 R1 K4 ["Uri"]
       24 SETTABLEKS                       R3 R2 K4 ["Uri"]
       26 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Text"]
        3 NAMECALL                         R0 R0 K1 ["lower"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R0 R0 K2 ["match"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 2
        6 AND                              R3 R1 R2
        7 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKS                       R1 K0 ["All"] ; [+10]
        3 GETTABLEKS                       R1 R0 K1 ["Uri"]
        5 GETTABLEKS                       R1 R1 K2 ["DataModel"]
        7 GETUPVAL                         R2 0
        8 JUMPIFEQ                         R1 R2 ; [+3]
       10 LOADB                            R1 0
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 1
       13 JUMPIFNOTEQKS                    R1 K3 ["LocalPlugins"] ; [+10]
       15 GETTABLEKS                       R2 R0 K1 ["Uri"]
       17 GETTABLEKS                       R2 R2 K4 ["PluginType"]
       19 JUMPIFEQKS                       R2 K5 ["Local"] ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 RETURN                           R1 1
       24 GETUPVAL                         R1 1
       25 JUMPIFNOTEQKS                    R1 K6 ["CloudPlugins"] ; [+10]
       27 GETTABLEKS                       R2 R0 K1 ["Uri"]
       29 GETTABLEKS                       R2 R2 K4 ["PluginType"]
       31 JUMPIFEQKS                       R2 K7 ["Cloud"] ; [+2]
       33 LOADB                            R1 0 +1
       34 LOADB                            R1 1
       35 RETURN                           R1 1
       36 LOADB                            R1 1
       37 GETTABLEKS                       R2 R0 K1 ["Uri"]
       39 GETTABLEKS                       R2 R2 K4 ["PluginType"]
       41 JUMPIFEQKS                       R2 K7 ["Cloud"] ; [+9]
       43 GETTABLEKS                       R2 R0 K1 ["Uri"]
       45 GETTABLEKS                       R2 R2 K4 ["PluginType"]
       47 JUMPIFEQKS                       R2 K5 ["Local"] ; [+2]
       49 LOADB                            R1 0 +1
       50 LOADB                            R1 1
       51 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["Uri"]
        2 LOADK                            R3 K1 ["%*.%*"]
        3 GETTABLEKS                       R5 R2 K2 ["PluginType"]
        5 GETTABLEKS                       R6 R2 K3 ["PluginId"]
        7 NAMECALL                         R3 R3 K4 ["format"]
        9 CALL                             R3 3 1
       10 MOVE                             R1 R3
       11 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R3 K0 ["%*.%*"]
        1 GETTABLEKS                       R5 R1 K1 ["PluginType"]
        3 GETTABLEKS                       R6 R1 K2 ["PluginId"]
        5 NAMECALL                         R3 R3 K3 ["format"]
        7 CALL                             R3 3 1
        8 MOVE                             R2 R3
        9 MOVE                             R3 R1
       10 RETURN                           R2 2

PROTO_9:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Uri"]
        4 GETTABLEKS                       R2 R2 K1 ["ItemId"]
        6 GETTABLEKS                       R3 R0 K0 ["Uri"]
        8 GETTABLEKS                       R3 R3 K1 ["ItemId"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+14]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["Uri"]
       15 GETTABLEKS                       R2 R2 K2 ["PluginId"]
       17 GETTABLEKS                       R3 R0 K0 ["Uri"]
       19 GETTABLEKS                       R3 R3 K2 ["PluginId"]
       21 JUMPIFEQ                         R2 R3 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["Uri"]
        2 GETTABLEKS                       R2 R2 K1 ["DataModel"]
        4 JUMPIFEQKS                       R2 K2 ["Standalone"] ; [+15]
        6 GETTABLEKS                       R2 R1 K0 ["Uri"]
        8 GETTABLEKS                       R2 R2 K1 ["DataModel"]
       10 JUMPIFEQKS                       R2 K3 ["Edit"] ; [+9]
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R3 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R1
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+2]
       18 LOADNIL                          R3
       19 RETURN                           R3 1
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K4 ["getItemForAction"]
       23 GETUPVAL                         R3 3
       24 MOVE                             R4 R1
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_11:
        0 GETTABLEN                        R2 R1 1
        1 JUMPIF                           R2 ; [+2]
        2 LOADNIL                          R3
        3 RETURN                           R3 1
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R0
        6 JUMPIF                           R3 ; [+29]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["wrap"]
       10 DUPTABLE                         R4 K6 [{"DataModel", "PluginType", "PluginId", "ItemId", "Category"}]
       11 GETTABLEKS                       R5 R2 K7 ["Uri"]
       13 GETTABLEKS                       R5 R5 K1 ["DataModel"]
       15 SETTABLEKS                       R5 R4 K1 ["DataModel"]
       17 GETTABLEKS                       R5 R2 K7 ["Uri"]
       19 GETTABLEKS                       R5 R5 K2 ["PluginType"]
       21 SETTABLEKS                       R5 R4 K2 ["PluginType"]
       23 GETTABLEKS                       R5 R2 K7 ["Uri"]
       25 GETTABLEKS                       R5 R5 K3 ["PluginId"]
       27 SETTABLEKS                       R5 R4 K3 ["PluginId"]
       29 LOADK                            R5 K8 ["Toolbar"]
       30 SETTABLEKS                       R5 R4 K4 ["ItemId"]
       32 LOADK                            R5 K9 ["Tool"]
       33 SETTABLEKS                       R5 R4 K5 ["Category"]
       35 CALL                             R3 1 1
       36 DUPTABLE                         R4 K15 [{"Children", "Icon", "Title", "Description", "Placed", "Uri"}]
       37 GETUPVAL                         R5 2
       38 MOVE                             R6 R1
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 CALL                             R5 2 1
       45 SETTABLEKS                       R5 R4 K10 ["Children"]
       47 GETTABLEN                        R5 R1 1
       48 GETTABLEKS                       R5 R5 K11 ["Icon"]
       50 SETTABLEKS                       R5 R4 K11 ["Icon"]
       52 GETTABLEKS                       R5 R3 K4 ["ItemId"]
       54 SETTABLEKS                       R5 R4 K12 ["Title"]
       56 GETUPVAL                         R5 6
       57 LOADK                            R7 K16 ["Plugin"]
       58 LOADK                            R8 K17 ["ToolPluginName"]
       59 DUPTABLE                         R9 K20 [{"pluginType", "pluginName"}]
       60 GETTABLEKS                       R10 R3 K2 ["PluginType"]
       62 SETTABLEKS                       R10 R9 K18 ["pluginType"]
       64 GETTABLEKS                       R10 R3 K3 ["PluginId"]
       66 SETTABLEKS                       R10 R9 K19 ["pluginName"]
       68 NAMECALL                         R5 R5 K21 ["getText"]
       70 CALL                             R5 4 1
       71 SETTABLEKS                       R5 R4 K13 ["Description"]
       73 GETUPVAL                         R5 4
       74 GETTABLEKS                       R5 R5 K22 ["isActionGroupPlacedInTab"]
       76 GETUPVAL                         R6 5
       77 MOVE                             R7 R1
       78 CALL                             R5 2 1
       79 SETTABLEKS                       R5 R4 K14 ["Placed"]
       81 SETTABLEKS                       R3 R4 K7 ["Uri"]
       83 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKS                       R1 K0 ["All"] ; [+13]
        3 GETUPVAL                         R1 0
        4 JUMPIFEQKS                       R1 K1 ["Edit"] ; [+10]
        6 GETTABLEKS                       R1 R0 K2 ["Uri"]
        8 GETTABLEKS                       R1 R1 K3 ["DataModel"]
       10 GETUPVAL                         R2 0
       11 JUMPIFEQ                         R1 R2 ; [+3]
       13 LOADB                            R1 0
       14 RETURN                           R1 1
       15 LOADB                            R1 0
       16 GETTABLEKS                       R2 R0 K2 ["Uri"]
       18 GETTABLEKS                       R2 R2 K4 ["PluginType"]
       20 JUMPIFEQKS                       R2 K5 ["Cloud"] ; [+14]
       22 LOADB                            R1 0
       23 GETTABLEKS                       R2 R0 K2 ["Uri"]
       25 GETTABLEKS                       R2 R2 K4 ["PluginType"]
       27 JUMPIFEQKS                       R2 K6 ["Local"] ; [+7]
       29 GETTABLEKS                       R2 R0 K7 ["Text"]
       31 JUMPIFNOTEQKS                    R2 K8 [""] ; [+2]
       33 LOADB                            R1 0 +1
       34 LOADB                            R1 1
       35 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getItemForAction"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["Title"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+20]
        4 GETTABLEKS                       R2 R1 K0 ["Title"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+14]
        8 GETTABLEKS                       R3 R0 K1 ["Uri"]
       10 GETTABLEKS                       R3 R3 K2 ["PluginId"]
       12 GETTABLEKS                       R4 R1 K1 ["Uri"]
       14 GETTABLEKS                       R4 R4 K2 ["PluginId"]
       16 JUMPIFLT                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 LOADB                            R2 1
       22 RETURN                           R2 1
       23 GETTABLEKS                       R2 R1 K0 ["Title"]
       25 JUMPIFNOTEQKNIL                  R2 ; [+3]
       27 LOADB                            R2 0
       28 RETURN                           R2 1
       29 GETUPVAL                         R2 0
       30 JUMPIFNOTEQKS                    R2 K3 ["A-Z"] ; [+10]
       32 GETTABLEKS                       R3 R0 K0 ["Title"]
       34 GETTABLEKS                       R4 R1 K0 ["Title"]
       36 JUMPIFLT                         R3 R4 ; [+2]
       38 LOADB                            R2 0 +1
       39 LOADB                            R2 1
       40 RETURN                           R2 1
       41 GETTABLEKS                       R3 R0 K0 ["Title"]
       43 GETTABLEKS                       R4 R1 K0 ["Title"]
       45 JUMPIFLT                         R4 R3 ; [+2]
       47 LOADB                            R2 0 +1
       48 LOADB                            R2 1
       49 RETURN                           R2 1

PROTO_15:
        0 JUMPIFEQKS                       R4 K0 [""] ; [+7]
        2 GETUPVAL                         R8 0
        3 MOVE                             R9 R2
        4 NEWCLOSURE                       R10 P0
        5 CAPTURE                          VAL R4
        6 CALL                             R8 2 1
        7 JUMP                             ; [+1]
        8 MOVE                             R8 R2
        9 JUMPIFNOTEQKS                    R5 K1 ["RobloxStudio"] ; [+2]
       11 LOADB                            R9 0 +1
       12 LOADB                            R9 1
       13 JUMPIFNOT                        R9 ; [+7]
       14 GETUPVAL                         R10 0
       15 MOVE                             R11 R8
       16 NEWCLOSURE                       R12 P1
       17 CAPTURE                          VAL R7
       18 CAPTURE                          VAL R5
       19 CALL                             R10 2 1
       20 JUMP                             ; [+1]
       21 GETUPVAL                         R10 1
       22 JUMPIFNOT                        R9 ; [+5]
       23 GETUPVAL                         R11 2
       24 MOVE                             R12 R10
       25 DUPCLOSURE                       R13 K2 [PROTO_7]
       26 CALL                             R11 2 1
       27 JUMP                             ; [+1]
       28 GETUPVAL                         R11 1
       29 GETUPVAL                         R12 3
       30 MOVE                             R13 R3
       31 DUPCLOSURE                       R14 K3 [PROTO_8]
       32 CALL                             R12 2 1
       33 JUMPIFNOT                        R9 ; [+12]
       34 GETUPVAL                         R13 4
       35 MOVE                             R14 R11
       36 NEWCLOSURE                       R15 P4
       37 CAPTURE                          VAL R12
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R0
       44 CALL                             R13 2 1
       45 JUMP                             ; [+1]
       46 GETUPVAL                         R13 1
       47 LOADB                            R14 1
       48 JUMPIFEQKS                       R5 K4 ["AllCreators"] ; [+5]
       50 JUMPIFEQKS                       R5 K1 ["RobloxStudio"] ; [+2]
       52 LOADB                            R14 0 +1
       53 LOADB                            R14 1
       54 JUMPIFNOT                        R14 ; [+6]
       55 GETUPVAL                         R15 0
       56 MOVE                             R16 R8
       57 NEWCLOSURE                       R17 P5
       58 CAPTURE                          VAL R7
       59 CALL                             R15 2 1
       60 JUMP                             ; [+1]
       61 GETUPVAL                         R15 1
       62 JUMPIFNOT                        R14 ; [+7]
       63 GETUPVAL                         R16 8
       64 MOVE                             R17 R15
       65 NEWCLOSURE                       R18 P6
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          VAL R1
       68 CALL                             R16 2 1
       69 JUMP                             ; [+1]
       70 GETUPVAL                         R16 1
       71 GETUPVAL                         R17 9
       72 NEWTABLE                         R18 0 0
       74 MOVE                             R19 R13
       75 MOVE                             R20 R16
       76 CALL                             R17 3 1
       77 GETIMPORT                        R18 K7 [table.sort]
       79 MOVE                             R19 R17
       80 NEWCLOSURE                       R20 P7
       81 CAPTURE                          VAL R6
       82 CALL                             R18 2 0
       83 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["Util"]
       23 GETTABLEKS                       R3 R3 K11 ["StudioUri"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K8 ["Packages"]
       29 GETTABLEKS                       R5 R5 K12 ["Dash"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K13 ["append"]
       34 GETTABLEKS                       R6 R4 K14 ["collect"]
       36 GETTABLEKS                       R7 R4 K15 ["collectArray"]
       38 GETTABLEKS                       R8 R4 K16 ["filter"]
       40 GETTABLEKS                       R9 R4 K17 ["groupBy"]
       42 GETTABLEKS                       R10 R4 K18 ["map"]
       44 GETTABLEKS                       R11 R4 K19 ["find"]
       46 NEWTABLE                         R12 0 0
       48 DUPCLOSURE                       R13 K20 [PROTO_0]
       49 NEWTABLE                         R14 4 0
       51 DUPCLOSURE                       R15 K21 [PROTO_1]
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R15 R14 K22 ["doesUriExistInTab"]
       55 DUPCLOSURE                       R15 K23 [PROTO_2]
       56 CAPTURE                          VAL R14
       57 SETTABLEKS                       R15 R14 K24 ["isActionGroupPlacedInTab"]
       59 DUPCLOSURE                       R15 K25 [PROTO_3]
       60 CAPTURE                          VAL R14
       61 SETTABLEKS                       R15 R14 K26 ["getItemForAction"]
       63 DUPCLOSURE                       R15 K27 [PROTO_15]
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R14
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R5
       74 SETTABLEKS                       R15 R14 K28 ["getItems"]
       76 RETURN                           R14 1
