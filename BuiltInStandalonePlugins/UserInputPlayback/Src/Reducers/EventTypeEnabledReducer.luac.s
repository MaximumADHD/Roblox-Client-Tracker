PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"gamepad"}]
        3 GETTABLEKS                       R5 R1 K2 ["gamepadEnabled"]
        5 SETTABLEKS                       R5 R4 K0 ["gamepad"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"keyboard"}]
        3 GETTABLEKS                       R5 R1 K2 ["keyboardEnabled"]
        5 SETTABLEKS                       R5 R4 K0 ["keyboard"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"mouseClick"}]
        3 GETTABLEKS                       R5 R1 K2 ["mouseClickEnabled"]
        5 SETTABLEKS                       R5 R4 K0 ["mouseClick"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"mouseMove"}]
        3 GETTABLEKS                       R5 R1 K2 ["mouseMoveEnabled"]
        5 SETTABLEKS                       R5 R4 K0 ["mouseMove"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"touch"}]
        3 GETTABLEKS                       R5 R1 K2 ["touchEnabled"]
        5 SETTABLEKS                       R5 R4 K0 ["touch"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createReducer"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{"SetGamepadEnabled", "SetKeyboardEnabled", "SetMouseClickEnabled", "SetMouseMoveEnabled", "SetTouchEnabled"}]
        5 DUPCLOSURE                       R3 K7 [PROTO_0]
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R3 R2 K1 ["SetGamepadEnabled"]
        9 DUPCLOSURE                       R3 K8 [PROTO_1]
       10 CAPTURE                          UPVAL U2
       11 SETTABLEKS                       R3 R2 K2 ["SetKeyboardEnabled"]
       13 DUPCLOSURE                       R3 K9 [PROTO_2]
       14 CAPTURE                          UPVAL U2
       15 SETTABLEKS                       R3 R2 K3 ["SetMouseClickEnabled"]
       17 DUPCLOSURE                       R3 K10 [PROTO_3]
       18 CAPTURE                          UPVAL U2
       19 SETTABLEKS                       R3 R2 K4 ["SetMouseMoveEnabled"]
       21 DUPCLOSURE                       R3 K11 [PROTO_4]
       22 CAPTURE                          UPVAL U2
       23 SETTABLEKS                       R3 R2 K5 ["SetTouchEnabled"]
       25 CALL                             R0 2 -1
       26 RETURN                           R0 -1

PROTO_6:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 GETTABLEKS                       R2 R1 K0 ["context"]
        4 GETUPVAL                         R3 0
        5 JUMPIFNOTEQ                      R2 R3 ; [+6]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1
       12 RETURN                           R0 1

PROTO_7:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Dictionary"]
       25 GETTABLEKS                       R3 R3 K9 ["join"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Src"]
       31 GETTABLEKS                       R5 R5 K11 ["Actions"]
       33 GETTABLEKS                       R5 R5 K12 ["EventTypeEnabled"]
       35 GETTABLEKS                       R5 R5 K13 ["SetGamepadEnabled"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R0 K10 ["Src"]
       42 GETTABLEKS                       R6 R6 K11 ["Actions"]
       44 GETTABLEKS                       R6 R6 K12 ["EventTypeEnabled"]
       46 GETTABLEKS                       R6 R6 K14 ["SetKeyboardEnabled"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R0 K10 ["Src"]
       53 GETTABLEKS                       R7 R7 K11 ["Actions"]
       55 GETTABLEKS                       R7 R7 K12 ["EventTypeEnabled"]
       57 GETTABLEKS                       R7 R7 K15 ["SetMouseClickEnabled"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K4 [require]
       62 GETTABLEKS                       R8 R0 K10 ["Src"]
       64 GETTABLEKS                       R8 R8 K11 ["Actions"]
       66 GETTABLEKS                       R8 R8 K12 ["EventTypeEnabled"]
       68 GETTABLEKS                       R8 R8 K16 ["SetMouseMoveEnabled"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K4 [require]
       73 GETTABLEKS                       R9 R0 K10 ["Src"]
       75 GETTABLEKS                       R9 R9 K11 ["Actions"]
       77 GETTABLEKS                       R9 R9 K12 ["EventTypeEnabled"]
       79 GETTABLEKS                       R9 R9 K17 ["SetTouchEnabled"]
       81 CALL                             R8 1 1
       82 DUPTABLE                         R9 K24 [{["mouseMove"] = True, ["mouseClick"] = True, ["keyboard"] = True, ["gamepad"] = True, ["touch"] = True}]
       83 DUPCLOSURE                       R10 K25 [PROTO_5]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R3
       87 DUPCLOSURE                       R11 K26 [PROTO_7]
       88 DUPCLOSURE                       R12 K27 [PROTO_8]
       89 CAPTURE                          VAL R10
       90 DUPTABLE                         R13 K29 [{"makeReducerForName"}]
       91 SETTABLEKS                       R12 R13 K28 ["makeReducerForName"]
       93 RETURN                           R13 1
