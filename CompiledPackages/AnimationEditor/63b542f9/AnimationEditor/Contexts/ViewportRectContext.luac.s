PROTO_0:
        0 LOADK                            R3 K0 [0.1]
        1 LOADN                            R4 1
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K3 [math.clamp]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["graphRect"]
        6 GETTABLEKS                       R1 R1 K2 ["Min"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETIMPORT                        R1 K3 [Vector2.zero]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["union"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["graphRect"]
        9 MOVE                             R4 R1
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectedRect"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+3]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["graphRect"]
        8 GETTABLEKS                       R1 R0 K2 ["Width"]
       10 JUMPIFEQKN                       R1 K3 [0] ; [+5]
       12 GETTABLEKS                       R1 R0 K4 ["Height"]
       14 JUMPIFNOTEQKN                    R1 K3 [0] ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K5 ["addPadding"]
       20 MOVE                             R2 R0
       21 LOADN                            R3 20
       22 CALL                             R1 2 1
       23 GETUPVAL                         R2 2
       24 LOADB                            R3 0
       25 CALL                             R2 1 1
       26 GETTABLEKS                       R4 R2 K6 ["X"]
       28 GETTABLEKS                       R5 R1 K2 ["Width"]
       30 DIV                              R3 R4 R5
       31 GETTABLEKS                       R5 R2 K7 ["Y"]
       33 GETTABLEKS                       R6 R1 K4 ["Height"]
       35 DIV                              R4 R5 R6
       36 FASTCALL2                        MATH_MIN R3 R4 ; [+5]
       38 MOVE                             R6 R3
       39 MOVE                             R7 R4
       40 GETIMPORT                        R5 K10 [math.min]
       42 CALL                             R5 2 1
       43 GETTABLEKS                       R7 R0 K11 ["Min"]
       45 GETTABLEKS                       R7 R7 K6 ["X"]
       47 GETTABLEKS                       R9 R0 K2 ["Width"]
       49 DIVK                             R8 R9 K12 [2]
       50 ADD                              R6 R7 R8
       51 GETTABLEKS                       R8 R0 K11 ["Min"]
       53 GETTABLEKS                       R8 R8 K7 ["Y"]
       55 GETTABLEKS                       R10 R0 K4 ["Height"]
       57 DIVK                             R9 R10 K12 [2]
       58 ADD                              R7 R8 R9
       59 GETUPVAL                         R8 3
       60 LOADK                            R11 K13 [0.1]
       61 LOADN                            R12 1
       62 FASTCALL3                        MATH_CLAMP R5 R11 R12
       64 MOVE                             R10 R5
       65 GETIMPORT                        R9 K15 [math.clamp]
       67 CALL                             R9 3 1
       68 CALL                             R8 1 0
       69 GETUPVAL                         R8 4
       70 GETIMPORT                        R9 K18 [Vector2.new]
       72 MOVE                             R10 R6
       73 MOVE                             R11 R7
       74 CALL                             R9 2 -1
       75 CALL                             R8 -1 0
       76 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R4 0 0
       15 CALL                             R2 2 2
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       19 DUPCLOSURE                       R5 K3 [PROTO_2]
       20 CAPTURE                          UPVAL U2
       21 NEWTABLE                         R6 0 0
       23 CALL                             R4 2 2
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       27 DUPCLOSURE                       R7 K4 [PROTO_3]
       28 CAPTURE                          UPVAL U2
       29 NEWTABLE                         R8 0 0
       31 CALL                             R6 2 2
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K2 ["useMemo"]
       35 DUPCLOSURE                       R9 K5 [PROTO_4]
       36 CAPTURE                          UPVAL U2
       37 NEWTABLE                         R10 0 0
       39 CALL                             R8 2 2
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K2 ["useMemo"]
       43 NEWCLOSURE                       R11 P4
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R8
       48 CAPTURE                          UPVAL U4
       49 NEWTABLE                         R12 0 3
       51 MOVE                             R13 R2
       52 MOVE                             R14 R8
       53 MOVE                             R15 R4
       54 SETLIST                          R12 R13 3 [1]
       56 CALL                             R10 2 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K2 ["useMemo"]
       60 NEWCLOSURE                       R12 P5
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          VAL R10
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          VAL R1
       65 NEWTABLE                         R13 0 2
       67 MOVE                             R14 R10
       68 GETTABLEKS                       R15 R1 K6 ["graphRect"]
       70 SETLIST                          R13 R14 2 [1]
       72 CALL                             R11 2 1
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R12 R12 K7 ["useCallback"]
       76 NEWCLOSURE                       R13 P6
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R4
       79 NEWTABLE                         R14 0 2
       81 MOVE                             R15 R4
       82 MOVE                             R16 R3
       83 SETLIST                          R14 R15 2 [1]
       85 CALL                             R12 2 1
       86 GETUPVAL                         R13 0
       87 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       89 NEWCLOSURE                       R14 P7
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R5
       93 NEWTABLE                         R15 0 3
       95 MOVE                             R16 R3
       96 MOVE                             R17 R5
       97 MOVE                             R18 R4
       98 SETLIST                          R15 R16 3 [1]
      100 CALL                             R13 2 1
      101 GETUPVAL                         R14 0
      102 GETTABLEKS                       R14 R14 K7 ["useCallback"]
      104 NEWCLOSURE                       R15 P8
      105 CAPTURE                          VAL R1
      106 CAPTURE                          UPVAL U4
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R3
      110 NEWTABLE                         R16 0 5
      112 GETTABLEKS                       R17 R1 K6 ["graphRect"]
      114 GETTABLEKS                       R18 R1 K8 ["getSelectedRect"]
      116 MOVE                             R19 R8
      117 MOVE                             R20 R5
      118 MOVE                             R21 R3
      119 SETLIST                          R16 R17 5 [1]
      121 CALL                             R14 2 1
      122 DUPTABLE                         R15 K20 [{"observeRenderedGraphRect", "observeViewportRect", "observeZoomRatio", "observeHintIsDragging", "setAbsoluteSize", "panViewport", "zoomViewport", "setZoomRatio", "setViewportPosition", "frameSelection", "setHintIsDragging"}]
      123 SETTABLEKS                       R11 R15 K9 ["observeRenderedGraphRect"]
      125 SETTABLEKS                       R10 R15 K10 ["observeViewportRect"]
      127 SETTABLEKS                       R4 R15 K11 ["observeZoomRatio"]
      129 SETTABLEKS                       R6 R15 K12 ["observeHintIsDragging"]
      131 SETTABLEKS                       R9 R15 K13 ["setAbsoluteSize"]
      133 SETTABLEKS                       R12 R15 K14 ["panViewport"]
      135 SETTABLEKS                       R13 R15 K15 ["zoomViewport"]
      137 SETTABLEKS                       R5 R15 K16 ["setZoomRatio"]
      139 SETTABLEKS                       R3 R15 K17 ["setViewportPosition"]
      141 SETTABLEKS                       R14 R15 K18 ["frameSelection"]
      143 SETTABLEKS                       R7 R15 K19 ["setHintIsDragging"]
      145 GETUPVAL                         R16 0
      146 GETTABLEKS                       R16 R16 K21 ["createElement"]
      148 GETUPVAL                         R17 5
      149 GETTABLEKS                       R17 R17 K22 ["Provider"]
      151 DUPTABLE                         R18 K24 [{"value"}]
      152 SETTABLEKS                       R15 R18 K23 ["value"]
      154 GETTABLEKS                       R19 R0 K25 ["children"]
      156 CALL                             R16 3 -1
      157 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["NativeGraphContext"]
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
       37 GETTABLEKS                       R6 R0 K11 ["Util"]
       39 GETTABLEKS                       R6 R6 K13 ["Signals"]
       41 GETTABLEKS                       R6 R6 K14 ["Experimental"]
       43 GETTABLEKS                       R6 R6 K15 ["SignalExperimentalUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K11 ["Util"]
       50 GETTABLEKS                       R7 R7 K13 ["Signals"]
       52 GETTABLEKS                       R7 R7 K16 ["SignalsInstanceUtils"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K8 ["Parent"]
       59 GETTABLEKS                       R8 R8 K13 ["Signals"]
       61 CALL                             R7 1 1
       62 DUPTABLE                         R8 K28 [{"observeZoomRatio", "observeRenderedGraphRect", "observeViewportRect", "setZoomRatio", "setAbsoluteSize", "panViewport", "zoomViewport", "setViewportPosition", "frameSelection", "observeHintIsDragging", "setHintIsDragging"}]
       63 GETTABLEKS                       R9 R6 K29 ["of"]
       65 LOADN                            R10 1
       66 CALL                             R9 1 1
       67 SETTABLEKS                       R9 R8 K17 ["observeZoomRatio"]
       69 GETTABLEKS                       R9 R6 K29 ["of"]
       71 GETIMPORT                        R10 K32 [Rect.new]
       73 LOADN                            R11 0
       74 LOADN                            R12 0
       75 LOADN                            R13 0
       76 LOADN                            R14 0
       77 CALL                             R10 4 -1
       78 CALL                             R9 -1 1
       79 SETTABLEKS                       R9 R8 K18 ["observeRenderedGraphRect"]
       81 GETTABLEKS                       R9 R6 K29 ["of"]
       83 GETIMPORT                        R10 K32 [Rect.new]
       85 LOADN                            R11 0
       86 LOADN                            R12 0
       87 LOADN                            R13 0
       88 LOADN                            R14 0
       89 CALL                             R10 4 -1
       90 CALL                             R9 -1 1
       91 SETTABLEKS                       R9 R8 K19 ["observeViewportRect"]
       93 GETTABLEKS                       R9 R3 K33 ["createUnimplemented"]
       95 LOADK                            R10 K20 ["setZoomRatio"]
       96 CALL                             R9 1 1
       97 SETTABLEKS                       R9 R8 K20 ["setZoomRatio"]
       99 GETTABLEKS                       R9 R3 K33 ["createUnimplemented"]
      101 LOADK                            R10 K21 ["setAbsoluteSize"]
      102 CALL                             R9 1 1
      103 SETTABLEKS                       R9 R8 K21 ["setAbsoluteSize"]
      105 GETTABLEKS                       R9 R3 K33 ["createUnimplemented"]
      107 LOADK                            R10 K22 ["panViewport"]
      108 CALL                             R9 1 1
      109 SETTABLEKS                       R9 R8 K22 ["panViewport"]
      111 GETTABLEKS                       R9 R3 K33 ["createUnimplemented"]
      113 LOADK                            R10 K23 ["zoomViewport"]
      114 CALL                             R9 1 1
      115 SETTABLEKS                       R9 R8 K23 ["zoomViewport"]
      117 GETTABLEKS                       R9 R3 K33 ["createUnimplemented"]
      119 LOADK                            R10 K34 ["setInternalViewportRect"]
      120 CALL                             R9 1 1
      121 SETTABLEKS                       R9 R8 K24 ["setViewportPosition"]
      123 GETTABLEKS                       R9 R3 K33 ["createUnimplemented"]
      125 LOADK                            R10 K25 ["frameSelection"]
      126 CALL                             R9 1 1
      127 SETTABLEKS                       R9 R8 K25 ["frameSelection"]
      129 GETTABLEKS                       R9 R6 K29 ["of"]
      131 LOADB                            R10 0
      132 CALL                             R9 1 1
      133 SETTABLEKS                       R9 R8 K26 ["observeHintIsDragging"]
      135 GETTABLEKS                       R9 R3 K33 ["createUnimplemented"]
      137 LOADK                            R10 K27 ["setHintIsDragging"]
      138 CALL                             R9 1 1
      139 SETTABLEKS                       R9 R8 K27 ["setHintIsDragging"]
      141 GETTABLEKS                       R9 R2 K35 ["createContext"]
      143 MOVE                             R10 R8
      144 CALL                             R9 1 1
      145 DUPCLOSURE                       R10 K36 [PROTO_0]
      146 DUPCLOSURE                       R11 K37 [PROTO_14]
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R9
      153 DUPTABLE                         R12 K40 [{"Context", "Provider"}]
      154 SETTABLEKS                       R9 R12 K38 ["Context"]
      156 SETTABLEKS                       R11 R12 K39 ["Provider"]
      158 RETURN                           R12 1
