PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETTABLEKS                       R1 R0 K0 ["X"]
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K1 ["Y"]
        7 RETURN                           R1 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 MOVE                             R1 R0
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 GETUPVAL                         R3 2
        4 NAMECALL                         R1 R1 K0 ["andThen"]
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K1 ["current"]
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R1 0
        3 LENGTH                           R0 R1
        4 LOADN                            R1 0
        5 JUMPIFNOTLT                      R1 R0 ; [+9]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 GETUPVAL                         R3 0
       11 LENGTH                           R2 R3
       12 GETTABLE                         R0 R1 R2
       13 JUMPIFNOT                        R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K1 ["inverted"]
       18 JUMPIFNOT                        R1 ; [+7]
       19 GETUPVAL                         R1 3
       20 LOADN                            R2 3
       21 JUMPIFLE                         R2 R1 ; [+2]
       23 LOADB                            R0 0 +1
       24 LOADB                            R0 1
       25 JUMP                             ; [+6]
       26 GETUPVAL                         R1 3
       27 LOADN                            R2 1
       28 JUMPIFLE                         R2 R1 ; [+2]
       30 LOADB                            R0 0 +1
       31 LOADB                            R0 1
       32 JUMPIF                           R0 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 0
       35 JUMPIFNOT                        R1 ; [+13]
       36 GETUPVAL                         R2 0
       37 LENGTH                           R1 R2
       38 LOADN                            R2 0
       39 JUMPIFNOTLT                      R2 R1 ; [+9]
       41 JUMPIFNOT                        R0 ; [+7]
       42 GETUPVAL                         R1 1
       43 GETTABLEKS                       R1 R1 K0 ["current"]
       45 GETUPVAL                         R3 0
       46 LENGTH                           R2 R3
       47 LOADB                            R3 1
       48 SETTABLE                         R3 R1 R2
       49 GETUPVAL                         R1 4
       50 LOADB                            R2 1
       51 CALL                             R1 1 0
       52 NEWCLOSURE                       R1 P0
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          UPVAL U4
       56 GETUPVAL                         R2 7
       57 GETTABLEKS                       R2 R2 K0 ["current"]
       59 JUMPIFNOT                        R2 ; [+11]
       60 GETUPVAL                         R2 7
       61 GETTABLEKS                       R2 R2 K0 ["current"]
       63 NEWCLOSURE                       R4 P1
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          VAL R1
       67 NAMECALL                         R2 R2 K2 ["andThen"]
       69 CALL                             R2 2 0
       70 RETURN                           R0 0
       71 GETUPVAL                         R2 6
       72 GETUPVAL                         R3 8
       73 CALL                             R3 0 1
       74 MOVE                             R5 R1
       75 NAMECALL                         R3 R3 K2 ["andThen"]
       77 CALL                             R3 2 1
       78 SETTABLEKS                       R3 R2 K0 ["current"]
       80 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 MOVE                             R1 R0
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 GETUPVAL                         R3 2
        4 NAMECALL                         R1 R1 K0 ["andThen"]
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K1 ["current"]
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R1 0
        3 LENGTH                           R0 R1
        4 LOADN                            R1 0
        5 JUMPIFNOTLT                      R1 R0 ; [+9]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 GETUPVAL                         R3 0
       11 LENGTH                           R2 R3
       12 GETTABLE                         R0 R1 R2
       13 JUMPIFNOT                        R0 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K1 ["inverted"]
       18 JUMPIFNOT                        R1 ; [+7]
       19 GETUPVAL                         R1 3
       20 LOADN                            R2 3
       21 JUMPIFLE                         R2 R1 ; [+2]
       23 LOADB                            R0 0 +1
       24 LOADB                            R0 1
       25 JUMP                             ; [+6]
       26 GETUPVAL                         R1 3
       27 LOADN                            R2 1
       28 JUMPIFLE                         R2 R1 ; [+2]
       30 LOADB                            R0 0 +1
       31 LOADB                            R0 1
       32 JUMPIF                           R0 ; [+1]
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 0
       35 JUMPIFNOT                        R1 ; [+13]
       36 GETUPVAL                         R2 0
       37 LENGTH                           R1 R2
       38 LOADN                            R2 0
       39 JUMPIFNOTLT                      R2 R1 ; [+9]
       41 JUMPIFNOT                        R0 ; [+7]
       42 GETUPVAL                         R1 1
       43 GETTABLEKS                       R1 R1 K0 ["current"]
       45 GETUPVAL                         R3 0
       46 LENGTH                           R2 R3
       47 LOADB                            R3 1
       48 SETTABLE                         R3 R1 R2
       49 GETUPVAL                         R1 4
       50 LOADB                            R2 1
       51 CALL                             R1 1 0
       52 NEWCLOSURE                       R1 P0
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          UPVAL U4
       56 GETUPVAL                         R2 7
       57 GETTABLEKS                       R2 R2 K0 ["current"]
       59 JUMPIFNOT                        R2 ; [+11]
       60 GETUPVAL                         R2 7
       61 GETTABLEKS                       R2 R2 K0 ["current"]
       63 NEWCLOSURE                       R4 P1
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          VAL R1
       67 NAMECALL                         R2 R2 K2 ["andThen"]
       69 CALL                             R2 2 0
       70 RETURN                           R0 0
       71 GETUPVAL                         R2 6
       72 GETUPVAL                         R3 8
       73 CALL                             R3 0 1
       74 MOVE                             R5 R1
       75 NAMECALL                         R3 R3 K2 ["andThen"]
       77 CALL                             R3 2 1
       78 SETTABLEKS                       R3 R2 K0 ["current"]
       80 RETURN                           R0 0

