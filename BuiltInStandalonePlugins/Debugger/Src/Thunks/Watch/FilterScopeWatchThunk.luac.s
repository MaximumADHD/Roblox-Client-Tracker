PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 CALL                             R4 1 -1
        3 NAMECALL                         R2 R0 K0 ["dispatch"]
        5 CALL                             R2 -1 0
        6 NAMECALL                         R2 R0 K1 ["getState"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["Common"]
       11 GETTABLEKS                       R4 R2 K3 ["Watch"]
       13 GETTABLEKS                       R6 R3 K4 ["debuggerConnectionIdToDST"]
       15 GETTABLEKS                       R7 R3 K5 ["currentDebuggerConnectionId"]
       17 GETTABLE                         R5 R6 R7
       18 GETTABLEKS                       R7 R3 K6 ["debuggerConnectionIdToCurrentThreadId"]
       20 GETTABLEKS                       R8 R3 K5 ["currentDebuggerConnectionId"]
       22 GETTABLE                         R6 R7 R8
       23 JUMPIFNOTEQKNIL                  R6 ; [+2]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R9 R3 K7 ["currentFrameMap"]
       28 GETTABLEKS                       R10 R3 K5 ["currentDebuggerConnectionId"]
       30 GETTABLE                         R8 R9 R10
       31 GETTABLE                         R7 R8 R6
       32 GETUPVAL                         R9 2
       33 GETTABLEKS                       R8 R9 K8 ["ctor"]
       35 MOVE                             R9 R5
       36 MOVE                             R10 R6
       37 MOVE                             R11 R7
       38 CALL                             R8 3 1
       39 GETTABLEKS                       R9 R4 K9 ["stateTokenToRoots"]
       41 GETTABLEKS                       R10 R4 K10 ["stateTokenToFlattenedTree"]
       43 GETTABLE                         R11 R9 R5
       44 JUMPIFNOT                        R11 ; [+6]
       45 GETTABLE                         R12 R9 R5
       46 GETTABLE                         R11 R12 R6
       47 JUMPIFNOT                        R11 ; [+3]
       48 GETTABLE                         R13 R9 R5
       49 GETTABLE                         R12 R13 R6
       50 GETTABLE                         R11 R12 R7
       51 JUMPIFNOTEQKNIL                  R11 ; [+2]
       53 RETURN                           R0 0
       54 GETTABLE                         R12 R10 R5
       55 JUMPIFNOT                        R12 ; [+6]
       56 GETTABLE                         R13 R10 R5
       57 GETTABLE                         R12 R13 R6
       58 JUMPIFNOT                        R12 ; [+3]
       59 GETTABLE                         R14 R10 R5
       60 GETTABLE                         R13 R14 R6
       61 GETTABLE                         R12 R13 R7
       62 JUMPIFNOTEQKNIL                  R12 ; [+6]
       64 GETIMPORT                        R13 K12 [warn]
       66 LOADK                            R14 K13 ["unexpected nil in filter thunk"]
       67 CALL                             R13 1 0
       68 RETURN                           R0 0
       69 GETTABLEKS                       R13 R11 K14 ["Variables"]
       71 GETTABLEKS                       R14 R12 K14 ["Variables"]
       73 NEWTABLE                         R15 0 0
       75 GETIMPORT                        R16 K16 [pairs]
       77 MOVE                             R17 R13
       78 CALL                             R16 1 3
       79 FORGPREP_NEXT                    R16
       80 GETUPVAL                         R22 3
       81 GETTABLEKS                       R21 R22 K17 ["isScopeFiltered"]
       83 GETUPVAL                         R22 1
       84 GETTABLE                         R23 R14 R20
       85 CALL                             R21 2 1
       86 SETTABLE                         R21 R15 R20
       87 FORGLOOP                         R16 2 ; [-8]
       89 GETUPVAL                         R18 4
       90 MOVE                             R19 R8
       91 MOVE                             R20 R15
       92 CALL                             R18 2 -1
       93 NAMECALL                         R16 R0 K0 ["dispatch"]
       95 CALL                             R16 -1 0
       96 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Models"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["StepStateBundle"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R4 R0 K3 ["Src"]
       22 GETTABLEKS                       R3 R4 K8 ["Actions"]
       24 GETIMPORT                        R4 K6 [require]
       26 GETTABLEKS                       R6 R3 K9 ["Watch"]
       28 GETTABLEKS                       R5 R6 K10 ["SetVariablesScopeFilteredOut"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K6 [require]
       33 GETTABLEKS                       R7 R3 K9 ["Watch"]
       35 GETTABLEKS                       R6 R7 K11 ["ScopeFilterChange"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K6 [require]
       40 GETTABLEKS                       R9 R0 K3 ["Src"]
       42 GETTABLEKS                       R8 R9 K12 ["Util"]
       44 GETTABLEKS                       R7 R8 K13 ["WatchHelperFunctions"]
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R7 K14 [PROTO_1]
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R4
       52 RETURN                           R7 1
