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
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R4 R5 K2 ["useToggleState"]
       24 GETUPVAL                         R5 5
       25 CALL                             R4 1 1
       26 GETUPVAL                         R6 6
       27 GETTABLEKS                       R5 R6 K3 ["useSignalState"]
       29 GETTABLEKS                       R6 R1 K4 ["observeGraphNodeMap"]
       31 CALL                             R5 1 1
       32 NEWTABLE                         R6 0 0
       34 JUMPIFNOT                        R5 ; [+31]
       35 MOVE                             R7 R5
       36 LOADNIL                          R8
       37 LOADNIL                          R9
       38 FORGPREP                         R7
       39 LOADK                            R13 K5 ["CompositorNode_%*"]
       40 GETTABLEKS                       R15 R11 K6 ["id"]
       42 NAMECALL                         R13 R13 K7 ["format"]
       44 CALL                             R13 2 1
       45 MOVE                             R12 R13
       46 GETUPVAL                         R14 0
       47 GETTABLEKS                       R13 R14 K8 ["createElement"]
       49 GETUPVAL                         R14 7
       50 DUPTABLE                         R15 K11 [{"node", "isShiftEnabled"}]
       51 SETTABLEKS                       R11 R15 K9 ["node"]
       53 GETUPVAL                         R17 8
       54 CALL                             R17 0 1
       55 JUMPIF                           R17 ; [+3]
       56 GETTABLEKS                       R16 R4 K12 ["enabled"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R16
       60 SETTABLEKS                       R16 R15 K10 ["isShiftEnabled"]
       62 CALL                             R13 2 1
       63 SETTABLE                         R13 R6 R12
       64 FORGLOOP                         R7 2 ; [-26]
       66 GETUPVAL                         R8 6
       67 GETTABLEKS                       R7 R8 K3 ["useSignalState"]
       69 GETTABLEKS                       R8 R2 K13 ["observeGlobalCurvePreviewInfo"]
       71 CALL                             R7 1 1
       72 JUMPIFNOT                        R7 ; [+77]
       73 JUMPIFNOT                        R5 ; [+76]
       74 GETTABLEKS                       R9 R7 K14 ["sourcePinNodeId"]
       76 JUMPIFNOT                        R9 ; [+4]
       77 GETTABLEKS                       R9 R7 K14 ["sourcePinNodeId"]
       79 GETTABLE                         R8 R5 R9
       80 JUMP                             ; [+1]
       81 LOADNIL                          R8
       82 GETTABLEKS                       R10 R7 K15 ["targetPinNodeId"]
       84 JUMPIFNOT                        R10 ; [+4]
       85 GETTABLEKS                       R10 R7 K15 ["targetPinNodeId"]
       87 GETTABLE                         R9 R5 R10
       88 JUMP                             ; [+1]
       89 LOADNIL                          R9
       90 LOADNIL                          R10
       91 LOADNIL                          R11
       92 LOADNIL                          R12
       93 LOADNIL                          R13
       94 GETTABLEKS                       R14 R7 K16 ["sourcePinSide"]
       96 JUMPIFNOTEQKS                    R14 K17 ["Output"] ; [+8]
       98 MOVE                             R10 R8
       99 GETTABLEKS                       R12 R7 K18 ["sourcePinName"]
      101 MOVE                             R11 R9
      102 GETTABLEKS                       R13 R7 K19 ["targetPinName"]
      104 JUMP                             ; [+15]
      105 GETTABLEKS                       R14 R7 K16 ["sourcePinSide"]
      107 JUMPIFNOTEQKS                    R14 K20 ["Input"] ; [+8]
      109 MOVE                             R11 R8
      110 GETTABLEKS                       R13 R7 K18 ["sourcePinName"]
      112 MOVE                             R10 R9
      113 GETTABLEKS                       R12 R7 K19 ["targetPinName"]
      115 JUMP                             ; [+4]
      116 GETIMPORT                        R14 K22 [error]
      118 LOADK                            R15 K23 ["Bad pin source state"]
      119 CALL                             R14 1 0
      120 GETUPVAL                         R15 0
      121 GETTABLEKS                       R14 R15 K8 ["createElement"]
      123 GETUPVAL                         R15 9
      124 DUPTABLE                         R16 K29 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "pinDataType"}]
      125 JUMPIFNOT                        R10 ; [+3]
      126 GETTABLEKS                       R17 R10 K6 ["id"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R17
      130 SETTABLEKS                       R17 R16 K24 ["outputPinNodeId"]
      132 SETTABLEKS                       R12 R16 K25 ["outputPinName"]
      134 JUMPIFNOT                        R11 ; [+3]
      135 GETTABLEKS                       R17 R11 K6 ["id"]
      137 JUMP                             ; [+1]
      138 LOADNIL                          R17
      139 SETTABLEKS                       R17 R16 K26 ["inputPinNodeId"]
      141 SETTABLEKS                       R13 R16 K27 ["inputPinName"]
      143 GETTABLEKS                       R17 R7 K30 ["sourcePinDataType"]
      145 SETTABLEKS                       R17 R16 K28 ["pinDataType"]
      147 CALL                             R14 2 1
      148 SETTABLEKS                       R14 R6 K31 ["CurvePreview"]
      150 GETUPVAL                         R9 0
      151 GETTABLEKS                       R8 R9 K32 ["useCallback"]
      153 NEWCLOSURE                       R9 P0
      154 CAPTURE                          VAL R4
      155 NEWTABLE                         R10 0 1
      157 GETTABLEKS                       R11 R4 K33 ["enable"]
      159 SETLIST                          R10 R11 1 [1]
      161 CALL                             R8 2 1
      162 GETUPVAL                         R10 0
      163 GETTABLEKS                       R9 R10 K32 ["useCallback"]
      165 NEWCLOSURE                       R10 P1
      166 CAPTURE                          VAL R4
      167 NEWTABLE                         R11 0 1
      169 GETTABLEKS                       R12 R4 K34 ["disable"]
      171 SETLIST                          R11 R12 1 [1]
      173 CALL                             R9 2 1
      174 GETUPVAL                         R11 0
      175 GETTABLEKS                       R10 R11 K8 ["createElement"]
      177 LOADK                            R11 K35 ["Frame"]
      178 NEWTABLE                         R12 8 0
      180 GETIMPORT                        R13 K38 [UDim2.fromScale]
      182 LOADN                            R14 1
      183 LOADN                            R15 1
      184 CALL                             R13 2 1
      185 SETTABLEKS                       R13 R12 K39 ["Size"]
      187 LOADN                            R13 1
      188 SETTABLEKS                       R13 R12 K40 ["BackgroundTransparency"]
      190 GETTABLEKS                       R13 R0 K41 ["ZIndex"]
      192 SETTABLEKS                       R13 R12 K41 ["ZIndex"]
      194 GETUPVAL                         R15 0
      195 GETTABLEKS                       R14 R15 K42 ["Event"]
      197 GETTABLEKS                       R13 R14 K43 ["InputBegan"]
      199 GETUPVAL                         R15 8
      200 CALL                             R15 0 1
      201 JUMPIFNOT                        R15 ; [+3]
      202 GETTABLEKS                       R14 R3 K44 ["onInputBegan"]
      204 JUMP                             ; [+1]
      205 MOVE                             R14 R8
      206 SETTABLE                         R14 R12 R13
      207 GETUPVAL                         R15 0
      208 GETTABLEKS                       R14 R15 K42 ["Event"]
      210 GETTABLEKS                       R13 R14 K45 ["InputEnded"]
      212 GETUPVAL                         R15 8
      213 CALL                             R15 0 1
      214 JUMPIFNOT                        R15 ; [+3]
      215 GETTABLEKS                       R14 R3 K46 ["onInputEnded"]
      217 JUMP                             ; [+1]
      218 MOVE                             R14 R9
      219 SETTABLE                         R14 R12 R13
      220 MOVE                             R13 R6
      221 CALL                             R10 3 1
      222 RETURN                           R10 1

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
       24 GETTABLEKS                       R4 R5 K12 ["ModifierKeysContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Contexts"]
       31 GETTABLEKS                       R5 R6 K13 ["NativeGraphContext"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K14 ["Parent"]
       38 GETTABLEKS                       R6 R7 K15 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R0 K14 ["Parent"]
       45 GETTABLEKS                       R7 R8 K16 ["ReactUtils"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R11 R0 K17 ["Components"]
       52 GETTABLEKS                       R10 R11 K18 ["NodeView"]
       54 GETTABLEKS                       R9 R10 K19 ["CompositorNodes"]
       56 GETTABLEKS                       R8 R9 K20 ["RenderedCompositorCurve"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R12 R0 K17 ["Components"]
       63 GETTABLEKS                       R11 R12 K18 ["NodeView"]
       65 GETTABLEKS                       R10 R11 K19 ["CompositorNodes"]
       67 GETTABLEKS                       R9 R10 K21 ["RenderedCompositorNode"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETIMPORT                        R15 K1 [script]
       74 GETTABLEKS                       R14 R15 K14 ["Parent"]
       76 GETTABLEKS                       R13 R14 K14 ["Parent"]
       78 GETTABLEKS                       R12 R13 K14 ["Parent"]
       80 GETTABLEKS                       R11 R12 K14 ["Parent"]
       82 GETTABLEKS                       R10 R11 K22 ["SignalsReact"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K9 [require]
       87 GETTABLEKS                       R12 R0 K23 ["Flags"]
       89 GETTABLEKS                       R11 R12 K24 ["getFFlagAnimGraphUIInputSelection"]
       91 CALL                             R10 1 1
       92 DUPCLOSURE                       R11 K25 [PROTO_0]
       93 CAPTURE                          VAL R1
       94 DUPCLOSURE                       R12 K26 [PROTO_3]
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R7
      105 RETURN                           R12 1
