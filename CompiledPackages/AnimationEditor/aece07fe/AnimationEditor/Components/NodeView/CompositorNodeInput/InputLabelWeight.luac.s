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
      133 JUMPIFNOT                        R13 ; [+76]
      134 GETUPVAL                         R14 9
      135 CALL                             R14 0 1
      136 JUMPIFNOT                        R14 ; [+2]
      137 NOT                              R13 R4
      138 JUMPIFNOT                        R13 ; [+71]
      139 GETTABLEKS                       R13 R0 K32 ["HasDuplicateName"]
      141 JUMPIFNOT                        R13 ; [+68]
      142 GETUPVAL                         R13 4
      143 GETTABLEKS                       R13 R13 K19 ["createElement"]
      145 GETUPVAL                         R14 5
      146 GETTABLEKS                       R14 R14 K43 ["Tooltip"]
      148 DUPTABLE                         R15 K47 [{"title", "side", "align", "LayoutOrder"}]
      149 LOADK                            R18 K48 ["Common"]
      150 LOADK                            R19 K49 ["AnimationEditor"]
      151 LOADK                            R20 K50 ["InputPanel"]
      152 LOADK                            R21 K51 ["DuplicateName"]
      153 DUPTABLE                         R22 K53 [{"name"}]
      154 SETTABLEKS                       R5 R22 K52 ["name"]
      156 NAMECALL                         R16 R1 K54 ["getExternalText"]
      158 CALL                             R16 6 1
      159 SETTABLEKS                       R16 R15 K44 ["title"]
      161 GETUPVAL                         R16 5
      162 GETTABLEKS                       R16 R16 K55 ["Enums"]
      164 GETTABLEKS                       R16 R16 K56 ["PopoverSide"]
      166 GETTABLEKS                       R16 R16 K57 ["Bottom"]
      168 SETTABLEKS                       R16 R15 K45 ["side"]
      170 GETUPVAL                         R16 5
      171 GETTABLEKS                       R16 R16 K55 ["Enums"]
      173 GETTABLEKS                       R16 R16 K58 ["PopoverAlign"]
      175 GETTABLEKS                       R16 R16 K59 ["Start"]
      177 SETTABLEKS                       R16 R15 K46 ["align"]
      179 MOVE                             R16 R2
      180 CALL                             R16 0 1
      181 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      183 GETUPVAL                         R16 4
      184 GETTABLEKS                       R16 R16 K19 ["createElement"]
      186 GETUPVAL                         R17 5
      187 GETTABLEKS                       R17 R17 K60 ["Icon"]
      189 DUPTABLE                         R18 K67 [{["tag"] = "auto-xy", ["name"] = "triangle-exclamation", ["size"], ["variant"], ["testId"] = "input-duplicate-warning"}]
      190 GETUPVAL                         R19 5
      191 GETTABLEKS                       R19 R19 K55 ["Enums"]
      193 GETTABLEKS                       R19 R19 K68 ["IconSize"]
      195 GETTABLEKS                       R19 R19 K69 ["XSmall"]
      197 SETTABLEKS                       R19 R18 K63 ["size"]
      199 GETUPVAL                         R19 5
      200 GETTABLEKS                       R19 R19 K55 ["Enums"]
      202 GETTABLEKS                       R19 R19 K70 ["IconVariant"]
      204 GETTABLEKS                       R19 R19 K71 ["Regular"]
      206 SETTABLEKS                       R19 R18 K64 ["variant"]
      208 CALL                             R16 2 -1
      209 CALL                             R13 -1 1
      210 SETTABLEKS                       R13 R12 K26 ["DuplicateWarning"]
      212 NOT                              R13 R7
      213 JUMPIFNOT                        R13 ; [+16]
      214 MOVE                             R13 R4
      215 JUMPIFNOT                        R13 ; [+14]
      216 GETUPVAL                         R13 4
      217 GETTABLEKS                       R13 R13 K19 ["createElement"]
      219 GETUPVAL                         R14 10
      220 DUPTABLE                         R15 K72 [{"LayoutOrder", "OnDelete"}]
      221 MOVE                             R16 R2
      222 CALL                             R16 0 1
      223 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      225 GETTABLEKS                       R16 R0 K9 ["OnDelete"]
      227 SETTABLEKS                       R16 R15 K9 ["OnDelete"]
      229 CALL                             R13 2 1
      230 SETTABLEKS                       R13 R12 K27 ["InputDelete"]
      232 NOT                              R13 R7
      233 JUMPIFNOT                        R13 ; [+14]
      234 MOVE                             R13 R4
      235 JUMPIFNOT                        R13 ; [+12]
      236 GETUPVAL                         R13 4
      237 GETTABLEKS                       R13 R13 K19 ["createElement"]
      239 GETUPVAL                         R14 5
      240 GETTABLEKS                       R14 R14 K20 ["View"]
      242 DUPTABLE                         R15 K74 [{["tag"] = "fill auto-y", ["LayoutOrder"]}]
      243 MOVE                             R16 R2
      244 CALL                             R16 0 1
      245 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      247 CALL                             R13 2 1
      248 SETTABLEKS                       R13 R12 K28 ["InputDeleteSpacer"]
      250 NOT                              R13 R7
      251 JUMPIFNOT                        R13 ; [+44]
      252 GETTABLEKS                       R14 R0 K75 ["HideWeight"]
      254 NOT                              R13 R14
      255 JUMPIFNOT                        R13 ; [+40]
      256 NOT                              R13 R4
      257 JUMPIFNOT                        R13 ; [+38]
      258 GETUPVAL                         R13 4
      259 GETTABLEKS                       R13 R13 K19 ["createElement"]
      261 GETUPVAL                         R14 5
      262 GETTABLEKS                       R14 R14 K34 ["Text"]
      264 DUPTABLE                         R15 K77 [{"tag", "Size", "Text", "LayoutOrder"}]
      265 NEWTABLE                         R16 2 0
      267 LOADB                            R17 1
      268 SETTABLEKS                       R17 R16 K78 ["auto-y text-body-small text-align-x-left content-muted"]
      270 GETUPVAL                         R18 8
      271 CALL                             R18 0 1
      272 NOT                              R17 R18
      273 SETTABLEKS                       R17 R16 K79 ["fill"]
      275 SETTABLEKS                       R16 R15 K21 ["tag"]
      277 GETIMPORT                        R16 K82 [UDim2.fromOffset]
      279 LOADN                            R17 30
      280 LOADN                            R18 0
      281 CALL                             R16 2 1
      282 SETTABLEKS                       R16 R15 K76 ["Size"]
      284 LOADK                            R16 K83 ["%*%%"]
      285 ORK                              R18 R3 K84 [0]
      286 NAMECALL                         R16 R16 K85 ["format"]
      288 CALL                             R16 2 1
      289 SETTABLEKS                       R16 R15 K34 ["Text"]
      291 MOVE                             R16 R2
      292 CALL                             R16 0 1
      293 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      295 CALL                             R13 2 1
      296 SETTABLEKS                       R13 R12 K29 ["InputWeight"]
      298 MOVE                             R13 R7
      299 JUMPIFNOT                        R13 ; [+68]
      300 GETTABLEKS                       R14 R0 K9 ["OnDelete"]
      302 JUMPIFNOTEQKNIL                  R14 ; [+5]
      304 GETTABLEKS                       R14 R0 K75 ["HideWeight"]
      306 NOT                              R13 R14
      307 JUMPIFNOT                        R13 ; [+60]
      308 GETUPVAL                         R13 4
      309 GETTABLEKS                       R13 R13 K19 ["createElement"]
      311 GETUPVAL                         R14 5
      312 GETTABLEKS                       R14 R14 K20 ["View"]
      314 DUPTABLE                         R15 K87 [{["tag"] = "row align-y-center auto-y", ["Size"], ["LayoutOrder"]}]
      315 GETIMPORT                        R16 K82 [UDim2.fromOffset]
      317 GETUPVAL                         R17 11
      318 GETTABLEKS                       R17 R17 K88 ["WEIGHT_WIDTH"]
      320 LOADN                            R18 0
      321 CALL                             R16 2 1
      322 SETTABLEKS                       R16 R15 K76 ["Size"]
      324 MOVE                             R16 R2
      325 CALL                             R16 0 1
      326 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      328 DUPTABLE                         R16 K90 [{"Delete", "Weight"}]
      329 JUMPIFNOT                        R4 ; [+11]
      330 GETUPVAL                         R17 4
      331 GETTABLEKS                       R17 R17 K19 ["createElement"]
      333 GETUPVAL                         R18 10
      334 DUPTABLE                         R19 K91 [{"OnDelete"}]
      335 GETTABLEKS                       R20 R0 K9 ["OnDelete"]
      337 SETTABLEKS                       R20 R19 K9 ["OnDelete"]
      339 CALL                             R17 2 1
      340 JUMP                             ; [+1]
      341 LOADNIL                          R17
      342 SETTABLEKS                       R17 R16 K89 ["Delete"]
      344 JUMPIF                           R4 ; [+19]
      345 GETTABLEKS                       R18 R0 K75 ["HideWeight"]
      347 JUMPIF                           R18 ; [+16]
      348 GETUPVAL                         R17 4
      349 GETTABLEKS                       R17 R17 K19 ["createElement"]
      351 GETUPVAL                         R18 5
      352 GETTABLEKS                       R18 R18 K34 ["Text"]
      354 DUPTABLE                         R19 K93 [{["tag"] = "auto-y text-body-small text-align-x-left content-muted fill", ["Text"]}]
      355 LOADK                            R20 K83 ["%*%%"]
      356 ORK                              R22 R3 K84 [0]
      357 NAMECALL                         R20 R20 K85 ["format"]
      359 CALL                             R20 2 1
      360 SETTABLEKS                       R20 R19 K34 ["Text"]
      362 CALL                             R17 2 1
      363 JUMP                             ; [+1]
      364 LOADNIL                          R17
      365 SETTABLEKS                       R17 R16 K4 ["Weight"]
      367 CALL                             R13 3 1
      368 SETTABLEKS                       R13 R12 K30 ["WeightOrDelete"]
      370 MOVE                             R13 R8
      371 JUMPIFNOT                        R13 ; [+42]
      372 GETUPVAL                         R13 4
      373 GETTABLEKS                       R13 R13 K19 ["createElement"]
      375 GETUPVAL                         R14 5
      376 GETTABLEKS                       R14 R14 K20 ["View"]
      378 DUPTABLE                         R15 K94 [{"tag", "Size", "LayoutOrder"}]
      379 NEWTABLE                         R16 2 0
      381 LOADB                            R17 1
      382 SETTABLEKS                       R17 R16 K86 ["row align-y-center auto-y"]
      384 GETUPVAL                         R17 12
      385 CALL                             R17 0 1
      386 SETTABLEKS                       R17 R16 K79 ["fill"]
      388 SETTABLEKS                       R16 R15 K21 ["tag"]
      390 GETUPVAL                         R17 12
      391 CALL                             R17 0 1
      392 JUMPIFNOT                        R17 ; [+2]
      393 LOADNIL                          R16
      394 JUMP                             ; [+7]
      395 GETIMPORT                        R16 K82 [UDim2.fromOffset]
      397 GETUPVAL                         R17 11
      398 GETTABLEKS                       R17 R17 K95 ["PROPERTY_WIDTH"]
      400 LOADN                            R18 0
      401 CALL                             R16 2 1
      402 SETTABLEKS                       R16 R15 K76 ["Size"]
      404 MOVE                             R16 R2
      405 CALL                             R16 0 1
      406 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      408 DUPTABLE                         R16 K97 [{"Content"}]
      409 GETTABLEKS                       R17 R0 K18 ["TrailingValue"]
      411 SETTABLEKS                       R17 R16 K96 ["Content"]
      413 CALL                             R13 3 1
      414 SETTABLEKS                       R13 R12 K18 ["TrailingValue"]
      416 CALL                             R9 3 -1
      417 RETURN                           R9 -1

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
       99 GETTABLEKS                       R12 R12 K24 ["getFFlagAnimGraphUIDeleteInputButtonChanges"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K23 ["Flags"]
      106 GETTABLEKS                       R13 R13 K25 ["getFFlagAnimGraphUIInputIds"]
      108 CALL                             R12 1 1
      109 GETTABLEKS                       R13 R5 K26 ["getFFlagAnimGraphUINodeFieldLayout"]
      111 GETIMPORT                        R14 K5 [require]
      113 GETTABLEKS                       R15 R0 K23 ["Flags"]
      115 GETTABLEKS                       R15 R15 K27 ["getFFlagAnimGraphUIWeightOverlap"]
      117 CALL                             R14 1 1
      118 DUPCLOSURE                       R15 K28 [PROTO_0]
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R13
      132 RETURN                           R15 1
