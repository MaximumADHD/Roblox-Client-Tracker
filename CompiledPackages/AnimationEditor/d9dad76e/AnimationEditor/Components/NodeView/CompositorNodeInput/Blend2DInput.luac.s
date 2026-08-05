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
       90 MOVE                             R13 R2
       91 CALL                             R13 0 1
       92 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
       94 GETTABLEKS                       R13 R0 K25 ["OnDelete"]
       96 SETTABLEKS                       R13 R12 K25 ["OnDelete"]
       98 GETTABLEKS                       R13 R0 K26 ["IsHovered"]
      100 SETTABLEKS                       R13 R12 K26 ["IsHovered"]
      102 GETTABLEKS                       R13 R0 K27 ["HasDuplicateName"]
      104 SETTABLEKS                       R13 R12 K27 ["HasDuplicateName"]
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K17 ["InputLabelWeight"]
      109 GETUPVAL                         R10 0
      110 GETTABLEKS                       R10 R10 K11 ["createElement"]
      112 GETUPVAL                         R11 4
      113 GETTABLEKS                       R11 R11 K30 ["NumberInput"]
      115 DUPTABLE                         R12 K45 [{["size"], ["width"], ["label"] = "", ["value"], ["formatAsString"], ["step"] = 0.005, ["minimum"], ["maximum"], ["LayoutOrder"], ["precision"], ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
      116 GETUPVAL                         R13 4
      117 GETTABLEKS                       R13 R13 K46 ["Enums"]
      119 GETTABLEKS                       R13 R13 K47 ["InputSize"]
      121 GETTABLEKS                       R13 R13 K48 ["XSmall"]
      123 SETTABLEKS                       R13 R12 K31 ["size"]
      125 GETIMPORT                        R13 K51 [UDim.new]
      127 LOADN                            R14 0
      128 LOADN                            R15 60
      129 CALL                             R13 2 1
      130 SETTABLEKS                       R13 R12 K32 ["width"]
      132 JUMPIFNOT                        R3 ; [+17]
      133 GETTABLEKS                       R17 R0 K10 ["Input"]
      135 GETTABLEKS                       R17 R17 K53 ["Value"]
      137 GETTABLEKS                       R17 R17 K18 ["X"]
      139 FASTCALL1                        MATH_DEG R17 ; [+2]
      140 GETIMPORT                        R16 K56 [math.deg]
      142 CALL                             R16 1 1
      143 MULK                             R15 R16 K52 [100]
      144 FASTCALL1                        MATH_ROUND R15 ; [+2]
      145 GETIMPORT                        R14 K58 [math.round]
      147 CALL                             R14 1 1
      148 DIVK                             R13 R14 K52 [100]
      149 JUMP                             ; [+6]
      150 GETTABLEKS                       R13 R0 K10 ["Input"]
      152 GETTABLEKS                       R13 R13 K53 ["Value"]
      154 GETTABLEKS                       R13 R13 K18 ["X"]
      156 SETTABLEKS                       R13 R12 K35 ["value"]
      158 JUMPIFNOT                        R3 ; [+2]
      159 MOVE                             R13 R1
      160 JUMP                             ; [+1]
      161 LOADNIL                          R13
      162 SETTABLEKS                       R13 R12 K36 ["formatAsString"]
      164 JUMPIFNOT                        R3 ; [+2]
      165 LOADN                            R13 -180
      166 JUMP                             ; [+1]
      167 LOADK                            R13 K59 [-∞]
      168 SETTABLEKS                       R13 R12 K39 ["minimum"]
      170 JUMPIFNOT                        R3 ; [+2]
      171 LOADN                            R13 180
      172 JUMP                             ; [+1]
      173 LOADK                            R13 K60 [∞]
      174 SETTABLEKS                       R13 R12 K40 ["maximum"]
      176 MOVE                             R13 R2
      177 CALL                             R13 0 1
      178 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
      180 GETUPVAL                         R13 6
      181 GETTABLEKS                       R13 R13 K61 ["NUMBER_PRECISION"]
      183 GETTABLEKS                       R13 R13 K62 ["Float"]
      185 SETTABLEKS                       R13 R12 K41 ["precision"]
      187 SETTABLEKS                       R4 R12 K42 ["onChanged"]
      189 GETUPVAL                         R13 4
      190 GETTABLEKS                       R13 R13 K46 ["Enums"]
      192 GETTABLEKS                       R13 R13 K63 ["NumberInputControlsVariant"]
      194 GETTABLEKS                       R13 R13 K64 ["None"]
      196 SETTABLEKS                       R13 R12 K43 ["controlsVariant"]
      198 GETUPVAL                         R13 7
      199 GETTABLEKS                       R13 R13 K65 ["On"]
      201 SETTABLEKS                       R13 R12 K44 ["scrubBehavior"]
      203 CALL                             R10 2 1
      204 SETTABLEKS                       R10 R9 K18 ["X"]
      206 GETUPVAL                         R10 0
      207 GETTABLEKS                       R10 R10 K11 ["createElement"]
      209 GETUPVAL                         R11 4
      210 GETTABLEKS                       R11 R11 K30 ["NumberInput"]
      212 DUPTABLE                         R12 K66 [{["size"], ["width"], ["label"] = "", ["value"], ["minimum"], ["LayoutOrder"], ["precision"], ["step"] = 0.005, ["onChanged"], ["controlsVariant"], ["scrubBehavior"]}]
      213 GETUPVAL                         R13 4
      214 GETTABLEKS                       R13 R13 K46 ["Enums"]
      216 GETTABLEKS                       R13 R13 K47 ["InputSize"]
      218 GETTABLEKS                       R13 R13 K48 ["XSmall"]
      220 SETTABLEKS                       R13 R12 K31 ["size"]
      222 GETIMPORT                        R13 K51 [UDim.new]
      224 LOADN                            R14 0
      225 LOADN                            R15 60
      226 CALL                             R13 2 1
      227 SETTABLEKS                       R13 R12 K32 ["width"]
      229 GETTABLEKS                       R16 R0 K10 ["Input"]
      231 GETTABLEKS                       R16 R16 K53 ["Value"]
      233 GETTABLEKS                       R16 R16 K19 ["Y"]
      235 MULK                             R15 R16 K52 [100]
      236 FASTCALL1                        MATH_ROUND R15 ; [+2]
      237 GETIMPORT                        R14 K58 [math.round]
      239 CALL                             R14 1 1
      240 DIVK                             R13 R14 K52 [100]
      241 SETTABLEKS                       R13 R12 K35 ["value"]
      243 JUMPIFNOT                        R3 ; [+2]
      244 LOADN                            R13 0
      245 JUMP                             ; [+1]
      246 LOADK                            R13 K59 [-∞]
      247 SETTABLEKS                       R13 R12 K39 ["minimum"]
      249 MOVE                             R13 R2
      250 CALL                             R13 0 1
      251 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
      253 GETUPVAL                         R13 6
      254 GETTABLEKS                       R13 R13 K61 ["NUMBER_PRECISION"]
      256 GETTABLEKS                       R13 R13 K62 ["Float"]
      258 SETTABLEKS                       R13 R12 K41 ["precision"]
      260 SETTABLEKS                       R5 R12 K42 ["onChanged"]
      262 GETUPVAL                         R13 4
      263 GETTABLEKS                       R13 R13 K46 ["Enums"]
      265 GETTABLEKS                       R13 R13 K63 ["NumberInputControlsVariant"]
      267 GETTABLEKS                       R13 R13 K64 ["None"]
      269 SETTABLEKS                       R13 R12 K43 ["controlsVariant"]
      271 GETUPVAL                         R13 7
      272 GETTABLEKS                       R13 R13 K65 ["On"]
      274 SETTABLEKS                       R13 R12 K44 ["scrubBehavior"]
      276 CALL                             R10 2 1
      277 SETTABLEKS                       R10 R9 K19 ["Y"]
      279 GETUPVAL                         R10 0
      280 GETTABLEKS                       R10 R10 K11 ["createElement"]
      282 LOADK                            R11 K67 ["Folder"]
      283 NEWTABLE                         R12 0 0
      285 DUPTABLE                         R13 K69 [{"RenderedPinInput"}]
      286 GETUPVAL                         R14 0
      287 GETTABLEKS                       R14 R14 K11 ["createElement"]
      289 GETUPVAL                         R15 8
      290 GETTABLEKS                       R15 R15 K70 ["RenderedCompositorPin"]
      292 DUPTABLE                         R16 K78 [{["Position"], ["pinSide"] = "Input", ["pinDataType"], ["pinNodeId"], ["pinName"], ["pinValue"], ["selected"]}]
      293 GETIMPORT                        R17 K81 [UDim2.fromOffset]
      295 GETUPVAL                         R19 9
      296 CALL                             R19 0 1
      297 JUMPIFNOT                        R19 ; [+2]
      298 LOADN                            R18 -21
      299 JUMP                             ; [+1]
      300 LOADN                            R18 -9
      301 LOADN                            R19 14
      302 CALL                             R17 2 1
      303 SETTABLEKS                       R17 R16 K71 ["Position"]
      305 GETUPVAL                         R17 8
      306 GETTABLEKS                       R17 R17 K82 ["DEFAULT_PIN_DATA_TYPE"]
      308 SETTABLEKS                       R17 R16 K73 ["pinDataType"]
      310 GETTABLEKS                       R17 R0 K83 ["NodeId"]
      312 SETTABLEKS                       R17 R16 K74 ["pinNodeId"]
      314 GETTABLEKS                       R17 R0 K10 ["Input"]
      316 GETTABLEKS                       R17 R17 K22 ["Name"]
      318 SETTABLEKS                       R17 R16 K75 ["pinName"]
      320 GETTABLEKS                       R17 R0 K10 ["Input"]
      322 GETTABLEKS                       R17 R17 K53 ["Value"]
      324 SETTABLEKS                       R17 R16 K76 ["pinValue"]
      326 GETTABLEKS                       R17 R0 K84 ["IsSelected"]
      328 SETTABLEKS                       R17 R16 K77 ["selected"]
      330 CALL                             R14 2 1
      331 SETTABLEKS                       R14 R13 K68 ["RenderedPinInput"]
      333 CALL                             R10 3 1
      334 SETTABLEKS                       R10 R9 K20 ["PinChildren"]
      336 CALL                             R6 3 -1
      337 RETURN                           R6 -1

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
       86 GETTABLEKS                       R11 R6 K23 ["getFFlagAnimGraphUIPinOffset"]
       88 DUPCLOSURE                       R12 K24 [PROTO_2]
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R11
       99 RETURN                           R12 1
