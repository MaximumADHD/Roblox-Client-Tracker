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
       37 GETUPVAL                         R5 3
       38 GETTABLEKS                       R4 R5 K5 ["Color"]
       40 GETTABLEKS                       R3 R4 K6 ["Extended"]
       42 GETTABLEKS                       R2 R3 K11 ["Gray"]
       44 GETTABLEKS                       R1 R2 K12 ["Gray_600"]
       46 GETTABLEKS                       R0 R1 K10 ["Color3"]
       48 RETURN                           R0 1

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
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R7 R8 K5 ["useMemo"]
       50 NEWCLOSURE                       R8 P1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U7
       55 NEWTABLE                         R9 0 5
       57 GETTABLEKS                       R10 R0 K6 ["outputPinNodeId"]
       59 GETTABLEKS                       R11 R0 K7 ["outputPinName"]
       61 GETTABLEKS                       R12 R0 K8 ["inputPinNodeId"]
       63 GETTABLEKS                       R13 R0 K9 ["inputPinName"]
       65 GETTABLEKS                       R14 R2 K10 ["observeAnchorPosition"]
       67 SETLIST                          R9 R10 5 [1]
       69 CALL                             R7 2 -1
       70 CALL                             R6 -1 1
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R7 R8 K5 ["useMemo"]
       74 NEWCLOSURE                       R8 P2
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R3
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          VAL R4
       79 NEWTABLE                         R9 0 3
       81 MOVE                             R10 R4
       82 MOVE                             R11 R3
       83 GETTABLEKS                       R12 R0 K11 ["pinDataType"]
       85 SETLIST                          R9 R10 3 [1]
       87 CALL                             R7 2 1
       88 GETUPVAL                         R9 1
       89 GETTABLEKS                       R8 R9 K12 ["useCallback"]
       91 NEWCLOSURE                       R9 P3
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R2
       94 NEWTABLE                         R10 0 1
       96 GETTABLEKS                       R11 R2 K13 ["onStartDrag"]
       98 SETLIST                          R10 R11 1 [1]
      100 CALL                             R8 2 1
      101 JUMPIFEQKNIL                     R5 ; [+3]
      103 JUMPIFNOTEQKNIL                  R6 ; [+3]
      105 LOADNIL                          R9
      106 RETURN                           R9 1
      107 GETUPVAL                         R10 1
      108 GETTABLEKS                       R9 R10 K14 ["createElement"]
      110 GETUPVAL                         R10 8
      111 DUPTABLE                         R11 K24 [{"Scale", "Start", "Finish", "Color3", "TangentSpacing", "ZIndex", "OnDragStart", "OnDragMoved", "OnDragEnded"}]
      112 SETTABLEKS                       R1 R11 K15 ["Scale"]
      114 SETTABLEKS                       R5 R11 K16 ["Start"]
      116 SETTABLEKS                       R6 R11 K17 ["Finish"]
      118 SETTABLEKS                       R7 R11 K18 ["Color3"]
      120 GETTABLEKS                       R15 R5 K26 ["X"]
      122 GETTABLEKS                       R16 R6 K26 ["X"]
      124 SUB                              R14 R15 R16
      125 FASTCALL1                        MATH_ABS R14 ; [+2]
      126 GETIMPORT                        R13 K29 [math.abs]
      128 CALL                             R13 1 1
      129 MULK                             R12 R13 K25 [0.5]
      130 SETTABLEKS                       R12 R11 K19 ["TangentSpacing"]
      132 GETUPVAL                         R14 9
      133 GETTABLEKS                       R13 R14 K30 ["NODEVIEW_ZINDEX"]
      135 GETTABLEKS                       R12 R13 K31 ["Curves"]
      137 SETTABLEKS                       R12 R11 K20 ["ZIndex"]
      139 SETTABLEKS                       R8 R11 K21 ["OnDragStart"]
      141 GETTABLEKS                       R12 R2 K32 ["onDragMoved"]
      143 SETTABLEKS                       R12 R11 K22 ["OnDragMoved"]
      145 GETTABLEKS                       R12 R2 K33 ["onDragEnded"]
      147 SETTABLEKS                       R12 R11 K23 ["OnDragEnded"]
      149 CALL                             R9 2 -1
      150 RETURN                           R9 -1

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
       25 GETTABLEKS                       R5 R0 K11 ["Util"]
       27 GETTABLEKS                       R4 R5 K12 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Parent"]
       34 GETTABLEKS                       R5 R6 K14 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       41 GETTABLEKS                       R7 R8 K15 ["NativeGraphContext"]
       43 GETTABLEKS                       R6 R7 K16 ["NativeGraphUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K17 ["NodeViewTypes"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K13 ["Parent"]
       55 GETTABLEKS                       R8 R9 K18 ["React"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K13 ["Parent"]
       62 GETTABLEKS                       R9 R10 K19 ["Signals"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K13 ["Parent"]
       69 GETTABLEKS                       R10 R11 K20 ["SignalsReact"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K21 ["Hooks"]
       76 GETTABLEKS                       R11 R12 K22 ["useFoundationStudioTheme"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K21 ["Hooks"]
       83 GETTABLEKS                       R12 R13 K23 ["useNodeScale"]
       85 CALL                             R11 1 1
       86 DUPCLOSURE                       R12 K24 [PROTO_6]
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R3
       97 RETURN                           R12 1