PROTO_11:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 DUPCLOSURE                       R2 K0 [PROTO_11]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 NAMECALL                         R2 R0 K1 ["GetChildren"]
       10 CALL                             R2 1 1
       11 GETTABLEN                        R1 R2 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["horizontal"]
       15 NEWCLOSURE                       R2 P1
       16 CAPTURE                          VAL R3
       17 MOVE                             R3 R2
       18 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
       20 CALL                             R3 1 1
       21 MOVE                             R4 R2
       22 GETTABLEKS                       R5 R1 K3 ["AbsoluteSize"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K4 ["inverted"]
       28 JUMPIFNOT                        R6 ; [+11]
       29 MOVE                             R7 R2
       30 GETTABLEKS                       R8 R0 K5 ["AbsoluteCanvasSize"]
       32 CALL                             R7 1 1
       33 MOVE                             R8 R2
       34 GETTABLEKS                       R9 R0 K6 ["CanvasPosition"]
       36 CALL                             R8 1 1
       37 SUB                              R6 R7 R8
       38 SUB                              R5 R6 R3
       39 JUMP                             ; [+4]
       40 MOVE                             R5 R2
       41 GETTABLEKS                       R6 R0 K6 ["CanvasPosition"]
       43 CALL                             R5 1 1
       44 GETUPVAL                         R7 3
       45 JUMPIFLT                         R5 R7 ; [+2]
       47 LOADB                            R6 0 +1
       48 LOADB                            R6 1
       49 SUB                              R9 R4 R3
       50 SUB                              R8 R9 R5
       51 GETUPVAL                         R9 4
       52 JUMPIFLT                         R8 R9 ; [+2]
       54 LOADB                            R7 0 +1
       55 LOADB                            R7 1
       56 JUMPIFNOT                        R6 ; [+3]
       57 GETUPVAL                         R8 5
       58 CALL                             R8 0 0
       59 JUMP                             ; [+23]
       60 GETUPVAL                         R8 6
       61 JUMPIFNOT                        R8 ; [+21]
       62 GETUPVAL                         R8 7
       63 JUMPIFNOT                        R8 ; [+19]
       64 GETUPVAL                         R9 7
       65 LENGTH                           R8 R9
       66 LOADN                            R9 0
       67 JUMPIFNOTLT                      R9 R8 ; [+15]
       69 GETUPVAL                         R9 8
       70 GETTABLEKS                       R9 R9 K7 ["current"]
       72 GETUPVAL                         R11 7
       73 LENGTH                           R10 R11
       74 GETTABLE                         R8 R9 R10
       75 JUMPIFNOT                        R8 ; [+7]
       76 GETUPVAL                         R8 8
       77 GETTABLEKS                       R8 R8 K7 ["current"]
       79 GETUPVAL                         R10 7
       80 LENGTH                           R9 R10
       81 LOADB                            R10 0
       82 SETTABLE                         R10 R8 R9
       83 JUMPIFNOT                        R7 ; [+3]
       84 GETUPVAL                         R8 9
       85 CALL                             R8 0 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R8 10
       88 JUMPIFNOT                        R8 ; [+21]
       89 GETUPVAL                         R8 7
       90 JUMPIFNOT                        R8 ; [+19]
       91 GETUPVAL                         R9 7
       92 LENGTH                           R8 R9
       93 LOADN                            R9 0
       94 JUMPIFNOTLT                      R9 R8 ; [+15]
       96 GETUPVAL                         R9 11
       97 GETTABLEKS                       R9 R9 K7 ["current"]
       99 GETUPVAL                         R11 7
      100 LENGTH                           R10 R11
      101 GETTABLE                         R8 R9 R10
      102 JUMPIFNOT                        R8 ; [+7]
      103 GETUPVAL                         R8 11
      104 GETTABLEKS                       R8 R8 K7 ["current"]
      106 GETUPVAL                         R10 7
      107 LENGTH                           R9 R10
      108 LOADB                            R10 0
      109 SETTABLE                         R10 R8 R9
      110 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["createElement"]
        7 GETUPVAL                         R1 1
        8 LOADNIL                          R2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1
       11 LOADNIL                          R0
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 3
       14 JUMPIF                           R0 ; [+2]
       15 LOADNIL                          R0
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 4
       18 JUMPIFNOT                        R0 ; [+7]
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K0 ["createElement"]
       22 GETUPVAL                         R1 4
       23 LOADNIL                          R2
       24 CALL                             R0 2 -1
       25 RETURN                           R0 -1
       26 GETIMPORT                        R0 K2 [_G]
       28 GETTABLEKS                       R0 R0 K3 ["__DEV__"]
       30 JUMPIFNOT                        R0 ; [+4]
       31 GETIMPORT                        R0 K5 [warn]
       33 LOADK                            R1 K6 ["default activity indicator not available"]
       34 CALL                             R0 1 0
       35 LOADNIL                          R0
       36 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["createElement"]
        7 GETUPVAL                         R1 1
        8 LOADNIL                          R2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1
       11 LOADNIL                          R0
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 3
       14 JUMPIF                           R0 ; [+2]
       15 LOADNIL                          R0
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 4
       18 JUMPIFNOT                        R0 ; [+7]
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K0 ["createElement"]
       22 GETUPVAL                         R1 4
       23 LOADNIL                          R2
       24 CALL                             R0 2 -1
       25 RETURN                           R0 -1
       26 GETIMPORT                        R0 K2 [_G]
       28 GETTABLEKS                       R0 R0 K3 ["__DEV__"]
       30 JUMPIFNOT                        R0 ; [+4]
       31 GETIMPORT                        R0 K5 [warn]
       33 LOADK                            R1 K6 ["default activity indicator not available"]
       34 CALL                             R0 1 0
       35 LOADNIL                          R0
       36 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+19]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["current"]
        5 JUMPIFNOT                        R2 ; [+15]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 GETTABLEKS                       R1 R1 K1 ["_listRef"]
       11 GETTABLEKS                       R1 R1 K2 ["_scrollRef"]
       13 GETTABLEKS                       R1 R1 K3 ["getNativeScrollRef"]
       15 CALL                             R1 0 1
       16 GETTABLEKS                       R1 R1 K4 ["_nativeRef"]
       18 GETTABLEKS                       R1 R1 K0 ["current"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K5 ["horizontal"]
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          VAL R3
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K6 ["shouldResizeOnMount"]
       30 JUMPIFNOT                        R3 ; [+167]
       31 JUMPIFNOT                        R1 ; [+166]
       32 MOVE                             R3 R2
       33 GETTABLEKS                       R4 R0 K7 ["AbsoluteSize"]
       35 CALL                             R3 1 1
       36 LOADN                            R4 0
       37 JUMPIFLE                         R3 R4 ; [+3]
       39 JUMPIFNOTEQKNIL                  R1 ; [+6]
       41 GETUPVAL                         R4 2
       42 LOADB                            R5 0
       43 SETTABLEKS                       R5 R4 K6 ["shouldResizeOnMount"]
       45 RETURN                           R0 0
       46 GETTABLEKS                       R4 R1 K8 ["CanvasPosition"]
       48 GETTABLEKS                       R5 R1 K7 ["AbsoluteSize"]
       50 GETTABLEKS                       R6 R1 K9 ["AbsoluteCanvasSize"]
       52 GETUPVAL                         R8 3
       53 JUMPIFNOT                        R8 ; [+2]
       54 GETUPVAL                         R7 4
       55 JUMP                             ; [+1]
       56 LOADNIL                          R7
       57 JUMPIFNOT                        R7 ; [+87]
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R9 R9 K10 ["inverted"]
       61 JUMPIFNOT                        R9 ; [+12]
       62 MOVE                             R10 R2
       63 MOVE                             R11 R6
       64 CALL                             R10 1 1
       65 MOVE                             R11 R2
       66 MOVE                             R12 R4
       67 CALL                             R11 1 1
       68 SUB                              R9 R10 R11
       69 MOVE                             R10 R2
       70 MOVE                             R11 R5
       71 CALL                             R10 1 1
       72 SUB                              R8 R9 R10
       73 JUMP                             ; [+3]
       74 MOVE                             R8 R2
       75 MOVE                             R9 R4
       76 CALL                             R8 1 1
       77 JUMPIFNOTLT                      R8 R7 ; [+67]
       79 GETUPVAL                         R9 2
       80 LOADB                            R10 0
       81 SETTABLEKS                       R10 R9 K6 ["shouldResizeOnMount"]
       83 GETUPVAL                         R10 1
       84 GETTABLEKS                       R10 R10 K10 ["inverted"]
       86 JUMPIFNOT                        R10 ; [+34]
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R10 R10 K5 ["horizontal"]
       90 JUMPIFNOT                        R10 ; [+15]
       91 GETIMPORT                        R9 K13 [Vector2.new]
       93 MOVE                             R11 R2
       94 MOVE                             R12 R6
       95 CALL                             R11 1 1
       96 MOVE                             R12 R2
       97 MOVE                             R13 R5
       98 CALL                             R12 1 1
       99 SUB                              R10 R11 R12
      100 GETTABLEKS                       R11 R1 K8 ["CanvasPosition"]
      102 GETTABLEKS                       R11 R11 K14 ["Y"]
      104 CALL                             R9 2 1
      105 JUMP                             ; [+36]
      106 GETIMPORT                        R9 K13 [Vector2.new]
      108 GETTABLEKS                       R10 R1 K8 ["CanvasPosition"]
      110 GETTABLEKS                       R10 R10 K15 ["X"]
      112 MOVE                             R12 R2
      113 MOVE                             R13 R6
      114 CALL                             R12 1 1
      115 MOVE                             R13 R2
      116 MOVE                             R14 R5
      117 CALL                             R13 1 1
      118 SUB                              R11 R12 R13
      119 CALL                             R9 2 1
      120 JUMP                             ; [+21]
      121 GETUPVAL                         R10 1
      122 GETTABLEKS                       R10 R10 K5 ["horizontal"]
      124 JUMPIFNOT                        R10 ; [+9]
      125 GETIMPORT                        R9 K13 [Vector2.new]
      127 LOADN                            R10 0
      128 GETTABLEKS                       R11 R1 K8 ["CanvasPosition"]
      130 GETTABLEKS                       R11 R11 K14 ["Y"]
      132 CALL                             R9 2 1
      133 JUMP                             ; [+8]
      134 GETIMPORT                        R9 K13 [Vector2.new]
      136 GETTABLEKS                       R10 R1 K8 ["CanvasPosition"]
      138 GETTABLEKS                       R10 R10 K15 ["X"]
      140 LOADN                            R11 0
      141 CALL                             R9 2 1
      142 SETTABLEKS                       R9 R1 K8 ["CanvasPosition"]
      144 RETURN                           R0 0
      145 GETUPVAL                         R9 1
      146 GETTABLEKS                       R9 R9 K10 ["inverted"]
      148 JUMPIFNOT                        R9 ; [+22]
      149 GETUPVAL                         R9 1
      150 GETTABLEKS                       R9 R9 K5 ["horizontal"]
      152 JUMPIFNOT                        R9 ; [+9]
      153 GETIMPORT                        R8 K13 [Vector2.new]
      155 GETTABLEKS                       R10 R4 K15 ["X"]
      157 SUB                              R9 R10 R3
      158 GETTABLEKS                       R10 R4 K14 ["Y"]
      160 CALL                             R8 2 1
      161 JUMP                             ; [+30]
      162 GETIMPORT                        R8 K13 [Vector2.new]
      164 GETTABLEKS                       R9 R4 K15 ["X"]
      166 GETTABLEKS                       R11 R4 K14 ["Y"]
      168 SUB                              R10 R11 R3
      169 CALL                             R8 2 1
      170 JUMP                             ; [+21]
      171 GETUPVAL                         R9 1
      172 GETTABLEKS                       R9 R9 K5 ["horizontal"]
      174 JUMPIFNOT                        R9 ; [+9]
      175 GETIMPORT                        R8 K13 [Vector2.new]
      177 GETTABLEKS                       R10 R4 K15 ["X"]
      179 ADD                              R9 R10 R3
      180 GETTABLEKS                       R10 R4 K14 ["Y"]
      182 CALL                             R8 2 1
      183 JUMP                             ; [+8]
      184 GETIMPORT                        R8 K13 [Vector2.new]
      186 GETTABLEKS                       R9 R4 K15 ["X"]
      188 GETTABLEKS                       R11 R4 K14 ["Y"]
      190 ADD                              R10 R11 R3
      191 CALL                             R8 2 1
      192 GETUPVAL                         R9 2
      193 LOADB                            R10 0
      194 SETTABLEKS                       R10 R9 K6 ["shouldResizeOnMount"]
      196 SETTABLEKS                       R8 R1 K8 ["CanvasPosition"]
      198 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K9 [{["onLayout"], ["AutomaticSize"], ["Size"], ["BorderSizePixel"] = 0, ["name"] = "resize"}]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 SETTABLEKS                       R5 R4 K2 ["onLayout"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K10 ["horizontal"]
       18 JUMPIFNOT                        R6 ; [+3]
       19 GETIMPORT                        R5 K13 [Enum.AutomaticSize.X]
       21 JUMP                             ; [+2]
       22 GETIMPORT                        R5 K15 [Enum.AutomaticSize.Y]
       24 SETTABLEKS                       R5 R4 K3 ["AutomaticSize"]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K10 ["horizontal"]
       29 JUMPIFNOT                        R6 ; [+8]
       30 GETIMPORT                        R5 K18 [UDim2.new]
       32 LOADN                            R6 0
       33 LOADN                            R7 0
       34 LOADN                            R8 1
       35 LOADN                            R9 0
       36 CALL                             R5 4 1
       37 JUMP                             ; [+7]
       38 GETIMPORT                        R5 K18 [UDim2.new]
       40 LOADN                            R6 1
       41 LOADN                            R7 0
       42 LOADN                            R8 0
       43 LOADN                            R9 0
       44 CALL                             R5 4 1
       45 SETTABLEKS                       R5 R4 K4 ["Size"]
       47 DUPTABLE                         R5 K20 [{"child"}]
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R6 R6 K21 ["renderItem"]
       51 MOVE                             R7 R0
       52 CALL                             R6 1 1
       53 SETTABLEKS                       R6 R5 K19 ["child"]
       55 CALL                             R2 3 -1
       56 RETURN                           R2 -1

PROTO_17:
        0 DUPCLOSURE                       R2 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 GETTABLEKS                       R17 R0 K1 ["activityIndicatorColor"]
        4 JUMPIFNOTEQKNIL                  R17 ; [+3]
        6 LOADK                            R3 K2 ["black"]
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R3 R0 K1 ["activityIndicatorColor"]
       10 GETTABLEKS                       R17 R0 K3 ["autoscrollToTopThreshold"]
       12 JUMPIFNOTEQKNIL                  R17 ; [+3]
       14 LOADN                            R4 100
       15 JUMP                             ; [+2]
       16 GETTABLEKS                       R4 R0 K3 ["autoscrollToTopThreshold"]
       18 GETTABLEKS                       R5 R0 K4 ["data"]
       20 GETTABLEKS                       R6 R0 K5 ["enableAutoscrollToTop"]
       22 GETTABLEKS                       R7 R0 K6 ["FooterLoadingIndicator"]
       24 GETTABLEKS                       R8 R0 K7 ["HeaderLoadingIndicator"]
       26 GETTABLEKS                       R9 R0 K8 ["ListHeaderComponent"]
       28 GETTABLEKS                       R10 R0 K9 ["ListFooterComponent"]
       30 GETTABLEKS                       R17 R0 K10 ["onEndReached"]
       32 JUMPIFNOTEQKNIL                  R17 ; [+3]
       34 MOVE                             R11 R2
       35 JUMP                             ; [+2]
       36 GETTABLEKS                       R11 R0 K10 ["onEndReached"]
       38 GETTABLEKS                       R17 R0 K11 ["onEndReachedThreshold"]
       40 JUMPIFNOTEQKNIL                  R17 ; [+3]
       42 LOADN                            R12 10
       43 JUMP                             ; [+2]
       44 GETTABLEKS                       R12 R0 K11 ["onEndReachedThreshold"]
       46 GETTABLEKS                       R13 R0 K12 ["onScroll"]
       48 GETTABLEKS                       R17 R0 K13 ["onStartReached"]
       50 JUMPIFNOTEQKNIL                  R17 ; [+3]
       52 MOVE                             R14 R2
       53 JUMP                             ; [+2]
       54 GETTABLEKS                       R14 R0 K13 ["onStartReached"]
       56 GETTABLEKS                       R17 R0 K14 ["onStartReachedThreshold"]
       58 JUMPIFNOTEQKNIL                  R17 ; [+3]
       60 LOADN                            R15 10
       61 JUMP                             ; [+2]
       62 GETTABLEKS                       R15 R0 K14 ["onStartReachedThreshold"]
       64 GETTABLEKS                       R17 R0 K15 ["showDefaultLoadingIndicators"]
       66 JUMPIFNOTEQKNIL                  R17 ; [+3]
       68 LOADB                            R16 1
       69 JUMP                             ; [+2]
       70 GETTABLEKS                       R16 R0 K15 ["showDefaultLoadingIndicators"]
       72 GETTABLEKS                       R18 R0 K16 ["enableRetryOnStartReached"]
       74 JUMPIFNOTEQKNIL                  R18 ; [+3]
       76 LOADB                            R17 0
       77 JUMP                             ; [+2]
       78 GETTABLEKS                       R17 R0 K16 ["enableRetryOnStartReached"]
       80 GETTABLEKS                       R19 R0 K17 ["enableRetryOnEndReached"]
       82 JUMPIFNOTEQKNIL                  R19 ; [+3]
       84 LOADB                            R18 0
       85 JUMP                             ; [+2]
       86 GETTABLEKS                       R18 R0 K17 ["enableRetryOnEndReached"]
       88 GETUPVAL                         R19 1
       89 LOADB                            R20 0
       90 CALL                             R19 1 2
       91 GETUPVAL                         R21 1
       92 LOADB                            R22 0
       93 CALL                             R21 1 2
       94 GETUPVAL                         R23 1
       95 LOADN                            R24 0
       96 CALL                             R23 1 2
       97 GETUPVAL                         R25 2
       98 NEWTABLE                         R26 0 0
      100 CALL                             R25 1 1
      101 GETUPVAL                         R26 2
      102 NEWTABLE                         R27 0 0
      104 CALL                             R26 1 1
      105 GETUPVAL                         R27 2
      106 LOADNIL                          R28
      107 CALL                             R27 1 1
      108 GETUPVAL                         R28 2
      109 LOADNIL                          R29
      110 CALL                             R28 1 1
      111 NEWCLOSURE                       R29 P1
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R25
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R23
      116 CAPTURE                          VAL R20
      117 CAPTURE                          UPVAL U0
      118 CAPTURE                          VAL R27
      119 CAPTURE                          VAL R28
      120 CAPTURE                          VAL R14
      121 NEWCLOSURE                       R30 P2
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R26
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R23
      126 CAPTURE                          VAL R22
      127 CAPTURE                          UPVAL U0
      128 CAPTURE                          VAL R28
      129 CAPTURE                          VAL R27
      130 CAPTURE                          VAL R11
      131 NEWCLOSURE                       R31 P3
      132 CAPTURE                          VAL R24
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R0
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R29
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R25
      141 CAPTURE                          VAL R30
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R26
      144 NEWCLOSURE                       R32 P4
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R9
      147 CAPTURE                          UPVAL U3
      148 CAPTURE                          VAL R19
      149 CAPTURE                          VAL R8
      150 NEWCLOSURE                       R33 P5
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R10
      153 CAPTURE                          UPVAL U3
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R7
      156 GETUPVAL                         R34 3
      157 GETTABLEKS                       R34 R34 K18 ["createElement"]
      159 GETUPVAL                         R35 3
      160 GETTABLEKS                       R35 R35 K19 ["Fragment"]
      162 LOADNIL                          R36
      163 GETUPVAL                         R37 3
      164 GETTABLEKS                       R37 R37 K18 ["createElement"]
      166 GETUPVAL                         R38 4
      167 GETUPVAL                         R39 5
      168 GETTABLEKS                       R39 R39 K20 ["assign"]
      170 GETIMPORT                        R40 K23 [table.clone]
      172 MOVE                             R41 R0
      173 CALL                             R40 1 1
      174 DUPTABLE                         R41 K27 [{"renderItem", "ref", "ListHeaderComponent", "ListFooterComponent", "onEndReached", "onScroll", "maintainVisibleContentPosition"}]
      175 NEWCLOSURE                       R42 P6
      176 CAPTURE                          UPVAL U3
      177 CAPTURE                          UPVAL U6
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R0
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R4
      182 SETTABLEKS                       R42 R41 K24 ["renderItem"]
      184 SETTABLEKS                       R1 R41 K25 ["ref"]
      186 SETTABLEKS                       R32 R41 K8 ["ListHeaderComponent"]
      188 SETTABLEKS                       R33 R41 K9 ["ListFooterComponent"]
      190 GETUPVAL                         R42 5
      191 GETTABLEKS                       R42 R42 K28 ["None"]
      193 SETTABLEKS                       R42 R41 K10 ["onEndReached"]
      195 SETTABLEKS                       R31 R41 K12 ["onScroll"]
      197 DUPTABLE                         R42 K31 [{["autoscrollToTopThreshold"], ["minIndexForVisible"] = 1}]
      198 JUMPIFNOT                        R6 ; [+2]
      199 MOVE                             R43 R4
      200 JUMP                             ; [+1]
      201 LOADNIL                          R43
      202 SETTABLEKS                       R43 R42 K3 ["autoscrollToTopThreshold"]
      204 SETTABLEKS                       R42 R41 K26 ["maintainVisibleContentPosition"]
      206 CALL                             R39 2 -1
      207 CALL                             R37 -1 -1
      208 CALL                             R34 -1 -1
      209 RETURN                           R34 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Object"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R1 K7 ["Promise"]
       20 CALL                             R4 1 1
       21 NEWTABLE                         R5 1 0
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R1 K8 ["React"]
       27 CALL                             R6 1 1
       28 GETTABLEKS                       R7 R6 K9 ["useRef"]
       30 GETTABLEKS                       R8 R6 K10 ["useState"]
       32 GETIMPORT                        R9 K4 [require]
       34 GETTABLEKS                       R10 R0 K11 ["Components"]
       36 GETTABLEKS                       R10 R10 K12 ["View"]
       38 GETTABLEKS                       R10 R10 K12 ["View"]
       40 CALL                             R9 1 1
       41 GETIMPORT                        R10 K4 [require]
       43 GETIMPORT                        R11 K1 [script]
       45 GETTABLEKS                       R11 R11 K2 ["Parent"]
       47 GETTABLEKS                       R11 R11 K13 ["FlatList"]
       49 CALL                             R10 1 1
       50 DUPCLOSURE                       R11 K14 [PROTO_1]
       51 GETTABLEKS                       R12 R6 K15 ["forwardRef"]
       53 DUPCLOSURE                       R13 K16 [PROTO_17]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R9
       61 CALL                             R12 1 1
       62 SETTABLEKS                       R12 R5 K17 ["BidirectionalFlatList"]
       64 RETURN                           R5 1
