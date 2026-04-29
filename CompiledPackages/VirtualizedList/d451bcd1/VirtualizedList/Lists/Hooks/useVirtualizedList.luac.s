PROTO_0:
        0 FASTCALL2K                       MATH_MAX R2 K0 ; [+5]
        2 MOVE                             R4 R2
        3 LOADK                            R5 K0 [0]
        4 GETIMPORT                        R3 K3 [math.max]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 LOADN                            R3 0
        9 LOADN                            R4 0
       10 LOADN                            R5 0
       11 MOVE                             R6 R0
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 JUMPIFNOTLE                      R3 R2 ; [+2]
       17 MOVE                             R4 R9
       18 GETTABLEKS                       R11 R10 K4 ["height"]
       20 ADD                              R3 R3 R11
       21 JUMPIFNOTLE                      R2 R3 ; [+2]
       23 MOVE                             R5 R9
       24 ADD                              R11 R2 R1
       25 JUMPIFLE                         R11 R3 ; [+3]
       27 FORGLOOP                         R6 2 ; [-13]
       29 FASTCALL2                        VECTOR R4 R5 ; [+5]
       31 MOVE                             R7 R4
       32 MOVE                             R8 R5
       33 GETIMPORT                        R6 K7 [Vector3.new]
       35 CALL                             R6 2 1
       36 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["virtualizedItems"]
        4 GETUPVAL                         R2 2
        5 LOADN                            R3 0
        6 CALL                             R0 3 1
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOTEQ                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R0 R1 K0 ["current"]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R3 R4 K1 ["virtualizedItems"]
       14 GETUPVAL                         R4 4
       15 MOVE                             R5 R0
       16 CALL                             R2 3 1
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["AbsoluteWindowSize"]
        4 GETTABLEKS                       R1 R2 K1 ["Y"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["CanvasPosition"]
        4 GETTABLEKS                       R1 R2 K1 ["Y"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["scrollingFrameRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 LOADK                            R3 K2 ["AbsoluteWindowSize"]
        9 NAMECALL                         R1 R0 K3 ["GetPropertyChangedSignal"]
       11 CALL                             R1 2 1
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R1 R1 K4 ["Connect"]
       17 CALL                             R1 2 1
       18 LOADK                            R4 K5 ["CanvasPosition"]
       19 NAMECALL                         R2 R0 K3 ["GetPropertyChangedSignal"]
       21 CALL                             R2 2 1
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R2 R2 K4 ["Connect"]
       27 CALL                             R2 2 1
       28 NEWCLOSURE                       R3 P2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 RETURN                           R3 1

PROTO_7:
        0 LOADN                            R0 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R1 R4 K0 ["virtualizedItems"]
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETTABLEKS                       R6 R5 K1 ["height"]
        9 ADD                              R0 R0 R6
       10 FORGLOOP                         R1 2 ; [-4]
       12 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["scrollingFrameRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETIMPORT                        R1 K4 [UDim2.new]
        8 LOADN                            R2 1
        9 LOADN                            R3 0
       10 LOADN                            R4 0
       11 GETUPVAL                         R5 1
       12 CALL                             R1 4 1
       13 SETTABLEKS                       R1 R0 K5 ["CanvasSize"]
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R2 R3 K0 ["virtualizedItems"]
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R5 4
        7 GETTABLEKS                       R4 R5 K1 ["current"]
        9 CALL                             R1 3 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["scrollingFrameRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       11 LOADK                            R4 K2 ["VirtualizedList has not been mounted yet"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 LOADN                            R2 0
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R3 R6 K5 ["virtualizedItems"]
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 FORGPREP                         R3
       22 GETTABLEKS                       R8 R7 K6 ["key"]
       24 JUMPIFNOTEQ                      R8 R0 ; [+9]
       26 GETIMPORT                        R8 K9 [Vector2.new]
       28 LOADN                            R9 0
       29 MOVE                             R10 R2
       30 CALL                             R8 2 1
       31 SETTABLEKS                       R8 R1 K10 ["CanvasPosition"]
       33 RETURN                           R0 0
       34 GETTABLEKS                       R8 R7 K11 ["height"]
       36 ADD                              R2 R2 R8
       37 FORGLOOP                         R3 2 ; [-16]
       39 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CALL                             R3 1 2
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K1 ["useRef"]
       16 LOADN                            R6 0
       17 CALL                             R5 1 1
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R4
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R8 0 2
       29 MOVE                             R9 R1
       30 GETTABLEKS                       R10 R0 K3 ["virtualizedItems"]
       32 SETLIST                          R8 R9 2 [1]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R7 R8 K4 ["useEffect"]
       38 NEWCLOSURE                       R8 P2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R6
       42 NEWTABLE                         R9 0 1
       44 MOVE                             R10 R6
       45 SETLIST                          R9 R10 1 [1]
       47 CALL                             R7 2 0
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R7 R8 K5 ["useMemo"]
       51 NEWCLOSURE                       R8 P3
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R9 0 1
       55 GETTABLEKS                       R10 R0 K3 ["virtualizedItems"]
       57 SETLIST                          R9 R10 1 [1]
       59 CALL                             R7 2 1
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R8 R9 K4 ["useEffect"]
       63 NEWCLOSURE                       R9 P4
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R7
       66 NEWTABLE                         R10 0 1
       68 MOVE                             R11 R7
       69 SETLIST                          R10 R11 1 [1]
       71 CALL                             R8 2 0
       72 GETUPVAL                         R9 0
       73 GETTABLEKS                       R8 R9 K6 ["useLayoutEffect"]
       75 NEWCLOSURE                       R9 P5
       76 CAPTURE                          VAL R4
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R5
       81 NEWTABLE                         R10 0 2
       83 MOVE                             R11 R1
       84 GETTABLEKS                       R12 R0 K3 ["virtualizedItems"]
       86 SETLIST                          R10 R11 2 [1]
       88 CALL                             R8 2 0
       89 GETUPVAL                         R9 0
       90 GETTABLEKS                       R8 R9 K2 ["useCallback"]
       92 NEWCLOSURE                       R9 P6
       93 CAPTURE                          VAL R0
       94 NEWTABLE                         R10 0 1
       96 GETTABLEKS                       R11 R0 K3 ["virtualizedItems"]
       98 SETLIST                          R10 R11 1 [1]
      100 CALL                             R8 2 1
      101 NEWTABLE                         R9 0 0
      103 LOADN                            R10 0
      104 LOADN                            R13 1
      105 GETTABLEKS                       R14 R3 K8 ["X"]
      107 SUBK                             R11 R14 K7 [1]
      108 LOADN                            R12 1
      109 FORNPREP                         R11
      110 GETTABLEKS                       R15 R0 K3 ["virtualizedItems"]
      112 GETTABLE                         R14 R15 R13
      113 JUMPIFEQKNIL                     R14 ; [+5]
      115 GETTABLEKS                       R15 R14 K9 ["height"]
      117 ADD                              R10 R10 R15
      118 FORNLOOP                         R11
      119 GETTABLEKS                       R13 R3 K8 ["X"]
      121 GETTABLEKS                       R11 R3 K10 ["Y"]
      123 LOADN                            R12 1
      124 FORNPREP                         R11
      125 GETTABLEKS                       R15 R0 K3 ["virtualizedItems"]
      127 GETTABLE                         R14 R15 R13
      128 JUMPIFEQKNIL                     R14 ; [+41]
      130 GETTABLEKS                       R15 R14 K11 ["key"]
      132 GETUPVAL                         R17 0
      133 GETTABLEKS                       R16 R17 K12 ["createElement"]
      135 LOADK                            R17 K13 ["Frame"]
      136 DUPTABLE                         R18 K18 [{"BackgroundTransparency", "BorderSizePixel", "Position", "Size"}]
      137 LOADN                            R19 1
      138 SETTABLEKS                       R19 R18 K14 ["BackgroundTransparency"]
      140 LOADN                            R19 0
      141 SETTABLEKS                       R19 R18 K15 ["BorderSizePixel"]
      143 GETIMPORT                        R19 K21 [UDim2.fromOffset]
      145 LOADN                            R20 0
      146 MOVE                             R21 R10
      147 CALL                             R19 2 1
      148 SETTABLEKS                       R19 R18 K16 ["Position"]
      150 GETIMPORT                        R19 K23 [UDim2.new]
      152 LOADN                            R20 1
      153 LOADN                            R21 0
      154 LOADN                            R22 0
      155 GETTABLEKS                       R23 R14 K9 ["height"]
      157 CALL                             R19 4 1
      158 SETTABLEKS                       R19 R18 K17 ["Size"]
      160 GETTABLEKS                       R19 R0 K24 ["renderItem"]
      162 MOVE                             R20 R14
      163 CALL                             R19 1 -1
      164 CALL                             R16 -1 1
      165 SETTABLE                         R16 R9 R15
      166 GETTABLEKS                       R15 R14 K9 ["height"]
      168 ADD                              R10 R10 R15
      169 FORNLOOP                         R11
      170 MOVE                             R11 R9
      171 MOVE                             R12 R8
      172 RETURN                           R11 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["React"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K6 [PROTO_0]
       17 DUPCLOSURE                       R4 K7 [PROTO_11]
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R3
       20 RETURN                           R4 1
