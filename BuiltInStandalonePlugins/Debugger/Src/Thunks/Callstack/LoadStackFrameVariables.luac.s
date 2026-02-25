PROTO_0:
        0 NAMECALL                         R6 R2 K0 ["getState"]
        2 CALL                             R6 1 1
        3 GETTABLEKS                       R5 R6 K1 ["Watch"]
        5 GETTABLEKS                       R4 R5 K2 ["filterText"]
        7 NAMECALL                         R7 R2 K0 ["getState"]
        9 CALL                             R7 1 1
       10 GETTABLEKS                       R6 R7 K1 ["Watch"]
       12 GETTABLEKS                       R5 R6 K3 ["listOfEnabledScopes"]
       14 GETTABLEKS                       R6 R1 K4 ["Locals"]
       16 NAMECALL                         R6 R6 K5 ["GetChildren"]
       18 CALL                             R6 1 1
       19 GETTABLEKS                       R7 R1 K6 ["Globals"]
       21 NAMECALL                         R7 R7 K5 ["GetChildren"]
       23 CALL                             R7 1 1
       24 GETTABLEKS                       R8 R1 K7 ["Upvalues"]
       26 NAMECALL                         R8 R8 K5 ["GetChildren"]
       28 CALL                             R8 1 1
       29 NEWTABLE                         R9 0 0
       31 NEWTABLE                         R10 0 0
       33 GETIMPORT                        R11 K9 [ipairs]
       35 MOVE                             R12 R6
       36 CALL                             R11 1 3
       37 FORGPREP_INEXT                   R11
       38 MOVE                             R17 R9
       39 GETUPVAL                         R19 0
       40 GETTABLEKS                       R18 R19 K10 ["fromInstance"]
       42 MOVE                             R19 R15
       43 LOADNIL                          R20
       44 GETUPVAL                         R22 1
       45 GETTABLEKS                       R21 R22 K11 ["Local"]
       47 MOVE                             R22 R4
       48 MOVE                             R23 R5
       49 CALL                             R18 5 -1
       50 FASTCALL                         TABLE_INSERT ; [+2]
       51 GETIMPORT                        R16 K14 [table.insert]
       53 CALL                             R16 -1 0
       54 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
       56 MOVE                             R17 R10
       57 MOVE                             R18 R15
       58 GETIMPORT                        R16 K14 [table.insert]
       60 CALL                             R16 2 0
       61 FORGLOOP                         R11 2 [inext] ; [-24]
       63 GETIMPORT                        R11 K9 [ipairs]
       65 MOVE                             R12 R7
       66 CALL                             R11 1 3
       67 FORGPREP_INEXT                   R11
       68 MOVE                             R17 R9
       69 GETUPVAL                         R19 0
       70 GETTABLEKS                       R18 R19 K10 ["fromInstance"]
       72 MOVE                             R19 R15
       73 LOADNIL                          R20
       74 GETUPVAL                         R22 1
       75 GETTABLEKS                       R21 R22 K15 ["Global"]
       77 MOVE                             R22 R4
       78 MOVE                             R23 R5
       79 CALL                             R18 5 -1
       80 FASTCALL                         TABLE_INSERT ; [+2]
       81 GETIMPORT                        R16 K14 [table.insert]
       83 CALL                             R16 -1 0
       84 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
       86 MOVE                             R17 R10
       87 MOVE                             R18 R15
       88 GETIMPORT                        R16 K14 [table.insert]
       90 CALL                             R16 2 0
       91 FORGLOOP                         R11 2 [inext] ; [-24]
       93 GETIMPORT                        R11 K9 [ipairs]
       95 MOVE                             R12 R8
       96 CALL                             R11 1 3
       97 FORGPREP_INEXT                   R11
       98 MOVE                             R17 R9
       99 GETUPVAL                         R19 0
      100 GETTABLEKS                       R18 R19 K10 ["fromInstance"]
      102 MOVE                             R19 R15
      103 LOADNIL                          R20
      104 GETUPVAL                         R22 1
      105 GETTABLEKS                       R21 R22 K16 ["Upvalue"]
      107 MOVE                             R22 R4
      108 MOVE                             R23 R5
      109 CALL                             R18 5 -1
      110 FASTCALL                         TABLE_INSERT ; [+2]
      111 GETIMPORT                        R16 K14 [table.insert]
      113 CALL                             R16 -1 0
      114 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
      116 MOVE                             R17 R10
      117 MOVE                             R18 R15
      118 GETIMPORT                        R16 K14 [table.insert]
      120 CALL                             R16 2 0
      121 FORGLOOP                         R11 2 [inext] ; [-24]
      123 GETUPVAL                         R13 2
      124 MOVE                             R14 R3
      125 MOVE                             R15 R9
      126 CALL                             R13 2 -1
      127 NAMECALL                         R11 R2 K17 ["dispatch"]
      129 CALL                             R11 -1 0
      130 GETUPVAL                         R13 3
      131 LOADK                            R14 K18 [""]
      132 MOVE                             R15 R10
      133 MOVE                             R16 R3
      134 LOADB                            R17 1
      135 MOVE                             R18 R0
      136 CALL                             R13 5 -1
      137 NAMECALL                         R11 R2 K17 ["dispatch"]
      139 CALL                             R11 -1 0
      140 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R6 1
        1 SETTABLE                         R6 R1 R0
        2 GETUPVAL                         R8 0
        3 GETTABLEKS                       R7 R8 K0 ["Local"]
        5 GETTABLE                         R6 R1 R7
        6 JUMPIFNOT                        R6 ; [+16]
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R7 R8 K1 ["Global"]
       10 GETTABLE                         R6 R1 R7
       11 JUMPIFNOT                        R6 ; [+11]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R7 R8 K2 ["Upvalue"]
       15 GETTABLE                         R6 R1 R7
       16 JUMPIFNOT                        R6 ; [+6]
       17 GETUPVAL                         R6 1
       18 MOVE                             R7 R2
       19 MOVE                             R8 R3
       20 MOVE                             R9 R4
       21 MOVE                             R10 R5
       22 CALL                             R6 4 0
       23 RETURN                           R0 0

