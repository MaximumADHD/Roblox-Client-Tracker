PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 JUMPIFEQKNIL                     R1 ; [+15]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        8 DUPTABLE                         R2 K3 [{"Weight", "Clamped"}]
        9 SETTABLEKS                       R0 R2 K1 ["Weight"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["Value"]
       14 GETTABLEKS                       R3 R3 K2 ["Clamped"]
       16 SETTABLEKS                       R3 R2 K2 ["Clamped"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Value"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["Value"]
        9 GETTABLEKS                       R1 R1 K1 ["Weight"]
       11 JUMPIFNOT                        R0 ; [+9]
       12 LOADN                            R4 0
       13 LOADN                            R5 1
       14 FASTCALL3                        MATH_CLAMP R1 R4 R5
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K4 [math.clamp]
       19 CALL                             R2 3 1
       20 MOVE                             R1 R2
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K5 ["OnChanged"]
       24 JUMPIFEQKNIL                     R2 ; [+10]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K5 ["OnChanged"]
       29 DUPTABLE                         R3 K7 [{"Weight", "Clamped"}]
       30 SETTABLEKS                       R1 R3 K1 ["Weight"]
       32 SETTABLEKS                       R0 R3 K6 ["Clamped"]
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Value"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["ClampedWeightProperty needs non-nil value"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["useCallback"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R3 0 2
       19 GETTABLEKS                       R4 R0 K5 ["OnChanged"]
       21 GETTABLEKS                       R5 R0 K0 ["Value"]
       23 GETTABLEKS                       R5 R5 K6 ["Clamped"]
       25 SETLIST                          R3 R4 2 [1]
       27 CALL                             R1 2 1
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K4 ["useCallback"]
       31 NEWCLOSURE                       R3 P1
       32 CAPTURE                          VAL R0
       33 NEWTABLE                         R4 0 2
       35 GETTABLEKS                       R5 R0 K5 ["OnChanged"]
       37 GETTABLEKS                       R6 R0 K0 ["Value"]
       39 GETTABLEKS                       R6 R6 K7 ["Weight"]
       41 SETLIST                          R4 R5 2 [1]
       43 CALL                             R2 2 1
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R3 R3 K8 ["createElement"]
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R4 R4 K9 ["View"]
       50 DUPTABLE                         R5 K13 [{"tag", "LayoutOrder", "testId"}]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K14 ["Hooks"]
       54 GETTABLEKS                       R6 R6 K15 ["useDefaultTags"]
       56 GETTABLEKS                       R7 R0 K16 ["tags"]
       58 GETUPVAL                         R9 2
       59 CALL                             R9 0 1
       60 JUMPIFNOT                        R9 ; [+2]
       61 LOADK                            R8 K17 ["row auto-y gap-small size-full-700 align-y-center"]
       62 JUMP                             ; [+1]
       63 LOADK                            R8 K18 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       64 CALL                             R6 2 1
       65 SETTABLEKS                       R6 R5 K10 ["tag"]
       67 GETTABLEKS                       R6 R0 K11 ["LayoutOrder"]
       69 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
       71 GETTABLEKS                       R6 R0 K12 ["testId"]
       73 SETTABLEKS                       R6 R5 K12 ["testId"]
       75 DUPTABLE                         R6 K22 [{"CompositorNodeInputLabel", "Input", "Clamped", "PinChildren"}]
       76 GETUPVAL                         R7 0
       77 GETTABLEKS                       R7 R7 K8 ["createElement"]
       79 GETUPVAL                         R8 3
       80 DUPTABLE                         R9 K26 [{["tag"], ["Text"], ["LayoutOrder"] = 1, ["isDisabled"]}]
       81 NEWTABLE                         R10 4 0
       83 LOADB                            R11 1
       84 SETTABLEKS                       R11 R10 K27 ["fill text-body-small text-align-x-left text-truncate-split"]
       86 GETUPVAL                         R11 2
       87 CALL                             R11 0 1
       88 SETTABLEKS                       R11 R10 K28 ["auto-y"]
       90 GETUPVAL                         R12 2
       91 CALL                             R12 0 1
       92 NOT                              R11 R12
       93 SETTABLEKS                       R11 R10 K29 ["auto-xy"]
       95 SETTABLEKS                       R10 R9 K10 ["tag"]
       97 GETTABLEKS                       R10 R0 K30 ["Label"]
       99 SETTABLEKS                       R10 R9 K23 ["Text"]
      101 GETTABLEKS                       R11 R0 K32 ["IsDisabled"]
      103 ORK                              R10 R11 K31 [False]
      104 SETTABLEKS                       R10 R9 K25 ["isDisabled"]
      106 CALL                             R7 2 1
      107 SETTABLEKS                       R7 R6 K19 ["CompositorNodeInputLabel"]
      109 GETUPVAL                         R8 2
      110 CALL                             R8 0 1
      111 JUMPIFNOT                        R8 ; [+99]
      112 GETUPVAL                         R7 0
      113 GETTABLEKS                       R7 R7 K8 ["createElement"]
      115 GETUPVAL                         R8 1
      116 GETTABLEKS                       R8 R8 K9 ["View"]
      118 DUPTABLE                         R9 K36 [{["tag"] = "fill row items-stretch align-y-center auto-y", ["testId"] = "property-field-cell", ["LayoutOrder"] = 2}]
      119 DUPTABLE                         R10 K38 [{"Control"}]
      120 GETUPVAL                         R11 0
      121 GETTABLEKS                       R11 R11 K8 ["createElement"]
      123 GETUPVAL                         R12 1
      124 GETTABLEKS                       R12 R12 K39 ["NumberInput"]
      126 DUPTABLE                         R13 K53 [{["size"], ["width"], ["label"] = "", ["value"], ["precision"], ["onChanged"], ["isDisabled"], ["scrubBehavior"], ["controlsVariant"], ["minimum"], ["maximum"], ["step"] = 0.005}]
      127 GETUPVAL                         R14 1
      128 GETTABLEKS                       R14 R14 K54 ["Enums"]
      130 GETTABLEKS                       R14 R14 K55 ["InputSize"]
      132 GETTABLEKS                       R14 R14 K56 ["XSmall"]
      134 SETTABLEKS                       R14 R13 K40 ["size"]
      136 GETIMPORT                        R14 K59 [UDim.new]
      138 LOADN                            R15 1
      139 LOADN                            R16 0
      140 CALL                             R14 2 1
      141 SETTABLEKS                       R14 R13 K41 ["width"]
      143 GETTABLEKS                       R14 R0 K0 ["Value"]
      145 GETTABLEKS                       R14 R14 K7 ["Weight"]
      147 SETTABLEKS                       R14 R13 K44 ["value"]
      149 GETUPVAL                         R14 4
      150 GETTABLEKS                       R14 R14 K60 ["NUMBER_PRECISION"]
      152 GETTABLEKS                       R14 R14 K61 ["Float"]
      154 SETTABLEKS                       R14 R13 K45 ["precision"]
      156 SETTABLEKS                       R1 R13 K46 ["onChanged"]
      158 GETTABLEKS                       R15 R0 K32 ["IsDisabled"]
      160 ORK                              R14 R15 K31 [False]
      161 SETTABLEKS                       R14 R13 K25 ["isDisabled"]
      163 GETTABLEKS                       R15 R0 K0 ["Value"]
      165 GETTABLEKS                       R15 R15 K6 ["Clamped"]
      167 JUMPIFNOT                        R15 ; [+4]
      168 GETUPVAL                         R14 5
      169 GETTABLEKS                       R14 R14 K62 ["On"]
      171 JUMP                             ; [+3]
      172 GETUPVAL                         R14 5
      173 GETTABLEKS                       R14 R14 K63 ["Off"]
      175 SETTABLEKS                       R14 R13 K47 ["scrubBehavior"]
      177 GETUPVAL                         R14 1
      178 GETTABLEKS                       R14 R14 K54 ["Enums"]
      180 GETTABLEKS                       R14 R14 K64 ["NumberInputControlsVariant"]
      182 GETTABLEKS                       R14 R14 K65 ["None"]
      184 SETTABLEKS                       R14 R13 K48 ["controlsVariant"]
      186 GETTABLEKS                       R15 R0 K0 ["Value"]
      188 GETTABLEKS                       R15 R15 K6 ["Clamped"]
      190 JUMPIFNOT                        R15 ; [+2]
      191 LOADN                            R14 0
      192 JUMP                             ; [+1]
      193 LOADNIL                          R14
      194 SETTABLEKS                       R14 R13 K49 ["minimum"]
      196 GETTABLEKS                       R15 R0 K0 ["Value"]
      198 GETTABLEKS                       R15 R15 K6 ["Clamped"]
      200 JUMPIFNOT                        R15 ; [+2]
      201 LOADN                            R14 1
      202 JUMP                             ; [+1]
      203 LOADNIL                          R14
      204 SETTABLEKS                       R14 R13 K50 ["maximum"]
      206 CALL                             R11 2 1
      207 SETTABLEKS                       R11 R10 K37 ["Control"]
      209 CALL                             R7 3 1
      210 JUMP                             ; [+87]
      211 GETUPVAL                         R7 0
      212 GETTABLEKS                       R7 R7 K8 ["createElement"]
      214 GETUPVAL                         R8 1
      215 GETTABLEKS                       R8 R8 K39 ["NumberInput"]
      217 DUPTABLE                         R9 K66 [{["size"], ["width"], ["label"] = "", ["value"], ["LayoutOrder"] = 2, ["precision"], ["onChanged"], ["isDisabled"], ["scrubBehavior"], ["controlsVariant"], ["minimum"], ["maximum"], ["step"] = 0.005}]
      218 GETUPVAL                         R10 1
      219 GETTABLEKS                       R10 R10 K54 ["Enums"]
      221 GETTABLEKS                       R10 R10 K55 ["InputSize"]
      223 GETTABLEKS                       R10 R10 K56 ["XSmall"]
      225 SETTABLEKS                       R10 R9 K40 ["size"]
      227 GETIMPORT                        R10 K59 [UDim.new]
      229 LOADN                            R11 0
      230 LOADN                            R12 90
      231 CALL                             R10 2 1
      232 SETTABLEKS                       R10 R9 K41 ["width"]
      234 GETTABLEKS                       R10 R0 K0 ["Value"]
      236 GETTABLEKS                       R10 R10 K7 ["Weight"]
      238 SETTABLEKS                       R10 R9 K44 ["value"]
      240 GETUPVAL                         R10 4
      241 GETTABLEKS                       R10 R10 K60 ["NUMBER_PRECISION"]
      243 GETTABLEKS                       R10 R10 K61 ["Float"]
      245 SETTABLEKS                       R10 R9 K45 ["precision"]
      247 SETTABLEKS                       R1 R9 K46 ["onChanged"]
      249 GETTABLEKS                       R11 R0 K32 ["IsDisabled"]
      251 ORK                              R10 R11 K31 [False]
      252 SETTABLEKS                       R10 R9 K25 ["isDisabled"]
      254 GETTABLEKS                       R11 R0 K0 ["Value"]
      256 GETTABLEKS                       R11 R11 K6 ["Clamped"]
      258 JUMPIFNOT                        R11 ; [+4]
      259 GETUPVAL                         R10 5
      260 GETTABLEKS                       R10 R10 K62 ["On"]
      262 JUMP                             ; [+3]
      263 GETUPVAL                         R10 5
      264 GETTABLEKS                       R10 R10 K63 ["Off"]
      266 SETTABLEKS                       R10 R9 K47 ["scrubBehavior"]
      268 GETUPVAL                         R10 1
      269 GETTABLEKS                       R10 R10 K54 ["Enums"]
      271 GETTABLEKS                       R10 R10 K64 ["NumberInputControlsVariant"]
      273 GETTABLEKS                       R10 R10 K65 ["None"]
      275 SETTABLEKS                       R10 R9 K48 ["controlsVariant"]
      277 GETTABLEKS                       R11 R0 K0 ["Value"]
      279 GETTABLEKS                       R11 R11 K6 ["Clamped"]
      281 JUMPIFNOT                        R11 ; [+2]
      282 LOADN                            R10 0
      283 JUMP                             ; [+1]
      284 LOADNIL                          R10
      285 SETTABLEKS                       R10 R9 K49 ["minimum"]
      287 GETTABLEKS                       R11 R0 K0 ["Value"]
      289 GETTABLEKS                       R11 R11 K6 ["Clamped"]
      291 JUMPIFNOT                        R11 ; [+2]
      292 LOADN                            R10 1
      293 JUMP                             ; [+1]
      294 LOADNIL                          R10
      295 SETTABLEKS                       R10 R9 K50 ["maximum"]
      297 CALL                             R7 2 1
      298 SETTABLEKS                       R7 R6 K20 ["Input"]
      300 GETUPVAL                         R7 0
      301 GETTABLEKS                       R7 R7 K8 ["createElement"]
      303 GETUPVAL                         R8 6
      304 DUPTABLE                         R9 K70 [{["info"], ["updateValue"], ["LayoutOrder"] = 3}]
      305 DUPTABLE                         R10 K73 [{["type"] = "boolean", ["value"]}]
      306 GETTABLEKS                       R12 R0 K0 ["Value"]
      308 GETTABLEKS                       R12 R12 K6 ["Clamped"]
      310 ORK                              R11 R12 K31 [False]
      311 SETTABLEKS                       R11 R10 K44 ["value"]
      313 SETTABLEKS                       R10 R9 K67 ["info"]
      315 SETTABLEKS                       R2 R9 K68 ["updateValue"]
      317 CALL                             R7 2 1
      318 SETTABLEKS                       R7 R6 K6 ["Clamped"]
      320 GETUPVAL                         R7 0
      321 GETTABLEKS                       R7 R7 K8 ["createElement"]
      323 LOADK                            R8 K74 ["Folder"]
      324 NEWTABLE                         R9 0 0
      326 GETTABLEKS                       R10 R0 K75 ["children"]
      328 CALL                             R7 3 1
      329 SETTABLEKS                       R7 R6 K21 ["PinChildren"]
      331 CALL                             R3 3 -1
      332 RETURN                           R3 -1

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
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["Properties"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["NodeView"]
       41 GETTABLEKS                       R6 R6 K14 ["CompositorNodeProperty"]
       43 GETTABLEKS                       R6 R6 K15 ["PropertyLabel"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K8 ["Parent"]
       50 GETTABLEKS                       R7 R7 K16 ["React"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K17 ["Enums"]
       55 GETTABLEKS                       R7 R7 K18 ["ScrubBehavior"]
       57 GETTABLEKS                       R8 R3 K19 ["getFFlagAnimGraphUINodeFieldLayout"]
       59 GETTABLEKS                       R9 R4 K12 ["Components"]
       61 GETTABLEKS                       R9 R9 K20 ["PropertyValue"]
       63 DUPCLOSURE                       R10 K21 [PROTO_2]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R9
       71 RETURN                           R10 1
