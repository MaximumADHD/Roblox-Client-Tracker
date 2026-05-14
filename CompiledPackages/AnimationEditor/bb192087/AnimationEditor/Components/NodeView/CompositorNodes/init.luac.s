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
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K6 ["enable"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        2 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftShift]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        8 GETIMPORT                        R3 K5 [Enum.KeyCode.RightShift]
       10 JUMPIFNOTEQ                      R2 R3 ; [+5]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K6 ["disable"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_3:
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
       46 GETUPVAL                         R13 0
       47 GETTABLEKS                       R13 R13 K8 ["createElement"]
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
       66 GETUPVAL                         R7 6
       67 GETTABLEKS                       R7 R7 K3 ["useSignalState"]
       69 GETTABLEKS                       R8 R2 K13 ["observeGlobalCurvePreviewInfo"]
       71 CALL                             R7 1 1
       72 JUMPIFNOT                        R7 ; [+93]
       73 JUMPIFNOT                        R5 ; [+92]
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
      120 GETUPVAL                         R14 0
      121 GETTABLEKS                       R14 R14 K8 ["createElement"]
      123 GETUPVAL                         R15 9
      124 DUPTABLE                         R16 K30 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "inputPinDynamicIndex", "pinDataType"}]
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
      143 GETUPVAL                         R18 10
      144 CALL                             R18 0 1
      145 JUMPIFNOT                        R18 ; [+10]
      146 GETTABLEKS                       R18 R7 K16 ["sourcePinSide"]
      148 JUMPIFNOTEQKS                    R18 K20 ["Input"] ; [+4]
      150 GETTABLEKS                       R17 R7 K31 ["sourcePinDynamicIndex"]
      152 JUMP                             ; [+4]
      153 GETTABLEKS                       R17 R7 K32 ["targetPinDynamicIndex"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R17
      157 SETTABLEKS                       R17 R16 K28 ["inputPinDynamicIndex"]
      159 GETTABLEKS                       R17 R7 K33 ["sourcePinDataType"]
      161 SETTABLEKS                       R17 R16 K29 ["pinDataType"]
      163 CALL                             R14 2 1
      164 SETTABLEKS                       R14 R6 K34 ["CurvePreview"]
      166 GETUPVAL                         R8 0
      167 GETTABLEKS                       R8 R8 K35 ["useCallback"]
      169 NEWCLOSURE                       R9 P0
      170 CAPTURE                          VAL R4
      171 NEWTABLE                         R10 0 1
      173 GETTABLEKS                       R11 R4 K36 ["enable"]
      175 SETLIST                          R10 R11 1 [1]
      177 CALL                             R8 2 1
      178 GETUPVAL                         R9 0
      179 GETTABLEKS                       R9 R9 K35 ["useCallback"]
      181 NEWCLOSURE                       R10 P1
      182 CAPTURE                          VAL R4
      183 NEWTABLE                         R11 0 1
      185 GETTABLEKS                       R12 R4 K37 ["disable"]
      187 SETLIST                          R11 R12 1 [1]
      189 CALL                             R9 2 1
      190 GETUPVAL                         R10 0
      191 GETTABLEKS                       R10 R10 K8 ["createElement"]
      193 LOADK                            R11 K38 ["Frame"]
      194 NEWTABLE                         R12 8 0
      196 GETIMPORT                        R13 K41 [UDim2.fromScale]
      198 LOADN                            R14 1
      199 LOADN                            R15 1
      200 CALL                             R13 2 1
      201 SETTABLEKS                       R13 R12 K42 ["Size"]
      203 LOADN                            R13 1
      204 SETTABLEKS                       R13 R12 K43 ["BackgroundTransparency"]
      206 GETTABLEKS                       R13 R0 K44 ["ZIndex"]
      208 SETTABLEKS                       R13 R12 K44 ["ZIndex"]
      210 GETUPVAL                         R13 0
      211 GETTABLEKS                       R13 R13 K45 ["Event"]
      213 GETTABLEKS                       R13 R13 K46 ["InputBegan"]
      215 GETUPVAL                         R15 8
      216 CALL                             R15 0 1
      217 JUMPIFNOT                        R15 ; [+3]
      218 GETTABLEKS                       R14 R3 K47 ["onInputBegan"]
      220 JUMP                             ; [+1]
      221 MOVE                             R14 R8
      222 SETTABLE                         R14 R12 R13
      223 GETUPVAL                         R13 0
      224 GETTABLEKS                       R13 R13 K45 ["Event"]
      226 GETTABLEKS                       R13 R13 K48 ["InputEnded"]
      228 GETUPVAL                         R15 8
      229 CALL                             R15 0 1
      230 JUMPIFNOT                        R15 ; [+3]
      231 GETTABLEKS                       R14 R3 K49 ["onInputEnded"]
      233 JUMP                             ; [+1]
      234 MOVE                             R14 R9
      235 SETTABLE                         R14 R12 R13
      236 MOVE                             R13 R6
      237 CALL                             R10 3 1
      238 RETURN                           R10 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Contexts"]
       17 GETTABLEKS                       R3 R3 K11 ["CompositorConnectionContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Contexts"]
       24 GETTABLEKS                       R4 R4 K12 ["ModifierKeysContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Contexts"]
       31 GETTABLEKS                       R5 R5 K13 ["NativeGraphContext"]
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
       50 GETTABLEKS                       R8 R0 K17 ["Components"]
       52 GETTABLEKS                       R8 R8 K18 ["NodeView"]
       54 GETTABLEKS                       R8 R8 K19 ["CompositorNodes"]
       56 GETTABLEKS                       R8 R8 K20 ["RenderedCompositorCurve"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K17 ["Components"]
       63 GETTABLEKS                       R9 R9 K18 ["NodeView"]
       65 GETTABLEKS                       R9 R9 K19 ["CompositorNodes"]
       67 GETTABLEKS                       R9 R9 K21 ["RenderedCompositorNode"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETIMPORT                        R10 K1 [script]
       74 GETTABLEKS                       R10 R10 K14 ["Parent"]
       76 GETTABLEKS                       R10 R10 K14 ["Parent"]
       78 GETTABLEKS                       R10 R10 K14 ["Parent"]
       80 GETTABLEKS                       R10 R10 K14 ["Parent"]
       82 GETTABLEKS                       R10 R10 K22 ["SignalsReact"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K9 [require]
       87 GETTABLEKS                       R11 R0 K23 ["Flags"]
       89 GETTABLEKS                       R11 R11 K24 ["getFFlagAnimGraphUIInputSelection"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K9 [require]
       94 GETTABLEKS                       R12 R0 K23 ["Flags"]
       96 GETTABLEKS                       R12 R12 K25 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       98 CALL                             R11 1 1
       99 DUPCLOSURE                       R12 K26 [PROTO_0]
      100 CAPTURE                          VAL R1
      101 DUPCLOSURE                       R13 K27 [PROTO_3]
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R11
      113 RETURN                           R13 1
