PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K0 ["value"]
       10 GETIMPORT                        R3 K2 [_G]
       12 GETTABLEKS                       R2 R3 K3 ["__DEV__"]
       14 JUMPIFNOT                        R2 ; [+73]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K4 ["source"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R3 R4 K5 ["stack"]
       21 ORK                              R4 R3 K6 [""]
       22 JUMPIFEQKNIL                     R1 ; [+16]
       24 GETTABLEKS                       R5 R1 K7 ["_suppressLogging"]
       26 JUMPIFNOT                        R5 ; [+12]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K8 ["tag"]
       30 GETUPVAL                         R6 3
       31 JUMPIFNOTEQ                      R5 R6 ; [+2]
       33 RETURN                           R0 0
       34 GETUPVAL                         R6 4
       35 GETTABLEKS                       R5 R6 K9 ["error"]
       37 MOVE                             R6 R1
       38 CALL                             R5 1 0
       39 LOADNIL                          R5
       40 JUMPIFEQKNIL                     R2 ; [+7]
       42 GETUPVAL                         R6 5
       43 GETTABLEKS                       R7 R2 K10 ["type"]
       45 CALL                             R6 1 1
       46 MOVE                             R5 R6
       47 JUMP                             ; [+1]
       48 LOADNIL                          R5
       49 LOADNIL                          R6
       50 JUMPIFNOT                        R5 ; [+10]
       51 LOADK                            R7 K11 ["The above error occurred in the <"]
       52 FASTCALL1                        TOSTRING R5 ; [+3]
       53 MOVE                             R11 R5
       54 GETIMPORT                        R10 K13 [tostring]
       56 CALL                             R10 1 1
       57 MOVE                             R8 R10
       58 LOADK                            R9 K14 ["> component:"]
       59 CONCAT                           R6 R7 R9
       60 JUMP                             ; [+1]
       61 LOADK                            R6 K15 ["The above error occurred in one of your React components:"]
       62 LOADNIL                          R7
       63 GETUPVAL                         R8 5
       64 GETUPVAL                         R10 1
       65 GETTABLEKS                       R9 R10 K10 ["type"]
       67 CALL                             R8 1 1
       68 JUMPIFNOT                        R8 ; [+6]
       69 LOADK                            R9 K16 ["React will try to recreate this component tree from scratch "]
       70 LOADK                            R10 K17 ["using the error boundary you provided, "]
       71 MOVE                             R11 R8
       72 LOADK                            R12 K18 ["."]
       73 CONCAT                           R7 R9 R12
       74 JUMP                             ; [+1]
       75 LOADK                            R7 K19 ["Consider adding an error boundary to your tree to customize error handling behavior.\nVisit https://reactjs.org/link/error-boundaries to learn more about error boundaries."]
       76 MOVE                             R10 R6
       77 LOADK                            R11 K20 ["\n"]
       78 MOVE                             R12 R4
       79 LOADK                            R13 K21 ["\n\n"]
       80 MOVE                             R14 R7
       81 CONCAT                           R9 R10 R14
       82 GETUPVAL                         R11 4
       83 GETTABLEKS                       R10 R11 K9 ["error"]
       85 MOVE                             R11 R9
       86 CALL                             R10 1 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R3 4
       89 GETTABLEKS                       R2 R3 K9 ["error"]
       91 GETUPVAL                         R3 6
       92 MOVE                             R4 R1
       93 CALL                             R3 1 -1
       94 CALL                             R2 -1 0
       95 RETURN                           R0 0

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
       10 CALL                             R2 1 2
       11 JUMPIF                           R2 ; [+13]
       12 GETIMPORT                        R4 K3 [warn]
       14 LOADK                            R6 K4 ["failed to error with error: "]
       15 GETUPVAL                         R7 4
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 CONCAT                           R5 R6 R7
       19 CALL                             R4 1 0
       20 GETUPVAL                         R4 5
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          VAL R3
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R3 R1 K6 ["util"]
       14 GETTABLEKS                       R2 R3 K7 ["inspect"]
       16 GETTABLEKS                       R3 R1 K8 ["setTimeout"]
       18 GETIMPORT                        R4 K4 [require]
       20 GETTABLEKS                       R5 R0 K9 ["Shared"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R5 R4 K10 ["console"]
       25 GETTABLEKS                       R6 R4 K11 ["errorToString"]
       27 GETIMPORT                        R7 K4 [require]
       29 GETIMPORT                        R10 K1 [script]
       31 GETTABLEKS                       R9 R10 K2 ["Parent"]
       33 GETTABLEKS                       R8 R9 K12 ["ReactInternalTypes"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K4 [require]
       38 GETIMPORT                        R11 K1 [script]
       40 GETTABLEKS                       R10 R11 K2 ["Parent"]
       42 GETTABLEKS                       R9 R10 K13 ["ReactCapturedValue"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R10 K4 [require]
       47 GETIMPORT                        R13 K1 [script]
       49 GETTABLEKS                       R12 R13 K2 ["Parent"]
       51 GETTABLEKS                       R11 R12 K14 ["ReactFiberErrorDialog"]
       53 CALL                             R10 1 1
       54 GETTABLEKS                       R9 R10 K15 ["showErrorDialog"]
       56 GETIMPORT                        R11 K4 [require]
       58 GETIMPORT                        R14 K1 [script]
       60 GETTABLEKS                       R13 R14 K2 ["Parent"]
       62 GETTABLEKS                       R12 R13 K16 ["ReactWorkTags"]
       64 CALL                             R11 1 1
       65 GETTABLEKS                       R10 R11 K17 ["ClassComponent"]
       67 GETIMPORT                        R12 K4 [require]
       69 GETTABLEKS                       R13 R0 K9 ["Shared"]
       71 CALL                             R12 1 1
       72 GETTABLEKS                       R11 R12 K18 ["getComponentName"]
       74 NEWTABLE                         R12 1 0
       76 DUPCLOSURE                       R13 K19 [PROTO_2]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R6
       84 SETTABLEKS                       R13 R12 K20 ["logCapturedError"]
       86 RETURN                           R12 1
