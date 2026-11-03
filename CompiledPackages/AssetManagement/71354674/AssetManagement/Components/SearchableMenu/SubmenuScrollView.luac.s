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
        1 GETIMPORT                        R1 K3 [Enum.AutomaticSize.None]
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K5 [Enum.AutomaticSize.Y]
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["height"]
        4 JUMP                             ; [+1]
        5 LOADN                            R1 0
        6 GETIMPORT                        R2 K3 [UDim2.new]
        8 LOADN                            R3 1
        9 LOADN                            R4 0
       10 LOADN                            R5 0
       11 MOVE                             R6 R1
       12 CALL                             R2 4 -1
       13 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        3 GETTABLEKS                       R3 R0 K3 ["AbsoluteSize"]
        5 GETTABLEKS                       R3 R3 K4 ["X"]
        7 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
        9 GETTABLEKS                       R4 R4 K5 ["Y"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R6 0 2
       21 MOVE                             R7 R2
       22 GETTABLEKS                       R8 R1 K6 ["height"]
       24 SETLIST                          R6 R7 2 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R7 0 1
       34 MOVE                             R8 R4
       35 SETLIST                          R7 R8 1 [1]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       41 NEWCLOSURE                       R7 P2
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 NEWTABLE                         R8 0 2
       46 MOVE                             R9 R4
       47 GETTABLEKS                       R10 R1 K6 ["height"]
       49 SETLIST                          R8 R9 2 [1]
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       55 NEWCLOSURE                       R8 P3
       56 CAPTURE                          VAL R3
       57 NEWTABLE                         R9 0 1
       59 MOVE                             R10 R3
       60 SETLIST                          R9 R10 1 [1]
       62 CALL                             R7 2 1
       63 GETUPVAL                         R8 1
       64 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       66 NEWCLOSURE                       R9 P4
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          VAL R1
       69 NEWTABLE                         R10 0 1
       71 GETTABLEKS                       R11 R1 K8 ["submenus"]
       73 GETTABLEKS                       R11 R11 K9 ["cancelPendingClose"]
       75 SETLIST                          R10 R11 1 [1]
       77 CALL                             R8 2 1
       78 GETUPVAL                         R9 1
       79 GETTABLEKS                       R9 R9 K10 ["createElement"]
       81 GETUPVAL                         R10 2
       82 GETTABLEKS                       R10 R10 K11 ["ScrollView"]
       84 DUPTABLE                         R11 K21 [{"LayoutOrder", "AutomaticSize", "Size", "scrollingFrameRef", "tag", "testId", "onStateChanged", "stateLayer", "scroll"}]
       85 GETTABLEKS                       R12 R0 K12 ["LayoutOrder"]
       87 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       89 SETTABLEKS                       R5 R11 K13 ["AutomaticSize"]
       91 SETTABLEKS                       R6 R11 K14 ["Size"]
       93 GETTABLEKS                       R12 R0 K15 ["scrollingFrameRef"]
       95 SETTABLEKS                       R12 R11 K15 ["scrollingFrameRef"]
       97 GETTABLEKS                       R12 R0 K16 ["tag"]
       99 SETTABLEKS                       R12 R11 K16 ["tag"]
      101 GETTABLEKS                       R12 R0 K17 ["testId"]
      103 SETTABLEKS                       R12 R11 K17 ["testId"]
      105 SETTABLEKS                       R8 R11 K18 ["onStateChanged"]
      107 DUPTABLE                         R12 K23 [{"affordance"}]
      108 GETUPVAL                         R13 2
      109 GETTABLEKS                       R13 R13 K24 ["Enums"]
      111 GETTABLEKS                       R13 R13 K25 ["StateLayerAffordance"]
      113 GETTABLEKS                       R13 R13 K26 ["None"]
      115 SETTABLEKS                       R13 R12 K22 ["affordance"]
      117 SETTABLEKS                       R12 R11 K19 ["stateLayer"]
      119 DUPTABLE                         R12 K30 [{"AutomaticCanvasSize", "AutomaticSize", "CanvasSize", "ScrollingDirection"}]
      120 GETIMPORT                        R13 K33 [Enum.AutomaticSize.Y]
      122 SETTABLEKS                       R13 R12 K27 ["AutomaticCanvasSize"]
      124 SETTABLEKS                       R5 R12 K13 ["AutomaticSize"]
      126 SETTABLEKS                       R2 R12 K28 ["CanvasSize"]
      128 GETIMPORT                        R13 K34 [Enum.ScrollingDirection.Y]
      130 SETTABLEKS                       R13 R12 K29 ["ScrollingDirection"]
      132 SETTABLEKS                       R12 R11 K20 ["scroll"]
      134 GETUPVAL                         R12 1
      135 GETTABLEKS                       R12 R12 K10 ["createElement"]
      137 GETUPVAL                         R13 2
      138 GETTABLEKS                       R13 R13 K35 ["View"]
      140 DUPTABLE                         R14 K38 [{["tag"] = "col size-full-0 auto-y", ["onAbsoluteSizeChanged"]}]
      141 SETTABLEKS                       R7 R14 K37 ["onAbsoluteSizeChanged"]
      143 GETTABLEKS                       R15 R0 K39 ["children"]
      145 CALL                             R12 3 -1
      146 CALL                             R9 -1 -1
      147 RETURN                           R9 -1

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
       30 DUPCLOSURE                       R5 K11 [PROTO_8]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 RETURN                           R5 1
