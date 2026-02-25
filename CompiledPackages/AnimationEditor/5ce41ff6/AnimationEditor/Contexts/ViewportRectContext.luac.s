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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["union"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["graphRect"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_4:
        0 LOADN                            R4 1
        1 GETUPVAL                         R5 0
        2 ADD                              R3 R4 R5
        3 MUL                              R2 R0 R3
        4 LOADK                            R3 K0 [0.1]
        5 LOADN                            R4 1
        6 FASTCALL                         MATH_CLAMP ; [+2]
        7 GETIMPORT                        R1 K3 [math.clamp]
        9 CALL                             R1 3 1
       10 RETURN                           R1 1

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
        0 JUMPIFEQKNIL                     R1 ; [+7]
        2 JUMPIFEQKN                       R1 K0 [0] ; [+5]
        4 GETUPVAL                         R2 0
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 JUMPIFEQKNIL                     R0 ; [+6]
       10 GETUPVAL                         R2 1
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_7:
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
       57 SUB                              R6 R7 R8
       58 GETUPVAL                         R7 3
       59 MOVE                             R8 R4
       60 CALL                             R7 1 0
       61 GETUPVAL                         R7 4
       62 GETIMPORT                        R8 K15 [Vector2.new]
       64 MOVE                             R9 R5
       65 MOVE                             R10 R6
       66 CALL                             R8 2 -1
       67 CALL                             R7 -1 0
       68 RETURN                           R0 0

PROTO_8:
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
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R8
       88 NEWTABLE                         R15 0 3
       90 MOVE                             R16 R8
       91 MOVE                             R17 R3
       92 MOVE                             R18 R7
       93 SETLIST                          R15 R16 3 [1]
       95 CALL                             R13 2 1
       96 GETUPVAL                         R15 0
       97 GETTABLEKS                       R14 R15 K18 ["useCallback"]
       99 NEWCLOSURE                       R15 P3
      100 CAPTURE                          VAL R1
      101 CAPTURE                          UPVAL U6
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R3
      105 NEWTABLE                         R16 0 5
      107 GETTABLEKS                       R17 R1 K4 ["graphRect"]
      109 GETTABLEKS                       R18 R1 K19 ["getSelectedRect"]
      111 MOVE                             R19 R4
      112 MOVE                             R20 R7
      113 MOVE                             R21 R3
      114 SETLIST                          R16 R17 5 [1]
      116 CALL                             R14 2 1
      117 DUPTABLE                         R15 K30 [{"renderedGraphRect", "viewportRect", "zoomRatio", "hintIsDragging", "setAbsoluteSize", "panViewport", "setZoomRatio", "setViewportPosition", "frameSelection", "setHintIsDragging"}]
      118 SETTABLEKS                       R12 R15 K20 ["renderedGraphRect"]
      120 SETTABLEKS                       R11 R15 K21 ["viewportRect"]
      122 SETTABLEKS                       R6 R15 K22 ["zoomRatio"]
      124 SETTABLEKS                       R9 R15 K23 ["hintIsDragging"]
      126 SETTABLEKS                       R5 R15 K24 ["setAbsoluteSize"]
      128 SETTABLEKS                       R13 R15 K25 ["panViewport"]
      130 SETTABLEKS                       R7 R15 K26 ["setZoomRatio"]
      132 SETTABLEKS                       R3 R15 K27 ["setViewportPosition"]
      134 SETTABLEKS                       R14 R15 K28 ["frameSelection"]
      136 SETTABLEKS                       R10 R15 K29 ["setHintIsDragging"]
      138 GETUPVAL                         R17 0
      139 GETTABLEKS                       R16 R17 K31 ["createElement"]
      141 GETUPVAL                         R18 7
      142 GETTABLEKS                       R17 R18 K32 ["Provider"]
      144 DUPTABLE                         R18 K34 [{"value"}]
      145 SETTABLEKS                       R15 R18 K33 ["value"]
      147 GETTABLEKS                       R19 R0 K35 ["children"]
      149 CALL                             R16 3 -1
      150 RETURN                           R16 -1

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
       55 DUPTABLE                         R8 K30 [{"zoomRatio", "renderedGraphRect", "viewportRect", "setZoomRatio", "setAbsoluteSize", "panViewport", "setViewportPosition", "frameSelection", "hintIsDragging", "setHintIsDragging"}]
       56 LOADN                            R9 1
       57 SETTABLEKS                       R9 R8 K20 ["zoomRatio"]
       59 GETIMPORT                        R9 K33 [Rect.new]
       61 LOADN                            R10 0
       62 LOADN                            R11 0
       63 LOADN                            R12 0
       64 LOADN                            R13 0
       65 CALL                             R9 4 1
       66 SETTABLEKS                       R9 R8 K21 ["renderedGraphRect"]
       68 GETIMPORT                        R9 K33 [Rect.new]
       70 LOADN                            R10 0
       71 LOADN                            R11 0
       72 LOADN                            R12 0
       73 LOADN                            R13 0
       74 CALL                             R9 4 1
       75 SETTABLEKS                       R9 R8 K22 ["viewportRect"]
       77 GETTABLEKS                       R9 R5 K34 ["createUnimplemented"]
       79 LOADK                            R10 K23 ["setZoomRatio"]
       80 CALL                             R9 1 1
       81 SETTABLEKS                       R9 R8 K23 ["setZoomRatio"]
       83 GETTABLEKS                       R9 R5 K34 ["createUnimplemented"]
       85 LOADK                            R10 K24 ["setAbsoluteSize"]
       86 CALL                             R9 1 1
       87 SETTABLEKS                       R9 R8 K24 ["setAbsoluteSize"]
       89 GETTABLEKS                       R9 R5 K34 ["createUnimplemented"]
       91 LOADK                            R10 K25 ["panViewport"]
       92 CALL                             R9 1 1
       93 SETTABLEKS                       R9 R8 K25 ["panViewport"]
       95 GETTABLEKS                       R9 R5 K34 ["createUnimplemented"]
       97 LOADK                            R10 K35 ["setInternalViewportRect"]
       98 CALL                             R9 1 1
       99 SETTABLEKS                       R9 R8 K26 ["setViewportPosition"]
      101 GETTABLEKS                       R9 R5 K34 ["createUnimplemented"]
      103 LOADK                            R10 K27 ["frameSelection"]
      104 CALL                             R9 1 1
      105 SETTABLEKS                       R9 R8 K27 ["frameSelection"]
      107 LOADB                            R9 0
      108 SETTABLEKS                       R9 R8 K28 ["hintIsDragging"]
      110 GETTABLEKS                       R9 R5 K34 ["createUnimplemented"]
      112 LOADK                            R10 K29 ["setHintIsDragging"]
      113 CALL                             R9 1 1
      114 SETTABLEKS                       R9 R8 K29 ["setHintIsDragging"]
      116 GETTABLEKS                       R9 R4 K36 ["createContext"]
      118 MOVE                             R10 R8
      119 CALL                             R9 1 1
      120 DUPCLOSURE                       R10 K37 [PROTO_0]
      121 CAPTURE                          VAL R1
      122 DUPCLOSURE                       R11 K38 [PROTO_1]
      123 CAPTURE                          VAL R1
      124 DUPCLOSURE                       R12 K39 [PROTO_8]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R9
      133 DUPTABLE                         R13 K42 [{"Context", "Provider"}]
      134 SETTABLEKS                       R9 R13 K40 ["Context"]
      136 SETTABLEKS                       R12 R13 K41 ["Provider"]
      138 RETURN                           R13 1
