PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+25]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+6]
        7 FASTCALL1                        MATH_RAD R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [math.rad]
       11 CALL                             R1 1 1
       12 MOVE                             R0 R1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K4 ["join"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K5 ["Input"]
       22 GETTABLEKS                       R3 R3 K6 ["Value"]
       24 DUPTABLE                         R4 K8 [{"X"}]
       25 SETTABLEKS                       R0 R4 K7 ["X"]
       27 CALL                             R2 2 -1
       28 CALL                             R1 -1 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+17]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["join"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["Input"]
       14 GETTABLEKS                       R3 R3 K3 ["Value"]
       16 DUPTABLE                         R4 K5 [{"Y"}]
       17 SETTABLEKS                       R0 R4 K4 ["Y"]
       19 CALL                             R2 2 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["formatDegrees"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["createNextOrder"]
       12 CALL                             R2 0 1
       13 GETTABLEKS                       R4 R0 K3 ["InputBuilderProps"]
       15 GETTABLEKS                       R4 R4 K4 ["InputMode"]
       17 GETIMPORT                        R5 K8 [Enum.AnimationNodeBlend2DInputMode.Polar]
       19 JUMPIFEQ                         R4 R5 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K0 ["useCallback"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U3
       30 NEWTABLE                         R6 0 3
       32 GETTABLEKS                       R7 R0 K9 ["OnChanged"]
       34 GETTABLEKS                       R8 R0 K10 ["Input"]
       36 MOVE                             R9 R3
       37 SETLIST                          R6 R7 3 [1]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K0 ["useCallback"]
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U3
       46 NEWTABLE                         R7 0 2
       48 GETTABLEKS                       R8 R0 K9 ["OnChanged"]
       50 GETTABLEKS                       R9 R0 K10 ["Input"]
       52 SETLIST                          R7 R8 2 [1]
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K11 ["createElement"]
       58 GETUPVAL                         R7 4
       59 GETTABLEKS                       R7 R7 K12 ["View"]
       61 DUPTABLE                         R8 K16 [{["tag"] = "row flex-x-fill align-y-center gap-small size-full-700 auto-y padding-x-small", ["LayoutOrder"]}]
       62 GETTABLEKS                       R9 R0 K15 ["LayoutOrder"]
       64 SETTABLEKS                       R9 R8 K15 ["LayoutOrder"]
       66 DUPTABLE                         R9 K21 [{"InputLabelWeight", "X", "Y", "PinChildren"}]
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K11 ["createElement"]
       70 GETUPVAL                         R11 5
       71 DUPTABLE                         R12 K28 [{"Name", "Label", "Weight", "LayoutOrder", "OnDelete", "IsHovered", "HasDuplicateName"}]
       72 GETTABLEKS                       R13 R0 K10 ["Input"]
       74 GETTABLEKS                       R13 R13 K22 ["Name"]
       76 SETTABLEKS                       R13 R12 K22 ["Name"]
       78 GETTABLEKS                       R13 R0 K10 ["Input"]
       80 GETTABLEKS                       R13 R13 K29 ["ConnectedNodeName"]
       82 SETTABLEKS                       R13 R12 K23 ["Label"]
       84 GETTABLEKS                       R13 R0 K10 ["Input"]
       86 GETTABLEKS                       R13 R13 K24 ["Weight"]
       88 SETTABLEKS                       R13 R12 K24 ["Weight"]
       90 GETUPVAL                         R14 6
       91 CALL                             R14 0 1
       92 JUMPIFNOT                        R14 ; [+3]
       93 MOVE                             R13 R2
       94 CALL                             R13 0 1
       95 JUMP                             ; [+1]
       96 LOADN                            R13 1
       97 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
       99 GETUPVAL                         R14 6
      100 CALL                             R14 0 1
      101 JUMPIFNOT                        R14 ; [+3]
      102 GETTABLEKS                       R13 R0 K25 ["OnDelete"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R13
      106 SETTABLEKS                       R13 R12 K25 ["OnDelete"]
      108 GETUPVAL                         R14 6
      109 CALL                             R14 0 1
      110 JUMPIFNOT                        R14 ; [+3]
      111 GETTABLEKS                       R13 R0 K26 ["IsHovered"]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R13
      115 SETTABLEKS                       R13 R12 K26 ["IsHovered"]
      117 GETTABLEKS                       R13 R0 K27 ["HasDuplicateName"]
      119 SETTABLEKS                       R13 R12 K27 ["HasDuplicateName"]
      121 CALL                             R10 2 1
      122 SETTABLEKS                       R10 R9 K17 ["InputLabelWeight"]
      124 GETUPVAL                         R10 0
      125 GETTABLEKS                       R10 R10 K11 ["createElement"]
      127 GETUPVAL                         R11 4
      128 GETTABLEKS                       R11 R11 K30 ["NumberInput"]
      130 DUPTABLE                         R12 K46 [{["size"], ["width"], ["label"] = "", ["value"], ["formatAsString"], ["step"] = 0.005, ["minimum"], ["maximum"], ["LayoutOrder"], ["precision"], ["onChanged"], ["controlsVariant"], ["isScrubbable"] = True}]
      131 GETUPVAL                         R13 4
      132 GETTABLEKS                       R13 R13 K47 ["Enums"]
      134 GETTABLEKS                       R13 R13 K48 ["InputSize"]
      136 GETTABLEKS                       R13 R13 K49 ["XSmall"]
      138 SETTABLEKS                       R13 R12 K31 ["size"]
      140 GETIMPORT                        R13 K52 [UDim.new]
      142 LOADN                            R14 0
      143 LOADN                            R15 60
      144 CALL                             R13 2 1
      145 SETTABLEKS                       R13 R12 K32 ["width"]
      147 JUMPIFNOT                        R3 ; [+17]
      148 GETTABLEKS                       R17 R0 K10 ["Input"]
      150 GETTABLEKS                       R17 R17 K54 ["Value"]
      152 GETTABLEKS                       R17 R17 K18 ["X"]
      154 FASTCALL1                        MATH_DEG R17 ; [+2]
      155 GETIMPORT                        R16 K57 [math.deg]
      157 CALL                             R16 1 1
      158 MULK                             R15 R16 K53 [100]
      159 FASTCALL1                        MATH_ROUND R15 ; [+2]
      160 GETIMPORT                        R14 K59 [math.round]
      162 CALL                             R14 1 1
      163 DIVK                             R13 R14 K53 [100]
      164 JUMP                             ; [+6]
      165 GETTABLEKS                       R13 R0 K10 ["Input"]
      167 GETTABLEKS                       R13 R13 K54 ["Value"]
      169 GETTABLEKS                       R13 R13 K18 ["X"]
      171 SETTABLEKS                       R13 R12 K35 ["value"]
      173 JUMPIFNOT                        R3 ; [+2]
      174 MOVE                             R13 R1
      175 JUMP                             ; [+1]
      176 LOADNIL                          R13
      177 SETTABLEKS                       R13 R12 K36 ["formatAsString"]
      179 JUMPIFNOT                        R3 ; [+2]
      180 LOADN                            R13 -180
      181 JUMP                             ; [+1]
      182 LOADK                            R13 K60 [-∞]
      183 SETTABLEKS                       R13 R12 K39 ["minimum"]
      185 JUMPIFNOT                        R3 ; [+2]
      186 LOADN                            R13 180
      187 JUMP                             ; [+1]
      188 LOADK                            R13 K61 [∞]
      189 SETTABLEKS                       R13 R12 K40 ["maximum"]
      191 GETUPVAL                         R14 6
      192 CALL                             R14 0 1
      193 JUMPIFNOT                        R14 ; [+3]
      194 MOVE                             R13 R2
      195 CALL                             R13 0 1
      196 JUMP                             ; [+1]
      197 LOADN                            R13 2
      198 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
      200 GETUPVAL                         R13 7
      201 GETTABLEKS                       R13 R13 K62 ["NUMBER_PRECISION"]
      203 GETTABLEKS                       R13 R13 K63 ["Float"]
      205 SETTABLEKS                       R13 R12 K41 ["precision"]
      207 SETTABLEKS                       R4 R12 K42 ["onChanged"]
      209 GETUPVAL                         R13 4
      210 GETTABLEKS                       R13 R13 K47 ["Enums"]
      212 GETTABLEKS                       R13 R13 K64 ["NumberInputControlsVariant"]
      214 GETTABLEKS                       R13 R13 K65 ["None"]
      216 SETTABLEKS                       R13 R12 K43 ["controlsVariant"]
      218 CALL                             R10 2 1
      219 SETTABLEKS                       R10 R9 K18 ["X"]
      221 GETUPVAL                         R10 0
      222 GETTABLEKS                       R10 R10 K11 ["createElement"]
      224 GETUPVAL                         R11 4
      225 GETTABLEKS                       R11 R11 K30 ["NumberInput"]
      227 DUPTABLE                         R12 K66 [{["size"], ["width"], ["label"] = "", ["value"], ["minimum"], ["LayoutOrder"], ["precision"], ["step"] = 0.005, ["onChanged"], ["controlsVariant"], ["isScrubbable"] = True}]
      228 GETUPVAL                         R13 4
      229 GETTABLEKS                       R13 R13 K47 ["Enums"]
      231 GETTABLEKS                       R13 R13 K48 ["InputSize"]
      233 GETTABLEKS                       R13 R13 K49 ["XSmall"]
      235 SETTABLEKS                       R13 R12 K31 ["size"]
      237 GETIMPORT                        R13 K52 [UDim.new]
      239 LOADN                            R14 0
      240 LOADN                            R15 60
      241 CALL                             R13 2 1
      242 SETTABLEKS                       R13 R12 K32 ["width"]
      244 GETTABLEKS                       R16 R0 K10 ["Input"]
      246 GETTABLEKS                       R16 R16 K54 ["Value"]
      248 GETTABLEKS                       R16 R16 K19 ["Y"]
      250 MULK                             R15 R16 K53 [100]
      251 FASTCALL1                        MATH_ROUND R15 ; [+2]
      252 GETIMPORT                        R14 K59 [math.round]
      254 CALL                             R14 1 1
      255 DIVK                             R13 R14 K53 [100]
      256 SETTABLEKS                       R13 R12 K35 ["value"]
      258 JUMPIFNOT                        R3 ; [+2]
      259 LOADN                            R13 0
      260 JUMP                             ; [+1]
      261 LOADK                            R13 K60 [-∞]
      262 SETTABLEKS                       R13 R12 K39 ["minimum"]
      264 GETUPVAL                         R14 6
      265 CALL                             R14 0 1
      266 JUMPIFNOT                        R14 ; [+3]
      267 MOVE                             R13 R2
      268 CALL                             R13 0 1
      269 JUMP                             ; [+1]
      270 LOADN                            R13 3
      271 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
      273 GETUPVAL                         R13 7
      274 GETTABLEKS                       R13 R13 K62 ["NUMBER_PRECISION"]
      276 GETTABLEKS                       R13 R13 K63 ["Float"]
      278 SETTABLEKS                       R13 R12 K41 ["precision"]
      280 SETTABLEKS                       R5 R12 K42 ["onChanged"]
      282 GETUPVAL                         R13 4
      283 GETTABLEKS                       R13 R13 K47 ["Enums"]
      285 GETTABLEKS                       R13 R13 K64 ["NumberInputControlsVariant"]
      287 GETTABLEKS                       R13 R13 K65 ["None"]
      289 SETTABLEKS                       R13 R12 K43 ["controlsVariant"]
      291 CALL                             R10 2 1
      292 SETTABLEKS                       R10 R9 K19 ["Y"]
      294 GETUPVAL                         R10 0
      295 GETTABLEKS                       R10 R10 K11 ["createElement"]
      297 LOADK                            R11 K67 ["Folder"]
      298 NEWTABLE                         R12 0 0
      300 DUPTABLE                         R13 K69 [{"RenderedPinInput"}]
      301 GETUPVAL                         R14 0
      302 GETTABLEKS                       R14 R14 K11 ["createElement"]
      304 GETUPVAL                         R15 8
      305 GETTABLEKS                       R15 R15 K70 ["RenderedCompositorPin"]
      307 DUPTABLE                         R16 K78 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["selected"]}]
      308 GETIMPORT                        R17 K81 [UDim2.fromOffset]
      310 LOADN                            R18 -9
      311 LOADN                            R19 14
      312 CALL                             R17 2 1
      313 SETTABLEKS                       R17 R16 K71 ["Position"]
      315 GETUPVAL                         R17 8
      316 GETTABLEKS                       R17 R17 K82 ["DEFAULT_PIN_DATA_TYPE"]
      318 SETTABLEKS                       R17 R16 K73 ["pinDataType"]
      320 GETTABLEKS                       R17 R0 K83 ["NodeId"]
      322 SETTABLEKS                       R17 R16 K74 ["pinNodeId"]
      324 GETTABLEKS                       R17 R0 K10 ["Input"]
      326 GETTABLEKS                       R17 R17 K22 ["Name"]
      328 SETTABLEKS                       R17 R16 K75 ["pinName"]
      330 GETTABLEKS                       R17 R0 K10 ["Input"]
      332 GETTABLEKS                       R17 R17 K54 ["Value"]
      334 SETTABLEKS                       R17 R16 K76 ["pinValue"]
      336 GETUPVAL                         R18 9
      337 CALL                             R18 0 1
      338 JUMPIFNOT                        R18 ; [+3]
      339 GETTABLEKS                       R17 R0 K84 ["IsSelected"]
      341 JUMP                             ; [+1]
      342 LOADNIL                          R17
      343 SETTABLEKS                       R17 R16 K77 ["selected"]
      345 CALL                             R14 2 1
      346 SETTABLEKS                       R14 R13 K68 ["RenderedPinInput"]
      348 CALL                             R10 3 1
      349 SETTABLEKS                       R10 R9 K20 ["PinChildren"]
      351 CALL                             R6 3 -1
      352 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["CompositorNodeInput"]
       36 GETTABLEKS                       R5 R5 K14 ["InputLabelWeight"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Components"]
       43 GETTABLEKS                       R6 R6 K12 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K13 ["CompositorNodeInput"]
       47 GETTABLEKS                       R6 R6 K15 ["InputPanelTypes"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Parent"]
       54 GETTABLEKS                       R7 R7 K16 ["NodeGraphing"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K11 ["Components"]
       61 GETTABLEKS                       R8 R8 K12 ["NodeView"]
       63 GETTABLEKS                       R8 R8 K17 ["CompositorNodeProperty"]
       65 GETTABLEKS                       R8 R8 K18 ["PropertyUtils"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Parent"]
       72 GETTABLEKS                       R9 R9 K19 ["React"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K8 ["Parent"]
       79 GETTABLEKS                       R10 R10 K20 ["ReactUtils"]
       81 CALL                             R9 1 1
       82 GETTABLEKS                       R10 R6 K21 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
       84 GETTABLEKS                       R11 R6 K22 ["getFFlagAnimGraphUIPinStates"]
       86 DUPCLOSURE                       R12 K23 [PROTO_2]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R11
       97 RETURN                           R12 1
