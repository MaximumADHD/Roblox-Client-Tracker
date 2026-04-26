PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R3
        8 GETTABLEKS                       R6 R2 K0 ["severity"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R6 4
       12 GETTABLEKS                       R5 R6 K1 ["useComposedRef"]
       14 MOVE                             R6 R1
       15 CALL                             R5 1 1
       16 GETTABLEKS                       R7 R2 K2 ["link"]
       18 JUMPIFNOT                        R7 ; [+7]
       19 GETUPVAL                         R6 5
       20 GETTABLEKS                       R8 R2 K2 ["link"]
       22 GETTABLEKS                       R7 R8 K3 ["text"]
       24 CALL                             R6 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R6
       27 GETUPVAL                         R8 6
       28 GETTABLEKS                       R7 R8 K4 ["useState"]
       30 LOADB                            R8 0
       31 CALL                             R7 1 2
       32 GETUPVAL                         R10 6
       33 GETTABLEKS                       R9 R10 K5 ["useCallback"]
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          VAL R8
       37 CAPTURE                          UPVAL U7
       38 NEWTABLE                         R11 0 0
       40 CALL                             R9 2 1
       41 GETUPVAL                         R11 6
       42 GETTABLEKS                       R10 R11 K6 ["createElement"]
       44 GETUPVAL                         R11 8
       45 GETUPVAL                         R12 9
       46 MOVE                             R13 R2
       47 DUPTABLE                         R14 K11 [{"tag", "stroke", "backgroundStyle", "ref"}]
       48 GETTABLEKS                       R16 R4 K12 ["container"]
       50 GETTABLEKS                       R15 R16 K7 ["tag"]
       52 SETTABLEKS                       R15 R14 K7 ["tag"]
       54 GETTABLEKS                       R15 R4 K8 ["stroke"]
       56 SETTABLEKS                       R15 R14 K8 ["stroke"]
       58 GETTABLEKS                       R15 R4 K9 ["backgroundStyle"]
       60 SETTABLEKS                       R15 R14 K9 ["backgroundStyle"]
       62 SETTABLEKS                       R5 R14 K10 ["ref"]
       64 CALL                             R12 2 1
       65 DUPTABLE                         R13 K16 [{"HeaderRow", "Description", "Actions"}]
       66 GETUPVAL                         R15 6
       67 GETTABLEKS                       R14 R15 K6 ["createElement"]
       69 GETUPVAL                         R15 8
       70 DUPTABLE                         R16 K19 [{"LayoutOrder", "tag", "testId"}]
       71 LOADN                            R17 1
       72 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
       74 GETTABLEKS                       R18 R4 K20 ["headerRow"]
       76 GETTABLEKS                       R17 R18 K7 ["tag"]
       78 SETTABLEKS                       R17 R16 K7 ["tag"]
       80 LOADK                            R18 K21 ["%*--header"]
       81 GETTABLEKS                       R20 R2 K18 ["testId"]
       83 NAMECALL                         R18 R18 K22 ["format"]
       85 CALL                             R18 2 1
       86 MOVE                             R17 R18
       87 SETTABLEKS                       R17 R16 K18 ["testId"]
       89 DUPTABLE                         R17 K26 [{"Icon", "Content", "Close"}]
       90 GETUPVAL                         R19 6
       91 GETTABLEKS                       R18 R19 K6 ["createElement"]
       93 GETUPVAL                         R19 10
       94 DUPTABLE                         R20 K31 [{"LayoutOrder", "name", "size", "variant", "style", "testId"}]
       95 LOADN                            R21 1
       96 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
       98 GETUPVAL                         R23 11
       99 GETTABLEKS                       R22 R23 K32 ["SEVERITY_TO_ICON"]
      101 GETTABLEKS                       R23 R2 K0 ["severity"]
      103 GETTABLE                         R21 R22 R23
      104 SETTABLEKS                       R21 R20 K27 ["name"]
      106 GETUPVAL                         R22 12
      107 GETTABLEKS                       R21 R22 K33 ["Large"]
      109 SETTABLEKS                       R21 R20 K28 ["size"]
      111 GETUPVAL                         R22 13
      112 GETTABLEKS                       R21 R22 K34 ["Filled"]
      114 SETTABLEKS                       R21 R20 K29 ["variant"]
      116 GETTABLEKS                       R22 R4 K35 ["icon"]
      118 GETTABLEKS                       R21 R22 K30 ["style"]
      120 SETTABLEKS                       R21 R20 K30 ["style"]
      122 LOADK                            R22 K36 ["%*--icon"]
      123 GETTABLEKS                       R24 R2 K18 ["testId"]
      125 NAMECALL                         R22 R22 K22 ["format"]
      127 CALL                             R22 2 1
      128 MOVE                             R21 R22
      129 SETTABLEKS                       R21 R20 K18 ["testId"]
      131 CALL                             R18 2 1
      132 SETTABLEKS                       R18 R17 K23 ["Icon"]
      134 GETUPVAL                         R19 6
      135 GETTABLEKS                       R18 R19 K6 ["createElement"]
      137 GETUPVAL                         R19 8
      138 DUPTABLE                         R20 K19 [{"LayoutOrder", "tag", "testId"}]
      139 LOADN                            R21 2
      140 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      142 LOADK                            R21 K37 ["row align-y-center fill gap-xsmall auto-y"]
      143 SETTABLEKS                       R21 R20 K7 ["tag"]
      145 LOADK                            R22 K38 ["%*--content"]
      146 GETTABLEKS                       R24 R2 K18 ["testId"]
      148 NAMECALL                         R22 R22 K22 ["format"]
      150 CALL                             R22 2 1
      151 MOVE                             R21 R22
      152 SETTABLEKS                       R21 R20 K18 ["testId"]
      154 DUPTABLE                         R21 K43 [{"Title", "Subtitle", "Separator", "Link"}]
      155 GETUPVAL                         R23 6
      156 GETTABLEKS                       R22 R23 K6 ["createElement"]
      158 GETUPVAL                         R23 14
      159 DUPTABLE                         R24 K45 [{"Text", "tag", "LayoutOrder", "testId"}]
      160 GETTABLEKS                       R25 R2 K46 ["title"]
      162 SETTABLEKS                       R25 R24 K44 ["Text"]
      164 GETTABLEKS                       R26 R4 K46 ["title"]
      166 GETTABLEKS                       R25 R26 K7 ["tag"]
      168 SETTABLEKS                       R25 R24 K7 ["tag"]
      170 LOADN                            R25 1
      171 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      173 LOADK                            R26 K47 ["%*--title"]
      174 GETTABLEKS                       R28 R2 K18 ["testId"]
      176 NAMECALL                         R26 R26 K22 ["format"]
      178 CALL                             R26 2 1
      179 MOVE                             R25 R26
      180 SETTABLEKS                       R25 R24 K18 ["testId"]
      182 CALL                             R22 2 1
      183 SETTABLEKS                       R22 R21 K39 ["Title"]
      185 GETTABLEKS                       R23 R2 K48 ["subtitle"]
      187 JUMPIFNOT                        R23 ; [+29]
      188 GETUPVAL                         R23 6
      189 GETTABLEKS                       R22 R23 K6 ["createElement"]
      191 GETUPVAL                         R23 14
      192 DUPTABLE                         R24 K45 [{"Text", "tag", "LayoutOrder", "testId"}]
      193 GETTABLEKS                       R25 R2 K48 ["subtitle"]
      195 SETTABLEKS                       R25 R24 K44 ["Text"]
      197 GETTABLEKS                       R26 R4 K48 ["subtitle"]
      199 GETTABLEKS                       R25 R26 K7 ["tag"]
      201 SETTABLEKS                       R25 R24 K7 ["tag"]
      203 LOADN                            R25 2
      204 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      206 LOADK                            R26 K49 ["%*--subtitle"]
      207 GETTABLEKS                       R28 R2 K18 ["testId"]
      209 NAMECALL                         R26 R26 K22 ["format"]
      211 CALL                             R26 2 1
      212 MOVE                             R25 R26
      213 SETTABLEKS                       R25 R24 K18 ["testId"]
      215 CALL                             R22 2 1
      216 JUMP                             ; [+1]
      217 LOADNIL                          R22
      218 SETTABLEKS                       R22 R21 K40 ["Subtitle"]
      220 GETTABLEKS                       R23 R2 K2 ["link"]
      222 JUMPIFNOT                        R23 ; [+25]
      223 GETUPVAL                         R23 6
      224 GETTABLEKS                       R22 R23 K6 ["createElement"]
      226 GETUPVAL                         R23 14
      227 DUPTABLE                         R24 K45 [{"Text", "tag", "LayoutOrder", "testId"}]
      228 LOADK                            R25 K50 ["·"]
      229 SETTABLEKS                       R25 R24 K44 ["Text"]
      231 LOADK                            R25 K51 ["auto-xy text-body-medium content-default"]
      232 SETTABLEKS                       R25 R24 K7 ["tag"]
      234 LOADN                            R25 3
      235 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      237 LOADK                            R26 K52 ["%*--separator"]
      238 GETTABLEKS                       R28 R2 K18 ["testId"]
      240 NAMECALL                         R26 R26 K22 ["format"]
      242 CALL                             R26 2 1
      243 MOVE                             R25 R26
      244 SETTABLEKS                       R25 R24 K18 ["testId"]
      246 CALL                             R22 2 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R22
      249 SETTABLEKS                       R22 R21 K41 ["Separator"]
      251 GETTABLEKS                       R23 R2 K2 ["link"]
      253 JUMPIFNOT                        R23 ; [+55]
      254 GETUPVAL                         R23 6
      255 GETTABLEKS                       R22 R23 K6 ["createElement"]
      257 GETUPVAL                         R23 14
      258 DUPTABLE                         R24 K57 [{"Text", "RichText", "tag", "LayoutOrder", "stateLayer", "onStateChanged", "onActivated", "testId"}]
      259 JUMPIFNOT                        R7 ; [+7]
      260 LOADK                            R26 K58 ["<u>%*</u>"]
      261 MOVE                             R28 R6
      262 NAMECALL                         R26 R26 K22 ["format"]
      264 CALL                             R26 2 1
      265 MOVE                             R25 R26
      266 JUMP                             ; [+1]
      267 MOVE                             R25 R6
      268 SETTABLEKS                       R25 R24 K44 ["Text"]
      270 LOADB                            R25 1
      271 SETTABLEKS                       R25 R24 K53 ["RichText"]
      273 GETTABLEKS                       R26 R4 K2 ["link"]
      275 GETTABLEKS                       R25 R26 K7 ["tag"]
      277 SETTABLEKS                       R25 R24 K7 ["tag"]
      279 LOADN                            R25 4
      280 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      282 DUPTABLE                         R25 K60 [{"affordance"}]
      283 GETUPVAL                         R27 15
      284 GETTABLEKS                       R26 R27 K61 ["None"]
      286 SETTABLEKS                       R26 R25 K59 ["affordance"]
      288 SETTABLEKS                       R25 R24 K54 ["stateLayer"]
      290 SETTABLEKS                       R9 R24 K55 ["onStateChanged"]
      292 GETTABLEKS                       R26 R2 K2 ["link"]
      294 GETTABLEKS                       R25 R26 K56 ["onActivated"]
      296 SETTABLEKS                       R25 R24 K56 ["onActivated"]
      298 LOADK                            R26 K62 ["%*--link"]
      299 GETTABLEKS                       R28 R2 K18 ["testId"]
      301 NAMECALL                         R26 R26 K22 ["format"]
      303 CALL                             R26 2 1
      304 MOVE                             R25 R26
      305 SETTABLEKS                       R25 R24 K18 ["testId"]
      307 CALL                             R22 2 1
      308 JUMP                             ; [+1]
      309 LOADNIL                          R22
      310 SETTABLEKS                       R22 R21 K42 ["Link"]
      312 CALL                             R18 3 1
      313 SETTABLEKS                       R18 R17 K24 ["Content"]
      315 GETTABLEKS                       R19 R2 K63 ["onClose"]
      317 JUMPIFEQKNIL                     R19 ; [+34]
      319 GETUPVAL                         R19 6
      320 GETTABLEKS                       R18 R19 K6 ["createElement"]
      322 GETUPVAL                         R19 16
      323 DUPTABLE                         R20 K64 [{"onActivated", "size", "variant", "LayoutOrder", "testId"}]
      324 GETTABLEKS                       R21 R2 K63 ["onClose"]
      326 SETTABLEKS                       R21 R20 K56 ["onActivated"]
      328 GETUPVAL                         R22 17
      329 GETTABLEKS                       R21 R22 K65 ["XSmall"]
      331 SETTABLEKS                       R21 R20 K28 ["size"]
      333 GETUPVAL                         R22 18
      334 GETTABLEKS                       R21 R22 K66 ["Utility"]
      336 SETTABLEKS                       R21 R20 K29 ["variant"]
      338 LOADN                            R21 3
      339 SETTABLEKS                       R21 R20 K17 ["LayoutOrder"]
      341 LOADK                            R22 K67 ["%*--close"]
      342 GETTABLEKS                       R24 R2 K18 ["testId"]
      344 NAMECALL                         R22 R22 K22 ["format"]
      346 CALL                             R22 2 1
      347 MOVE                             R21 R22
      348 SETTABLEKS                       R21 R20 K18 ["testId"]
      350 CALL                             R18 2 1
      351 JUMP                             ; [+1]
      352 LOADNIL                          R18
      353 SETTABLEKS                       R18 R17 K25 ["Close"]
      355 CALL                             R14 3 1
      356 SETTABLEKS                       R14 R13 K13 ["HeaderRow"]
      358 GETTABLEKS                       R15 R2 K68 ["description"]
      360 JUMPIFNOT                        R15 ; [+29]
      361 GETUPVAL                         R15 6
      362 GETTABLEKS                       R14 R15 K6 ["createElement"]
      364 GETUPVAL                         R15 14
      365 DUPTABLE                         R16 K45 [{"Text", "tag", "LayoutOrder", "testId"}]
      366 GETTABLEKS                       R17 R2 K68 ["description"]
      368 SETTABLEKS                       R17 R16 K44 ["Text"]
      370 GETTABLEKS                       R18 R4 K68 ["description"]
      372 GETTABLEKS                       R17 R18 K7 ["tag"]
      374 SETTABLEKS                       R17 R16 K7 ["tag"]
      376 LOADN                            R17 2
      377 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
      379 LOADK                            R18 K69 ["%*--description"]
      380 GETTABLEKS                       R20 R2 K18 ["testId"]
      382 NAMECALL                         R18 R18 K22 ["format"]
      384 CALL                             R18 2 1
      385 MOVE                             R17 R18
      386 SETTABLEKS                       R17 R16 K18 ["testId"]
      388 CALL                             R14 2 1
      389 JUMP                             ; [+1]
      390 LOADNIL                          R14
      391 SETTABLEKS                       R14 R13 K14 ["Description"]
      393 GETUPVAL                         R15 6
      394 GETTABLEKS                       R14 R15 K6 ["createElement"]
      396 GETUPVAL                         R15 19
      397 DUPTABLE                         R16 K71 [{"actions", "testId", "LayoutOrder"}]
      398 GETTABLEKS                       R17 R2 K70 ["actions"]
      400 SETTABLEKS                       R17 R16 K70 ["actions"]
      402 LOADK                            R18 K72 ["%*--actions"]
      403 GETTABLEKS                       R20 R2 K18 ["testId"]
      405 NAMECALL                         R18 R18 K22 ["format"]
      407 CALL                             R18 2 1
      408 MOVE                             R17 R18
      409 SETTABLEKS                       R17 R16 K18 ["testId"]
      411 LOADN                            R17 3
      412 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
      414 CALL                             R14 2 1
      415 SETTABLEKS                       R14 R13 K15 ["Actions"]
      417 CALL                             R10 3 -1
      418 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["AlertActions"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R8 R0 K9 ["Components"]
       30 GETTABLEKS                       R7 R8 K10 ["AlertActions"]
       32 GETTABLEKS                       R6 R7 K11 ["AlertConstants"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Enums"]
       39 GETTABLEKS                       R7 R8 K13 ["AlertSeverity"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R1 K14 ["BuilderIcons"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R10 K15 ["CloseAffordance"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K12 ["Enums"]
       58 GETTABLEKS                       R10 R11 K16 ["CloseAffordanceVariant"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K12 ["Enums"]
       65 GETTABLEKS                       R11 R12 K17 ["ControlState"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R13 R0 K9 ["Components"]
       72 GETTABLEKS                       R12 R13 K18 ["Icon"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R14 R0 K12 ["Enums"]
       79 GETTABLEKS                       R13 R14 K19 ["IconSize"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R15 R0 K12 ["Enums"]
       86 GETTABLEKS                       R14 R15 K20 ["InputSize"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETTABLEKS                       R16 R0 K12 ["Enums"]
       93 GETTABLEKS                       R15 R16 K21 ["StateLayerAffordance"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETTABLEKS                       R17 R0 K9 ["Components"]
      100 GETTABLEKS                       R16 R17 K22 ["Text"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K6 [require]
      105 GETTABLEKS                       R18 R0 K9 ["Components"]
      107 GETTABLEKS                       R17 R18 K23 ["Types"]
      109 CALL                             R16 1 1
      110 GETIMPORT                        R17 K6 [require]
      112 GETTABLEKS                       R19 R0 K9 ["Components"]
      114 GETTABLEKS                       R18 R19 K24 ["View"]
      116 CALL                             R17 1 1
      117 GETIMPORT                        R18 K6 [require]
      119 GETTABLEKS                       R20 R0 K25 ["Utility"]
      121 GETTABLEKS                       R19 R20 K26 ["escapeRichText"]
      123 CALL                             R18 1 1
      124 GETIMPORT                        R19 K6 [require]
      126 GETTABLEKS                       R22 R0 K27 ["Providers"]
      128 GETTABLEKS                       R21 R22 K28 ["Style"]
      130 GETTABLEKS                       R20 R21 K29 ["useTokens"]
      132 CALL                             R19 1 1
      133 GETIMPORT                        R20 K6 [require]
      135 GETTABLEKS                       R22 R0 K25 ["Utility"]
      137 GETTABLEKS                       R21 R22 K30 ["withCommonProps"]
      139 CALL                             R20 1 1
      140 GETIMPORT                        R21 K6 [require]
      142 GETTABLEKS                       R23 R0 K25 ["Utility"]
      144 GETTABLEKS                       R22 R23 K31 ["withDefaults"]
      146 CALL                             R21 1 1
      147 GETTABLEKS                       R22 R7 K32 ["IconVariant"]
      149 GETIMPORT                        R23 K6 [require]
      151 GETIMPORT                        R26 K1 [script]
      153 GETTABLEKS                       R25 R26 K4 ["Parent"]
      155 GETTABLEKS                       R24 R25 K33 ["useFeedbackAlertVariants"]
      157 CALL                             R23 1 1
      158 DUPTABLE                         R24 K35 [{"testId"}]
      159 LOADK                            R25 K36 ["--foundation-feedback-alert"]
      160 SETTABLEKS                       R25 R24 K34 ["testId"]
      162 DUPCLOSURE                       R25 K37 [PROTO_1]
      163 CAPTURE                          VAL R21
      164 CAPTURE                          VAL R24
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R22
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R4
      183 GETTABLEKS                       R26 R2 K38 ["memo"]
      185 GETTABLEKS                       R27 R2 K39 ["forwardRef"]
      187 MOVE                             R28 R25
      188 CALL                             R27 1 -1
      189 CALL                             R26 -1 -1
      190 RETURN                           R26 -1
