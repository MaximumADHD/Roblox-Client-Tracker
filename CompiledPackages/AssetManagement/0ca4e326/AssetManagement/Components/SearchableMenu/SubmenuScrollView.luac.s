PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Y"]
        2 GETTABLEKS                       R2 R2 K1 ["Offset"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["height"]
        7 JUMPIFLT                         R3 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETIMPORT                        R1 K3 [Enum.AutomaticSize.X]
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K5 [Enum.AutomaticSize.XY]
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETIMPORT                        R1 K2 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K3 ["height"]
        7 CALL                             R1 2 1
        8 JUMP                             ; [+3]
        9 GETIMPORT                        R1 K2 [UDim.new]
       11 CALL                             R1 0 1
       12 GETIMPORT                        R2 K5 [UDim2.new]
       14 GETIMPORT                        R3 K2 [UDim.new]
       16 CALL                             R3 0 1
       17 MOVE                             R4 R1
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 DUPTABLE                         R0 K3 [{[1] = , ["MaxSize"]}]
        1 GETIMPORT                        R1 K6 [Vector2.new]
        3 GETUPVAL                         R2 0
        4 LOADK                            R3 K7 [Infinity]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K2 ["MaxSize"]
        8 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        3 GETTABLEKS                       R3 R0 K3 ["AbsoluteSize"]
        5 GETTABLEKS                       R3 R3 K4 ["X"]
        7 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R4 K5 ["Y"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R1 K2 ["Hover"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+7]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["submenus"]
       12 GETTABLEKS                       R1 R1 K4 ["cancelPendingClose"]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useBinding"]
        7 GETIMPORT                        R3 K4 [UDim2.fromScale]
        9 LOADN                            R4 0
       10 LOADN                            R5 1
       11 CALL                             R3 2 -1
       12 CALL                             R2 -1 2
       13 GETTABLEKS                       R5 R1 K5 ["width"]
       15 GETTABLEKS                       R5 R5 K6 ["Offset"]
       17 LOADN                            R6 0
       18 JUMPIFNOTLT                      R6 R5 ; [+6]
       20 GETTABLEKS                       R4 R1 K5 ["width"]
       22 GETTABLEKS                       R4 R4 K6 ["Offset"]
       24 JUMP                             ; [+1]
       25 LOADK                            R4 K7 [Infinity]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K8 ["useMemo"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 NEWTABLE                         R7 0 2
       34 MOVE                             R8 R2
       35 GETTABLEKS                       R9 R1 K9 ["height"]
       37 SETLIST                          R7 R8 2 [1]
       39 CALL                             R5 2 1
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       43 NEWCLOSURE                       R7 P1
       44 CAPTURE                          VAL R5
       45 NEWTABLE                         R8 0 1
       47 MOVE                             R9 R5
       48 SETLIST                          R8 R9 1 [1]
       50 CALL                             R6 2 1
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       54 NEWCLOSURE                       R8 P2
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R1
       57 NEWTABLE                         R9 0 2
       59 MOVE                             R10 R5
       60 GETTABLEKS                       R11 R1 K9 ["height"]
       62 SETLIST                          R9 R10 2 [1]
       64 CALL                             R7 2 1
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       68 NEWCLOSURE                       R9 P3
       69 CAPTURE                          VAL R4
       70 NEWTABLE                         R10 0 1
       72 MOVE                             R11 R4
       73 SETLIST                          R10 R11 1 [1]
       75 CALL                             R8 2 1
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R9 R9 K10 ["useCallback"]
       79 NEWCLOSURE                       R10 P4
       80 CAPTURE                          VAL R3
       81 NEWTABLE                         R11 0 1
       83 MOVE                             R12 R3
       84 SETLIST                          R11 R12 1 [1]
       86 CALL                             R9 2 1
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       90 NEWCLOSURE                       R11 P5
       91 CAPTURE                          UPVAL U2
       92 CAPTURE                          VAL R1
       93 NEWTABLE                         R12 0 1
       95 GETTABLEKS                       R13 R1 K11 ["submenus"]
       97 GETTABLEKS                       R13 R13 K12 ["cancelPendingClose"]
       99 SETLIST                          R12 R13 1 [1]
      101 CALL                             R10 2 1
      102 GETUPVAL                         R11 1
      103 GETTABLEKS                       R11 R11 K13 ["createElement"]
      105 GETUPVAL                         R12 2
      106 GETTABLEKS                       R12 R12 K14 ["ScrollView"]
      108 DUPTABLE                         R13 K25 [{"LayoutOrder", "AutomaticSize", "Size", "sizeConstraint", "scrollingFrameRef", "tag", "testId", "onStateChanged", "stateLayer", "scroll"}]
      109 GETTABLEKS                       R14 R0 K15 ["LayoutOrder"]
      111 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
      113 SETTABLEKS                       R6 R13 K16 ["AutomaticSize"]
      115 SETTABLEKS                       R7 R13 K17 ["Size"]
      117 SETTABLEKS                       R8 R13 K18 ["sizeConstraint"]
      119 GETTABLEKS                       R14 R0 K19 ["scrollingFrameRef"]
      121 SETTABLEKS                       R14 R13 K19 ["scrollingFrameRef"]
      123 GETTABLEKS                       R14 R0 K20 ["tag"]
      125 SETTABLEKS                       R14 R13 K20 ["tag"]
      127 GETTABLEKS                       R14 R0 K21 ["testId"]
      129 SETTABLEKS                       R14 R13 K21 ["testId"]
      131 SETTABLEKS                       R10 R13 K22 ["onStateChanged"]
      133 DUPTABLE                         R14 K27 [{"affordance"}]
      134 GETUPVAL                         R15 2
      135 GETTABLEKS                       R15 R15 K28 ["Enums"]
      137 GETTABLEKS                       R15 R15 K29 ["StateLayerAffordance"]
      139 GETTABLEKS                       R15 R15 K30 ["None"]
      141 SETTABLEKS                       R15 R14 K26 ["affordance"]
      143 SETTABLEKS                       R14 R13 K23 ["stateLayer"]
      145 DUPTABLE                         R14 K34 [{"AutomaticCanvasSize", "AutomaticSize", "CanvasSize", "ScrollingDirection"}]
      146 GETIMPORT                        R15 K37 [Enum.AutomaticSize.Y]
      148 SETTABLEKS                       R15 R14 K31 ["AutomaticCanvasSize"]
      150 SETTABLEKS                       R6 R14 K16 ["AutomaticSize"]
      152 SETTABLEKS                       R2 R14 K32 ["CanvasSize"]
      154 GETIMPORT                        R15 K38 [Enum.ScrollingDirection.Y]
      156 SETTABLEKS                       R15 R14 K33 ["ScrollingDirection"]
      158 SETTABLEKS                       R14 R13 K24 ["scroll"]
      160 GETUPVAL                         R14 1
      161 GETTABLEKS                       R14 R14 K13 ["createElement"]
      163 GETUPVAL                         R15 2
      164 GETTABLEKS                       R15 R15 K39 ["View"]
      166 DUPTABLE                         R16 K42 [{["tag"] = "col size-full-0 auto-y", ["onAbsoluteSizeChanged"]}]
      167 SETTABLEKS                       R9 R16 K41 ["onAbsoluteSizeChanged"]
      169 GETTABLEKS                       R17 R0 K43 ["children"]
      171 CALL                             R14 3 -1
      172 CALL                             R11 -1 -1
      173 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Packages"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K8 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K9 ["Parent"]
       27 GETTABLEKS                       R5 R5 K10 ["SearchableMenuContext"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K11 [PROTO_9]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 RETURN                           R5 1
