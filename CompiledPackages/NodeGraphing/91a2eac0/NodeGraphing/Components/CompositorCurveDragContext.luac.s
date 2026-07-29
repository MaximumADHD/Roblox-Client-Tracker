PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 LOADNIL                          R2
       11 LOADN                            R3 0
       12 LOADK                            R4 K0 [∞]
       13 MOVE                             R5 R1
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R11 R9 K1 ["outputNodeId"]
       20 LOADK                            R12 K2 ["Output"]
       21 GETTABLEKS                       R13 R9 K3 ["outputNodePinId"]
       23 CALL                             R10 3 1
       24 GETUPVAL                         R11 1
       25 GETTABLEKS                       R12 R9 K4 ["inputNodeId"]
       27 LOADK                            R13 K5 ["Input"]
       28 GETTABLEKS                       R14 R9 K6 ["inputNodePinId"]
       30 CALL                             R11 3 1
       31 GETUPVAL                         R12 2
       32 GETTABLEKS                       R12 R12 K7 ["observeAnchorPosition"]
       34 MOVE                             R13 R10
       35 CALL                             R12 1 1
       36 LOADB                            R13 0
       37 CALL                             R12 1 1
       38 GETUPVAL                         R13 2
       39 GETTABLEKS                       R13 R13 K7 ["observeAnchorPosition"]
       41 MOVE                             R14 R11
       42 CALL                             R13 1 1
       43 LOADB                            R14 0
       44 CALL                             R13 1 1
       45 GETUPVAL                         R14 3
       46 GETTABLEKS                       R14 R14 K8 ["getCurveHitResult"]
       48 GETUPVAL                         R15 4
       49 MOVE                             R16 R12
       50 MOVE                             R17 R13
       51 MOVE                             R18 R9
       52 CALL                             R14 4 1
       53 JUMPIFNOT                        R14 ; [+16]
       54 GETTABLEKS                       R15 R14 K9 ["distance"]
       56 GETUPVAL                         R16 5
       57 GETTABLEKS                       R16 R16 K10 ["SLOPPY_SELECTION_BOUNDARY"]
       59 JUMPIFLT                         R16 R15 ; [+10]
       61 GETTABLEKS                       R15 R14 K9 ["distance"]
       63 JUMPIFLE                         R4 R15 ; [+6]
       65 GETTABLEKS                       R4 R14 K9 ["distance"]
       67 MOVE                             R2 R9
       68 GETTABLEKS                       R3 R14 K11 ["fraction"]
       70 FORGLOOP                         R5 2 ; [-54]
       72 JUMPIF                           R2 ; [+2]
       73 LOADNIL                          R5
       74 RETURN                           R5 1
       75 LOADNIL                          R5
       76 LOADNIL                          R6
       77 LOADNIL                          R7
       78 LOADNIL                          R8
       79 LOADNIL                          R9
       80 GETUPVAL                         R10 3
       81 GETTABLEKS                       R10 R10 K12 ["OUTPUT_ZONE_MAX"]
       83 JUMPIFNOTLE                      R3 R10 ; [+11]
       85 LOADK                            R5 K5 ["Input"]
       86 GETTABLEKS                       R6 R2 K4 ["inputNodeId"]
       88 GETTABLEKS                       R7 R2 K6 ["inputNodePinId"]
       90 GETTABLEKS                       R8 R2 K1 ["outputNodeId"]
       92 GETTABLEKS                       R9 R2 K3 ["outputNodePinId"]
       94 JUMP                             ; [+9]
       95 LOADK                            R5 K2 ["Output"]
       96 GETTABLEKS                       R6 R2 K1 ["outputNodeId"]
       98 GETTABLEKS                       R7 R2 K3 ["outputNodePinId"]
      100 GETTABLEKS                       R8 R2 K4 ["inputNodeId"]
      102 GETTABLEKS                       R9 R2 K6 ["inputNodePinId"]
      104 GETUPVAL                         R10 1
      105 MOVE                             R11 R6
      106 MOVE                             R12 R5
      107 MOVE                             R13 R7
      108 CALL                             R10 3 1
      109 GETUPVAL                         R11 2
      110 GETTABLEKS                       R11 R11 K13 ["getAnchorData"]
      112 MOVE                             R12 R10
      113 CALL                             R11 1 1
      114 DUPTABLE                         R12 K21 [{"anchorPinNodeId", "anchorPinName", "anchorPinSide", "anchorPinDataType", "anchorPinDynamicIndex", "disconnectedPinNodeId", "disconnectedPinName"}]
      115 SETTABLEKS                       R6 R12 K14 ["anchorPinNodeId"]
      117 SETTABLEKS                       R7 R12 K15 ["anchorPinName"]
      119 SETTABLEKS                       R5 R12 K16 ["anchorPinSide"]
      121 JUMPIFNOT                        R11 ; [+3]
      122 GETTABLEKS                       R13 R11 K22 ["pinDataType"]
      124 JUMP                             ; [+1]
      125 LOADK                            R13 K23 [""]
      126 SETTABLEKS                       R13 R12 K17 ["anchorPinDataType"]
      128 JUMPIFNOT                        R11 ; [+3]
      129 GETTABLEKS                       R13 R11 K24 ["pinDynamicIndex"]
      131 JUMP                             ; [+1]
      132 LOADNIL                          R13
      133 SETTABLEKS                       R13 R12 K18 ["anchorPinDynamicIndex"]
      135 SETTABLEKS                       R8 R12 K19 ["disconnectedPinNodeId"]
      137 SETTABLEKS                       R9 R12 K20 ["disconnectedPinName"]
      139 RETURN                           R12 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeNodeInputBindings"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["observeNodeInputBindings"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["createComputed"]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U5
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R3 0
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R2 R3 K0 ["current"]
       11 GETUPVAL                         R3 2
       12 SETTABLEKS                       R1 R3 K0 ["current"]
       14 LOADB                            R3 1
       15 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+51]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["current"]
        7 SUB                              R3 R1 R4
        8 GETTABLEKS                       R3 R3 K1 ["Magnitude"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["SLOPPY_SELECTION_BOUNDARY"]
       13 JUMPIFNOTLT                      R3 R4 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 0
       17 LOADNIL                          R4
       18 SETTABLEKS                       R4 R3 K0 ["current"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K3 ["onStartDrag"]
       23 DUPTABLE                         R4 K14 [{["sourcePinNodeId"], ["sourcePinName"], ["sourcePinDataType"], ["sourcePinSide"], ["sourcePinDynamicIndex"], ["position"], ["disconnectedPinNodeId"], ["disconnectedPinName"], ["isCurveDrag"] = True}]
       24 GETTABLEKS                       R5 R2 K15 ["anchorPinNodeId"]
       26 SETTABLEKS                       R5 R4 K4 ["sourcePinNodeId"]
       28 GETTABLEKS                       R5 R2 K16 ["anchorPinName"]
       30 SETTABLEKS                       R5 R4 K5 ["sourcePinName"]
       32 GETTABLEKS                       R5 R2 K17 ["anchorPinDataType"]
       34 SETTABLEKS                       R5 R4 K6 ["sourcePinDataType"]
       36 GETTABLEKS                       R5 R2 K18 ["anchorPinSide"]
       38 SETTABLEKS                       R5 R4 K7 ["sourcePinSide"]
       40 GETTABLEKS                       R5 R2 K19 ["anchorPinDynamicIndex"]
       42 SETTABLEKS                       R5 R4 K8 ["sourcePinDynamicIndex"]
       44 SETTABLEKS                       R1 R4 K9 ["position"]
       46 GETTABLEKS                       R5 R2 K10 ["disconnectedPinNodeId"]
       48 SETTABLEKS                       R5 R4 K10 ["disconnectedPinNodeId"]
       50 GETTABLEKS                       R5 R2 K11 ["disconnectedPinName"]
       52 SETTABLEKS                       R5 R4 K11 ["disconnectedPinName"]
       54 CALL                             R3 1 0
       55 GETUPVAL                         R3 4
       56 JUMPIFNOT                        R3 ; [+6]
       57 GETUPVAL                         R3 3
       58 GETTABLEKS                       R3 R3 K20 ["onMouseMoved"]
       60 MOVE                             R4 R1
       61 CALL                             R3 1 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R3 3
       64 GETTABLEKS                       R3 R3 K21 ["DEPRECATED_onDragMoved"]
       66 MOVE                             R4 R0
       67 CALL                             R3 1 0
       68 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K0 ["current"]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 1
       10 JUMPIFNOT                        R2 ; [+6]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K1 ["onMouseUp"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K2 ["DEPRECATED_onDragEnded"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K4 [{"observeHitConnectionData", "onDragStart", "onDragMoved", "onDragEnded"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeHitConnectionData"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["onDragStart"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["onDragMoved"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["onDragEnded"]
       13 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 NEWTABLE                         R5 0 2
       26 GETTABLEKS                       R6 R1 K3 ["observeNodeInputBindings"]
       28 GETTABLEKS                       R7 R2 K4 ["observeAnchorPosition"]
       30 SETLIST                          R5 R6 2 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K5 ["useRef"]
       36 LOADNIL                          R5
       37 CALL                             R4 1 1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K5 ["useRef"]
       41 GETIMPORT                        R6 K8 [Vector2.zero]
       43 CALL                             R5 1 1
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 NEWTABLE                         R8 0 1
       53 MOVE                             R9 R3
       54 SETLIST                          R8 R9 1 [1]
       56 CALL                             R6 2 1
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       60 NEWCLOSURE                       R8 P2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R5
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U7
       66 NEWTABLE                         R9 0 4
       68 GETTABLEKS                       R10 R2 K9 ["onStartDrag"]
       70 GETTABLEKS                       R11 R2 K10 ["DEPRECATED_onStartDrag"]
       72 GETTABLEKS                       R12 R2 K11 ["onMouseMoved"]
       74 GETTABLEKS                       R13 R2 K12 ["DEPRECATED_onDragMoved"]
       76 SETLIST                          R9 R10 4 [1]
       78 CALL                             R7 2 1
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       82 NEWCLOSURE                       R9 P3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          VAL R2
       86 NEWTABLE                         R10 0 2
       88 GETTABLEKS                       R11 R2 K13 ["onMouseUp"]
       90 GETTABLEKS                       R12 R2 K14 ["DEPRECATED_onDragEnded"]
       92 SETLIST                          R10 R11 2 [1]
       94 CALL                             R8 2 1
       95 GETUPVAL                         R9 0
       96 GETTABLEKS                       R9 R9 K15 ["useMemo"]
       98 NEWCLOSURE                       R10 P4
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R8
      103 NEWTABLE                         R11 0 4
      105 MOVE                             R12 R3
      106 MOVE                             R13 R6
      107 MOVE                             R14 R7
      108 MOVE                             R15 R8
      109 SETLIST                          R11 R12 4 [1]
      111 CALL                             R9 2 1
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R10 R10 K16 ["createElement"]
      115 GETUPVAL                         R11 8
      116 GETTABLEKS                       R11 R11 K17 ["Provider"]
      118 DUPTABLE                         R12 K19 [{"value"}]
      119 SETTABLEKS                       R9 R12 K18 ["value"]
      121 GETTABLEKS                       R13 R0 K20 ["children"]
      123 CALL                             R10 3 -1
      124 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["BezierCurveUtils"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["CompositorConnectionContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Constants"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Flags"]
       30 GETTABLEKS                       R5 R5 K12 ["FFlagAnimGraphUI_ClickTogglePins"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K8 ["Components"]
       37 GETTABLEKS                       R6 R6 K13 ["GraphContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K14 ["NodeViewTypes"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K15 ["Parent"]
       49 GETTABLEKS                       R8 R8 K16 ["React"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K15 ["Parent"]
       56 GETTABLEKS                       R9 R9 K17 ["ReactUtils"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K15 ["Parent"]
       63 GETTABLEKS                       R10 R10 K18 ["Signals"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Util"]
       70 GETTABLEKS                       R11 R11 K19 ["getPinAnchorKey"]
       72 CALL                             R10 1 1
       73 DUPTABLE                         R11 K24 [{"observeHitConnectionData", "onDragStart", "onDragMoved", "onDragEnded"}]
       74 GETTABLEKS                       R12 R8 K25 ["createUnimplemented"]
       76 LOADK                            R13 K20 ["observeHitConnectionData"]
       77 CALL                             R12 1 1
       78 SETTABLEKS                       R12 R11 K20 ["observeHitConnectionData"]
       80 GETTABLEKS                       R12 R8 K25 ["createUnimplemented"]
       82 LOADK                            R13 K21 ["onDragStart"]
       83 CALL                             R12 1 1
       84 SETTABLEKS                       R12 R11 K21 ["onDragStart"]
       86 GETTABLEKS                       R12 R8 K25 ["createUnimplemented"]
       88 LOADK                            R13 K22 ["onDragMoved"]
       89 CALL                             R12 1 1
       90 SETTABLEKS                       R12 R11 K22 ["onDragMoved"]
       92 GETTABLEKS                       R12 R8 K25 ["createUnimplemented"]
       94 LOADK                            R13 K23 ["onDragEnded"]
       95 CALL                             R12 1 1
       96 SETTABLEKS                       R12 R11 K23 ["onDragEnded"]
       98 GETTABLEKS                       R12 R7 K26 ["createContext"]
      100 MOVE                             R13 R11
      101 CALL                             R12 1 1
      102 DUPCLOSURE                       R13 K27 [PROTO_6]
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R12
      112 DUPTABLE                         R14 K30 [{"Context", "Provider"}]
      113 SETTABLEKS                       R12 R14 K28 ["Context"]
      115 SETTABLEKS                       R13 R14 K29 ["Provider"]
      117 RETURN                           R14 1
