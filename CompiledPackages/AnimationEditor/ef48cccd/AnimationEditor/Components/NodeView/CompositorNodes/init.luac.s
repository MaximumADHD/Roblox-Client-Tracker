PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftShift]
        3 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+6]
        7 GETUPVAL                         R0 0
        8 GETIMPORT                        R2 K6 [Enum.KeyCode.RightShift]
       10 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
       12 CALL                             R0 2 1
       13 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        2 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftShift]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        8 GETIMPORT                        R3 K5 [Enum.KeyCode.RightShift]
       10 JUMPIFNOTEQ                      R2 R3 ; [+5]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K6 ["enable"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        2 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftShift]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        8 GETIMPORT                        R3 K5 [Enum.KeyCode.RightShift]
       10 JUMPIFNOTEQ                      R2 R3 ; [+5]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K6 ["disable"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_3:
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
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K2 ["useToggleState"]
       17 GETUPVAL                         R4 4
       18 CALL                             R3 1 1
       19 GETUPVAL                         R5 5
       20 GETTABLEKS                       R4 R5 K3 ["useSignalState"]
       22 GETTABLEKS                       R5 R1 K4 ["observeGraphNodeMap"]
       24 CALL                             R4 1 1
       25 NEWTABLE                         R5 0 0
       27 JUMPIFNOT                        R4 ; [+26]
       28 MOVE                             R6 R4
       29 LOADNIL                          R7
       30 LOADNIL                          R8
       31 FORGPREP                         R6
       32 LOADK                            R12 K5 ["CompositorNode_%*"]
       33 GETTABLEKS                       R14 R10 K6 ["id"]
       35 NAMECALL                         R12 R12 K7 ["format"]
       37 CALL                             R12 2 1
       38 MOVE                             R11 R12
       39 GETUPVAL                         R13 0
       40 GETTABLEKS                       R12 R13 K8 ["createElement"]
       42 GETUPVAL                         R13 6
       43 DUPTABLE                         R14 K11 [{"node", "isShiftEnabled"}]
       44 SETTABLEKS                       R10 R14 K9 ["node"]
       46 GETTABLEKS                       R15 R3 K12 ["enabled"]
       48 SETTABLEKS                       R15 R14 K10 ["isShiftEnabled"]
       50 CALL                             R12 2 1
       51 SETTABLE                         R12 R5 R11
       52 FORGLOOP                         R6 2 ; [-21]
       54 GETUPVAL                         R7 5
       55 GETTABLEKS                       R6 R7 K3 ["useSignalState"]
       57 GETTABLEKS                       R7 R2 K13 ["observeGlobalCurvePreviewInfo"]
       59 CALL                             R6 1 1
       60 JUMPIFNOT                        R6 ; [+77]
       61 JUMPIFNOT                        R4 ; [+76]
       62 GETTABLEKS                       R8 R6 K14 ["sourcePinNodeId"]
       64 JUMPIFNOT                        R8 ; [+4]
       65 GETTABLEKS                       R8 R6 K14 ["sourcePinNodeId"]
       67 GETTABLE                         R7 R4 R8
       68 JUMP                             ; [+1]
       69 LOADNIL                          R7
       70 GETTABLEKS                       R9 R6 K15 ["targetPinNodeId"]
       72 JUMPIFNOT                        R9 ; [+4]
       73 GETTABLEKS                       R9 R6 K15 ["targetPinNodeId"]
       75 GETTABLE                         R8 R4 R9
       76 JUMP                             ; [+1]
       77 LOADNIL                          R8
       78 LOADNIL                          R9
       79 LOADNIL                          R10
       80 LOADNIL                          R11
       81 LOADNIL                          R12
       82 GETTABLEKS                       R13 R6 K16 ["sourcePinSide"]
       84 JUMPIFNOTEQKS                    R13 K17 ["Output"] ; [+8]
       86 MOVE                             R9 R7
       87 GETTABLEKS                       R11 R6 K18 ["sourcePinName"]
       89 MOVE                             R10 R8
       90 GETTABLEKS                       R12 R6 K19 ["targetPinName"]
       92 JUMP                             ; [+15]
       93 GETTABLEKS                       R13 R6 K16 ["sourcePinSide"]
       95 JUMPIFNOTEQKS                    R13 K20 ["Input"] ; [+8]
       97 MOVE                             R10 R7
       98 GETTABLEKS                       R12 R6 K18 ["sourcePinName"]
      100 MOVE                             R9 R8
      101 GETTABLEKS                       R11 R6 K19 ["targetPinName"]
      103 JUMP                             ; [+4]
      104 GETIMPORT                        R13 K22 [error]
      106 LOADK                            R14 K23 ["Bad pin source state"]
      107 CALL                             R13 1 0
      108 GETUPVAL                         R14 0
      109 GETTABLEKS                       R13 R14 K8 ["createElement"]
      111 GETUPVAL                         R14 7
      112 DUPTABLE                         R15 K29 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "pinDataType"}]
      113 JUMPIFNOT                        R9 ; [+3]
      114 GETTABLEKS                       R16 R9 K6 ["id"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R16
      118 SETTABLEKS                       R16 R15 K24 ["outputPinNodeId"]
      120 SETTABLEKS                       R11 R15 K25 ["outputPinName"]
      122 JUMPIFNOT                        R10 ; [+3]
      123 GETTABLEKS                       R16 R10 K6 ["id"]
      125 JUMP                             ; [+1]
      126 LOADNIL                          R16
      127 SETTABLEKS                       R16 R15 K26 ["inputPinNodeId"]
      129 SETTABLEKS                       R12 R15 K27 ["inputPinName"]
      131 GETTABLEKS                       R16 R6 K30 ["sourcePinDataType"]
      133 SETTABLEKS                       R16 R15 K28 ["pinDataType"]
      135 CALL                             R13 2 1
      136 SETTABLEKS                       R13 R5 K31 ["CurvePreview"]
      138 GETUPVAL                         R8 0
      139 GETTABLEKS                       R7 R8 K32 ["useCallback"]
      141 NEWCLOSURE                       R8 P0
      142 CAPTURE                          VAL R3
      143 NEWTABLE                         R9 0 1
      145 GETTABLEKS                       R10 R3 K33 ["enable"]
      147 SETLIST                          R9 R10 1 [1]
      149 CALL                             R7 2 1
      150 GETUPVAL                         R9 0
      151 GETTABLEKS                       R8 R9 K32 ["useCallback"]
      153 NEWCLOSURE                       R9 P1
      154 CAPTURE                          VAL R3
      155 NEWTABLE                         R10 0 1
      157 GETTABLEKS                       R11 R3 K34 ["disable"]
      159 SETLIST                          R10 R11 1 [1]
      161 CALL                             R8 2 1
      162 GETUPVAL                         R10 0
      163 GETTABLEKS                       R9 R10 K8 ["createElement"]
      165 LOADK                            R10 K35 ["Frame"]
      166 NEWTABLE                         R11 8 0
      168 GETIMPORT                        R12 K38 [UDim2.fromScale]
      170 LOADN                            R13 1
      171 LOADN                            R14 1
      172 CALL                             R12 2 1
      173 SETTABLEKS                       R12 R11 K39 ["Size"]
      175 LOADN                            R12 1
      176 SETTABLEKS                       R12 R11 K40 ["BackgroundTransparency"]
      178 GETTABLEKS                       R12 R0 K41 ["ZIndex"]
      180 SETTABLEKS                       R12 R11 K41 ["ZIndex"]
      182 GETUPVAL                         R14 0
      183 GETTABLEKS                       R13 R14 K42 ["Event"]
      185 GETTABLEKS                       R12 R13 K43 ["InputBegan"]
      187 SETTABLE                         R7 R11 R12
      188 GETUPVAL                         R14 0
      189 GETTABLEKS                       R13 R14 K42 ["Event"]
      191 GETTABLEKS                       R12 R13 K44 ["InputEnded"]
      193 SETTABLE                         R8 R11 R12
      194 MOVE                             R12 R5
      195 CALL                             R9 3 1
      196 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["UserInputService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Contexts"]
       17 GETTABLEKS                       R3 R4 K11 ["CompositorConnectionContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Contexts"]
       24 GETTABLEKS                       R4 R5 K12 ["NativeGraphContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K13 ["Parent"]
       31 GETTABLEKS                       R5 R6 K14 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K13 ["Parent"]
       38 GETTABLEKS                       R6 R7 K15 ["ReactUtils"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R10 R0 K16 ["Components"]
       45 GETTABLEKS                       R9 R10 K17 ["NodeView"]
       47 GETTABLEKS                       R8 R9 K18 ["CompositorNodes"]
       49 GETTABLEKS                       R7 R8 K19 ["RenderedCompositorCurve"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R11 R0 K16 ["Components"]
       56 GETTABLEKS                       R10 R11 K17 ["NodeView"]
       58 GETTABLEKS                       R9 R10 K18 ["CompositorNodes"]
       60 GETTABLEKS                       R8 R9 K20 ["RenderedCompositorNode"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETIMPORT                        R14 K1 [script]
       67 GETTABLEKS                       R13 R14 K13 ["Parent"]
       69 GETTABLEKS                       R12 R13 K13 ["Parent"]
       71 GETTABLEKS                       R11 R12 K13 ["Parent"]
       73 GETTABLEKS                       R10 R11 K13 ["Parent"]
       75 GETTABLEKS                       R9 R10 K21 ["SignalsReact"]
       77 CALL                             R8 1 1
       78 DUPCLOSURE                       R9 K22 [PROTO_0]
       79 CAPTURE                          VAL R1
       80 DUPCLOSURE                       R10 K23 [PROTO_3]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R6
       89 RETURN                           R10 1
