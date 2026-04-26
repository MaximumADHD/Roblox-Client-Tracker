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
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K3 ["inputPinNodeId"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+11]
       19 GETTABLEKS                       R2 R1 K4 ["sourcePinName"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R3 R4 K5 ["inputPinName"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["inputPinNodeId"]
        4 JUMPIFNOT                        R1 ; [+21]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["inputPinName"]
        8 JUMPIFNOT                        R1 ; [+17]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["getPinAnchorKey"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["inputPinNodeId"]
       15 LOADK                            R3 K3 ["Input"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K1 ["inputPinName"]
       19 CALL                             R1 3 1
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R2 R3 K4 ["observeCurvePreviewInfo"]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 MOVE                             R0 R2
       26 LOADNIL                          R1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K5 ["outputPinNodeId"]
       30 JUMPIFNOT                        R2 ; [+21]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R2 R3 K6 ["outputPinName"]
       34 JUMPIFNOT                        R2 ; [+17]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K2 ["getPinAnchorKey"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R3 R4 K5 ["outputPinNodeId"]
       41 LOADK                            R4 K7 ["Output"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R5 R6 K6 ["outputPinName"]
       45 CALL                             R2 3 1
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R3 R4 K8 ["observeAnchorPosition"]
       49 MOVE                             R4 R2
       50 CALL                             R3 1 1
       51 MOVE                             R1 R3
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R2 R3 K9 ["createComputed"]
       55 NEWCLOSURE                       R3 P0
       56 CAPTURE                          REF R0
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          REF R1
       59 CALL                             R2 1 -1
       60 CLOSEUPVALS                      R0
       61 RETURN                           R2 -1

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
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K3 ["outputPinNodeId"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+11]
       19 GETTABLEKS                       R2 R1 K4 ["sourcePinName"]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R3 R4 K5 ["outputPinName"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["outputPinNodeId"]
        4 JUMPIFNOT                        R1 ; [+21]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["outputPinName"]
        8 JUMPIFNOT                        R1 ; [+17]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["getPinAnchorKey"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["outputPinNodeId"]
       15 LOADK                            R3 K3 ["Output"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K1 ["outputPinName"]
       19 CALL                             R1 3 1
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R2 R3 K4 ["observeCurvePreviewInfo"]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 MOVE                             R0 R2
       26 LOADNIL                          R1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K5 ["inputPinNodeId"]
       30 JUMPIFNOT                        R2 ; [+21]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R2 R3 K6 ["inputPinName"]
       34 JUMPIFNOT                        R2 ; [+17]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K2 ["getPinAnchorKey"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R3 R4 K5 ["inputPinNodeId"]
       41 LOADK                            R4 K7 ["Input"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R5 R6 K6 ["inputPinName"]
       45 CALL                             R2 3 1
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R3 R4 K8 ["observeAnchorPosition"]
       49 MOVE                             R4 R2
       50 CALL                             R3 1 1
       51 MOVE                             R1 R3
       52 LOADNIL                          R2
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R3 R4 K5 ["inputPinNodeId"]
       56 JUMPIFNOT                        R3 ; [+8]
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R3 R4 K9 ["observeCollapsedPinPosition"]
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R4 R5 K5 ["inputPinNodeId"]
       63 CALL                             R3 1 1
       64 MOVE                             R2 R3
       65 GETUPVAL                         R4 3
       66 GETTABLEKS                       R3 R4 K10 ["createComputed"]
       68 NEWCLOSURE                       R4 P0
       69 CAPTURE                          REF R0
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          REF R1
       72 CAPTURE                          REF R2
       73 CALL                             R3 1 -1
       74 CLOSEUPVALS                      R0
       75 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["pinDataType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Parameter"] ; [+33]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K2 ["Enums"]
        9 GETTABLEKS                       R3 R4 K3 ["Theme"]
       11 GETTABLEKS                       R2 R3 K4 ["Dark"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+11]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R3 R4 K5 ["Color"]
       18 GETTABLEKS                       R2 R3 K6 ["Extended"]
       20 GETTABLEKS                       R1 R2 K7 ["Green"]
       22 GETTABLEKS                       R0 R1 K8 ["Green_800"]
       24 JUMP                             ; [+9]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R3 R4 K5 ["Color"]
       28 GETTABLEKS                       R2 R3 K6 ["Extended"]
       30 GETTABLEKS                       R1 R2 K7 ["Green"]
       32 GETTABLEKS                       R0 R1 K9 ["Green_600"]
       34 GETTABLEKS                       R1 R0 K10 ["Color3"]
       36 RETURN                           R1 1
       37 GETUPVAL                         R0 4
       38 JUMPIFNOT                        R0 ; [+12]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R4 R5 K5 ["Color"]
       42 GETTABLEKS                       R3 R4 K6 ["Extended"]
       44 GETTABLEKS                       R2 R3 K11 ["Gray"]
       46 GETTABLEKS                       R1 R2 K12 ["Gray_800"]
       48 GETTABLEKS                       R0 R1 K10 ["Color3"]
       50 RETURN                           R0 1
       51 GETUPVAL                         R5 3
       52 GETTABLEKS                       R4 R5 K5 ["Color"]
       54 GETTABLEKS                       R3 R4 K6 ["Extended"]
       56 GETTABLEKS                       R2 R3 K11 ["Gray"]
       58 GETTABLEKS                       R1 R2 K13 ["Gray_600"]
       60 GETTABLEKS                       R0 R1 K10 ["Color3"]
       62 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K2 ["Hooks"]
       19 GETTABLEKS                       R4 R5 K3 ["useTokens"]
       21 CALL                             R4 0 1
       22 GETTABLEKS                       R5 R2 K4 ["observeZoomRatio"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K5 ["useMemo"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U6
       32 NEWTABLE                         R8 0 5
       34 GETTABLEKS                       R9 R0 K6 ["outputPinNodeId"]
       36 GETTABLEKS                       R10 R0 K7 ["outputPinName"]
       38 GETTABLEKS                       R11 R0 K8 ["inputPinNodeId"]
       40 GETTABLEKS                       R12 R0 K9 ["inputPinName"]
       42 GETTABLEKS                       R13 R1 K10 ["observeAnchorPosition"]
       44 SETLIST                          R8 R9 5 [1]
       46 CALL                             R6 2 1
       47 GETUPVAL                         R8 7
       48 GETTABLEKS                       R7 R8 K11 ["useSignalState"]
       50 GETUPVAL                         R9 8
       51 GETTABLEKS                       R8 R9 K12 ["useObserveIsDisabled"]
       53 GETTABLEKS                       R10 R0 K6 ["outputPinNodeId"]
       55 ORK                              R9 R10 K13 [""]
       56 CALL                             R8 1 -1
       57 CALL                             R7 -1 1
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R8 R9 K5 ["useMemo"]
       61 NEWCLOSURE                       R9 P1
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U6
       66 NEWTABLE                         R10 0 5
       68 GETTABLEKS                       R11 R0 K6 ["outputPinNodeId"]
       70 GETTABLEKS                       R12 R0 K7 ["outputPinName"]
       72 GETTABLEKS                       R13 R0 K8 ["inputPinNodeId"]
       74 GETTABLEKS                       R14 R0 K9 ["inputPinName"]
       76 GETTABLEKS                       R15 R1 K10 ["observeAnchorPosition"]
       78 SETLIST                          R10 R11 5 [1]
       80 CALL                             R8 2 1
       81 GETUPVAL                         R10 0
       82 GETTABLEKS                       R9 R10 K5 ["useMemo"]
       84 NEWCLOSURE                       R10 P2
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R3
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R7
       90 NEWTABLE                         R11 0 4
       92 MOVE                             R12 R4
       93 MOVE                             R13 R3
       94 GETTABLEKS                       R14 R0 K14 ["pinDataType"]
       96 MOVE                             R15 R7
       97 SETLIST                          R11 R12 4 [1]
       99 CALL                             R9 2 1
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R10 R11 K15 ["createElement"]
      103 GETUPVAL                         R11 9
      104 DUPTABLE                         R12 K21 [{"ObserveScale", "ObserveStart", "ObserveFinish", "Color3", "ZIndex"}]
      105 SETTABLEKS                       R5 R12 K16 ["ObserveScale"]
      107 SETTABLEKS                       R6 R12 K17 ["ObserveStart"]
      109 SETTABLEKS                       R8 R12 K18 ["ObserveFinish"]
      111 SETTABLEKS                       R9 R12 K19 ["Color3"]
      113 GETUPVAL                         R15 10
      114 GETTABLEKS                       R14 R15 K22 ["NODEVIEW_ZINDEX"]
      116 GETTABLEKS                       R13 R14 K23 ["Curves"]
      118 SETTABLEKS                       R13 R12 K20 ["ZIndex"]
      120 CALL                             R10 2 -1
      121 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["CompositorConnectionContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["NodeView"]
       20 GETTABLEKS                       R3 R4 K10 ["CompositorCurve"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R7 R0 K8 ["Components"]
       27 GETTABLEKS                       R6 R7 K9 ["NodeView"]
       29 GETTABLEKS                       R5 R6 K11 ["CompositorNodes"]
       31 GETTABLEKS                       R4 R5 K12 ["CompositorStateUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R6 R0 K13 ["Util"]
       38 GETTABLEKS                       R5 R6 K14 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R7 R0 K15 ["Parent"]
       45 GETTABLEKS                       R6 R7 K16 ["Foundation"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       52 GETTABLEKS                       R8 R9 K17 ["NativeGraphContext"]
       54 GETTABLEKS                       R7 R8 K18 ["NativeGraphUtils"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K19 ["NodeViewTypes"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R10 R0 K15 ["Parent"]
       66 GETTABLEKS                       R9 R10 K20 ["React"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R13 R0 K13 ["Util"]
       73 GETTABLEKS                       R12 R13 K21 ["Signals"]
       75 GETTABLEKS                       R11 R12 K22 ["Experimental"]
       77 GETTABLEKS                       R10 R11 K23 ["SignalExperimentalUtils"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R12 R0 K15 ["Parent"]
       84 GETTABLEKS                       R11 R12 K21 ["Signals"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R13 R0 K15 ["Parent"]
       91 GETTABLEKS                       R12 R13 K24 ["SignalsReact"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R14 R0 K6 ["Contexts"]
       98 GETTABLEKS                       R13 R14 K25 ["ViewportRectContext"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R15 R0 K26 ["Hooks"]
      105 GETTABLEKS                       R14 R15 K27 ["useFoundationStudioTheme"]
      107 CALL                             R13 1 1
      108 DUPCLOSURE                       R14 K28 [PROTO_5]
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R4
      120 RETURN                           R14 1
