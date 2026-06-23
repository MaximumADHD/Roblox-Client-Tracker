PROTO_0:
        0 LOADK                            R3 K0 [0.1]
        1 LOADN                            R4 1
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K3 [math.clamp]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R1
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["position"]
        7 JUMPIFNOT                        R7 ; [+34]
        8 GETTABLEKS                       R7 R6 K1 ["size"]
       10 JUMPIFNOT                        R7 ; [+31]
       11 GETIMPORT                        R7 K4 [Rect.new]
       13 GETTABLEKS                       R8 R6 K0 ["position"]
       15 GETTABLEKS                       R10 R6 K0 ["position"]
       17 GETIMPORT                        R11 K6 [Vector2.new]
       19 GETTABLEKS                       R12 R6 K1 ["size"]
       21 GETTABLEKS                       R12 R12 K7 ["X"]
       23 GETTABLEKS                       R14 R6 K1 ["size"]
       25 GETTABLEKS                       R14 R14 K8 ["Y"]
       27 MINUS                            R13 R14
       28 CALL                             R11 2 1
       29 ADD                              R9 R10 R11
       30 CALL                             R7 2 1
       31 JUMPIFNOTEQKNIL                  R1 ; [+3]
       33 MOVE                             R1 R7
       34 JUMP                             ; [+7]
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K9 ["union"]
       38 MOVE                             R9 R1
       39 MOVE                             R10 R7
       40 CALL                             R8 2 1
       41 MOVE                             R1 R8
       42 FORGLOOP                         R2 2 ; [-38]
       44 JUMPIFNOTEQKNIL                  R1 ; [+9]
       46 GETIMPORT                        R2 K4 [Rect.new]
       48 LOADN                            R3 0
       49 LOADN                            R4 0
       50 LOADN                            R5 0
       51 LOADN                            R6 0
       52 CALL                             R2 4 -1
       53 RETURN                           R2 -1
       54 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observeMap"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 LOADNIL                          R2
        8 MOVE                             R3 R1
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETTABLEKS                       R8 R7 K2 ["isSelected"]
       14 JUMPIFNOT                        R8 ; [+31]
       15 GETIMPORT                        R8 K5 [Rect.new]
       17 GETTABLEKS                       R9 R7 K6 ["position"]
       19 GETTABLEKS                       R11 R7 K6 ["position"]
       21 GETIMPORT                        R12 K8 [Vector2.new]
       23 GETTABLEKS                       R13 R7 K9 ["size"]
       25 GETTABLEKS                       R13 R13 K10 ["X"]
       27 GETTABLEKS                       R15 R7 K9 ["size"]
       29 GETTABLEKS                       R15 R15 K11 ["Y"]
       31 MINUS                            R14 R15
       32 CALL                             R12 2 1
       33 ADD                              R10 R11 R12
       34 CALL                             R8 2 1
       35 JUMPIFNOTEQKNIL                  R2 ; [+3]
       37 MOVE                             R2 R8
       38 JUMP                             ; [+7]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K12 ["union"]
       42 MOVE                             R10 R2
       43 MOVE                             R11 R8
       44 CALL                             R9 2 1
       45 MOVE                             R2 R9
       46 FORGLOOP                         R3 2 ; [-35]
       48 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["nodeRenderInfoDispatcher"]
        3 GETTABLEKS                       R1 R1 K1 ["observeMap"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1
       14 LOADK                            R2 K2 [∞]
       15 LOADK                            R3 K2 [∞]
       16 LOADK                            R4 K3 [-∞]
       17 LOADK                            R5 K3 [-∞]
       18 MOVE                             R6 R1
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 GETTABLEKS                       R11 R10 K4 ["position"]
       24 JUMPIFNOT                        R11 ; [+56]
       25 GETTABLEKS                       R11 R10 K5 ["size"]
       27 JUMPIFNOT                        R11 ; [+53]
       28 GETTABLEKS                       R11 R10 K4 ["position"]
       30 GETTABLEKS                       R13 R10 K4 ["position"]
       32 GETIMPORT                        R14 K8 [Vector2.new]
       34 GETTABLEKS                       R15 R10 K5 ["size"]
       36 GETTABLEKS                       R15 R15 K9 ["X"]
       38 GETTABLEKS                       R17 R10 K5 ["size"]
       40 GETTABLEKS                       R17 R17 K10 ["Y"]
       42 MINUS                            R16 R17
       43 CALL                             R14 2 1
       44 ADD                              R12 R13 R14
       45 GETTABLEKS                       R15 R11 K9 ["X"]
       47 FASTCALL2                        MATH_MIN R2 R15 ; [+4]
       49 MOVE                             R14 R2
       50 GETIMPORT                        R13 K13 [math.min]
       52 CALL                             R13 2 1
       53 MOVE                             R2 R13
       54 GETTABLEKS                       R15 R11 K10 ["Y"]
       56 FASTCALL2                        MATH_MIN R3 R15 ; [+4]
       58 MOVE                             R14 R3
       59 GETIMPORT                        R13 K13 [math.min]
       61 CALL                             R13 2 1
       62 MOVE                             R3 R13
       63 GETTABLEKS                       R15 R12 K9 ["X"]
       65 FASTCALL2                        MATH_MAX R4 R15 ; [+4]
       67 MOVE                             R14 R4
       68 GETIMPORT                        R13 K15 [math.max]
       70 CALL                             R13 2 1
       71 MOVE                             R4 R13
       72 GETTABLEKS                       R15 R12 K10 ["Y"]
       74 FASTCALL2                        MATH_MAX R5 R15 ; [+4]
       76 MOVE                             R14 R5
       77 GETIMPORT                        R13 K15 [math.max]
       79 CALL                             R13 2 1
       80 MOVE                             R5 R13
       81 FORGLOOP                         R6 2 ; [-60]
       83 JUMPIFLT                         R4 R2 ; [+3]
       85 JUMPIFNOTLT                      R5 R3 ; [+9]
       87 GETIMPORT                        R6 K17 [Rect.new]
       89 LOADN                            R7 0
       90 LOADN                            R8 0
       91 LOADN                            R9 0
       92 LOADN                            R10 0
       93 CALL                             R6 4 -1
       94 RETURN                           R6 -1
       95 GETIMPORT                        R6 K17 [Rect.new]
       97 MOVE                             R7 R2
       98 MOVE                             R8 R3
       99 MOVE                             R9 R4
      100 MOVE                             R10 R5
      101 CALL                             R6 4 -1
      102 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Min"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETIMPORT                        R1 K3 [Vector2.zero]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Experimental"]
        3 GETTABLEKS                       R0 R0 K1 ["createComputed"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 1
        3 MOVE                             R1 R0
        4 JUMPIF                           R1 ; [+3]
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 0
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R1 K0 ["Width"]
       10 JUMPIFEQKN                       R2 K1 [0] ; [+5]
       12 GETTABLEKS                       R2 R1 K2 ["Height"]
       14 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K3 ["addPadding"]
       20 MOVE                             R3 R1
       21 LOADN                            R4 20
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 3
       24 LOADB                            R4 0
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R5 R3 K4 ["X"]
       28 GETTABLEKS                       R6 R2 K0 ["Width"]
       30 DIV                              R4 R5 R6
       31 GETTABLEKS                       R6 R3 K5 ["Y"]
       33 GETTABLEKS                       R7 R2 K2 ["Height"]
       35 DIV                              R5 R6 R7
       36 FASTCALL2                        MATH_MIN R4 R5 ; [+5]
       38 MOVE                             R7 R4
       39 MOVE                             R8 R5
       40 GETIMPORT                        R6 K8 [math.min]
       42 CALL                             R6 2 1
       43 GETTABLEKS                       R8 R1 K9 ["Min"]
       45 GETTABLEKS                       R8 R8 K4 ["X"]
       47 GETTABLEKS                       R10 R1 K0 ["Width"]
       49 DIVK                             R9 R10 K10 [2]
       50 ADD                              R7 R8 R9
       51 GETTABLEKS                       R9 R1 K9 ["Min"]
       53 GETTABLEKS                       R9 R9 K5 ["Y"]
       55 GETTABLEKS                       R11 R1 K2 ["Height"]
       57 DIVK                             R10 R11 K10 [2]
       58 ADD                              R8 R9 R10
       59 GETUPVAL                         R9 4
       60 LOADK                            R12 K11 [0.1]
       61 LOADN                            R13 1
       62 FASTCALL3                        MATH_CLAMP R6 R12 R13
       64 MOVE                             R11 R6
       65 GETIMPORT                        R10 K13 [math.clamp]
       67 CALL                             R10 3 1
       68 CALL                             R9 1 0
       69 GETUPVAL                         R9 5
       70 GETIMPORT                        R10 K16 [Vector2.new]
       72 MOVE                             R11 R7
       73 MOVE                             R12 R8
       74 CALL                             R10 2 -1
       75 CALL                             R9 -1 0
       76 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R0 K12 [{"observeRenderedGraphRect", "observeSelectionRect", "observeViewportRect", "observeZoomRatio", "observeHintIsDragging", "setAbsoluteSize", "panViewport", "zoomViewport", "setZoomRatio", "setViewportPosition", "frameSelection", "setHintIsDragging"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeRenderedGraphRect"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["observeSelectionRect"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeViewportRect"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["observeZoomRatio"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["observeHintIsDragging"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setAbsoluteSize"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["panViewport"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["zoomViewport"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["setZoomRatio"]
       28 GETUPVAL                         R1 9
       29 SETTABLEKS                       R1 R0 K9 ["setViewportPosition"]
       31 GETUPVAL                         R1 10
       32 SETTABLEKS                       R1 R0 K10 ["frameSelection"]
       34 GETUPVAL                         R1 11
       35 SETTABLEKS                       R1 R0 K11 ["setHintIsDragging"]
       37 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["initialGraphRect"]
        9 JUMPIF                           R2 ; [+7]
       10 GETIMPORT                        R2 K5 [Rect.new]
       12 GETIMPORT                        R3 K8 [Vector2.zero]
       14 GETIMPORT                        R4 K8 [Vector2.zero]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K9 ["useMemo"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U3
       24 NEWTABLE                         R5 0 1
       26 GETTABLEKS                       R6 R1 K10 ["nodeRenderInfoDispatcher"]
       28 GETTABLEKS                       R6 R6 K11 ["observeMap"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K9 ["useMemo"]
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 NEWTABLE                         R6 0 1
       43 GETTABLEKS                       R7 R1 K10 ["nodeRenderInfoDispatcher"]
       45 GETTABLEKS                       R7 R7 K11 ["observeMap"]
       47 SETLIST                          R6 R7 1 [1]
       49 CALL                             R4 2 1
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       53 NEWCLOSURE                       R6 P2
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R2
       56 NEWTABLE                         R7 0 0
       58 CALL                             R5 2 2
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K9 ["useMemo"]
       62 DUPCLOSURE                       R8 K12 [PROTO_7]
       63 CAPTURE                          UPVAL U2
       64 NEWTABLE                         R9 0 0
       66 CALL                             R7 2 2
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R9 R9 K9 ["useMemo"]
       70 DUPCLOSURE                       R10 K13 [PROTO_8]
       71 CAPTURE                          UPVAL U2
       72 NEWTABLE                         R11 0 0
       74 CALL                             R9 2 2
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K9 ["useMemo"]
       78 DUPCLOSURE                       R12 K14 [PROTO_9]
       79 CAPTURE                          UPVAL U2
       80 NEWTABLE                         R13 0 0
       82 CALL                             R11 2 2
       83 GETUPVAL                         R13 0
       84 GETTABLEKS                       R13 R13 K9 ["useMemo"]
       86 NEWCLOSURE                       R14 P6
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R11
       91 CAPTURE                          UPVAL U3
       92 NEWTABLE                         R15 0 3
       94 MOVE                             R16 R5
       95 MOVE                             R17 R11
       96 MOVE                             R18 R7
       97 SETLIST                          R15 R16 3 [1]
       99 CALL                             R13 2 1
      100 GETUPVAL                         R14 0
      101 GETTABLEKS                       R14 R14 K9 ["useMemo"]
      103 NEWCLOSURE                       R15 P7
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R13
      107 CAPTURE                          UPVAL U3
      108 NEWTABLE                         R16 0 2
      110 MOVE                             R17 R13
      111 MOVE                             R18 R4
      112 SETLIST                          R16 R17 2 [1]
      114 CALL                             R14 2 1
      115 GETUPVAL                         R15 0
      116 GETTABLEKS                       R15 R15 K15 ["useCallback"]
      118 NEWCLOSURE                       R16 P8
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R7
      121 NEWTABLE                         R17 0 2
      123 MOVE                             R18 R7
      124 MOVE                             R19 R6
      125 SETLIST                          R17 R18 2 [1]
      127 CALL                             R15 2 1
      128 GETUPVAL                         R16 0
      129 GETTABLEKS                       R16 R16 K15 ["useCallback"]
      131 NEWCLOSURE                       R17 P9
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R8
      135 NEWTABLE                         R18 0 3
      137 MOVE                             R19 R6
      138 MOVE                             R20 R8
      139 MOVE                             R21 R7
      140 SETLIST                          R18 R19 3 [1]
      142 CALL                             R16 2 1
      143 GETUPVAL                         R17 0
      144 GETTABLEKS                       R17 R17 K15 ["useCallback"]
      146 NEWCLOSURE                       R18 P10
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R4
      149 CAPTURE                          UPVAL U3
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R6
      153 NEWTABLE                         R19 0 5
      155 GETTABLEKS                       R20 R1 K10 ["nodeRenderInfoDispatcher"]
      157 MOVE                             R21 R4
      158 MOVE                             R22 R11
      159 MOVE                             R23 R8
      160 MOVE                             R24 R6
      161 SETLIST                          R19 R20 5 [1]
      163 CALL                             R17 2 1
      164 GETUPVAL                         R18 0
      165 GETTABLEKS                       R18 R18 K9 ["useMemo"]
      167 NEWCLOSURE                       R19 P11
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R10
      180 NEWTABLE                         R20 0 12
      182 MOVE                             R21 R14
      183 MOVE                             R22 R13
      184 MOVE                             R23 R3
      185 MOVE                             R24 R7
      186 MOVE                             R25 R9
      187 MOVE                             R26 R12
      188 MOVE                             R27 R15
      189 MOVE                             R28 R16
      190 MOVE                             R29 R8
      191 MOVE                             R30 R6
      192 MOVE                             R31 R17
      193 MOVE                             R32 R10
      194 SETLIST                          R20 R21 12 [1]
      196 CALL                             R18 2 1
      197 GETUPVAL                         R19 0
      198 GETTABLEKS                       R19 R19 K16 ["createElement"]
      200 GETUPVAL                         R20 7
      201 GETTABLEKS                       R20 R20 K17 ["Provider"]
      203 DUPTABLE                         R21 K19 [{"value"}]
      204 SETTABLEKS                       R18 R21 K18 ["value"]
      206 GETTABLEKS                       R22 R0 K20 ["children"]
      208 CALL                             R19 3 -1
      209 RETURN                           R19 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["NodeViewTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Util"]
       37 GETTABLEKS                       R6 R6 K13 ["RectUtil"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K9 ["Parent"]
       44 GETTABLEKS                       R7 R7 K14 ["Signals"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K9 ["Parent"]
       51 GETTABLEKS                       R8 R8 K15 ["SignalsUtils"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K16 ["Flags"]
       58 GETTABLEKS                       R9 R9 K17 ["getFFlagAnimGraphUI_RunTimeDebug"]
       60 CALL                             R8 1 1
       61 DUPTABLE                         R9 K30 [{"observeZoomRatio", "observeRenderedGraphRect", "observeViewportRect", "observeSelectionRect", "setZoomRatio", "setAbsoluteSize", "panViewport", "zoomViewport", "setViewportPosition", "frameSelection", "observeHintIsDragging", "setHintIsDragging"}]
       62 GETTABLEKS                       R10 R7 K31 ["of"]
       64 LOADN                            R11 1
       65 CALL                             R10 1 1
       66 SETTABLEKS                       R10 R9 K18 ["observeZoomRatio"]
       68 GETTABLEKS                       R10 R7 K31 ["of"]
       70 GETIMPORT                        R11 K34 [Rect.new]
       72 LOADN                            R12 0
       73 LOADN                            R13 0
       74 LOADN                            R14 0
       75 LOADN                            R15 0
       76 CALL                             R11 4 -1
       77 CALL                             R10 -1 1
       78 SETTABLEKS                       R10 R9 K19 ["observeRenderedGraphRect"]
       80 GETTABLEKS                       R10 R7 K31 ["of"]
       82 GETIMPORT                        R11 K34 [Rect.new]
       84 LOADN                            R12 0
       85 LOADN                            R13 0
       86 LOADN                            R14 0
       87 LOADN                            R15 0
       88 CALL                             R11 4 -1
       89 CALL                             R10 -1 1
       90 SETTABLEKS                       R10 R9 K20 ["observeViewportRect"]
       92 GETTABLEKS                       R10 R7 K31 ["of"]
       94 LOADNIL                          R11
       95 CALL                             R10 1 1
       96 SETTABLEKS                       R10 R9 K21 ["observeSelectionRect"]
       98 GETTABLEKS                       R10 R4 K35 ["createUnimplemented"]
      100 LOADK                            R11 K22 ["setZoomRatio"]
      101 CALL                             R10 1 1
      102 SETTABLEKS                       R10 R9 K22 ["setZoomRatio"]
      104 GETTABLEKS                       R10 R4 K35 ["createUnimplemented"]
      106 LOADK                            R11 K23 ["setAbsoluteSize"]
      107 CALL                             R10 1 1
      108 SETTABLEKS                       R10 R9 K23 ["setAbsoluteSize"]
      110 GETTABLEKS                       R10 R4 K35 ["createUnimplemented"]
      112 LOADK                            R11 K24 ["panViewport"]
      113 CALL                             R10 1 1
      114 SETTABLEKS                       R10 R9 K24 ["panViewport"]
      116 GETTABLEKS                       R10 R4 K35 ["createUnimplemented"]
      118 LOADK                            R11 K25 ["zoomViewport"]
      119 CALL                             R10 1 1
      120 SETTABLEKS                       R10 R9 K25 ["zoomViewport"]
      122 GETTABLEKS                       R10 R4 K35 ["createUnimplemented"]
      124 LOADK                            R11 K26 ["setViewportPosition"]
      125 CALL                             R10 1 1
      126 SETTABLEKS                       R10 R9 K26 ["setViewportPosition"]
      128 GETTABLEKS                       R10 R4 K35 ["createUnimplemented"]
      130 LOADK                            R11 K27 ["frameSelection"]
      131 CALL                             R10 1 1
      132 SETTABLEKS                       R10 R9 K27 ["frameSelection"]
      134 GETTABLEKS                       R10 R7 K31 ["of"]
      136 LOADB                            R11 0
      137 CALL                             R10 1 1
      138 SETTABLEKS                       R10 R9 K28 ["observeHintIsDragging"]
      140 GETTABLEKS                       R10 R4 K35 ["createUnimplemented"]
      142 LOADK                            R11 K29 ["setHintIsDragging"]
      143 CALL                             R10 1 1
      144 SETTABLEKS                       R10 R9 K29 ["setHintIsDragging"]
      146 GETTABLEKS                       R10 R3 K36 ["createContext"]
      148 MOVE                             R11 R9
      149 CALL                             R10 1 1
      150 DUPCLOSURE                       R11 K37 [PROTO_0]
      151 DUPCLOSURE                       R12 K38 [PROTO_1]
      152 CAPTURE                          VAL R5
      153 DUPCLOSURE                       R13 K39 [PROTO_20]
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R10
      162 DUPTABLE                         R14 K42 [{"Context", "Provider"}]
      163 SETTABLEKS                       R10 R14 K40 ["Context"]
      165 SETTABLEKS                       R13 R14 K41 ["Provider"]
      167 RETURN                           R14 1
