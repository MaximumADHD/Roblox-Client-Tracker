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
      130 DUPTABLE                         R12 K45 [{["size"], ["width"], ["label"] = "", ["value"], ["formatAsString"], ["step"] = 0.005, ["minimum"], ["maximum"], ["LayoutOrder"], ["precision"], ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
      131 GETUPVAL                         R13 4
      132 GETTABLEKS                       R13 R13 K46 ["Enums"]
      134 GETTABLEKS                       R13 R13 K47 ["InputSize"]
      136 GETTABLEKS                       R13 R13 K48 ["XSmall"]
      138 SETTABLEKS                       R13 R12 K31 ["size"]
      140 GETIMPORT                        R13 K51 [UDim.new]
      142 LOADN                            R14 0
      143 LOADN                            R15 60
      144 CALL                             R13 2 1
      145 SETTABLEKS                       R13 R12 K32 ["width"]
      147 JUMPIFNOT                        R3 ; [+17]
      148 GETTABLEKS                       R17 R0 K10 ["Input"]
      150 GETTABLEKS                       R17 R17 K53 ["Value"]
      152 GETTABLEKS                       R17 R17 K18 ["X"]
      154 FASTCALL1                        MATH_DEG R17 ; [+2]
      155 GETIMPORT                        R16 K56 [math.deg]
      157 CALL                             R16 1 1
      158 MULK                             R15 R16 K52 [100]
      159 FASTCALL1                        MATH_ROUND R15 ; [+2]
      160 GETIMPORT                        R14 K58 [math.round]
      162 CALL                             R14 1 1
      163 DIVK                             R13 R14 K52 [100]
      164 JUMP                             ; [+6]
      165 GETTABLEKS                       R13 R0 K10 ["Input"]
      167 GETTABLEKS                       R13 R13 K53 ["Value"]
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
      182 LOADK                            R13 K59 [-∞]
      183 SETTABLEKS                       R13 R12 K39 ["minimum"]
      185 JUMPIFNOT                        R3 ; [+2]
      186 LOADN                            R13 180
      187 JUMP                             ; [+1]
      188 LOADK                            R13 K60 [∞]
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
      201 GETTABLEKS                       R13 R13 K61 ["NUMBER_PRECISION"]
      203 GETTABLEKS                       R13 R13 K62 ["Float"]
      205 SETTABLEKS                       R13 R12 K41 ["precision"]
      207 SETTABLEKS                       R4 R12 K42 ["onChanged"]
      209 GETUPVAL                         R13 4
      210 GETTABLEKS                       R13 R13 K46 ["Enums"]
      212 GETTABLEKS                       R13 R13 K63 ["NumberInputControlsVariant"]
      214 GETTABLEKS                       R13 R13 K64 ["None"]
      216 SETTABLEKS                       R13 R12 K43 ["controlsVariant"]
      218 GETUPVAL                         R13 8
      219 GETTABLEKS                       R13 R13 K65 ["On"]
      221 SETTABLEKS                       R13 R12 K44 ["scrubBehavior"]
      223 CALL                             R10 2 1
      224 SETTABLEKS                       R10 R9 K18 ["X"]
      226 GETUPVAL                         R10 0
      227 GETTABLEKS                       R10 R10 K11 ["createElement"]
      229 GETUPVAL                         R11 4
      230 GETTABLEKS                       R11 R11 K30 ["NumberInput"]
      232 DUPTABLE                         R12 K66 [{["size"], ["width"], ["label"] = "", ["value"], ["minimum"], ["LayoutOrder"], ["precision"], ["step"] = 0.005, ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
      233 GETUPVAL                         R13 4
      234 GETTABLEKS                       R13 R13 K46 ["Enums"]
      236 GETTABLEKS                       R13 R13 K47 ["InputSize"]
      238 GETTABLEKS                       R13 R13 K48 ["XSmall"]
      240 SETTABLEKS                       R13 R12 K31 ["size"]
      242 GETIMPORT                        R13 K51 [UDim.new]
      244 LOADN                            R14 0
      245 LOADN                            R15 60
      246 CALL                             R13 2 1
      247 SETTABLEKS                       R13 R12 K32 ["width"]
      249 GETTABLEKS                       R16 R0 K10 ["Input"]
      251 GETTABLEKS                       R16 R16 K53 ["Value"]
      253 GETTABLEKS                       R16 R16 K19 ["Y"]
      255 MULK                             R15 R16 K52 [100]
      256 FASTCALL1                        MATH_ROUND R15 ; [+2]
      257 GETIMPORT                        R14 K58 [math.round]
      259 CALL                             R14 1 1
      260 DIVK                             R13 R14 K52 [100]
      261 SETTABLEKS                       R13 R12 K35 ["value"]
      263 JUMPIFNOT                        R3 ; [+2]
      264 LOADN                            R13 0
      265 JUMP                             ; [+1]
      266 LOADK                            R13 K59 [-∞]
      267 SETTABLEKS                       R13 R12 K39 ["minimum"]
      269 GETUPVAL                         R14 6
      270 CALL                             R14 0 1
      271 JUMPIFNOT                        R14 ; [+3]
      272 MOVE                             R13 R2
      273 CALL                             R13 0 1
      274 JUMP                             ; [+1]
      275 LOADN                            R13 3
      276 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
      278 GETUPVAL                         R13 7
      279 GETTABLEKS                       R13 R13 K61 ["NUMBER_PRECISION"]
      281 GETTABLEKS                       R13 R13 K62 ["Float"]
      283 SETTABLEKS                       R13 R12 K41 ["precision"]
      285 SETTABLEKS                       R5 R12 K42 ["onChanged"]
      287 GETUPVAL                         R13 4
      288 GETTABLEKS                       R13 R13 K46 ["Enums"]
      290 GETTABLEKS                       R13 R13 K63 ["NumberInputControlsVariant"]
      292 GETTABLEKS                       R13 R13 K64 ["None"]
      294 SETTABLEKS                       R13 R12 K43 ["controlsVariant"]
      296 GETUPVAL                         R13 8
      297 GETTABLEKS                       R13 R13 K65 ["On"]
      299 SETTABLEKS                       R13 R12 K44 ["scrubBehavior"]
      301 CALL                             R10 2 1
      302 SETTABLEKS                       R10 R9 K19 ["Y"]
      304 GETUPVAL                         R10 0
      305 GETTABLEKS                       R10 R10 K11 ["createElement"]
      307 LOADK                            R11 K67 ["Folder"]
      308 NEWTABLE                         R12 0 0
      310 DUPTABLE                         R13 K69 [{"RenderedPinInput"}]
      311 GETUPVAL                         R14 0
      312 GETTABLEKS                       R14 R14 K11 ["createElement"]
      314 GETUPVAL                         R15 9
      315 GETTABLEKS                       R15 R15 K70 ["RenderedCompositorPin"]
      317 DUPTABLE                         R16 K78 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["selected"]}]
      318 GETIMPORT                        R17 K81 [UDim2.fromOffset]
      320 GETUPVAL                         R19 10
      321 CALL                             R19 0 1
      322 JUMPIFNOT                        R19 ; [+2]
      323 LOADN                            R18 -21
      324 JUMP                             ; [+1]
      325 LOADN                            R18 -9
      326 LOADN                            R19 14
      327 CALL                             R17 2 1
      328 SETTABLEKS                       R17 R16 K71 ["Position"]
      330 GETUPVAL                         R17 9
      331 GETTABLEKS                       R17 R17 K82 ["DEFAULT_PIN_DATA_TYPE"]
      333 SETTABLEKS                       R17 R16 K73 ["pinDataType"]
      335 GETTABLEKS                       R17 R0 K83 ["NodeId"]
      337 SETTABLEKS                       R17 R16 K74 ["pinNodeId"]
      339 GETTABLEKS                       R17 R0 K10 ["Input"]
      341 GETTABLEKS                       R17 R17 K22 ["Name"]
      343 SETTABLEKS                       R17 R16 K75 ["pinName"]
      345 GETTABLEKS                       R17 R0 K10 ["Input"]
      347 GETTABLEKS                       R17 R17 K53 ["Value"]
      349 SETTABLEKS                       R17 R16 K76 ["pinValue"]
      351 GETUPVAL                         R18 11
      352 CALL                             R18 0 1
      353 JUMPIFNOT                        R18 ; [+3]
      354 GETTABLEKS                       R17 R0 K84 ["IsSelected"]
      356 JUMP                             ; [+1]
      357 LOADNIL                          R17
      358 SETTABLEKS                       R17 R16 K77 ["selected"]
      360 CALL                             R14 2 1
      361 SETTABLEKS                       R14 R13 K68 ["RenderedPinInput"]
      363 CALL                             R10 3 1
      364 SETTABLEKS                       R10 R9 K20 ["PinChildren"]
      366 CALL                             R6 3 -1
      367 RETURN                           R6 -1

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
       82 GETTABLEKS                       R10 R3 K21 ["Enums"]
       84 GETTABLEKS                       R10 R10 K22 ["ScrubBehavior"]
       86 GETTABLEKS                       R11 R6 K23 ["getFFlagAnimGraphUIDefaultAndDisconnectedInputs"]
       88 GETTABLEKS                       R12 R6 K24 ["getFFlagAnimGraphUIPinOffset"]
       90 GETTABLEKS                       R13 R6 K25 ["getFFlagAnimGraphUIPinStates"]
       92 DUPCLOSURE                       R14 K26 [PROTO_2]
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R13
      105 RETURN                           R14 1
