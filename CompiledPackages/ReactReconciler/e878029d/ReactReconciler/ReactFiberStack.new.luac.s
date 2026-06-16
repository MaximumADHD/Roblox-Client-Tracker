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
        2 JUMPIFNOTLT                      R2 R3 ; [+11]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["__DEV__"]
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["error"]
       11 LOADK                            R3 K2 ["Unexpected pop."]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K0 ["__DEV__"]
       17 JUMPIFNOT                        R2 ; [+10]
       18 GETUPVAL                         R3 3
       19 GETUPVAL                         R4 0
       20 GETTABLE                         R2 R3 R4
       21 JUMPIFEQ                         R1 R2 ; [+6]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K1 ["error"]
       26 LOADK                            R3 K3 ["Unexpected Fiber popped."]
       27 CALL                             R2 1 0
       28 GETUPVAL                         R3 4
       29 GETUPVAL                         R4 0
       30 GETTABLE                         R2 R3 R4
       31 GETUPVAL                         R3 5
       32 JUMPIFNOTEQ                      R2 R3 ; [+5]
       34 LOADNIL                          R3
       35 SETTABLEKS                       R3 R0 K4 ["current"]
       37 JUMP                             ; [+2]
       38 SETTABLEKS                       R2 R0 K4 ["current"]
       40 GETUPVAL                         R3 4
       41 GETUPVAL                         R4 0
       42 LOADNIL                          R5
       43 SETTABLE                         R5 R3 R4
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K0 ["__DEV__"]
       47 JUMPIFNOT                        R3 ; [+4]
       48 GETUPVAL                         R3 3
       49 GETUPVAL                         R4 0
       50 LOADNIL                          R5
       51 SETTABLE                         R5 R3 R4
       52 GETUPVAL                         R3 0
       53 SUBK                             R3 R3 K5 [1]
       54 SETUPVAL                         R3 0
       55 RETURN                           R0 0

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
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K2 ["__DEV__"]
       18 JUMPIFNOT                        R4 ; [+3]
       19 GETUPVAL                         R4 4
       20 GETUPVAL                         R5 0
       21 SETTABLE                         R2 R4 R5
       22 SETTABLEKS                       R1 R0 K1 ["current"]
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["__DEV__"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKN                       R0 K1 [0] ; [+6]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["error"]
       10 LOADK                            R1 K3 ["Expected an empty stack. Something was not reset properly."]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["__DEV__"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 LOADN                            R0 0
        5 SETUPVAL                         R0 1
        6 GETIMPORT                        R0 K3 [table.clear]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [table.clear]
       12 GETUPVAL                         R1 3
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K7 ["console"]
       19 GETIMPORT                        R3 K4 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K2 ["Parent"]
       25 GETTABLEKS                       R4 R4 K8 ["ReactInternalTypes"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 0 0
       30 NEWTABLE                         R5 0 0
       32 LOADNIL                          R6
       33 GETTABLEKS                       R7 R1 K9 ["__DEV__"]
       35 JUMPIFNOT                        R7 ; [+2]
       36 NEWTABLE                         R6 0 0
       38 LOADN                            R7 0
       39 DUPCLOSURE                       R8 K10 [PROTO_0]
       40 NEWCLOSURE                       R9 P1
       41 CAPTURE                          REF R7
       42 NEWCLOSURE                       R10 P2
       43 CAPTURE                          REF R7
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          REF R6
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 NEWCLOSURE                       R11 P3
       50 CAPTURE                          REF R7
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R1
       54 CAPTURE                          REF R6
       55 NEWCLOSURE                       R12 P4
       56 CAPTURE                          VAL R1
       57 CAPTURE                          REF R7
       58 CAPTURE                          VAL R2
       59 NEWCLOSURE                       R13 P5
       60 CAPTURE                          VAL R1
       61 CAPTURE                          REF R7
       62 CAPTURE                          VAL R5
       63 CAPTURE                          REF R6
       64 DUPTABLE                         R14 K17 [{"createCursor", "isEmpty", "pop", "push", "checkThatStackIsEmpty", "resetStackAfterFatalErrorInDev"}]
       65 SETTABLEKS                       R8 R14 K11 ["createCursor"]
       67 SETTABLEKS                       R9 R14 K12 ["isEmpty"]
       69 SETTABLEKS                       R10 R14 K13 ["pop"]
       71 SETTABLEKS                       R11 R14 K14 ["push"]
       73 SETTABLEKS                       R12 R14 K15 ["checkThatStackIsEmpty"]
       75 SETTABLEKS                       R13 R14 K16 ["resetStackAfterFatalErrorInDev"]
       77 CLOSEUPVALS                      R6
       78 RETURN                           R14 1
