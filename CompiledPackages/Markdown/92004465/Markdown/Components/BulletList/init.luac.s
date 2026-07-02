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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["MarkerImage"]
        5 JUMPIF                           R4 ; [+3]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K0 ["MarkerImage"]
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FASTCALL1                        TYPE R0 ; [+3]
       12 MOVE                             R8 R0
       13 GETIMPORT                        R7 K2 [type]
       15 CALL                             R7 1 1
       16 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+64]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K4 ["createElement"]
       21 GETUPVAL                         R8 4
       22 DUPTABLE                         R9 K17 [{["AutomaticSize"], ["Font"], ["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextTruncate"], ["TextWrapped"], ["Padding"], ["TextXAlignment"]}]
       23 GETIMPORT                        R10 K20 [Enum.AutomaticSize.XY]
       25 SETTABLEKS                       R10 R9 K5 ["AutomaticSize"]
       27 GETUPVAL                         R10 1
       28 GETTABLEKS                       R10 R10 K6 ["Font"]
       30 JUMPIF                           R10 ; [+3]
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R10 R10 K6 ["Font"]
       34 SETTABLEKS                       R10 R9 K6 ["Font"]
       36 GETUPVAL                         R10 5
       37 SETTABLEKS                       R10 R9 K9 ["Size"]
       39 SETTABLEKS                       R0 R9 K10 ["Text"]
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R10 R10 K11 ["TextColor"]
       44 JUMPIF                           R10 ; [+3]
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K11 ["TextColor"]
       48 SETTABLEKS                       R10 R9 K11 ["TextColor"]
       50 GETUPVAL                         R10 1
       51 GETTABLEKS                       R10 R10 K12 ["TextSize"]
       53 JUMPIF                           R10 ; [+3]
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R10 R10 K12 ["TextSize"]
       57 SETTABLEKS                       R10 R9 K12 ["TextSize"]
       59 GETUPVAL                         R10 6
       60 SETTABLEKS                       R10 R9 K13 ["TextTruncate"]
       62 GETUPVAL                         R10 7
       63 SETTABLEKS                       R10 R9 K14 ["TextWrapped"]
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R10 R10 K15 ["Padding"]
       68 JUMPIF                           R10 ; [+3]
       69 GETUPVAL                         R10 2
       70 GETTABLEKS                       R10 R10 K15 ["Padding"]
       72 SETTABLEKS                       R10 R9 K15 ["Padding"]
       74 GETIMPORT                        R10 K22 [Enum.TextXAlignment.Left]
       76 SETTABLEKS                       R10 R9 K16 ["TextXAlignment"]
       78 CALL                             R7 2 1
       79 MOVE                             R2 R7
       80 JUMP                             ; [+193]
       81 FASTCALL1                        TYPEOF R0 ; [+3]
       82 MOVE                             R8 R0
       83 GETIMPORT                        R7 K24 [typeof]
       85 CALL                             R7 1 1
       86 JUMPIFNOTEQKS                    R7 K25 ["table"] ; [+109]
       88 GETTABLEKS                       R7 R0 K10 ["Text"]
       90 JUMPIFNOT                        R7 ; [+105]
       91 GETUPVAL                         R7 8
       92 CALL                             R7 0 1
       93 JUMPIFNOT                        R7 ; [+2]
       94 GETTABLEKS                       R6 R0 K26 ["Prefix"]
       96 GETUPVAL                         R7 1
       97 GETTABLEKS                       R7 R7 K27 ["SubItemStyle"]
       99 GETIMPORT                        R8 K30 [UDim2.new]
      101 LOADN                            R9 1
      102 GETTABLEKS                       R11 R7 K31 ["ItemOffset"]
      104 MINUS                            R10 R11
      105 JUMPIF                           R10 ; [+5]
      106 GETUPVAL                         R10 2
      107 GETTABLEKS                       R10 R10 K27 ["SubItemStyle"]
      109 GETTABLEKS                       R10 R10 K31 ["ItemOffset"]
      111 LOADN                            R11 0
      112 LOADN                            R12 0
      113 CALL                             R8 4 1
      114 GETTABLEKS                       R9 R7 K32 ["ItemIndentation"]
      116 OR                               R3 R9 R3
      117 GETTABLEKS                       R9 R7 K33 ["MarkerStyle"]
      119 OR                               R4 R9 R4
      120 JUMPIFNOT                        R3 ; [+14]
      121 GETUPVAL                         R9 3
      122 GETTABLEKS                       R9 R9 K4 ["createElement"]
      124 LOADK                            R10 K34 ["UIPadding"]
      125 DUPTABLE                         R11 K36 [{"PaddingLeft"}]
      126 GETIMPORT                        R12 K38 [UDim.new]
      128 LOADN                            R13 0
      129 MOVE                             R14 R3
      130 CALL                             R12 2 1
      131 SETTABLEKS                       R12 R11 K35 ["PaddingLeft"]
      133 CALL                             R9 2 1
      134 MOVE                             R5 R9
      135 GETUPVAL                         R9 3
      136 GETTABLEKS                       R9 R9 K4 ["createElement"]
      138 GETUPVAL                         R10 4
      139 DUPTABLE                         R11 K41 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Size"], ["textStyle"], ["FontStyle"], ["Text"], ["TextWrapped"], ["TextTruncate"], ["TextXAlignment"]}]
      140 GETIMPORT                        R12 K20 [Enum.AutomaticSize.XY]
      142 SETTABLEKS                       R12 R11 K5 ["AutomaticSize"]
      144 SETTABLEKS                       R8 R11 K9 ["Size"]
      146 DUPTABLE                         R12 K43 [{"Color3"}]
      147 GETUPVAL                         R13 1
      148 GETTABLEKS                       R13 R13 K11 ["TextColor"]
      150 JUMPIF                           R13 ; [+3]
      151 GETUPVAL                         R13 2
      152 GETTABLEKS                       R13 R13 K11 ["TextColor"]
      154 SETTABLEKS                       R13 R12 K42 ["Color3"]
      156 SETTABLEKS                       R12 R11 K39 ["textStyle"]
      158 DUPTABLE                         R12 K45 [{"Font", "FontSize"}]
      159 GETUPVAL                         R13 1
      160 GETTABLEKS                       R13 R13 K6 ["Font"]
      162 JUMPIF                           R13 ; [+3]
      163 GETUPVAL                         R13 2
      164 GETTABLEKS                       R13 R13 K6 ["Font"]
      166 SETTABLEKS                       R13 R12 K6 ["Font"]
      168 GETUPVAL                         R13 1
      169 GETTABLEKS                       R13 R13 K12 ["TextSize"]
      171 JUMPIF                           R13 ; [+3]
      172 GETUPVAL                         R13 2
      173 GETTABLEKS                       R13 R13 K12 ["TextSize"]
      175 SETTABLEKS                       R13 R12 K44 ["FontSize"]
      177 SETTABLEKS                       R12 R11 K40 ["FontStyle"]
      179 GETTABLEKS                       R12 R0 K10 ["Text"]
      181 SETTABLEKS                       R12 R11 K10 ["Text"]
      183 GETUPVAL                         R12 7
      184 SETTABLEKS                       R12 R11 K14 ["TextWrapped"]
      186 GETUPVAL                         R12 6
      187 SETTABLEKS                       R12 R11 K13 ["TextTruncate"]
      189 GETIMPORT                        R12 K22 [Enum.TextXAlignment.Left]
      191 SETTABLEKS                       R12 R11 K16 ["TextXAlignment"]
      193 CALL                             R9 2 1
      194 MOVE                             R2 R9
      195 JUMP                             ; [+78]
      196 GETUPVAL                         R7 8
      197 CALL                             R7 0 1
      198 JUMPIFNOT                        R7 ; [+45]
      199 FASTCALL1                        TYPEOF R0 ; [+3]
      200 MOVE                             R8 R0
      201 GETIMPORT                        R7 K24 [typeof]
      203 CALL                             R7 1 1
      204 JUMPIFNOTEQKS                    R7 K25 ["table"] ; [+39]
      206 GETTABLEKS                       R7 R0 K46 ["Item"]
      208 JUMPIFNOT                        R7 ; [+35]
      209 GETTABLEKS                       R6 R0 K26 ["Prefix"]
      211 GETUPVAL                         R7 3
      212 GETTABLEKS                       R7 R7 K4 ["createElement"]
      214 GETUPVAL                         R8 9
      215 DUPTABLE                         R9 K48 [{["tag"], ["AutomaticSize"], ["LayoutOrder"] = 2, ["Size"]}]
      216 GETUPVAL                         R11 8
      217 CALL                             R11 0 1
      218 JUMPIFNOT                        R11 ; [+2]
      219 LOADK                            R10 K49 ["auto-y"]
      220 JUMP                             ; [+1]
      221 LOADNIL                          R10
      222 SETTABLEKS                       R10 R9 K47 ["tag"]
      224 GETUPVAL                         R11 8
      225 CALL                             R11 0 1
      226 JUMPIFNOT                        R11 ; [+2]
      227 LOADNIL                          R10
      228 JUMP                             ; [+2]
      229 GETIMPORT                        R10 K20 [Enum.AutomaticSize.XY]
      231 SETTABLEKS                       R10 R9 K5 ["AutomaticSize"]
      233 GETUPVAL                         R10 5
      234 SETTABLEKS                       R10 R9 K9 ["Size"]
      236 DUPTABLE                         R10 K51 [{"ContentElement"}]
      237 GETTABLEKS                       R11 R0 K46 ["Item"]
      239 SETTABLEKS                       R11 R10 K50 ["ContentElement"]
      241 CALL                             R7 3 1
      242 MOVE                             R2 R7
      243 JUMP                             ; [+30]
      244 GETUPVAL                         R7 3
      245 GETTABLEKS                       R7 R7 K4 ["createElement"]
      247 GETUPVAL                         R8 9
      248 DUPTABLE                         R9 K48 [{["tag"], ["AutomaticSize"], ["LayoutOrder"] = 2, ["Size"]}]
      249 GETUPVAL                         R11 8
      250 CALL                             R11 0 1
      251 JUMPIFNOT                        R11 ; [+2]
      252 LOADK                            R10 K49 ["auto-y"]
      253 JUMP                             ; [+1]
      254 LOADNIL                          R10
      255 SETTABLEKS                       R10 R9 K47 ["tag"]
      257 GETUPVAL                         R11 8
      258 CALL                             R11 0 1
      259 JUMPIFNOT                        R11 ; [+2]
      260 LOADNIL                          R10
      261 JUMP                             ; [+2]
      262 GETIMPORT                        R10 K20 [Enum.AutomaticSize.XY]
      264 SETTABLEKS                       R10 R9 K5 ["AutomaticSize"]
      266 GETUPVAL                         R10 5
      267 SETTABLEKS                       R10 R9 K9 ["Size"]
      269 DUPTABLE                         R10 K51 [{"ContentElement"}]
      270 SETTABLEKS                       R0 R10 K50 ["ContentElement"]
      272 CALL                             R7 3 1
      273 MOVE                             R2 R7
      274 GETUPVAL                         R7 3
      275 GETTABLEKS                       R7 R7 K4 ["createElement"]
      277 GETUPVAL                         R8 9
      278 DUPTABLE                         R9 K56 [{["key"], ["testId"] = "--markdown--bullet-list-item", ["AutomaticSize"], ["LayoutOrder"], ["layout"], ["tag"]}]
      279 FASTCALL1                        TOSTRING R1 ; [+3]
      280 MOVE                             R11 R1
      281 GETIMPORT                        R10 K58 [tostring]
      283 CALL                             R10 1 1
      284 SETTABLEKS                       R10 R9 K52 ["key"]
      286 GETUPVAL                         R11 8
      287 CALL                             R11 0 1
      288 JUMPIFNOT                        R11 ; [+2]
      289 LOADNIL                          R10
      290 JUMP                             ; [+2]
      291 GETIMPORT                        R10 K20 [Enum.AutomaticSize.XY]
      293 SETTABLEKS                       R10 R9 K5 ["AutomaticSize"]
      295 SETTABLEKS                       R1 R9 K7 ["LayoutOrder"]
      297 GETUPVAL                         R11 8
      298 CALL                             R11 0 1
      299 JUMPIF                           R11 ; [+14]
      300 DUPTABLE                         R10 K62 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      301 GETIMPORT                        R11 K64 [Enum.FillDirection.Horizontal]
      303 SETTABLEKS                       R11 R10 K59 ["FillDirection"]
      305 GETIMPORT                        R11 K65 [Enum.HorizontalAlignment.Left]
      307 SETTABLEKS                       R11 R10 K60 ["HorizontalAlignment"]
      309 GETIMPORT                        R11 K67 [Enum.VerticalAlignment.Top]
      311 SETTABLEKS                       R11 R10 K61 ["VerticalAlignment"]
      313 JUMP                             ; [+1]
      314 LOADNIL                          R10
      315 SETTABLEKS                       R10 R9 K55 ["layout"]
      317 NEWTABLE                         R10 2 0
      319 LOADB                            R11 1
      320 SETTABLEKS                       R11 R10 K68 ["gap-small"]
      322 GETUPVAL                         R11 8
      323 CALL                             R11 0 1
      324 SETTABLEKS                       R11 R10 K69 ["auto-xy row align-x-left align-y-top"]
      326 SETTABLEKS                       R10 R9 K47 ["tag"]
      328 DUPTABLE                         R10 K72 [{"Marker", "Content", "Padding"}]
      329 GETUPVAL                         R11 3
      330 GETTABLEKS                       R11 R11 K4 ["createElement"]
      332 GETUPVAL                         R12 9
      333 DUPTABLE                         R13 K74 [{["LayoutOrder"] = 1, ["Size"]}]
      334 GETUPVAL                         R15 8
      335 CALL                             R15 0 1
      336 JUMPIFNOT                        R15 ; [+18]
      337 GETIMPORT                        R14 K76 [UDim2.fromOffset]
      339 GETUPVAL                         R15 1
      340 GETTABLEKS                       R15 R15 K77 ["MarkerSize"]
      342 JUMPIF                           R15 ; [+3]
      343 GETUPVAL                         R15 2
      344 GETTABLEKS                       R15 R15 K77 ["MarkerSize"]
      346 GETUPVAL                         R16 1
      347 GETTABLEKS                       R16 R16 K78 ["LineHeight"]
      349 JUMPIF                           R16 ; [+3]
      350 GETUPVAL                         R16 2
      351 GETTABLEKS                       R16 R16 K78 ["LineHeight"]
      353 CALL                             R14 2 1
      354 JUMP                             ; [+1]
      355 LOADNIL                          R14
      356 SETTABLEKS                       R14 R13 K9 ["Size"]
      358 DUPTABLE                         R14 K80 [{"Image"}]
      359 GETUPVAL                         R16 8
      360 CALL                             R16 0 1
      361 JUMPIFNOT                        R16 ; [+90]
      362 MOVE                             R17 R6
      363 GETUPVAL                         R19 8
      364 CALL                             R19 0 1
      365 FASTCALL2K                       ASSERT R19 K81 ; [+4]
      367 LOADK                            R20 K81 ["isOrdered is disabled"]
      368 GETIMPORT                        R18 K83 [assert]
      370 CALL                             R18 2 0
      371 MOVE                             R16 R17
      372 JUMPIFNOT                        R16 ; [+11]
      373 LOADK                            R20 K84 ["^*"]
      374 NAMECALL                         R18 R17 K85 ["find"]
      376 CALL                             R18 2 1
      377 NOT                              R16 R18
      378 JUMPIFNOT                        R16 ; [+5]
      379 LOADK                            R20 K86 ["^-"]
      380 NAMECALL                         R18 R17 K85 ["find"]
      382 CALL                             R18 2 1
      383 NOT                              R16 R18
      384 JUMPIFNOT                        R16 ; [+67]
      385 GETUPVAL                         R15 3
      386 GETTABLEKS                       R15 R15 K4 ["createElement"]
      388 GETUPVAL                         R16 4
      389 DUPTABLE                         R17 K89 [{["tag"] = "position-center-left anchor-center-left", ["Text"], ["fontStyle"], ["textStyle"], ["Size"]}]
      390 LOADK                            R19 K90 ["%*."]
      391 MOVE                             R21 R6
      392 NAMECALL                         R19 R19 K91 ["format"]
      394 CALL                             R19 2 1
      395 MOVE                             R18 R19
      396 SETTABLEKS                       R18 R17 K10 ["Text"]
      398 DUPTABLE                         R18 K45 [{"Font", "FontSize"}]
      399 GETUPVAL                         R19 1
      400 GETTABLEKS                       R19 R19 K6 ["Font"]
      402 JUMPIF                           R19 ; [+3]
      403 GETUPVAL                         R19 2
      404 GETTABLEKS                       R19 R19 K6 ["Font"]
      406 SETTABLEKS                       R19 R18 K6 ["Font"]
      408 GETUPVAL                         R19 1
      409 GETTABLEKS                       R19 R19 K12 ["TextSize"]
      411 JUMPIF                           R19 ; [+3]
      412 GETUPVAL                         R19 2
      413 GETTABLEKS                       R19 R19 K12 ["TextSize"]
      415 SETTABLEKS                       R19 R18 K44 ["FontSize"]
      417 SETTABLEKS                       R18 R17 K88 ["fontStyle"]
      419 DUPTABLE                         R18 K43 [{"Color3"}]
      420 GETUPVAL                         R19 1
      421 GETTABLEKS                       R19 R19 K11 ["TextColor"]
      423 JUMPIF                           R19 ; [+3]
      424 GETUPVAL                         R19 2
      425 GETTABLEKS                       R19 R19 K11 ["TextColor"]
      427 SETTABLEKS                       R19 R18 K42 ["Color3"]
      429 SETTABLEKS                       R18 R17 K39 ["textStyle"]
      431 GETIMPORT                        R18 K76 [UDim2.fromOffset]
      433 GETUPVAL                         R19 1
      434 GETTABLEKS                       R19 R19 K77 ["MarkerSize"]
      436 JUMPIF                           R19 ; [+3]
      437 GETUPVAL                         R19 2
      438 GETTABLEKS                       R19 R19 K77 ["MarkerSize"]
      440 GETUPVAL                         R20 1
      441 GETTABLEKS                       R20 R20 K77 ["MarkerSize"]
      443 JUMPIF                           R20 ; [+3]
      444 GETUPVAL                         R20 2
      445 GETTABLEKS                       R20 R20 K77 ["MarkerSize"]
      447 CALL                             R18 2 1
      448 SETTABLEKS                       R18 R17 K9 ["Size"]
      450 CALL                             R15 2 1
      451 JUMP                             ; [+59]
      452 GETUPVAL                         R15 3
      453 GETTABLEKS                       R15 R15 K4 ["createElement"]
      455 GETUPVAL                         R16 10
      456 DUPTABLE                         R17 K94 [{["tag"], ["Image"], ["imageStyle"], ["LayoutOrder"] = 1, ["Position"], ["Size"]}]
      457 GETUPVAL                         R19 8
      458 CALL                             R19 0 1
      459 JUMPIFNOT                        R19 ; [+2]
      460 LOADK                            R18 K87 ["position-center-left anchor-center-left"]
      461 JUMP                             ; [+1]
      462 LOADNIL                          R18
      463 SETTABLEKS                       R18 R17 K47 ["tag"]
      465 SETTABLEKS                       R4 R17 K79 ["Image"]
      467 DUPTABLE                         R18 K43 [{"Color3"}]
      468 GETUPVAL                         R19 1
      469 GETTABLEKS                       R19 R19 K11 ["TextColor"]
      471 JUMPIF                           R19 ; [+3]
      472 GETUPVAL                         R19 2
      473 GETTABLEKS                       R19 R19 K11 ["TextColor"]
      475 SETTABLEKS                       R19 R18 K42 ["Color3"]
      477 SETTABLEKS                       R18 R17 K92 ["imageStyle"]
      479 GETUPVAL                         R19 8
      480 CALL                             R19 0 1
      481 JUMPIFNOT                        R19 ; [+2]
      482 LOADNIL                          R18
      483 JUMP                             ; [+5]
      484 GETIMPORT                        R18 K96 [UDim2.fromScale]
      486 LOADN                            R19 0
      487 LOADK                            R20 K97 [0.5]
      488 CALL                             R18 2 1
      489 SETTABLEKS                       R18 R17 K93 ["Position"]
      491 GETIMPORT                        R18 K76 [UDim2.fromOffset]
      493 GETUPVAL                         R19 1
      494 GETTABLEKS                       R19 R19 K77 ["MarkerSize"]
      496 JUMPIF                           R19 ; [+3]
      497 GETUPVAL                         R19 2
      498 GETTABLEKS                       R19 R19 K77 ["MarkerSize"]
      500 GETUPVAL                         R20 1
      501 GETTABLEKS                       R20 R20 K77 ["MarkerSize"]
      503 JUMPIF                           R20 ; [+3]
      504 GETUPVAL                         R20 2
      505 GETTABLEKS                       R20 R20 K77 ["MarkerSize"]
      507 CALL                             R18 2 1
      508 SETTABLEKS                       R18 R17 K9 ["Size"]
      510 CALL                             R15 2 1
      511 SETTABLEKS                       R15 R14 K79 ["Image"]
      513 CALL                             R11 3 1
      514 SETTABLEKS                       R11 R10 K70 ["Marker"]
      516 SETTABLEKS                       R2 R10 K71 ["Content"]
      518 SETTABLEKS                       R5 R10 K15 ["Padding"]
      520 CALL                             R7 3 -1
      521 RETURN                           R7 -1