PROTO_2:
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
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K5 ["Local"]
       20 GETUPVAL                         R2 3
       21 GETUPVAL                         R3 4
       22 GETUPVAL                         R4 5
       23 GETUPVAL                         R5 1
       24 GETUPVAL                         R6 0
       25 LOADB                            R7 1
       26 SETTABLE                         R7 R2 R1
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R8 R9 K5 ["Local"]
       30 GETTABLE                         R7 R2 R8
       31 JUMPIFNOT                        R7 ; [+16]
       32 GETUPVAL                         R9 2
       33 GETTABLEKS                       R8 R9 K6 ["Global"]
       35 GETTABLE                         R7 R2 R8
       36 JUMPIFNOT                        R7 ; [+11]
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R8 R9 K7 ["Upvalue"]
       40 GETTABLE                         R7 R2 R8
       41 JUMPIFNOT                        R7 ; [+6]
       42 GETUPVAL                         R7 6
       43 MOVE                             R8 R3
       44 MOVE                             R9 R4
       45 MOVE                             R10 R5
       46 MOVE                             R11 R6
       47 CALL                             R7 4 0
       48 RETURN                           R0 0

PROTO_3:
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
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K5 ["Global"]
       20 GETUPVAL                         R2 3
       21 GETUPVAL                         R3 4
       22 GETUPVAL                         R4 5
       23 GETUPVAL                         R5 1
       24 GETUPVAL                         R6 0
       25 LOADB                            R7 1
       26 SETTABLE                         R7 R2 R1
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R8 R9 K6 ["Local"]
       30 GETTABLE                         R7 R2 R8
       31 JUMPIFNOT                        R7 ; [+16]
       32 GETUPVAL                         R9 2
       33 GETTABLEKS                       R8 R9 K5 ["Global"]
       35 GETTABLE                         R7 R2 R8
       36 JUMPIFNOT                        R7 ; [+11]
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R8 R9 K7 ["Upvalue"]
       40 GETTABLE                         R7 R2 R8
       41 JUMPIFNOT                        R7 ; [+6]
       42 GETUPVAL                         R7 6
       43 MOVE                             R8 R3
       44 MOVE                             R9 R4
       45 MOVE                             R10 R5
       46 MOVE                             R11 R6
       47 CALL                             R7 4 0
       48 RETURN                           R0 0

