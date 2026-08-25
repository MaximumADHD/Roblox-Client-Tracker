PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetDragged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 JUMPIFNOTEQKS                    R0 K1 ["Start"] ; [+6]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["SetHovered"]
       10 LOADK                            R2 K1 ["Start"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clampEnvelope"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["Value"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["MinY"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K3 ["MaxY"]
       13 CALL                             R1 4 1
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K4 ["OnKeypointChanged"]
       17 GETIMPORT                        R3 K7 [NumberSequenceKeypoint.new]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K8 ["Time"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K1 ["Value"]
       25 MOVE                             R6 R1
       26 CALL                             R3 3 -1
       27 CALL                             R2 -1 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getViewport"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Keypoint"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useContext"]
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["useEventCallback"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K2 ["useEventCallback"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K3 ["useState"]
       24 GETIMPORT                        R6 K6 [Vector2.zero]
       26 CALL                             R5 1 2
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K2 ["useEventCallback"]
       30 NEWCLOSURE                       R8 P2
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R6
       33 CALL                             R7 1 1
       34 GETUPVAL                         R8 4
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K7 ["Fragment"]
       38 NEWTABLE                         R10 0 0
       40 DUPTABLE                         R11 K12 [{"ResizeTracker", "TopHandle", "BottomHandle", "Connector"}]
       41 GETUPVAL                         R12 4
       42 GETUPVAL                         R13 5
       43 DUPTABLE                         R14 K16 [{["tag"] = "size-full", ["onAbsoluteSizeChanged"]}]
       44 SETTABLEKS                       R7 R14 K15 ["onAbsoluteSizeChanged"]
       46 CALL                             R12 2 1
       47 SETTABLEKS                       R12 R11 K8 ["ResizeTracker"]
       49 GETUPVAL                         R12 4
       50 GETUPVAL                         R13 6
       51 DUPTABLE                         R14 K26 [{["side"] = "Top", ["keypoint"], ["prevKeypoint"], ["nextKeypoint"], ["viewportSize"], ["OnEnvelopeChanged"], ["SetDragged"], ["ZIndex"]}]
       52 SETTABLEKS                       R1 R14 K19 ["keypoint"]
       54 GETTABLEKS                       R15 R0 K27 ["PrevKeypoint"]
       56 SETTABLEKS                       R15 R14 K20 ["prevKeypoint"]
       58 GETTABLEKS                       R15 R0 K28 ["NextKeypoint"]
       60 SETTABLEKS                       R15 R14 K21 ["nextKeypoint"]
       62 SETTABLEKS                       R5 R14 K22 ["viewportSize"]
       64 SETTABLEKS                       R4 R14 K23 ["OnEnvelopeChanged"]
       66 SETTABLEKS                       R3 R14 K24 ["SetDragged"]
       68 GETTABLEKS                       R15 R0 K25 ["ZIndex"]
       70 SETTABLEKS                       R15 R14 K25 ["ZIndex"]
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K9 ["TopHandle"]
       75 GETUPVAL                         R12 4
       76 GETUPVAL                         R13 6
       77 DUPTABLE                         R14 K30 [{["side"] = "Bottom", ["keypoint"], ["prevKeypoint"], ["nextKeypoint"], ["viewportSize"], ["OnEnvelopeChanged"], ["SetDragged"], ["ZIndex"]}]
       78 SETTABLEKS                       R1 R14 K19 ["keypoint"]
       80 GETTABLEKS                       R15 R0 K27 ["PrevKeypoint"]
       82 SETTABLEKS                       R15 R14 K20 ["prevKeypoint"]
       84 GETTABLEKS                       R15 R0 K28 ["NextKeypoint"]
       86 SETTABLEKS                       R15 R14 K21 ["nextKeypoint"]
       88 SETTABLEKS                       R5 R14 K22 ["viewportSize"]
       90 SETTABLEKS                       R4 R14 K23 ["OnEnvelopeChanged"]
       92 SETTABLEKS                       R3 R14 K24 ["SetDragged"]
       94 GETTABLEKS                       R15 R0 K25 ["ZIndex"]
       96 SETTABLEKS                       R15 R14 K25 ["ZIndex"]
       98 CALL                             R12 2 1
       99 SETTABLEKS                       R12 R11 K10 ["BottomHandle"]
      101 GETUPVAL                         R12 4
      102 GETUPVAL                         R13 7
      103 DUPTABLE                         R14 K32 [{"keypoint", "viewportSize", "SetHovered", "ZIndex"}]
      104 SETTABLEKS                       R1 R14 K19 ["keypoint"]
      106 SETTABLEKS                       R5 R14 K22 ["viewportSize"]
      108 GETTABLEKS                       R15 R0 K31 ["SetHovered"]
      110 SETTABLEKS                       R15 R14 K31 ["SetHovered"]
      112 GETTABLEKS                       R16 R0 K25 ["ZIndex"]
      114 JUMPIFNOT                        R16 ; [+4]
      115 GETTABLEKS                       R16 R0 K25 ["ZIndex"]
      117 SUBK                             R15 R16 K33 [1]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R15
      120 SETTABLEKS                       R15 R14 K25 ["ZIndex"]
      122 CALL                             R12 2 1
      123 SETTABLEKS                       R12 R11 K11 ["Connector"]
      125 CALL                             R8 3 -1
      126 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R3 R3 K7 ["EnvelopeHandle"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K8 ["EnvelopeHandlesUtil"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K10 ["Graphing"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R7 K1 [script]
       37 GETTABLEKS                       R7 R7 K11 ["HandleConnector"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["PropertyEntries"]
       46 GETTABLEKS                       R8 R8 K14 ["PropertyView"]
       48 GETTABLEKS                       R8 R8 K15 ["NumberSequencePropertyView"]
       50 GETTABLEKS                       R8 R8 K16 ["Types"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R1 K17 ["React"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R1 K18 ["ReactUtils"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R5 K19 ["CanvasContext"]
       65 GETTABLEKS                       R11 R4 K20 ["View"]
       67 GETTABLEKS                       R12 R8 K21 ["createElement"]
       69 DUPCLOSURE                       R13 K22 [PROTO_3]
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R6
       78 RETURN                           R13 1
