PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["LazyTable"] ; [+26]
        4 GETTABLEKS                       R1 R0 K2 ["Value"]
        6 FASTCALL1                        STRING_LEN R1 ; [+3]
        7 MOVE                             R7 R1
        8 GETIMPORT                        R6 K7 [string.len]
       10 CALL                             R6 1 1
       11 SUBK                             R5 R6 K4 [3]
       12 ADDK                             R4 R5 K3 [1]
       13 FASTCALL1                        STRING_LEN R1 ; [+3]
       14 MOVE                             R6 R1
       15 GETIMPORT                        R5 K7 [string.len]
       17 CALL                             R5 1 1
       18 FASTCALL3                        STRING_SUB R1 R4 R5
       20 MOVE                             R3 R1
       21 GETIMPORT                        R2 K9 [string.sub]
       23 CALL                             R2 3 1
       24 JUMPIFNOTEQKS                    R2 K10 [" {}"] ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 RETURN                           R3 1
       29 LOADB                            R1 1
       30 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["debuggerStateToken"]
        3 GETUPVAL                         R4 1
        4 NAMECALL                         R4 R4 K1 ["getState"]
        6 CALL                             R4 1 1
        7 GETTABLEKS                       R3 R4 K2 ["Common"]
        9 GETTABLEKS                       R2 R3 K3 ["debuggerConnectionIdToDST"]
       11 GETTABLEKS                       R3 R0 K4 ["debuggerConnectionId"]
       13 GETTABLE                         R1 R2 R3
       14 JUMPIFEQ                         R0 R1 ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R3 2
       19 GETUPVAL                         R4 0
       20 GETUPVAL                         R5 3
       21 GETUPVAL                         R6 4
       22 CALL                             R3 3 -1
       23 NAMECALL                         R1 R1 K5 ["dispatch"]
       25 CALL                             R1 -1 0
       26 GETUPVAL                         R1 5
       27 NAMECALL                         R1 R1 K6 ["GetChildren"]
       29 CALL                             R1 1 1
       30 LENGTH                           R2 R1
       31 JUMPIFNOTEQKN                    R2 K7 [0] ; [+2]
       33 RETURN                           R0 0
       34 NEWTABLE                         R2 0 0
       36 GETIMPORT                        R3 K9 [ipairs]
       38 MOVE                             R4 R1
       39 CALL                             R3 1 3
       40 FORGPREP_INEXT                   R3
       41 LOADNIL                          R8
       42 GETUPVAL                         R9 4
       43 JUMPIFNOT                        R9 ; [+11]
       44 GETUPVAL                         R10 6
       45 GETTABLEKS                       R9 R10 K10 ["fromInstance"]
       47 MOVE                             R10 R7
       48 GETUPVAL                         R11 7
       49 LOADNIL                          R12
       50 GETUPVAL                         R13 8
       51 GETUPVAL                         R14 9
       52 CALL                             R9 5 1
       53 MOVE                             R8 R9
       54 JUMP                             ; [+7]
       55 GETUPVAL                         R10 10
       56 GETTABLEKS                       R9 R10 K11 ["fromChildInstance"]
       58 MOVE                             R10 R7
       59 GETUPVAL                         R11 3
       60 CALL                             R9 2 1
       61 MOVE                             R8 R9
       62 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       64 MOVE                             R10 R2
       65 MOVE                             R11 R8
       66 GETIMPORT                        R9 K14 [table.insert]
       68 CALL                             R9 2 0
       69 FORGLOOP                         R3 2 [inext] ; [-29]
       71 GETUPVAL                         R3 4
       72 JUMPIFNOT                        R3 ; [+10]
       73 GETUPVAL                         R3 1
       74 GETUPVAL                         R5 11
       75 GETUPVAL                         R6 0
       76 GETUPVAL                         R7 3
       77 MOVE                             R8 R2
       78 CALL                             R5 3 -1
       79 NAMECALL                         R3 R3 K5 ["dispatch"]
       81 CALL                             R3 -1 0
       82 JUMP                             ; [+9]
       83 GETUPVAL                         R3 1
       84 GETUPVAL                         R5 12
       85 GETUPVAL                         R6 0
       86 GETUPVAL                         R7 3
       87 MOVE                             R8 R2
       88 CALL                             R5 3 -1
       89 NAMECALL                         R3 R3 K5 ["dispatch"]
       91 CALL                             R3 -1 0
       92 GETUPVAL                         R3 13
       93 GETUPVAL                         R4 3
       94 MOVE                             R5 R1
       95 GETUPVAL                         R6 0
       96 GETUPVAL                         R7 4
       97 GETUPVAL                         R8 14
       98 GETUPVAL                         R9 1
       99 CALL                             R3 6 0
      100 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R6 R5 K0 ["getState"]
        2 CALL                             R6 1 1
        3 GETTABLEKS                       R8 R6 K1 ["Watch"]
        5 GETTABLEKS                       R7 R8 K2 ["filterText"]
        7 GETTABLEKS                       R9 R6 K1 ["Watch"]
        9 GETTABLEKS                       R8 R9 K3 ["listOfEnabledScopes"]
       11 GETTABLEKS                       R13 R6 K1 ["Watch"]
       13 GETTABLEKS                       R12 R13 K4 ["stateTokenToFlattenedTree"]
       15 GETTABLEKS                       R13 R2 K5 ["debuggerStateToken"]
       17 GETTABLE                         R11 R12 R13
       18 GETTABLEKS                       R12 R2 K6 ["threadId"]
       20 GETTABLE                         R10 R11 R12
       21 GETTABLEKS                       R11 R2 K7 ["frameNumber"]
       23 GETTABLE                         R9 R10 R11
       24 JUMPIFNOT                        R3 ; [+4]
       25 GETTABLEKS                       R11 R9 K8 ["Variables"]
       27 GETTABLE                         R10 R11 R1
       28 JUMP                             ; [+3]
       29 GETTABLEKS                       R11 R9 K9 ["Watches"]
       31 GETTABLE                         R10 R11 R1
       32 JUMPIFNOT                        R3 ; [+6]
       33 GETTABLEKS                       R13 R6 K1 ["Watch"]
       35 GETTABLEKS                       R12 R13 K10 ["pathToExpansionState"]
       37 GETTABLE                         R11 R12 R1
       38 JUMP                             ; [+5]
       39 GETTABLEKS                       R13 R6 K1 ["Watch"]
       41 GETTABLEKS                       R12 R13 K11 ["expressionToExpansionState"]
       43 GETTABLE                         R11 R12 R1
       44 JUMPIFNOT                        R11 ; [+25]
       45 GETTABLEKS                       R12 R0 K12 ["Populated"]
       47 JUMPIFNOT                        R12 ; [+1]
       48 RETURN                           R0 0
       49 MOVE                             R14 R0
       50 NEWCLOSURE                       R15 P0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R5
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R8
       61 CAPTURE                          UPVAL U2
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R4
       66 NAMECALL                         R12 R4 K13 ["Populate"]
       68 CALL                             R12 3 0
       69 RETURN                           R0 0
       70 GETTABLEKS                       R13 R0 K14 ["Type"]
       72 JUMPIFNOTEQKS                    R13 K15 ["LazyTable"] ; [+26]
       74 GETTABLEKS                       R13 R0 K16 ["Value"]
       76 FASTCALL1                        STRING_LEN R13 ; [+3]
       77 MOVE                             R19 R13
       78 GETIMPORT                        R18 K21 [string.len]
       80 CALL                             R18 1 1
       81 SUBK                             R17 R18 K18 [3]
       82 ADDK                             R16 R17 K17 [1]
       83 FASTCALL1                        STRING_LEN R13 ; [+3]
       84 MOVE                             R18 R13
       85 GETIMPORT                        R17 K21 [string.len]
       87 CALL                             R17 1 1
       88 FASTCALL3                        STRING_SUB R13 R16 R17
       90 MOVE                             R15 R13
       91 GETIMPORT                        R14 K23 [string.sub]
       93 CALL                             R14 3 1
       94 JUMPIFNOTEQKS                    R14 K24 [" {}"] ; [+2]
       96 LOADB                            R12 0 +1
       97 LOADB                            R12 1
       98 JUMP                             ; [+1]
       99 LOADB                            R12 1
      100 JUMPIF                           R12 ; [+1]
      101 RETURN                           R0 0
      102 JUMPIFNOT                        R3 ; [+19]
      103 GETUPVAL                         R14 3
      104 MOVE                             R15 R2
      105 MOVE                             R16 R1
      106 NEWTABLE                         R17 0 1
      108 GETUPVAL                         R19 1
      109 GETTABLEKS                       R18 R19 K25 ["dummyRow"]
      111 MOVE                             R19 R10
      112 MOVE                             R20 R7
      113 MOVE                             R21 R8
      114 CALL                             R18 3 -1
      115 SETLIST                          R17 R18 -1 [1]
      117 CALL                             R14 3 -1
      118 NAMECALL                         R12 R5 K26 ["dispatch"]
      120 CALL                             R12 -1 0
      121 RETURN                           R0 0
      122 GETUPVAL                         R14 4
      123 MOVE                             R15 R2
      124 MOVE                             R16 R1
      125 NEWTABLE                         R17 0 1
      127 GETUPVAL                         R19 2
      128 GETTABLEKS                       R18 R19 K25 ["dummyRow"]
      130 MOVE                             R19 R10
      131 CALL                             R18 1 -1
      132 SETLIST                          R17 R18 -1 [1]
      134 CALL                             R14 3 -1
      135 NAMECALL                         R12 R5 K26 ["dispatch"]
      137 CALL                             R12 -1 0
      138 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R6 K1 [ipairs]
        2 MOVE                             R7 R1
        3 CALL                             R6 1 3
        4 FORGPREP_INEXT                   R6
        5 GETTABLEKS                       R11 R10 K2 ["VariableId"]
        7 JUMPIFEQKN                       R11 K3 [0] ; [+21]
        9 JUMPIFNOTEQKS                    R0 K4 [""] ; [+4]
       11 GETTABLEKS                       R11 R10 K5 ["Name"]
       13 JUMP                             ; [+7]
       14 MOVE                             R12 R0
       15 GETUPVAL                         R15 0
       16 GETTABLEKS                       R13 R15 K6 ["SeparationToken"]
       18 GETTABLEKS                       R14 R10 K5 ["Name"]
       20 CONCAT                           R11 R12 R14
       21 GETUPVAL                         R12 1
       22 MOVE                             R13 R10
       23 MOVE                             R14 R11
       24 MOVE                             R15 R2
       25 MOVE                             R16 R3
       26 MOVE                             R17 R4
       27 MOVE                             R18 R5
       28 CALL                             R12 6 0
       29 FORGLOOP                         R6 2 [inext] ; [-25]
       31 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 GETUPVAL                         R6 4
        5 GETUPVAL                         R7 5
        6 MOVE                             R8 R0
        7 CALL                             R2 6 0
        8 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 CAPTURE                          VAL R4
        7 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["Constants"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R2 R3 K8 ["Models"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R2 K9 ["StepStateBundle"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R6 R2 K10 ["Watch"]
       33 GETTABLEKS                       R5 R6 K11 ["VariableRow"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R7 R2 K10 ["Watch"]
       40 GETTABLEKS                       R6 R7 K12 ["WatchRow"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R7 R0 K5 ["Src"]
       45 GETTABLEKS                       R6 R7 K13 ["Actions"]
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R9 R6 K10 ["Watch"]
       51 GETTABLEKS                       R8 R9 K14 ["AddChildVariables"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R10 R6 K10 ["Watch"]
       58 GETTABLEKS                       R9 R10 K15 ["AddChildExpression"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R11 R6 K10 ["Watch"]
       65 GETTABLEKS                       R10 R11 K16 ["RemoveDummyVariableFromParent"]
       67 CALL                             R9 1 1
       68 LOADNIL                          R10
       69 DUPCLOSURE                       R11 K17 [PROTO_0]
       70 NEWCLOSURE                       R12 P1
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R8
       76 CAPTURE                          REF R10
       77 DUPCLOSURE                       R10 K18 [PROTO_3]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R12
       80 NEWCLOSURE                       R13 P3
       81 CAPTURE                          REF R10
       82 CLOSEUPVALS                      R10
       83 RETURN                           R13 1
