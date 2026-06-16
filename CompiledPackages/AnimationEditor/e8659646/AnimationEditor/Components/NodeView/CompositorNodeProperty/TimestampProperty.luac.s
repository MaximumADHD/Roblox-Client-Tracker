PROTO_0:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K2 [tonumber]
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [0]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["Minimum"]
        9 OR                               R4 R5 R1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["Maximum"]
       13 OR                               R5 R6 R1
       14 FASTCALL3                        MATH_CLAMP R1 R4 R5
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K7 [math.clamp]
       19 CALL                             R2 3 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K8 ["OnChanged"]
       23 JUMPIFEQKNIL                     R3 ; [+6]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K8 ["OnChanged"]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["formatTimestamp"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["createElement"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["View"]
       17 DUPTABLE                         R5 K7 [{"tag", "LayoutOrder", "testId"}]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K8 ["Hooks"]
       21 GETTABLEKS                       R6 R6 K9 ["useDefaultTags"]
       23 GETTABLEKS                       R7 R0 K10 ["tags"]
       25 LOADK                            R8 K11 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K4 ["tag"]
       29 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       31 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       33 GETTABLEKS                       R6 R0 K6 ["testId"]
       35 SETTABLEKS                       R6 R5 K6 ["testId"]
       37 DUPTABLE                         R6 K15 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K2 ["createElement"]
       41 GETUPVAL                         R8 3
       42 DUPTABLE                         R9 K18 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       43 LOADK                            R10 K19 ["text-body-small text-align-x-left auto-xy fill text-truncate-split"]
       44 SETTABLEKS                       R10 R9 K4 ["tag"]
       46 GETTABLEKS                       R10 R0 K20 ["Label"]
       48 SETTABLEKS                       R10 R9 K16 ["Text"]
       50 LOADN                            R10 1
       51 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       53 GETTABLEKS                       R11 R0 K22 ["IsDisabled"]
       55 ORK                              R10 R11 K21 [False]
       56 SETTABLEKS                       R10 R9 K17 ["isDisabled"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K12 ["CompositorNodeInputLabel"]
       61 GETUPVAL                         R8 4
       62 CALL                             R8 0 1
       63 JUMPIFNOT                        R8 ; [+116]
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K2 ["createElement"]
       67 GETUPVAL                         R8 5
       68 DUPTABLE                         R9 K25 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       69 GETTABLEKS                       R10 R0 K23 ["IsParameterOverridden"]
       71 SETTABLEKS                       R10 R9 K23 ["IsParameterOverridden"]
       73 GETTABLEKS                       R10 R0 K24 ["OnParameterOverrideRevert"]
       75 SETTABLEKS                       R10 R9 K24 ["OnParameterOverrideRevert"]
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K2 ["createElement"]
       80 GETUPVAL                         R11 2
       81 GETTABLEKS                       R11 R11 K26 ["NumberInput"]
       83 DUPTABLE                         R12 K37 [{"size", "width", "label", "value", "isDisabled", "LayoutOrder", "precision", "step", "isScrubbable", "formatAsString", "onChanged", "controlsVariant"}]
       84 GETUPVAL                         R13 2
       85 GETTABLEKS                       R13 R13 K38 ["Enums"]
       87 GETTABLEKS                       R13 R13 K39 ["InputSize"]
       89 GETTABLEKS                       R13 R13 K40 ["XSmall"]
       91 SETTABLEKS                       R13 R12 K27 ["size"]
       93 GETTABLEKS                       R14 R0 K23 ["IsParameterOverridden"]
       95 JUMPIFNOT                        R14 ; [+4]
       96 GETUPVAL                         R13 6
       97 GETTABLEKS                       R13 R13 K41 ["PROPERTY_PARAMETER_OVERRIDDEN_WIDTH_UDIM"]
       99 JUMP                             ; [+5]
      100 GETIMPORT                        R13 K44 [UDim.new]
      102 LOADN                            R14 0
      103 LOADN                            R15 90
      104 CALL                             R13 2 1
      105 SETTABLEKS                       R13 R12 K28 ["width"]
      107 LOADK                            R13 K45 [""]
      108 SETTABLEKS                       R13 R12 K29 ["label"]
      110 GETTABLEKS                       R15 R0 K47 ["Value"]
      112 FASTCALL1                        TONUMBER R15 ; [+2]
      113 GETIMPORT                        R14 K49 [tonumber]
      115 CALL                             R14 1 1
      116 ORK                              R13 R14 K46 [0]
      117 SETTABLEKS                       R13 R12 K30 ["value"]
      119 GETTABLEKS                       R13 R0 K22 ["IsDisabled"]
      121 SETTABLEKS                       R13 R12 K17 ["isDisabled"]
      123 LOADN                            R13 2
      124 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      126 GETUPVAL                         R14 7
      127 CALL                             R14 0 1
      128 JUMPIFNOT                        R14 ; [+6]
      129 GETUPVAL                         R13 8
      130 GETTABLEKS                       R13 R13 K50 ["NUMBER_PRECISION"]
      132 GETTABLEKS                       R13 R13 K51 ["Timestamp"]
      134 JUMP                             ; [+5]
      135 GETUPVAL                         R13 8
      136 GETTABLEKS                       R13 R13 K50 ["NUMBER_PRECISION"]
      138 GETTABLEKS                       R13 R13 K52 ["Float"]
      140 SETTABLEKS                       R13 R12 K31 ["precision"]
      142 GETUPVAL                         R14 7
      143 CALL                             R14 0 1
      144 JUMPIFNOT                        R14 ; [+6]
      145 GETUPVAL                         R13 8
      146 GETTABLEKS                       R13 R13 K53 ["NUMBER_STEP"]
      148 GETTABLEKS                       R13 R13 K51 ["Timestamp"]
      150 JUMP                             ; [+1]
      151 LOADK                            R13 K54 [0.005]
      152 SETTABLEKS                       R13 R12 K32 ["step"]
      154 LOADB                            R13 1
      155 SETTABLEKS                       R13 R12 K33 ["isScrubbable"]
      157 SETTABLEKS                       R1 R12 K34 ["formatAsString"]
      159 GETUPVAL                         R14 9
      160 CALL                             R14 0 1
      161 JUMPIFNOT                        R14 ; [+2]
      162 MOVE                             R13 R2
      163 JUMP                             ; [+2]
      164 GETTABLEKS                       R13 R0 K55 ["OnChanged"]
      166 SETTABLEKS                       R13 R12 K35 ["onChanged"]
      168 GETUPVAL                         R13 2
      169 GETTABLEKS                       R13 R13 K38 ["Enums"]
      171 GETTABLEKS                       R13 R13 K56 ["NumberInputControlsVariant"]
      173 GETTABLEKS                       R13 R13 K57 ["None"]
      175 SETTABLEKS                       R13 R12 K36 ["controlsVariant"]
      177 CALL                             R10 2 -1
      178 CALL                             R7 -1 1
      179 JUMP                             ; [+97]
      180 GETUPVAL                         R7 0
      181 GETTABLEKS                       R7 R7 K2 ["createElement"]
      183 GETUPVAL                         R8 2
      184 GETTABLEKS                       R8 R8 K26 ["NumberInput"]
      186 DUPTABLE                         R9 K37 [{"size", "width", "label", "value", "isDisabled", "LayoutOrder", "precision", "step", "isScrubbable", "formatAsString", "onChanged", "controlsVariant"}]
      187 GETUPVAL                         R10 2
      188 GETTABLEKS                       R10 R10 K38 ["Enums"]
      190 GETTABLEKS                       R10 R10 K39 ["InputSize"]
      192 GETTABLEKS                       R10 R10 K40 ["XSmall"]
      194 SETTABLEKS                       R10 R9 K27 ["size"]
      196 GETIMPORT                        R10 K44 [UDim.new]
      198 LOADN                            R11 0
      199 LOADN                            R12 90
      200 CALL                             R10 2 1
      201 SETTABLEKS                       R10 R9 K28 ["width"]
      203 LOADK                            R10 K45 [""]
      204 SETTABLEKS                       R10 R9 K29 ["label"]
      206 GETTABLEKS                       R12 R0 K47 ["Value"]
      208 FASTCALL1                        TONUMBER R12 ; [+2]
      209 GETIMPORT                        R11 K49 [tonumber]
      211 CALL                             R11 1 1
      212 ORK                              R10 R11 K46 [0]
      213 SETTABLEKS                       R10 R9 K30 ["value"]
      215 GETTABLEKS                       R10 R0 K58 ["IsParameterized"]
      217 JUMPIF                           R10 ; [+2]
      218 GETTABLEKS                       R10 R0 K22 ["IsDisabled"]
      220 SETTABLEKS                       R10 R9 K17 ["isDisabled"]
      222 LOADN                            R10 2
      223 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      225 GETUPVAL                         R11 7
      226 CALL                             R11 0 1
      227 JUMPIFNOT                        R11 ; [+6]
      228 GETUPVAL                         R10 8
      229 GETTABLEKS                       R10 R10 K50 ["NUMBER_PRECISION"]
      231 GETTABLEKS                       R10 R10 K51 ["Timestamp"]
      233 JUMP                             ; [+5]
      234 GETUPVAL                         R10 8
      235 GETTABLEKS                       R10 R10 K50 ["NUMBER_PRECISION"]
      237 GETTABLEKS                       R10 R10 K52 ["Float"]
      239 SETTABLEKS                       R10 R9 K31 ["precision"]
      241 GETUPVAL                         R11 7
      242 CALL                             R11 0 1
      243 JUMPIFNOT                        R11 ; [+6]
      244 GETUPVAL                         R10 8
      245 GETTABLEKS                       R10 R10 K53 ["NUMBER_STEP"]
      247 GETTABLEKS                       R10 R10 K51 ["Timestamp"]
      249 JUMP                             ; [+1]
      250 LOADK                            R10 K54 [0.005]
      251 SETTABLEKS                       R10 R9 K32 ["step"]
      253 LOADB                            R10 1
      254 SETTABLEKS                       R10 R9 K33 ["isScrubbable"]
      256 SETTABLEKS                       R1 R9 K34 ["formatAsString"]
      258 GETUPVAL                         R11 9
      259 CALL                             R11 0 1
      260 JUMPIFNOT                        R11 ; [+2]
      261 MOVE                             R10 R2
      262 JUMP                             ; [+2]
      263 GETTABLEKS                       R10 R0 K55 ["OnChanged"]
      265 SETTABLEKS                       R10 R9 K35 ["onChanged"]
      267 GETUPVAL                         R10 2
      268 GETTABLEKS                       R10 R10 K38 ["Enums"]
      270 GETTABLEKS                       R10 R10 K56 ["NumberInputControlsVariant"]
      272 GETTABLEKS                       R10 R10 K57 ["None"]
      274 SETTABLEKS                       R10 R9 K36 ["controlsVariant"]
      276 CALL                             R7 2 1
      277 SETTABLEKS                       R7 R6 K13 ["Input"]
      279 GETUPVAL                         R7 0
      280 GETTABLEKS                       R7 R7 K2 ["createElement"]
      282 LOADK                            R8 K59 ["Folder"]
      283 NEWTABLE                         R9 0 0
      285 GETTABLEKS                       R10 R0 K60 ["children"]
      287 CALL                             R7 3 1
      288 SETTABLEKS                       R7 R6 K14 ["PinChildren"]
      290 CALL                             R3 3 -1
      291 RETURN                           R3 -1

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
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["NodeView"]
       27 GETTABLEKS                       R4 R4 K12 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R4 K13 ["InputPropertyField"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["NodeGraphing"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Components"]
       43 GETTABLEKS                       R6 R6 K11 ["NodeView"]
       45 GETTABLEKS                       R6 R6 K12 ["CompositorNodeProperty"]
       47 GETTABLEKS                       R6 R6 K15 ["PropertyConstants"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K10 ["Components"]
       54 GETTABLEKS                       R7 R7 K11 ["NodeView"]
       56 GETTABLEKS                       R7 R7 K12 ["CompositorNodeProperty"]
       58 GETTABLEKS                       R7 R7 K16 ["PropertyLabel"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K10 ["Components"]
       65 GETTABLEKS                       R8 R8 K11 ["NodeView"]
       67 GETTABLEKS                       R8 R8 K12 ["CompositorNodeProperty"]
       69 GETTABLEKS                       R8 R8 K17 ["PropertyUtils"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K8 ["Parent"]
       76 GETTABLEKS                       R9 R9 K18 ["React"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K19 ["Flags"]
       83 GETTABLEKS                       R10 R10 K20 ["getFFlagAnimGraphFloatStep003"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K19 ["Flags"]
       90 GETTABLEKS                       R11 R11 K21 ["getFFlagAnimGraphUIClampClipTrim"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K19 ["Flags"]
       97 GETTABLEKS                       R12 R12 K22 ["getFFlagAnimGraphUILetAllParametersOverridable"]
       99 CALL                             R11 1 1
      100 DUPCLOSURE                       R12 K23 [PROTO_1]
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R10
      111 RETURN                           R12 1
