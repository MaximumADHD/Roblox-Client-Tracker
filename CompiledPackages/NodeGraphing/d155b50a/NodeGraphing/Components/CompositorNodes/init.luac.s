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
       22 GETTABLEKS                       R4 R4 K2 ["useToggleState"]
       24 GETUPVAL                         R5 5
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 6
       27 GETTABLEKS                       R5 R5 K3 ["useSignalState"]
       29 GETTABLEKS                       R6 R1 K4 ["nodePayloadDispatcher"]
       31 GETTABLEKS                       R6 R6 K5 ["observeMap"]
       33 CALL                             R5 1 1
       34 NEWTABLE                         R6 0 0
       36 JUMPIFNOT                        R5 ; [+26]
       37 MOVE                             R7 R5
       38 LOADNIL                          R8
       39 LOADNIL                          R9
       40 FORGPREP                         R7
       41 LOADK                            R13 K6 ["CompositorNode_%*"]
       42 GETTABLEKS                       R15 R11 K7 ["id"]
       44 NAMECALL                         R13 R13 K8 ["format"]
       46 CALL                             R13 2 1
       47 MOVE                             R12 R13
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R13 R13 K9 ["createElement"]
       51 GETUPVAL                         R14 7
       52 DUPTABLE                         R15 K12 [{"node", "isShiftEnabled"}]
       53 SETTABLEKS                       R11 R15 K10 ["node"]
       55 GETTABLEKS                       R16 R4 K13 ["enabled"]
       57 SETTABLEKS                       R16 R15 K11 ["isShiftEnabled"]
       59 CALL                             R13 2 1
       60 SETTABLE                         R13 R6 R12
       61 FORGLOOP                         R7 2 ; [-21]
       63 GETUPVAL                         R7 6
       64 GETTABLEKS                       R7 R7 K3 ["useSignalState"]
       66 GETTABLEKS                       R8 R2 K14 ["observeGlobalCurvePreviewInfo"]
       68 CALL                             R7 1 1
       69 JUMPIFNOT                        R7 ; [+93]
       70 JUMPIFNOT                        R5 ; [+92]
       71 GETTABLEKS                       R9 R7 K15 ["sourcePinNodeId"]
       73 JUMPIFNOT                        R9 ; [+4]
       74 GETTABLEKS                       R9 R7 K15 ["sourcePinNodeId"]
       76 GETTABLE                         R8 R5 R9
       77 JUMP                             ; [+1]
       78 LOADNIL                          R8
       79 GETTABLEKS                       R10 R7 K16 ["targetPinNodeId"]
       81 JUMPIFNOT                        R10 ; [+4]
       82 GETTABLEKS                       R10 R7 K16 ["targetPinNodeId"]
       84 GETTABLE                         R9 R5 R10
       85 JUMP                             ; [+1]
       86 LOADNIL                          R9
       87 LOADNIL                          R10
       88 LOADNIL                          R11
       89 LOADNIL                          R12
       90 LOADNIL                          R13
       91 GETTABLEKS                       R14 R7 K17 ["sourcePinSide"]
       93 JUMPIFNOTEQKS                    R14 K18 ["Output"] ; [+8]
       95 MOVE                             R10 R8
       96 GETTABLEKS                       R12 R7 K19 ["sourcePinName"]
       98 MOVE                             R11 R9
       99 GETTABLEKS                       R13 R7 K20 ["targetPinName"]
      101 JUMP                             ; [+15]
      102 GETTABLEKS                       R14 R7 K17 ["sourcePinSide"]
      104 JUMPIFNOTEQKS                    R14 K21 ["Input"] ; [+8]
      106 MOVE                             R11 R8
      107 GETTABLEKS                       R13 R7 K19 ["sourcePinName"]
      109 MOVE                             R10 R9
      110 GETTABLEKS                       R12 R7 K20 ["targetPinName"]
      112 JUMP                             ; [+4]
      113 GETIMPORT                        R14 K23 [error]
      115 LOADK                            R15 K24 ["Bad pin source state"]
      116 CALL                             R14 1 0
      117 GETUPVAL                         R14 0
      118 GETTABLEKS                       R14 R14 K9 ["createElement"]
      120 GETUPVAL                         R15 8
      121 DUPTABLE                         R16 K31 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "inputPinDynamicIndex", "pinDataType"}]
      122 JUMPIFNOT                        R10 ; [+3]
      123 GETTABLEKS                       R17 R10 K7 ["id"]
      125 JUMP                             ; [+1]
      126 LOADNIL                          R17
      127 SETTABLEKS                       R17 R16 K25 ["outputPinNodeId"]
      129 SETTABLEKS                       R12 R16 K26 ["outputPinName"]
      131 JUMPIFNOT                        R11 ; [+3]
      132 GETTABLEKS                       R17 R11 K7 ["id"]
      134 JUMP                             ; [+1]
      135 LOADNIL                          R17
      136 SETTABLEKS                       R17 R16 K27 ["inputPinNodeId"]
      138 SETTABLEKS                       R13 R16 K28 ["inputPinName"]
      140 GETUPVAL                         R18 9
      141 CALL                             R18 0 1
      142 JUMPIFNOT                        R18 ; [+10]
      143 GETTABLEKS                       R18 R7 K17 ["sourcePinSide"]
      145 JUMPIFNOTEQKS                    R18 K21 ["Input"] ; [+4]
      147 GETTABLEKS                       R17 R7 K32 ["sourcePinDynamicIndex"]
      149 JUMP                             ; [+4]
      150 GETTABLEKS                       R17 R7 K33 ["targetPinDynamicIndex"]
      152 JUMP                             ; [+1]
      153 LOADNIL                          R17
      154 SETTABLEKS                       R17 R16 K29 ["inputPinDynamicIndex"]
      156 GETTABLEKS                       R17 R7 K34 ["sourcePinDataType"]
      158 SETTABLEKS                       R17 R16 K30 ["pinDataType"]
      160 CALL                             R14 2 1
      161 SETTABLEKS                       R14 R6 K35 ["CurvePreview"]
      163 GETUPVAL                         R8 0
      164 GETTABLEKS                       R8 R8 K9 ["createElement"]
      166 LOADK                            R9 K36 ["Frame"]
      167 NEWTABLE                         R10 8 0
      169 GETIMPORT                        R11 K39 [UDim2.fromScale]
      171 LOADN                            R12 1
      172 LOADN                            R13 1
      173 CALL                             R11 2 1
      174 SETTABLEKS                       R11 R10 K40 ["Size"]
      176 LOADN                            R11 1
      177 SETTABLEKS                       R11 R10 K41 ["BackgroundTransparency"]
      179 GETTABLEKS                       R11 R0 K42 ["ZIndex"]
      181 SETTABLEKS                       R11 R10 K42 ["ZIndex"]
      183 GETUPVAL                         R11 0
      184 GETTABLEKS                       R11 R11 K43 ["Event"]
      186 GETTABLEKS                       R11 R11 K44 ["InputBegan"]
      188 GETTABLEKS                       R12 R3 K45 ["onInputBegan"]
      190 SETTABLE                         R12 R10 R11
      191 GETUPVAL                         R11 0
      192 GETTABLEKS                       R11 R11 K43 ["Event"]
      194 GETTABLEKS                       R11 R11 K46 ["InputEnded"]
      196 GETTABLEKS                       R12 R3 K47 ["onInputEnded"]
      198 SETTABLE                         R12 R10 R11
      199 MOVE                             R11 R6
      200 CALL                             R8 3 1
      201 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["UserInputService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["CompositorConnectionContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Components"]
       24 GETTABLEKS                       R4 R4 K12 ["GraphContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Components"]
       31 GETTABLEKS                       R5 R5 K13 ["ModifierKeysContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K14 ["Parent"]
       38 GETTABLEKS                       R6 R6 K15 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K14 ["Parent"]
       45 GETTABLEKS                       R7 R7 K16 ["ReactUtils"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETIMPORT                        R8 K1 [script]
       52 GETTABLEKS                       R8 R8 K17 ["RenderedCompositorCurve"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETIMPORT                        R9 K1 [script]
       59 GETTABLEKS                       R9 R9 K18 ["RenderedCompositorNode"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R0 K14 ["Parent"]
       66 GETTABLEKS                       R10 R10 K19 ["SignalsReact"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R0 K20 ["Flags"]
       73 GETTABLEKS                       R11 R11 K21 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       75 CALL                             R10 1 1
       76 DUPCLOSURE                       R11 K22 [PROTO_0]
       77 CAPTURE                          VAL R1
       78 DUPCLOSURE                       R12 K23 [PROTO_1]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R10
       89 RETURN                           R12 1
