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
       17 GETTABLEKS                       R10 R9 K1 ["outputNodeId"]
       19 JUMPIFEQKNIL                     R10 ; [+54]
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R11 R9 K1 ["outputNodeId"]
       24 LOADK                            R12 K2 ["Output"]
       25 GETTABLEKS                       R13 R9 K3 ["outputNodePinId"]
       27 CALL                             R10 3 1
       28 GETUPVAL                         R11 1
       29 GETTABLEKS                       R12 R9 K4 ["inputNodeId"]
       31 LOADK                            R13 K5 ["Input"]
       32 GETTABLEKS                       R14 R9 K6 ["inputNodePinId"]
       34 CALL                             R11 3 1
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R12 R12 K7 ["observeAnchorPosition"]
       38 MOVE                             R13 R10
       39 CALL                             R12 1 1
       40 LOADB                            R13 0
       41 CALL                             R12 1 1
       42 GETUPVAL                         R13 2
       43 GETTABLEKS                       R13 R13 K7 ["observeAnchorPosition"]
       45 MOVE                             R14 R11
       46 CALL                             R13 1 1
       47 LOADB                            R14 0
       48 CALL                             R13 1 1
       49 GETUPVAL                         R14 3
       50 GETTABLEKS                       R14 R14 K8 ["getCurveHitResult"]
       52 GETUPVAL                         R15 4
       53 MOVE                             R16 R12
       54 MOVE                             R17 R13
       55 MOVE                             R18 R9
       56 CALL                             R14 4 1
       57 JUMPIFNOT                        R14 ; [+16]
       58 GETTABLEKS                       R15 R14 K9 ["distance"]
       60 GETUPVAL                         R16 5
       61 GETTABLEKS                       R16 R16 K10 ["SLOPPY_SELECTION_BOUNDARY"]
       63 JUMPIFLT                         R16 R15 ; [+10]
       65 GETTABLEKS                       R15 R14 K9 ["distance"]
       67 JUMPIFLE                         R4 R15 ; [+6]
       69 GETTABLEKS                       R4 R14 K9 ["distance"]
       71 MOVE                             R2 R9
       72 GETTABLEKS                       R3 R14 K11 ["fraction"]
       74 FORGLOOP                         R5 2 ; [-58]
       76 JUMPIF                           R2 ; [+2]
       77 LOADNIL                          R5
       78 RETURN                           R5 1
       79 GETTABLEKS                       R5 R2 K1 ["outputNodeId"]
       81 JUMPIFNOTEQKNIL                  R5 ; [+3]
       83 LOADNIL                          R6
       84 RETURN                           R6 1
       85 LOADNIL                          R6
       86 LOADNIL                          R7
       87 LOADNIL                          R8
       88 LOADNIL                          R9
       89 LOADNIL                          R10
       90 GETUPVAL                         R11 3
       91 GETTABLEKS                       R11 R11 K12 ["OUTPUT_ZONE_MAX"]
       93 JUMPIFNOTLE                      R3 R11 ; [+10]
       95 LOADK                            R6 K5 ["Input"]
       96 GETTABLEKS                       R7 R2 K4 ["inputNodeId"]
       98 GETTABLEKS                       R8 R2 K6 ["inputNodePinId"]
      100 MOVE                             R9 R5
      101 GETTABLEKS                       R10 R2 K3 ["outputNodePinId"]
      103 JUMP                             ; [+8]
      104 LOADK                            R6 K2 ["Output"]
      105 MOVE                             R7 R5
      106 GETTABLEKS                       R8 R2 K3 ["outputNodePinId"]
      108 GETTABLEKS                       R9 R2 K4 ["inputNodeId"]
      110 GETTABLEKS                       R10 R2 K6 ["inputNodePinId"]
      112 GETUPVAL                         R11 1
      113 MOVE                             R12 R7
      114 MOVE                             R13 R6
      115 MOVE                             R14 R8
      116 CALL                             R11 3 1
      117 GETUPVAL                         R12 2
      118 GETTABLEKS                       R12 R12 K13 ["getAnchorData"]
      120 MOVE                             R13 R11
      121 CALL                             R12 1 1
      122 DUPTABLE                         R13 K21 [{"anchorPinNodeId", "anchorPinName", "anchorPinSide", "anchorPinDataType", "anchorPinDynamicIndex", "disconnectedPinNodeId", "disconnectedPinName"}]
      123 SETTABLEKS                       R7 R13 K14 ["anchorPinNodeId"]
      125 SETTABLEKS                       R8 R13 K15 ["anchorPinName"]
      127 SETTABLEKS                       R6 R13 K16 ["anchorPinSide"]
      129 JUMPIFNOT                        R12 ; [+3]
      130 GETTABLEKS                       R14 R12 K22 ["pinDataType"]
      132 JUMP                             ; [+1]
      133 LOADK                            R14 K23 [""]
      134 SETTABLEKS                       R14 R13 K17 ["anchorPinDataType"]
      136 JUMPIFNOT                        R12 ; [+3]
      137 GETTABLEKS                       R14 R12 K24 ["pinDynamicIndex"]
      139 JUMP                             ; [+1]
      140 LOADNIL                          R14
      141 SETTABLEKS                       R14 R13 K18 ["anchorPinDynamicIndex"]
      143 SETTABLEKS                       R9 R13 K19 ["disconnectedPinNodeId"]
      145 SETTABLEKS                       R10 R13 K20 ["disconnectedPinName"]
      147 RETURN                           R13 1

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
       66 NEWTABLE                         R9 0 3
       68 GETTABLEKS                       R10 R2 K9 ["onStartDrag"]
       70 GETTABLEKS                       R11 R2 K10 ["onMouseMoved"]
       72 GETTABLEKS                       R12 R2 K11 ["DEPRECATED_onDragMoved"]
       74 SETLIST                          R9 R10 3 [1]
       76 CALL                             R7 2 1
       77 GETUPVAL                         R8 0
       78 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       80 NEWCLOSURE                       R9 P3
       81 CAPTURE                          VAL R4
       82 CAPTURE                          UPVAL U7
       83 CAPTURE                          VAL R2
       84 NEWTABLE                         R10 0 2
       86 GETTABLEKS                       R11 R2 K12 ["onMouseUp"]
       88 GETTABLEKS                       R12 R2 K13 ["DEPRECATED_onDragEnded"]
       90 SETLIST                          R10 R11 2 [1]
       92 CALL                             R8 2 1
       93 GETUPVAL                         R9 0
       94 GETTABLEKS                       R9 R9 K14 ["useMemo"]
       96 NEWCLOSURE                       R10 P4
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R8
      101 NEWTABLE                         R11 0 4
      103 MOVE                             R12 R3
      104 MOVE                             R13 R6
      105 MOVE                             R14 R7
      106 MOVE                             R15 R8
      107 SETLIST                          R11 R12 4 [1]
      109 CALL                             R9 2 1
      110 GETUPVAL                         R10 0
      111 GETTABLEKS                       R10 R10 K15 ["createElement"]
      113 GETUPVAL                         R11 8
      114 GETTABLEKS                       R11 R11 K16 ["Provider"]
      116 DUPTABLE                         R12 K18 [{"value"}]
      117 SETTABLEKS                       R9 R12 K17 ["value"]
      119 GETTABLEKS                       R13 R0 K19 ["children"]
      121 CALL                             R10 3 -1
      122 RETURN                           R10 -1

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
