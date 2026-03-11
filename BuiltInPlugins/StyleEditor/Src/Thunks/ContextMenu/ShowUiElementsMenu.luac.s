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
       14 GETUPVAL                         R6 3
       15 JUMPIFNOT                        R6 ; [+11]
       16 GETTABLEKS                       R8 R2 K3 ["Clipboard"]
       18 GETTABLEKS                       R7 R8 K4 ["Instances"]
       20 LENGTH                           R6 R7
       21 LOADN                            R7 0
       22 JUMPIFLT                         R7 R6 ; [+2]
       24 LOADB                            R5 0 +1
       25 LOADB                            R5 1
       26 JUMP                             ; [+8]
       27 GETTABLEKS                       R7 R2 K3 ["Clipboard"]
       29 GETTABLEKS                       R6 R7 K5 ["DEPRECATED_Instance"]
       31 JUMPIFNOTEQKNIL                  R6 ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 DUPTABLE                         R6 K8 [{"Id", "Children"}]
       36 LOADK                            R7 K9 ["DesignCategory_UiElements"]
       37 SETTABLEKS                       R7 R6 K6 ["Id"]
       39 NEWTABLE                         R7 0 2
       41 DUPTABLE                         R8 K12 [{"Id", "Text", "Icon", "Children"}]
       42 LOADK                            R9 K13 ["New"]
       43 SETTABLEKS                       R9 R8 K6 ["Id"]
       45 LOADK                            R11 K14 ["ContextMenu"]
       46 LOADK                            R12 K13 ["New"]
       47 NAMECALL                         R9 R3 K15 ["getText"]
       49 CALL                             R9 3 1
       50 SETTABLEKS                       R9 R8 K10 ["Text"]
       52 GETUPVAL                         R10 4
       53 GETTABLEKS                       R9 R10 K16 ["new"]
       55 CALL                             R9 0 1
       56 SETTABLEKS                       R9 R8 K11 ["Icon"]
       58 SETTABLEKS                       R4 R8 K7 ["Children"]
       60 DUPTABLE                         R9 K19 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
       61 LOADK                            R10 K20 ["PasteInto"]
       62 SETTABLEKS                       R10 R9 K6 ["Id"]
       64 LOADK                            R12 K14 ["ContextMenu"]
       65 LOADK                            R13 K20 ["PasteInto"]
       66 NAMECALL                         R10 R3 K15 ["getText"]
       68 CALL                             R10 3 1
       69 SETTABLEKS                       R10 R9 K10 ["Text"]
       71 GETUPVAL                         R11 4
       72 GETTABLEKS                       R10 R11 K21 ["paste"]
       74 CALL                             R10 0 1
       75 SETTABLEKS                       R10 R9 K11 ["Icon"]
       77 SETTABLEKS                       R5 R9 K17 ["Enabled"]
       79 NEWCLOSURE                       R10 P1
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          UPVAL U2
       83 SETTABLEKS                       R10 R9 K18 ["OnItemClicked"]
       85 SETLIST                          R7 R8 2 [1]
       87 SETTABLEKS                       R7 R6 K7 ["Children"]
       89 GETUPVAL                         R8 0
       90 GETTABLEKS                       R7 R8 K22 ["trackClicks"]
       92 MOVE                             R8 R6
       93 GETTABLEKS                       R9 R1 K23 ["Telemetry"]
       95 CALL                             R7 2 0
       96 GETUPVAL                         R8 0
       97 GETTABLEKS                       R7 R8 K24 ["showContextMenu"]
       99 GETTABLEKS                       R8 R1 K25 ["Plugin"]
      101 MOVE                             R9 R6
      102 CALL                             R7 2 0
      103 RETURN                           R0 0

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
       58 GETTABLEKS                       R10 R0 K5 ["Src"]
       60 GETTABLEKS                       R9 R10 K16 ["Flags"]
       62 GETTABLEKS                       R8 R9 K17 ["getFFlagStyleQuery"]
       64 CALL                             R7 1 1
       65 CALL                             R7 0 1
       66 GETIMPORT                        R8 K4 [require]
       68 GETTABLEKS                       R10 R0 K5 ["Src"]
       70 GETTABLEKS                       R9 R10 K18 ["Types"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K4 [require]
       75 GETTABLEKS                       R12 R0 K5 ["Src"]
       77 GETTABLEKS                       R11 R12 K12 ["Thunks"]
       79 GETTABLEKS                       R10 R11 K18 ["Types"]
       81 CALL                             R9 1 1
       82 DUPCLOSURE                       R10 K19 [PROTO_3]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R6
       88 RETURN                           R10 1
