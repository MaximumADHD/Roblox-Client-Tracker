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
        4 JUMPIFNOT                        R1 ; [+32]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["inputPinName"]
        8 JUMPIFNOT                        R1 ; [+28]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["inputPinNodeId"]
       13 LOADK                            R3 K2 ["Input"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K1 ["inputPinName"]
       17 GETUPVAL                         R6 2
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+9]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K3 ["pinDataType"]
       23 JUMPIFNOTEQKS                    R6 K4 ["Parameter"] ; [+5]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K5 ["inputPinDynamicIndex"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R5
       30 CALL                             R1 4 1
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R2 R2 K6 ["observeCurvePreviewInfo"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 1
       36 MOVE                             R0 R2
       37 LOADNIL                          R1
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K7 ["outputPinNodeId"]
       41 JUMPIFNOT                        R2 ; [+19]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K8 ["outputPinName"]
       45 JUMPIFNOT                        R2 ; [+15]
       46 GETUPVAL                         R2 1
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K7 ["outputPinNodeId"]
       50 LOADK                            R4 K9 ["Output"]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K8 ["outputPinName"]
       54 CALL                             R2 3 1
       55 GETUPVAL                         R3 3
       56 GETTABLEKS                       R3 R3 K10 ["observeAnchorPosition"]
       58 MOVE                             R4 R2
       59 CALL                             R3 1 1
       60 MOVE                             R1 R3
       61 GETUPVAL                         R2 4
       62 GETTABLEKS                       R2 R2 K11 ["Experimental"]
       64 GETTABLEKS                       R2 R2 K12 ["createComputed"]
       66 NEWCLOSURE                       R3 P0
       67 CAPTURE                          REF R0
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          REF R1
       70 CALL                             R2 1 -1
       71 CLOSEUPVALS                      R0
       72 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["outputPinNodeId"]
        3 ORK                              R0 R1 K0 [""]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K2 ["observeIsDisabledByNodeId"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["observeIsDisabledByNodeId"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K3 ["of"]
       17 LOADB                            R2 0
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1

PROTO_3:
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

PROTO_4:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["outputPinNodeId"]
        4 JUMPIFNOT                        R1 ; [+19]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["outputPinName"]
        8 JUMPIFNOT                        R1 ; [+15]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["outputPinNodeId"]
       13 LOADK                            R3 K2 ["Output"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K1 ["outputPinName"]
       17 CALL                             R1 3 1
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K3 ["observeCurvePreviewInfo"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 1
       23 MOVE                             R0 R2
       24 LOADNIL                          R1
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K4 ["inputPinNodeId"]
       28 JUMPIFNOT                        R2 ; [+32]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K5 ["inputPinName"]
       32 JUMPIFNOT                        R2 ; [+28]
       33 GETUPVAL                         R2 1
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K4 ["inputPinNodeId"]
       37 LOADK                            R4 K6 ["Input"]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K5 ["inputPinName"]
       41 GETUPVAL                         R7 3
       42 CALL                             R7 0 1
       43 JUMPIFNOT                        R7 ; [+9]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K7 ["pinDataType"]
       47 JUMPIFNOTEQKS                    R7 K8 ["Parameter"] ; [+5]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K9 ["inputPinDynamicIndex"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R6
       54 CALL                             R2 4 1
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R3 R3 K10 ["observeAnchorPosition"]
       58 MOVE                             R4 R2
       59 CALL                             R3 1 1
       60 MOVE                             R1 R3
       61 LOADNIL                          R2
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K4 ["inputPinNodeId"]
       65 JUMPIFNOT                        R3 ; [+8]
       66 GETUPVAL                         R3 2
       67 GETTABLEKS                       R3 R3 K11 ["observeCollapsedPinPosition"]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K4 ["inputPinNodeId"]
       72 CALL                             R3 1 1
       73 MOVE                             R2 R3
       74 GETUPVAL                         R3 4
       75 GETTABLEKS                       R3 R3 K12 ["Experimental"]
       77 GETTABLEKS                       R3 R3 K13 ["createComputed"]
       79 NEWCLOSURE                       R4 P0
       80 CAPTURE                          REF R0
       81 CAPTURE                          UPVAL U0
       82 CAPTURE                          REF R1
       83 CAPTURE                          REF R2
       84 CALL                             R3 1 -1
       85 CLOSEUPVALS                      R0
       86 RETURN                           R3 -1

PROTO_5:
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
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 4
       22 CALL                             R4 0 1
       23 GETUPVAL                         R5 5
       24 GETTABLEKS                       R5 R5 K2 ["Hooks"]
       26 GETTABLEKS                       R5 R5 K3 ["useTokens"]
       28 CALL                             R5 0 1
       29 GETTABLEKS                       R6 R3 K4 ["observeZoomRatio"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U8
       40 NEWTABLE                         R9 0 6
       42 GETTABLEKS                       R10 R0 K6 ["outputPinNodeId"]
       44 GETTABLEKS                       R11 R0 K7 ["outputPinName"]
       46 GETTABLEKS                       R12 R0 K8 ["inputPinNodeId"]
       48 GETTABLEKS                       R13 R0 K9 ["inputPinName"]
       50 GETTABLEKS                       R14 R0 K10 ["inputPinDynamicIndex"]
       52 GETTABLEKS                       R15 R1 K11 ["observeAnchorPosition"]
       54 SETLIST                          R9 R10 6 [1]
       56 CALL                             R7 2 1
       57 GETUPVAL                         R8 9
       58 GETTABLEKS                       R8 R8 K12 ["useSignalState"]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R9 R9 K5 ["useMemo"]
       63 NEWCLOSURE                       R10 P1
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R2
       66 CAPTURE                          UPVAL U8
       67 NEWTABLE                         R11 0 2
       69 GETTABLEKS                       R12 R2 K13 ["observeIsDisabledByNodeId"]
       71 GETTABLEKS                       R13 R0 K6 ["outputPinNodeId"]
       73 SETLIST                          R11 R12 2 [1]
       75 CALL                             R9 2 -1
       76 CALL                             R8 -1 1
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K5 ["useMemo"]
       80 NEWCLOSURE                       R10 P2
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U6
       83 CAPTURE                          VAL R1
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          UPVAL U8
       86 NEWTABLE                         R11 0 6
       88 GETTABLEKS                       R12 R0 K6 ["outputPinNodeId"]
       90 GETTABLEKS                       R13 R0 K7 ["outputPinName"]
       92 GETTABLEKS                       R14 R0 K8 ["inputPinNodeId"]
       94 GETTABLEKS                       R15 R0 K9 ["inputPinName"]
       96 GETTABLEKS                       R16 R0 K10 ["inputPinDynamicIndex"]
       98 GETTABLEKS                       R17 R1 K11 ["observeAnchorPosition"]
      100 SETLIST                          R11 R12 6 [1]
      102 CALL                             R9 2 1
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R10 R10 K5 ["useMemo"]
      106 NEWCLOSURE                       R11 P3
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R4
      109 CAPTURE                          UPVAL U5
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R8
      112 NEWTABLE                         R12 0 4
      114 MOVE                             R13 R5
      115 MOVE                             R14 R4
      116 GETTABLEKS                       R15 R0 K14 ["pinDataType"]
      118 MOVE                             R16 R8
      119 SETLIST                          R12 R13 4 [1]
      121 CALL                             R10 2 1
      122 GETUPVAL                         R11 0
      123 GETTABLEKS                       R11 R11 K15 ["createElement"]
      125 GETUPVAL                         R12 10
      126 DUPTABLE                         R13 K21 [{"ObserveScale", "ObserveStart", "ObserveFinish", "Color3", "ZIndex"}]
      127 SETTABLEKS                       R6 R13 K16 ["ObserveScale"]
      129 SETTABLEKS                       R7 R13 K17 ["ObserveStart"]
      131 SETTABLEKS                       R9 R13 K18 ["ObserveFinish"]
      133 SETTABLEKS                       R10 R13 K19 ["Color3"]
      135 GETUPVAL                         R14 11
      136 GETTABLEKS                       R14 R14 K22 ["NODEVIEW_ZINDEX"]
      138 GETTABLEKS                       R14 R14 K23 ["Curves"]
      140 SETTABLEKS                       R14 R13 K20 ["ZIndex"]
      142 CALL                             R11 2 -1
      143 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CompositorConnectionContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["CompositorCurve"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Constants"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["GraphContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["NodeViewTypes"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K10 ["Parent"]
       49 GETTABLEKS                       R8 R8 K14 ["React"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K10 ["Parent"]
       56 GETTABLEKS                       R9 R9 K15 ["Signals"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K10 ["Parent"]
       63 GETTABLEKS                       R10 R10 K16 ["SignalsReact"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Parent"]
       70 GETTABLEKS                       R11 R11 K17 ["SignalsUtils"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETTABLEKS                       R12 R0 K6 ["Components"]
       77 GETTABLEKS                       R12 R12 K18 ["ViewportRectContext"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K5 [require]
       82 GETTABLEKS                       R13 R0 K19 ["Util"]
       84 GETTABLEKS                       R13 R13 K20 ["getPinAnchorKey"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K21 ["Hooks"]
       91 GETTABLEKS                       R14 R14 K22 ["useFoundationStudioTheme"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K5 [require]
       96 GETTABLEKS                       R15 R0 K23 ["Flags"]
       98 GETTABLEKS                       R15 R15 K24 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
      100 CALL                             R14 1 1
      101 DUPCLOSURE                       R15 K25 [PROTO_6]
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R3
      114 RETURN                           R15 1
