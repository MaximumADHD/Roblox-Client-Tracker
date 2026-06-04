PROTO_0:
        0 LOADK                            R3 K0 [0.1]
        1 LOADN                            R4 1
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K3 [math.clamp]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observeMap"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 LOADK                            R2 K2 [∞]
        8 LOADK                            R3 K2 [∞]
        9 LOADK                            R4 K3 [-∞]
       10 LOADK                            R5 K3 [-∞]
       11 MOVE                             R6 R1
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 GETTABLEKS                       R11 R10 K4 ["position"]
       17 JUMPIFNOT                        R11 ; [+56]
       18 GETTABLEKS                       R11 R10 K5 ["size"]
       20 JUMPIFNOT                        R11 ; [+53]
       21 GETTABLEKS                       R11 R10 K4 ["position"]
       23 GETTABLEKS                       R13 R10 K4 ["position"]
       25 GETIMPORT                        R14 K8 [Vector2.new]
       27 GETTABLEKS                       R15 R10 K5 ["size"]
       29 GETTABLEKS                       R15 R15 K9 ["X"]
       31 GETTABLEKS                       R17 R10 K5 ["size"]
       33 GETTABLEKS                       R17 R17 K10 ["Y"]
       35 MINUS                            R16 R17
       36 CALL                             R14 2 1
       37 ADD                              R12 R13 R14
       38 GETTABLEKS                       R15 R11 K9 ["X"]
       40 FASTCALL2                        MATH_MIN R2 R15 ; [+4]
       42 MOVE                             R14 R2
       43 GETIMPORT                        R13 K13 [math.min]
       45 CALL                             R13 2 1
       46 MOVE                             R2 R13
       47 GETTABLEKS                       R15 R11 K10 ["Y"]
       49 FASTCALL2                        MATH_MIN R3 R15 ; [+4]
       51 MOVE                             R14 R3
       52 GETIMPORT                        R13 K13 [math.min]
       54 CALL                             R13 2 1
       55 MOVE                             R3 R13
       56 GETTABLEKS                       R15 R12 K9 ["X"]
       58 FASTCALL2                        MATH_MAX R4 R15 ; [+4]
       60 MOVE                             R14 R4
       61 GETIMPORT                        R13 K15 [math.max]
       63 CALL                             R13 2 1
       64 MOVE                             R4 R13
       65 GETTABLEKS                       R15 R12 K10 ["Y"]
       67 FASTCALL2                        MATH_MAX R5 R15 ; [+4]
       69 MOVE                             R14 R5
       70 GETIMPORT                        R13 K15 [math.max]
       72 CALL                             R13 2 1
       73 MOVE                             R5 R13
       74 FORGLOOP                         R6 2 ; [-60]
       76 JUMPIFLT                         R4 R2 ; [+3]
       78 JUMPIFNOTLT                      R5 R3 ; [+9]
       80 GETIMPORT                        R6 K17 [Rect.new]
       82 LOADN                            R7 0
       83 LOADN                            R8 0
       84 LOADN                            R9 0
       85 LOADN                            R10 0
       86 CALL                             R6 4 -1
       87 RETURN                           R6 -1
       88 GETIMPORT                        R6 K17 [Rect.new]
       90 MOVE                             R7 R2
       91 MOVE                             R8 R3
       92 MOVE                             R9 R4
       93 MOVE                             R10 R5
       94 CALL                             R6 4 -1
       95 RETURN                           R6 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Experimental"]
        3 GETTABLEKS                       R0 R0 K1 ["createComputed"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Min"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETIMPORT                        R1 K3 [Vector2.zero]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

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
        9 GETTABLEKS                       R5 R3 K1 ["X"]
       11 DIVK                             R4 R5 K0 [2]
       12 GETTABLEKS                       R6 R3 K2 ["Y"]
       14 DIVK                             R5 R6 K0 [2]
       15 GETIMPORT                        R6 K5 [Rect.new]
       17 GETTABLEKS                       R8 R2 K1 ["X"]
       19 SUB                              R7 R8 R4
       20 GETTABLEKS                       R9 R2 K2 ["Y"]
       22 SUB                              R8 R9 R5
       23 GETTABLEKS                       R10 R2 K1 ["X"]
       25 ADD                              R9 R10 R4
       26 GETTABLEKS                       R11 R2 K2 ["Y"]
       28 ADD                              R10 R11 R5
       29 CALL                             R6 4 1
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R7 R7 K6 ["computeZoomedRect"]
       33 MOVE                             R8 R6
       34 MOVE                             R9 R1
       35 CALL                             R7 2 -1
       36 RETURN                           R7 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Experimental"]
        3 GETTABLEKS                       R0 R0 K1 ["createComputed"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["union"]
        9 MOVE                             R4 R1
       10 MOVE                             R5 R2
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Experimental"]
        3 GETTABLEKS                       R0 R0 K1 ["createComputed"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 LOADB                            R4 0
        3 CALL                             R3 1 1
        4 DIV                              R1 R2 R3
        5 GETTABLEKS                       R4 R0 K0 ["X"]
        7 GETTABLEKS                       R5 R1 K0 ["X"]
        9 ADD                              R2 R4 R5
       10 GETTABLEKS                       R4 R0 K1 ["Y"]
       12 GETTABLEKS                       R5 R1 K1 ["Y"]
       14 SUB                              R3 R4 R5
       15 GETIMPORT                        R4 K4 [Vector2.new]
       17 MOVE                             R5 R2
       18 MOVE                             R6 R3
       19 CALL                             R4 2 -1
       20 RETURN                           R4 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETIMPORT                        R5 K2 [Vector2.new]
        3 LOADN                            R6 1
        4 LOADN                            R7 255
        5 CALL                             R5 2 1
        6 MUL                              R3 R4 R5
        7 GETUPVAL                         R4 1
        8 DIV                              R2 R3 R4
        9 ADD                              R1 R0 R2
       10 GETUPVAL                         R5 0
       11 GETIMPORT                        R6 K2 [Vector2.new]
       13 LOADN                            R7 1
       14 LOADN                            R8 255
       15 CALL                             R6 2 1
       16 MUL                              R4 R5 R6
       17 GETUPVAL                         R5 2
       18 DIV                              R3 R4 R5
       19 ADD                              R2 R0 R3
       20 SUB                              R4 R1 R2
       21 ADD                              R3 R0 R4
       22 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 1
        3 ADDK                             R5 R0 K0 [1]
        4 MUL                              R4 R2 R5
        5 LOADK                            R7 K1 [0.1]
        6 LOADN                            R8 1
        7 FASTCALL3                        MATH_CLAMP R4 R7 R8
        9 MOVE                             R6 R4
       10 GETIMPORT                        R5 K4 [math.clamp]
       12 CALL                             R5 3 1
       13 MOVE                             R3 R5
       14 JUMPIFEQKNIL                     R1 ; [+7]
       16 GETUPVAL                         R4 1
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R3
       21 CALL                             R4 1 0
       22 GETUPVAL                         R4 2
       23 MOVE                             R5 R3
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R0 R0 K1 ["getMap"]
        5 CALL                             R0 0 1
        6 LOADNIL                          R1
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLEKS                       R7 R6 K2 ["isSelected"]
       13 JUMPIFNOT                        R7 ; [+31]
       14 GETIMPORT                        R7 K5 [Rect.new]
       16 GETTABLEKS                       R8 R6 K6 ["position"]
       18 GETTABLEKS                       R10 R6 K6 ["position"]
       20 GETIMPORT                        R11 K8 [Vector2.new]
       22 GETTABLEKS                       R12 R6 K9 ["size"]
       24 GETTABLEKS                       R12 R12 K10 ["X"]
       26 GETTABLEKS                       R14 R6 K9 ["size"]
       28 GETTABLEKS                       R14 R14 K11 ["Y"]
       30 MINUS                            R13 R14
       31 CALL                             R11 2 1
       32 ADD                              R9 R10 R11
       33 CALL                             R7 2 1
       34 JUMPIFNOTEQKNIL                  R1 ; [+3]
       36 MOVE                             R1 R7
       37 JUMP                             ; [+7]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K12 ["union"]
       41 MOVE                             R9 R1
       42 MOVE                             R10 R7
       43 CALL                             R8 2 1
       44 MOVE                             R1 R8
       45 FORGLOOP                         R2 2 ; [-35]
       47 MOVE                             R2 R1
       48 JUMPIF                           R2 ; [+3]
       49 GETUPVAL                         R2 2
       50 LOADB                            R3 0
       51 CALL                             R2 1 1
       52 GETTABLEKS                       R3 R2 K13 ["Width"]
       54 JUMPIFEQKN                       R3 K14 [0] ; [+5]
       56 GETTABLEKS                       R3 R2 K15 ["Height"]
       58 JUMPIFNOTEQKN                    R3 K14 [0] ; [+2]
       60 RETURN                           R0 0
       61 GETUPVAL                         R3 1
       62 GETTABLEKS                       R3 R3 K16 ["addPadding"]
       64 MOVE                             R4 R2
       65 LOADN                            R5 20
       66 CALL                             R3 2 1
       67 GETUPVAL                         R4 3
       68 LOADB                            R5 0
       69 CALL                             R4 1 1
       70 GETTABLEKS                       R6 R4 K10 ["X"]
       72 GETTABLEKS                       R7 R3 K13 ["Width"]
       74 DIV                              R5 R6 R7
       75 GETTABLEKS                       R7 R4 K11 ["Y"]
       77 GETTABLEKS                       R8 R3 K15 ["Height"]
       79 DIV                              R6 R7 R8
       80 FASTCALL2                        MATH_MIN R5 R6 ; [+5]
       82 MOVE                             R8 R5
       83 MOVE                             R9 R6
       84 GETIMPORT                        R7 K19 [math.min]
       86 CALL                             R7 2 1
       87 GETTABLEKS                       R9 R2 K20 ["Min"]
       89 GETTABLEKS                       R9 R9 K10 ["X"]
       91 GETTABLEKS                       R11 R2 K13 ["Width"]
       93 DIVK                             R10 R11 K21 [2]
       94 ADD                              R8 R9 R10
       95 GETTABLEKS                       R10 R2 K20 ["Min"]
       97 GETTABLEKS                       R10 R10 K11 ["Y"]
       99 GETTABLEKS                       R12 R2 K15 ["Height"]
      101 DIVK                             R11 R12 K21 [2]
      102 ADD                              R9 R10 R11
      103 GETUPVAL                         R10 4
      104 LOADK                            R13 K22 [0.1]
      105 LOADN                            R14 1
      106 FASTCALL3                        MATH_CLAMP R7 R13 R14
      108 MOVE                             R12 R7
      109 GETIMPORT                        R11 K24 [math.clamp]
      111 CALL                             R11 3 1
      112 CALL                             R10 1 0
      113 GETUPVAL                         R10 5
      114 GETIMPORT                        R11 K8 [Vector2.new]
      116 MOVE                             R12 R8
      117 MOVE                             R13 R9
      118 CALL                             R11 2 -1
      119 CALL                             R10 -1 0
      120 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R0 K11 [{"observeRenderedGraphRect", "observeViewportRect", "observeZoomRatio", "observeHintIsDragging", "setAbsoluteSize", "panViewport", "zoomViewport", "setZoomRatio", "setViewportPosition", "frameSelection", "setHintIsDragging"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeRenderedGraphRect"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["observeViewportRect"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeZoomRatio"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["observeHintIsDragging"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["setAbsoluteSize"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["panViewport"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["zoomViewport"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["setZoomRatio"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["setViewportPosition"]
       28 GETUPVAL                         R1 9
       29 SETTABLEKS                       R1 R0 K9 ["frameSelection"]
       31 GETUPVAL                         R1 10
       32 SETTABLEKS                       R1 R0 K10 ["setHintIsDragging"]
       34 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["initialGraphRect"]
        9 JUMPIF                           R2 ; [+3]
       10 GETIMPORT                        R2 K5 [Rect.new]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K6 ["useMemo"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R5 0 1
       21 GETTABLEKS                       R6 R1 K7 ["nodeRenderInfoDispatcher"]
       23 GETTABLEKS                       R6 R6 K8 ["observeMap"]
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       31 NEWCLOSURE                       R5 P1
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R6 0 0
       36 CALL                             R4 2 2
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       40 DUPCLOSURE                       R7 K9 [PROTO_4]
       41 CAPTURE                          UPVAL U3
       42 NEWTABLE                         R8 0 0
       44 CALL                             R6 2 2
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K6 ["useMemo"]
       48 DUPCLOSURE                       R9 K10 [PROTO_5]
       49 CAPTURE                          UPVAL U3
       50 NEWTABLE                         R10 0 0
       52 CALL                             R8 2 2
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K6 ["useMemo"]
       56 DUPCLOSURE                       R11 K11 [PROTO_6]
       57 CAPTURE                          UPVAL U3
       58 NEWTABLE                         R12 0 0
       60 CALL                             R10 2 2
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K6 ["useMemo"]
       64 NEWCLOSURE                       R13 P5
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R10
       69 CAPTURE                          UPVAL U4
       70 NEWTABLE                         R14 0 3
       72 MOVE                             R15 R4
       73 MOVE                             R16 R10
       74 MOVE                             R17 R6
       75 SETLIST                          R14 R15 3 [1]
       77 CALL                             R12 2 1
       78 GETUPVAL                         R13 0
       79 GETTABLEKS                       R13 R13 K6 ["useMemo"]
       81 NEWCLOSURE                       R14 P6
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R12
       85 CAPTURE                          UPVAL U4
       86 NEWTABLE                         R15 0 2
       88 MOVE                             R16 R12
       89 MOVE                             R17 R3
       90 SETLIST                          R15 R16 2 [1]
       92 CALL                             R13 2 1
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R14 R14 K12 ["useCallback"]
       96 NEWCLOSURE                       R15 P7
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R6
       99 NEWTABLE                         R16 0 2
      101 MOVE                             R17 R6
      102 MOVE                             R18 R5
      103 SETLIST                          R16 R17 2 [1]
      105 CALL                             R14 2 1
      106 GETUPVAL                         R15 0
      107 GETTABLEKS                       R15 R15 K12 ["useCallback"]
      109 NEWCLOSURE                       R16 P8
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R7
      113 NEWTABLE                         R17 0 3
      115 MOVE                             R18 R5
      116 MOVE                             R19 R7
      117 MOVE                             R20 R6
      118 SETLIST                          R17 R18 3 [1]
      120 CALL                             R15 2 1
      121 GETUPVAL                         R16 0
      122 GETTABLEKS                       R16 R16 K12 ["useCallback"]
      124 NEWCLOSURE                       R17 P9
      125 CAPTURE                          VAL R1
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R5
      131 NEWTABLE                         R18 0 5
      133 GETTABLEKS                       R19 R1 K7 ["nodeRenderInfoDispatcher"]
      135 MOVE                             R20 R3
      136 MOVE                             R21 R10
      137 MOVE                             R22 R7
      138 MOVE                             R23 R5
      139 SETLIST                          R18 R19 5 [1]
      141 CALL                             R16 2 1
      142 GETUPVAL                         R17 0
      143 GETTABLEKS                       R17 R17 K6 ["useMemo"]
      145 NEWCLOSURE                       R18 P10
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R9
      157 NEWTABLE                         R19 0 11
      159 MOVE                             R20 R13
      160 MOVE                             R21 R12
      161 MOVE                             R22 R6
      162 MOVE                             R23 R8
      163 MOVE                             R24 R11
      164 MOVE                             R25 R14
      165 MOVE                             R26 R15
      166 MOVE                             R27 R7
      167 MOVE                             R28 R5
      168 MOVE                             R29 R16
      169 MOVE                             R30 R9
      170 SETLIST                          R19 R20 11 [1]
      172 CALL                             R17 2 1
      173 GETUPVAL                         R18 0
      174 GETTABLEKS                       R18 R18 K13 ["createElement"]
      176 GETUPVAL                         R19 5
      177 GETTABLEKS                       R19 R19 K14 ["Provider"]
      179 DUPTABLE                         R20 K16 [{"value"}]
      180 SETTABLEKS                       R17 R20 K15 ["value"]
      182 GETTABLEKS                       R21 R0 K17 ["children"]
      184 CALL                             R18 3 -1
      185 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["RectUtil"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Signals"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["SignalsUtils"]
       48 CALL                             R6 1 1
       49 DUPTABLE                         R7 K26 [{"observeZoomRatio", "observeRenderedGraphRect", "observeViewportRect", "setZoomRatio", "setAbsoluteSize", "panViewport", "zoomViewport", "setViewportPosition", "frameSelection", "observeHintIsDragging", "setHintIsDragging"}]
       50 GETTABLEKS                       R8 R6 K27 ["of"]
       52 LOADN                            R9 1
       53 CALL                             R8 1 1
       54 SETTABLEKS                       R8 R7 K15 ["observeZoomRatio"]
       56 GETTABLEKS                       R8 R6 K27 ["of"]
       58 GETIMPORT                        R9 K30 [Rect.new]
       60 LOADN                            R10 0
       61 LOADN                            R11 0
       62 LOADN                            R12 0
       63 LOADN                            R13 0
       64 CALL                             R9 4 -1
       65 CALL                             R8 -1 1
       66 SETTABLEKS                       R8 R7 K16 ["observeRenderedGraphRect"]
       68 GETTABLEKS                       R8 R6 K27 ["of"]
       70 GETIMPORT                        R9 K30 [Rect.new]
       72 LOADN                            R10 0
       73 LOADN                            R11 0
       74 LOADN                            R12 0
       75 LOADN                            R13 0
       76 CALL                             R9 4 -1
       77 CALL                             R8 -1 1
       78 SETTABLEKS                       R8 R7 K17 ["observeViewportRect"]
       80 GETTABLEKS                       R8 R3 K31 ["createUnimplemented"]
       82 LOADK                            R9 K18 ["setZoomRatio"]
       83 CALL                             R8 1 1
       84 SETTABLEKS                       R8 R7 K18 ["setZoomRatio"]
       86 GETTABLEKS                       R8 R3 K31 ["createUnimplemented"]
       88 LOADK                            R9 K19 ["setAbsoluteSize"]
       89 CALL                             R8 1 1
       90 SETTABLEKS                       R8 R7 K19 ["setAbsoluteSize"]
       92 GETTABLEKS                       R8 R3 K31 ["createUnimplemented"]
       94 LOADK                            R9 K20 ["panViewport"]
       95 CALL                             R8 1 1
       96 SETTABLEKS                       R8 R7 K20 ["panViewport"]
       98 GETTABLEKS                       R8 R3 K31 ["createUnimplemented"]
      100 LOADK                            R9 K21 ["zoomViewport"]
      101 CALL                             R8 1 1
      102 SETTABLEKS                       R8 R7 K21 ["zoomViewport"]
      104 GETTABLEKS                       R8 R3 K31 ["createUnimplemented"]
      106 LOADK                            R9 K32 ["setInternalViewportRect"]
      107 CALL                             R8 1 1
      108 SETTABLEKS                       R8 R7 K22 ["setViewportPosition"]
      110 GETTABLEKS                       R8 R3 K31 ["createUnimplemented"]
      112 LOADK                            R9 K23 ["frameSelection"]
      113 CALL                             R8 1 1
      114 SETTABLEKS                       R8 R7 K23 ["frameSelection"]
      116 GETTABLEKS                       R8 R6 K27 ["of"]
      118 LOADB                            R9 0
      119 CALL                             R8 1 1
      120 SETTABLEKS                       R8 R7 K24 ["observeHintIsDragging"]
      122 GETTABLEKS                       R8 R3 K31 ["createUnimplemented"]
      124 LOADK                            R9 K25 ["setHintIsDragging"]
      125 CALL                             R8 1 1
      126 SETTABLEKS                       R8 R7 K25 ["setHintIsDragging"]
      128 GETTABLEKS                       R8 R2 K33 ["createContext"]
      130 MOVE                             R9 R7
      131 CALL                             R8 1 1
      132 DUPCLOSURE                       R9 K34 [PROTO_0]
      133 DUPCLOSURE                       R10 K35 [PROTO_17]
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R8
      140 DUPTABLE                         R11 K38 [{"Context", "Provider"}]
      141 SETTABLEKS                       R8 R11 K36 ["Context"]
      143 SETTABLEKS                       R10 R11 K37 ["Provider"]
      145 RETURN                           R11 1
