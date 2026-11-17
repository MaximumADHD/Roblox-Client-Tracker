PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LOADNIL                          R4
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["Localization"]
        2 DUPTABLE                         R3 K4 [{["Id"] = "ThemeCategory_Other", ["Children"]}]
        3 NEWTABLE                         R4 0 1
        5 DUPTABLE                         R5 K9 [{["Id"] = "New", ["Text"], ["Icon"], ["OnItemClicked"]}]
        6 LOADK                            R8 K10 ["ContextMenu"]
        7 LOADK                            R9 K5 ["New"]
        8 NAMECALL                         R6 R2 K11 ["getText"]
       10 CALL                             R6 3 1
       11 SETTABLEKS                       R6 R5 K6 ["Text"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K12 ["new"]
       16 CALL                             R6 0 1
       17 SETTABLEKS                       R6 R5 K7 ["Icon"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U1
       22 SETTABLEKS                       R6 R5 K8 ["OnItemClicked"]
       24 SETLIST                          R4 R5 1 [1]
       26 SETTABLEKS                       R4 R3 K3 ["Children"]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K13 ["trackClicks"]
       31 MOVE                             R5 R3
       32 GETTABLEKS                       R6 R1 K14 ["Telemetry"]
       34 CALL                             R4 2 0
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K15 ["showContextMenu"]
       38 GETTABLEKS                       R5 R1 K16 ["Plugin"]
       40 MOVE                             R6 R3
       41 CALL                             R4 2 0
       42 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

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
       51 GETTABLEKS                       R7 R0 K5 ["Src"]
       53 GETTABLEKS                       R7 R7 K15 ["Types"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R8 R0 K5 ["Src"]
       60 GETTABLEKS                       R8 R8 K12 ["Thunks"]
       62 GETTABLEKS                       R8 R8 K15 ["Types"]
       64 CALL                             R7 1 1
       65 DUPCLOSURE                       R8 K16 [PROTO_2]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R2
       69 RETURN                           R8 1
