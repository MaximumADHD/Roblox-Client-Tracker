PROTO_0:
        0 GETTABLE                         R4 R2 R1
        1 JUMPIFNOTEQKNIL                  R4 ; [+2]
        3 LOADB                            R6 0 +1
        4 LOADB                            R6 1
        5 LOADK                            R7 K0 ["FilterWatchDataThunk depthFirstTextFilter got a nil node for path %s"]
        6 FASTCALL1                        TOSTRING R1 ; [+3]
        7 MOVE                             R10 R1
        8 GETIMPORT                        R9 K2 [tostring]
       10 CALL                             R9 1 1
       11 NAMECALL                         R7 R7 K3 ["format"]
       13 CALL                             R7 2 -1
       14 FASTCALL                         ASSERT ; [+2]
       15 GETIMPORT                        R5 K5 [assert]
       17 CALL                             R5 -1 0
       18 LOADB                            R5 0
       19 GETIMPORT                        R6 K7 [ipairs]
       21 GETTABLEKS                       R7 R4 K8 ["childPaths"]
       23 CALL                             R6 1 3
       24 FORGPREP_INEXT                   R6
       25 MOVE                             R11 R5
       26 JUMPIF                           R11 ; [+6]
       27 GETUPVAL                         R11 0
       28 MOVE                             R12 R0
       29 MOVE                             R13 R10
       30 MOVE                             R14 R2
       31 MOVE                             R15 R3
       32 CALL                             R11 4 1
       33 MOVE                             R5 R11
       34 FORGLOOP                         R6 2 [inext] ; [-10]
       36 MOVE                             R6 R5
       37 JUMPIF                           R6 ; [+6]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K9 ["textMatchRow"]
       41 MOVE                             R7 R0
       42 MOVE                             R8 R4
       43 CALL                             R6 2 1
       44 SETTABLE                         R6 R3 R1
       45 RETURN                           R6 1

PROTO_1:
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
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R8 R8 K8 ["ctor"]
       35 MOVE                             R9 R5
       36 MOVE                             R10 R6
       37 MOVE                             R11 R7
       38 CALL                             R8 3 1
       39 GETTABLEKS                       R10 R4 K9 ["currentTab"]
       41 GETUPVAL                         R11 3
       42 GETTABLEKS                       R11 R11 K10 ["Variables"]
       44 JUMPIFEQ                         R10 R11 ; [+2]
       46 LOADB                            R9 0 +1
       47 LOADB                            R9 1
       48 GETTABLEKS                       R10 R4 K11 ["stateTokenToRoots"]
       50 GETTABLEKS                       R11 R4 K12 ["stateTokenToFlattenedTree"]
       52 GETTABLE                         R12 R10 R5
       53 JUMPIFNOT                        R12 ; [+6]
       54 GETTABLE                         R13 R10 R5
       55 GETTABLE                         R12 R13 R6
       56 JUMPIFNOT                        R12 ; [+3]
       57 GETTABLE                         R14 R10 R5
       58 GETTABLE                         R13 R14 R6
       59 GETTABLE                         R12 R13 R7
       60 JUMPIFNOTEQKNIL                  R12 ; [+6]
       62 GETIMPORT                        R13 K14 [warn]
       64 LOADK                            R14 K15 ["unexpected nil in filter thunk"]
       65 CALL                             R13 1 0
       66 RETURN                           R0 0
       67 GETTABLE                         R13 R11 R5
       68 JUMPIFNOT                        R13 ; [+6]
       69 GETTABLE                         R14 R11 R5
       70 GETTABLE                         R13 R14 R6
       71 JUMPIFNOT                        R13 ; [+3]
       72 GETTABLE                         R15 R11 R5
       73 GETTABLE                         R14 R15 R6
       74 GETTABLE                         R13 R14 R7
       75 JUMPIFNOTEQKNIL                  R13 ; [+6]
       77 GETIMPORT                        R14 K14 [warn]
       79 LOADK                            R15 K15 ["unexpected nil in filter thunk"]
       80 CALL                             R14 1 0
       81 RETURN                           R0 0
       82 JUMPIFNOT                        R9 ; [+3]
       83 GETTABLEKS                       R14 R12 K10 ["Variables"]
       85 JUMPIF                           R14 ; [+2]
       86 GETTABLEKS                       R14 R12 K16 ["Watches"]
       88 JUMPIFNOT                        R9 ; [+3]
       89 GETTABLEKS                       R15 R13 K10 ["Variables"]
       91 JUMPIF                           R15 ; [+2]
       92 GETTABLEKS                       R15 R13 K16 ["Watches"]
       94 NEWTABLE                         R16 0 0
       96 NEWTABLE                         R17 0 0
       98 GETIMPORT                        R18 K18 [pairs]
      100 MOVE                             R19 R14
      101 CALL                             R18 1 3
      102 FORGPREP_NEXT                    R18
      103 GETUPVAL                         R24 4
      104 GETUPVAL                         R25 1
      105 MOVE                             R26 R22
      106 MOVE                             R27 R15
      107 MOVE                             R28 R16
      108 CALL                             R24 4 1
      109 NOT                              R23 R24
      110 SETTABLE                         R23 R17 R22
      111 FORGLOOP                         R18 2 ; [-9]
      113 GETUPVAL                         R20 5
      114 MOVE                             R21 R8
      115 MOVE                             R22 R17
      116 MOVE                             R23 R9
      117 CALL                             R20 3 -1
      118 NAMECALL                         R18 R0 K0 ["dispatch"]
      120 CALL                             R18 -1 0
      121 GETUPVAL                         R20 6
      122 MOVE                             R21 R9
      123 MOVE                             R22 R16
      124 CALL                             R20 2 -1
      125 NAMECALL                         R18 R0 K0 ["dispatch"]
      127 CALL                             R18 -1 0
      128 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

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
       24 GETTABLEKS                       R4 R4 K9 ["TableTab"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R0 K3 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Actions"]
       31 GETIMPORT                        R5 K6 [require]
       33 GETTABLEKS                       R6 R4 K8 ["Watch"]
       35 GETTABLEKS                       R6 R6 K11 ["SetVariablesTextFilteredOut"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K6 [require]
       40 GETTABLEKS                       R7 R4 K8 ["Watch"]
       42 GETTABLEKS                       R7 R7 K12 ["SetExpansionTree"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K6 [require]
       47 GETTABLEKS                       R8 R4 K8 ["Watch"]
       49 GETTABLEKS                       R8 R8 K13 ["FilterTextChanged"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K6 [require]
       54 GETTABLEKS                       R9 R0 K3 ["Src"]
       56 GETTABLEKS                       R9 R9 K14 ["Util"]
       58 GETTABLEKS                       R9 R9 K15 ["WatchHelperFunctions"]
       60 CALL                             R8 1 1
       61 DUPCLOSURE                       R9 K16 [PROTO_0]
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R8
       64 DUPCLOSURE                       R10 K17 [PROTO_2]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R6
       71 RETURN                           R10 1
