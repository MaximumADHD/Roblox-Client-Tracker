PROTO_0:
        0 ADD                              R2 R1 R0
        1 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["isOrdered is disabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 MOVE                             R1 R0
        9 JUMPIFNOT                        R1 ; [+11]
       10 LOADK                            R4 K3 ["^*"]
       11 NAMECALL                         R2 R0 K4 ["find"]
       13 CALL                             R2 2 1
       14 NOT                              R1 R2
       15 JUMPIFNOT                        R1 ; [+5]
       16 LOADK                            R4 K5 ["^-"]
       17 NAMECALL                         R2 R0 K4 ["find"]
       19 CALL                             R2 2 1
       20 NOT                              R1 R2
       21 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["MarkerImage"]
        5 JUMPIF                           R4 ; [+3]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K0 ["MarkerImage"]
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FASTCALL1                        TYPE R0 ; [+3]
       12 MOVE                             R8 R0
       13 GETIMPORT                        R7 K2 [type]
       15 CALL                             R7 1 1
       16 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+67]
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R7 R8 K4 ["createElement"]
       21 GETUPVAL                         R8 4
       22 DUPTABLE                         R9 K16 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextTruncate", "TextWrapped", "Padding", "TextXAlignment"}]
       23 GETIMPORT                        R10 K19 [Enum.AutomaticSize.XY]
       25 SETTABLEKS                       R10 R9 K5 ["AutomaticSize"]
       27 GETUPVAL                         R11 1
       28 GETTABLEKS                       R10 R11 K6 ["Font"]
       30 JUMPIF                           R10 ; [+3]
       31 GETUPVAL                         R11 2
       32 GETTABLEKS                       R10 R11 K6 ["Font"]
       34 SETTABLEKS                       R10 R9 K6 ["Font"]
       36 LOADN                            R10 2
       37 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       39 GETUPVAL                         R10 5
       40 SETTABLEKS                       R10 R9 K8 ["Size"]
       42 SETTABLEKS                       R0 R9 K9 ["Text"]
       44 GETUPVAL                         R11 1
       45 GETTABLEKS                       R10 R11 K10 ["TextColor"]
       47 JUMPIF                           R10 ; [+3]
       48 GETUPVAL                         R11 2
       49 GETTABLEKS                       R10 R11 K10 ["TextColor"]
       51 SETTABLEKS                       R10 R9 K10 ["TextColor"]
       53 GETUPVAL                         R11 1
       54 GETTABLEKS                       R10 R11 K11 ["TextSize"]
       56 JUMPIF                           R10 ; [+3]
       57 GETUPVAL                         R11 2
       58 GETTABLEKS                       R10 R11 K11 ["TextSize"]
       60 SETTABLEKS                       R10 R9 K11 ["TextSize"]
       62 GETUPVAL                         R10 6
       63 SETTABLEKS                       R10 R9 K12 ["TextTruncate"]
       65 GETUPVAL                         R10 7
       66 SETTABLEKS                       R10 R9 K13 ["TextWrapped"]
       68 GETUPVAL                         R11 1
       69 GETTABLEKS                       R10 R11 K14 ["Padding"]
       71 JUMPIF                           R10 ; [+3]
       72 GETUPVAL                         R11 2
       73 GETTABLEKS                       R10 R11 K14 ["Padding"]
       75 SETTABLEKS                       R10 R9 K14 ["Padding"]
       77 GETIMPORT                        R10 K21 [Enum.TextXAlignment.Left]
       79 SETTABLEKS                       R10 R9 K15 ["TextXAlignment"]
       81 CALL                             R7 2 1
       82 MOVE                             R2 R7
       83 JUMP                             ; [+202]
       84 FASTCALL1                        TYPEOF R0 ; [+3]
       85 MOVE                             R8 R0
       86 GETIMPORT                        R7 K23 [typeof]
       88 CALL                             R7 1 1
       89 JUMPIFNOTEQKS                    R7 K24 ["table"] ; [+112]
       91 GETTABLEKS                       R7 R0 K9 ["Text"]
       93 JUMPIFNOT                        R7 ; [+108]
       94 GETUPVAL                         R7 8
       95 CALL                             R7 0 1
       96 JUMPIFNOT                        R7 ; [+2]
       97 GETTABLEKS                       R6 R0 K25 ["Prefix"]
       99 GETUPVAL                         R8 1
      100 GETTABLEKS                       R7 R8 K26 ["SubItemStyle"]
      102 GETIMPORT                        R8 K29 [UDim2.new]
      104 LOADN                            R9 1
      105 GETTABLEKS                       R11 R7 K30 ["ItemOffset"]
      107 MINUS                            R10 R11
      108 JUMPIF                           R10 ; [+5]
      109 GETUPVAL                         R12 2
      110 GETTABLEKS                       R11 R12 K26 ["SubItemStyle"]
      112 GETTABLEKS                       R10 R11 K30 ["ItemOffset"]
      114 LOADN                            R11 0
      115 LOADN                            R12 0
      116 CALL                             R8 4 1
      117 GETTABLEKS                       R9 R7 K31 ["ItemIndentation"]
      119 OR                               R3 R9 R3
      120 GETTABLEKS                       R9 R7 K32 ["MarkerStyle"]
      122 OR                               R4 R9 R4
      123 JUMPIFNOT                        R3 ; [+14]
      124 GETUPVAL                         R10 3
      125 GETTABLEKS                       R9 R10 K4 ["createElement"]
      127 LOADK                            R10 K33 ["UIPadding"]
      128 DUPTABLE                         R11 K35 [{"PaddingLeft"}]
      129 GETIMPORT                        R12 K37 [UDim.new]
      131 LOADN                            R13 0
      132 MOVE                             R14 R3
      133 CALL                             R12 2 1
      134 SETTABLEKS                       R12 R11 K34 ["PaddingLeft"]
      136 CALL                             R9 2 1
      137 MOVE                             R5 R9
      138 GETUPVAL                         R10 3
      139 GETTABLEKS                       R9 R10 K4 ["createElement"]
      141 GETUPVAL                         R10 4
      142 DUPTABLE                         R11 K40 [{"AutomaticSize", "LayoutOrder", "Size", "textStyle", "FontStyle", "Text", "TextWrapped", "TextTruncate", "TextXAlignment"}]
      143 GETIMPORT                        R12 K19 [Enum.AutomaticSize.XY]
      145 SETTABLEKS                       R12 R11 K5 ["AutomaticSize"]
      147 LOADN                            R12 2
      148 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      150 SETTABLEKS                       R8 R11 K8 ["Size"]
      152 DUPTABLE                         R12 K42 [{"Color3"}]
      153 GETUPVAL                         R14 1
      154 GETTABLEKS                       R13 R14 K10 ["TextColor"]
      156 JUMPIF                           R13 ; [+3]
      157 GETUPVAL                         R14 2
      158 GETTABLEKS                       R13 R14 K10 ["TextColor"]
      160 SETTABLEKS                       R13 R12 K41 ["Color3"]
      162 SETTABLEKS                       R12 R11 K38 ["textStyle"]
      164 DUPTABLE                         R12 K44 [{"Font", "FontSize"}]
      165 GETUPVAL                         R14 1
      166 GETTABLEKS                       R13 R14 K6 ["Font"]
      168 JUMPIF                           R13 ; [+3]
      169 GETUPVAL                         R14 2
      170 GETTABLEKS                       R13 R14 K6 ["Font"]
      172 SETTABLEKS                       R13 R12 K6 ["Font"]
      174 GETUPVAL                         R14 1
      175 GETTABLEKS                       R13 R14 K11 ["TextSize"]
      177 JUMPIF                           R13 ; [+3]
      178 GETUPVAL                         R14 2
      179 GETTABLEKS                       R13 R14 K11 ["TextSize"]
      181 SETTABLEKS                       R13 R12 K43 ["FontSize"]
      183 SETTABLEKS                       R12 R11 K39 ["FontStyle"]
      185 GETTABLEKS                       R12 R0 K9 ["Text"]
      187 SETTABLEKS                       R12 R11 K9 ["Text"]
      189 GETUPVAL                         R12 7
      190 SETTABLEKS                       R12 R11 K13 ["TextWrapped"]
      192 GETUPVAL                         R12 6
      193 SETTABLEKS                       R12 R11 K12 ["TextTruncate"]
      195 GETIMPORT                        R12 K21 [Enum.TextXAlignment.Left]
      197 SETTABLEKS                       R12 R11 K15 ["TextXAlignment"]
      199 CALL                             R9 2 1
      200 MOVE                             R2 R9
      201 JUMP                             ; [+84]
      202 GETUPVAL                         R7 8
      203 CALL                             R7 0 1
      204 JUMPIFNOT                        R7 ; [+48]
      205 FASTCALL1                        TYPEOF R0 ; [+3]
      206 MOVE                             R8 R0
      207 GETIMPORT                        R7 K23 [typeof]
      209 CALL                             R7 1 1
      210 JUMPIFNOTEQKS                    R7 K24 ["table"] ; [+42]
      212 GETTABLEKS                       R7 R0 K45 ["Item"]
      214 JUMPIFNOT                        R7 ; [+38]
      215 GETTABLEKS                       R6 R0 K25 ["Prefix"]
      217 GETUPVAL                         R8 3
      218 GETTABLEKS                       R7 R8 K4 ["createElement"]
      220 GETUPVAL                         R8 9
      221 DUPTABLE                         R9 K47 [{"tag", "AutomaticSize", "LayoutOrder", "Size"}]
      222 GETUPVAL                         R11 8
      223 CALL                             R11 0 1
      224 JUMPIFNOT                        R11 ; [+2]
      225 LOADK                            R10 K48 ["auto-y"]
      226 JUMP                             ; [+1]
      227 LOADNIL                          R10
      228 SETTABLEKS                       R10 R9 K46 ["tag"]
      230 GETUPVAL                         R11 8
      231 CALL                             R11 0 1
      232 JUMPIFNOT                        R11 ; [+2]
      233 LOADNIL                          R10
      234 JUMP                             ; [+2]
      235 GETIMPORT                        R10 K19 [Enum.AutomaticSize.XY]
      237 SETTABLEKS                       R10 R9 K5 ["AutomaticSize"]
      239 LOADN                            R10 2
      240 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      242 GETUPVAL                         R10 5
      243 SETTABLEKS                       R10 R9 K8 ["Size"]
      245 DUPTABLE                         R10 K50 [{"ContentElement"}]
      246 GETTABLEKS                       R11 R0 K45 ["Item"]
      248 SETTABLEKS                       R11 R10 K49 ["ContentElement"]
      250 CALL                             R7 3 1
      251 MOVE                             R2 R7
      252 JUMP                             ; [+33]
      253 GETUPVAL                         R8 3
      254 GETTABLEKS                       R7 R8 K4 ["createElement"]
      256 GETUPVAL                         R8 9
      257 DUPTABLE                         R9 K47 [{"tag", "AutomaticSize", "LayoutOrder", "Size"}]
      258 GETUPVAL                         R11 8
      259 CALL                             R11 0 1
      260 JUMPIFNOT                        R11 ; [+2]
      261 LOADK                            R10 K48 ["auto-y"]
      262 JUMP                             ; [+1]
      263 LOADNIL                          R10
      264 SETTABLEKS                       R10 R9 K46 ["tag"]
      266 GETUPVAL                         R11 8
      267 CALL                             R11 0 1
      268 JUMPIFNOT                        R11 ; [+2]
      269 LOADNIL                          R10
      270 JUMP                             ; [+2]
      271 GETIMPORT                        R10 K19 [Enum.AutomaticSize.XY]
      273 SETTABLEKS                       R10 R9 K5 ["AutomaticSize"]
      275 LOADN                            R10 2
      276 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      278 GETUPVAL                         R10 5
      279 SETTABLEKS                       R10 R9 K8 ["Size"]
      281 DUPTABLE                         R10 K50 [{"ContentElement"}]
      282 SETTABLEKS                       R0 R10 K49 ["ContentElement"]
      284 CALL                             R7 3 1
      285 MOVE                             R2 R7
      286 GETUPVAL                         R8 3
      287 GETTABLEKS                       R7 R8 K4 ["createElement"]
      289 GETUPVAL                         R8 9
      290 DUPTABLE                         R9 K54 [{"key", "testId", "AutomaticSize", "LayoutOrder", "layout", "tag"}]
      291 FASTCALL1                        TOSTRING R1 ; [+3]
      292 MOVE                             R11 R1
      293 GETIMPORT                        R10 K56 [tostring]
      295 CALL                             R10 1 1
      296 SETTABLEKS                       R10 R9 K51 ["key"]
      298 LOADK                            R10 K57 ["--markdown--bullet-list-item"]
      299 SETTABLEKS                       R10 R9 K52 ["testId"]
      301 GETUPVAL                         R11 8
      302 CALL                             R11 0 1
      303 JUMPIFNOT                        R11 ; [+2]
      304 LOADNIL                          R10
      305 JUMP                             ; [+2]
      306 GETIMPORT                        R10 K19 [Enum.AutomaticSize.XY]
      308 SETTABLEKS                       R10 R9 K5 ["AutomaticSize"]
      310 SETTABLEKS                       R1 R9 K7 ["LayoutOrder"]
      312 GETUPVAL                         R11 8
      313 CALL                             R11 0 1
      314 JUMPIF                           R11 ; [+14]
      315 DUPTABLE                         R10 K61 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      316 GETIMPORT                        R11 K63 [Enum.FillDirection.Horizontal]
      318 SETTABLEKS                       R11 R10 K58 ["FillDirection"]
      320 GETIMPORT                        R11 K64 [Enum.HorizontalAlignment.Left]
      322 SETTABLEKS                       R11 R10 K59 ["HorizontalAlignment"]
      324 GETIMPORT                        R11 K66 [Enum.VerticalAlignment.Top]
      326 SETTABLEKS                       R11 R10 K60 ["VerticalAlignment"]
      328 JUMP                             ; [+1]
      329 LOADNIL                          R10
      330 SETTABLEKS                       R10 R9 K53 ["layout"]
      332 NEWTABLE                         R10 2 0
      334 LOADB                            R11 1
      335 SETTABLEKS                       R11 R10 K67 ["gap-small"]
      337 GETUPVAL                         R11 8
      338 CALL                             R11 0 1
      339 SETTABLEKS                       R11 R10 K68 ["auto-xy row align-x-left align-y-top"]
      341 SETTABLEKS                       R10 R9 K46 ["tag"]
      343 DUPTABLE                         R10 K71 [{"Marker", "Content", "Padding"}]
      344 GETUPVAL                         R12 3
      345 GETTABLEKS                       R11 R12 K4 ["createElement"]
      347 GETUPVAL                         R12 9
      348 DUPTABLE                         R13 K72 [{"LayoutOrder", "Size"}]
      349 LOADN                            R14 1
      350 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      352 GETUPVAL                         R15 8
      353 CALL                             R15 0 1
      354 JUMPIFNOT                        R15 ; [+18]
      355 GETIMPORT                        R14 K74 [UDim2.fromOffset]
      357 GETUPVAL                         R16 1
      358 GETTABLEKS                       R15 R16 K75 ["MarkerSize"]
      360 JUMPIF                           R15 ; [+3]
      361 GETUPVAL                         R16 2
      362 GETTABLEKS                       R15 R16 K75 ["MarkerSize"]
      364 GETUPVAL                         R17 1
      365 GETTABLEKS                       R16 R17 K76 ["LineHeight"]
      367 JUMPIF                           R16 ; [+3]
      368 GETUPVAL                         R17 2
      369 GETTABLEKS                       R16 R17 K76 ["LineHeight"]
      371 CALL                             R14 2 1
      372 JUMP                             ; [+1]
      373 LOADNIL                          R14
      374 SETTABLEKS                       R14 R13 K8 ["Size"]
      376 DUPTABLE                         R14 K78 [{"Image"}]
      377 GETUPVAL                         R16 8
      378 CALL                             R16 0 1
      379 JUMPIFNOT                        R16 ; [+93]
      380 MOVE                             R17 R6
      381 GETUPVAL                         R19 8
      382 CALL                             R19 0 1
      383 FASTCALL2K                       ASSERT R19 K79 ; [+4]
      385 LOADK                            R20 K79 ["isOrdered is disabled"]
      386 GETIMPORT                        R18 K81 [assert]
      388 CALL                             R18 2 0
      389 MOVE                             R16 R17
      390 JUMPIFNOT                        R16 ; [+11]
      391 LOADK                            R20 K82 ["^*"]
      392 NAMECALL                         R18 R17 K83 ["find"]
      394 CALL                             R18 2 1
      395 NOT                              R16 R18
      396 JUMPIFNOT                        R16 ; [+5]
      397 LOADK                            R20 K84 ["^-"]
      398 NAMECALL                         R18 R17 K83 ["find"]
      400 CALL                             R18 2 1
      401 NOT                              R16 R18
      402 JUMPIFNOT                        R16 ; [+70]
      403 GETUPVAL                         R16 3
      404 GETTABLEKS                       R15 R16 K4 ["createElement"]
      406 GETUPVAL                         R16 4
      407 DUPTABLE                         R17 K86 [{"tag", "Text", "fontStyle", "textStyle", "Size"}]
      408 LOADK                            R18 K87 ["position-center-left anchor-center-left"]
      409 SETTABLEKS                       R18 R17 K46 ["tag"]
      411 LOADK                            R19 K88 ["%*."]
      412 MOVE                             R21 R6
      413 NAMECALL                         R19 R19 K89 ["format"]
      415 CALL                             R19 2 1
      416 MOVE                             R18 R19
      417 SETTABLEKS                       R18 R17 K9 ["Text"]
      419 DUPTABLE                         R18 K44 [{"Font", "FontSize"}]
      420 GETUPVAL                         R20 1
      421 GETTABLEKS                       R19 R20 K6 ["Font"]
      423 JUMPIF                           R19 ; [+3]
      424 GETUPVAL                         R20 2
      425 GETTABLEKS                       R19 R20 K6 ["Font"]
      427 SETTABLEKS                       R19 R18 K6 ["Font"]
      429 GETUPVAL                         R20 1
      430 GETTABLEKS                       R19 R20 K11 ["TextSize"]
      432 JUMPIF                           R19 ; [+3]
      433 GETUPVAL                         R20 2
      434 GETTABLEKS                       R19 R20 K11 ["TextSize"]
      436 SETTABLEKS                       R19 R18 K43 ["FontSize"]
      438 SETTABLEKS                       R18 R17 K85 ["fontStyle"]
      440 DUPTABLE                         R18 K42 [{"Color3"}]
      441 GETUPVAL                         R20 1
      442 GETTABLEKS                       R19 R20 K10 ["TextColor"]
      444 JUMPIF                           R19 ; [+3]
      445 GETUPVAL                         R20 2
      446 GETTABLEKS                       R19 R20 K10 ["TextColor"]
      448 SETTABLEKS                       R19 R18 K41 ["Color3"]
      450 SETTABLEKS                       R18 R17 K38 ["textStyle"]
      452 GETIMPORT                        R18 K74 [UDim2.fromOffset]
      454 GETUPVAL                         R20 1
      455 GETTABLEKS                       R19 R20 K75 ["MarkerSize"]
      457 JUMPIF                           R19 ; [+3]
      458 GETUPVAL                         R20 2
      459 GETTABLEKS                       R19 R20 K75 ["MarkerSize"]
      461 GETUPVAL                         R21 1
      462 GETTABLEKS                       R20 R21 K75 ["MarkerSize"]
      464 JUMPIF                           R20 ; [+3]
      465 GETUPVAL                         R21 2
      466 GETTABLEKS                       R20 R21 K75 ["MarkerSize"]
      468 CALL                             R18 2 1
      469 SETTABLEKS                       R18 R17 K8 ["Size"]
      471 CALL                             R15 2 1
      472 JUMP                             ; [+62]
      473 GETUPVAL                         R16 3
      474 GETTABLEKS                       R15 R16 K4 ["createElement"]
      476 GETUPVAL                         R16 10
      477 DUPTABLE                         R17 K92 [{"tag", "Image", "imageStyle", "LayoutOrder", "Position", "Size"}]
      478 GETUPVAL                         R19 8
      479 CALL                             R19 0 1
      480 JUMPIFNOT                        R19 ; [+2]
      481 LOADK                            R18 K87 ["position-center-left anchor-center-left"]
      482 JUMP                             ; [+1]
      483 LOADNIL                          R18
      484 SETTABLEKS                       R18 R17 K46 ["tag"]
      486 SETTABLEKS                       R4 R17 K77 ["Image"]
      488 DUPTABLE                         R18 K42 [{"Color3"}]
      489 GETUPVAL                         R20 1
      490 GETTABLEKS                       R19 R20 K10 ["TextColor"]
      492 JUMPIF                           R19 ; [+3]
      493 GETUPVAL                         R20 2
      494 GETTABLEKS                       R19 R20 K10 ["TextColor"]
      496 SETTABLEKS                       R19 R18 K41 ["Color3"]
      498 SETTABLEKS                       R18 R17 K90 ["imageStyle"]
      500 LOADN                            R18 1
      501 SETTABLEKS                       R18 R17 K7 ["LayoutOrder"]
      503 GETUPVAL                         R19 8
      504 CALL                             R19 0 1
      505 JUMPIFNOT                        R19 ; [+2]
      506 LOADNIL                          R18
      507 JUMP                             ; [+5]
      508 GETIMPORT                        R18 K94 [UDim2.fromScale]
      510 LOADN                            R19 0
      511 LOADK                            R20 K95 [0.5]
      512 CALL                             R18 2 1
      513 SETTABLEKS                       R18 R17 K91 ["Position"]
      515 GETIMPORT                        R18 K74 [UDim2.fromOffset]
      517 GETUPVAL                         R20 1
      518 GETTABLEKS                       R19 R20 K75 ["MarkerSize"]
      520 JUMPIF                           R19 ; [+3]
      521 GETUPVAL                         R20 2
      522 GETTABLEKS                       R19 R20 K75 ["MarkerSize"]
      524 GETUPVAL                         R21 1
      525 GETTABLEKS                       R20 R21 K75 ["MarkerSize"]
      527 JUMPIF                           R20 ; [+3]
      528 GETUPVAL                         R21 2
      529 GETTABLEKS                       R20 R21 K75 ["MarkerSize"]
      531 CALL                             R18 2 1
      532 SETTABLEKS                       R18 R17 K8 ["Size"]
      534 CALL                             R15 2 1
      535 SETTABLEKS                       R15 R14 K77 ["Image"]
      537 CALL                             R11 3 1
      538 SETTABLEKS                       R11 R10 K69 ["Marker"]
      540 SETTABLEKS                       R2 R10 K70 ["Content"]
      542 SETTABLEKS                       R5 R10 K14 ["Padding"]
      544 CALL                             R7 3 -1
      545 RETURN                           R7 -1

