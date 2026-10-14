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
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K5 ["createElement"]
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K6 ["View"]
       39 DUPTABLE                         R6 K10 [{"tag", "LayoutOrder", "testId"}]
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K11 ["Hooks"]
       43 GETTABLEKS                       R7 R7 K12 ["useDefaultTags"]
       45 GETTABLEKS                       R8 R0 K13 ["tags"]
       47 GETUPVAL                         R10 3
       48 CALL                             R10 0 1
       49 JUMPIFNOT                        R10 ; [+2]
       50 LOADK                            R9 K14 ["row auto-y gap-small size-full-700 align-y-center"]
       51 JUMP                             ; [+1]
       52 LOADK                            R9 K15 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       53 CALL                             R7 2 1
       54 SETTABLEKS                       R7 R6 K7 ["tag"]
       56 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       58 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       60 GETTABLEKS                       R7 R0 K9 ["testId"]
       62 SETTABLEKS                       R7 R6 K9 ["testId"]
       64 DUPTABLE                         R7 K19 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       65 GETUPVAL                         R8 0
       66 GETTABLEKS                       R8 R8 K5 ["createElement"]
       68 GETUPVAL                         R9 4
       69 DUPTABLE                         R10 K23 [{["tag"], ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
       70 NEWTABLE                         R11 4 0
       72 LOADB                            R12 1
       73 SETTABLEKS                       R12 R11 K24 ["text-body-small text-align-x-left"]
       75 GETUPVAL                         R12 3
       76 CALL                             R12 0 1
       77 SETTABLEKS                       R12 R11 K25 ["fill auto-y text-truncate-split"]
       79 GETUPVAL                         R13 3
       80 CALL                             R13 0 1
       81 NOT                              R12 R13
       82 SETTABLEKS                       R12 R11 K26 ["auto-xy"]
       84 SETTABLEKS                       R11 R10 K7 ["tag"]
       86 GETTABLEKS                       R12 R0 K28 ["Label"]
       88 ORK                              R11 R12 K27 [""]
       89 SETTABLEKS                       R11 R10 K20 ["Text"]
       91 GETTABLEKS                       R12 R0 K30 ["IsDisabled"]
       93 ORK                              R11 R12 K29 [False]
       94 SETTABLEKS                       R11 R10 K22 ["isDisabled"]
       96 CALL                             R8 2 1
       97 SETTABLEKS                       R8 R7 K16 ["CompositorNodeInputLabel"]
       99 GETUPVAL                         R9 3
      100 CALL                             R9 0 1
      101 JUMPIFNOT                        R9 ; [+90]
      102 GETUPVAL                         R8 0
      103 GETTABLEKS                       R8 R8 K5 ["createElement"]
      105 GETUPVAL                         R9 2
      106 GETTABLEKS                       R9 R9 K6 ["View"]
      108 DUPTABLE                         R10 K34 [{["tag"] = "fill row items-stretch align-y-center auto-y", ["testId"] = "property-field-cell", ["LayoutOrder"] = 2}]
      109 DUPTABLE                         R11 K36 [{"Control"}]
      110 GETUPVAL                         R12 0
      111 GETTABLEKS                       R12 R12 K5 ["createElement"]
      113 GETUPVAL                         R13 2
      114 GETTABLEKS                       R13 R13 K37 ["NumberInput"]
      116 DUPTABLE                         R14 K52 [{["size"], ["width"], ["label"] = "", ["value"], ["isDisabled"], ["minimum"] = -180, ["maximum"] = 180, ["step"], ["formatAsString"], ["precision"], ["controlsVariant"], ["onChanged"], ["scrubBehavior"]}]
      117 GETUPVAL                         R15 2
      118 GETTABLEKS                       R15 R15 K53 ["Enums"]
      120 GETTABLEKS                       R15 R15 K54 ["InputSize"]
      122 GETTABLEKS                       R15 R15 K55 ["XSmall"]
      124 SETTABLEKS                       R15 R14 K38 ["size"]
      126 GETIMPORT                        R15 K58 [UDim.new]
      128 LOADN                            R16 1
      129 LOADN                            R17 0
      130 CALL                             R15 2 1
      131 SETTABLEKS                       R15 R14 K39 ["width"]
      133 FASTCALL1                        MATH_DEG R2 ; [+3]
      134 MOVE                             R19 R2
      135 GETIMPORT                        R18 K62 [math.deg]
      137 CALL                             R18 1 1
      138 MULK                             R17 R18 K59 [100]
      139 FASTCALL1                        MATH_ROUND R17 ; [+2]
      140 GETIMPORT                        R16 K64 [math.round]
      142 CALL                             R16 1 1
      143 DIVK                             R15 R16 K59 [100]
      144 SETTABLEKS                       R15 R14 K41 ["value"]
      146 GETTABLEKS                       R15 R0 K65 ["IsParameterized"]
      148 JUMPIF                           R15 ; [+4]
      149 GETTABLEKS                       R15 R0 K30 ["IsDisabled"]
      151 JUMPIF                           R15 ; [+1]
      152 LOADB                            R15 0
      153 SETTABLEKS                       R15 R14 K22 ["isDisabled"]
      155 GETUPVAL                         R15 5
      156 GETTABLEKS                       R15 R15 K66 ["NUMBER_STEP"]
      158 GETTABLEKS                       R15 R15 K67 ["Angle"]
      160 SETTABLEKS                       R15 R14 K46 ["step"]
      162 SETTABLEKS                       R1 R14 K47 ["formatAsString"]
      164 GETUPVAL                         R15 5
      165 GETTABLEKS                       R15 R15 K68 ["NUMBER_PRECISION"]
      167 GETTABLEKS                       R15 R15 K67 ["Angle"]
      169 SETTABLEKS                       R15 R14 K48 ["precision"]
      171 GETUPVAL                         R15 2
      172 GETTABLEKS                       R15 R15 K53 ["Enums"]
      174 GETTABLEKS                       R15 R15 K69 ["NumberInputControlsVariant"]
      176 GETTABLEKS                       R15 R15 K70 ["None"]
      178 SETTABLEKS                       R15 R14 K49 ["controlsVariant"]
      180 SETTABLEKS                       R3 R14 K50 ["onChanged"]
      182 GETUPVAL                         R15 6
      183 GETTABLEKS                       R15 R15 K71 ["On"]
      185 SETTABLEKS                       R15 R14 K51 ["scrubBehavior"]
      187 CALL                             R12 2 1
      188 SETTABLEKS                       R12 R11 K35 ["Control"]
      190 CALL                             R8 3 1
      191 JUMP                             ; [+78]
      192 GETUPVAL                         R8 0
      193 GETTABLEKS                       R8 R8 K5 ["createElement"]
      195 GETUPVAL                         R9 2
      196 GETTABLEKS                       R9 R9 K37 ["NumberInput"]
      198 DUPTABLE                         R10 K72 [{["size"], ["width"], ["label"] = "", ["value"], ["isDisabled"], ["minimum"] = -180, ["maximum"] = 180, ["step"], ["formatAsString"], ["LayoutOrder"] = 2, ["precision"], ["controlsVariant"], ["onChanged"], ["scrubBehavior"]}]
      199 GETUPVAL                         R11 2
      200 GETTABLEKS                       R11 R11 K53 ["Enums"]
      202 GETTABLEKS                       R11 R11 K54 ["InputSize"]
      204 GETTABLEKS                       R11 R11 K55 ["XSmall"]
      206 SETTABLEKS                       R11 R10 K38 ["size"]
      208 GETIMPORT                        R11 K58 [UDim.new]
      210 LOADN                            R12 0
      211 LOADN                            R13 90
      212 CALL                             R11 2 1
      213 SETTABLEKS                       R11 R10 K39 ["width"]
      215 FASTCALL1                        MATH_DEG R2 ; [+3]
      216 MOVE                             R15 R2
      217 GETIMPORT                        R14 K62 [math.deg]
      219 CALL                             R14 1 1
      220 MULK                             R13 R14 K59 [100]
      221 FASTCALL1                        MATH_ROUND R13 ; [+2]
      222 GETIMPORT                        R12 K64 [math.round]
      224 CALL                             R12 1 1
      225 DIVK                             R11 R12 K59 [100]
      226 SETTABLEKS                       R11 R10 K41 ["value"]
      228 GETTABLEKS                       R11 R0 K65 ["IsParameterized"]
      230 JUMPIF                           R11 ; [+4]
      231 GETTABLEKS                       R11 R0 K30 ["IsDisabled"]
      233 JUMPIF                           R11 ; [+1]
      234 LOADB                            R11 0
      235 SETTABLEKS                       R11 R10 K22 ["isDisabled"]
      237 GETUPVAL                         R11 5
      238 GETTABLEKS                       R11 R11 K66 ["NUMBER_STEP"]
      240 GETTABLEKS                       R11 R11 K67 ["Angle"]
      242 SETTABLEKS                       R11 R10 K46 ["step"]
      244 SETTABLEKS                       R1 R10 K47 ["formatAsString"]
      246 GETUPVAL                         R11 5
      247 GETTABLEKS                       R11 R11 K68 ["NUMBER_PRECISION"]
      249 GETTABLEKS                       R11 R11 K67 ["Angle"]
      251 SETTABLEKS                       R11 R10 K48 ["precision"]
      253 GETUPVAL                         R11 2
      254 GETTABLEKS                       R11 R11 K53 ["Enums"]
      256 GETTABLEKS                       R11 R11 K69 ["NumberInputControlsVariant"]
      258 GETTABLEKS                       R11 R11 K70 ["None"]
      260 SETTABLEKS                       R11 R10 K49 ["controlsVariant"]
      262 SETTABLEKS                       R3 R10 K50 ["onChanged"]
      264 GETUPVAL                         R11 6
      265 GETTABLEKS                       R11 R11 K71 ["On"]
      267 SETTABLEKS                       R11 R10 K51 ["scrubBehavior"]
      269 CALL                             R8 2 1
      270 SETTABLEKS                       R8 R7 K17 ["Input"]
      272 GETUPVAL                         R8 0
      273 GETTABLEKS                       R8 R8 K5 ["createElement"]
      275 LOADK                            R9 K73 ["Folder"]
      276 NEWTABLE                         R10 0 0
      278 GETTABLEKS                       R11 R0 K74 ["children"]
      280 CALL                             R8 3 1
      281 SETTABLEKS                       R8 R7 K18 ["PinChildren"]
      283 CALL                             R4 3 -1
      284 RETURN                           R4 -1

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
       61 GETTABLEKS                       R8 R3 K19 ["getFFlagAnimGraphUINodeFieldLayout"]
       63 DUPCLOSURE                       R9 K20 [PROTO_2]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R7
       71 RETURN                           R9 1
