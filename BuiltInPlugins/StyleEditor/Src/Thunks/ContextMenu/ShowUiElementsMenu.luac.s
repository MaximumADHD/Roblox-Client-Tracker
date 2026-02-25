PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R2 K1 ["Selector"]
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
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["getClassTypeActions"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 MOVE                             R6 R3
       13 CALL                             R4 2 1
       14 GETTABLEKS                       R7 R2 K3 ["Clipboard"]
       16 GETTABLEKS                       R6 R7 K4 ["Instance"]
       18 JUMPIFNOTEQKNIL                  R6 ; [+2]
       20 LOADB                            R5 0 +1
       21 LOADB                            R5 1
       22 DUPTABLE                         R6 K7 [{"Id", "Children"}]
       23 LOADK                            R7 K8 ["DesignCategory_UiElements"]
       24 SETTABLEKS                       R7 R6 K5 ["Id"]
       26 NEWTABLE                         R7 0 2
       28 DUPTABLE                         R8 K11 [{"Id", "Text", "Icon", "Children"}]
       29 LOADK                            R9 K12 ["New"]
       30 SETTABLEKS                       R9 R8 K5 ["Id"]
       32 LOADK                            R11 K13 ["ContextMenu"]
       33 LOADK                            R12 K12 ["New"]
       34 NAMECALL                         R9 R3 K14 ["getText"]
       36 CALL                             R9 3 1
       37 SETTABLEKS                       R9 R8 K9 ["Text"]
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R9 R10 K15 ["new"]
       42 CALL                             R9 0 1
       43 SETTABLEKS                       R9 R8 K10 ["Icon"]
       45 SETTABLEKS                       R4 R8 K6 ["Children"]
       47 DUPTABLE                         R9 K18 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
       48 LOADK                            R10 K19 ["PasteInto"]
       49 SETTABLEKS                       R10 R9 K5 ["Id"]
       51 LOADK                            R12 K13 ["ContextMenu"]
       52 LOADK                            R13 K19 ["PasteInto"]
       53 NAMECALL                         R10 R3 K14 ["getText"]
       55 CALL                             R10 3 1
       56 SETTABLEKS                       R10 R9 K9 ["Text"]
       58 GETUPVAL                         R11 3
       59 GETTABLEKS                       R10 R11 K20 ["paste"]
       61 CALL                             R10 0 1
       62 SETTABLEKS                       R10 R9 K10 ["Icon"]
       64 SETTABLEKS                       R5 R9 K16 ["Enabled"]
       66 NEWCLOSURE                       R10 P1
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          UPVAL U2
       70 SETTABLEKS                       R10 R9 K17 ["OnItemClicked"]
       72 SETLIST                          R7 R8 2 [1]
       74 SETTABLEKS                       R7 R6 K6 ["Children"]
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R7 R8 K21 ["trackClicks"]
       79 MOVE                             R8 R6
       80 GETTABLEKS                       R9 R1 K22 ["Telemetry"]
       82 CALL                             R7 2 0
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R7 R8 K23 ["showContextMenu"]
       86 GETTABLEKS                       R8 R1 K24 ["Plugin"]
       88 MOVE                             R9 R6
       89 CALL                             R7 2 0
       90 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

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
       46 GETTABLEKS                       R6 R7 K14 ["CreateStyleRule"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R8 R4 K13 ["Change"]
       53 GETTABLEKS                       R7 R8 K15 ["PasteInstanceInto"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R9 R0 K5 ["Src"]
       60 GETTABLEKS                       R8 R9 K16 ["Types"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R11 R0 K5 ["Src"]
       67 GETTABLEKS                       R10 R11 K12 ["Thunks"]
       69 GETTABLEKS                       R9 R10 K16 ["Types"]
       71 CALL                             R8 1 1
       72 DUPCLOSURE                       R9 K17 [PROTO_3]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R6
       77 RETURN                           R9 1
