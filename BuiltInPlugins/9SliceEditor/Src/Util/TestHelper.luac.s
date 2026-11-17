PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["update"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["createElement"]
        8 GETUPVAL                         R5 3
        9 GETUPVAL                         R6 4
       10 GETTABLEKS                       R6 R6 K2 ["Dictionary"]
       12 GETTABLEKS                       R6 R6 K3 ["join"]
       14 GETUPVAL                         R7 5
       15 MOVE                             R8 R0
       16 CALL                             R6 2 -1
       17 CALL                             R4 -1 -1
       18 CALL                             R3 -1 -1
       19 CALL                             R1 -1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R3 R3 K2 ["CoreGui"]
        4 LOADK                            R5 K3 ["9SliceEditorMockGui"]
        5 NAMECALL                         R3 R3 K4 ["FindFirstChild"]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R3 ; [+3]
        9 NAMECALL                         R4 R3 K5 ["Destroy"]
       11 CALL                             R4 1 0
       12 GETIMPORT                        R4 K8 [Instance.new]
       14 LOADK                            R5 K9 ["ScreenGui"]
       15 CALL                             R4 1 1
       16 LOADK                            R5 K3 ["9SliceEditorMockGui"]
       17 SETTABLEKS                       R5 R4 K10 ["Name"]
       19 GETIMPORT                        R5 K1 [game]
       21 GETTABLEKS                       R5 R5 K2 ["CoreGui"]
       23 SETTABLEKS                       R5 R4 K11 ["Parent"]
       25 GETUPVAL                         R5 0
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K12 ["createElement"]
       29 MOVE                             R7 R0
       30 MOVE                             R8 R1
       31 CALL                             R6 2 -1
       32 CALL                             R5 -1 1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K13 ["mount"]
       36 MOVE                             R7 R5
       37 MOVE                             R8 R4
       38 CALL                             R6 2 1
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R6
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R1
       46 MOVE                             R8 R2
       47 MOVE                             R9 R4
       48 MOVE                             R10 R7
       49 CALL                             R8 2 0
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K14 ["unmount"]
       53 MOVE                             R9 R6
       54 CALL                             R8 1 0
       55 LOADNIL                          R8
       56 SETTABLEKS                       R8 R4 K11 ["Parent"]
       58 NAMECALL                         R8 R4 K5 ["Destroy"]
       60 CALL                             R8 1 0
       61 RETURN                           R0 0

PROTO_2:
        0 LENGTH                           R3 R0
        1 LENGTH                           R4 R1
        2 JUMPIFEQ                         R3 R4 ; [+3]
        4 LOADB                            R3 0
        5 RETURN                           R3 1
        6 ORK                              R2 R2 K0 [0.0001]
        7 LOADN                            R5 1
        8 LENGTH                           R3 R0
        9 LOADN                            R4 1
       10 FORNPREP                         R3
       11 GETTABLE                         R7 R0 R5
       12 FASTCALL1                        TYPE R7 ; [+2]
       13 GETIMPORT                        R6 K2 [type]
       15 CALL                             R6 1 1
       16 JUMPIFNOTEQKS                    R6 K3 ["number"] ; [+8]
       18 GETTABLE                         R7 R1 R5
       19 FASTCALL1                        TYPE R7 ; [+2]
       20 GETIMPORT                        R6 K2 [type]
       22 CALL                             R6 1 1
       23 JUMPIFEQKS                       R6 K3 ["number"] ; [+3]
       25 LOADB                            R6 0
       26 RETURN                           R6 1
       27 GETTABLE                         R8 R0 R5
       28 GETTABLE                         R9 R1 R5
       29 SUB                              R7 R8 R9
       30 FASTCALL1                        MATH_ABS R7 ; [+2]
       31 GETIMPORT                        R6 K6 [math.abs]
       33 CALL                             R6 1 1
       34 JUMPIFNOTLT                      R2 R6 ; [+3]
       36 LOADB                            R6 0
       37 RETURN                           R6 1
       38 FORNLOOP                         R3
       39 LOADB                            R3 1
       40 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_4:
        0 ORK                              R0 R0 K0 [10]
        1 LOADN                            R1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Heartbeat"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          REF R1
        7 NAMECALL                         R2 R2 K2 ["Connect"]
        9 CALL                             R2 2 1
       10 GETIMPORT                        R3 K4 [tick]
       12 CALL                             R3 0 1
       13 GETIMPORT                        R4 K4 [tick]
       15 CALL                             R4 0 1
       16 ADD                              R5 R3 R0
       17 JUMPIFNOTLT                      R4 R5 ; [+8]
       19 LOADN                            R4 10
       20 JUMPIFNOTLT                      R1 R4 ; [+5]
       22 GETIMPORT                        R4 K6 [wait]
       24 CALL                             R4 0 0
       25 JUMPBACK                         ; [-13]
       26 NAMECALL                         R4 R2 K7 ["Disconnect"]
       28 CALL                             R4 1 0
       29 CLOSEUPVALS                      R1
       30 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K2 [ipairs]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 3
        7 FORGPREP_INEXT                   R3
        8 GETTABLEKS                       R8 R7 K3 ["ClassName"]
       10 JUMPIFNOTEQ                      R8 R1 ; [+2]
       12 RETURN                           R7 1
       13 FORGLOOP                         R3 2 [inext] ; [-6]
       15 LOADNIL                          R3
       16 RETURN                           R3 1

PROTO_6:
        0 NEWTABLE                         R2 0 4
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R0 R4
        4 GETTABLEKS                       R5 R1 K0 ["x"]
        6 GETUPVAL                         R7 1
        7 GETTABLE                         R6 R0 R7
        8 SUB                              R4 R5 R6
        9 GETUPVAL                         R6 2
       10 GETTABLE                         R5 R0 R6
       11 GETTABLEKS                       R7 R1 K1 ["y"]
       13 GETUPVAL                         R9 3
       14 GETTABLE                         R8 R0 R9
       15 SUB                              R6 R7 R8
       16 SETLIST                          R2 R3 4 [1]
       18 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R2 0 4
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R0 R4
        4 GETTABLEKS                       R5 R1 K0 ["x"]
        6 GETUPVAL                         R7 1
        7 GETTABLE                         R6 R0 R7
        8 SUB                              R4 R5 R6
        9 GETUPVAL                         R6 2
       10 GETTABLE                         R5 R0 R6
       11 GETTABLEKS                       R7 R1 K1 ["y"]
       13 GETUPVAL                         R9 3
       14 GETTABLE                         R8 R0 R9
       15 SUB                              R6 R7 R8
       16 SETLIST                          R2 R3 4 [1]
       18 RETURN                           R2 1

PROTO_8:
        0 NEWTABLE                         R1 0 4
        2 GETTABLEKS                       R2 R0 K0 ["Min"]
        4 GETTABLEKS                       R2 R2 K1 ["X"]
        6 GETTABLEKS                       R3 R0 K2 ["Max"]
        8 GETTABLEKS                       R3 R3 K1 ["X"]
       10 GETTABLEKS                       R4 R0 K0 ["Min"]
       12 GETTABLEKS                       R4 R4 K3 ["Y"]
       14 GETTABLEKS                       R5 R0 K2 ["Max"]
       16 GETTABLEKS                       R5 R5 K3 ["Y"]
       18 SETLIST                          R1 R2 4 [1]
       20 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [Rect.new]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R0 R3
        4 GETUPVAL                         R4 1
        5 GETTABLE                         R3 R0 R4
        6 GETUPVAL                         R5 2
        7 GETTABLE                         R4 R0 R5
        8 GETUPVAL                         R6 3
        9 GETTABLE                         R5 R0 R6
       10 CALL                             R1 4 -1
       11 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["Orientation"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Src"]
       29 GETTABLEKS                       R4 R4 K6 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["mockContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Packages"]
       38 GETTABLEKS                       R5 R5 K11 ["Cryo"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K13 [game]
       43 LOADK                            R7 K14 ["RunService"]
       44 NAMECALL                         R5 R5 K15 ["GetService"]
       46 CALL                             R5 2 1
       47 NEWTABLE                         R6 8 0
       49 DUPCLOSURE                       R7 K16 [PROTO_1]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R7 R6 K17 ["withTestComponent"]
       55 DUPCLOSURE                       R7 K18 [PROTO_2]
       56 SETTABLEKS                       R7 R6 K19 ["numericalArrayFuzzyEquality"]
       58 DUPCLOSURE                       R7 K20 [PROTO_4]
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R7 R6 K21 ["waitForHeartbeat"]
       62 DUPCLOSURE                       R7 K22 [PROTO_5]
       63 SETTABLEKS                       R7 R6 K23 ["findFirstDescendantWhichIsA"]
       65 GETTABLEKS                       R7 R1 K24 ["Left"]
       67 GETTABLEKS                       R7 R7 K25 ["rawValue"]
       69 CALL                             R7 0 1
       70 GETTABLEKS                       R8 R1 K26 ["Right"]
       72 GETTABLEKS                       R8 R8 K25 ["rawValue"]
       74 CALL                             R8 0 1
       75 GETTABLEKS                       R9 R1 K27 ["Top"]
       77 GETTABLEKS                       R9 R9 K25 ["rawValue"]
       79 CALL                             R9 0 1
       80 GETTABLEKS                       R10 R1 K28 ["Bottom"]
       82 GETTABLEKS                       R10 R10 K25 ["rawValue"]
       84 CALL                             R10 0 1
       85 DUPCLOSURE                       R11 K29 [PROTO_6]
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R10
       90 SETTABLEKS                       R11 R6 K30 ["getOffsetsFromSliceRect"]
       92 DUPCLOSURE                       R11 K31 [PROTO_7]
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R10
       97 SETTABLEKS                       R11 R6 K32 ["getSliceRectFromOffsets"]
       99 DUPCLOSURE                       R11 K33 [PROTO_8]
      100 SETTABLEKS                       R11 R6 K34 ["getSliceRectFromSliceCenterRect"]
      102 DUPCLOSURE                       R11 K35 [PROTO_9]
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R10
      107 SETTABLEKS                       R11 R6 K36 ["getSliceCenterRectFromSliceRect"]
      109 RETURN                           R6 1
