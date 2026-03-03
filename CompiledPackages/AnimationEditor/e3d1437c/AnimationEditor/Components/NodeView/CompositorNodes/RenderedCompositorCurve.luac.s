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
       34 RETURN                           R2 1
       35 LOADNIL                          R2
       36 RETURN                           R2 1

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
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R2 R3 K9 ["createComputed"]
       55 NEWCLOSURE                       R3 P0
       56 CAPTURE                          REF R0
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          REF R1
       59 CALL                             R2 1 -1
       60 CLOSEUPVALS                      R0
       61 RETURN                           R2 -1

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
        0 JUMPIFNOTEQKS                    R1 K0 ["Input"] ; [+24]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["inputPinNodeId"]
        5 JUMPIFNOT                        R2 ; [+48]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["inputPinName"]
        9 JUMPIFNOT                        R2 ; [+44]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K3 ["onStartDrag"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K1 ["inputPinNodeId"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K2 ["inputPinName"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K4 ["pinDataType"]
       22 LOADK                            R6 K0 ["Input"]
       23 CALL                             R2 4 0
       24 RETURN                           R0 0
       25 JUMPIFNOTEQKS                    R1 K5 ["Output"] ; [+24]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K6 ["outputPinNodeId"]
       30 JUMPIFNOT                        R2 ; [+23]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R2 R3 K7 ["outputPinName"]
       34 JUMPIFNOT                        R2 ; [+19]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K3 ["onStartDrag"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R3 R4 K6 ["outputPinNodeId"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R4 R5 K7 ["outputPinName"]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R5 R6 K4 ["pinDataType"]
       47 LOADK                            R6 K5 ["Output"]
       48 CALL                             R2 4 0
       49 RETURN                           R0 0
       50 GETIMPORT                        R2 K9 [error]
       52 LOADK                            R3 K10 ["Bad pinSide"]
       53 CALL                             R2 1 0
       54 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 CALL                             R3 0 1
       11 GETUPVAL                         R6 4
       12 GETTABLEKS                       R5 R6 K2 ["Hooks"]
       14 GETTABLEKS                       R4 R5 K3 ["useTokens"]
       16 CALL                             R4 0 1
       17 GETUPVAL                         R6 5
       18 GETTABLEKS                       R5 R6 K4 ["useSignalState"]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K5 ["useMemo"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U7
       28 NEWTABLE                         R8 0 5
       30 GETTABLEKS                       R9 R0 K6 ["outputPinNodeId"]
       32 GETTABLEKS                       R10 R0 K7 ["outputPinName"]
       34 GETTABLEKS                       R11 R0 K8 ["inputPinNodeId"]
       36 GETTABLEKS                       R12 R0 K9 ["inputPinName"]
       38 GETTABLEKS                       R13 R2 K10 ["observeAnchorPosition"]
       40 SETLIST                          R8 R9 5 [1]
       42 CALL                             R6 2 -1
       43 CALL                             R5 -1 1
       44 GETUPVAL                         R7 5
       45 GETTABLEKS                       R6 R7 K4 ["useSignalState"]
       47 GETUPVAL                         R8 8
       48 GETTABLEKS                       R7 R8 K11 ["useObserveIsDisabled"]
       50 GETTABLEKS                       R9 R0 K6 ["outputPinNodeId"]
       52 ORK                              R8 R9 K12 [""]
       53 CALL                             R7 1 -1
       54 CALL                             R6 -1 1
       55 GETUPVAL                         R8 5
       56 GETTABLEKS                       R7 R8 K4 ["useSignalState"]
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R8 R9 K5 ["useMemo"]
       61 NEWCLOSURE                       R9 P1
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U7
       66 NEWTABLE                         R10 0 5
       68 GETTABLEKS                       R11 R0 K6 ["outputPinNodeId"]
       70 GETTABLEKS                       R12 R0 K7 ["outputPinName"]
       72 GETTABLEKS                       R13 R0 K8 ["inputPinNodeId"]
       74 GETTABLEKS                       R14 R0 K9 ["inputPinName"]
       76 GETTABLEKS                       R15 R2 K10 ["observeAnchorPosition"]
       78 SETLIST                          R10 R11 5 [1]
       80 CALL                             R8 2 -1
       81 CALL                             R7 -1 1
       82 GETUPVAL                         R9 1
       83 GETTABLEKS                       R8 R9 K5 ["useMemo"]
       85 NEWCLOSURE                       R9 P2
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R3
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R6
       91 NEWTABLE                         R10 0 4
       93 MOVE                             R11 R4
       94 MOVE                             R12 R3
       95 GETTABLEKS                       R13 R0 K13 ["pinDataType"]
       97 MOVE                             R14 R6
       98 SETLIST                          R10 R11 4 [1]
      100 CALL                             R8 2 1
      101 GETUPVAL                         R10 1
      102 GETTABLEKS                       R9 R10 K14 ["useCallback"]
      104 NEWCLOSURE                       R10 P3
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R2
      107 NEWTABLE                         R11 0 1
      109 GETTABLEKS                       R12 R2 K15 ["onStartDrag"]
      111 SETLIST                          R11 R12 1 [1]
      113 CALL                             R9 2 1
      114 JUMPIFEQKNIL                     R5 ; [+3]
      116 JUMPIFNOTEQKNIL                  R7 ; [+3]
      118 LOADNIL                          R10
      119 RETURN                           R10 1
      120 GETUPVAL                         R11 1
      121 GETTABLEKS                       R10 R11 K16 ["createElement"]
      123 GETUPVAL                         R11 9
      124 DUPTABLE                         R12 K26 [{"Scale", "Start", "Finish", "Color3", "TangentSpacing", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
      125 SETTABLEKS                       R1 R12 K17 ["Scale"]
      127 SETTABLEKS                       R5 R12 K18 ["Start"]
      129 SETTABLEKS                       R7 R12 K19 ["Finish"]
      131 SETTABLEKS                       R8 R12 K20 ["Color3"]
      133 GETTABLEKS                       R16 R5 K28 ["X"]
      135 GETTABLEKS                       R17 R7 K28 ["X"]
      137 SUB                              R15 R16 R17
      138 FASTCALL1                        MATH_ABS R15 ; [+2]
      139 GETIMPORT                        R14 K31 [math.abs]
      141 CALL                             R14 1 1
      142 MULK                             R13 R14 K27 [0.5]
      143 SETTABLEKS                       R13 R12 K21 ["TangentSpacing"]
      145 GETUPVAL                         R15 10
      146 GETTABLEKS                       R14 R15 K32 ["NODEVIEW_ZINDEX"]
      148 GETTABLEKS                       R13 R14 K33 ["Curves"]
      150 SETTABLEKS                       R13 R12 K22 ["ZIndex"]
      152 SETTABLEKS                       R9 R12 K23 ["OnDragStart"]
      154 GETTABLEKS                       R13 R2 K34 ["onDragMoved"]
      156 SETTABLEKS                       R13 R12 K24 ["OnDragMoved"]
      158 GETTABLEKS                       R13 R2 K35 ["onDragEnded"]
      160 SETTABLEKS                       R13 R12 K25 ["OnDragEnded"]
      162 CALL                             R10 2 -1
      163 RETURN                           R10 -1

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
       71 GETTABLEKS                       R11 R0 K15 ["Parent"]
       73 GETTABLEKS                       R10 R11 K21 ["Signals"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R12 R0 K15 ["Parent"]
       80 GETTABLEKS                       R11 R12 K22 ["SignalsReact"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       87 GETTABLEKS                       R12 R13 K24 ["useFoundationStudioTheme"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R14 R0 K23 ["Hooks"]
       94 GETTABLEKS                       R13 R14 K25 ["useNodeScale"]
       96 CALL                             R12 1 1
       97 DUPCLOSURE                       R13 K26 [PROTO_6]
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R4
      109 RETURN                           R13 1
