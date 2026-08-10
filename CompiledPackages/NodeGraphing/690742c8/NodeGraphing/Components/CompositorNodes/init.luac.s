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
       36 JUMPIFNOT                        R5 ; [+36]
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
       52 DUPTABLE                         R15 K13 [{"node", "isShiftEnabled", "canDrag"}]
       53 SETTABLEKS                       R11 R15 K10 ["node"]
       55 GETTABLEKS                       R16 R4 K14 ["enabled"]
       57 SETTABLEKS                       R16 R15 K11 ["isShiftEnabled"]
       59 GETUPVAL                         R17 8
       60 CALL                             R17 0 1
       61 JUMPIFNOT                        R17 ; [+4]
       62 GETTABLEKS                       R17 R1 K15 ["isReadonly"]
       64 NOT                              R16 R17
       65 JUMP                             ; [+1]
       66 LOADNIL                          R16
       67 SETTABLEKS                       R16 R15 K12 ["canDrag"]
       69 CALL                             R13 2 1
       70 SETTABLE                         R13 R6 R12
       71 FORGLOOP                         R7 2 ; [-31]
       73 GETUPVAL                         R7 6
       74 GETTABLEKS                       R7 R7 K3 ["useSignalState"]
       76 GETTABLEKS                       R8 R2 K16 ["observeGlobalCurvePreviewInfo"]
       78 CALL                             R7 1 1
       79 JUMPIFNOT                        R7 ; [+102]
       80 JUMPIFNOT                        R5 ; [+101]
       81 GETTABLEKS                       R9 R7 K17 ["sourcePinNodeId"]
       83 JUMPIFNOT                        R9 ; [+4]
       84 GETTABLEKS                       R9 R7 K17 ["sourcePinNodeId"]
       86 GETTABLE                         R8 R5 R9
       87 JUMP                             ; [+1]
       88 LOADNIL                          R8
       89 GETTABLEKS                       R10 R7 K18 ["targetPinNodeId"]
       91 JUMPIFNOT                        R10 ; [+4]
       92 GETTABLEKS                       R10 R7 K18 ["targetPinNodeId"]
       94 GETTABLE                         R9 R5 R10
       95 JUMP                             ; [+1]
       96 LOADNIL                          R9
       97 LOADNIL                          R10
       98 LOADNIL                          R11
       99 LOADNIL                          R12
      100 LOADNIL                          R13
      101 GETTABLEKS                       R14 R7 K19 ["sourcePinSide"]
      103 JUMPIFNOTEQKS                    R14 K20 ["Output"] ; [+8]
      105 MOVE                             R10 R8
      106 GETTABLEKS                       R12 R7 K21 ["sourcePinName"]
      108 MOVE                             R11 R9
      109 GETTABLEKS                       R13 R7 K22 ["targetPinName"]
      111 JUMP                             ; [+15]
      112 GETTABLEKS                       R14 R7 K19 ["sourcePinSide"]
      114 JUMPIFNOTEQKS                    R14 K23 ["Input"] ; [+8]
      116 MOVE                             R11 R8
      117 GETTABLEKS                       R13 R7 K21 ["sourcePinName"]
      119 MOVE                             R10 R9
      120 GETTABLEKS                       R12 R7 K22 ["targetPinName"]
      122 JUMP                             ; [+4]
      123 GETIMPORT                        R14 K25 [error]
      125 LOADK                            R15 K26 ["Bad pin source state"]
      126 CALL                             R14 1 0
      127 GETUPVAL                         R14 0
      128 GETTABLEKS                       R14 R14 K9 ["createElement"]
      130 LOADK                            R15 K27 ["Folder"]
      131 NEWTABLE                         R16 1 0
      133 GETUPVAL                         R17 0
      134 GETTABLEKS                       R17 R17 K28 ["Tag"]
      136 LOADK                            R18 K29 ["data-testid=CurvePreviewDebugMarker"]
      137 SETTABLE                         R18 R16 R17
      138 CALL                             R14 2 1
      139 SETTABLEKS                       R14 R6 K30 ["CurvePreviewDebugMarker"]
      141 GETUPVAL                         R14 0
      142 GETTABLEKS                       R14 R14 K9 ["createElement"]
      144 GETUPVAL                         R15 9
      145 DUPTABLE                         R16 K37 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "inputPinDynamicIndex", "pinDataType"}]
      146 JUMPIFNOT                        R10 ; [+3]
      147 GETTABLEKS                       R17 R10 K7 ["id"]
      149 JUMP                             ; [+1]
      150 LOADNIL                          R17
      151 SETTABLEKS                       R17 R16 K31 ["outputPinNodeId"]
      153 SETTABLEKS                       R12 R16 K32 ["outputPinName"]
      155 JUMPIFNOT                        R11 ; [+3]
      156 GETTABLEKS                       R17 R11 K7 ["id"]
      158 JUMP                             ; [+1]
      159 LOADNIL                          R17
      160 SETTABLEKS                       R17 R16 K33 ["inputPinNodeId"]
      162 SETTABLEKS                       R13 R16 K34 ["inputPinName"]
      164 GETTABLEKS                       R18 R7 K19 ["sourcePinSide"]
      166 JUMPIFNOTEQKS                    R18 K23 ["Input"] ; [+4]
      168 GETTABLEKS                       R17 R7 K38 ["sourcePinDynamicIndex"]
      170 JUMP                             ; [+2]
      171 GETTABLEKS                       R17 R7 K39 ["targetPinDynamicIndex"]
      173 SETTABLEKS                       R17 R16 K35 ["inputPinDynamicIndex"]
      175 GETTABLEKS                       R17 R7 K40 ["sourcePinDataType"]
      177 SETTABLEKS                       R17 R16 K36 ["pinDataType"]
      179 CALL                             R14 2 1
      180 SETTABLEKS                       R14 R6 K41 ["CurvePreview"]
      182 GETUPVAL                         R8 0
      183 GETTABLEKS                       R8 R8 K9 ["createElement"]
      185 LOADK                            R9 K42 ["Frame"]
      186 NEWTABLE                         R10 8 0
      188 GETIMPORT                        R11 K45 [UDim2.fromScale]
      190 LOADN                            R12 1
      191 LOADN                            R13 1
      192 CALL                             R11 2 1
      193 SETTABLEKS                       R11 R10 K46 ["Size"]
      195 LOADN                            R11 1
      196 SETTABLEKS                       R11 R10 K47 ["BackgroundTransparency"]
      198 GETTABLEKS                       R11 R0 K48 ["ZIndex"]
      200 SETTABLEKS                       R11 R10 K48 ["ZIndex"]
      202 GETUPVAL                         R11 0
      203 GETTABLEKS                       R11 R11 K49 ["Event"]
      205 GETTABLEKS                       R11 R11 K50 ["InputBegan"]
      207 GETTABLEKS                       R12 R3 K51 ["onInputBegan"]
      209 SETTABLE                         R12 R10 R11
      210 GETUPVAL                         R11 0
      211 GETTABLEKS                       R11 R11 K49 ["Event"]
      213 GETTABLEKS                       R11 R11 K52 ["InputEnded"]
      215 GETTABLEKS                       R12 R3 K53 ["onInputEnded"]
      217 SETTABLE                         R12 R10 R11
      218 MOVE                             R11 R6
      219 CALL                             R8 3 1
      220 RETURN                           R8 1

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
       73 GETTABLEKS                       R11 R11 K21 ["getFFlagAnimGraphUI_RunTimeDebug"]
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
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R7
       89 GETTABLEKS                       R13 R5 K24 ["memo"]
       91 MOVE                             R14 R12
       92 CALL                             R13 1 1
       93 MOVE                             R12 R13
       94 RETURN                           R12 1
