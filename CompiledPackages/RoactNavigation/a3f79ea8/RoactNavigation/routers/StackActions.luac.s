PROTO_0:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["%q is not a valid member of StackActions"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K4 [tostring]
        7 CALL                             R5 1 1
        8 NAMECALL                         R3 R3 K5 ["format"]
       10 CALL                             R3 2 1
       11 LOADN                            R4 2
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"type"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["assign"]
        8 MOVE                             R3 R1
        9 MOVE                             R4 R0
       10 CALL                             R2 2 1
       11 RETURN                           R2 1
       12 MOVE                             R2 R1
       13 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"type"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["assign"]
        8 MOVE                             R3 R1
        9 MOVE                             R4 R0
       10 CALL                             R2 2 1
       11 RETURN                           R2 1
       12 MOVE                             R2 R1
       13 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"type"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["assign"]
        8 MOVE                             R3 R1
        9 MOVE                             R4 R0
       10 CALL                             R2 2 1
       11 RETURN                           R2 1
       12 MOVE                             R2 R1
       13 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"type"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["assign"]
        8 MOVE                             R3 R1
        9 MOVE                             R4 R0
       10 CALL                             R2 2 1
       11 RETURN                           R2 1
       12 MOVE                             R2 R1
       13 RETURN                           R2 1

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"type", "preserveFocus"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K1 ["preserveFocus"]
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["assign"]
       11 MOVE                             R3 R1
       12 MOVE                             R4 R0
       13 CALL                             R2 2 1
       14 RETURN                           R2 1
       15 MOVE                             R2 R1
       16 RETURN                           R2 1

PROTO_6:
        0 DUPTABLE                         R1 K2 [{"type", "preserveFocus"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K1 ["preserveFocus"]
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["assign"]
       11 MOVE                             R3 R1
       12 MOVE                             R4 R0
       13 CALL                             R2 2 1
       14 RETURN                           R2 1
       15 MOVE                             R2 R1
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Object"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["NavigationSymbol"]
       20 CALL                             R4 1 1
       21 MOVE                             R5 R4
       22 LOADK                            R6 K8 ["POP"]
       23 CALL                             R5 1 1
       24 MOVE                             R6 R4
       25 LOADK                            R7 K9 ["POP_TO_TOP"]
       26 CALL                             R6 1 1
       27 MOVE                             R7 R4
       28 LOADK                            R8 K10 ["PUSH"]
       29 CALL                             R7 1 1
       30 MOVE                             R8 R4
       31 LOADK                            R9 K11 ["RESET"]
       32 CALL                             R8 1 1
       33 MOVE                             R9 R4
       34 LOADK                            R10 K12 ["REPLACE"]
       35 CALL                             R9 1 1
       36 MOVE                             R10 R4
       37 LOADK                            R11 K13 ["COMPLETE_TRANSITION"]
       38 CALL                             R10 1 1
       39 DUPTABLE                         R11 K20 [{"Pop", "PopToTop", "Push", "Reset", "Replace", "CompleteTransition"}]
       40 SETTABLEKS                       R5 R11 K14 ["Pop"]
       42 SETTABLEKS                       R6 R11 K15 ["PopToTop"]
       44 SETTABLEKS                       R7 R11 K16 ["Push"]
       46 SETTABLEKS                       R8 R11 K17 ["Reset"]
       48 SETTABLEKS                       R9 R11 K18 ["Replace"]
       50 SETTABLEKS                       R10 R11 K19 ["CompleteTransition"]
       52 DUPTABLE                         R14 K22 [{"__index"}]
       53 DUPCLOSURE                       R15 K23 [PROTO_0]
       54 SETTABLEKS                       R15 R14 K21 ["__index"]
       56 FASTCALL2                        SETMETATABLE R11 R14 ; [+4]
       58 MOVE                             R13 R11
       59 GETIMPORT                        R12 K25 [setmetatable]
       61 CALL                             R12 2 0
       62 DUPCLOSURE                       R12 K26 [PROTO_1]
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R12 R11 K27 ["pop"]
       67 DUPCLOSURE                       R12 K28 [PROTO_2]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R3
       70 SETTABLEKS                       R12 R11 K29 ["popToTop"]
       72 DUPCLOSURE                       R12 K30 [PROTO_3]
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R3
       75 SETTABLEKS                       R12 R11 K31 ["push"]
       77 DUPCLOSURE                       R12 K32 [PROTO_4]
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R12 R11 K33 ["reset"]
       82 DUPCLOSURE                       R12 K34 [PROTO_5]
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R12 R11 K35 ["replace"]
       87 DUPCLOSURE                       R12 K36 [PROTO_6]
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R3
       90 SETTABLEKS                       R12 R11 K37 ["completeTransition"]
       92 RETURN                           R11 1