PROTO_4:
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
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K5 ["Upvalue"]
       20 GETUPVAL                         R2 3
       21 GETUPVAL                         R3 4
       22 GETUPVAL                         R4 5
       23 GETUPVAL                         R5 1
       24 GETUPVAL                         R6 0
       25 LOADB                            R7 1
       26 SETTABLE                         R7 R2 R1
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R8 R9 K6 ["Local"]
       30 GETTABLE                         R7 R2 R8
       31 JUMPIFNOT                        R7 ; [+16]
       32 GETUPVAL                         R9 2
       33 GETTABLEKS                       R8 R9 K7 ["Global"]
       35 GETTABLE                         R7 R2 R8
       36 JUMPIFNOT                        R7 ; [+11]
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R8 R9 K5 ["Upvalue"]
       40 GETTABLE                         R7 R2 R8
       41 JUMPIFNOT                        R7 ; [+6]
       42 GETUPVAL                         R7 6
       43 MOVE                             R8 R3
       44 MOVE                             R9 R4
       45 MOVE                             R10 R5
       46 MOVE                             R11 R6
       47 CALL                             R7 4 0
       48 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R4 0 0
        2 GETTABLEKS                       R7 R1 K0 ["Locals"]
        4 NEWCLOSURE                       R8 P0
        5 CAPTURE                          VAL R3
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R4
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U1
       12 NAMECALL                         R5 R0 K1 ["Populate"]
       14 CALL                             R5 3 0
       15 GETTABLEKS                       R7 R1 K2 ["Globals"]
       17 NEWCLOSURE                       R8 P1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U1
       25 NAMECALL                         R5 R0 K1 ["Populate"]
       27 CALL                             R5 3 0
       28 GETTABLEKS                       R7 R1 K3 ["Upvalues"]
       30 NEWCLOSURE                       R8 P2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U1
       38 NAMECALL                         R5 R0 K1 ["Populate"]
       40 CALL                             R5 3 0
       41 RETURN                           R0 0

PROTO_6:
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
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R2 3
       19 GETUPVAL                         R3 4
       20 GETUPVAL                         R4 1
       21 GETUPVAL                         R5 0
       22 CALL                             R1 4 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Populated"]
        3 JUMPIF                           R2 ; [+11]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R4 0
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U0
       12 NAMECALL                         R2 R2 K1 ["Populate"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 RETURN                           R3 1

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
       17 GETTABLEKS                       R4 R1 K7 ["Watch"]
       19 GETTABLEKS                       R3 R4 K8 ["ScopeEnum"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R1 K9 ["StepStateBundle"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R8 R0 K3 ["Src"]
       31 GETTABLEKS                       R7 R8 K4 ["Models"]
       33 GETTABLEKS                       R6 R7 K7 ["Watch"]
       35 GETTABLEKS                       R5 R6 K10 ["VariableRow"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R6 R0 K3 ["Src"]
       40 GETTABLEKS                       R5 R6 K11 ["Actions"]
       42 GETIMPORT                        R6 K6 [require]
       44 GETTABLEKS                       R8 R5 K7 ["Watch"]
       46 GETTABLEKS                       R7 R8 K12 ["AddRootVariables"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R8 R0 K3 ["Src"]
       51 GETTABLEKS                       R7 R8 K13 ["Thunks"]
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R10 R7 K14 ["Common"]
       57 GETTABLEKS                       R9 R10 K15 ["AddChildRowsToVars"]
       59 CALL                             R8 1 1
       60 DUPCLOSURE                       R9 K16 [PROTO_0]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R8
       65 DUPCLOSURE                       R10 K17 [PROTO_1]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R9
       68 DUPCLOSURE                       R11 K18 [PROTO_5]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R9
       71 DUPCLOSURE                       R12 K19 [PROTO_8]
       72 CAPTURE                          VAL R11
       73 RETURN                           R12 1
