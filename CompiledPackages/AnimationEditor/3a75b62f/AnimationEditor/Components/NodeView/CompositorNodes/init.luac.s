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
       19 NEWTABLE                         R4 0 0
       21 GETTABLEKS                       R5 R1 K3 ["graphPayloadMap"]
       23 JUMPIFNOT                        R5 ; [+29]
       24 GETTABLEKS                       R8 R1 K3 ["graphPayloadMap"]
       26 GETTABLEKS                       R5 R8 K4 ["lookup"]
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 LOADK                            R11 K5 ["CompositorNode_%*"]
       32 GETTABLEKS                       R13 R9 K6 ["id"]
       34 NAMECALL                         R11 R11 K7 ["format"]
       36 CALL                             R11 2 1
       37 MOVE                             R10 R11
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R11 R12 K8 ["createElement"]
       41 GETUPVAL                         R12 5
       42 DUPTABLE                         R13 K11 [{"node", "isShiftEnabled"}]
       43 SETTABLEKS                       R9 R13 K9 ["node"]
       45 GETTABLEKS                       R14 R3 K12 ["enabled"]
       47 SETTABLEKS                       R14 R13 K10 ["isShiftEnabled"]
       49 CALL                             R11 2 1
       50 SETTABLE                         R11 R4 R10
       51 FORGLOOP                         R5 2 ; [-21]
       53 GETUPVAL                         R6 6
       54 GETTABLEKS                       R5 R6 K13 ["useSignalState"]
       56 GETTABLEKS                       R6 R2 K14 ["observeGlobalCurvePreviewInfo"]
       58 CALL                             R5 1 1
       59 JUMPIFNOT                        R5 ; [+87]
       60 GETTABLEKS                       R6 R1 K3 ["graphPayloadMap"]
       62 JUMPIFNOT                        R6 ; [+84]
       63 GETTABLEKS                       R7 R5 K15 ["sourcePinNodeId"]
       65 JUMPIFNOT                        R7 ; [+8]
       66 GETTABLEKS                       R8 R1 K3 ["graphPayloadMap"]
       68 GETTABLEKS                       R7 R8 K4 ["lookup"]
       70 GETTABLEKS                       R8 R5 K15 ["sourcePinNodeId"]
       72 GETTABLE                         R6 R7 R8
       73 JUMP                             ; [+1]
       74 LOADNIL                          R6
       75 GETTABLEKS                       R8 R5 K16 ["targetPinNodeId"]
       77 JUMPIFNOT                        R8 ; [+8]
       78 GETTABLEKS                       R9 R1 K3 ["graphPayloadMap"]
       80 GETTABLEKS                       R8 R9 K4 ["lookup"]
       82 GETTABLEKS                       R9 R5 K16 ["targetPinNodeId"]
       84 GETTABLE                         R7 R8 R9
       85 JUMP                             ; [+1]
       86 LOADNIL                          R7
       87 LOADNIL                          R8
       88 LOADNIL                          R9
       89 LOADNIL                          R10
       90 LOADNIL                          R11
       91 GETTABLEKS                       R12 R5 K17 ["sourcePinSide"]
       93 JUMPIFNOTEQKS                    R12 K18 ["Output"] ; [+8]
       95 MOVE                             R8 R6
       96 GETTABLEKS                       R10 R5 K19 ["sourcePinName"]
       98 MOVE                             R9 R7
       99 GETTABLEKS                       R11 R5 K20 ["targetPinName"]
      101 JUMP                             ; [+15]
      102 GETTABLEKS                       R12 R5 K17 ["sourcePinSide"]
      104 JUMPIFNOTEQKS                    R12 K21 ["Input"] ; [+8]
      106 MOVE                             R9 R6
      107 GETTABLEKS                       R11 R5 K19 ["sourcePinName"]
      109 MOVE                             R8 R7
      110 GETTABLEKS                       R10 R5 K20 ["targetPinName"]
      112 JUMP                             ; [+4]
      113 GETIMPORT                        R12 K23 [error]
      115 LOADK                            R13 K24 ["Bad pin source state"]
      116 CALL                             R12 1 0
      117 GETUPVAL                         R13 0
      118 GETTABLEKS                       R12 R13 K8 ["createElement"]
      120 GETUPVAL                         R13 7
      121 DUPTABLE                         R14 K30 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "pinDataType"}]
      122 JUMPIFNOT                        R8 ; [+3]
      123 GETTABLEKS                       R15 R8 K6 ["id"]
      125 JUMP                             ; [+1]
      126 LOADNIL                          R15
      127 SETTABLEKS                       R15 R14 K25 ["outputPinNodeId"]
      129 SETTABLEKS                       R10 R14 K26 ["outputPinName"]
      131 JUMPIFNOT                        R9 ; [+3]
      132 GETTABLEKS                       R15 R9 K6 ["id"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R15
      136 SETTABLEKS                       R15 R14 K27 ["inputPinNodeId"]
      138 SETTABLEKS                       R11 R14 K28 ["inputPinName"]
      140 GETTABLEKS                       R15 R5 K31 ["sourcePinDataType"]
      142 SETTABLEKS                       R15 R14 K29 ["pinDataType"]
      144 CALL                             R12 2 1
      145 SETTABLEKS                       R12 R4 K32 ["CurvePreview"]
      147 GETUPVAL                         R7 0
      148 GETTABLEKS                       R6 R7 K33 ["useCallback"]
      150 NEWCLOSURE                       R7 P0
      151 CAPTURE                          VAL R3
      152 NEWTABLE                         R8 0 1
      154 GETTABLEKS                       R9 R3 K34 ["enable"]
      156 SETLIST                          R8 R9 1 [1]
      158 CALL                             R6 2 1
      159 GETUPVAL                         R8 0
      160 GETTABLEKS                       R7 R8 K33 ["useCallback"]
      162 NEWCLOSURE                       R8 P1
      163 CAPTURE                          VAL R3
      164 NEWTABLE                         R9 0 1
      166 GETTABLEKS                       R10 R3 K35 ["disable"]
      168 SETLIST                          R9 R10 1 [1]
      170 CALL                             R7 2 1
      171 GETUPVAL                         R9 0
      172 GETTABLEKS                       R8 R9 K8 ["createElement"]
      174 LOADK                            R9 K36 ["Frame"]
      175 NEWTABLE                         R10 8 0
      177 GETIMPORT                        R11 K39 [UDim2.fromScale]
      179 LOADN                            R12 1
      180 LOADN                            R13 1
      181 CALL                             R11 2 1
      182 SETTABLEKS                       R11 R10 K40 ["Size"]
      184 LOADN                            R11 1
      185 SETTABLEKS                       R11 R10 K41 ["BackgroundTransparency"]
      187 GETTABLEKS                       R11 R0 K42 ["ZIndex"]
      189 SETTABLEKS                       R11 R10 K42 ["ZIndex"]
      191 GETUPVAL                         R13 0
      192 GETTABLEKS                       R12 R13 K43 ["Event"]
      194 GETTABLEKS                       R11 R12 K44 ["InputBegan"]
      196 SETTABLE                         R6 R10 R11
      197 GETUPVAL                         R13 0
      198 GETTABLEKS                       R12 R13 K43 ["Event"]
      200 GETTABLEKS                       R11 R12 K45 ["InputEnded"]
      202 SETTABLE                         R7 R10 R11
      203 MOVE                             R11 R4
      204 CALL                             R8 3 -1
      205 RETURN                           R8 -1

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
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R6
       89 RETURN                           R10 1
