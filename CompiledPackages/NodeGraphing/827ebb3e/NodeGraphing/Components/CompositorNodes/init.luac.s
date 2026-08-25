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
       36 JUMPIFNOT                        R5 ; [+39]
       37 MOVE                             R7 R5
       38 LOADNIL                          R8
       39 LOADNIL                          R9
       40 FORGPREP                         R7
       41 GETTABLEKS                       R12 R11 K6 ["renderInPaneOnly"]
       43 JUMPIF                           R12 ; [+30]
       44 LOADK                            R13 K7 ["CompositorNode_%*"]
       45 GETTABLEKS                       R15 R11 K8 ["id"]
       47 NAMECALL                         R13 R13 K9 ["format"]
       49 CALL                             R13 2 1
       50 MOVE                             R12 R13
       51 GETUPVAL                         R13 0
       52 GETTABLEKS                       R13 R13 K10 ["createElement"]
       54 GETUPVAL                         R14 7
       55 DUPTABLE                         R15 K14 [{"node", "isShiftEnabled", "canDrag"}]
       56 SETTABLEKS                       R11 R15 K11 ["node"]
       58 GETTABLEKS                       R16 R4 K15 ["enabled"]
       60 SETTABLEKS                       R16 R15 K12 ["isShiftEnabled"]
       62 GETUPVAL                         R17 8
       63 CALL                             R17 0 1
       64 JUMPIFNOT                        R17 ; [+4]
       65 GETTABLEKS                       R17 R1 K16 ["isReadonly"]
       67 NOT                              R16 R17
       68 JUMP                             ; [+1]
       69 LOADNIL                          R16
       70 SETTABLEKS                       R16 R15 K13 ["canDrag"]
       72 CALL                             R13 2 1
       73 SETTABLE                         R13 R6 R12
       74 FORGLOOP                         R7 2 ; [-34]
       76 GETUPVAL                         R7 6
       77 GETTABLEKS                       R7 R7 K3 ["useSignalState"]
       79 GETTABLEKS                       R8 R2 K17 ["observeGlobalCurvePreviewInfo"]
       81 CALL                             R7 1 1
       82 JUMPIFNOT                        R7 ; [+102]
       83 JUMPIFNOT                        R5 ; [+101]
       84 GETTABLEKS                       R9 R7 K18 ["sourcePinNodeId"]
       86 JUMPIFNOT                        R9 ; [+4]
       87 GETTABLEKS                       R9 R7 K18 ["sourcePinNodeId"]
       89 GETTABLE                         R8 R5 R9
       90 JUMP                             ; [+1]
       91 LOADNIL                          R8
       92 GETTABLEKS                       R10 R7 K19 ["targetPinNodeId"]
       94 JUMPIFNOT                        R10 ; [+4]
       95 GETTABLEKS                       R10 R7 K19 ["targetPinNodeId"]
       97 GETTABLE                         R9 R5 R10
       98 JUMP                             ; [+1]
       99 LOADNIL                          R9
      100 LOADNIL                          R10
      101 LOADNIL                          R11
      102 LOADNIL                          R12
      103 LOADNIL                          R13
      104 GETTABLEKS                       R14 R7 K20 ["sourcePinSide"]
      106 JUMPIFNOTEQKS                    R14 K21 ["Output"] ; [+8]
      108 MOVE                             R10 R8
      109 GETTABLEKS                       R12 R7 K22 ["sourcePinName"]
      111 MOVE                             R11 R9
      112 GETTABLEKS                       R13 R7 K23 ["targetPinName"]
      114 JUMP                             ; [+15]
      115 GETTABLEKS                       R14 R7 K20 ["sourcePinSide"]
      117 JUMPIFNOTEQKS                    R14 K24 ["Input"] ; [+8]
      119 MOVE                             R11 R8
      120 GETTABLEKS                       R13 R7 K22 ["sourcePinName"]
      122 MOVE                             R10 R9
      123 GETTABLEKS                       R12 R7 K23 ["targetPinName"]
      125 JUMP                             ; [+4]
      126 GETIMPORT                        R14 K26 [error]
      128 LOADK                            R15 K27 ["Bad pin source state"]
      129 CALL                             R14 1 0
      130 GETUPVAL                         R14 0
      131 GETTABLEKS                       R14 R14 K10 ["createElement"]
      133 LOADK                            R15 K28 ["Folder"]
      134 NEWTABLE                         R16 1 0
      136 GETUPVAL                         R17 0
      137 GETTABLEKS                       R17 R17 K29 ["Tag"]
      139 LOADK                            R18 K30 ["data-testid=CurvePreviewDebugMarker"]
      140 SETTABLE                         R18 R16 R17
      141 CALL                             R14 2 1
      142 SETTABLEKS                       R14 R6 K31 ["CurvePreviewDebugMarker"]
      144 GETUPVAL                         R14 0
      145 GETTABLEKS                       R14 R14 K10 ["createElement"]
      147 GETUPVAL                         R15 9
      148 DUPTABLE                         R16 K38 [{"outputPinNodeId", "outputPinName", "inputPinNodeId", "inputPinName", "inputPinDynamicIndex", "pinDataType"}]
      149 JUMPIFNOT                        R10 ; [+3]
      150 GETTABLEKS                       R17 R10 K8 ["id"]
      152 JUMP                             ; [+1]
      153 LOADNIL                          R17
      154 SETTABLEKS                       R17 R16 K32 ["outputPinNodeId"]
      156 SETTABLEKS                       R12 R16 K33 ["outputPinName"]
      158 JUMPIFNOT                        R11 ; [+3]
      159 GETTABLEKS                       R17 R11 K8 ["id"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R17
      163 SETTABLEKS                       R17 R16 K34 ["inputPinNodeId"]
      165 SETTABLEKS                       R13 R16 K35 ["inputPinName"]
      167 GETTABLEKS                       R18 R7 K20 ["sourcePinSide"]
      169 JUMPIFNOTEQKS                    R18 K24 ["Input"] ; [+4]
      171 GETTABLEKS                       R17 R7 K39 ["sourcePinDynamicIndex"]
      173 JUMP                             ; [+2]
      174 GETTABLEKS                       R17 R7 K40 ["targetPinDynamicIndex"]
      176 SETTABLEKS                       R17 R16 K36 ["inputPinDynamicIndex"]
      178 GETTABLEKS                       R17 R7 K41 ["sourcePinDataType"]
      180 SETTABLEKS                       R17 R16 K37 ["pinDataType"]
      182 CALL                             R14 2 1
      183 SETTABLEKS                       R14 R6 K42 ["CurvePreview"]
      185 GETUPVAL                         R8 0
      186 GETTABLEKS                       R8 R8 K10 ["createElement"]
      188 LOADK                            R9 K43 ["Frame"]
      189 NEWTABLE                         R10 8 0
      191 GETIMPORT                        R11 K46 [UDim2.fromScale]
      193 LOADN                            R12 1
      194 LOADN                            R13 1
      195 CALL                             R11 2 1
      196 SETTABLEKS                       R11 R10 K47 ["Size"]
      198 LOADN                            R11 1
      199 SETTABLEKS                       R11 R10 K48 ["BackgroundTransparency"]
      201 GETTABLEKS                       R11 R0 K49 ["ZIndex"]
      203 SETTABLEKS                       R11 R10 K49 ["ZIndex"]
      205 GETUPVAL                         R11 0
      206 GETTABLEKS                       R11 R11 K50 ["Event"]
      208 GETTABLEKS                       R11 R11 K51 ["InputBegan"]
      210 GETTABLEKS                       R12 R3 K52 ["onInputBegan"]
      212 SETTABLE                         R12 R10 R11
      213 GETUPVAL                         R11 0
      214 GETTABLEKS                       R11 R11 K50 ["Event"]
      216 GETTABLEKS                       R11 R11 K53 ["InputEnded"]
      218 GETTABLEKS                       R12 R3 K54 ["onInputEnded"]
      220 SETTABLE                         R12 R10 R11
      221 MOVE                             R11 R6
      222 CALL                             R8 3 1
      223 RETURN                           R8 1

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