PROTO_3:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+10]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["Hooks"]
        7 GETTABLEKS                       R2 R2 K1 ["useTokens"]
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
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K8 ["ItemIndentation"]
       30 GETUPVAL                         R7 0
       31 CALL                             R7 0 1
       32 JUMPIF                           R7 ; [+7]
       33 GETTABLEKS                       R7 R4 K9 ["ItemOffset"]
       35 JUMPIF                           R7 ; [+3]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K9 ["ItemOffset"]
       39 MOVE                             R1 R7
       40 MOVE                             R8 R1
       41 GETTABLEKS                       R9 R4 K10 ["MarkerSize"]
       43 JUMPIF                           R9 ; [+3]
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R9 R9 K10 ["MarkerSize"]
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
       77 GETTABLEKS                       R13 R10 K20 ["X"]
       79 GETTABLEKS                       R13 R13 K21 ["Scale"]
       81 LOADN                            R14 0
       82 JUMPIFLT                         R14 R13 ; [+8]
       84 GETTABLEKS                       R13 R10 K20 ["X"]
       86 GETTABLEKS                       R13 R13 K22 ["Offset"]
       88 LOADN                            R14 0
       89 JUMPIFNOTLT                      R14 R13 ; [+3]
       91 GETIMPORT                        R12 K24 [Enum.AutomaticSize.Y]
       93 GETUPVAL                         R13 4
       94 GETTABLEKS                       R13 R13 K25 ["createElement"]
       96 GETUPVAL                         R14 6
       97 DUPTABLE                         R15 K32 [{["testId"] = "--markdown--bullet-list", ["tag"], ["AutomaticSize"], ["backgroundStyle"], ["LayoutOrder"], ["layout"], ["Position"], ["Size"]}]
       98 GETUPVAL                         R17 0
       99 CALL                             R17 0 1
      100 JUMPIFNOT                        R17 ; [+2]
      101 LOADK                            R16 K33 ["col align-x-left gap-small"]
      102 JUMP                             ; [+1]
      103 LOADNIL                          R16
      104 SETTABLEKS                       R16 R15 K28 ["tag"]
      106 SETTABLEKS                       R12 R15 K17 ["AutomaticSize"]
      108 DUPTABLE                         R16 K36 [{["Transparency"] = 1}]
      109 SETTABLEKS                       R16 R15 K29 ["backgroundStyle"]
      111 GETTABLEKS                       R17 R0 K30 ["LayoutOrder"]
      113 ORK                              R16 R17 K35 [1]
      114 SETTABLEKS                       R16 R15 K30 ["LayoutOrder"]
      116 GETUPVAL                         R17 0
      117 CALL                             R17 0 1
      118 JUMPIFNOT                        R17 ; [+2]
      119 LOADNIL                          R16
      120 JUMP                             ; [+9]
      121 DUPTABLE                         R16 K39 [{"HorizontalAlignment", "FillDirection"}]
      122 GETIMPORT                        R17 K41 [Enum.HorizontalAlignment.Left]
      124 SETTABLEKS                       R17 R16 K37 ["HorizontalAlignment"]
      126 GETIMPORT                        R17 K43 [Enum.FillDirection.Vertical]
      128 SETTABLEKS                       R17 R16 K38 ["FillDirection"]
      130 SETTABLEKS                       R16 R15 K31 ["layout"]
      132 SETTABLEKS                       R11 R15 K15 ["Position"]
      134 SETTABLEKS                       R10 R15 K14 ["Size"]
      136 GETUPVAL                         R17 0
      137 CALL                             R17 0 1
      138 JUMPIFNOT                        R17 ; [+11]
      139 GETUPVAL                         R16 8
      140 GETTABLEKS                       R16 R16 K44 ["assign"]
      142 MOVE                             R17 R9
      143 GETTABLEKS                       R18 R0 K45 ["children"]
      145 JUMPIF                           R18 ; [+2]
      146 NEWTABLE                         R18 0 0
      148 CALL                             R16 2 1
      149 JUMP                             ; [+1]
      150 MOVE                             R16 R9
      151 CALL                             R13 3 -1
      152 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Components"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
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
       32 GETTABLEKS                       R6 R0 K11 ["Flags"]
       34 GETTABLEKS                       R6 R6 K12 ["FFlagMarkdownStudioThemeColors"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R3 K13 ["map"]
       39 GETTABLEKS                       R7 R4 K14 ["View"]
       41 GETTABLEKS                       R8 R4 K15 ["Image"]
       43 GETTABLEKS                       R9 R4 K16 ["Text"]
       45 DUPTABLE                         R10 K33 [{["ItemOffset"] = 12, ["MarkerImage"] = "rbxasset://textures/StudioSharedUI/dot.png", ["MarkerSize"] = 4, ["Padding"] = 6, ["LineHeight"] = 18, ["Font"], ["TextColor"], ["TextSize"] = 18, ["ItemIndentation"] = 0, ["SubItemStyle"]}]
       46 GETIMPORT                        R11 K36 [Enum.Font.BuilderSans]
       48 SETTABLEKS                       R11 R10 K27 ["Font"]
       50 GETIMPORT                        R11 K39 [Color3.fromRGB]
       52 LOADN                            R12 0
       53 LOADN                            R13 0
       54 LOADN                            R14 0
       55 CALL                             R11 3 1
       56 SETTABLEKS                       R11 R10 K28 ["TextColor"]
       58 DUPTABLE                         R11 K41 [{["ItemIndentation"] = 20, ["ItemOffset"] = 12}]
       59 SETTABLEKS                       R11 R10 K32 ["SubItemStyle"]
       61 DUPCLOSURE                       R11 K42 [PROTO_0]
       62 DUPCLOSURE                       R12 K43 [PROTO_1]
       63 CAPTURE                          VAL R5
       64 DUPCLOSURE                       R13 K44 [PROTO_3]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R3
       74 RETURN                           R13 1
