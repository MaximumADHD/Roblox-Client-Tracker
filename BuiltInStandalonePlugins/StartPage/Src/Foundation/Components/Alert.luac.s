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
       41 DUPTABLE                         R11 K11 [{"Text", "onActivated", "tag", "textStyle"}]
       42 GETTABLEKS                       R12 R0 K12 ["text"]
       44 SETTABLEKS                       R12 R11 K8 ["Text"]
       46 GETTABLEKS                       R12 R0 K9 ["onActivated"]
       48 SETTABLEKS                       R12 R11 K9 ["onActivated"]
       50 LOADK                            R12 K13 ["auto-xy content-emphasis text-label-small"]
       51 SETTABLEKS                       R12 R11 K4 ["tag"]
       53 GETTABLEKS                       R13 R0 K14 ["textColor"]
       55 JUMPIFNOT                        R13 ; [+9]
       56 DUPTABLE                         R12 K17 [{"Color3", "Transparency"}]
       57 GETTABLEKS                       R13 R0 K14 ["textColor"]
       59 SETTABLEKS                       R13 R12 K15 ["Color3"]
       61 LOADN                            R13 0
       62 SETTABLEKS                       R13 R12 K16 ["Transparency"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R12
       66 SETTABLEKS                       R12 R11 K10 ["textStyle"]
       68 CALL                             R9 2 1
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K2 ["createElement"]
       72 GETUPVAL                         R11 5
       73 DUPTABLE                         R12 K22 [{"Size", "Position", "backgroundStyle", "Visible"}]
       74 GETIMPORT                        R13 K25 [UDim2.new]
       76 LOADN                            R14 1
       77 LOADN                            R15 0
       78 LOADN                            R16 0
       79 LOADN                            R17 1
       80 CALL                             R13 4 1
       81 SETTABLEKS                       R13 R12 K18 ["Size"]
       83 GETIMPORT                        R13 K25 [UDim2.new]
       85 LOADN                            R14 0
       86 LOADN                            R15 0
       87 LOADN                            R16 1
       88 LOADN                            R17 2
       89 CALL                             R13 4 1
       90 SETTABLEKS                       R13 R12 K19 ["Position"]
       92 GETTABLEKS                       R14 R0 K26 ["showUnderline"]
       94 JUMPIFNOT                        R14 ; [+3]
       95 GETTABLEKS                       R13 R0 K27 ["underlineColor"]
       97 JUMP                             ; [+6]
       98 GETTABLEKS                       R13 R5 K28 ["Color"]
      100 GETTABLEKS                       R13 R13 K29 ["Content"]
      102 GETTABLEKS                       R13 R13 K30 ["Emphasis"]
      104 SETTABLEKS                       R13 R12 K20 ["backgroundStyle"]
      106 GETTABLEKS                       R14 R0 K26 ["showUnderline"]
      108 OR                               R13 R14 R3
      109 SETTABLEKS                       R13 R12 K21 ["Visible"]
      111 CALL                             R10 2 -1
      112 CALL                             R6 -1 -1
      113 RETURN                           R6 -1

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
      103 DUPTABLE                         R9 K26 [{"LayoutOrder", "backgroundStyle", "tag"}]
      104 GETTABLEKS                       R10 R0 K23 ["LayoutOrder"]
      106 SETTABLEKS                       R10 R9 K23 ["LayoutOrder"]
      108 SETTABLEKS                       R4 R9 K24 ["backgroundStyle"]
      110 LOADK                            R10 K27 ["padding-x-xlarge padding-y-medium row size-full-0 auto-y align-y-center"]
      111 SETTABLEKS                       R10 R9 K25 ["tag"]
      113 DUPTABLE                         R10 K31 [{"Content", "ButtonFrame", "CloseButton"}]
      114 GETUPVAL                         R11 3
      115 GETTABLEKS                       R11 R11 K22 ["createElement"]
      117 GETUPVAL                         R12 5
      118 DUPTABLE                         R13 K32 [{"tag", "LayoutOrder"}]
      119 LOADK                            R14 K33 ["grow auto-xy row gap-xlarge align-y-top align-x-left"]
      120 SETTABLEKS                       R14 R13 K25 ["tag"]
      122 LOADN                            R14 1
      123 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      125 DUPTABLE                         R14 K36 [{"Icon", "Description"}]
      126 GETUPVAL                         R15 3
      127 GETTABLEKS                       R15 R15 K22 ["createElement"]
      129 GETUPVAL                         R16 6
      130 DUPTABLE                         R17 K41 [{"name", "size", "variant", "style", "LayoutOrder"}]
      131 GETUPVAL                         R19 7
      132 JUMPIFNOT                        R19 ; [+14]
      133 GETUPVAL                         R19 8
      134 JUMPIFNOT                        R19 ; [+8]
      135 GETTABLEKS                       R19 R0 K5 ["type"]
      137 JUMPIFNOTEQKS                    R19 K10 ["Info"] ; [+5]
      139 GETUPVAL                         R18 9
      140 GETTABLEKS                       R18 R18 K42 ["CircleI"]
      142 JUMP                             ; [+5]
      143 GETUPVAL                         R18 9
      144 GETTABLEKS                       R18 R18 K43 ["TriangleExclamation"]
      146 JUMP                             ; [+1]
      147 LOADK                            R18 K44 ["icons/status/alert"]
      148 SETTABLEKS                       R18 R17 K37 ["name"]
      150 GETUPVAL                         R19 7
      151 JUMPIFNOT                        R19 ; [+5]
      152 GETTABLEKS                       R18 R1 K45 ["Size"]
      154 GETTABLEKS                       R18 R18 K46 ["Size_800"]
      156 JUMP                             ; [+3]
      157 GETUPVAL                         R18 10
      158 GETTABLEKS                       R18 R18 K47 ["Medium"]
      160 SETTABLEKS                       R18 R17 K38 ["size"]
      162 GETUPVAL                         R19 7
      163 JUMPIFNOT                        R19 ; [+4]
      164 GETUPVAL                         R18 11
      165 GETTABLEKS                       R18 R18 K48 ["Filled"]
      167 JUMP                             ; [+1]
      168 LOADNIL                          R18
      169 SETTABLEKS                       R18 R17 K39 ["variant"]
      171 DUPTABLE                         R18 K49 [{"Color3"}]
      172 SETTABLEKS                       R5 R18 K1 ["Color3"]
      174 SETTABLEKS                       R18 R17 K40 ["style"]
      176 LOADN                            R18 1
      177 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      179 CALL                             R15 2 1
      180 SETTABLEKS                       R15 R14 K34 ["Icon"]
      182 GETUPVAL                         R15 3
      183 GETTABLEKS                       R15 R15 K22 ["createElement"]
      185 GETUPVAL                         R16 5
      186 DUPTABLE                         R17 K32 [{"tag", "LayoutOrder"}]
      187 LOADK                            R18 K50 ["col gap-xsmall auto-xy align-x-left"]
      188 SETTABLEKS                       R18 R17 K25 ["tag"]
      190 LOADN                            R18 2
      191 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      193 DUPTABLE                         R18 K53 [{"Title", "Body"}]
      194 GETUPVAL                         R19 3
      195 GETTABLEKS                       R19 R19 K22 ["createElement"]
      197 GETUPVAL                         R20 12
      198 DUPTABLE                         R21 K56 [{"Text", "tag", "textStyle", "LayoutOrder"}]
      199 GETTABLEKS                       R22 R0 K57 ["title"]
      201 SETTABLEKS                       R22 R21 K54 ["Text"]
      203 LOADK                            R22 K58 ["auto-xy content-emphasis text-label-medium"]
      204 SETTABLEKS                       R22 R21 K25 ["tag"]
      206 JUMPIFNOT                        R6 ; [+7]
      207 DUPTABLE                         R22 K60 [{"Color3", "Transparency"}]
      208 SETTABLEKS                       R6 R22 K1 ["Color3"]
      210 LOADN                            R23 0
      211 SETTABLEKS                       R23 R22 K59 ["Transparency"]
      213 JUMP                             ; [+1]
      214 LOADNIL                          R22
      215 SETTABLEKS                       R22 R21 K55 ["textStyle"]
      217 LOADN                            R22 1
      218 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      220 CALL                             R19 2 1
      221 SETTABLEKS                       R19 R18 K51 ["Title"]
      223 GETUPVAL                         R19 3
      224 GETTABLEKS                       R19 R19 K22 ["createElement"]
      226 GETUPVAL                         R20 5
      227 DUPTABLE                         R21 K32 [{"tag", "LayoutOrder"}]
      228 LOADK                            R22 K61 ["row gap-small auto-xy"]
      229 SETTABLEKS                       R22 R21 K25 ["tag"]
      231 LOADN                            R22 2
      232 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      234 NEWTABLE                         R22 0 2
      236 GETUPVAL                         R23 3
      237 GETTABLEKS                       R23 R23 K22 ["createElement"]
      239 GETUPVAL                         R24 12
      240 DUPTABLE                         R25 K62 [{"Text", "tag", "textStyle"}]
      241 GETTABLEKS                       R26 R0 K63 ["body"]
      243 SETTABLEKS                       R26 R25 K54 ["Text"]
      245 LOADK                            R26 K64 ["auto-xy content-emphasis text-label-small"]
      246 SETTABLEKS                       R26 R25 K25 ["tag"]
      248 JUMPIFNOT                        R6 ; [+7]
      249 DUPTABLE                         R26 K60 [{"Color3", "Transparency"}]
      250 SETTABLEKS                       R6 R26 K1 ["Color3"]
      252 LOADN                            R27 0
      253 SETTABLEKS                       R27 R26 K59 ["Transparency"]
      255 JUMP                             ; [+1]
      256 LOADNIL                          R26
      257 SETTABLEKS                       R26 R25 K55 ["textStyle"]
      259 CALL                             R23 2 1
      260 GETTABLEKS                       R25 R0 K65 ["inlineAction"]
      262 JUMPIFNOT                        R25 ; [+38]
      263 GETUPVAL                         R24 3
      264 GETTABLEKS                       R24 R24 K22 ["createElement"]
      266 GETUPVAL                         R25 13
      267 DUPTABLE                         R26 K71 [{"text", "onActivated", "textColor", "showUnderline", "underlineColor"}]
      268 GETTABLEKS                       R27 R0 K65 ["inlineAction"]
      270 GETTABLEKS                       R27 R27 K66 ["text"]
      272 SETTABLEKS                       R27 R26 K66 ["text"]
      274 GETTABLEKS                       R27 R0 K65 ["inlineAction"]
      276 GETTABLEKS                       R27 R27 K72 ["onClick"]
      278 SETTABLEKS                       R27 R26 K67 ["onActivated"]
      280 SETTABLEKS                       R6 R26 K68 ["textColor"]
      282 LOADB                            R27 1
      283 SETTABLEKS                       R27 R26 K69 ["showUnderline"]
      285 GETTABLEKS                       R28 R0 K5 ["type"]
      287 JUMPIFNOTEQKS                    R28 K6 ["Error"] ; [+8]
      289 DUPTABLE                         R27 K60 [{"Color3", "Transparency"}]
      290 SETTABLEKS                       R6 R27 K1 ["Color3"]
      292 LOADN                            R28 0
      293 SETTABLEKS                       R28 R27 K59 ["Transparency"]
      295 JUMP                             ; [+1]
      296 LOADNIL                          R27
      297 SETTABLEKS                       R27 R26 K70 ["underlineColor"]
      299 CALL                             R24 2 1
      300 JUMP                             ; [+1]
      301 LOADNIL                          R24
      302 SETLIST                          R22 R23 2 [1]
      304 CALL                             R19 3 1
      305 SETTABLEKS                       R19 R18 K52 ["Body"]
      307 CALL                             R15 3 1
      308 SETTABLEKS                       R15 R14 K35 ["Description"]
      310 CALL                             R11 3 1
      311 SETTABLEKS                       R11 R10 K28 ["Content"]
      313 GETUPVAL                         R11 3
      314 GETTABLEKS                       R11 R11 K22 ["createElement"]
      316 GETUPVAL                         R12 5
      317 DUPTABLE                         R13 K32 [{"tag", "LayoutOrder"}]
      318 LOADK                            R14 K73 ["row align-x-center align-y-center gap-small auto-xy padding-x-medium"]
      319 SETTABLEKS                       R14 R13 K25 ["tag"]
      321 LOADN                            R14 2
      322 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      324 DUPTABLE                         R14 K76 [{"SecondaryActionButton", "PrimaryActionButton"}]
      325 GETUPVAL                         R16 8
      326 JUMPIFNOT                        R16 ; [+43]
      327 GETTABLEKS                       R16 R0 K77 ["secondaryAction"]
      329 JUMPIFNOT                        R16 ; [+40]
      330 GETUPVAL                         R15 3
      331 GETTABLEKS                       R15 R15 K22 ["createElement"]
      333 GETUPVAL                         R16 13
      334 DUPTABLE                         R17 K78 [{"text", "onActivated", "size", "textColor", "showUnderline", "underlineColor", "LayoutOrder"}]
      335 GETTABLEKS                       R18 R0 K77 ["secondaryAction"]
      337 GETTABLEKS                       R18 R18 K66 ["text"]
      339 SETTABLEKS                       R18 R17 K66 ["text"]
      341 GETTABLEKS                       R18 R0 K77 ["secondaryAction"]
      343 GETTABLEKS                       R18 R18 K72 ["onClick"]
      345 SETTABLEKS                       R18 R17 K67 ["onActivated"]
      347 GETUPVAL                         R18 14
      348 GETTABLEKS                       R18 R18 K79 ["Small"]
      350 SETTABLEKS                       R18 R17 K38 ["size"]
      352 SETTABLEKS                       R6 R17 K68 ["textColor"]
      354 LOADB                            R18 1
      355 SETTABLEKS                       R18 R17 K69 ["showUnderline"]
      357 DUPTABLE                         R18 K60 [{"Color3", "Transparency"}]
      358 SETTABLEKS                       R6 R18 K1 ["Color3"]
      360 LOADN                            R19 0
      361 SETTABLEKS                       R19 R18 K59 ["Transparency"]
      363 SETTABLEKS                       R18 R17 K70 ["underlineColor"]
      365 LOADN                            R18 1
      366 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      368 CALL                             R15 2 1
      369 JUMP                             ; [+1]
      370 LOADNIL                          R15
      371 SETTABLEKS                       R15 R14 K74 ["SecondaryActionButton"]
      373 GETTABLEKS                       R16 R0 K80 ["primaryAction"]
      375 JUMPIFNOT                        R16 ; [+32]
      376 GETUPVAL                         R15 3
      377 GETTABLEKS                       R15 R15 K22 ["createElement"]
      379 GETUPVAL                         R16 15
      380 DUPTABLE                         R17 K81 [{"text", "onActivated", "variant", "size", "LayoutOrder"}]
      381 GETTABLEKS                       R18 R0 K80 ["primaryAction"]
      383 GETTABLEKS                       R18 R18 K66 ["text"]
      385 SETTABLEKS                       R18 R17 K66 ["text"]
      387 GETTABLEKS                       R18 R0 K80 ["primaryAction"]
      389 GETTABLEKS                       R18 R18 K72 ["onClick"]
      391 SETTABLEKS                       R18 R17 K67 ["onActivated"]
      393 GETUPVAL                         R18 16
      394 GETTABLEKS                       R18 R18 K82 ["Standard"]
      396 SETTABLEKS                       R18 R17 K39 ["variant"]
      398 GETUPVAL                         R18 14
      399 GETTABLEKS                       R18 R18 K79 ["Small"]
      401 SETTABLEKS                       R18 R17 K38 ["size"]
      403 LOADN                            R18 2
      404 SETTABLEKS                       R18 R17 K23 ["LayoutOrder"]
      406 CALL                             R15 2 1
      407 JUMP                             ; [+1]
      408 LOADNIL                          R15
      409 SETTABLEKS                       R15 R14 K75 ["PrimaryActionButton"]
      411 CALL                             R11 3 1
      412 SETTABLEKS                       R11 R10 K29 ["ButtonFrame"]
      414 GETTABLEKS                       R12 R0 K5 ["type"]
      416 JUMPIFNOTEQKS                    R12 K6 ["Error"] ; [+36]
      418 GETUPVAL                         R11 3
      419 GETTABLEKS                       R11 R11 K22 ["createElement"]
      421 GETUPVAL                         R12 17
      422 DUPTABLE                         R13 K84 [{"onActivated", "icon", "size", "variant", "LayoutOrder"}]
      423 NEWCLOSURE                       R14 P0
      424 CAPTURE                          VAL R0
      425 SETTABLEKS                       R14 R13 K67 ["onActivated"]
      427 DUPTABLE                         R14 K85 [{"name", "variant"}]
      428 LOADK                            R15 K86 ["icons/navigation/close_small"]
      429 SETTABLEKS                       R15 R14 K37 ["name"]
      431 GETUPVAL                         R15 11
      432 GETTABLEKS                       R15 R15 K48 ["Filled"]
      434 SETTABLEKS                       R15 R14 K39 ["variant"]
      436 SETTABLEKS                       R14 R13 K83 ["icon"]
      438 GETUPVAL                         R14 10
      439 GETTABLEKS                       R14 R14 K47 ["Medium"]
      441 SETTABLEKS                       R14 R13 K38 ["size"]
      443 GETUPVAL                         R14 16
      444 GETTABLEKS                       R14 R14 K87 ["Utility"]
      446 SETTABLEKS                       R14 R13 K39 ["variant"]
      448 LOADN                            R14 3
      449 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      451 CALL                             R11 2 1
      452 JUMP                             ; [+29]
      453 GETUPVAL                         R11 3
      454 GETTABLEKS                       R11 R11 K22 ["createElement"]
      456 GETUPVAL                         R12 18
      457 DUPTABLE                         R13 K91 [{"onActivated", "stateLayer", "onStateChanged", "tag", "Image", "LayoutOrder"}]
      458 NEWCLOSURE                       R14 P1
      459 CAPTURE                          VAL R0
      460 SETTABLEKS                       R14 R13 K67 ["onActivated"]
      462 DUPTABLE                         R14 K93 [{"affordance"}]
      463 GETUPVAL                         R15 19
      464 GETTABLEKS                       R15 R15 K94 ["None"]
      466 SETTABLEKS                       R15 R14 K92 ["affordance"]
      468 SETTABLEKS                       R14 R13 K88 ["stateLayer"]
      470 SETTABLEKS                       R2 R13 K89 ["onStateChanged"]
      472 LOADK                            R14 K95 ["padding-small size-500 content-emphasis"]
      473 SETTABLEKS                       R14 R13 K25 ["tag"]
      475 LOADK                            R14 K96 ["icons/navigation/close"]
      476 SETTABLEKS                       R14 R13 K90 ["Image"]
      478 LOADN                            R14 3
      479 SETTABLEKS                       R14 R13 K23 ["LayoutOrder"]
      481 CALL                             R11 2 1
      482 SETTABLEKS                       R11 R10 K30 ["CloseButton"]
      484 CALL                             R7 3 -1
      485 RETURN                           R7 -1

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
       47 GETTABLEKS                       R6 R6 K15 ["getFFlagLuaStartPageBuilderIcons"]
       49 CALL                             R5 1 1
       50 CALL                             R5 0 1
       51 GETIMPORT                        R6 K5 [require]
       53 GETTABLEKS                       R7 R0 K8 ["Src"]
       55 GETTABLEKS                       R7 R7 K14 ["SharedFlags"]
       57 GETTABLEKS                       R7 R7 K16 ["getFFlagLuaStartPageVerifyAgeBanner"]
       59 CALL                             R6 1 1
       60 GETTABLEKS                       R7 R2 K11 ["Hooks"]
       62 GETTABLEKS                       R7 R7 K17 ["useTokens"]
       64 GETTABLEKS                       R8 R2 K18 ["View"]
       66 GETTABLEKS                       R9 R2 K19 ["Image"]
       68 GETTABLEKS                       R10 R2 K20 ["Text"]
       70 GETTABLEKS                       R11 R2 K21 ["Icon"]
       72 GETTABLEKS                       R12 R2 K22 ["IconButton"]
       74 GETTABLEKS                       R13 R2 K23 ["Button"]
       76 GETTABLEKS                       R14 R2 K24 ["Enums"]
       78 GETTABLEKS                       R14 R14 K25 ["IconSize"]
       80 GETTABLEKS                       R15 R2 K24 ["Enums"]
       82 GETTABLEKS                       R15 R15 K26 ["ButtonVariant"]
       84 GETTABLEKS                       R16 R2 K24 ["Enums"]
       86 GETTABLEKS                       R16 R16 K27 ["InputSize"]
       88 GETTABLEKS                       R17 R2 K24 ["Enums"]
       90 GETTABLEKS                       R17 R17 K28 ["Theme"]
       92 GETTABLEKS                       R18 R2 K24 ["Enums"]
       94 GETTABLEKS                       R18 R18 K29 ["StateLayerAffordance"]
       96 GETTABLEKS                       R19 R2 K24 ["Enums"]
       98 GETTABLEKS                       R19 R19 K30 ["IconName"]
      100 GETTABLEKS                       R20 R2 K24 ["Enums"]
      102 GETTABLEKS                       R20 R20 K31 ["IconVariant"]
      104 GETIMPORT                        R21 K5 [require]
      106 GETTABLEKS                       R22 R0 K8 ["Src"]
      108 GETTABLEKS                       R22 R22 K10 ["Foundation"]
      110 GETTABLEKS                       R22 R22 K32 ["Components"]
      112 GETTABLEKS                       R22 R22 K33 ["Frame"]
      114 CALL                             R21 1 1
      115 DUPCLOSURE                       R22 K34 [PROTO_2]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R21
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R8
      122 DUPCLOSURE                       R23 K35 [PROTO_5]
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R21
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R20
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R22
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R18
      143 RETURN                           R23 1
