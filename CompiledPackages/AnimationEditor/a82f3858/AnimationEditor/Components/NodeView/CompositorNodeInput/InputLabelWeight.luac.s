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
      100 JUMP                             ; [+18]
      101 GETUPVAL                         R13 4
      102 GETTABLEKS                       R13 R13 K19 ["createElement"]
      104 GETUPVAL                         R14 7
      105 DUPTABLE                         R15 K38 [{["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis shrink", ["Text"], ["TextTruncate"], ["LayoutOrder"], ["isDisabled"]}]
      106 SETTABLEKS                       R5 R15 K35 ["Text"]
      108 GETIMPORT                        R16 K41 [Enum.TextTruncate.SplitWord]
      110 SETTABLEKS                       R16 R15 K36 ["TextTruncate"]
      112 MOVE                             R16 R2
      113 CALL                             R16 0 1
      114 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      116 SETTABLEKS                       R6 R15 K37 ["isDisabled"]
      118 CALL                             R13 2 1
      119 SETTABLEKS                       R13 R12 K25 ["InputLabel"]
      121 NOT                              R13 R7
      122 JUMPIFNOT                        R13 ; [+73]
      123 NOT                              R13 R4
      124 JUMPIFNOT                        R13 ; [+71]
      125 GETTABLEKS                       R13 R0 K32 ["HasDuplicateName"]
      127 JUMPIFNOT                        R13 ; [+68]
      128 GETUPVAL                         R13 4
      129 GETTABLEKS                       R13 R13 K19 ["createElement"]
      131 GETUPVAL                         R14 5
      132 GETTABLEKS                       R14 R14 K42 ["Tooltip"]
      134 DUPTABLE                         R15 K46 [{"title", "side", "align", "LayoutOrder"}]
      135 LOADK                            R18 K47 ["Common"]
      136 LOADK                            R19 K48 ["AnimationEditor"]
      137 LOADK                            R20 K49 ["InputPanel"]
      138 LOADK                            R21 K50 ["DuplicateName"]
      139 DUPTABLE                         R22 K52 [{"name"}]
      140 SETTABLEKS                       R5 R22 K51 ["name"]
      142 NAMECALL                         R16 R1 K53 ["getExternalText"]
      144 CALL                             R16 6 1
      145 SETTABLEKS                       R16 R15 K43 ["title"]
      147 GETUPVAL                         R16 5
      148 GETTABLEKS                       R16 R16 K54 ["Enums"]
      150 GETTABLEKS                       R16 R16 K55 ["PopoverSide"]
      152 GETTABLEKS                       R16 R16 K56 ["Bottom"]
      154 SETTABLEKS                       R16 R15 K44 ["side"]
      156 GETUPVAL                         R16 5
      157 GETTABLEKS                       R16 R16 K54 ["Enums"]
      159 GETTABLEKS                       R16 R16 K57 ["PopoverAlign"]
      161 GETTABLEKS                       R16 R16 K58 ["Start"]
      163 SETTABLEKS                       R16 R15 K45 ["align"]
      165 MOVE                             R16 R2
      166 CALL                             R16 0 1
      167 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      169 GETUPVAL                         R16 4
      170 GETTABLEKS                       R16 R16 K19 ["createElement"]
      172 GETUPVAL                         R17 5
      173 GETTABLEKS                       R17 R17 K59 ["Icon"]
      175 DUPTABLE                         R18 K66 [{["tag"] = "auto-xy", ["name"] = "triangle-exclamation", ["size"], ["variant"], ["testId"] = "input-duplicate-warning"}]
      176 GETUPVAL                         R19 5
      177 GETTABLEKS                       R19 R19 K54 ["Enums"]
      179 GETTABLEKS                       R19 R19 K67 ["IconSize"]
      181 GETTABLEKS                       R19 R19 K68 ["XSmall"]
      183 SETTABLEKS                       R19 R18 K62 ["size"]
      185 GETUPVAL                         R19 5
      186 GETTABLEKS                       R19 R19 K54 ["Enums"]
      188 GETTABLEKS                       R19 R19 K69 ["IconVariant"]
      190 GETTABLEKS                       R19 R19 K70 ["Regular"]
      192 SETTABLEKS                       R19 R18 K63 ["variant"]
      194 CALL                             R16 2 -1
      195 CALL                             R13 -1 1
      196 SETTABLEKS                       R13 R12 K26 ["DuplicateWarning"]
      198 NOT                              R13 R7
      199 JUMPIFNOT                        R13 ; [+16]
      200 MOVE                             R13 R4
      201 JUMPIFNOT                        R13 ; [+14]
      202 GETUPVAL                         R13 4
      203 GETTABLEKS                       R13 R13 K19 ["createElement"]
      205 GETUPVAL                         R14 8
      206 DUPTABLE                         R15 K71 [{"LayoutOrder", "OnDelete"}]
      207 MOVE                             R16 R2
      208 CALL                             R16 0 1
      209 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      211 GETTABLEKS                       R16 R0 K9 ["OnDelete"]
      213 SETTABLEKS                       R16 R15 K9 ["OnDelete"]
      215 CALL                             R13 2 1
      216 SETTABLEKS                       R13 R12 K27 ["InputDelete"]
      218 NOT                              R13 R7
      219 JUMPIFNOT                        R13 ; [+14]
      220 MOVE                             R13 R4
      221 JUMPIFNOT                        R13 ; [+12]
      222 GETUPVAL                         R13 4
      223 GETTABLEKS                       R13 R13 K19 ["createElement"]
      225 GETUPVAL                         R14 5
      226 GETTABLEKS                       R14 R14 K20 ["View"]
      228 DUPTABLE                         R15 K73 [{["tag"] = "fill auto-y", ["LayoutOrder"]}]
      229 MOVE                             R16 R2
      230 CALL                             R16 0 1
      231 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      233 CALL                             R13 2 1
      234 SETTABLEKS                       R13 R12 K28 ["InputDeleteSpacer"]
      236 NOT                              R13 R7
      237 JUMPIFNOT                        R13 ; [+32]
      238 GETTABLEKS                       R14 R0 K74 ["HideWeight"]
      240 NOT                              R13 R14
      241 JUMPIFNOT                        R13 ; [+28]
      242 NOT                              R13 R4
      243 JUMPIFNOT                        R13 ; [+26]
      244 GETUPVAL                         R13 4
      245 GETTABLEKS                       R13 R13 K19 ["createElement"]
      247 GETUPVAL                         R14 5
      248 GETTABLEKS                       R14 R14 K35 ["Text"]
      250 DUPTABLE                         R15 K77 [{["tag"] = "auto-y text-body-small text-align-x-left content-muted", ["Size"], ["Text"], ["LayoutOrder"]}]
      251 GETIMPORT                        R16 K80 [UDim2.fromOffset]
      253 LOADN                            R17 30
      254 LOADN                            R18 0
      255 CALL                             R16 2 1
      256 SETTABLEKS                       R16 R15 K76 ["Size"]
      258 LOADK                            R16 K81 ["%*%%"]
      259 ORK                              R18 R3 K82 [0]
      260 NAMECALL                         R16 R16 K83 ["format"]
      262 CALL                             R16 2 1
      263 SETTABLEKS                       R16 R15 K35 ["Text"]
      265 MOVE                             R16 R2
      266 CALL                             R16 0 1
      267 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      269 CALL                             R13 2 1
      270 SETTABLEKS                       R13 R12 K29 ["InputWeight"]
      272 MOVE                             R13 R7
      273 JUMPIFNOT                        R13 ; [+68]
      274 GETTABLEKS                       R14 R0 K9 ["OnDelete"]
      276 JUMPIFNOTEQKNIL                  R14 ; [+5]
      278 GETTABLEKS                       R14 R0 K74 ["HideWeight"]
      280 NOT                              R13 R14
      281 JUMPIFNOT                        R13 ; [+60]
      282 GETUPVAL                         R13 4
      283 GETTABLEKS                       R13 R13 K19 ["createElement"]
      285 GETUPVAL                         R14 5
      286 GETTABLEKS                       R14 R14 K20 ["View"]
      288 DUPTABLE                         R15 K85 [{["tag"] = "row align-y-center auto-y", ["Size"], ["LayoutOrder"]}]
      289 GETIMPORT                        R16 K80 [UDim2.fromOffset]
      291 GETUPVAL                         R17 9
      292 GETTABLEKS                       R17 R17 K86 ["WEIGHT_WIDTH"]
      294 LOADN                            R18 0
      295 CALL                             R16 2 1
      296 SETTABLEKS                       R16 R15 K76 ["Size"]
      298 MOVE                             R16 R2
      299 CALL                             R16 0 1
      300 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      302 DUPTABLE                         R16 K88 [{"Delete", "Weight"}]
      303 JUMPIFNOT                        R4 ; [+11]
      304 GETUPVAL                         R17 4
      305 GETTABLEKS                       R17 R17 K19 ["createElement"]
      307 GETUPVAL                         R18 8
      308 DUPTABLE                         R19 K89 [{"OnDelete"}]
      309 GETTABLEKS                       R20 R0 K9 ["OnDelete"]
      311 SETTABLEKS                       R20 R19 K9 ["OnDelete"]
      313 CALL                             R17 2 1
      314 JUMP                             ; [+1]
      315 LOADNIL                          R17
      316 SETTABLEKS                       R17 R16 K87 ["Delete"]
      318 JUMPIF                           R4 ; [+19]
      319 GETTABLEKS                       R18 R0 K74 ["HideWeight"]
      321 JUMPIF                           R18 ; [+16]
      322 GETUPVAL                         R17 4
      323 GETTABLEKS                       R17 R17 K19 ["createElement"]
      325 GETUPVAL                         R18 5
      326 GETTABLEKS                       R18 R18 K35 ["Text"]
      328 DUPTABLE                         R19 K91 [{["tag"] = "auto-y text-body-small text-align-x-left content-muted fill", ["Text"]}]
      329 LOADK                            R20 K81 ["%*%%"]
      330 ORK                              R22 R3 K82 [0]
      331 NAMECALL                         R20 R20 K83 ["format"]
      333 CALL                             R20 2 1
      334 SETTABLEKS                       R20 R19 K35 ["Text"]
      336 CALL                             R17 2 1
      337 JUMP                             ; [+1]
      338 LOADNIL                          R17
      339 SETTABLEKS                       R17 R16 K4 ["Weight"]
      341 CALL                             R13 3 1
      342 SETTABLEKS                       R13 R12 K30 ["WeightOrDelete"]
      344 MOVE                             R13 R8
      345 JUMPIFNOT                        R13 ; [+42]
      346 GETUPVAL                         R13 4
      347 GETTABLEKS                       R13 R13 K19 ["createElement"]
      349 GETUPVAL                         R14 5
      350 GETTABLEKS                       R14 R14 K20 ["View"]
      352 DUPTABLE                         R15 K92 [{"tag", "Size", "LayoutOrder"}]
      353 NEWTABLE                         R16 2 0
      355 LOADB                            R17 1
      356 SETTABLEKS                       R17 R16 K84 ["row align-y-center auto-y"]
      358 GETUPVAL                         R17 10
      359 CALL                             R17 0 1
      360 SETTABLEKS                       R17 R16 K93 ["fill"]
      362 SETTABLEKS                       R16 R15 K21 ["tag"]
      364 GETUPVAL                         R17 10
      365 CALL                             R17 0 1
      366 JUMPIFNOT                        R17 ; [+2]
      367 LOADNIL                          R16
      368 JUMP                             ; [+7]
      369 GETIMPORT                        R16 K80 [UDim2.fromOffset]
      371 GETUPVAL                         R17 9
      372 GETTABLEKS                       R17 R17 K94 ["PROPERTY_WIDTH"]
      374 LOADN                            R18 0
      375 CALL                             R16 2 1
      376 SETTABLEKS                       R16 R15 K76 ["Size"]
      378 MOVE                             R16 R2
      379 CALL                             R16 0 1
      380 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      382 DUPTABLE                         R16 K96 [{"Content"}]
      383 GETTABLEKS                       R17 R0 K18 ["TrailingValue"]
      385 SETTABLEKS                       R17 R16 K95 ["Content"]
      387 CALL                             R13 3 1
      388 SETTABLEKS                       R13 R12 K18 ["TrailingValue"]
      390 CALL                             R9 3 -1
      391 RETURN                           R9 -1

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
      104 DUPCLOSURE                       R13 K26 [PROTO_0]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R12
      116 RETURN                           R13 1
