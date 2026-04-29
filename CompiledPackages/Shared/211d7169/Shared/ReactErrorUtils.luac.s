PROTO_0:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 SETUPVAL                         R0 1
        3 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      0
        1 LOADB                            R0 0
        2 SETUPVAL                         R0 0
        3 LOADNIL                          R0
        4 SETUPVAL                         R0 1
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 3
        7 GETVARARGS                       R2 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["invokeGuardedCallback"]
        4 GETVARARGS                       R1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 1
       10 GETUPVAL                         R1 3
       11 JUMPIF                           R1 ; [+3]
       12 LOADB                            R1 1
       13 SETUPVAL                         R1 3
       14 SETUPVAL                         R0 4
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 SETUPVAL                         R1 0
        5 LOADNIL                          R1
        6 SETUPVAL                         R1 1
        7 GETIMPORT                        R1 K1 [error]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 SETUPVAL                         R1 0
        5 LOADNIL                          R1
        6 SETUPVAL                         R1 1
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 2
        9 LOADB                            R1 0
       10 LOADK                            R2 K0 ["clearCaughtError was called but no error was captured. This error is likely caused by a bug in React. Please file an issue."]
       11 CALL                             R0 2 0
       12 LOADNIL                          R0
       13 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["invariant"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["invokeGuardedCallbackImpl"]
       18 CALL                             R1 1 1
       19 LOADNIL                          R2
       20 LOADB                            R3 0
       21 LOADNIL                          R4
       22 LOADB                            R5 0
       23 LOADNIL                          R6
       24 DUPTABLE                         R7 K8 [{"onError"}]
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          REF R3
       27 CAPTURE                          REF R4
       28 SETTABLEKS                       R8 R7 K7 ["onError"]
       30 NEWTABLE                         R8 8 0
       32 NEWCLOSURE                       R9 P1
       33 CAPTURE                          REF R3
       34 CAPTURE                          REF R4
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R7
       37 SETTABLEKS                       R9 R8 K9 ["invokeGuardedCallback"]
       39 NEWCLOSURE                       R9 P2
       40 CAPTURE                          VAL R8
       41 CAPTURE                          REF R3
       42 CAPTURE                          REF R2
       43 CAPTURE                          REF R5
       44 CAPTURE                          REF R6
       45 SETTABLEKS                       R9 R8 K10 ["invokeGuardedCallbackAndCatchFirstError"]
       47 NEWCLOSURE                       R9 P3
       48 CAPTURE                          REF R5
       49 CAPTURE                          REF R6
       50 SETTABLEKS                       R9 R8 K11 ["rethrowCaughtError"]
       52 NEWCLOSURE                       R9 P4
       53 CAPTURE                          REF R3
       54 SETTABLEKS                       R9 R8 K12 ["hasCaughtError"]
       56 NEWCLOSURE                       R2 P5
       57 CAPTURE                          REF R3
       58 CAPTURE                          REF R4
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R2 R8 K13 ["clearCaughtError"]
       62 CLOSEUPVALS                      R2
       63 RETURN                           R8 1
