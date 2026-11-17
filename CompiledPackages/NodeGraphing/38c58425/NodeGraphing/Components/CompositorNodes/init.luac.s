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
       76 GETUPVAL                         R8 8
       77 CALL                             R8 0 1
       78 JUMPIFNOT                        R8 ; [+9]
       79 LOADB                            R8 0
       80 JUMPIFEQKNIL                     R7 ; [+7]
       82 GETTABLEKS                       R9 R7 K18 ["awaitingMenuChoice"]
       84 JUMPIFEQKB                       R9 TRUE ; [+2]
       86 LOADB                            R8 0 +1
       87 LOADB                            R8 1
       88 JUMPIFNOT                        R7 ; [+118]
       89 JUMPIFNOT                        R5 ; [+117]
       90 JUMPIF                           R8 ; [+116]
       91 GETTABLEKS                       R10 R7 K19 ["sourcePinNodeId"]
       93 JUMPIFNOT                        R10 ; [+4]
       94 GETTABLEKS                       R10 R7 K19 ["sourcePinNodeId"]
       96 GETTABLE                         R9 R5 R10
       97 JUMP                             ; [+1]
       98 LOADNIL                          R9
       99 GETTABLEKS                       R11 R7 K20 ["targetPinNodeId"]
      101 JUMPIFNOT                        R11 ; [+4]
      102 GETTABLEKS                       R11 R7 K20 ["targetPinNodeId"]
      104 GETTABLE                         R10 R5 R11
      105 JUMP                             ; [+1]
      106 LOADNIL                          R10
      107 LOADNIL                          R11
      108 LOADNIL                          R12
      109 LOADNIL                          R13
      110 LOADNIL                          R14
      111 LOADNIL                          R15
      112 GETTABLEKS                       R16 R7 K21 ["sourcePinSide"]
      114 JUMPIFNOTEQKS                    R16 K22 ["Output"] ; [+10]
      116 MOVE                             R11 R9
      117 GETTABLEKS                       R13 R7 K23 ["sourcePinName"]
      119 MOVE                             R12 R10
      120 GETTABLEKS                       R14 R7 K24 ["targetPinName"]
      122 GETTABLEKS                       R15 R7 K25 ["targetPinInputId"]
      124 JUMP                             ; [+17]
      125 GETTABLEKS                       R16 R7 K21 ["sourcePinSide"]
      127 JUMPIFNOTEQKS                    R16 K26 ["Input"] ; [+10]
      129 MOVE                             R12 R9
      130 GETTABLEKS                       R14 R7 K23 ["sourcePinName"]
      132 GETTABLEKS                       R15 R7 K27 ["sourcePinInputId"]
      134 MOVE                             R11 R10
      135 GETTABLEKS                       R13 R7 K24 ["targetPinName"]
      137 JUMP                             ; [+4]
      138 GETIMPORT                        R16 K29 [error]
      140 LOADK                            R17 K30 ["Bad pin source state"]
      141 CALL                             R16 1 0
      142 GETUPVAL                         R16 0
      143 GETTABLEKS                       R16 R16 K10 ["createElement"]
      145 LOADK                            R17 K31 ["Folder"]
      146 NEWTABLE                         R18 1 0
      148 GETUPVAL                         R19 0
      149 GETTABLEKS                       R19 R19 K32 ["Tag"]
      151 LOADK                            R20 K33 ["data-testid=CurvePreviewDebugMarker"]
      152 SETTABLE                         R20 R18 R19
      153 CALL                             R16 2 1
      154 SETTABLEKS                       R16 R6 K34 ["CurvePreviewDebugMarker"]
      156 GETUPVAL                         R16 0
      157 GETTABLEKS                       R16 R16 K10 ["createElement"]
      159 GETUPVAL                         R17 9
      160 DUPTABLE                         R18 K43 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "inputPinInputId", "inputPinDynamicIndex", "pinDataType", "isPreview"}]
      161 JUMPIFNOT                        R11 ; [+3]
      162 GETTABLEKS                       R19 R11 K8 ["id"]
      164 JUMP                             ; [+1]
      165 LOADNIL                          R19
      166 SETTABLEKS                       R19 R18 K35 ["outputPinNodeId"]
      168 SETTABLEKS                       R13 R18 K36 ["outputPinName"]
      170 JUMPIFNOT                        R12 ; [+3]
      171 GETTABLEKS                       R19 R12 K8 ["id"]
      173 JUMP                             ; [+1]
      174 LOADNIL                          R19
      175 SETTABLEKS                       R19 R18 K37 ["inputPinNodeId"]
      177 SETTABLEKS                       R14 R18 K38 ["inputPinName"]
      179 SETTABLEKS                       R15 R18 K39 ["inputPinInputId"]
      181 GETTABLEKS                       R20 R7 K21 ["sourcePinSide"]
      183 JUMPIFNOTEQKS                    R20 K26 ["Input"] ; [+4]
      185 GETTABLEKS                       R19 R7 K44 ["sourcePinDynamicIndex"]
      187 JUMP                             ; [+2]
      188 GETTABLEKS                       R19 R7 K45 ["targetPinDynamicIndex"]
      190 SETTABLEKS                       R19 R18 K40 ["inputPinDynamicIndex"]
      192 GETTABLEKS                       R19 R7 K46 ["sourcePinDataType"]
      194 SETTABLEKS                       R19 R18 K41 ["pinDataType"]
      196 GETUPVAL                         R20 10
      197 CALL                             R20 0 1
      198 JUMPIFNOT                        R20 ; [+2]
      199 LOADB                            R19 1
      200 JUMP                             ; [+1]
      201 LOADNIL                          R19
      202 SETTABLEKS                       R19 R18 K42 ["isPreview"]
      204 CALL                             R16 2 1
      205 SETTABLEKS                       R16 R6 K47 ["CurvePreview"]
      207 GETUPVAL                         R9 0
      208 GETTABLEKS                       R9 R9 K10 ["createElement"]
      210 LOADK                            R10 K48 ["Frame"]
      211 NEWTABLE                         R11 8 0
      213 GETIMPORT                        R12 K51 [UDim2.fromScale]
      215 LOADN                            R13 1
      216 LOADN                            R14 1
      217 CALL                             R12 2 1
      218 SETTABLEKS                       R12 R11 K52 ["Size"]
      220 LOADN                            R12 1
      221 SETTABLEKS                       R12 R11 K53 ["BackgroundTransparency"]
      223 GETTABLEKS                       R12 R0 K54 ["ZIndex"]
      225 SETTABLEKS                       R12 R11 K54 ["ZIndex"]
      227 GETUPVAL                         R12 0
      228 GETTABLEKS                       R12 R12 K55 ["Event"]
      230 GETTABLEKS                       R12 R12 K56 ["InputBegan"]
      232 GETTABLEKS                       R13 R3 K57 ["onInputBegan"]
      234 SETTABLE                         R13 R11 R12
      235 GETUPVAL                         R12 0
      236 GETTABLEKS                       R12 R12 K55 ["Event"]
      238 GETTABLEKS                       R12 R12 K58 ["InputEnded"]
      240 GETTABLEKS                       R13 R3 K59 ["onInputEnded"]
      242 SETTABLE                         R13 R11 R12
      243 MOVE                             R12 R6
      244 CALL                             R9 3 1
      245 RETURN                           R9 1

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
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R0 K20 ["Flags"]
       80 GETTABLEKS                       R12 R12 K22 ["getFFlagAnimGraphUI_FixUndoHistory"]
       82 CALL                             R11 1 1
       83 DUPCLOSURE                       R12 K23 [PROTO_0]
       84 CAPTURE                          VAL R1
       85 DUPCLOSURE                       R13 K24 [PROTO_1]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R10
       97 GETTABLEKS                       R14 R5 K25 ["memo"]
       99 MOVE                             R15 R13
      100 CALL                             R14 1 1
      101 MOVE                             R13 R14
      102 RETURN                           R13 1
