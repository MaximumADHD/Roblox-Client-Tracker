PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["Localization"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getRenameAction"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U1
        7 MOVE                             R5 R2
        8 CALL                             R3 2 1
        9 DUPTABLE                         R4 K5 [{["Id"] = "ThemeCategory_Folder", ["Children"]}]
       10 NEWTABLE                         R5 0 4
       12 DUPTABLE                         R6 K10 [{["Id"] = "New", ["Text"], ["Icon"], ["OnItemClicked"]}]
       13 LOADK                            R9 K11 ["ContextMenu"]
       14 LOADK                            R10 K12 ["NewThemeStyleSheet"]
       15 NAMECALL                         R7 R2 K13 ["getText"]
       17 CALL                             R7 3 1
       18 SETTABLEKS                       R7 R6 K7 ["Text"]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K14 ["new"]
       23 CALL                             R7 0 1
       24 SETTABLEKS                       R7 R6 K8 ["Icon"]
       26 NEWCLOSURE                       R7 P1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 SETTABLEKS                       R7 R6 K9 ["OnItemClicked"]
       32 DUPTABLE                         R7 K16 [{["Id"] = "Delete", ["Text"], ["Icon"], ["OnItemClicked"]}]
       33 LOADK                            R10 K11 ["ContextMenu"]
       34 LOADK                            R11 K15 ["Delete"]
       35 NAMECALL                         R8 R2 K13 ["getText"]
       37 CALL                             R8 3 1
       38 SETTABLEKS                       R8 R7 K7 ["Text"]
       40 GETUPVAL                         R8 2
       41 GETTABLEKS                       R8 R8 K17 ["delete"]
       43 CALL                             R8 0 1
       44 SETTABLEKS                       R8 R7 K8 ["Icon"]
       46 NEWCLOSURE                       R8 P2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U4
       50 SETTABLEKS                       R8 R7 K9 ["OnItemClicked"]
       52 MOVE                             R8 R3
       53 DUPTABLE                         R9 K19 [{["Id"] = "ShowInExplorer", ["Text"], ["Icon"], ["OnItemClicked"]}]
       54 LOADK                            R12 K11 ["ContextMenu"]
       55 LOADK                            R13 K18 ["ShowInExplorer"]
       56 NAMECALL                         R10 R2 K13 ["getText"]
       58 CALL                             R10 3 1
       59 SETTABLEKS                       R10 R9 K7 ["Text"]
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R10 R10 K20 ["getClassIcon"]
       64 LOADK                            R11 K21 ["ReplicatedStorage"]
       65 CALL                             R10 1 1
       66 SETTABLEKS                       R10 R9 K8 ["Icon"]
       68 NEWCLOSURE                       R10 P3
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          UPVAL U4
       72 SETTABLEKS                       R10 R9 K9 ["OnItemClicked"]
       74 SETLIST                          R5 R6 4 [1]
       76 SETTABLEKS                       R5 R4 K4 ["Children"]
       78 GETUPVAL                         R5 0
       79 GETTABLEKS                       R5 R5 K22 ["trackClicks"]
       81 MOVE                             R6 R4
       82 GETTABLEKS                       R7 R1 K23 ["Telemetry"]
       84 CALL                             R5 2 0
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R5 R5 K24 ["showContextMenu"]
       88 GETTABLEKS                       R6 R1 K25 ["Plugin"]
       90 MOVE                             R7 R4
       91 CALL                             R5 2 0
       92 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R2 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Util"]
       26 GETTABLEKS                       R3 R3 K9 ["MenuHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K10 ["Resources"]
       35 GETTABLEKS                       R4 R4 K11 ["ModernIcons"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R4 R0 K5 ["Src"]
       40 GETTABLEKS                       R4 R4 K12 ["Thunks"]
       42 GETIMPORT                        R5 K4 [require]
       44 GETTABLEKS                       R6 R4 K13 ["Change"]
       46 GETTABLEKS                       R6 R6 K14 ["CreateThemeSheet"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R4 K13 ["Change"]
       53 GETTABLEKS                       R7 R7 K15 ["DeleteInstance"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R8 R4 K13 ["Change"]
       60 GETTABLEKS                       R8 R8 K16 ["ShowInstanceInExplorer"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R9 R0 K5 ["Src"]
       67 GETTABLEKS                       R9 R9 K17 ["Types"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K4 [require]
       72 GETTABLEKS                       R10 R0 K5 ["Src"]
       74 GETTABLEKS                       R10 R10 K12 ["Thunks"]
       76 GETTABLEKS                       R10 R10 K17 ["Types"]
       78 CALL                             R9 1 1
       79 DUPCLOSURE                       R10 K18 [PROTO_5]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R7
       85 RETURN                           R10 1
