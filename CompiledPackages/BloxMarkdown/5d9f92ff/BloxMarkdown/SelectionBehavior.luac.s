PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LENGTH                           R2 R0
        2 JUMP                             ; [+1]
        3 LOADN                            R2 0
        4 JUMPIFNOT                        R1 ; [+2]
        5 LENGTH                           R3 R1
        6 JUMP                             ; [+1]
        7 LOADN                            R3 0
        8 JUMPIFEQ                         R2 R3 ; [+3]
       10 LOADB                            R4 0
       11 RETURN                           R4 1
       12 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
       14 LOADB                            R4 1
       15 RETURN                           R4 1
       16 MOVE                             R4 R0
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 FORGPREP                         R4
       20 GETTABLE                         R9 R1 R7
       21 JUMPIFEQ                         R8 R9 ; [+3]
       23 LOADB                            R9 0
       24 RETURN                           R9 1
       25 FORGLOOP                         R4 2 ; [-6]
       27 LOADB                            R4 1
       28 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R3 2
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R1 ; [+50]
        7 JUMPIFNOT                        R2 ; [+49]
        8 DUPTABLE                         R3 K4 [{"rows", "font", "textSize", "lineHeight"}]
        9 SETTABLEKS                       R0 R3 K0 ["rows"]
       11 GETUPVAL                         R4 3
       12 SETTABLEKS                       R4 R3 K1 ["font"]
       14 GETUPVAL                         R4 4
       15 SETTABLEKS                       R4 R3 K2 ["textSize"]
       17 GETUPVAL                         R4 5
       18 SETTABLEKS                       R4 R3 K3 ["lineHeight"]
       20 GETTABLEKS                       R4 R1 K5 ["layoutRegistry"]
       22 JUMPIFNOT                        R4 ; [+3]
       23 GETTABLEKS                       R4 R1 K5 ["layoutRegistry"]
       25 SETTABLE                         R3 R4 R2
       26 GETUPVAL                         R5 6
       27 JUMPIFNOT                        R5 ; [+4]
       28 GETUPVAL                         R4 0
       29 GETUPVAL                         R5 6
       30 CALL                             R4 1 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 GETTABLEKS                       R5 R1 K6 ["itemLayoutRegistry"]
       35 JUMPIFNOT                        R5 ; [+21]
       36 JUMPIFNOT                        R4 ; [+20]
       37 LENGTH                           R5 R4
       38 LOADN                            R6 0
       39 JUMPIFNOTLT                      R6 R5 ; [+17]
       41 FASTCALL1                        TOSTRING R2 ; [+3]
       42 MOVE                             R10 R2
       43 GETIMPORT                        R9 K8 [tostring]
       45 CALL                             R9 1 1
       46 MOVE                             R6 R9
       47 LOADK                            R7 K9 [":"]
       48 GETTABLEN                        R9 R4 1
       49 FASTCALL1                        TOSTRING R9 ; [+2]
       50 GETIMPORT                        R8 K8 [tostring]
       52 CALL                             R8 1 1
       53 CONCAT                           R5 R6 R8
       54 GETTABLEKS                       R6 R1 K6 ["itemLayoutRegistry"]
       56 SETTABLE                         R3 R6 R5
       57 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+53]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["layoutSegments"]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K1 [999999]
        7 CALL                             R2 2 1
        8 LOADN                            R3 0
        9 MOVE                             R4 R2
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 LOADN                            R9 0
       14 MOVE                             R10 R8
       15 LOADNIL                          R11
       16 LOADNIL                          R12
       17 FORGPREP                         R10
       18 GETTABLEKS                       R15 R14 K2 ["width"]
       20 ADD                              R9 R9 R15
       21 FORGLOOP                         R10 2 ; [-4]
       23 FASTCALL2                        MATH_MAX R3 R9 ; [+5]
       25 MOVE                             R11 R3
       26 MOVE                             R12 R9
       27 GETIMPORT                        R10 K5 [math.max]
       29 CALL                             R10 2 1
       30 MOVE                             R3 R10
       31 FORGLOOP                         R4 2 ; [-19]
       33 GETUPVAL                         R4 2
       34 MOVE                             R5 R2
       35 CALL                             R4 1 0
       36 GETUPVAL                         R4 3
       37 GETIMPORT                        R5 K8 [UDim2.fromOffset]
       39 FASTCALL2K                       MATH_MAX R3 K9 ; [+5]
       41 MOVE                             R7 R3
       42 LOADK                            R8 K9 [1]
       43 GETIMPORT                        R6 K5 [math.max]
       45 CALL                             R6 2 1
       46 LENGTH                           R8 R2
       47 GETUPVAL                         R9 4
       48 MUL                              R7 R8 R9
       49 CALL                             R5 2 -1
       50 CALL                             R4 -1 0
       51 GETUPVAL                         R4 5
       52 MOVE                             R5 R2
       53 CALL                             R4 1 0
       54 RETURN                           R0 0
       55 JUMPIFNOT                        R1 ; [+27]
       56 GETTABLEKS                       R2 R1 K10 ["AbsoluteSize"]
       58 GETTABLEKS                       R2 R2 K11 ["X"]
       60 GETUPVAL                         R3 1
       61 GETTABLEKS                       R3 R3 K0 ["layoutSegments"]
       63 MOVE                             R4 R0
       64 MOVE                             R5 R2
       65 CALL                             R3 2 1
       66 GETUPVAL                         R4 2
       67 MOVE                             R5 R3
       68 CALL                             R4 1 0
       69 GETUPVAL                         R4 3
       70 GETIMPORT                        R5 K13 [UDim2.new]
       72 LOADN                            R6 1
       73 LOADN                            R7 0
       74 LOADN                            R8 0
       75 LENGTH                           R10 R3
       76 GETUPVAL                         R11 4
       77 MUL                              R9 R10 R11
       78 CALL                             R5 4 -1
       79 CALL                             R4 -1 0
       80 GETUPVAL                         R4 5
       81 MOVE                             R5 R3
       82 CALL                             R4 1 0
       83 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOT                        R0 ; [+42]
        4 GETUPVAL                         R1 2
        5 JUMPIFNOT                        R1 ; [+40]
        6 GETTABLEKS                       R1 R0 K0 ["layoutRegistry"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETTABLEKS                       R1 R0 K0 ["layoutRegistry"]
       11 GETUPVAL                         R2 2
       12 LOADNIL                          R3
       13 SETTABLE                         R3 R1 R2
       14 GETUPVAL                         R2 3
       15 JUMPIFNOT                        R2 ; [+4]
       16 GETUPVAL                         R1 0
       17 GETUPVAL                         R2 3
       18 CALL                             R1 1 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R1
       21 GETTABLEKS                       R2 R0 K1 ["itemLayoutRegistry"]
       23 JUMPIFNOT                        R2 ; [+22]
       24 JUMPIFNOT                        R1 ; [+21]
       25 LENGTH                           R2 R1
       26 LOADN                            R3 0
       27 JUMPIFNOTLT                      R3 R2 ; [+18]
       29 GETUPVAL                         R7 2
       30 FASTCALL1                        TOSTRING R7 ; [+2]
       31 GETIMPORT                        R6 K3 [tostring]
       33 CALL                             R6 1 1
       34 MOVE                             R3 R6
       35 LOADK                            R4 K4 [":"]
       36 GETTABLEN                        R6 R1 1
       37 FASTCALL1                        TOSTRING R6 ; [+2]
       38 GETIMPORT                        R5 K3 [tostring]
       40 CALL                             R5 1 1
       41 CONCAT                           R2 R3 R5
       42 GETTABLEKS                       R3 R0 K1 ["itemLayoutRegistry"]
       44 LOADNIL                          R4
       45 SETTABLE                         R4 R3 R2
       46 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 3
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R1
       11 MOVE                             R6 R2
       12 CALL                             R4 2 0
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U6
       18 JUMPIFNOT                        R2 ; [+18]
       19 GETUPVAL                         R5 7
       20 JUMPIF                           R5 ; [+16]
       21 LOADK                            R7 K0 ["AbsoluteSize"]
       22 NAMECALL                         R5 R2 K1 ["GetPropertyChangedSignal"]
       24 CALL                             R5 2 1
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          VAL R2
       30 NAMECALL                         R5 R5 K2 ["Connect"]
       32 CALL                             R5 2 1
       33 NEWCLOSURE                       R6 P2
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R4
       36 RETURN                           R6 1
       37 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 JUMPIFNOT                        R3 ; [+3]
       10 GETTABLEKS                       R4 R3 K0 ["getSelection"]
       12 JUMPIF                           R4 ; [+5]
       13 GETUPVAL                         R4 3
       14 NEWTABLE                         R5 0 0
       16 CALL                             R4 1 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R4 R3 K0 ["getSelection"]
       20 MOVE                             R5 R0
       21 CALL                             R4 1 1
       22 JUMPIF                           R4 ; [+5]
       23 GETUPVAL                         R5 3
       24 NEWTABLE                         R6 0 0
       26 CALL                             R5 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R5 4
       29 MOVE                             R6 R0
       30 CALL                             R5 1 1
       31 JUMPIF                           R5 ; [+5]
       32 GETUPVAL                         R6 3
       33 NEWTABLE                         R7 0 0
       35 CALL                             R6 1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R7 5
       38 JUMPIFNOT                        R7 ; [+4]
       39 GETUPVAL                         R6 5
       40 MOVE                             R7 R0
       41 CALL                             R6 1 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R6
       44 GETUPVAL                         R7 6
       45 GETTABLEKS                       R7 R7 K1 ["getBlockSelectionRange"]
       47 MOVE                             R8 R5
       48 MOVE                             R9 R4
       49 LENGTH                           R10 R1
       50 MOVE                             R11 R6
       51 CALL                             R7 4 1
       52 JUMPIF                           R7 ; [+5]
       53 GETUPVAL                         R8 3
       54 NEWTABLE                         R9 0 0
       56 CALL                             R8 1 0
       57 RETURN                           R0 0
       58 JUMPIFNOTEQKS                    R7 K2 ["full"] ; [+45]
       60 NEWTABLE                         R8 0 0
       62 MOVE                             R9 R2
       63 LOADNIL                          R10
       64 LOADNIL                          R11
       65 FORGPREP                         R9
       66 SUBK                             R15 R12 K3 [1]
       67 GETUPVAL                         R16 7
       68 MUL                              R14 R15 R16
       69 LOADN                            R15 0
       70 MOVE                             R16 R13
       71 LOADNIL                          R17
       72 LOADNIL                          R18
       73 FORGPREP                         R16
       74 GETTABLEKS                       R21 R20 K4 ["width"]
       76 ADD                              R15 R15 R21
       77 FORGLOOP                         R16 2 ; [-4]
       79 LOADN                            R16 0
       80 JUMPIFNOTLT                      R16 R15 ; [+17]
       82 DUPTABLE                         R18 K10 [{["x"] = 0, ["y"], ["width"], ["height"], ["index"]}]
       83 SETTABLEKS                       R14 R18 K7 ["y"]
       85 SETTABLEKS                       R15 R18 K4 ["width"]
       87 GETUPVAL                         R19 7
       88 SETTABLEKS                       R19 R18 K8 ["height"]
       90 SETTABLEKS                       R12 R18 K9 ["index"]
       92 FASTCALL2                        TABLE_INSERT R8 R18 ; [+4]
       94 MOVE                             R17 R8
       95 GETIMPORT                        R16 K13 [table.insert]
       97 CALL                             R16 2 0
       98 FORGLOOP                         R9 2 ; [-33]
      100 GETUPVAL                         R9 3
      101 MOVE                             R10 R8
      102 CALL                             R9 1 0
      103 RETURN                           R0 0
      104 GETUPVAL                         R8 8
      105 GETUPVAL                         R9 9
      106 CALL                             R8 1 1
      107 JUMPIFNOT                        R8 ; [+5]
      108 GETTABLEKS                       R9 R8 K14 ["AbsoluteSize"]
      110 GETTABLEKS                       R9 R9 K15 ["X"]
      112 JUMP                             ; [+1]
      113 LOADN                            R9 0
      114 GETUPVAL                         R10 10
      115 GETTABLEKS                       R10 R10 K16 ["computeSelectionRects"]
      117 MOVE                             R11 R2
      118 GETUPVAL                         R12 7
      119 MOVE                             R13 R9
      120 GETTABLEKS                       R14 R7 K17 ["startSeg"]
      122 GETTABLEKS                       R15 R7 K18 ["startChar"]
      124 GETTABLEKS                       R16 R7 K19 ["endSeg"]
      126 GETTABLEKS                       R17 R7 K20 ["endChar"]
      128 GETUPVAL                         R18 11
      129 GETUPVAL                         R19 12
      130 CALL                             R10 9 1
      131 MOVE                             R11 R10
      132 LOADNIL                          R12
      133 LOADNIL                          R13
      134 FORGPREP                         R11
      135 SETTABLEKS                       R14 R15 K9 ["index"]
      137 FORGLOOP                         R11 2 ; [-3]
      139 GETUPVAL                         R11 3
      140 MOVE                             R12 R10
      141 CALL                             R11 1 0
      142 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+3]
        7 GETTABLEKS                       R3 R2 K0 ["getSelection"]
        9 JUMPIF                           R3 ; [+2]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 GETTABLEKS                       R3 R2 K0 ["getSelection"]
       14 MOVE                             R4 R0
       15 CALL                             R3 1 1
       16 JUMPIF                           R3 ; [+2]
       17 LOADNIL                          R4
       18 RETURN                           R4 1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K1 ["isCollapsed"]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 JUMPIF                           R4 ; [+2]
       25 LOADNIL                          R4
       26 RETURN                           R4 1
       27 GETTABLEKS                       R4 R3 K2 ["anchor"]
       29 GETTABLEKS                       R5 R4 K3 ["blockIndex"]
       31 GETUPVAL                         R6 3
       32 MOVE                             R7 R0
       33 CALL                             R6 1 1
       34 JUMPIFEQ                         R5 R6 ; [+3]
       36 LOADNIL                          R5
       37 RETURN                           R5 1
       38 GETUPVAL                         R6 4
       39 JUMPIFNOT                        R6 ; [+4]
       40 GETUPVAL                         R5 4
       41 MOVE                             R6 R0
       42 CALL                             R5 1 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 GETTABLEKS                       R7 R4 K4 ["path"]
       47 JUMPIFNOT                        R7 ; [+2]
       48 LENGTH                           R8 R7
       49 JUMP                             ; [+1]
       50 LOADN                            R8 0
       51 JUMPIFNOT                        R5 ; [+2]
       52 LENGTH                           R9 R5
       53 JUMP                             ; [+1]
       54 LOADN                            R9 0
       55 JUMPIFEQ                         R8 R9 ; [+3]
       57 LOADB                            R6 0
       58 JUMP                             ; [+16]
       59 JUMPIFNOTEQKN                    R8 K5 [0] ; [+3]
       61 LOADB                            R6 1
       62 JUMP                             ; [+12]
       63 MOVE                             R10 R7
       64 LOADNIL                          R11
       65 LOADNIL                          R12
       66 FORGPREP                         R10
       67 GETTABLE                         R15 R5 R13
       68 JUMPIFEQ                         R14 R15 ; [+3]
       70 LOADB                            R6 0
       71 JUMP                             ; [+3]
       72 FORGLOOP                         R10 2 ; [-6]
       74 LOADB                            R6 1
       75 JUMPIF                           R6 ; [+2]
       76 LOADNIL                          R6
       77 RETURN                           R6 1
       78 GETUPVAL                         R6 5
       79 GETTABLEKS                       R6 R6 K6 ["computeCursorPosition"]
       81 MOVE                             R7 R1
       82 GETUPVAL                         R8 6
       83 GETTABLEKS                       R9 R4 K7 ["segmentIndex"]
       85 GETTABLEKS                       R10 R4 K8 ["charOffset"]
       87 GETUPVAL                         R11 7
       88 GETUPVAL                         R12 8
       89 CALL                             R6 6 -1
       90 RETURN                           R6 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 GETIMPORT                        R2 K2 [Vector2.new]
        8 GETTABLEKS                       R4 R0 K3 ["Position"]
       10 GETTABLEKS                       R4 R4 K4 ["X"]
       12 GETTABLEKS                       R5 R1 K5 ["AbsolutePosition"]
       14 GETTABLEKS                       R5 R5 K4 ["X"]
       16 SUB                              R3 R4 R5
       17 GETTABLEKS                       R5 R0 K3 ["Position"]
       19 GETTABLEKS                       R5 R5 K6 ["Y"]
       21 GETTABLEKS                       R6 R1 K5 ["AbsolutePosition"]
       23 GETTABLEKS                       R6 R6 K6 ["Y"]
       25 SUB                              R4 R5 R6
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K0 ["preferredColumn"]
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R1 K1 ["isDragging"]
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R4 2
       13 CALL                             R3 1 1
       14 JUMPIF                           R3 ; [+2]
       15 LOADNIL                          R2
       16 JUMP                             ; [+22]
       17 GETIMPORT                        R4 K4 [Vector2.new]
       19 GETTABLEKS                       R6 R0 K5 ["Position"]
       21 GETTABLEKS                       R6 R6 K6 ["X"]
       23 GETTABLEKS                       R7 R3 K7 ["AbsolutePosition"]
       25 GETTABLEKS                       R7 R7 K6 ["X"]
       27 SUB                              R5 R6 R7
       28 GETTABLEKS                       R7 R0 K5 ["Position"]
       30 GETTABLEKS                       R7 R7 K8 ["Y"]
       32 GETTABLEKS                       R8 R3 K7 ["AbsolutePosition"]
       34 GETTABLEKS                       R8 R8 K8 ["Y"]
       36 SUB                              R6 R7 R8
       37 CALL                             R4 2 1
       38 MOVE                             R2 R4
       39 JUMPIF                           R2 ; [+1]
       40 RETURN                           R0 0
       41 GETUPVAL                         R3 3
       42 GETUPVAL                         R4 0
       43 GETUPVAL                         R5 4
       44 CALL                             R4 1 1
       45 GETUPVAL                         R5 0
       46 GETUPVAL                         R6 2
       47 CALL                             R5 1 -1
       48 CALL                             R3 -1 0
       49 GETUPVAL                         R3 0
       50 GETUPVAL                         R4 5
       51 CALL                             R3 1 1
       52 GETUPVAL                         R4 6
       53 GETTABLEKS                       R4 R4 K9 ["charHitTest"]
       55 MOVE                             R5 R2
       56 MOVE                             R6 R3
       57 GETUPVAL                         R7 7
       58 GETUPVAL                         R8 8
       59 GETUPVAL                         R9 9
       60 CALL                             R4 5 2
       61 JUMPIF                           R4 ; [+2]
       62 LOADN                            R4 1
       63 LOADN                            R5 0
       64 GETUPVAL                         R7 10
       65 JUMPIFNOT                        R7 ; [+4]
       66 GETUPVAL                         R6 0
       67 GETUPVAL                         R7 10
       68 CALL                             R6 1 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R6
       71 GETUPVAL                         R7 11
       72 GETTABLEKS                       R7 R7 K10 ["createCollapsed"]
       74 GETUPVAL                         R8 0
       75 GETUPVAL                         R9 12
       76 CALL                             R8 1 1
       77 MOVE                             R9 R4
       78 MOVE                             R10 R5
       79 MOVE                             R11 R6
       80 CALL                             R7 4 1
       81 GETTABLEKS                       R8 R1 K11 ["setSelection"]
       83 MOVE                             R9 R7
       84 CALL                             R8 1 0
       85 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K0 ["isDragging"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K1 ["preferredColumn"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R3 R1 K2 ["getSelection"]
       15 CALL                             R2 1 1
       16 JUMPIF                           R2 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 0
       19 GETUPVAL                         R5 2
       20 CALL                             R4 1 1
       21 JUMPIF                           R4 ; [+2]
       22 LOADNIL                          R3
       23 JUMP                             ; [+22]
       24 GETIMPORT                        R5 K5 [Vector2.new]
       26 GETTABLEKS                       R7 R0 K6 ["Position"]
       28 GETTABLEKS                       R7 R7 K7 ["X"]
       30 GETTABLEKS                       R8 R4 K8 ["AbsolutePosition"]
       32 GETTABLEKS                       R8 R8 K7 ["X"]
       34 SUB                              R6 R7 R8
       35 GETTABLEKS                       R8 R0 K6 ["Position"]
       37 GETTABLEKS                       R8 R8 K9 ["Y"]
       39 GETTABLEKS                       R9 R4 K8 ["AbsolutePosition"]
       41 GETTABLEKS                       R9 R9 K9 ["Y"]
       43 SUB                              R7 R8 R9
       44 CALL                             R5 2 1
       45 MOVE                             R3 R5
       46 JUMPIF                           R3 ; [+1]
       47 RETURN                           R0 0
       48 GETUPVAL                         R4 0
       49 GETUPVAL                         R5 3
       50 CALL                             R4 1 1
       51 GETUPVAL                         R5 4
       52 GETTABLEKS                       R5 R5 K10 ["charHitTest"]
       54 MOVE                             R6 R3
       55 MOVE                             R7 R4
       56 GETUPVAL                         R8 5
       57 GETUPVAL                         R9 6
       58 GETUPVAL                         R10 7
       59 CALL                             R5 5 2
       60 JUMPIFNOT                        R5 ; [+29]
       61 JUMPIFNOT                        R6 ; [+28]
       62 GETUPVAL                         R7 0
       63 GETUPVAL                         R8 8
       64 CALL                             R7 1 1
       65 GETUPVAL                         R9 9
       66 JUMPIFNOT                        R9 ; [+4]
       67 GETUPVAL                         R8 0
       68 GETUPVAL                         R9 9
       69 CALL                             R8 1 1
       70 JUMP                             ; [+1]
       71 LOADNIL                          R8
       72 GETUPVAL                         R9 10
       73 GETTABLEKS                       R9 R9 K11 ["createPosition"]
       75 MOVE                             R10 R7
       76 MOVE                             R11 R5
       77 MOVE                             R12 R6
       78 MOVE                             R13 R8
       79 CALL                             R9 4 1
       80 GETTABLEKS                       R10 R1 K12 ["setSelection"]
       82 DUPTABLE                         R11 K15 [{"anchor", "focus"}]
       83 GETTABLEKS                       R12 R2 K13 ["anchor"]
       85 SETTABLEKS                       R12 R11 K13 ["anchor"]
       87 SETTABLEKS                       R9 R11 K14 ["focus"]
       89 CALL                             R10 1 0
       90 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["api"]
        2 GETTABLEKS                       R2 R1 K1 ["peek"]
        4 GETTABLEKS                       R3 R0 K2 ["getSegments"]
        6 GETTABLEKS                       R4 R0 K3 ["lineHeight"]
        8 GETTABLEKS                       R5 R0 K4 ["font"]
       10 GETTABLEKS                       R6 R0 K5 ["textSize"]
       12 GETTABLEKS                       R7 R0 K6 ["blockIndex"]
       14 GETTABLEKS                       R8 R0 K7 ["path"]
       16 GETTABLEKS                       R9 R0 K8 ["editorCtx"]
       18 GETTABLEKS                       R10 R0 K9 ["containerRef"]
       20 GETTABLEKS                       R11 R0 K10 ["noWrap"]
       22 GETTABLEKS                       R12 R1 K11 ["createSignal"]
       24 GETIMPORT                        R13 K14 [UDim2.new]
       26 LOADN                            R14 1
       27 LOADN                            R15 0
       28 LOADN                            R16 0
       29 LOADN                            R17 0
       30 CALL                             R13 4 -1
       31 CALL                             R12 -1 2
       32 GETTABLEKS                       R14 R1 K11 ["createSignal"]
       34 NEWTABLE                         R15 0 0
       36 CALL                             R14 1 2
       37 NEWCLOSURE                       R16 P0
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R9
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R8
       45 NEWCLOSURE                       R17 P1
       46 CAPTURE                          VAL R11
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          VAL R15
       49 CAPTURE                          VAL R13
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R16
       52 GETTABLEKS                       R18 R1 K15 ["createEffect"]
       54 NEWCLOSURE                       R19 P2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R10
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R17
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R11
       63 LOADK                            R20 K16 ["sel-layout"]
       64 CALL                             R18 2 0
       65 GETTABLEKS                       R18 R1 K11 ["createSignal"]
       67 NEWTABLE                         R19 0 0
       69 CALL                             R18 1 2
       70 GETTABLEKS                       R20 R1 K15 ["createEffect"]
       72 NEWCLOSURE                       R21 P3
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R14
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R19
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R8
       79 CAPTURE                          UPVAL U1
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R10
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 LOADK                            R22 K17 ["selection-rects"]
       87 CALL                             R20 2 0
       88 GETTABLEKS                       R20 R1 K18 ["createComputed"]
       90 NEWCLOSURE                       R21 P4
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R9
       93 CAPTURE                          UPVAL U1
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R8
       96 CAPTURE                          UPVAL U0
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R6
      100 LOADK                            R22 K19 ["cursor-rect"]
      101 CALL                             R20 2 1
      102 NEWCLOSURE                       R21 P5
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R10
      105 NEWCLOSURE                       R22 P6
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R17
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R14
      112 CAPTURE                          UPVAL U0
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R8
      117 CAPTURE                          UPVAL U1
      118 CAPTURE                          VAL R7
      119 NEWCLOSURE                       R23 P7
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R14
      124 CAPTURE                          UPVAL U0
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R8
      130 CAPTURE                          UPVAL U1
      131 NEWCLOSURE                       R24 P8
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R14
      134 DUPTABLE                         R25 K27 [{"selectionRects", "cursorRect", "overlaySize", "getRows", "getRelPos", "handleMouseDown", "handleMouseDrag"}]
      135 SETTABLEKS                       R18 R25 K20 ["selectionRects"]
      137 SETTABLEKS                       R20 R25 K21 ["cursorRect"]
      139 SETTABLEKS                       R12 R25 K22 ["overlaySize"]
      141 SETTABLEKS                       R24 R25 K23 ["getRows"]
      143 SETTABLEKS                       R21 R25 K24 ["getRelPos"]
      145 SETTABLEKS                       R22 R25 K25 ["handleMouseDown"]
      147 SETTABLEKS                       R23 R25 K26 ["handleMouseDrag"]
      149 RETURN                           R25 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxMarkdown"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BloxCodeEditor"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["RichTextHitTest"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R5 R5 K4 ["Parent"]
       22 GETTABLEKS                       R5 R5 K9 ["EditorState"]
       24 CALL                             R4 1 1
       25 NEWTABLE                         R5 1 0
       27 DUPCLOSURE                       R6 K10 [PROTO_0]
       28 DUPCLOSURE                       R7 K11 [PROTO_13]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 SETTABLEKS                       R7 R5 K12 ["setup"]
       33 RETURN                           R5 1
