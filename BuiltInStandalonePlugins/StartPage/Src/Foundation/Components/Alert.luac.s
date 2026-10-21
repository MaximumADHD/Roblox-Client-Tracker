PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["PointingHand"]
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["useBinding"]
        6 LOADB                            R4 0
        7 CALL                             R3 1 2
        8 GETUPVAL                         R5 2
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["createElement"]
       13 GETUPVAL                         R7 3
       14 NEWTABLE                         R8 4 0
       16 LOADK                            R9 K3 ["auto-xy"]
       17 SETTABLEKS                       R9 R8 K4 ["tag"]
       19 GETUPVAL                         R9 1
       20 GETTABLEKS                       R9 R9 K5 ["Event"]
       22 GETTABLEKS                       R9 R9 K6 ["MouseEnter"]
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R1
       27 SETTABLE                         R10 R8 R9
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R9 R9 K5 ["Event"]
       31 GETTABLEKS                       R9 R9 K7 ["MouseLeave"]
       33 NEWCLOSURE                       R10 P1
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R2
       36 SETTABLE                         R10 R8 R9
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K2 ["createElement"]
       40 GETUPVAL                         R10 4
       41 DUPTABLE                         R11 K12 [{["Text"], ["onActivated"], ["tag"] = "auto-xy text-label-small content-emphasis", ["textStyle"]}]
       42 GETTABLEKS                       R12 R0 K13 ["text"]
       44 SETTABLEKS                       R12 R11 K8 ["Text"]
       46 GETTABLEKS                       R12 R0 K9 ["onActivated"]
       48 SETTABLEKS                       R12 R11 K9 ["onActivated"]
       50 GETTABLEKS                       R13 R0 K14 ["textColor"]
       52 JUMPIFNOT                        R13 ; [+6]
       53 DUPTABLE                         R12 K18 [{["Color3"], ["Transparency"] = 0}]
       54 GETTABLEKS                       R13 R0 K14 ["textColor"]
       56 SETTABLEKS                       R13 R12 K15 ["Color3"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R12
       60 SETTABLEKS                       R12 R11 K11 ["textStyle"]
       62 CALL                             R9 2 1
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K2 ["createElement"]
       66 GETUPVAL                         R11 5
       67 DUPTABLE                         R12 K23 [{"Size", "Position", "backgroundStyle", "Visible"}]
       68 GETIMPORT                        R13 K26 [UDim2.new]
       70 LOADN                            R14 1
       71 LOADN                            R15 0
       72 LOADN                            R16 0
       73 LOADN                            R17 1
       74 CALL                             R13 4 1
       75 SETTABLEKS                       R13 R12 K19 ["Size"]
       77 GETIMPORT                        R13 K26 [UDim2.new]
       79 LOADN                            R14 0
       80 LOADN                            R15 0
       81 LOADN                            R16 1
       82 LOADN                            R17 2
       83 CALL                             R13 4 1
       84 SETTABLEKS                       R13 R12 K20 ["Position"]
       86 GETTABLEKS                       R14 R0 K27 ["showUnderline"]
       88 JUMPIFNOT                        R14 ; [+3]
       89 GETTABLEKS                       R13 R0 K28 ["underlineColor"]
       91 JUMP                             ; [+6]
       92 GETTABLEKS                       R13 R5 K29 ["Color"]
       94 GETTABLEKS                       R13 R13 K30 ["Content"]
       96 GETTABLEKS                       R13 R13 K31 ["Emphasis"]
       98 SETTABLEKS                       R13 R12 K21 ["backgroundStyle"]
      100 GETTABLEKS                       R14 R0 K27 ["showUnderline"]
      102 OR                               R13 R14 R3
      103 SETTABLEKS                       R13 R12 K22 ["Visible"]
      105 CALL                             R10 2 -1
      106 CALL                             R6 -1 -1
      107 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADK                            R3 K0 ["PointingHand"]
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K3 [Color3.fromHex]
        7 LOADK                            R4 K4 ["#FFFFFF"]
        8 CALL                             R3 1 1
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 GETTABLEKS                       R7 R0 K5 ["type"]
       14 JUMPIFNOTEQKS                    R7 K6 ["Error"] ; [+10]
       16 GETTABLEKS                       R7 R1 K7 ["Color"]
       18 GETTABLEKS                       R7 R7 K8 ["System"]
       20 GETTABLEKS                       R4 R7 K9 ["Alert"]
       22 MOVE                             R5 R3
       23 MOVE                             R6 R3
       24 JUMP                             ; [+74]
       25 GETTABLEKS                       R7 R0 K5 ["type"]
       27 JUMPIFNOTEQKS                    R7 K10 ["Info"] ; [+10]
       29 GETTABLEKS                       R7 R1 K7 ["Color"]
       31 GETTABLEKS                       R7 R7 K8 ["System"]
       33 GETTABLEKS                       R4 R7 K11 ["Emphasis"]
       35 MOVE                             R5 R3
       36 MOVE                             R6 R3
       37 JUMP                             ; [+61]
       38 GETTABLEKS                       R7 R1 K12 ["Config"]
       40 GETTABLEKS                       R7 R7 K13 ["ColorMode"]
       42 GETTABLEKS                       R7 R7 K14 ["Name"]
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R8 R8 K15 ["Dark"]
       47 JUMPIFNOTEQ                      R7 R8 ; [+10]
       49 GETTABLEKS                       R7 R1 K7 ["Color"]
       51 GETTABLEKS                       R7 R7 K16 ["Extended"]
       53 GETTABLEKS                       R7 R7 K17 ["Yellow"]
       55 GETTABLEKS                       R4 R7 K18 ["Yellow_1300"]
       57 JUMP                             ; [+8]
       58 GETTABLEKS                       R7 R1 K7 ["Color"]
       60 GETTABLEKS                       R7 R7 K16 ["Extended"]
       62 GETTABLEKS                       R7 R7 K17 ["Yellow"]
       64 GETTABLEKS                       R4 R7 K19 ["Yellow_200"]
       66 GETTABLEKS                       R7 R1 K12 ["Config"]
       68 GETTABLEKS                       R7 R7 K13 ["ColorMode"]
       70 GETTABLEKS                       R7 R7 K14 ["Name"]
       72 GETUPVAL                         R8 2
       73 GETTABLEKS                       R8 R8 K15 ["Dark"]
       75 JUMPIFNOTEQ                      R7 R8 ; [+12]
       77 GETTABLEKS                       R7 R1 K7 ["Color"]
       79 GETTABLEKS                       R7 R7 K16 ["Extended"]
       81 GETTABLEKS                       R7 R7 K17 ["Yellow"]
       83 GETTABLEKS                       R7 R7 K20 ["Yellow_500"]
       85 GETTABLEKS                       R5 R7 K1 ["Color3"]
       87 JUMP                             ; [+10]
       88 GETTABLEKS                       R7 R1 K7 ["Color"]
       90 GETTABLEKS                       R7 R7 K16 ["Extended"]
       92 GETTABLEKS                       R7 R7 K17 ["Yellow"]
       94 GETTABLEKS                       R7 R7 K21 ["Yellow_600"]
       96 GETTABLEKS                       R5 R7 K1 ["Color3"]
       98 LOADNIL                          R6
       99 GETUPVAL                         R7 3
      100 GETTABLEKS                       R7 R7 K22 ["createElement"]
      102 GETUPVAL                         R8 4
      103 DUPTABLE                         R9 K27 [{["LayoutOrder"], ["backgroundStyle"], ["tag"] = "row align-y-center size-full-0 auto-y padding-x-xlarge padding-y-medium"}]
      104 GETTABLEKS                       R10 R0 K23 ["LayoutOrder"]
      106 SETTABLEKS                       R10 R9 K23 ["LayoutOrder"]
      108 SETTABLEKS                       R4 R9 K24 ["backgroundStyle"]
      110 DUPTABLE                         R10 K31 [{"Content", "ButtonFrame", "CloseButton"}]
      111 GETUPVAL                         R11 3
      112 GETTABLEKS                       R11 R11 K22 ["createElement"]
      114 GETUPVAL                         R12 5
      115 DUPTABLE                         R13 K34 [{["tag"] = "row align-x-left align-y-top grow gap-xlarge auto-xy", ["LayoutOrder"] = 1}]
      116 DUPTABLE                         R14 K37 [{"Icon", "Description"}]
      117 GETUPVAL                         R15 3
      118 GETTABLEKS                       R15 R15 K22 ["createElement"]
      120 GETUPVAL                         R16 6
      121 DUPTABLE                         R17 K42 [{["name"], ["size"], ["variant"], ["style"], ["LayoutOrder"] = 1}]
      122 GETUPVAL                         R19 7
      123 JUMPIFNOT                        R19 ; [+8]
      124 GETTABLEKS                       R19 R0 K5 ["type"]
      126 JUMPIFNOTEQKS                    R19 K10 ["Info"] ; [+5]
      128 GETUPVAL                         R18 8
      129 GETTABLEKS                       R18 R18 K43 ["CircleI"]
      131 JUMP                             ; [+3]
      132 GETUPVAL                         R18 8
      133 GETTABLEKS                       R18 R18 K44 ["TriangleExclamation"]
      135 SETTABLEKS                       R18 R17 K38 ["name"]
      137 GETTABLEKS                       R18 R1 K45 ["Size"]
      139 GETTABLEKS                       R18 R18 K46 ["Size_800"]
      141 SETTABLEKS                       R18 R17 K39 ["size"]
      143 GETUPVAL                         R18 9
      144 GETTABLEKS                       R18 R18 K47 ["Filled"]
      146 SETTABLEKS                       R18 R17 K40 ["variant"]
      148 DUPTABLE                         R18 K48 [{"Color3"}]
      149 SETTABLEKS                       R5 R18 K1 ["Color3"]
      151 SETTABLEKS                       R18 R17 K41 ["style"]
      153 CALL                             R15 2 1
      154 SETTABLEKS                       R15 R14 K35 ["Icon"]
      156 GETUPVAL                         R15 3
      157 GETTABLEKS                       R15 R15 K22 ["createElement"]
      159 GETUPVAL                         R16 5
      160 DUPTABLE                         R17 K51 [{["tag"] = "col align-x-left gap-xsmall auto-xy", ["LayoutOrder"] = 2}]
      161 DUPTABLE                         R18 K54 [{"Title", "Body"}]
      162 GETUPVAL                         R19 3
      163 GETTABLEKS                       R19 R19 K22 ["createElement"]
      165 GETUPVAL                         R20 10
      166 DUPTABLE                         R21 K58 [{["Text"], ["tag"] = "auto-xy text-label-medium content-emphasis", ["textStyle"], ["LayoutOrder"] = 1}]
      167 GETTABLEKS                       R22 R0 K59 ["title"]
      169 SETTABLEKS                       R22 R21 K55 ["Text"]
      171 JUMPIFNOT                        R6 ; [+4]
      172 DUPTABLE                         R22 K62 [{["Color3"], ["Transparency"] = 0}]
      173 SETTABLEKS                       R6 R22 K1 ["Color3"]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R22
      177 SETTABLEKS                       R22 R21 K57 ["textStyle"]
      179 CALL                             R19 2 1
      180 SETTABLEKS                       R19 R18 K52 ["Title"]
      182 GETUPVAL                         R19 3
      183 GETTABLEKS                       R19 R19 K22 ["createElement"]
      185 GETUPVAL                         R20 5
      186 DUPTABLE                         R21 K64 [{["tag"] = "row gap-small auto-xy", ["LayoutOrder"] = 2}]
      187 NEWTABLE                         R22 0 2
      189 GETUPVAL                         R23 3
      190 GETTABLEKS                       R23 R23 K22 ["createElement"]
      192 GETUPVAL                         R24 10
      193 DUPTABLE                         R25 K66 [{["Text"], ["tag"] = "auto-xy text-label-small content-emphasis", ["textStyle"]}]
      194 GETTABLEKS                       R26 R0 K67 ["body"]
      196 SETTABLEKS                       R26 R25 K55 ["Text"]
      198 JUMPIFNOT                        R6 ; [+4]
      199 DUPTABLE                         R26 K62 [{["Color3"], ["Transparency"] = 0}]
      200 SETTABLEKS                       R6 R26 K1 ["Color3"]
      202 JUMP                             ; [+1]
      203 LOADNIL                          R26
      204 SETTABLEKS                       R26 R25 K57 ["textStyle"]
      206 CALL                             R23 2 1
      207 GETTABLEKS                       R25 R0 K68 ["inlineAction"]
      209 JUMPIFNOT                        R25 ; [+32]
      210 GETUPVAL                         R24 3
      211 GETTABLEKS                       R24 R24 K22 ["createElement"]
      213 GETUPVAL                         R25 11
      214 DUPTABLE                         R26 K75 [{["text"], ["onActivated"], ["textColor"], ["showUnderline"] = True, ["underlineColor"]}]
      215 GETTABLEKS                       R27 R0 K68 ["inlineAction"]
      217 GETTABLEKS                       R27 R27 K69 ["text"]
      219 SETTABLEKS                       R27 R26 K69 ["text"]
      221 GETTABLEKS                       R27 R0 K68 ["inlineAction"]
      223 GETTABLEKS                       R27 R27 K76 ["onClick"]
      225 SETTABLEKS                       R27 R26 K70 ["onActivated"]
      227 SETTABLEKS                       R6 R26 K71 ["textColor"]
      229 GETTABLEKS                       R28 R0 K5 ["type"]
      231 JUMPIFNOTEQKS                    R28 K6 ["Error"] ; [+5]
      233 DUPTABLE                         R27 K62 [{["Color3"], ["Transparency"] = 0}]
      234 SETTABLEKS                       R6 R27 K1 ["Color3"]
      236 JUMP                             ; [+1]
      237 LOADNIL                          R27
      238 SETTABLEKS                       R27 R26 K74 ["underlineColor"]
      240 CALL                             R24 2 1
      241 JUMP                             ; [+1]
      242 LOADNIL                          R24
      243 SETLIST                          R22 R23 2 [1]
      245 CALL                             R19 3 1
      246 SETTABLEKS                       R19 R18 K53 ["Body"]
      248 CALL                             R15 3 1
      249 SETTABLEKS                       R15 R14 K36 ["Description"]
      251 CALL                             R11 3 1
      252 SETTABLEKS                       R11 R10 K28 ["Content"]
      254 GETUPVAL                         R11 3
      255 GETTABLEKS                       R11 R11 K22 ["createElement"]
      257 GETUPVAL                         R12 5
      258 DUPTABLE                         R13 K78 [{["tag"] = "row align-x-center align-y-center gap-small auto-xy padding-x-medium", ["LayoutOrder"] = 2}]
      259 DUPTABLE                         R14 K81 [{"SecondaryActionButton", "PrimaryActionButton"}]
      260 GETUPVAL                         R16 7
      261 JUMPIFNOT                        R16 ; [+34]
      262 GETTABLEKS                       R16 R0 K82 ["secondaryAction"]
      264 JUMPIFNOT                        R16 ; [+31]
      265 GETUPVAL                         R15 3
      266 GETTABLEKS                       R15 R15 K22 ["createElement"]
      268 GETUPVAL                         R16 11
      269 DUPTABLE                         R17 K83 [{["text"], ["onActivated"], ["size"], ["textColor"], ["showUnderline"] = True, ["underlineColor"], ["LayoutOrder"] = 1}]
      270 GETTABLEKS                       R18 R0 K82 ["secondaryAction"]
      272 GETTABLEKS                       R18 R18 K69 ["text"]
      274 SETTABLEKS                       R18 R17 K69 ["text"]
      276 GETTABLEKS                       R18 R0 K82 ["secondaryAction"]
      278 GETTABLEKS                       R18 R18 K76 ["onClick"]
      280 SETTABLEKS                       R18 R17 K70 ["onActivated"]
      282 GETUPVAL                         R18 12
      283 GETTABLEKS                       R18 R18 K84 ["Small"]
      285 SETTABLEKS                       R18 R17 K39 ["size"]
      287 SETTABLEKS                       R6 R17 K71 ["textColor"]
      289 DUPTABLE                         R18 K62 [{["Color3"], ["Transparency"] = 0}]
      290 SETTABLEKS                       R6 R18 K1 ["Color3"]
      292 SETTABLEKS                       R18 R17 K74 ["underlineColor"]
      294 CALL                             R15 2 1
      295 JUMP                             ; [+1]
      296 LOADNIL                          R15
      297 SETTABLEKS                       R15 R14 K79 ["SecondaryActionButton"]
      299 GETTABLEKS                       R16 R0 K85 ["primaryAction"]
      301 JUMPIFNOT                        R16 ; [+29]
      302 GETUPVAL                         R15 3
      303 GETTABLEKS                       R15 R15 K22 ["createElement"]
      305 GETUPVAL                         R16 13
      306 DUPTABLE                         R17 K86 [{["text"], ["onActivated"], ["variant"], ["size"], ["LayoutOrder"] = 2}]
      307 GETTABLEKS                       R18 R0 K85 ["primaryAction"]
      309 GETTABLEKS                       R18 R18 K69 ["text"]
      311 SETTABLEKS                       R18 R17 K69 ["text"]
      313 GETTABLEKS                       R18 R0 K85 ["primaryAction"]
      315 GETTABLEKS                       R18 R18 K76 ["onClick"]
      317 SETTABLEKS                       R18 R17 K70 ["onActivated"]
      319 GETUPVAL                         R18 14
      320 GETTABLEKS                       R18 R18 K87 ["Standard"]
      322 SETTABLEKS                       R18 R17 K40 ["variant"]
      324 GETUPVAL                         R18 12
      325 GETTABLEKS                       R18 R18 K84 ["Small"]
      327 SETTABLEKS                       R18 R17 K39 ["size"]
      329 CALL                             R15 2 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R15
      332 SETTABLEKS                       R15 R14 K80 ["PrimaryActionButton"]
      334 CALL                             R11 3 1
      335 SETTABLEKS                       R11 R10 K29 ["ButtonFrame"]
      337 GETTABLEKS                       R12 R0 K5 ["type"]
      339 JUMPIFNOTEQKS                    R12 K6 ["Error"] ; [+30]
      341 GETUPVAL                         R11 3
      342 GETTABLEKS                       R11 R11 K22 ["createElement"]
      344 GETUPVAL                         R12 15
      345 DUPTABLE                         R13 K90 [{["onActivated"], ["icon"], ["size"], ["variant"], ["LayoutOrder"] = 3}]
      346 NEWCLOSURE                       R14 P0
      347 CAPTURE                          VAL R0
      348 SETTABLEKS                       R14 R13 K70 ["onActivated"]
      350 DUPTABLE                         R14 K92 [{["name"] = "icons/navigation/close_small", ["variant"]}]
      351 GETUPVAL                         R15 9
      352 GETTABLEKS                       R15 R15 K47 ["Filled"]
      354 SETTABLEKS                       R15 R14 K40 ["variant"]
      356 SETTABLEKS                       R14 R13 K88 ["icon"]
      358 GETUPVAL                         R14 16
      359 GETTABLEKS                       R14 R14 K93 ["Medium"]
      361 SETTABLEKS                       R14 R13 K39 ["size"]
      363 GETUPVAL                         R14 14
      364 GETTABLEKS                       R14 R14 K94 ["Utility"]
      366 SETTABLEKS                       R14 R13 K40 ["variant"]
      368 CALL                             R11 2 1
      369 JUMP                             ; [+20]
      370 GETUPVAL                         R11 3
      371 GETTABLEKS                       R11 R11 K22 ["createElement"]
      373 GETUPVAL                         R12 17
      374 DUPTABLE                         R13 K100 [{["onActivated"], ["stateLayer"], ["onStateChanged"], ["tag"] = "size-500 padding-small content-emphasis", ["Image"] = "icons/navigation/close", ["LayoutOrder"] = 3}]
      375 NEWCLOSURE                       R14 P1
      376 CAPTURE                          VAL R0
      377 SETTABLEKS                       R14 R13 K70 ["onActivated"]
      379 DUPTABLE                         R14 K102 [{"affordance"}]
      380 GETUPVAL                         R15 18
      381 GETTABLEKS                       R15 R15 K103 ["None"]
      383 SETTABLEKS                       R15 R14 K101 ["affordance"]
      385 SETTABLEKS                       R14 R13 K95 ["stateLayer"]
      387 SETTABLEKS                       R2 R13 K96 ["onStateChanged"]
      389 CALL                             R11 2 1
      390 SETTABLEKS                       R11 R10 K30 ["CloseButton"]
      392 CALL                             R7 3 -1
      393 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Hooks"]
       29 GETTABLEKS                       R4 R4 K12 ["useOnStateChangedCursor"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       38 GETTABLEKS                       R5 R5 K13 ["useCursor"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K14 ["SharedFlags"]
       47 GETTABLEKS                       R6 R6 K15 ["getFFlagLuaStartPageVerifyAgeBanner"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R2 K11 ["Hooks"]
       52 GETTABLEKS                       R6 R6 K16 ["useTokens"]
       54 GETTABLEKS                       R7 R2 K17 ["View"]
       56 GETTABLEKS                       R8 R2 K18 ["Image"]
       58 GETTABLEKS                       R9 R2 K19 ["Text"]
       60 GETTABLEKS                       R10 R2 K20 ["Icon"]
       62 GETTABLEKS                       R11 R2 K21 ["IconButton"]
       64 GETTABLEKS                       R12 R2 K22 ["Button"]
       66 GETTABLEKS                       R13 R2 K23 ["Enums"]
       68 GETTABLEKS                       R13 R13 K24 ["IconSize"]
       70 GETTABLEKS                       R14 R2 K23 ["Enums"]
       72 GETTABLEKS                       R14 R14 K25 ["ButtonVariant"]
       74 GETTABLEKS                       R15 R2 K23 ["Enums"]
       76 GETTABLEKS                       R15 R15 K26 ["InputSize"]
       78 GETTABLEKS                       R16 R2 K23 ["Enums"]
       80 GETTABLEKS                       R16 R16 K27 ["Theme"]
       82 GETTABLEKS                       R17 R2 K23 ["Enums"]
       84 GETTABLEKS                       R17 R17 K28 ["StateLayerAffordance"]
       86 GETTABLEKS                       R18 R2 K23 ["Enums"]
       88 GETTABLEKS                       R18 R18 K29 ["IconName"]
       90 GETTABLEKS                       R19 R2 K23 ["Enums"]
       92 GETTABLEKS                       R19 R19 K30 ["IconVariant"]
       94 GETIMPORT                        R20 K5 [require]
       96 GETTABLEKS                       R21 R0 K8 ["Src"]
       98 GETTABLEKS                       R21 R21 K10 ["Foundation"]
      100 GETTABLEKS                       R21 R21 K31 ["Components"]
      102 GETTABLEKS                       R21 R21 K32 ["Frame"]
      104 CALL                             R20 1 1
      105 DUPCLOSURE                       R21 K33 [PROTO_2]
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R20
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R7
      112 DUPCLOSURE                       R22 K34 [PROTO_5]
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R20
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R21
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R17
      132 RETURN                           R22 1
