PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"X", "Y"}]
        2 GETTABLEKS                       R4 R0 K0 ["X"]
        4 SETTABLEKS                       R4 R3 K0 ["X"]
        6 GETTABLEKS                       R4 R0 K1 ["Y"]
        8 SETTABLEKS                       R4 R3 K1 ["Y"]
       10 NAMECALL                         R1 R1 K3 ["JSONEncode"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 GETIMPORT                        R2 K3 [Vector2.new]
        7 GETTABLEKS                       R3 R1 K4 ["X"]
        9 GETTABLEKS                       R4 R1 K5 ["Y"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 LOADK                            R3 K0 [0.1]
        1 LOADN                            R4 1
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K3 [math.clamp]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K1 ["X"]
        3 DIVK                             R0 R1 K0 [2]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["Y"]
        7 DIVK                             R1 R2 K0 [2]
        8 GETIMPORT                        R2 K5 [Rect.new]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K1 ["X"]
       13 SUB                              R3 R4 R0
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K2 ["Y"]
       17 SUB                              R4 R5 R1
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R6 R7 K1 ["X"]
       21 ADD                              R5 R6 R0
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R7 R8 K2 ["Y"]
       25 ADD                              R6 R7 R1
       26 CALL                             R2 4 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R3 R4 K6 ["computeZoomedRect"]
       30 MOVE                             R4 R2
       31 GETUPVAL                         R5 3
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["union"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["graphRect"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["current"]
        4 DIV                              R1 R2 R3
        5 GETTABLEKS                       R4 R0 K1 ["X"]
        7 GETTABLEKS                       R5 R1 K1 ["X"]
        9 ADD                              R2 R4 R5
       10 GETTABLEKS                       R4 R0 K2 ["Y"]
       12 GETTABLEKS                       R5 R1 K2 ["Y"]
       14 SUB                              R3 R4 R5
       15 GETIMPORT                        R4 K5 [Vector2.new]
       17 MOVE                             R5 R2
       18 MOVE                             R6 R3
       19 CALL                             R4 2 -1
       20 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R4 0
        1 ADDK                             R5 R0 K0 [1]
        2 MUL                              R3 R4 R5
        3 LOADK                            R6 K1 [0.1]
        4 LOADN                            R7 1
        5 FASTCALL3                        MATH_CLAMP R3 R6 R7
        7 MOVE                             R5 R3
        8 GETIMPORT                        R4 K4 [math.clamp]
       10 CALL                             R4 3 1
       11 MOVE                             R2 R4
       12 JUMPIFEQKNIL                     R1 ; [+7]
       14 GETUPVAL                         R3 1
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R2
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 2
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSelectedRect"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+3]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["graphRect"]
        8 GETTABLEKS                       R1 R0 K2 ["Width"]
       10 JUMPIFEQKN                       R1 K3 [0] ; [+5]
       12 GETTABLEKS                       R1 R0 K4 ["Height"]
       14 JUMPIFNOTEQKN                    R1 K3 [0] ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K5 ["addPadding"]
       20 MOVE                             R2 R0
       21 LOADN                            R3 20
       22 CALL                             R1 2 1
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R3 R4 K6 ["X"]
       26 GETTABLEKS                       R4 R1 K2 ["Width"]
       28 DIV                              R2 R3 R4
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R4 R5 K7 ["Y"]
       32 GETTABLEKS                       R5 R1 K4 ["Height"]
       34 DIV                              R3 R4 R5
       35 FASTCALL2                        MATH_MIN R2 R3 ; [+5]
       37 MOVE                             R5 R2
       38 MOVE                             R6 R3
       39 GETIMPORT                        R4 K10 [math.min]
       41 CALL                             R4 2 1
       42 GETTABLEKS                       R7 R0 K11 ["Min"]
       44 GETTABLEKS                       R6 R7 K6 ["X"]
       46 GETTABLEKS                       R8 R0 K2 ["Width"]
       48 DIVK                             R7 R8 K12 [2]
       49 ADD                              R5 R6 R7
       50 GETTABLEKS                       R8 R0 K11 ["Min"]
       52 GETTABLEKS                       R7 R8 K7 ["Y"]
       54 GETTABLEKS                       R9 R0 K4 ["Height"]
       56 DIVK                             R8 R9 K12 [2]
       57 ADD                              R6 R7 R8
       58 GETUPVAL                         R7 3
       59 LOADK                            R10 K13 [0.1]
       60 LOADN                            R11 1
       61 FASTCALL3                        MATH_CLAMP R4 R10 R11
       63 MOVE                             R9 R4
       64 GETIMPORT                        R8 K15 [math.clamp]
       66 CALL                             R8 3 1
       67 CALL                             R7 1 0
       68 GETUPVAL                         R7 4
       69 GETIMPORT                        R8 K18 [Vector2.new]
       71 MOVE                             R9 R5
       72 MOVE                             R10 R6
       73 CALL                             R8 2 -1
       74 CALL                             R7 -1 0
       75 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R4 R5 K2 ["SETTINGS"]
       11 GETTABLEKS                       R3 R4 K3 ["ViewportPosition"]
       13 GETTABLEKS                       R5 R1 K4 ["graphRect"]
       15 GETTABLEKS                       R4 R5 K5 ["Min"]
       17 GETUPVAL                         R5 4
       18 GETUPVAL                         R6 5
       19 CALL                             R2 4 2
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K6 ["useState"]
       23 GETIMPORT                        R5 K9 [Vector2.zero]
       25 CALL                             R4 1 2
       26 GETUPVAL                         R6 2
       27 GETUPVAL                         R9 3
       28 GETTABLEKS                       R8 R9 K2 ["SETTINGS"]
       30 GETTABLEKS                       R7 R8 K10 ["ViewportZoom"]
       32 LOADN                            R8 1
       33 GETIMPORT                        R9 K12 [tostring]
       35 GETIMPORT                        R10 K14 [tonumber]
       37 CALL                             R6 4 2
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R8 R9 K15 ["useRef"]
       41 MOVE                             R9 R6
       42 CALL                             R8 1 1
       43 SETTABLEKS                       R6 R8 K16 ["current"]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R9 R10 K6 ["useState"]
       48 LOADB                            R10 0
       49 CALL                             R9 1 2
       50 GETUPVAL                         R12 0
       51 GETTABLEKS                       R11 R12 K17 ["useMemo"]
       53 NEWCLOSURE                       R12 P0
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          VAL R6
       58 NEWTABLE                         R13 0 3
       60 MOVE                             R14 R2
       61 MOVE                             R15 R4
       62 MOVE                             R16 R6
       63 SETLIST                          R13 R14 3 [1]
       65 CALL                             R11 2 1
       66 GETUPVAL                         R13 0
       67 GETTABLEKS                       R12 R13 K17 ["useMemo"]
       69 NEWCLOSURE                       R13 P1
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R11
       73 NEWTABLE                         R14 0 2
       75 MOVE                             R15 R11
       76 GETTABLEKS                       R16 R1 K4 ["graphRect"]
       78 SETLIST                          R14 R15 2 [1]
       80 CALL                             R12 2 1
       81 GETUPVAL                         R14 0
       82 GETTABLEKS                       R13 R14 K18 ["useCallback"]
       84 NEWCLOSURE                       R14 P2
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R8
       87 NEWTABLE                         R15 0 2
       89 MOVE                             R16 R8
       90 MOVE                             R17 R3
       91 SETLIST                          R15 R16 2 [1]
       93 CALL                             R13 2 1
       94 GETUPVAL                         R15 0
       95 GETTABLEKS                       R14 R15 K18 ["useCallback"]
       97 NEWCLOSURE                       R15 P3
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R7
      101 NEWTABLE                         R16 0 3
      103 MOVE                             R17 R3
      104 MOVE                             R18 R7
      105 MOVE                             R19 R6
      106 SETLIST                          R16 R17 3 [1]
      108 CALL                             R14 2 1
      109 GETUPVAL                         R16 0
      110 GETTABLEKS                       R15 R16 K18 ["useCallback"]
      112 NEWCLOSURE                       R16 P4
      113 CAPTURE                          VAL R1
      114 CAPTURE                          UPVAL U6
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R3
      118 NEWTABLE                         R17 0 5
      120 GETTABLEKS                       R18 R1 K4 ["graphRect"]
      122 GETTABLEKS                       R19 R1 K19 ["getSelectedRect"]
      124 MOVE                             R20 R4
      125 MOVE                             R21 R7
      126 MOVE                             R22 R3
      127 SETLIST                          R17 R18 5 [1]
      129 CALL                             R15 2 1
      130 DUPTABLE                         R16 K31 [{"renderedGraphRect", "viewportRect", "zoomRatio", "hintIsDragging", "setAbsoluteSize", "panViewport", "zoomViewport", "setZoomRatio", "setViewportPosition", "frameSelection", "setHintIsDragging"}]
      131 SETTABLEKS                       R12 R16 K20 ["renderedGraphRect"]
      133 SETTABLEKS                       R11 R16 K21 ["viewportRect"]
      135 SETTABLEKS                       R6 R16 K22 ["zoomRatio"]
      137 SETTABLEKS                       R9 R16 K23 ["hintIsDragging"]
      139 SETTABLEKS                       R5 R16 K24 ["setAbsoluteSize"]
      141 SETTABLEKS                       R13 R16 K25 ["panViewport"]
      143 SETTABLEKS                       R14 R16 K26 ["zoomViewport"]
      145 SETTABLEKS                       R7 R16 K27 ["setZoomRatio"]
      147 SETTABLEKS                       R3 R16 K28 ["setViewportPosition"]
      149 SETTABLEKS                       R15 R16 K29 ["frameSelection"]
      151 SETTABLEKS                       R10 R16 K30 ["setHintIsDragging"]
      153 GETUPVAL                         R18 0
      154 GETTABLEKS                       R17 R18 K32 ["createElement"]
      156 GETUPVAL                         R19 7
      157 GETTABLEKS                       R18 R19 K33 ["Provider"]
      159 DUPTABLE                         R19 K35 [{"value"}]
      160 SETTABLEKS                       R16 R19 K34 ["value"]
      162 GETTABLEKS                       R20 R0 K36 ["children"]
      164 CALL                             R17 3 -1
      165 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R4 K11 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Contexts"]
       24 GETTABLEKS                       R4 R5 K13 ["NativeGraphContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K14 ["Parent"]
       31 GETTABLEKS                       R5 R6 K15 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K14 ["Parent"]
       38 GETTABLEKS                       R6 R7 K16 ["ReactUtils"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R0 K10 ["Util"]
       45 GETTABLEKS                       R7 R8 K17 ["RectUtil"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R9 R0 K18 ["Hooks"]
       52 GETTABLEKS                       R8 R9 K19 ["usePluginSetting"]
       54 CALL                             R7 1 1
       55 DUPTABLE                         R8 K31 [{"zoomRatio", "renderedGraphRect", "viewportRect", "setZoomRatio", "setAbsoluteSize", "panViewport", "zoomViewport", "setViewportPosition", "frameSelection", "hintIsDragging", "setHintIsDragging"}]
       56 LOADN                            R9 1
       57 SETTABLEKS                       R9 R8 K20 ["zoomRatio"]
       59 GETIMPORT                        R9 K34 [Rect.new]
       61 LOADN                            R10 0
       62 LOADN                            R11 0
       63 LOADN                            R12 0
       64 LOADN                            R13 0
       65 CALL                             R9 4 1
       66 SETTABLEKS                       R9 R8 K21 ["renderedGraphRect"]
       68 GETIMPORT                        R9 K34 [Rect.new]
       70 LOADN                            R10 0
       71 LOADN                            R11 0
       72 LOADN                            R12 0
       73 LOADN                            R13 0
       74 CALL                             R9 4 1
       75 SETTABLEKS                       R9 R8 K22 ["viewportRect"]
       77 GETTABLEKS                       R9 R5 K35 ["createUnimplemented"]
       79 LOADK                            R10 K23 ["setZoomRatio"]
       80 CALL                             R9 1 1
       81 SETTABLEKS                       R9 R8 K23 ["setZoomRatio"]
       83 GETTABLEKS                       R9 R5 K35 ["createUnimplemented"]
       85 LOADK                            R10 K24 ["setAbsoluteSize"]
       86 CALL                             R9 1 1
       87 SETTABLEKS                       R9 R8 K24 ["setAbsoluteSize"]
       89 GETTABLEKS                       R9 R5 K35 ["createUnimplemented"]
       91 LOADK                            R10 K25 ["panViewport"]
       92 CALL                             R9 1 1
       93 SETTABLEKS                       R9 R8 K25 ["panViewport"]
       95 GETTABLEKS                       R9 R5 K35 ["createUnimplemented"]
       97 LOADK                            R10 K26 ["zoomViewport"]
       98 CALL                             R9 1 1
       99 SETTABLEKS                       R9 R8 K26 ["zoomViewport"]
      101 GETTABLEKS                       R9 R5 K35 ["createUnimplemented"]
      103 LOADK                            R10 K36 ["setInternalViewportRect"]
      104 CALL                             R9 1 1
      105 SETTABLEKS                       R9 R8 K27 ["setViewportPosition"]
      107 GETTABLEKS                       R9 R5 K35 ["createUnimplemented"]
      109 LOADK                            R10 K28 ["frameSelection"]
      110 CALL                             R9 1 1
      111 SETTABLEKS                       R9 R8 K28 ["frameSelection"]
      113 LOADB                            R9 0
      114 SETTABLEKS                       R9 R8 K29 ["hintIsDragging"]
      116 GETTABLEKS                       R9 R5 K35 ["createUnimplemented"]
      118 LOADK                            R10 K30 ["setHintIsDragging"]
      119 CALL                             R9 1 1
      120 SETTABLEKS                       R9 R8 K30 ["setHintIsDragging"]
      122 GETTABLEKS                       R9 R4 K37 ["createContext"]
      124 MOVE                             R10 R8
      125 CALL                             R9 1 1
      126 DUPCLOSURE                       R10 K38 [PROTO_0]
      127 CAPTURE                          VAL R1
      128 DUPCLOSURE                       R11 K39 [PROTO_1]
      129 CAPTURE                          VAL R1
      130 DUPCLOSURE                       R12 K40 [PROTO_2]
      131 DUPCLOSURE                       R13 K41 [PROTO_10]
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R9
      140 DUPTABLE                         R14 K44 [{"Context", "Provider"}]
      141 SETTABLEKS                       R9 R14 K42 ["Context"]
      143 SETTABLEKS                       R13 R14 K43 ["Provider"]
      145 RETURN                           R14 1
