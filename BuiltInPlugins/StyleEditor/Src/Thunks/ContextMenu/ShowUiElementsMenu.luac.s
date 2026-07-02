PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R1 K1 ["Selector"]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R4 1
        6 GETUPVAL                         R5 2
        7 MOVE                             R6 R1
        8 LOADB                            R7 1
        9 CALL                             R4 3 -1
       10 NAMECALL                         R2 R2 K2 ["dispatch"]
       12 CALL                             R2 -1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Localization"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["getClassTypeActions"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 MOVE                             R6 R3
       13 CALL                             R4 2 1
       14 GETUPVAL                         R6 3
       15 JUMPIFNOT                        R6 ; [+11]
       16 GETTABLEKS                       R7 R2 K3 ["Clipboard"]
       18 GETTABLEKS                       R7 R7 K4 ["Instances"]
       20 LENGTH                           R6 R7
       21 LOADN                            R7 0
       22 JUMPIFLT                         R7 R6 ; [+2]
       24 LOADB                            R5 0 +1
       25 LOADB                            R5 1
       26 JUMP                             ; [+8]
       27 GETTABLEKS                       R6 R2 K3 ["Clipboard"]
       29 GETTABLEKS                       R6 R6 K5 ["DEPRECATED_Instance"]
       31 JUMPIFNOTEQKNIL                  R6 ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 DUPTABLE                         R6 K9 [{["Id"] = "DesignCategory_UiElements", ["Children"]}]
       36 NEWTABLE                         R7 0 2
       38 DUPTABLE                         R8 K13 [{["Id"] = "New", ["Text"], ["Icon"], ["Children"]}]
       39 LOADK                            R11 K14 ["ContextMenu"]
       40 LOADK                            R12 K10 ["New"]
       41 NAMECALL                         R9 R3 K15 ["getText"]
       43 CALL                             R9 3 1
       44 SETTABLEKS                       R9 R8 K11 ["Text"]
       46 GETUPVAL                         R9 4
       47 GETTABLEKS                       R9 R9 K16 ["new"]
       49 CALL                             R9 0 1
       50 SETTABLEKS                       R9 R8 K12 ["Icon"]
       52 SETTABLEKS                       R4 R8 K8 ["Children"]
       54 DUPTABLE                         R9 K20 [{["Id"] = "PasteInto", ["Text"], ["Icon"], ["Enabled"], ["OnItemClicked"]}]
       55 LOADK                            R12 K14 ["ContextMenu"]
       56 LOADK                            R13 K17 ["PasteInto"]
       57 NAMECALL                         R10 R3 K15 ["getText"]
       59 CALL                             R10 3 1
       60 SETTABLEKS                       R10 R9 K11 ["Text"]
       62 GETUPVAL                         R10 4
       63 GETTABLEKS                       R10 R10 K21 ["paste"]
       65 CALL                             R10 0 1
       66 SETTABLEKS                       R10 R9 K12 ["Icon"]
       68 SETTABLEKS                       R5 R9 K18 ["Enabled"]
       70 NEWCLOSURE                       R10 P1
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          UPVAL U2
       74 SETTABLEKS                       R10 R9 K19 ["OnItemClicked"]
       76 SETLIST                          R7 R8 2 [1]
       78 SETTABLEKS                       R7 R6 K8 ["Children"]
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K22 ["trackClicks"]
       83 MOVE                             R8 R6
       84 GETTABLEKS                       R9 R1 K23 ["Telemetry"]
       86 CALL                             R7 2 0
       87 GETUPVAL                         R7 0
       88 GETTABLEKS                       R7 R7 K24 ["showContextMenu"]
       90 GETTABLEKS                       R8 R1 K25 ["Plugin"]
       92 MOVE                             R9 R6
       93 CALL                             R7 2 0
       94 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 RETURN                           R1 1

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
       46 GETTABLEKS                       R6 R6 K14 ["CreateStyleRule"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R4 K13 ["Change"]
       53 GETTABLEKS                       R7 R7 K15 ["PasteInstanceInto"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R8 R0 K5 ["Src"]
       60 GETTABLEKS                       R8 R8 K16 ["Flags"]
       62 GETTABLEKS                       R8 R8 K17 ["getFFlagStyleQuery"]
       64 CALL                             R7 1 1
       65 CALL                             R7 0 1
       66 GETIMPORT                        R8 K4 [require]
       68 GETTABLEKS                       R9 R0 K5 ["Src"]
       70 GETTABLEKS                       R9 R9 K18 ["Types"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K4 [require]
       75 GETTABLEKS                       R10 R0 K5 ["Src"]
       77 GETTABLEKS                       R10 R10 K12 ["Thunks"]
       79 GETTABLEKS                       R10 R10 K18 ["Types"]
       81 CALL                             R9 1 1
       82 DUPCLOSURE                       R10 K19 [PROTO_3]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R6
       88 RETURN                           R10 1
