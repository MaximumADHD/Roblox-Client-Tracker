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
       34 NEWTABLE                         R6 1 0
       36 JUMPIFNOT                        R5 ; [+33]
       37 MOVE                             R7 R5
       38 LOADNIL                          R8
       39 LOADNIL                          R9
       40 FORGPREP                         R7
       41 GETTABLEKS                       R12 R11 K6 ["renderInPaneOnly"]
       43 JUMPIF                           R12 ; [+24]
       44 LOADK                            R12 K7 ["CompositorNode_%*"]
       45 GETTABLEKS                       R14 R11 K8 ["id"]
       47 NAMECALL                         R12 R12 K9 ["format"]
       49 CALL                             R12 2 1
       50 GETUPVAL                         R13 0
       51 GETTABLEKS                       R13 R13 K10 ["createElement"]
       53 GETUPVAL                         R14 7
       54 DUPTABLE                         R15 K14 [{"node", "isShiftEnabled", "canDrag"}]
       55 SETTABLEKS                       R11 R15 K11 ["node"]
       57 GETTABLEKS                       R16 R4 K15 ["enabled"]
       59 SETTABLEKS                       R16 R15 K12 ["isShiftEnabled"]
       61 GETTABLEKS                       R17 R1 K16 ["isReadonly"]
       63 NOT                              R16 R17
       64 SETTABLEKS                       R16 R15 K13 ["canDrag"]
       66 CALL                             R13 2 1
       67 SETTABLE                         R13 R6 R12
       68 FORGLOOP                         R7 2 ; [-28]
       70 GETUPVAL                         R7 6
       71 GETTABLEKS                       R7 R7 K3 ["useSignalState"]
       73 GETTABLEKS                       R8 R2 K17 ["observeGlobalCurvePreviewInfo"]
       75 CALL                             R7 1 1
       76 JUMPIFNOT                        R7 ; [+117]
       77 JUMPIFNOT                        R5 ; [+116]
       78 GETTABLEKS                       R9 R7 K18 ["sourcePinNodeId"]
       80 JUMPIFNOT                        R9 ; [+4]
       81 GETTABLEKS                       R9 R7 K18 ["sourcePinNodeId"]
       83 GETTABLE                         R8 R5 R9
       84 JUMP                             ; [+1]
       85 LOADNIL                          R8
       86 GETTABLEKS                       R10 R7 K19 ["targetPinNodeId"]
       88 JUMPIFNOT                        R10 ; [+4]
       89 GETTABLEKS                       R10 R7 K19 ["targetPinNodeId"]
       91 GETTABLE                         R9 R5 R10
       92 JUMP                             ; [+1]
       93 LOADNIL                          R9
       94 LOADNIL                          R10
       95 LOADNIL                          R11
       96 LOADNIL                          R12
       97 LOADNIL                          R13
       98 LOADNIL                          R14
       99 GETTABLEKS                       R15 R7 K20 ["sourcePinSide"]
      101 JUMPIFNOTEQKS                    R15 K21 ["Output"] ; [+10]
      103 MOVE                             R10 R8
      104 GETTABLEKS                       R12 R7 K22 ["sourcePinName"]
      106 MOVE                             R11 R9
      107 GETTABLEKS                       R13 R7 K23 ["targetPinName"]
      109 GETTABLEKS                       R14 R7 K24 ["targetPinInputId"]
      111 JUMP                             ; [+17]
      112 GETTABLEKS                       R15 R7 K20 ["sourcePinSide"]
      114 JUMPIFNOTEQKS                    R15 K25 ["Input"] ; [+10]
      116 MOVE                             R11 R8
      117 GETTABLEKS                       R13 R7 K22 ["sourcePinName"]
      119 GETTABLEKS                       R14 R7 K26 ["sourcePinInputId"]
      121 MOVE                             R10 R9
      122 GETTABLEKS                       R12 R7 K23 ["targetPinName"]
      124 JUMP                             ; [+4]
      125 GETIMPORT                        R15 K28 [error]
      127 LOADK                            R16 K29 ["Bad pin source state"]
      128 CALL                             R15 1 0
      129 GETUPVAL                         R15 0
      130 GETTABLEKS                       R15 R15 K10 ["createElement"]
      132 LOADK                            R16 K30 ["Folder"]
      133 NEWTABLE                         R17 1 0
      135 GETUPVAL                         R18 0
      136 GETTABLEKS                       R18 R18 K31 ["Tag"]
      138 LOADK                            R19 K32 ["data-testid=CurvePreviewDebugMarker"]
      139 SETTABLE                         R19 R17 R18
      140 CALL                             R15 2 1
      141 SETTABLEKS                       R15 R6 K33 ["CurvePreviewDebugMarker"]
      143 GETUPVAL                         R15 0
      144 GETTABLEKS                       R15 R15 K10 ["createElement"]
      146 GETUPVAL                         R16 8
      147 DUPTABLE                         R17 K42 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "inputPinInputId", "inputPinDynamicIndex", "pinDataType", "isPreview"}]
      148 JUMPIFNOT                        R10 ; [+3]
      149 GETTABLEKS                       R18 R10 K8 ["id"]
      151 JUMP                             ; [+1]
      152 LOADNIL                          R18
      153 SETTABLEKS                       R18 R17 K34 ["outputPinNodeId"]
      155 SETTABLEKS                       R12 R17 K35 ["outputPinName"]
      157 JUMPIFNOT                        R11 ; [+3]
      158 GETTABLEKS                       R18 R11 K8 ["id"]
      160 JUMP                             ; [+1]
      161 LOADNIL                          R18
      162 SETTABLEKS                       R18 R17 K36 ["inputPinNodeId"]
      164 SETTABLEKS                       R13 R17 K37 ["inputPinName"]
      166 SETTABLEKS                       R14 R17 K38 ["inputPinInputId"]
      168 GETTABLEKS                       R19 R7 K20 ["sourcePinSide"]
      170 JUMPIFNOTEQKS                    R19 K25 ["Input"] ; [+4]
      172 GETTABLEKS                       R18 R7 K43 ["sourcePinDynamicIndex"]
      174 JUMP                             ; [+2]
      175 GETTABLEKS                       R18 R7 K44 ["targetPinDynamicIndex"]
      177 SETTABLEKS                       R18 R17 K39 ["inputPinDynamicIndex"]
      179 GETTABLEKS                       R18 R7 K45 ["sourcePinDataType"]
      181 SETTABLEKS                       R18 R17 K40 ["pinDataType"]
      183 GETUPVAL                         R19 9
      184 CALL                             R19 0 1
      185 JUMPIFNOT                        R19 ; [+2]
      186 LOADB                            R18 1
      187 JUMP                             ; [+1]
      188 LOADNIL                          R18
      189 SETTABLEKS                       R18 R17 K41 ["isPreview"]
      191 CALL                             R15 2 1
      192 SETTABLEKS                       R15 R6 K46 ["CurvePreview"]
      194 GETUPVAL                         R8 0
      195 GETTABLEKS                       R8 R8 K10 ["createElement"]
      197 LOADK                            R9 K47 ["Frame"]
      198 NEWTABLE                         R10 8 0
      200 GETIMPORT                        R11 K50 [UDim2.fromScale]
      202 LOADN                            R12 1
      203 LOADN                            R13 1
      204 CALL                             R11 2 1
      205 SETTABLEKS                       R11 R10 K51 ["Size"]
      207 LOADN                            R11 1
      208 SETTABLEKS                       R11 R10 K52 ["BackgroundTransparency"]
      210 GETTABLEKS                       R11 R0 K53 ["ZIndex"]
      212 SETTABLEKS                       R11 R10 K53 ["ZIndex"]
      214 GETUPVAL                         R11 0
      215 GETTABLEKS                       R11 R11 K54 ["Event"]
      217 GETTABLEKS                       R11 R11 K55 ["InputBegan"]
      219 GETTABLEKS                       R12 R3 K56 ["onInputBegan"]
      221 SETTABLE                         R12 R10 R11
      222 GETUPVAL                         R11 0
      223 GETTABLEKS                       R11 R11 K54 ["Event"]
      225 GETTABLEKS                       R11 R11 K57 ["InputEnded"]
      227 GETTABLEKS                       R12 R3 K58 ["onInputEnded"]
      229 SETTABLE                         R12 R10 R11
      230 MOVE                             R11 R6
      231 CALL                             R8 3 1
      232 RETURN                           R8 1

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
       73 GETTABLEKS                       R11 R11 K21 ["getFFlagAnimGraphUIKeepParameterNoodlesOnDrag"]
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
       89 GETTABLEKS                       R13 R5 K24 ["memo"]
       91 MOVE                             R14 R12
       92 CALL                             R13 1 1
       93 MOVE                             R12 R13
       94 RETURN                           R12 1
