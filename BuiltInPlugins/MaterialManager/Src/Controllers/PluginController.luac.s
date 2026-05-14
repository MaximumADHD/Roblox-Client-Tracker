PROTO_0:
        0 DUPTABLE                         R6 K5 [{"_plugin", "_store", "_mouse", "_generalServiceController", "_mock"}]
        1 SETTABLEKS                       R0 R6 K0 ["_plugin"]
        3 SETTABLEKS                       R1 R6 K1 ["_store"]
        5 SETTABLEKS                       R2 R6 K2 ["_mouse"]
        7 SETTABLEKS                       R3 R6 K3 ["_generalServiceController"]
        9 SETTABLEKS                       R4 R6 K4 ["_mock"]
       11 GETUPVAL                         R7 0
       12 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       14 GETIMPORT                        R5 K7 [setmetatable]
       16 CALL                             R5 2 1
       17 LOADNIL                          R6
       18 SETTABLEKS                       R6 R5 K8 ["_mouseMoveConnection"]
       20 LOADNIL                          R6
       21 SETTABLEKS                       R6 R5 K9 ["_mouseClickedConnection"]
       23 LOADNIL                          R6
       24 SETTABLEKS                       R6 R5 K10 ["_deactivationConnection"]
       26 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["mock"]
        8 CALL                             R3 0 1
        9 LOADB                            R4 1
       10 CALL                             R0 4 -1
       11 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_mock"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["_plugin"]
        6 LOADK                            R3 K2 ["MaterialBrowserLayout"]
        7 NAMECALL                         R1 R1 K3 ["GetSetting"]
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R2 R0 K1 ["_plugin"]
       12 LOADK                            R4 K4 ["MaterialTileSize"]
       13 NAMECALL                         R2 R2 K3 ["GetSetting"]
       15 CALL                             R2 2 1
       16 GETTABLEKS                       R3 R0 K1 ["_plugin"]
       18 LOADK                            R5 K5 ["ViewType"]
       19 NAMECALL                         R3 R3 K3 ["GetSetting"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R1 ; [+8]
       23 GETTABLEKS                       R4 R0 K6 ["_store"]
       25 GETUPVAL                         R6 0
       26 MOVE                             R7 R1
       27 CALL                             R6 1 -1
       28 NAMECALL                         R4 R4 K7 ["dispatch"]
       30 CALL                             R4 -1 0
       31 JUMPIFNOT                        R2 ; [+8]
       32 GETTABLEKS                       R4 R0 K6 ["_store"]
       34 GETUPVAL                         R6 1
       35 MOVE                             R7 R2
       36 CALL                             R6 1 -1
       37 NAMECALL                         R4 R4 K7 ["dispatch"]
       39 CALL                             R4 -1 0
       40 JUMPIFNOT                        R3 ; [+8]
       41 GETTABLEKS                       R4 R0 K6 ["_store"]
       43 GETUPVAL                         R6 2
       44 MOVE                             R7 R3
       45 CALL                             R6 1 -1
       46 NAMECALL                         R4 R4 K7 ["dispatch"]
       48 CALL                             R4 -1 0
       49 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_mock"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K1 ["_plugin"]
        6 LOADK                            R4 K2 ["MaterialTileSize"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R2 K3 ["SetSetting"]
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_mock"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K1 ["_plugin"]
        6 LOADK                            R4 K2 ["ViewType"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R2 K3 ["SetSetting"]
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_mock"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K1 ["_plugin"]
        6 LOADK                            R4 K2 ["MaterialBrowserLayout"]
        7 MOVE                             R5 R1
        8 NAMECALL                         R2 R2 K3 ["SetSetting"]
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_mock"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["_mouseMoveConnection"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETTABLEKS                       R1 R0 K1 ["_mouseMoveConnection"]
        9 NAMECALL                         R1 R1 K2 ["Disconnect"]
       11 CALL                             R1 1 0
       12 GETTABLEKS                       R1 R0 K3 ["_mouseClickedConnection"]
       14 JUMPIFNOT                        R1 ; [+5]
       15 GETTABLEKS                       R1 R0 K3 ["_mouseClickedConnection"]
       17 NAMECALL                         R1 R1 K2 ["Disconnect"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K4 ["_deactivationConnection"]
       22 JUMPIFNOT                        R1 ; [+5]
       23 GETTABLEKS                       R1 R0 K4 ["_deactivationConnection"]
       25 NAMECALL                         R1 R1 K2 ["Disconnect"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K5 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Actions"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R3 K10 ["SetMaterialBrowserLayout"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R3 K11 ["SetMaterialTileSize"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETTABLEKS                       R7 R3 K12 ["SetViewType"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K4 [require]
       44 GETTABLEKS                       R8 R0 K5 ["Src"]
       46 GETTABLEKS                       R8 R8 K13 ["Controllers"]
       48 GETTABLEKS                       R8 R8 K14 ["GeneralServiceController"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R2 K15 ["ContextServices"]
       53 GETTABLEKS                       R8 R8 K16 ["ContextItem"]
       55 LOADK                            R11 K17 ["PluginController"]
       56 NAMECALL                         R9 R8 K18 ["extend"]
       58 CALL                             R9 2 1
       59 DUPCLOSURE                       R10 K19 [PROTO_0]
       60 CAPTURE                          VAL R9
       61 SETTABLEKS                       R10 R9 K20 ["new"]
       63 DUPCLOSURE                       R10 K21 [PROTO_1]
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R7
       66 SETTABLEKS                       R10 R9 K22 ["mock"]
       68 DUPCLOSURE                       R10 K23 [PROTO_2]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 SETTABLEKS                       R10 R9 K24 ["initialize"]
       74 DUPCLOSURE                       R10 K25 [PROTO_3]
       75 SETTABLEKS                       R10 R9 K26 ["setMaterialTileSize"]
       77 DUPCLOSURE                       R10 K27 [PROTO_4]
       78 SETTABLEKS                       R10 R9 K28 ["setViewType"]
       80 DUPCLOSURE                       R10 K29 [PROTO_5]
       81 SETTABLEKS                       R10 R9 K30 ["setMaterialBrowserLayout"]
       83 DUPCLOSURE                       R10 K31 [PROTO_6]
       84 SETTABLEKS                       R10 R9 K32 ["destroy"]
       86 RETURN                           R9 1