PROTO_3:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+10]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["Hooks"]
        7 GETTABLEKS                       R2 R3 K1 ["useTokens"]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R3 R2 K2 ["Gap"]
       12 GETTABLEKS                       R1 R3 K3 ["Small"]
       14 GETTABLEKS                       R2 R0 K4 ["TextWrapped"]
       16 GETTABLEKS                       R3 R0 K5 ["TextTruncate"]
       18 GETTABLEKS                       R4 R0 K6 ["ListStyle"]
       20 JUMPIF                           R4 ; [+1]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R5 R0 K7 ["Items"]
       24 GETTABLEKS                       R6 R4 K8 ["ItemIndentation"]
       26 JUMPIF                           R6 ; [+3]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R6 R7 K8 ["ItemIndentation"]
       30 GETUPVAL                         R7 0
       31 CALL                             R7 0 1
       32 JUMPIF                           R7 ; [+7]
       33 GETTABLEKS                       R7 R4 K9 ["ItemOffset"]
       35 JUMPIF                           R7 ; [+3]
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R7 R8 K9 ["ItemOffset"]
       39 MOVE                             R1 R7
       40 MOVE                             R8 R1
       41 GETTABLEKS                       R9 R4 K10 ["MarkerSize"]
       43 JUMPIF                           R9 ; [+3]
       44 GETUPVAL                         R10 2
       45 GETTABLEKS                       R9 R10 K10 ["MarkerSize"]
       47 ADD                              R7 R9 R8
       48 GETIMPORT                        R8 K13 [UDim2.new]
       50 LOADN                            R9 1
       51 MINUS                            R10 R7
       52 LOADN                            R11 0
       53 LOADN                            R12 0
       54 CALL                             R8 4 1
       55 GETUPVAL                         R9 3
       56 MOVE                             R10 R5
       57 NEWCLOSURE                       R11 P0
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R4
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R2
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          UPVAL U7
       69 CALL                             R9 2 1
       70 GETTABLEKS                       R10 R0 K14 ["Size"]
       72 GETTABLEKS                       R11 R0 K15 ["Position"]
       74 GETIMPORT                        R12 K19 [Enum.AutomaticSize.XY]
       76 JUMPIFNOT                        R10 ; [+16]
       77 GETTABLEKS                       R14 R10 K20 ["X"]
       79 GETTABLEKS                       R13 R14 K21 ["Scale"]
       81 LOADN                            R14 0
       82 JUMPIFLT                         R14 R13 ; [+8]
       84 GETTABLEKS                       R14 R10 K20 ["X"]
       86 GETTABLEKS                       R13 R14 K22 ["Offset"]
       88 LOADN                            R14 0
       89 JUMPIFNOTLT                      R14 R13 ; [+3]
       91 GETIMPORT                        R12 K24 [Enum.AutomaticSize.Y]
       93 GETUPVAL                         R14 4
       94 GETTABLEKS                       R13 R14 K25 ["createElement"]
       96 GETUPVAL                         R14 6
       97 DUPTABLE                         R15 K31 [{"testId", "tag", "AutomaticSize", "backgroundStyle", "LayoutOrder", "layout", "Position", "Size"}]
       98 LOADK                            R16 K32 ["--markdown--bullet-list"]
       99 SETTABLEKS                       R16 R15 K26 ["testId"]
      101 GETUPVAL                         R17 0
      102 CALL                             R17 0 1
      103 JUMPIFNOT                        R17 ; [+2]
      104 LOADK                            R16 K33 ["col align-x-left gap-small"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R16
      107 SETTABLEKS                       R16 R15 K27 ["tag"]
      109 SETTABLEKS                       R12 R15 K17 ["AutomaticSize"]
      111 DUPTABLE                         R16 K35 [{"Transparency"}]
      112 LOADN                            R17 1
      113 SETTABLEKS                       R17 R16 K34 ["Transparency"]
      115 SETTABLEKS                       R16 R15 K28 ["backgroundStyle"]
      117 GETTABLEKS                       R17 R0 K29 ["LayoutOrder"]
      119 ORK                              R16 R17 K36 [1]
      120 SETTABLEKS                       R16 R15 K29 ["LayoutOrder"]
      122 GETUPVAL                         R17 0
      123 CALL                             R17 0 1
      124 JUMPIFNOT                        R17 ; [+2]
      125 LOADNIL                          R16
      126 JUMP                             ; [+9]
      127 DUPTABLE                         R16 K39 [{"HorizontalAlignment", "FillDirection"}]
      128 GETIMPORT                        R17 K41 [Enum.HorizontalAlignment.Left]
      130 SETTABLEKS                       R17 R16 K37 ["HorizontalAlignment"]
      132 GETIMPORT                        R17 K43 [Enum.FillDirection.Vertical]
      134 SETTABLEKS                       R17 R16 K38 ["FillDirection"]
      136 SETTABLEKS                       R16 R15 K30 ["layout"]
      138 SETTABLEKS                       R11 R15 K15 ["Position"]
      140 SETTABLEKS                       R10 R15 K14 ["Size"]
      142 GETUPVAL                         R17 0
      143 CALL                             R17 0 1
      144 JUMPIFNOT                        R17 ; [+11]
      145 GETUPVAL                         R17 8
      146 GETTABLEKS                       R16 R17 K44 ["assign"]
      148 MOVE                             R17 R9
      149 GETTABLEKS                       R18 R0 K45 ["children"]
      151 JUMPIF                           R18 ; [+2]
      152 NEWTABLE                         R18 0 0
      154 CALL                             R16 2 1
      155 JUMP                             ; [+1]
      156 MOVE                             R16 R9
      157 CALL                             R13 3 -1
      158 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Components"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K1 [script]
       11 LOADK                            R3 K5 ["Packages"]
       12 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K7 [require]
       17 GETTABLEKS                       R3 R1 K8 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K7 [require]
       22 GETTABLEKS                       R4 R1 K9 ["Dash"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K7 [require]
       27 GETTABLEKS                       R5 R1 K10 ["Foundation"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K7 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Flags"]
       34 GETTABLEKS                       R6 R7 K12 ["FFlagMarkdownStudioThemeColors"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R3 K13 ["map"]
       39 GETTABLEKS                       R7 R4 K14 ["View"]
       41 GETTABLEKS                       R8 R4 K15 ["Image"]
       43 GETTABLEKS                       R9 R4 K16 ["Text"]
       45 DUPTABLE                         R10 K27 [{"ItemOffset", "MarkerImage", "MarkerSize", "Padding", "LineHeight", "Font", "TextColor", "TextSize", "ItemIndentation", "SubItemStyle"}]
       46 LOADN                            R11 12
       47 SETTABLEKS                       R11 R10 K17 ["ItemOffset"]
       49 LOADK                            R11 K28 ["rbxasset://textures/StudioSharedUI/dot.png"]
       50 SETTABLEKS                       R11 R10 K18 ["MarkerImage"]
       52 LOADN                            R11 4
       53 SETTABLEKS                       R11 R10 K19 ["MarkerSize"]
       55 LOADN                            R11 6
       56 SETTABLEKS                       R11 R10 K20 ["Padding"]
       58 LOADN                            R11 18
       59 SETTABLEKS                       R11 R10 K21 ["LineHeight"]
       61 GETIMPORT                        R11 K31 [Enum.Font.BuilderSans]
       63 SETTABLEKS                       R11 R10 K22 ["Font"]
       65 GETIMPORT                        R11 K34 [Color3.fromRGB]
       67 LOADN                            R12 0
       68 LOADN                            R13 0
       69 LOADN                            R14 0
       70 CALL                             R11 3 1
       71 SETTABLEKS                       R11 R10 K23 ["TextColor"]
       73 LOADN                            R11 18
       74 SETTABLEKS                       R11 R10 K24 ["TextSize"]
       76 LOADN                            R11 0
       77 SETTABLEKS                       R11 R10 K25 ["ItemIndentation"]
       79 DUPTABLE                         R11 K35 [{"ItemIndentation", "ItemOffset"}]
       80 LOADN                            R12 20
       81 SETTABLEKS                       R12 R11 K25 ["ItemIndentation"]
       83 LOADN                            R12 12
       84 SETTABLEKS                       R12 R11 K17 ["ItemOffset"]
       86 SETTABLEKS                       R11 R10 K26 ["SubItemStyle"]
       88 DUPCLOSURE                       R11 K36 [PROTO_0]
       89 DUPCLOSURE                       R12 K37 [PROTO_1]
       90 CAPTURE                          VAL R5
       91 DUPCLOSURE                       R13 K38 [PROTO_3]
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R3
      101 RETURN                           R13 1
