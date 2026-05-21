PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["__DEV__"]
        3 JUMPIFNOT                        R0 ; [+62]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOTEQKN                    R0 K1 [0] ; [+57]
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K2 ["log"]
       10 SETUPVAL                         R0 2
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K3 ["info"]
       14 SETUPVAL                         R0 4
       15 GETUPVAL                         R0 3
       16 GETTABLEKS                       R0 R0 K4 ["warn"]
       18 SETUPVAL                         R0 5
       19 GETUPVAL                         R0 3
       20 GETTABLEKS                       R0 R0 K5 ["error"]
       22 SETUPVAL                         R0 6
       23 GETUPVAL                         R0 3
       24 GETTABLEKS                       R0 R0 K6 ["group"]
       26 SETUPVAL                         R0 7
       27 GETUPVAL                         R0 3
       28 GETTABLEKS                       R0 R0 K7 ["groupCollapsed"]
       30 SETUPVAL                         R0 8
       31 GETUPVAL                         R0 3
       32 GETTABLEKS                       R0 R0 K8 ["groupEnd"]
       34 SETUPVAL                         R0 9
       35 GETUPVAL                         R0 3
       36 GETUPVAL                         R1 10
       37 SETTABLEKS                       R1 R0 K3 ["info"]
       39 GETUPVAL                         R0 3
       40 GETUPVAL                         R1 10
       41 SETTABLEKS                       R1 R0 K2 ["log"]
       43 GETUPVAL                         R0 3
       44 GETUPVAL                         R1 10
       45 SETTABLEKS                       R1 R0 K4 ["warn"]
       47 GETUPVAL                         R0 3
       48 GETUPVAL                         R1 10
       49 SETTABLEKS                       R1 R0 K5 ["error"]
       51 GETUPVAL                         R0 3
       52 GETUPVAL                         R1 10
       53 SETTABLEKS                       R1 R0 K6 ["group"]
       55 GETUPVAL                         R0 3
       56 GETUPVAL                         R1 10
       57 SETTABLEKS                       R1 R0 K7 ["groupCollapsed"]
       59 GETUPVAL                         R0 3
       60 GETUPVAL                         R1 10
       61 SETTABLEKS                       R1 R0 K8 ["groupEnd"]
       63 GETUPVAL                         R1 1
       64 ADDK                             R0 R1 K9 [1]
       65 SETUPVAL                         R0 1
       66 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["__DEV__"]
        3 JUMPIFNOT                        R0 ; [+43]
        4 GETUPVAL                         R1 1
        5 SUBK                             R0 R1 K1 [1]
        6 SETUPVAL                         R0 1
        7 GETUPVAL                         R0 1
        8 JUMPIFNOTEQKN                    R0 K2 [0] ; [+29]
       10 GETUPVAL                         R0 2
       11 GETUPVAL                         R1 3
       12 SETTABLEKS                       R1 R0 K3 ["log"]
       14 GETUPVAL                         R0 2
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K4 ["info"]
       18 GETUPVAL                         R0 2
       19 GETUPVAL                         R1 5
       20 SETTABLEKS                       R1 R0 K5 ["warn"]
       22 GETUPVAL                         R0 2
       23 GETUPVAL                         R1 6
       24 SETTABLEKS                       R1 R0 K6 ["error"]
       26 GETUPVAL                         R0 2
       27 GETUPVAL                         R1 7
       28 SETTABLEKS                       R1 R0 K7 ["group"]
       30 GETUPVAL                         R0 2
       31 GETUPVAL                         R1 8
       32 SETTABLEKS                       R1 R0 K8 ["groupCollapsed"]
       34 GETUPVAL                         R0 2
       35 GETUPVAL                         R1 9
       36 SETTABLEKS                       R1 R0 K9 ["groupEnd"]
       38 GETUPVAL                         R0 1
       39 LOADN                            R1 0
       40 JUMPIFNOTLT                      R0 R1 ; [+6]
       42 GETUPVAL                         R0 2
       43 GETTABLEKS                       R0 R0 K6 ["error"]
       45 LOADK                            R1 K10 ["disabledDepth fell below zero. This is a bug in React. Please file an issue."]
       46 CALL                             R0 1 0
       47 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K2 ["Parent"]
       18 GETTABLEKS                       R3 R3 K6 ["console"]
       20 CALL                             R2 1 1
       21 LOADN                            R3 0
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 LOADNIL                          R9
       28 LOADNIL                          R10
       29 DUPCLOSURE                       R11 K7 [PROTO_0]
       30 NEWTABLE                         R12 4 0
       32 SETTABLEKS                       R11 R12 K8 ["disabledLog"]
       34 NEWCLOSURE                       R13 P1
       35 CAPTURE                          VAL R1
       36 CAPTURE                          REF R3
       37 CAPTURE                          REF R4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          REF R5
       40 CAPTURE                          REF R6
       41 CAPTURE                          REF R7
       42 CAPTURE                          REF R8
       43 CAPTURE                          REF R9
       44 CAPTURE                          REF R10
       45 CAPTURE                          VAL R11
       46 SETTABLEKS                       R13 R12 K9 ["disableLogs"]
       48 NEWCLOSURE                       R13 P2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          REF R3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          REF R4
       53 CAPTURE                          REF R5
       54 CAPTURE                          REF R6
       55 CAPTURE                          REF R7
       56 CAPTURE                          REF R8
       57 CAPTURE                          REF R9
       58 CAPTURE                          REF R10
       59 SETTABLEKS                       R13 R12 K10 ["reenableLogs"]
       61 CLOSEUPVALS                      R3
       62 RETURN                           R12 1
