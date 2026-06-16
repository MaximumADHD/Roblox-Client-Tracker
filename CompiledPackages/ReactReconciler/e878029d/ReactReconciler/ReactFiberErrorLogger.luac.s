PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 JUMPIFNOTEQKB                    R0 FALSE ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K0 ["value"]
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K1 ["__DEV__"]
       14 JUMPIFNOT                        R2 ; [+73]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K2 ["source"]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K3 ["stack"]
       21 ORK                              R4 R3 K4 [""]
       22 JUMPIFEQKNIL                     R1 ; [+16]
       24 GETTABLEKS                       R5 R1 K5 ["_suppressLogging"]
       26 JUMPIFNOT                        R5 ; [+12]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K6 ["tag"]
       30 GETUPVAL                         R6 4
       31 JUMPIFNOTEQ                      R5 R6 ; [+2]
       33 RETURN                           R0 0
       34 GETUPVAL                         R6 5
       35 GETTABLEKS                       R5 R6 K7 ["error"]
       37 MOVE                             R6 R1
       38 CALL                             R5 1 0
       39 LOADNIL                          R5
       40 JUMPIFEQKNIL                     R2 ; [+7]
       42 GETUPVAL                         R6 6
       43 GETTABLEKS                       R7 R2 K8 ["type"]
       45 CALL                             R6 1 1
       46 MOVE                             R5 R6
       47 JUMP                             ; [+1]
       48 LOADNIL                          R5
       49 LOADNIL                          R6
       50 JUMPIFNOT                        R5 ; [+10]
       51 LOADK                            R7 K9 ["The above error occurred in the <"]
       52 FASTCALL1                        TOSTRING R5 ; [+3]
       53 MOVE                             R11 R5
       54 GETIMPORT                        R10 K11 [tostring]
       56 CALL                             R10 1 1
       57 MOVE                             R8 R10
       58 LOADK                            R9 K12 ["> component:"]
       59 CONCAT                           R6 R7 R9
       60 JUMP                             ; [+1]
       61 LOADK                            R6 K13 ["The above error occurred in one of your React components:"]
       62 LOADNIL                          R7
       63 GETUPVAL                         R8 6
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R9 R9 K8 ["type"]
       67 CALL                             R8 1 1
       68 JUMPIFNOT                        R8 ; [+6]
       69 LOADK                            R9 K14 ["React will try to recreate this component tree from scratch "]
       70 LOADK                            R10 K15 ["using the error boundary you provided, "]
       71 MOVE                             R11 R8
       72 LOADK                            R12 K16 ["."]
       73 CONCAT                           R7 R9 R12
       74 JUMP                             ; [+1]
       75 LOADK                            R7 K17 ["Consider adding an error boundary to your tree to customize error handling behavior.\nVisit https://reactjs.org/link/error-boundaries to learn more about error boundaries."]
       76 MOVE                             R10 R6
       77 LOADK                            R11 K18 ["\n"]
       78 MOVE                             R12 R4
       79 LOADK                            R13 K19 ["\n\n"]
       80 MOVE                             R14 R7
       81 CONCAT                           R9 R10 R14
       82 GETUPVAL                         R11 5
       83 GETTABLEKS                       R10 R11 K7 ["error"]
       85 MOVE                             R11 R9
       86 CALL                             R10 1 0
       87 JUMP                             ; [+7]
       88 GETUPVAL                         R3 5
       89 GETTABLEKS                       R2 R3 K7 ["error"]
       91 GETUPVAL                         R3 7
       92 MOVE                             R4 R1
       93 CALL                             R3 1 -1
       94 CALL                             R2 -1 0
       95 LOADNIL                          R2
       96 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CALL                             R2 1 2
       12 JUMPIF                           R2 ; [+13]
       13 GETIMPORT                        R4 K3 [warn]
       15 LOADK                            R6 K4 ["failed to error with error: "]
       16 GETUPVAL                         R7 5
       17 MOVE                             R8 R3
       18 CALL                             R7 1 1
       19 CONCAT                           R5 R6 R7
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 6
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          VAL R3
       25 CALL                             R4 1 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["util"]
       19 GETTABLEKS                       R3 R3 K8 ["inspect"]
       21 GETTABLEKS                       R4 R2 K9 ["setTimeout"]
       23 GETIMPORT                        R5 K4 [require]
       25 GETTABLEKS                       R6 R0 K10 ["Shared"]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R6 R5 K11 ["console"]
       30 GETTABLEKS                       R7 R5 K12 ["errorToString"]
       32 GETIMPORT                        R8 K4 [require]
       34 GETIMPORT                        R9 K1 [script]
       36 GETTABLEKS                       R9 R9 K2 ["Parent"]
       38 GETTABLEKS                       R9 R9 K13 ["ReactInternalTypes"]
       40 CALL                             R8 1 1
       41 GETIMPORT                        R9 K4 [require]
       43 GETIMPORT                        R10 K1 [script]
       45 GETTABLEKS                       R10 R10 K2 ["Parent"]
       47 GETTABLEKS                       R10 R10 K14 ["ReactCapturedValue"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K4 [require]
       52 GETIMPORT                        R11 K1 [script]
       54 GETTABLEKS                       R11 R11 K2 ["Parent"]
       56 GETTABLEKS                       R11 R11 K15 ["ReactFiberErrorDialog"]
       58 CALL                             R10 1 1
       59 GETTABLEKS                       R10 R10 K16 ["showErrorDialog"]
       61 GETIMPORT                        R11 K4 [require]
       63 GETIMPORT                        R12 K1 [script]
       65 GETTABLEKS                       R12 R12 K2 ["Parent"]
       67 GETTABLEKS                       R12 R12 K17 ["ReactWorkTags"]
       69 CALL                             R11 1 1
       70 GETTABLEKS                       R11 R11 K18 ["ClassComponent"]
       72 GETIMPORT                        R12 K4 [require]
       74 GETTABLEKS                       R13 R0 K10 ["Shared"]
       76 CALL                             R12 1 1
       77 GETTABLEKS                       R12 R12 K19 ["getComponentName"]
       79 NEWTABLE                         R13 1 0
       81 DUPCLOSURE                       R14 K20 [PROTO_2]
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R7
       90 SETTABLEKS                       R14 R13 K21 ["logCapturedError"]
       92 RETURN                           R13 1
