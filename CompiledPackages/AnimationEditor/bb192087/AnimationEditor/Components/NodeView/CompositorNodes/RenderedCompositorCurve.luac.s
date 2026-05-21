PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 JUMPIFNOT                        R1 ; [+21]
        8 GETTABLEKS                       R2 R1 K0 ["sourcePinSide"]
       10 JUMPIFNOTEQKS                    R2 K1 ["Input"] ; [+18]
       12 GETTABLEKS                       R2 R1 K2 ["sourcePinNodeId"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["inputPinNodeId"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+11]
       19 GETTABLEKS                       R2 R1 K4 ["sourcePinName"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K5 ["inputPinName"]
       24 JUMPIFNOTEQ                      R2 R3 ; [+4]
       26 GETTABLEKS                       R2 R1 K6 ["targetPinPosition"]
       28 RETURN                           R2 1
       29 GETUPVAL                         R3 2
       30 JUMPIFNOT                        R3 ; [+4]
       31 GETUPVAL                         R2 2
       32 MOVE                             R3 R0
       33 CALL                             R2 1 1
       34 RETURN                           R2 1
       35 LOADNIL                          R2
       36 RETURN                           R2 1

PROTO_1:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["inputPinNodeId"]
        4 JUMPIFNOT                        R1 ; [+34]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["inputPinName"]
        8 JUMPIFNOT                        R1 ; [+30]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["getPinAnchorKey"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["inputPinNodeId"]
       15 LOADK                            R3 K3 ["Input"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K1 ["inputPinName"]
       19 GETUPVAL                         R6 2
       20 CALL                             R6 0 1
       21 JUMPIFNOT                        R6 ; [+9]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K4 ["pinDataType"]
       25 JUMPIFNOTEQKS                    R6 K5 ["Parameter"] ; [+5]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K6 ["inputPinDynamicIndex"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R5
       32 CALL                             R1 4 1
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R2 R2 K7 ["observeCurvePreviewInfo"]
       36 MOVE                             R3 R1
       37 CALL                             R2 1 1
       38 MOVE                             R0 R2
       39 LOADNIL                          R1
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K8 ["outputPinNodeId"]
       43 JUMPIFNOT                        R2 ; [+21]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K9 ["outputPinName"]
       47 JUMPIFNOT                        R2 ; [+17]
       48 GETUPVAL                         R2 1
       49 GETTABLEKS                       R2 R2 K2 ["getPinAnchorKey"]
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K8 ["outputPinNodeId"]
       54 LOADK                            R4 K10 ["Output"]
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K9 ["outputPinName"]
       58 CALL                             R2 3 1
       59 GETUPVAL                         R3 3
       60 GETTABLEKS                       R3 R3 K11 ["observeAnchorPosition"]
       62 MOVE                             R4 R2
       63 CALL                             R3 1 1
       64 MOVE                             R1 R3
       65 GETUPVAL                         R2 4
       66 GETTABLEKS                       R2 R2 K12 ["createComputed"]
       68 NEWCLOSURE                       R3 P0
       69 CAPTURE                          REF R0
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          REF R1
       72 CALL                             R2 1 -1
       73 CLOSEUPVALS                      R0
       74 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 JUMPIFNOT                        R1 ; [+21]
        8 GETTABLEKS                       R2 R1 K0 ["sourcePinSide"]
       10 JUMPIFNOTEQKS                    R2 K1 ["Output"] ; [+18]
       12 GETTABLEKS                       R2 R1 K2 ["sourcePinNodeId"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["outputPinNodeId"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+11]
       19 GETTABLEKS                       R2 R1 K4 ["sourcePinName"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K5 ["outputPinName"]
       24 JUMPIFNOTEQ                      R2 R3 ; [+4]
       26 GETTABLEKS                       R2 R1 K6 ["targetPinPosition"]
       28 RETURN                           R2 1
       29 GETUPVAL                         R3 2
       30 JUMPIFNOT                        R3 ; [+4]
       31 GETUPVAL                         R2 2
       32 MOVE                             R3 R0
       33 CALL                             R2 1 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R2
       36 JUMPIFNOT                        R2 ; [+1]
       37 RETURN                           R2 1
       38 GETUPVAL                         R4 3
       39 JUMPIFNOT                        R4 ; [+4]
       40 GETUPVAL                         R3 3
       41 MOVE                             R4 R0
       42 CALL                             R3 1 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R3
       45 JUMPIFNOT                        R3 ; [+1]
       46 RETURN                           R3 1
       47 LOADNIL                          R4
       48 RETURN                           R4 1

PROTO_3:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["outputPinNodeId"]
        4 JUMPIFNOT                        R1 ; [+21]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["outputPinName"]
        8 JUMPIFNOT                        R1 ; [+17]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["getPinAnchorKey"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["outputPinNodeId"]
       15 LOADK                            R3 K3 ["Output"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K1 ["outputPinName"]
       19 CALL                             R1 3 1
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K4 ["observeCurvePreviewInfo"]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 MOVE                             R0 R2
       26 LOADNIL                          R1
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K5 ["inputPinNodeId"]
       30 JUMPIFNOT                        R2 ; [+34]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K6 ["inputPinName"]
       34 JUMPIFNOT                        R2 ; [+30]
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R2 R2 K2 ["getPinAnchorKey"]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K5 ["inputPinNodeId"]
       41 LOADK                            R4 K7 ["Input"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K6 ["inputPinName"]
       45 GETUPVAL                         R7 3
       46 CALL                             R7 0 1
       47 JUMPIFNOT                        R7 ; [+9]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K8 ["pinDataType"]
       51 JUMPIFNOTEQKS                    R7 K9 ["Parameter"] ; [+5]
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K10 ["inputPinDynamicIndex"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R6
       58 CALL                             R2 4 1
       59 GETUPVAL                         R3 2
       60 GETTABLEKS                       R3 R3 K11 ["observeAnchorPosition"]
       62 MOVE                             R4 R2
       63 CALL                             R3 1 1
       64 MOVE                             R1 R3
       65 LOADNIL                          R2
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R3 R3 K5 ["inputPinNodeId"]
       69 JUMPIFNOT                        R3 ; [+8]
       70 GETUPVAL                         R3 2
       71 GETTABLEKS                       R3 R3 K12 ["observeCollapsedPinPosition"]
       73 GETUPVAL                         R4 0
       74 GETTABLEKS                       R4 R4 K5 ["inputPinNodeId"]
       76 CALL                             R3 1 1
       77 MOVE                             R2 R3
       78 GETUPVAL                         R3 4
       79 GETTABLEKS                       R3 R3 K13 ["createComputed"]
       81 NEWCLOSURE                       R4 P0
       82 CAPTURE                          REF R0
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          REF R1
       85 CAPTURE                          REF R2
       86 CALL                             R3 1 -1
       87 CLOSEUPVALS                      R0
       88 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+33]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["Enums"]
        9 GETTABLEKS                       R2 R2 K3 ["Theme"]
       11 GETTABLEKS                       R2 R2 K4 ["Dark"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+11]
       15 GETUPVAL                         R0 3
       16 GETTABLEKS                       R0 R0 K5 ["Color"]
       18 GETTABLEKS                       R0 R0 K6 ["Extended"]
       20 GETTABLEKS                       R0 R0 K7 ["Green"]
       22 GETTABLEKS                       R0 R0 K8 ["Green_800"]
       24 JUMP                             ; [+9]
       25 GETUPVAL                         R0 3
       26 GETTABLEKS                       R0 R0 K5 ["Color"]
       28 GETTABLEKS                       R0 R0 K6 ["Extended"]
       30 GETTABLEKS                       R0 R0 K7 ["Green"]
       32 GETTABLEKS                       R0 R0 K9 ["Green_600"]
       34 GETTABLEKS                       R1 R0 K10 ["Color3"]
       36 RETURN                           R1 1
       37 GETUPVAL                         R0 4
       38 JUMPIFNOT                        R0 ; [+12]
       39 GETUPVAL                         R0 3
       40 GETTABLEKS                       R0 R0 K5 ["Color"]
       42 GETTABLEKS                       R0 R0 K6 ["Extended"]
       44 GETTABLEKS                       R0 R0 K11 ["Gray"]
       46 GETTABLEKS                       R0 R0 K12 ["Gray_800"]
       48 GETTABLEKS                       R0 R0 K10 ["Color3"]
       50 RETURN                           R0 1
       51 GETUPVAL                         R0 3
       52 GETTABLEKS                       R0 R0 K5 ["Color"]
       54 GETTABLEKS                       R0 R0 K6 ["Extended"]
       56 GETTABLEKS                       R0 R0 K11 ["Gray"]
       58 GETTABLEKS                       R0 R0 K13 ["Gray_600"]
       60 GETTABLEKS                       R0 R0 K10 ["Color3"]
       62 RETURN                           R0 1

PROTO_5:
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
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K2 ["Hooks"]
       19 GETTABLEKS                       R4 R4 K3 ["useTokens"]
       21 CALL                             R4 0 1
       22 GETTABLEKS                       R5 R2 K4 ["observeZoomRatio"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U7
       33 NEWTABLE                         R8 0 6
       35 GETTABLEKS                       R9 R0 K6 ["outputPinNodeId"]
       37 GETTABLEKS                       R10 R0 K7 ["outputPinName"]
       39 GETTABLEKS                       R11 R0 K8 ["inputPinNodeId"]
       41 GETTABLEKS                       R12 R0 K9 ["inputPinName"]
       43 GETTABLEKS                       R13 R0 K10 ["inputPinDynamicIndex"]
       45 GETTABLEKS                       R14 R1 K11 ["observeAnchorPosition"]
       47 SETLIST                          R8 R9 6 [1]
       49 CALL                             R6 2 1
       50 GETUPVAL                         R7 8
       51 GETTABLEKS                       R7 R7 K12 ["useSignalState"]
       53 GETUPVAL                         R8 9
       54 GETTABLEKS                       R8 R8 K13 ["useObserveIsDisabled"]
       56 GETTABLEKS                       R10 R0 K6 ["outputPinNodeId"]
       58 ORK                              R9 R10 K14 [""]
       59 CALL                             R8 1 -1
       60 CALL                             R7 -1 1
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K5 ["useMemo"]
       64 NEWCLOSURE                       R9 P1
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          UPVAL U7
       70 NEWTABLE                         R10 0 6
       72 GETTABLEKS                       R11 R0 K6 ["outputPinNodeId"]
       74 GETTABLEKS                       R12 R0 K7 ["outputPinName"]
       76 GETTABLEKS                       R13 R0 K8 ["inputPinNodeId"]
       78 GETTABLEKS                       R14 R0 K9 ["inputPinName"]
       80 GETTABLEKS                       R15 R0 K10 ["inputPinDynamicIndex"]
       82 GETTABLEKS                       R16 R1 K11 ["observeAnchorPosition"]
       84 SETLIST                          R10 R11 6 [1]
       86 CALL                             R8 2 1
       87 GETUPVAL                         R9 0
       88 GETTABLEKS                       R9 R9 K5 ["useMemo"]
       90 NEWCLOSURE                       R10 P2
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R3
       93 CAPTURE                          UPVAL U4
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R7
       96 NEWTABLE                         R11 0 4
       98 MOVE                             R12 R4
       99 MOVE                             R13 R3
      100 GETTABLEKS                       R14 R0 K15 ["pinDataType"]
      102 MOVE                             R15 R7
      103 SETLIST                          R11 R12 4 [1]
      105 CALL                             R9 2 1
      106 GETUPVAL                         R10 0
      107 GETTABLEKS                       R10 R10 K16 ["createElement"]
      109 GETUPVAL                         R11 10
      110 DUPTABLE                         R12 K22 [{"ObserveScale", "ObserveStart", "ObserveFinish", "Color3", "ZIndex"}]
      111 SETTABLEKS                       R5 R12 K17 ["ObserveScale"]
      113 SETTABLEKS                       R6 R12 K18 ["ObserveStart"]
      115 SETTABLEKS                       R8 R12 K19 ["ObserveFinish"]
      117 SETTABLEKS                       R9 R12 K20 ["Color3"]
      119 GETUPVAL                         R13 11
      120 GETTABLEKS                       R13 R13 K23 ["NODEVIEW_ZINDEX"]
      122 GETTABLEKS                       R13 R13 K24 ["Curves"]
      124 SETTABLEKS                       R13 R12 K21 ["ZIndex"]
      126 CALL                             R10 2 -1
      127 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorConnectionContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["NodeView"]
       20 GETTABLEKS                       R3 R3 K10 ["CompositorCurve"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Components"]
       27 GETTABLEKS                       R4 R4 K9 ["NodeView"]
       29 GETTABLEKS                       R4 R4 K11 ["CompositorNodes"]
       31 GETTABLEKS                       R4 R4 K12 ["CompositorStateUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K13 ["Util"]
       38 GETTABLEKS                       R5 R5 K14 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K15 ["Parent"]
       45 GETTABLEKS                       R6 R6 K16 ["Foundation"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       52 GETTABLEKS                       R7 R7 K17 ["NativeGraphContext"]
       54 GETTABLEKS                       R7 R7 K18 ["NativeGraphUtils"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K19 ["NodeViewTypes"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K15 ["Parent"]
       66 GETTABLEKS                       R9 R9 K20 ["React"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K13 ["Util"]
       73 GETTABLEKS                       R10 R10 K21 ["Signals"]
       75 GETTABLEKS                       R10 R10 K22 ["Experimental"]
       77 GETTABLEKS                       R10 R10 K23 ["SignalExperimentalUtils"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K15 ["Parent"]
       84 GETTABLEKS                       R11 R11 K21 ["Signals"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K15 ["Parent"]
       91 GETTABLEKS                       R12 R12 K24 ["SignalsReact"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K6 ["Contexts"]
       98 GETTABLEKS                       R13 R13 K25 ["ViewportRectContext"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K26 ["Hooks"]
      105 GETTABLEKS                       R14 R14 K27 ["useFoundationStudioTheme"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K28 ["Flags"]
      112 GETTABLEKS                       R15 R15 K29 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      114 CALL                             R14 1 1
      115 DUPCLOSURE                       R15 K30 [PROTO_5]
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R4
      128 RETURN                           R15 1
