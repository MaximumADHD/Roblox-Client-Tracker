PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+62]
        5 GETUPVAL                         R0 0
        6 JUMPIFNOTEQKN                    R0 K3 [0] ; [+57]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K4 ["log"]
       11 SETUPVAL                         R0 1
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R0 R1 K5 ["info"]
       15 SETUPVAL                         R0 3
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R0 R1 K6 ["warn"]
       19 SETUPVAL                         R0 4
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R0 R1 K7 ["error"]
       23 SETUPVAL                         R0 5
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R0 R1 K8 ["group"]
       27 SETUPVAL                         R0 6
       28 GETUPVAL                         R1 2
       29 GETTABLEKS                       R0 R1 K9 ["groupCollapsed"]
       31 SETUPVAL                         R0 7
       32 GETUPVAL                         R1 2
       33 GETTABLEKS                       R0 R1 K10 ["groupEnd"]
       35 SETUPVAL                         R0 8
       36 GETUPVAL                         R0 2
       37 GETUPVAL                         R1 9
       38 SETTABLEKS                       R1 R0 K5 ["info"]
       40 GETUPVAL                         R0 2
       41 GETUPVAL                         R1 9
       42 SETTABLEKS                       R1 R0 K4 ["log"]
       44 GETUPVAL                         R0 2
       45 GETUPVAL                         R1 9
       46 SETTABLEKS                       R1 R0 K6 ["warn"]
       48 GETUPVAL                         R0 2
       49 GETUPVAL                         R1 9
       50 SETTABLEKS                       R1 R0 K7 ["error"]
       52 GETUPVAL                         R0 2
       53 GETUPVAL                         R1 9
       54 SETTABLEKS                       R1 R0 K8 ["group"]
       56 GETUPVAL                         R0 2
       57 GETUPVAL                         R1 9
       58 SETTABLEKS                       R1 R0 K9 ["groupCollapsed"]
       60 GETUPVAL                         R0 2
       61 GETUPVAL                         R1 9
       62 SETTABLEKS                       R1 R0 K10 ["groupEnd"]
       64 GETUPVAL                         R1 0
       65 ADDK                             R0 R1 K11 [1]
       66 SETUPVAL                         R0 0
       67 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+43]
        5 GETUPVAL                         R1 0
        6 SUBK                             R0 R1 K3 [1]
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 0
        9 JUMPIFNOTEQKN                    R0 K4 [0] ; [+29]
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R1 2
       13 SETTABLEKS                       R1 R0 K5 ["log"]
       15 GETUPVAL                         R0 1
       16 GETUPVAL                         R1 3
       17 SETTABLEKS                       R1 R0 K6 ["info"]
       19 GETUPVAL                         R0 1
       20 GETUPVAL                         R1 4
       21 SETTABLEKS                       R1 R0 K7 ["warn"]
       23 GETUPVAL                         R0 1
       24 GETUPVAL                         R1 5
       25 SETTABLEKS                       R1 R0 K8 ["error"]
       27 GETUPVAL                         R0 1
       28 GETUPVAL                         R1 6
       29 SETTABLEKS                       R1 R0 K9 ["group"]
       31 GETUPVAL                         R0 1
       32 GETUPVAL                         R1 7
       33 SETTABLEKS                       R1 R0 K10 ["groupCollapsed"]
       35 GETUPVAL                         R0 1
       36 GETUPVAL                         R1 8
       37 SETTABLEKS                       R1 R0 K11 ["groupEnd"]
       39 GETUPVAL                         R0 0
       40 LOADN                            R1 0
       41 JUMPIFNOTLT                      R0 R1 ; [+6]
       43 GETUPVAL                         R1 1
       44 GETTABLEKS                       R0 R1 K8 ["error"]
       46 LOADK                            R1 K12 ["disabledDepth fell below zero. This is a bug in React. Please file an issue."]
       47 CALL                             R0 1 0
       48 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["console"]
        9 CALL                             R0 1 1
       10 LOADN                            R1 0
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 DUPCLOSURE                       R9 K6 [PROTO_0]
       19 NEWTABLE                         R10 4 0
       21 SETTABLEKS                       R9 R10 K7 ["disabledLog"]
       23 NEWCLOSURE                       R11 P1
       24 CAPTURE                          REF R1
       25 CAPTURE                          REF R2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          REF R3
       28 CAPTURE                          REF R4
       29 CAPTURE                          REF R5
       30 CAPTURE                          REF R6
       31 CAPTURE                          REF R7
       32 CAPTURE                          REF R8
       33 CAPTURE                          VAL R9
       34 SETTABLEKS                       R11 R10 K8 ["disableLogs"]
       36 NEWCLOSURE                       R11 P2
       37 CAPTURE                          REF R1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          REF R2
       40 CAPTURE                          REF R3
       41 CAPTURE                          REF R4
       42 CAPTURE                          REF R5
       43 CAPTURE                          REF R6
       44 CAPTURE                          REF R7
       45 CAPTURE                          REF R8
       46 SETTABLEKS                       R11 R10 K9 ["reenableLogs"]
       48 CLOSEUPVALS                      R1
       49 RETURN                           R10 1
