PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R4 R2 K0 ["icon"]
        8 JUMPIFNOT                        R4 ; [+6]
        9 GETTABLEKS                       R5 R2 K0 ["icon"]
       11 JUMPIFNOTEQKS                    R5 K1 [""] ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 LOADB                            R5 0
       16 GETTABLEKS                       R6 R2 K2 ["action"]
       18 JUMPIFEQKNIL                     R6 ; [+9]
       20 GETTABLEKS                       R6 R2 K2 ["action"]
       22 GETTABLEKS                       R6 R6 K3 ["text"]
       24 JUMPIFNOTEQKS                    R6 K1 [""] ; [+2]
       26 LOADB                            R5 0 +1
       27 LOADB                            R5 1
       28 MOVE                             R6 R5
       29 JUMPIF                           R6 ; [+6]
       30 GETTABLEKS                       R7 R2 K4 ["onClose"]
       32 JUMPIFNOTEQKNIL                  R7 ; [+2]
       34 LOADB                            R6 0 +1
       35 LOADB                            R6 1
       36 OR                               R7 R4 R6
       37 GETUPVAL                         R8 3
       38 LOADN                            R9 115
       39 CALL                             R8 1 1
       40 GETUPVAL                         R9 3
       41 JUMPIFNOT                        R4 ; [+2]
       42 LOADN                            R10 48
       43 JUMP                             ; [+1]
       44 LOADN                            R10 16
       45 CALL                             R9 1 1
       46 GETTABLEKS                       R12 R2 K0 ["icon"]
       48 FASTCALL1                        TYPEOF R12 ; [+2]
       49 GETIMPORT                        R11 K6 [typeof]
       51 CALL                             R11 1 1
       52 JUMPIFNOTEQKS                    R11 K7 ["string"] ; [+12]
       54 DUPTABLE                         R10 K10 [{"name", "variant"}]
       55 GETTABLEKS                       R11 R2 K0 ["icon"]
       57 SETTABLEKS                       R11 R10 K8 ["name"]
       59 GETUPVAL                         R11 4
       60 GETTABLEKS                       R11 R11 K11 ["Regular"]
       62 SETTABLEKS                       R11 R10 K9 ["variant"]
       64 JUMP                             ; [+2]
       65 GETTABLEKS                       R10 R2 K0 ["icon"]
       67 GETTABLEKS                       R11 R3 K12 ["Typography"]
       69 GETTABLEKS                       R11 R11 K13 ["CaptionLarge"]
       71 GETTABLEKS                       R11 R11 K14 ["FontSize"]
       73 GETTABLEKS                       R12 R3 K12 ["Typography"]
       75 GETTABLEKS                       R12 R12 K13 ["CaptionLarge"]
       77 GETTABLEKS                       R12 R12 K15 ["LineHeight"]
       79 MUL                              R14 R11 R12
       80 MULK                             R13 R14 K16 [2]
       81 GETTABLEKS                       R14 R2 K2 ["action"]
       83 GETUPVAL                         R15 5
       84 GETTABLEKS                       R15 R15 K17 ["createElement"]
       86 GETUPVAL                         R16 6
       87 GETUPVAL                         R17 7
       88 MOVE                             R18 R2
       89 DUPTABLE                         R19 K22 [{"Size", "sizeConstraint", "tag", "ref"}]
       90 JUMPIFNOT                        R6 ; [+6]
       91 GETIMPORT                        R20 K25 [UDim2.fromOffset]
       93 MOVE                             R21 R8
       94 LOADN                            R22 0
       95 CALL                             R20 2 1
       96 JUMP                             ; [+5]
       97 GETIMPORT                        R20 K25 [UDim2.fromOffset]
       99 LOADN                            R21 0
      100 LOADN                            R22 0
      101 CALL                             R20 2 1
      102 SETTABLEKS                       R20 R19 K18 ["Size"]
      104 JUMPIFNOT                        R6 ; [+2]
      105 LOADNIL                          R20
      106 JUMP                             ; [+15]
      107 DUPTABLE                         R20 K28 [{"MinSize", "MaxSize"}]
      108 GETIMPORT                        R21 K31 [Vector2.new]
      110 LOADN                            R22 0
      111 LOADN                            R23 0
      112 CALL                             R21 2 1
      113 SETTABLEKS                       R21 R20 K26 ["MinSize"]
      115 GETIMPORT                        R21 K31 [Vector2.new]
      117 MOVE                             R22 R9
      118 LOADK                            R23 K32 [∞]
      119 CALL                             R21 2 1
      120 SETTABLEKS                       R21 R20 K27 ["MaxSize"]
      122 SETTABLEKS                       R20 R19 K19 ["sizeConstraint"]
      124 NEWTABLE                         R20 8 0
      126 LOADB                            R21 1
      127 SETTABLEKS                       R21 R20 K33 ["align-y-center padding-y-xsmall radius-medium row align-y-center gap-large bg-system-contrast"]
      129 NOT                              R21 R7
      130 SETTABLEKS                       R21 R20 K34 ["padding-left-large"]
      132 SETTABLEKS                       R7 R20 K35 ["padding-left-medium"]
      134 NOT                              R21 R6
      135 SETTABLEKS                       R21 R20 K36 ["padding-right-large auto-xy"]
      137 SETTABLEKS                       R6 R20 K37 ["padding-right-small auto-y"]
      139 SETTABLEKS                       R20 R19 K20 ["tag"]
      141 SETTABLEKS                       R1 R19 K21 ["ref"]
      143 CALL                             R17 2 1
      144 GETUPVAL                         R18 5
      145 GETTABLEKS                       R18 R18 K17 ["createElement"]
      147 GETUPVAL                         R19 8
      148 GETTABLEKS                       R19 R19 K38 ["Provider"]
      150 DUPTABLE                         R20 K40 [{"value"}]
      151 GETUPVAL                         R21 9
      152 SETTABLEKS                       R21 R20 K39 ["value"]
      154 DUPTABLE                         R21 K43 [{"Content", "Buttons"}]
      155 GETUPVAL                         R22 5
      156 GETTABLEKS                       R22 R22 K17 ["createElement"]
      158 GETUPVAL                         R23 6
      159 DUPTABLE                         R24 K46 [{"LayoutOrder", "tag", "testId"}]
      160 LOADN                            R25 1
      161 SETTABLEKS                       R25 R24 K44 ["LayoutOrder"]
      163 LOADK                            R25 K47 ["auto-xy align-y-center padding-y-small row fill gap-small"]
      164 SETTABLEKS                       R25 R24 K20 ["tag"]
      166 LOADK                            R26 K48 ["%*--content"]
      167 GETTABLEKS                       R28 R2 K45 ["testId"]
      169 NAMECALL                         R26 R26 K49 ["format"]
      171 CALL                             R26 2 1
      172 MOVE                             R25 R26
      173 SETTABLEKS                       R25 R24 K45 ["testId"]
      175 DUPTABLE                         R25 K52 [{"Icon", "Title"}]
      176 JUMPIFNOT                        R4 ; [+32]
      177 GETUPVAL                         R26 5
      178 GETTABLEKS                       R26 R26 K17 ["createElement"]
      180 GETUPVAL                         R27 10
      181 GETUPVAL                         R28 11
      182 GETTABLEKS                       R28 R28 K53 ["join"]
      184 MOVE                             R29 R10
      185 DUPTABLE                         R30 K55 [{"style", "LayoutOrder", "testId"}]
      186 GETTABLEKS                       R31 R3 K56 ["Inverse"]
      188 GETTABLEKS                       R31 R31 K41 ["Content"]
      190 GETTABLEKS                       R31 R31 K57 ["Emphasis"]
      192 SETTABLEKS                       R31 R30 K54 ["style"]
      194 LOADN                            R31 1
      195 SETTABLEKS                       R31 R30 K44 ["LayoutOrder"]
      197 LOADK                            R32 K58 ["%*--icon"]
      198 GETTABLEKS                       R34 R2 K45 ["testId"]
      200 NAMECALL                         R32 R32 K49 ["format"]
      202 CALL                             R32 2 1
      203 MOVE                             R31 R32
      204 SETTABLEKS                       R31 R30 K45 ["testId"]
      206 CALL                             R28 2 -1
      207 CALL                             R26 -1 1
      208 JUMP                             ; [+1]
      209 LOADNIL                          R26
      210 SETTABLEKS                       R26 R25 K50 ["Icon"]
      212 GETUPVAL                         R26 5
      213 GETTABLEKS                       R26 R26 K17 ["createElement"]
      215 GETUPVAL                         R27 12
      216 DUPTABLE                         R28 K60 [{"LayoutOrder", "Text", "sizeConstraint", "tag", "testId"}]
      217 LOADN                            R29 2
      218 SETTABLEKS                       R29 R28 K44 ["LayoutOrder"]
      220 GETTABLEKS                       R29 R2 K61 ["title"]
      222 SETTABLEKS                       R29 R28 K59 ["Text"]
      224 DUPTABLE                         R29 K28 [{"MinSize", "MaxSize"}]
      225 GETIMPORT                        R30 K31 [Vector2.new]
      227 LOADN                            R31 0
      228 LOADN                            R32 0
      229 CALL                             R30 2 1
      230 SETTABLEKS                       R30 R29 K26 ["MinSize"]
      232 GETIMPORT                        R30 K31 [Vector2.new]
      234 LOADK                            R31 K32 [∞]
      235 MOVE                             R32 R13
      236 CALL                             R30 2 1
      237 SETTABLEKS                       R30 R29 K27 ["MaxSize"]
      239 SETTABLEKS                       R29 R28 K19 ["sizeConstraint"]
      241 LOADK                            R29 K62 ["auto-xy fill text-align-x-left text-caption-large content-inverse-emphasis text-truncate-split text-wrap"]
      242 SETTABLEKS                       R29 R28 K20 ["tag"]
      244 LOADK                            R30 K63 ["%*--title"]
      245 GETTABLEKS                       R32 R2 K45 ["testId"]
      247 NAMECALL                         R30 R30 K49 ["format"]
      249 CALL                             R30 2 1
      250 MOVE                             R29 R30
      251 SETTABLEKS                       R29 R28 K45 ["testId"]
      253 CALL                             R26 2 1
      254 SETTABLEKS                       R26 R25 K51 ["Title"]
      256 CALL                             R22 3 1
      257 SETTABLEKS                       R22 R21 K41 ["Content"]
      259 JUMPIFNOT                        R6 ; [+105]
      260 GETUPVAL                         R22 5
      261 GETTABLEKS                       R22 R22 K17 ["createElement"]
      263 GETUPVAL                         R23 6
      264 DUPTABLE                         R24 K46 [{"LayoutOrder", "tag", "testId"}]
      265 LOADN                            R25 2
      266 SETTABLEKS                       R25 R24 K44 ["LayoutOrder"]
      268 LOADK                            R25 K64 ["auto-xy align-y-center row gap-xsmall"]
      269 SETTABLEKS                       R25 R24 K20 ["tag"]
      271 LOADK                            R26 K65 ["%*--buttons"]
      272 GETTABLEKS                       R28 R2 K45 ["testId"]
      274 NAMECALL                         R26 R26 K49 ["format"]
      276 CALL                             R26 2 1
      277 MOVE                             R25 R26
      278 SETTABLEKS                       R25 R24 K45 ["testId"]
      280 DUPTABLE                         R25 K68 [{"Action", "CloseAffordance"}]
      281 JUMPIFNOT                        R5 ; [+38]
      282 GETUPVAL                         R26 5
      283 GETTABLEKS                       R26 R26 K17 ["createElement"]
      285 GETUPVAL                         R27 12
      286 DUPTABLE                         R28 K71 [{"LayoutOrder", "onActivated", "stateLayer", "Text", "tag", "testId"}]
      287 LOADN                            R29 1
      288 SETTABLEKS                       R29 R28 K44 ["LayoutOrder"]
      290 GETTABLEKS                       R29 R14 K69 ["onActivated"]
      292 SETTABLEKS                       R29 R28 K69 ["onActivated"]
      294 DUPTABLE                         R29 K73 [{"mode"}]
      295 GETUPVAL                         R30 13
      296 GETTABLEKS                       R30 R30 K56 ["Inverse"]
      298 SETTABLEKS                       R30 R29 K72 ["mode"]
      300 SETTABLEKS                       R29 R28 K70 ["stateLayer"]
      302 GETTABLEKS                       R29 R14 K3 ["text"]
      304 SETTABLEKS                       R29 R28 K59 ["Text"]
      306 LOADK                            R29 K74 ["auto-xy padding-small radius-medium text-label-medium content-inverse-link"]
      307 SETTABLEKS                       R29 R28 K20 ["tag"]
      309 LOADK                            R30 K75 ["%*--action"]
      310 GETTABLEKS                       R32 R2 K45 ["testId"]
      312 NAMECALL                         R30 R30 K49 ["format"]
      314 CALL                             R30 2 1
      315 MOVE                             R29 R30
      316 SETTABLEKS                       R29 R28 K45 ["testId"]
      318 CALL                             R26 2 1
      319 JUMP                             ; [+1]
      320 LOADNIL                          R26
      321 SETTABLEKS                       R26 R25 K66 ["Action"]
      323 GETTABLEKS                       R27 R2 K4 ["onClose"]
      325 JUMPIFEQKNIL                     R27 ; [+34]
      327 GETUPVAL                         R26 5
      328 GETTABLEKS                       R26 R26 K17 ["createElement"]
      330 GETUPVAL                         R27 14
      331 DUPTABLE                         R28 K77 [{"LayoutOrder", "onActivated", "size", "variant", "testId"}]
      332 LOADN                            R29 2
      333 SETTABLEKS                       R29 R28 K44 ["LayoutOrder"]
      335 GETTABLEKS                       R29 R2 K4 ["onClose"]
      337 SETTABLEKS                       R29 R28 K69 ["onActivated"]
      339 GETUPVAL                         R29 15
      340 GETTABLEKS                       R29 R29 K78 ["Small"]
      342 SETTABLEKS                       R29 R28 K76 ["size"]
      344 GETUPVAL                         R29 16
      345 GETTABLEKS                       R29 R29 K79 ["Utility"]
      347 SETTABLEKS                       R29 R28 K9 ["variant"]
      349 LOADK                            R30 K80 ["%*--close-affordance"]
      350 GETTABLEKS                       R32 R2 K45 ["testId"]
      352 NAMECALL                         R30 R30 K49 ["format"]
      354 CALL                             R30 2 1
      355 MOVE                             R29 R30
      356 SETTABLEKS                       R29 R28 K45 ["testId"]
      358 CALL                             R26 2 1
      359 JUMP                             ; [+1]
      360 LOADNIL                          R26
      361 SETTABLEKS                       R26 R25 K67 ["CloseAffordance"]
      363 CALL                             R22 3 1
      364 JUMP                             ; [+1]
      365 LOADNIL                          R22
      366 SETTABLEKS                       R22 R21 K42 ["Buttons"]
      368 CALL                             R18 3 -1
      369 CALL                             R15 -1 -1
      370 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R2 K10 ["IconVariant"]
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R7 R7 K12 ["CloseAffordance"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R0 K13 ["Enums"]
       37 GETTABLEKS                       R8 R8 K14 ["CloseAffordanceVariant"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Enums"]
       44 GETTABLEKS                       R9 R9 K15 ["ColorMode"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R0 K11 ["Components"]
       51 GETTABLEKS                       R10 R10 K16 ["Icon"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R11 R0 K13 ["Enums"]
       58 GETTABLEKS                       R11 R11 K17 ["InputSize"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K6 [require]
       63 GETTABLEKS                       R12 R0 K18 ["Providers"]
       65 GETTABLEKS                       R12 R12 K19 ["Style"]
       67 GETTABLEKS                       R12 R12 K20 ["PresentationContext"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K6 [require]
       72 GETTABLEKS                       R13 R0 K13 ["Enums"]
       74 GETTABLEKS                       R13 R13 K21 ["StateLayerMode"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K6 [require]
       79 GETTABLEKS                       R14 R0 K11 ["Components"]
       81 GETTABLEKS                       R14 R14 K22 ["Text"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K6 [require]
       86 GETTABLEKS                       R15 R0 K11 ["Components"]
       88 GETTABLEKS                       R15 R15 K23 ["Types"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K6 [require]
       93 GETTABLEKS                       R16 R0 K11 ["Components"]
       95 GETTABLEKS                       R16 R16 K24 ["View"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R17 R0 K25 ["Utility"]
      102 GETTABLEKS                       R17 R17 K26 ["useScaledValue"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R18 R0 K18 ["Providers"]
      109 GETTABLEKS                       R18 R18 K19 ["Style"]
      111 GETTABLEKS                       R18 R18 K27 ["useTokens"]
      113 CALL                             R17 1 1
      114 GETIMPORT                        R18 K6 [require]
      116 GETTABLEKS                       R19 R0 K25 ["Utility"]
      118 GETTABLEKS                       R19 R19 K28 ["withCommonProps"]
      120 CALL                             R18 1 1
      121 GETIMPORT                        R19 K6 [require]
      123 GETTABLEKS                       R20 R0 K25 ["Utility"]
      125 GETTABLEKS                       R20 R20 K29 ["withDefaults"]
      127 CALL                             R19 1 1
      128 DUPTABLE                         R20 K31 [{"testId"}]
      129 LOADK                            R21 K32 ["--foundation-snackbar"]
      130 SETTABLEKS                       R21 R20 K30 ["testId"]
      132 DUPTABLE                         R21 K34 [{"colorMode"}]
      133 GETTABLEKS                       R22 R8 K35 ["Inverse"]
      135 SETTABLEKS                       R22 R21 K33 ["colorMode"]
      137 DUPCLOSURE                       R22 K36 [PROTO_0]
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R20
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R7
      155 GETTABLEKS                       R23 R4 K37 ["memo"]
      157 GETTABLEKS                       R24 R4 K38 ["forwardRef"]
      159 MOVE                             R25 R22
      160 CALL                             R24 1 -1
      161 CALL                             R23 -1 -1
      162 RETURN                           R23 -1
