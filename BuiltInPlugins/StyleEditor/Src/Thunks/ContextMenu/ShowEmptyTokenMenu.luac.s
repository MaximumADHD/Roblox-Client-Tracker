PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Localization"]
        5 GETTABLEKS                       R5 R2 K2 ["Clipboard"]
        7 GETTABLEKS                       R5 R5 K3 ["Attribute"]
        9 JUMPIFNOTEQKNIL                  R5 ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 NEWTABLE                         R5 0 1
       15 DUPTABLE                         R6 K10 [{["Id"] = "Paste", ["Text"], ["Enabled"], ["Icon"], ["OnItemClicked"]}]
       16 LOADK                            R9 K11 ["ContextMenu"]
       17 LOADK                            R10 K5 ["Paste"]
       18 NAMECALL                         R7 R3 K12 ["getText"]
       20 CALL                             R7 3 1
       21 SETTABLEKS                       R7 R6 K6 ["Text"]
       23 SETTABLEKS                       R4 R6 K7 ["Enabled"]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K13 ["paste"]
       28 CALL                             R7 0 1
       29 SETTABLEKS                       R7 R6 K8 ["Icon"]
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 SETTABLEKS                       R7 R6 K9 ["OnItemClicked"]
       37 SETLIST                          R5 R6 1 [1]
       39 DUPTABLE                         R6 K16 [{["Id"] = "Token_Empty", ["Children"]}]
       40 SETTABLEKS                       R5 R6 K15 ["Children"]
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R7 R7 K17 ["trackClicks"]
       45 MOVE                             R8 R6
       46 GETTABLEKS                       R9 R1 K18 ["Telemetry"]
       48 CALL                             R7 2 0
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R7 R7 K19 ["showContextMenu"]
       52 GETTABLEKS                       R8 R1 K20 ["Plugin"]
       54 MOVE                             R9 R6
       55 CALL                             R7 2 0
       56 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

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
       46 GETTABLEKS                       R6 R6 K14 ["PasteStyleInstanceAttribute"]
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
