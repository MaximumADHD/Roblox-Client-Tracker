PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+19]
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R1 K2 [table.insert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["fromInstance"]
       13 MOVE                             R4 R0
       14 GETUPVAL                         R5 3
       15 CALL                             R3 2 -1
       16 FASTCALL                         TABLE_INSERT ; [+2]
       17 GETIMPORT                        R1 K2 [table.insert]
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R2 4
       21 SUBK                             R1 R2 K4 [1]
       22 SETUPVAL                         R1 4
       23 GETUPVAL                         R1 4
       24 JUMPIFNOTEQKN                    R1 K5 [0] ; [+20]
       26 GETUPVAL                         R1 5
       27 GETUPVAL                         R3 6
       28 GETUPVAL                         R4 7
       29 GETUPVAL                         R5 1
       30 CALL                             R3 2 -1
       31 NAMECALL                         R1 R1 K6 ["dispatch"]
       33 CALL                             R1 -1 0
       34 GETUPVAL                         R1 5
       35 GETUPVAL                         R3 8
       36 LOADK                            R4 K7 [""]
       37 GETUPVAL                         R5 0
       38 GETUPVAL                         R6 7
       39 LOADB                            R7 0
       40 GETUPVAL                         R8 9
       41 CALL                             R3 5 -1
       42 NAMECALL                         R1 R1 K6 ["dispatch"]
       44 CALL                             R1 -1 0
       45 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R2 R2 K0 ["UpdateSelectedFrame"]
        8 CALL                             R2 3 0
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R4 1
       11 NAMECALL                         R2 R2 K1 ["SetCurrentThreadId"]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R4 4
       15 GETUPVAL                         R5 1
       16 CALL                             R4 1 -1
       17 NAMECALL                         R2 R0 K2 ["dispatch"]
       19 CALL                             R2 -1 0
       20 NAMECALL                         R2 R0 K3 ["getState"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R2 R2 K4 ["Common"]
       25 GETTABLEKS                       R4 R2 K5 ["debuggerConnectionIdToDST"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K6 ["Id"]
       30 GETTABLE                         R3 R4 R5
       31 GETUPVAL                         R4 0
       32 GETUPVAL                         R6 1
       33 NAMECALL                         R4 R4 K7 ["GetThreadById"]
       35 CALL                             R4 2 1
       36 NAMECALL                         R5 R4 K8 ["GetChildren"]
       38 CALL                             R5 1 1
       39 GETUPVAL                         R6 5
       40 GETTABLEKS                       R6 R6 K9 ["ctor"]
       42 MOVE                             R7 R3
       43 GETUPVAL                         R8 1
       44 GETUPVAL                         R10 2
       45 ADDK                             R9 R10 K10 [1]
       46 CALL                             R6 3 1
       47 GETUPVAL                         R9 6
       48 GETUPVAL                         R10 0
       49 GETUPVAL                         R13 2
       50 ADDK                             R12 R13 K10 [1]
       51 GETTABLE                         R11 R5 R12
       52 MOVE                             R12 R6
       53 CALL                             R9 3 -1
       54 NAMECALL                         R7 R0 K2 ["dispatch"]
       56 CALL                             R7 -1 0
       57 NAMECALL                         R7 R0 K3 ["getState"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R7 R7 K11 ["Watch"]
       62 GETTABLEKS                       R7 R7 K12 ["listOfExpressions"]
       64 NEWTABLE                         R8 0 0
       66 NEWTABLE                         R9 0 0
       68 LENGTH                           R10 R7
       69 GETIMPORT                        R11 K14 [ipairs]
       71 MOVE                             R12 R7
       72 CALL                             R11 1 3
       73 FORGPREP_INEXT                   R11
       74 GETUPVAL                         R16 7
       75 GETTABLEKS                       R16 R16 K15 ["evaluateWatchWithCallback"]
       77 MOVE                             R17 R15
       78 MOVE                             R18 R6
       79 GETUPVAL                         R19 0
       80 MOVE                             R20 R0
       81 NEWCLOSURE                       R21 P0
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R9
       84 CAPTURE                          UPVAL U8
       85 CAPTURE                          VAL R15
       86 CAPTURE                          REF R10
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U9
       89 CAPTURE                          VAL R6
       90 CAPTURE                          UPVAL U10
       91 CAPTURE                          UPVAL U0
       92 CALL                             R16 5 0
       93 FORGLOOP                         R11 2 [inext] ; [-20]
       95 CLOSEUPVALS                      R10
       96 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R3
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R1 K4 ["Models"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["StepStateBundle"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K8 ["Watch"]
       24 GETTABLEKS                       R4 R4 K9 ["WatchRow"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R0 K3 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Thunks"]
       31 GETIMPORT                        R5 K6 [require]
       33 GETTABLEKS                       R6 R4 K11 ["Callstack"]
       35 GETTABLEKS                       R6 R6 K12 ["LoadStackFrameVariables"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K6 [require]
       40 GETTABLEKS                       R7 R4 K13 ["Common"]
       42 GETTABLEKS                       R7 R7 K14 ["AddChildRowsToVars"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K6 [require]
       47 GETTABLEKS                       R8 R0 K3 ["Src"]
       49 GETTABLEKS                       R8 R8 K15 ["Actions"]
       51 GETTABLEKS                       R8 R8 K11 ["Callstack"]
       53 GETTABLEKS                       R8 R8 K16 ["SetCurrentThread"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K6 [require]
       58 GETTABLEKS                       R9 R0 K3 ["Src"]
       60 GETTABLEKS                       R9 R9 K15 ["Actions"]
       62 GETTABLEKS                       R9 R9 K8 ["Watch"]
       64 GETTABLEKS                       R9 R9 K17 ["ExpressionsEvaluated"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K6 [require]
       69 GETTABLEKS                       R10 R0 K3 ["Src"]
       71 GETTABLEKS                       R10 R10 K18 ["Util"]
       73 GETTABLEKS                       R10 R10 K19 ["WatchHelperFunctions"]
       75 CALL                             R9 1 1
       76 DUPCLOSURE                       R10 K20 [PROTO_2]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R6
       84 RETURN                           R10 1
