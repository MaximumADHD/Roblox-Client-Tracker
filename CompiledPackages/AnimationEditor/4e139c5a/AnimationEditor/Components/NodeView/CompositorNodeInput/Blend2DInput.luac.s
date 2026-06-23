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
       61 DUPTABLE                         R8 K15 [{"tag", "LayoutOrder"}]
       62 LOADK                            R9 K16 ["row auto-y gap-small size-full-700 align-y-center flex-x-fill padding-x-small"]
       63 SETTABLEKS                       R9 R8 K13 ["tag"]
       65 GETTABLEKS                       R9 R0 K14 ["LayoutOrder"]
       67 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       69 DUPTABLE                         R9 K21 [{"InputLabelWeight", "X", "Y", "PinChildren"}]
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K11 ["createElement"]
       73 GETUPVAL                         R11 5
       74 DUPTABLE                         R12 K26 [{"Name", "Weight", "LayoutOrder", "OnDelete", "IsHovered"}]
       75 GETTABLEKS                       R13 R0 K10 ["Input"]
       77 GETTABLEKS                       R13 R13 K22 ["Name"]
       79 SETTABLEKS                       R13 R12 K22 ["Name"]
       81 GETTABLEKS                       R13 R0 K10 ["Input"]
       83 GETTABLEKS                       R13 R13 K23 ["Weight"]
       85 SETTABLEKS                       R13 R12 K23 ["Weight"]
       87 GETUPVAL                         R14 6
       88 CALL                             R14 0 1
       89 JUMPIFNOT                        R14 ; [+3]
       90 MOVE                             R13 R2
       91 CALL                             R13 0 1
       92 JUMP                             ; [+1]
       93 LOADN                            R13 1
       94 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       96 GETUPVAL                         R14 6
       97 CALL                             R14 0 1
       98 JUMPIFNOT                        R14 ; [+3]
       99 GETTABLEKS                       R13 R0 K24 ["OnDelete"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R13
      103 SETTABLEKS                       R13 R12 K24 ["OnDelete"]
      105 GETUPVAL                         R14 6
      106 CALL                             R14 0 1
      107 JUMPIFNOT                        R14 ; [+3]
      108 GETTABLEKS                       R13 R0 K25 ["IsHovered"]
      110 JUMP                             ; [+1]
      111 LOADNIL                          R13
      112 SETTABLEKS                       R13 R12 K25 ["IsHovered"]
      114 CALL                             R10 2 1
      115 SETTABLEKS                       R10 R9 K17 ["InputLabelWeight"]
      117 GETUPVAL                         R10 0
      118 GETTABLEKS                       R10 R10 K11 ["createElement"]
      120 GETUPVAL                         R11 4
      121 GETTABLEKS                       R11 R11 K27 ["NumberInput"]
      123 DUPTABLE                         R12 K40 [{"size", "width", "label", "value", "formatAsString", "step", "minimum", "maximum", "LayoutOrder", "precision", "onChanged", "controlsVariant", "isScrubbable"}]
      124 GETUPVAL                         R13 4
      125 GETTABLEKS                       R13 R13 K41 ["Enums"]
      127 GETTABLEKS                       R13 R13 K42 ["InputSize"]
      129 GETTABLEKS                       R13 R13 K43 ["XSmall"]
      131 SETTABLEKS                       R13 R12 K28 ["size"]
      133 GETIMPORT                        R13 K46 [UDim.new]
      135 LOADN                            R14 0
      136 LOADN                            R15 60
      137 CALL                             R13 2 1
      138 SETTABLEKS                       R13 R12 K29 ["width"]
      140 LOADK                            R13 K47 [""]
      141 SETTABLEKS                       R13 R12 K30 ["label"]
      143 JUMPIFNOT                        R3 ; [+17]
      144 GETTABLEKS                       R17 R0 K10 ["Input"]
      146 GETTABLEKS                       R17 R17 K49 ["Value"]
      148 GETTABLEKS                       R17 R17 K18 ["X"]
      150 FASTCALL1                        MATH_DEG R17 ; [+2]
      151 GETIMPORT                        R16 K52 [math.deg]
      153 CALL                             R16 1 1
      154 MULK                             R15 R16 K48 [100]
      155 FASTCALL1                        MATH_ROUND R15 ; [+2]
      156 GETIMPORT                        R14 K54 [math.round]
      158 CALL                             R14 1 1
      159 DIVK                             R13 R14 K48 [100]
      160 JUMP                             ; [+6]
      161 GETTABLEKS                       R13 R0 K10 ["Input"]
      163 GETTABLEKS                       R13 R13 K49 ["Value"]
      165 GETTABLEKS                       R13 R13 K18 ["X"]
      167 SETTABLEKS                       R13 R12 K31 ["value"]
      169 JUMPIFNOT                        R3 ; [+2]
      170 MOVE                             R13 R1
      171 JUMP                             ; [+1]
      172 LOADNIL                          R13
      173 SETTABLEKS                       R13 R12 K32 ["formatAsString"]
      175 LOADK                            R13 K55 [0.005]
      176 SETTABLEKS                       R13 R12 K33 ["step"]
      178 JUMPIFNOT                        R3 ; [+2]
      179 LOADN                            R13 76
      180 JUMP                             ; [+1]
      181 LOADK                            R13 K56 [-∞]
      182 SETTABLEKS                       R13 R12 K34 ["minimum"]
      184 JUMPIFNOT                        R3 ; [+2]
      185 LOADN                            R13 180
      186 JUMP                             ; [+1]
      187 LOADK                            R13 K57 [∞]
      188 SETTABLEKS                       R13 R12 K35 ["maximum"]
      190 GETUPVAL                         R14 6
      191 CALL                             R14 0 1
      192 JUMPIFNOT                        R14 ; [+3]
      193 MOVE                             R13 R2
      194 CALL                             R13 0 1
      195 JUMP                             ; [+1]
      196 LOADN                            R13 2
      197 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      199 GETUPVAL                         R13 7
      200 GETTABLEKS                       R13 R13 K58 ["NUMBER_PRECISION"]
      202 GETTABLEKS                       R13 R13 K59 ["Float"]
      204 SETTABLEKS                       R13 R12 K36 ["precision"]
      206 SETTABLEKS                       R4 R12 K37 ["onChanged"]
      208 GETUPVAL                         R13 4
      209 GETTABLEKS                       R13 R13 K41 ["Enums"]
      211 GETTABLEKS                       R13 R13 K60 ["NumberInputControlsVariant"]
      213 GETTABLEKS                       R13 R13 K61 ["None"]
      215 SETTABLEKS                       R13 R12 K38 ["controlsVariant"]
      217 LOADB                            R13 1
      218 SETTABLEKS                       R13 R12 K39 ["isScrubbable"]
      220 CALL                             R10 2 1
      221 SETTABLEKS                       R10 R9 K18 ["X"]
      223 GETUPVAL                         R10 0
      224 GETTABLEKS                       R10 R10 K11 ["createElement"]
      226 GETUPVAL                         R11 4
      227 GETTABLEKS                       R11 R11 K27 ["NumberInput"]
      229 DUPTABLE                         R12 K62 [{"size", "width", "label", "value", "minimum", "LayoutOrder", "precision", "step", "onChanged", "controlsVariant", "isScrubbable"}]
      230 GETUPVAL                         R13 4
      231 GETTABLEKS                       R13 R13 K41 ["Enums"]
      233 GETTABLEKS                       R13 R13 K42 ["InputSize"]
      235 GETTABLEKS                       R13 R13 K43 ["XSmall"]
      237 SETTABLEKS                       R13 R12 K28 ["size"]
      239 GETIMPORT                        R13 K46 [UDim.new]
      241 LOADN                            R14 0
      242 LOADN                            R15 60
      243 CALL                             R13 2 1
      244 SETTABLEKS                       R13 R12 K29 ["width"]
      246 LOADK                            R13 K47 [""]
      247 SETTABLEKS                       R13 R12 K30 ["label"]
      249 GETTABLEKS                       R16 R0 K10 ["Input"]
      251 GETTABLEKS                       R16 R16 K49 ["Value"]
      253 GETTABLEKS                       R16 R16 K19 ["Y"]
      255 MULK                             R15 R16 K48 [100]
      256 FASTCALL1                        MATH_ROUND R15 ; [+2]
      257 GETIMPORT                        R14 K54 [math.round]
      259 CALL                             R14 1 1
      260 DIVK                             R13 R14 K48 [100]
      261 SETTABLEKS                       R13 R12 K31 ["value"]
      263 JUMPIFNOT                        R3 ; [+2]
      264 LOADN                            R13 0
      265 JUMP                             ; [+1]
      266 LOADK                            R13 K56 [-∞]
      267 SETTABLEKS                       R13 R12 K34 ["minimum"]
      269 GETUPVAL                         R14 6
      270 CALL                             R14 0 1
      271 JUMPIFNOT                        R14 ; [+3]
      272 MOVE                             R13 R2
      273 CALL                             R13 0 1
      274 JUMP                             ; [+1]
      275 LOADN                            R13 3
      276 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      278 GETUPVAL                         R13 7
      279 GETTABLEKS                       R13 R13 K58 ["NUMBER_PRECISION"]
      281 GETTABLEKS                       R13 R13 K59 ["Float"]
      283 SETTABLEKS                       R13 R12 K36 ["precision"]
      285 LOADK                            R13 K55 [0.005]
      286 SETTABLEKS                       R13 R12 K33 ["step"]
      288 SETTABLEKS                       R5 R12 K37 ["onChanged"]
      290 GETUPVAL                         R13 4
      291 GETTABLEKS                       R13 R13 K41 ["Enums"]
      293 GETTABLEKS                       R13 R13 K60 ["NumberInputControlsVariant"]
      295 GETTABLEKS                       R13 R13 K61 ["None"]
      297 SETTABLEKS                       R13 R12 K38 ["controlsVariant"]
      299 LOADB                            R13 1
      300 SETTABLEKS                       R13 R12 K39 ["isScrubbable"]
      302 CALL                             R10 2 1
      303 SETTABLEKS                       R10 R9 K19 ["Y"]
      305 GETUPVAL                         R10 0
      306 GETTABLEKS                       R10 R10 K11 ["createElement"]
      308 LOADK                            R11 K63 ["Folder"]
      309 NEWTABLE                         R12 0 0
      311 DUPTABLE                         R13 K65 [{"RenderedPinInput"}]
      312 GETUPVAL                         R14 0
      313 GETTABLEKS                       R14 R14 K11 ["createElement"]
      315 GETUPVAL                         R15 8
      316 GETTABLEKS                       R15 R15 K66 ["RenderedCompositorPin"]
      318 DUPTABLE                         R16 K73 [{"Position", "pinSide", "pinDataType", "pinNodeId", "pinName", "pinValue"}]
      319 GETIMPORT                        R17 K76 [UDim2.fromOffset]
      321 LOADN                            R18 247
      322 LOADN                            R19 14
      323 CALL                             R17 2 1
      324 SETTABLEKS                       R17 R16 K67 ["Position"]
      326 LOADK                            R17 K10 ["Input"]
      327 SETTABLEKS                       R17 R16 K68 ["pinSide"]
      329 GETUPVAL                         R17 8
      330 GETTABLEKS                       R17 R17 K77 ["DEFAULT_PIN_DATA_TYPE"]
      332 SETTABLEKS                       R17 R16 K69 ["pinDataType"]
      334 GETTABLEKS                       R17 R0 K78 ["NodeId"]
      336 SETTABLEKS                       R17 R16 K70 ["pinNodeId"]
      338 GETTABLEKS                       R17 R0 K10 ["Input"]
      340 GETTABLEKS                       R17 R17 K22 ["Name"]
      342 SETTABLEKS                       R17 R16 K71 ["pinName"]
      344 GETTABLEKS                       R17 R0 K10 ["Input"]
      346 GETTABLEKS                       R17 R17 K49 ["Value"]
      348 SETTABLEKS                       R17 R16 K72 ["pinValue"]
      350 CALL                             R14 2 1
      351 SETTABLEKS                       R14 R13 K64 ["RenderedPinInput"]
      353 CALL                             R10 3 1
      354 SETTABLEKS                       R10 R9 K20 ["PinChildren"]
      356 CALL                             R6 3 -1
      357 RETURN                           R6 -1

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
       84 DUPCLOSURE                       R11 K22 [PROTO_2]
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R6
       94 RETURN                           R11 1
