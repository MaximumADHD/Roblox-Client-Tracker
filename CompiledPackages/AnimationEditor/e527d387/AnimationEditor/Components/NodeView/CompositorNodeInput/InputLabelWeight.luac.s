PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["createNextOrder"]
       11 CALL                             R2 0 1
       12 GETTABLEKS                       R4 R0 K4 ["Weight"]
       14 JUMPIFNOTEQKNIL                  R4 ; [+3]
       16 LOADN                            R3 0
       17 JUMP                             ; [+7]
       18 GETTABLEKS                       R5 R0 K4 ["Weight"]
       20 MULK                             R4 R5 K5 [100]
       21 FASTCALL1                        MATH_ROUND R4 ; [+2]
       22 GETIMPORT                        R3 K8 [math.round]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R0 K9 ["OnDelete"]
       27 JUMPIFNOT                        R4 ; [+2]
       28 GETTABLEKS                       R4 R0 K10 ["IsHovered"]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K11 ["translateLabel"]
       33 MOVE                             R6 R1
       34 GETTABLEKS                       R7 R0 K12 ["Label"]
       36 JUMPIF                           R7 ; [+2]
       37 GETTABLEKS                       R7 R0 K13 ["Name"]
       39 CALL                             R5 2 1
       40 GETTABLEKS                       R8 R0 K12 ["Label"]
       42 FASTCALL1                        TYPE R8 ; [+2]
       43 GETIMPORT                        R7 K15 [type]
       45 CALL                             R7 1 1
       46 JUMPIFNOTEQKS                    R7 K16 ["string"] ; [+2]
       48 LOADB                            R6 0 +1
       49 LOADB                            R6 1
       50 GETUPVAL                         R7 3
       51 CALL                             R7 0 1
       52 JUMPIFNOT                        R7 ; [+6]
       53 GETTABLEKS                       R8 R0 K17 ["OnRename"]
       55 JUMPIFNOTEQKNIL                  R8 ; [+2]
       57 LOADB                            R7 0 +1
       58 LOADB                            R7 1
       59 GETTABLEKS                       R9 R0 K18 ["TrailingValue"]
       61 JUMPIFNOTEQKNIL                  R9 ; [+2]
       63 LOADB                            R8 0 +1
       64 LOADB                            R8 1
       65 GETUPVAL                         R9 4
       66 GETTABLEKS                       R9 R9 K19 ["createElement"]
       68 GETUPVAL                         R10 5
       69 GETTABLEKS                       R10 R10 K20 ["View"]
       71 DUPTABLE                         R11 K24 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       72 GETTABLEKS                       R12 R0 K23 ["LayoutOrder"]
       74 SETTABLEKS                       R12 R11 K23 ["LayoutOrder"]
       76 DUPTABLE                         R12 K31 [{"InputLabel", "DuplicateWarning", "InputDelete", "InputDeleteSpacer", "InputWeight", "WeightOrDelete", "TrailingValue"}]
       77 JUMPIFNOT                        R7 ; [+23]
       78 GETUPVAL                         R13 4
       79 GETTABLEKS                       R13 R13 K19 ["createElement"]
       81 GETUPVAL                         R14 6
       82 DUPTABLE                         R15 K33 [{"Name", "OnRename", "HasDuplicateName", "LayoutOrder"}]
       83 GETTABLEKS                       R16 R0 K13 ["Name"]
       85 SETTABLEKS                       R16 R15 K13 ["Name"]
       87 GETTABLEKS                       R16 R0 K17 ["OnRename"]
       89 SETTABLEKS                       R16 R15 K17 ["OnRename"]
       91 GETTABLEKS                       R16 R0 K32 ["HasDuplicateName"]
       93 SETTABLEKS                       R16 R15 K32 ["HasDuplicateName"]
       95 MOVE                             R16 R2
       96 CALL                             R16 0 1
       97 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
       99 CALL                             R13 2 1
      100 JUMP                             ; [+29]
      101 GETUPVAL                         R13 4
      102 GETTABLEKS                       R13 R13 K19 ["createElement"]
      104 GETUPVAL                         R14 7
      105 DUPTABLE                         R15 K37 [{"tag", "Text", "TextTruncate", "LayoutOrder", "isDisabled"}]
      106 NEWTABLE                         R16 2 0
      108 LOADB                            R17 1
      109 SETTABLEKS                       R17 R16 K38 ["auto-xy text-body-small text-align-x-left content-emphasis"]
      111 GETUPVAL                         R17 8
      112 CALL                             R17 0 1
      113 SETTABLEKS                       R17 R16 K39 ["shrink"]
      115 SETTABLEKS                       R16 R15 K21 ["tag"]
      117 SETTABLEKS                       R5 R15 K34 ["Text"]
      119 GETIMPORT                        R16 K42 [Enum.TextTruncate.SplitWord]
      121 SETTABLEKS                       R16 R15 K35 ["TextTruncate"]
      123 MOVE                             R16 R2
      124 CALL                             R16 0 1
      125 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      127 SETTABLEKS                       R6 R15 K36 ["isDisabled"]
      129 CALL                             R13 2 1
      130 SETTABLEKS                       R13 R12 K25 ["InputLabel"]
      132 NOT                              R13 R7
      133 JUMPIFNOT                        R13 ; [+73]
      134 NOT                              R13 R4
      135 JUMPIFNOT                        R13 ; [+71]
      136 GETTABLEKS                       R13 R0 K32 ["HasDuplicateName"]
      138 JUMPIFNOT                        R13 ; [+68]
      139 GETUPVAL                         R13 4
      140 GETTABLEKS                       R13 R13 K19 ["createElement"]
      142 GETUPVAL                         R14 5
      143 GETTABLEKS                       R14 R14 K43 ["Tooltip"]
      145 DUPTABLE                         R15 K47 [{"title", "side", "align", "LayoutOrder"}]
      146 LOADK                            R18 K48 ["Common"]
      147 LOADK                            R19 K49 ["AnimationEditor"]
      148 LOADK                            R20 K50 ["InputPanel"]
      149 LOADK                            R21 K51 ["DuplicateName"]
      150 DUPTABLE                         R22 K53 [{"name"}]
      151 SETTABLEKS                       R5 R22 K52 ["name"]
      153 NAMECALL                         R16 R1 K54 ["getExternalText"]
      155 CALL                             R16 6 1
      156 SETTABLEKS                       R16 R15 K44 ["title"]
      158 GETUPVAL                         R16 5
      159 GETTABLEKS                       R16 R16 K55 ["Enums"]
      161 GETTABLEKS                       R16 R16 K56 ["PopoverSide"]
      163 GETTABLEKS                       R16 R16 K57 ["Bottom"]
      165 SETTABLEKS                       R16 R15 K45 ["side"]
      167 GETUPVAL                         R16 5
      168 GETTABLEKS                       R16 R16 K55 ["Enums"]
      170 GETTABLEKS                       R16 R16 K58 ["PopoverAlign"]
      172 GETTABLEKS                       R16 R16 K59 ["Start"]
      174 SETTABLEKS                       R16 R15 K46 ["align"]
      176 MOVE                             R16 R2
      177 CALL                             R16 0 1
      178 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      180 GETUPVAL                         R16 4
      181 GETTABLEKS                       R16 R16 K19 ["createElement"]
      183 GETUPVAL                         R17 5
      184 GETTABLEKS                       R17 R17 K60 ["Icon"]
      186 DUPTABLE                         R18 K67 [{["tag"] = "auto-xy", ["name"] = "triangle-exclamation", ["size"], ["variant"], ["testId"] = "input-duplicate-warning"}]
      187 GETUPVAL                         R19 5
      188 GETTABLEKS                       R19 R19 K55 ["Enums"]
      190 GETTABLEKS                       R19 R19 K68 ["IconSize"]
      192 GETTABLEKS                       R19 R19 K69 ["XSmall"]
      194 SETTABLEKS                       R19 R18 K63 ["size"]
      196 GETUPVAL                         R19 5
      197 GETTABLEKS                       R19 R19 K55 ["Enums"]
      199 GETTABLEKS                       R19 R19 K70 ["IconVariant"]
      201 GETTABLEKS                       R19 R19 K71 ["Regular"]
      203 SETTABLEKS                       R19 R18 K64 ["variant"]
      205 CALL                             R16 2 -1
      206 CALL                             R13 -1 1
      207 SETTABLEKS                       R13 R12 K26 ["DuplicateWarning"]
      209 NOT                              R13 R7
      210 JUMPIFNOT                        R13 ; [+16]
      211 MOVE                             R13 R4
      212 JUMPIFNOT                        R13 ; [+14]
      213 GETUPVAL                         R13 4
      214 GETTABLEKS                       R13 R13 K19 ["createElement"]
      216 GETUPVAL                         R14 9
      217 DUPTABLE                         R15 K72 [{"LayoutOrder", "OnDelete"}]
      218 MOVE                             R16 R2
      219 CALL                             R16 0 1
      220 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      222 GETTABLEKS                       R16 R0 K9 ["OnDelete"]
      224 SETTABLEKS                       R16 R15 K9 ["OnDelete"]
      226 CALL                             R13 2 1
      227 SETTABLEKS                       R13 R12 K27 ["InputDelete"]
      229 NOT                              R13 R7
      230 JUMPIFNOT                        R13 ; [+14]
      231 MOVE                             R13 R4
      232 JUMPIFNOT                        R13 ; [+12]
      233 GETUPVAL                         R13 4
      234 GETTABLEKS                       R13 R13 K19 ["createElement"]
      236 GETUPVAL                         R14 5
      237 GETTABLEKS                       R14 R14 K20 ["View"]
      239 DUPTABLE                         R15 K74 [{["tag"] = "fill auto-y", ["LayoutOrder"]}]
      240 MOVE                             R16 R2
      241 CALL                             R16 0 1
      242 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      244 CALL                             R13 2 1
      245 SETTABLEKS                       R13 R12 K28 ["InputDeleteSpacer"]
      247 NOT                              R13 R7
      248 JUMPIFNOT                        R13 ; [+44]
      249 GETTABLEKS                       R14 R0 K75 ["HideWeight"]
      251 NOT                              R13 R14
      252 JUMPIFNOT                        R13 ; [+40]
      253 NOT                              R13 R4
      254 JUMPIFNOT                        R13 ; [+38]
      255 GETUPVAL                         R13 4
      256 GETTABLEKS                       R13 R13 K19 ["createElement"]
      258 GETUPVAL                         R14 5
      259 GETTABLEKS                       R14 R14 K34 ["Text"]
      261 DUPTABLE                         R15 K77 [{"tag", "Size", "Text", "LayoutOrder"}]
      262 NEWTABLE                         R16 2 0
      264 LOADB                            R17 1
      265 SETTABLEKS                       R17 R16 K78 ["auto-y text-body-small text-align-x-left content-muted"]
      267 GETUPVAL                         R18 8
      268 CALL                             R18 0 1
      269 NOT                              R17 R18
      270 SETTABLEKS                       R17 R16 K79 ["fill"]
      272 SETTABLEKS                       R16 R15 K21 ["tag"]
      274 GETIMPORT                        R16 K82 [UDim2.fromOffset]
      276 LOADN                            R17 30
      277 LOADN                            R18 0
      278 CALL                             R16 2 1
      279 SETTABLEKS                       R16 R15 K76 ["Size"]
      281 LOADK                            R16 K83 ["%*%%"]
      282 ORK                              R18 R3 K84 [0]
      283 NAMECALL                         R16 R16 K85 ["format"]
      285 CALL                             R16 2 1
      286 SETTABLEKS                       R16 R15 K34 ["Text"]
      288 MOVE                             R16 R2
      289 CALL                             R16 0 1
      290 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      292 CALL                             R13 2 1
      293 SETTABLEKS                       R13 R12 K29 ["InputWeight"]
      295 MOVE                             R13 R7
      296 JUMPIFNOT                        R13 ; [+68]
      297 GETTABLEKS                       R14 R0 K9 ["OnDelete"]
      299 JUMPIFNOTEQKNIL                  R14 ; [+5]
      301 GETTABLEKS                       R14 R0 K75 ["HideWeight"]
      303 NOT                              R13 R14
      304 JUMPIFNOT                        R13 ; [+60]
      305 GETUPVAL                         R13 4
      306 GETTABLEKS                       R13 R13 K19 ["createElement"]
      308 GETUPVAL                         R14 5
      309 GETTABLEKS                       R14 R14 K20 ["View"]
      311 DUPTABLE                         R15 K87 [{["tag"] = "row align-y-center auto-y", ["Size"], ["LayoutOrder"]}]
      312 GETIMPORT                        R16 K82 [UDim2.fromOffset]
      314 GETUPVAL                         R17 10
      315 GETTABLEKS                       R17 R17 K88 ["WEIGHT_WIDTH"]
      317 LOADN                            R18 0
      318 CALL                             R16 2 1
      319 SETTABLEKS                       R16 R15 K76 ["Size"]
      321 MOVE                             R16 R2
      322 CALL                             R16 0 1
      323 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      325 DUPTABLE                         R16 K90 [{"Delete", "Weight"}]
      326 JUMPIFNOT                        R4 ; [+11]
      327 GETUPVAL                         R17 4
      328 GETTABLEKS                       R17 R17 K19 ["createElement"]
      330 GETUPVAL                         R18 9
      331 DUPTABLE                         R19 K91 [{"OnDelete"}]
      332 GETTABLEKS                       R20 R0 K9 ["OnDelete"]
      334 SETTABLEKS                       R20 R19 K9 ["OnDelete"]
      336 CALL                             R17 2 1
      337 JUMP                             ; [+1]
      338 LOADNIL                          R17
      339 SETTABLEKS                       R17 R16 K89 ["Delete"]
      341 JUMPIF                           R4 ; [+19]
      342 GETTABLEKS                       R18 R0 K75 ["HideWeight"]
      344 JUMPIF                           R18 ; [+16]
      345 GETUPVAL                         R17 4
      346 GETTABLEKS                       R17 R17 K19 ["createElement"]
      348 GETUPVAL                         R18 5
      349 GETTABLEKS                       R18 R18 K34 ["Text"]
      351 DUPTABLE                         R19 K93 [{["tag"] = "auto-y text-body-small text-align-x-left content-muted fill", ["Text"]}]
      352 LOADK                            R20 K83 ["%*%%"]
      353 ORK                              R22 R3 K84 [0]
      354 NAMECALL                         R20 R20 K85 ["format"]
      356 CALL                             R20 2 1
      357 SETTABLEKS                       R20 R19 K34 ["Text"]
      359 CALL                             R17 2 1
      360 JUMP                             ; [+1]
      361 LOADNIL                          R17
      362 SETTABLEKS                       R17 R16 K4 ["Weight"]
      364 CALL                             R13 3 1
      365 SETTABLEKS                       R13 R12 K30 ["WeightOrDelete"]
      367 MOVE                             R13 R8
      368 JUMPIFNOT                        R13 ; [+42]
      369 GETUPVAL                         R13 4
      370 GETTABLEKS                       R13 R13 K19 ["createElement"]
      372 GETUPVAL                         R14 5
      373 GETTABLEKS                       R14 R14 K20 ["View"]
      375 DUPTABLE                         R15 K94 [{"tag", "Size", "LayoutOrder"}]
      376 NEWTABLE                         R16 2 0
      378 LOADB                            R17 1
      379 SETTABLEKS                       R17 R16 K86 ["row align-y-center auto-y"]
      381 GETUPVAL                         R17 11
      382 CALL                             R17 0 1
      383 SETTABLEKS                       R17 R16 K79 ["fill"]
      385 SETTABLEKS                       R16 R15 K21 ["tag"]
      387 GETUPVAL                         R17 11
      388 CALL                             R17 0 1
      389 JUMPIFNOT                        R17 ; [+2]
      390 LOADNIL                          R16
      391 JUMP                             ; [+7]
      392 GETIMPORT                        R16 K82 [UDim2.fromOffset]
      394 GETUPVAL                         R17 10
      395 GETTABLEKS                       R17 R17 K95 ["PROPERTY_WIDTH"]
      397 LOADN                            R18 0
      398 CALL                             R16 2 1
      399 SETTABLEKS                       R16 R15 K76 ["Size"]
      401 MOVE                             R16 R2
      402 CALL                             R16 0 1
      403 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      405 DUPTABLE                         R16 K97 [{"Content"}]
      406 GETTABLEKS                       R17 R0 K18 ["TrailingValue"]
      408 SETTABLEKS                       R17 R16 K96 ["Content"]
      410 CALL                             R13 3 1
      411 SETTABLEKS                       R13 R12 K18 ["TrailingValue"]
      413 CALL                             R9 3 -1
      414 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeInput"]
       15 GETTABLEKS                       R2 R2 K9 ["DeleteInputButton"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Components"]
       36 GETTABLEKS                       R5 R5 K7 ["NodeView"]
       38 GETTABLEKS                       R5 R5 K8 ["CompositorNodeInput"]
       40 GETTABLEKS                       R5 R5 K13 ["InputNameField"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K10 ["Parent"]
       47 GETTABLEKS                       R6 R6 K14 ["NodeGraphing"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K15 ["Util"]
       54 GETTABLEKS                       R7 R7 K16 ["Nodes"]
       56 GETTABLEKS                       R7 R7 K17 ["NodeNameFormattingUtils"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Components"]
       63 GETTABLEKS                       R8 R8 K7 ["NodeView"]
       65 GETTABLEKS                       R8 R8 K18 ["CompositorNodeProperty"]
       67 GETTABLEKS                       R8 R8 K19 ["PropertyConstants"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K6 ["Components"]
       74 GETTABLEKS                       R9 R9 K7 ["NodeView"]
       76 GETTABLEKS                       R9 R9 K18 ["CompositorNodeProperty"]
       78 GETTABLEKS                       R9 R9 K20 ["PropertyLabel"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K10 ["Parent"]
       85 GETTABLEKS                       R10 R10 K21 ["React"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K10 ["Parent"]
       92 GETTABLEKS                       R11 R11 K22 ["ReactUtils"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R12 R0 K23 ["Flags"]
       99 GETTABLEKS                       R12 R12 K24 ["getFFlagAnimGraphUIInputIds"]
      101 CALL                             R11 1 1
      102 GETTABLEKS                       R12 R5 K25 ["getFFlagAnimGraphUINodeFieldLayout"]
      104 GETIMPORT                        R13 K5 [require]
      106 GETTABLEKS                       R14 R0 K23 ["Flags"]
      108 GETTABLEKS                       R14 R14 K26 ["getFFlagAnimGraphUIWeightOverlap"]
      110 CALL                             R13 1 1
      111 DUPCLOSURE                       R14 K27 [PROTO_0]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R12
      124 RETURN                           R14 1
