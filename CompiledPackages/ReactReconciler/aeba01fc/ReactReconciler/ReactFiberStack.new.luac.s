PROTO_0:
        0 DUPTABLE                         R1 K1 [{"current"}]
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKN                       R1 K0 [0] ; [+2]
        3 LOADB                            R0 0 +1
        4 LOADB                            R0 1
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADN                            R3 1
        2 JUMPIFNOTLT                      R2 R3 ; [+12]
        4 GETIMPORT                        R3 K1 [_G]
        6 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K3 ["error"]
       12 LOADK                            R3 K4 ["Unexpected pop."]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETIMPORT                        R3 K1 [_G]
       17 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
       19 JUMPIFNOT                        R2 ; [+10]
       20 GETUPVAL                         R3 2
       21 GETUPVAL                         R4 0
       22 GETTABLE                         R2 R3 R4
       23 JUMPIFEQ                         R1 R2 ; [+6]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R2 R3 K3 ["error"]
       28 LOADK                            R3 K5 ["Unexpected Fiber popped."]
       29 CALL                             R2 1 0
       30 GETUPVAL                         R3 3
       31 GETUPVAL                         R4 0
       32 GETTABLE                         R2 R3 R4
       33 GETUPVAL                         R3 4
       34 JUMPIFNOTEQ                      R2 R3 ; [+5]
       36 LOADNIL                          R3
       37 SETTABLEKS                       R3 R0 K6 ["current"]
       39 JUMP                             ; [+2]
       40 SETTABLEKS                       R2 R0 K6 ["current"]
       42 GETUPVAL                         R3 3
       43 GETUPVAL                         R4 0
       44 LOADNIL                          R5
       45 SETTABLE                         R5 R3 R4
       46 GETIMPORT                        R4 K1 [_G]
       48 GETTABLEKS                       R3 R4 K2 ["__DEV__"]
       50 JUMPIFNOT                        R3 ; [+4]
       51 GETUPVAL                         R3 2
       52 GETUPVAL                         R4 0
       53 LOADNIL                          R5
       54 SETTABLE                         R5 R3 R4
       55 GETUPVAL                         R3 0
       56 SUBK                             R3 R3 K7 [1]
       57 SETUPVAL                         R3 0
       58 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 ADDK                             R3 R3 K0 [1]
        2 SETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R0 K1 ["current"]
        5 JUMPIFNOTEQKNIL                  R3 ; [+6]
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R5 0
        9 GETUPVAL                         R6 2
       10 SETTABLE                         R6 R4 R5
       11 JUMP                             ; [+3]
       12 GETUPVAL                         R4 1
       13 GETUPVAL                         R5 0
       14 SETTABLE                         R3 R4 R5
       15 GETIMPORT                        R5 K3 [_G]
       17 GETTABLEKS                       R4 R5 K4 ["__DEV__"]
       19 JUMPIFNOT                        R4 ; [+3]
       20 GETUPVAL                         R4 3
       21 GETUPVAL                         R5 0
       22 SETTABLE                         R2 R4 R5
       23 SETTABLEKS                       R1 R0 K1 ["current"]
       25 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+8]
        5 GETUPVAL                         R0 0
        6 JUMPIFEQKN                       R0 K3 [0] ; [+6]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K4 ["error"]
       11 LOADK                            R1 K5 ["Expected an empty stack. Something was not reset properly."]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+10]
        5 LOADN                            R0 0
        6 SETUPVAL                         R0 0
        7 GETIMPORT                        R0 K5 [table.clear]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 GETIMPORT                        R0 K5 [table.clear]
       13 GETUPVAL                         R1 2
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Shared"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R1 R2 K6 ["console"]
       14 GETIMPORT                        R2 K4 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K2 ["Parent"]
       20 GETTABLEKS                       R3 R4 K7 ["ReactInternalTypes"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 0 0
       25 NEWTABLE                         R4 0 0
       27 LOADNIL                          R5
       28 GETIMPORT                        R7 K9 [_G]
       30 GETTABLEKS                       R6 R7 K10 ["__DEV__"]
       32 JUMPIFNOT                        R6 ; [+2]
       33 NEWTABLE                         R5 0 0
       35 LOADN                            R6 0
       36 DUPCLOSURE                       R7 K11 [PROTO_0]
       37 NEWCLOSURE                       R8 P1
       38 CAPTURE                          REF R6
       39 NEWCLOSURE                       R9 P2
       40 CAPTURE                          REF R6
       41 CAPTURE                          VAL R1
       42 CAPTURE                          REF R5
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 NEWCLOSURE                       R10 P3
       46 CAPTURE                          REF R6
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 CAPTURE                          REF R5
       50 NEWCLOSURE                       R11 P4
       51 CAPTURE                          REF R6
       52 CAPTURE                          VAL R1
       53 NEWCLOSURE                       R12 P5
       54 CAPTURE                          REF R6
       55 CAPTURE                          VAL R4
       56 CAPTURE                          REF R5
       57 DUPTABLE                         R13 K18 [{"createCursor", "isEmpty", "pop", "push", "checkThatStackIsEmpty", "resetStackAfterFatalErrorInDev"}]
       58 SETTABLEKS                       R7 R13 K12 ["createCursor"]
       60 SETTABLEKS                       R8 R13 K13 ["isEmpty"]
       62 SETTABLEKS                       R9 R13 K14 ["pop"]
       64 SETTABLEKS                       R10 R13 K15 ["push"]
       66 SETTABLEKS                       R11 R13 K16 ["checkThatStackIsEmpty"]
       68 SETTABLEKS                       R12 R13 K17 ["resetStackAfterFatalErrorInDev"]
       70 CLOSEUPVALS                      R5
       71 RETURN                           R13 1
