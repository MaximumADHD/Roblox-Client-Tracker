PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 CALL                             R3 0 -1
        3 NAMECALL                         R1 R1 K0 ["dispatch"]
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["Localization"]
        2 DUPTABLE                         R3 K3 [{"Id", "Children"}]
        3 LOADK                            R4 K4 ["ThemeCategory"]
        4 SETTABLEKS                       R4 R3 K1 ["Id"]
        6 NEWTABLE                         R4 0 1
        8 DUPTABLE                         R5 K8 [{"Id", "Text", "Icon", "OnItemClicked"}]
        9 LOADK                            R6 K9 ["New"]
       10 SETTABLEKS                       R6 R5 K1 ["Id"]
       12 LOADK                            R8 K10 ["ContextMenu"]
       13 LOADK                            R9 K11 ["NewThemeFolder"]
       14 NAMECALL                         R6 R2 K12 ["getText"]
       16 CALL                             R6 3 1
       17 SETTABLEKS                       R6 R5 K5 ["Text"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K13 ["new"]
       22 CALL                             R6 0 1
       23 SETTABLEKS                       R6 R5 K6 ["Icon"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U1
       28 SETTABLEKS                       R6 R5 K7 ["OnItemClicked"]
       30 SETLIST                          R4 R5 1 [1]
       32 SETTABLEKS                       R4 R3 K2 ["Children"]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R4 R5 K14 ["trackClicks"]
       37 MOVE                             R5 R3
       38 GETTABLEKS                       R6 R1 K15 ["Telemetry"]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R4 R5 K16 ["showContextMenu"]
       44 GETTABLEKS                       R5 R1 K17 ["Plugin"]
       46 MOVE                             R6 R3
       47 CALL                             R4 2 0
       48 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Reducers"]
       17 GETTABLEKS                       R2 R3 K7 ["RootReducer"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Util"]
       26 GETTABLEKS                       R3 R4 K9 ["MenuHelpers"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K10 ["Resources"]
       35 GETTABLEKS                       R4 R5 K11 ["ModernIcons"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R4 R5 K12 ["Thunks"]
       42 GETIMPORT                        R5 K4 [require]
       44 GETTABLEKS                       R7 R4 K13 ["Change"]
       46 GETTABLEKS                       R6 R7 K14 ["CreateThemeCategory"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R8 R0 K5 ["Src"]
       53 GETTABLEKS                       R7 R8 K15 ["Types"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R10 R0 K5 ["Src"]
       60 GETTABLEKS                       R9 R10 K12 ["Thunks"]
       62 GETTABLEKS                       R8 R9 K15 ["Types"]
       64 CALL                             R7 1 1
       65 DUPCLOSURE                       R8 K16 [PROTO_2]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R2
       69 RETURN                           R8 1
