PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Value"]
        3 FASTCALL1                        TYPE R1 ; [+2]
        4 GETIMPORT                        R0 K2 [type]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKS                    R0 K3 ["number"] ; [+5]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["Value"]
       12 RETURN                           R0 1
       13 LOADN                            R0 0
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+10]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        8 FASTCALL1                        MATH_RAD R0 ; [+3]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K3 [math.rad]
       12 CALL                             R2 1 1
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["formatDegrees"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R4 0 1
       16 GETTABLEKS                       R5 R0 K3 ["Value"]
       18 SETLIST                          R4 R5 1 [1]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["useCallback"]
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R5 0 1
       28 GETTABLEKS                       R6 R0 K4 ["OnChanged"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 2
       34 CALL                             R4 0 1
       35 JUMPIFNOT                        R4 ; [+79]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K5 ["createElement"]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R5 R5 K6 ["NumberProperty"]
       42 DUPTABLE                         R6 K23 [{["Label"], ["Type"], ["Value"], ["IsParameterized"], ["IsParameterOverridden"], ["IsDisabled"], ["Minimum"] = -180, ["Maximum"] = 180, ["Step"], ["Precision"], ["FormatAsString"], ["OnChanged"], ["OnParameterOverrideRevert"], ["LayoutOrder"], ["tags"], ["testId"]}]
       43 GETTABLEKS                       R8 R0 K7 ["Label"]
       45 ORK                              R7 R8 K24 [""]
       46 SETTABLEKS                       R7 R6 K7 ["Label"]
       48 GETTABLEKS                       R7 R0 K8 ["Type"]
       50 SETTABLEKS                       R7 R6 K8 ["Type"]
       52 FASTCALL1                        MATH_DEG R2 ; [+3]
       53 MOVE                             R11 R2
       54 GETIMPORT                        R10 K28 [math.deg]
       56 CALL                             R10 1 1
       57 MULK                             R9 R10 K25 [100]
       58 FASTCALL1                        MATH_ROUND R9 ; [+2]
       59 GETIMPORT                        R8 K30 [math.round]
       61 CALL                             R8 1 1
       62 DIVK                             R7 R8 K25 [100]
       63 SETTABLEKS                       R7 R6 K3 ["Value"]
       65 GETTABLEKS                       R7 R0 K9 ["IsParameterized"]
       67 SETTABLEKS                       R7 R6 K9 ["IsParameterized"]
       69 GETTABLEKS                       R7 R0 K10 ["IsParameterOverridden"]
       71 SETTABLEKS                       R7 R6 K10 ["IsParameterOverridden"]
       73 GETTABLEKS                       R7 R0 K11 ["IsDisabled"]
       75 SETTABLEKS                       R7 R6 K11 ["IsDisabled"]
       77 GETUPVAL                         R7 4
       78 GETTABLEKS                       R7 R7 K31 ["NUMBER_STEP"]
       80 GETTABLEKS                       R7 R7 K32 ["Angle"]
       82 SETTABLEKS                       R7 R6 K16 ["Step"]
       84 GETUPVAL                         R7 4
       85 GETTABLEKS                       R7 R7 K33 ["NUMBER_PRECISION"]
       87 GETTABLEKS                       R7 R7 K32 ["Angle"]
       89 SETTABLEKS                       R7 R6 K17 ["Precision"]
       91 SETTABLEKS                       R1 R6 K18 ["FormatAsString"]
       93 SETTABLEKS                       R3 R6 K4 ["OnChanged"]
       95 GETTABLEKS                       R7 R0 K19 ["OnParameterOverrideRevert"]
       97 SETTABLEKS                       R7 R6 K19 ["OnParameterOverrideRevert"]
       99 GETTABLEKS                       R7 R0 K20 ["LayoutOrder"]
      101 SETTABLEKS                       R7 R6 K20 ["LayoutOrder"]
      103 GETTABLEKS                       R7 R0 K21 ["tags"]
      105 SETTABLEKS                       R7 R6 K21 ["tags"]
      107 GETTABLEKS                       R7 R0 K22 ["testId"]
      109 SETTABLEKS                       R7 R6 K22 ["testId"]
      111 GETTABLEKS                       R7 R0 K34 ["children"]
      113 CALL                             R4 3 -1
      114 RETURN                           R4 -1
      115 GETUPVAL                         R4 0
      116 GETTABLEKS                       R4 R4 K5 ["createElement"]
      118 GETUPVAL                         R5 5
      119 GETTABLEKS                       R5 R5 K35 ["View"]
      121 DUPTABLE                         R6 K37 [{"tag", "LayoutOrder", "testId"}]
      122 GETUPVAL                         R7 5
      123 GETTABLEKS                       R7 R7 K38 ["Hooks"]
      125 GETTABLEKS                       R7 R7 K39 ["useDefaultTags"]
      127 GETTABLEKS                       R8 R0 K21 ["tags"]
      129 GETUPVAL                         R10 6
      130 CALL                             R10 0 1
      131 JUMPIFNOT                        R10 ; [+2]
      132 LOADK                            R9 K40 ["row auto-y gap-small size-full-700 align-y-center"]
      133 JUMP                             ; [+1]
      134 LOADK                            R9 K41 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
      135 CALL                             R7 2 1
      136 SETTABLEKS                       R7 R6 K36 ["tag"]
      138 GETTABLEKS                       R7 R0 K20 ["LayoutOrder"]
      140 SETTABLEKS                       R7 R6 K20 ["LayoutOrder"]
      142 GETTABLEKS                       R7 R0 K22 ["testId"]
      144 SETTABLEKS                       R7 R6 K22 ["testId"]
      146 DUPTABLE                         R7 K45 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
      147 GETUPVAL                         R8 0
      148 GETTABLEKS                       R8 R8 K5 ["createElement"]
      150 GETUPVAL                         R9 7
      151 DUPTABLE                         R10 K49 [{["tag"], ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
      152 NEWTABLE                         R11 4 0
      154 LOADB                            R12 1
      155 SETTABLEKS                       R12 R11 K50 ["text-body-small text-align-x-left"]
      157 GETUPVAL                         R12 6
      158 CALL                             R12 0 1
      159 SETTABLEKS                       R12 R11 K51 ["fill auto-y text-truncate-split"]
      161 GETUPVAL                         R13 6
      162 CALL                             R13 0 1
      163 NOT                              R12 R13
      164 SETTABLEKS                       R12 R11 K52 ["auto-xy"]
      166 SETTABLEKS                       R11 R10 K36 ["tag"]
      168 GETTABLEKS                       R12 R0 K7 ["Label"]
      170 ORK                              R11 R12 K24 [""]
      171 SETTABLEKS                       R11 R10 K46 ["Text"]
      173 GETTABLEKS                       R12 R0 K11 ["IsDisabled"]
      175 ORK                              R11 R12 K53 [False]
      176 SETTABLEKS                       R11 R10 K48 ["isDisabled"]
      178 CALL                             R8 2 1
      179 SETTABLEKS                       R8 R7 K42 ["CompositorNodeInputLabel"]
      181 GETUPVAL                         R9 6
      182 CALL                             R9 0 1
      183 JUMPIFNOT                        R9 ; [+90]
      184 GETUPVAL                         R8 0
      185 GETTABLEKS                       R8 R8 K5 ["createElement"]
      187 GETUPVAL                         R9 5
      188 GETTABLEKS                       R9 R9 K35 ["View"]
      190 DUPTABLE                         R10 K57 [{["tag"] = "fill row items-stretch align-y-center auto-y", ["testId"] = "property-field-cell", ["LayoutOrder"] = 2}]
      191 DUPTABLE                         R11 K59 [{"Control"}]
      192 GETUPVAL                         R12 0
      193 GETTABLEKS                       R12 R12 K5 ["createElement"]
      195 GETUPVAL                         R13 5
      196 GETTABLEKS                       R13 R13 K60 ["NumberInput"]
      198 DUPTABLE                         R14 K73 [{["size"], ["width"], ["label"] = "", ["value"], ["isDisabled"], ["minimum"] = -180, ["maximum"] = 180, ["step"], ["formatAsString"], ["precision"], ["controlsVariant"], ["onChanged"], ["scrubBehavior"]}]
      199 GETUPVAL                         R15 5
      200 GETTABLEKS                       R15 R15 K74 ["Enums"]
      202 GETTABLEKS                       R15 R15 K75 ["InputSize"]
      204 GETTABLEKS                       R15 R15 K76 ["XSmall"]
      206 SETTABLEKS                       R15 R14 K61 ["size"]
      208 GETIMPORT                        R15 K79 [UDim.new]
      210 LOADN                            R16 1
      211 LOADN                            R17 0
      212 CALL                             R15 2 1
      213 SETTABLEKS                       R15 R14 K62 ["width"]
      215 FASTCALL1                        MATH_DEG R2 ; [+3]
      216 MOVE                             R19 R2
      217 GETIMPORT                        R18 K28 [math.deg]
      219 CALL                             R18 1 1
      220 MULK                             R17 R18 K25 [100]
      221 FASTCALL1                        MATH_ROUND R17 ; [+2]
      222 GETIMPORT                        R16 K30 [math.round]
      224 CALL                             R16 1 1
      225 DIVK                             R15 R16 K25 [100]
      226 SETTABLEKS                       R15 R14 K64 ["value"]
      228 GETTABLEKS                       R15 R0 K9 ["IsParameterized"]
      230 JUMPIF                           R15 ; [+4]
      231 GETTABLEKS                       R15 R0 K11 ["IsDisabled"]
      233 JUMPIF                           R15 ; [+1]
      234 LOADB                            R15 0
      235 SETTABLEKS                       R15 R14 K48 ["isDisabled"]
      237 GETUPVAL                         R15 4
      238 GETTABLEKS                       R15 R15 K31 ["NUMBER_STEP"]
      240 GETTABLEKS                       R15 R15 K32 ["Angle"]
      242 SETTABLEKS                       R15 R14 K67 ["step"]
      244 SETTABLEKS                       R1 R14 K68 ["formatAsString"]
      246 GETUPVAL                         R15 4
      247 GETTABLEKS                       R15 R15 K33 ["NUMBER_PRECISION"]
      249 GETTABLEKS                       R15 R15 K32 ["Angle"]
      251 SETTABLEKS                       R15 R14 K69 ["precision"]
      253 GETUPVAL                         R15 5
      254 GETTABLEKS                       R15 R15 K74 ["Enums"]
      256 GETTABLEKS                       R15 R15 K80 ["NumberInputControlsVariant"]
      258 GETTABLEKS                       R15 R15 K81 ["None"]
      260 SETTABLEKS                       R15 R14 K70 ["controlsVariant"]
      262 SETTABLEKS                       R3 R14 K71 ["onChanged"]
      264 GETUPVAL                         R15 8
      265 GETTABLEKS                       R15 R15 K82 ["On"]
      267 SETTABLEKS                       R15 R14 K72 ["scrubBehavior"]
      269 CALL                             R12 2 1
      270 SETTABLEKS                       R12 R11 K58 ["Control"]
      272 CALL                             R8 3 1
      273 JUMP                             ; [+78]
      274 GETUPVAL                         R8 0
      275 GETTABLEKS                       R8 R8 K5 ["createElement"]
      277 GETUPVAL                         R9 5
      278 GETTABLEKS                       R9 R9 K60 ["NumberInput"]
      280 DUPTABLE                         R10 K83 [{["size"], ["width"], ["label"] = "", ["value"], ["isDisabled"], ["minimum"] = -180, ["maximum"] = 180, ["step"], ["formatAsString"], ["LayoutOrder"] = 2, ["precision"], ["controlsVariant"], ["onChanged"], ["scrubBehavior"]}]
      281 GETUPVAL                         R11 5
      282 GETTABLEKS                       R11 R11 K74 ["Enums"]
      284 GETTABLEKS                       R11 R11 K75 ["InputSize"]
      286 GETTABLEKS                       R11 R11 K76 ["XSmall"]
      288 SETTABLEKS                       R11 R10 K61 ["size"]
      290 GETIMPORT                        R11 K79 [UDim.new]
      292 LOADN                            R12 0
      293 LOADN                            R13 90
      294 CALL                             R11 2 1
      295 SETTABLEKS                       R11 R10 K62 ["width"]
      297 FASTCALL1                        MATH_DEG R2 ; [+3]
      298 MOVE                             R15 R2
      299 GETIMPORT                        R14 K28 [math.deg]
      301 CALL                             R14 1 1
      302 MULK                             R13 R14 K25 [100]
      303 FASTCALL1                        MATH_ROUND R13 ; [+2]
      304 GETIMPORT                        R12 K30 [math.round]
      306 CALL                             R12 1 1
      307 DIVK                             R11 R12 K25 [100]
      308 SETTABLEKS                       R11 R10 K64 ["value"]
      310 GETTABLEKS                       R11 R0 K9 ["IsParameterized"]
      312 JUMPIF                           R11 ; [+4]
      313 GETTABLEKS                       R11 R0 K11 ["IsDisabled"]
      315 JUMPIF                           R11 ; [+1]
      316 LOADB                            R11 0
      317 SETTABLEKS                       R11 R10 K48 ["isDisabled"]
      319 GETUPVAL                         R11 4
      320 GETTABLEKS                       R11 R11 K31 ["NUMBER_STEP"]
      322 GETTABLEKS                       R11 R11 K32 ["Angle"]
      324 SETTABLEKS                       R11 R10 K67 ["step"]
      326 SETTABLEKS                       R1 R10 K68 ["formatAsString"]
      328 GETUPVAL                         R11 4
      329 GETTABLEKS                       R11 R11 K33 ["NUMBER_PRECISION"]
      331 GETTABLEKS                       R11 R11 K32 ["Angle"]
      333 SETTABLEKS                       R11 R10 K69 ["precision"]
      335 GETUPVAL                         R11 5
      336 GETTABLEKS                       R11 R11 K74 ["Enums"]
      338 GETTABLEKS                       R11 R11 K80 ["NumberInputControlsVariant"]
      340 GETTABLEKS                       R11 R11 K81 ["None"]
      342 SETTABLEKS                       R11 R10 K70 ["controlsVariant"]
      344 SETTABLEKS                       R3 R10 K71 ["onChanged"]
      346 GETUPVAL                         R11 8
      347 GETTABLEKS                       R11 R11 K82 ["On"]
      349 SETTABLEKS                       R11 R10 K72 ["scrubBehavior"]
      351 CALL                             R8 2 1
      352 SETTABLEKS                       R8 R7 K43 ["Input"]
      354 GETUPVAL                         R8 0
      355 GETTABLEKS                       R8 R8 K5 ["createElement"]
      357 LOADK                            R9 K84 ["Folder"]
      358 NEWTABLE                         R10 0 0
      360 GETTABLEKS                       R11 R0 K34 ["children"]
      362 CALL                             R8 3 1
      363 SETTABLEKS                       R8 R7 K44 ["PinChildren"]
      365 CALL                             R4 3 -1
      366 RETURN                           R4 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeGraphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["NodeView"]
       34 GETTABLEKS                       R5 R5 K13 ["CompositorNodeProperty"]
       36 GETTABLEKS                       R5 R5 K14 ["PropertyLabel"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Components"]
       43 GETTABLEKS                       R6 R6 K12 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K13 ["CompositorNodeProperty"]
       47 GETTABLEKS                       R6 R6 K15 ["PropertyUtils"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Parent"]
       54 GETTABLEKS                       R7 R7 K16 ["React"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R2 K17 ["Enums"]
       59 GETTABLEKS                       R7 R7 K18 ["ScrubBehavior"]
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K19 ["Flags"]
       65 GETTABLEKS                       R9 R9 K20 ["getFFlagAnimGraphUI_EditParameterizedAngle"]
       67 CALL                             R8 1 1
       68 GETTABLEKS                       R9 R3 K21 ["getFFlagAnimGraphUINodeFieldLayout"]
       70 DUPCLOSURE                       R10 K22 [PROTO_2]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R7
       80 RETURN                           R10 1
