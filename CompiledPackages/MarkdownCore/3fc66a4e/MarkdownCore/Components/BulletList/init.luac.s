PROTO_0:
        0 ADD                              R2 R1 R0
        1 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+11]
        2 LOADK                            R4 K0 ["^*"]
        3 NAMECALL                         R2 R0 K1 ["find"]
        5 CALL                             R2 2 1
        6 NOT                              R1 R2
        7 JUMPIFNOT                        R1 ; [+5]
        8 LOADK                            R4 K2 ["^-"]
        9 NAMECALL                         R2 R0 K1 ["find"]
       11 CALL                             R2 2 1
       12 NOT                              R1 R2
       13 RETURN                           R1 1

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
       16 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+67]
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K4 ["createElement"]
       21 GETUPVAL                         R8 4
       22 DUPTABLE                         R9 K16 [{"AutomaticSize", "Font", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextTruncate", "TextWrapped", "Padding", "TextXAlignment"}]
       23 GETIMPORT                        R10 K19 [Enum.AutomaticSize.XY]
       25 SETTABLEKS                       R10 R9 K5 ["AutomaticSize"]
       27 GETUPVAL                         R10 1
       28 GETTABLEKS                       R10 R10 K6 ["Font"]
       30 JUMPIF                           R10 ; [+3]
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R10 R10 K6 ["Font"]
       34 SETTABLEKS                       R10 R9 K6 ["Font"]
       36 LOADN                            R10 2
       37 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       39 GETUPVAL                         R10 5
       40 SETTABLEKS                       R10 R9 K8 ["Size"]
       42 SETTABLEKS                       R0 R9 K9 ["Text"]
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R10 R10 K10 ["TextColor"]
       47 JUMPIF                           R10 ; [+3]
       48 GETUPVAL                         R10 2
       49 GETTABLEKS                       R10 R10 K10 ["TextColor"]
       51 SETTABLEKS                       R10 R9 K10 ["TextColor"]
       53 GETUPVAL                         R10 1
       54 GETTABLEKS                       R10 R10 K11 ["TextSize"]
       56 JUMPIF                           R10 ; [+3]
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R10 R10 K11 ["TextSize"]
       60 SETTABLEKS                       R10 R9 K11 ["TextSize"]
       62 GETUPVAL                         R10 6
       63 SETTABLEKS                       R10 R9 K12 ["TextTruncate"]
       65 GETUPVAL                         R10 7
       66 SETTABLEKS                       R10 R9 K13 ["TextWrapped"]
       68 GETUPVAL                         R10 1
       69 GETTABLEKS                       R10 R10 K14 ["Padding"]
       71 JUMPIF                           R10 ; [+3]
       72 GETUPVAL                         R10 2
       73 GETTABLEKS                       R10 R10 K14 ["Padding"]
       75 SETTABLEKS                       R10 R9 K14 ["Padding"]
       77 GETIMPORT                        R10 K21 [Enum.TextXAlignment.Left]
       79 SETTABLEKS                       R10 R9 K15 ["TextXAlignment"]
       81 CALL                             R7 2 1
       82 MOVE                             R2 R7
       83 JUMP                             ; [+168]
       84 FASTCALL1                        TYPEOF R0 ; [+3]
       85 MOVE                             R8 R0
       86 GETIMPORT                        R7 K23 [typeof]
       88 CALL                             R7 1 1
       89 JUMPIFNOTEQKS                    R7 K24 ["table"] ; [+109]
       91 GETTABLEKS                       R7 R0 K9 ["Text"]
       93 JUMPIFNOT                        R7 ; [+105]
       94 GETTABLEKS                       R6 R0 K25 ["Prefix"]
       96 GETUPVAL                         R7 1
       97 GETTABLEKS                       R7 R7 K26 ["SubItemStyle"]
       99 GETIMPORT                        R8 K29 [UDim2.new]
      101 LOADN                            R9 1
      102 GETTABLEKS                       R11 R7 K30 ["ItemOffset"]
      104 MINUS                            R10 R11
      105 JUMPIF                           R10 ; [+5]
      106 GETUPVAL                         R10 2
      107 GETTABLEKS                       R10 R10 K26 ["SubItemStyle"]
      109 GETTABLEKS                       R10 R10 K30 ["ItemOffset"]
      111 LOADN                            R11 0
      112 LOADN                            R12 0
      113 CALL                             R8 4 1
      114 GETTABLEKS                       R9 R7 K31 ["ItemIndentation"]
      116 OR                               R3 R9 R3
      117 GETTABLEKS                       R9 R7 K32 ["MarkerStyle"]
      119 OR                               R4 R9 R4
      120 JUMPIFNOT                        R3 ; [+14]
      121 GETUPVAL                         R9 3
      122 GETTABLEKS                       R9 R9 K4 ["createElement"]
      124 LOADK                            R10 K33 ["UIPadding"]
      125 DUPTABLE                         R11 K35 [{"PaddingLeft"}]
      126 GETIMPORT                        R12 K37 [UDim.new]
      128 LOADN                            R13 0
      129 MOVE                             R14 R3
      130 CALL                             R12 2 1
      131 SETTABLEKS                       R12 R11 K34 ["PaddingLeft"]
      133 CALL                             R9 2 1
      134 MOVE                             R5 R9
      135 GETUPVAL                         R9 3
      136 GETTABLEKS                       R9 R9 K4 ["createElement"]
      138 GETUPVAL                         R10 4
      139 DUPTABLE                         R11 K40 [{"AutomaticSize", "LayoutOrder", "Size", "textStyle", "FontStyle", "Text", "TextWrapped", "TextTruncate", "TextXAlignment"}]
      140 GETIMPORT                        R12 K19 [Enum.AutomaticSize.XY]
      142 SETTABLEKS                       R12 R11 K5 ["AutomaticSize"]
      144 LOADN                            R12 2
      145 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      147 SETTABLEKS                       R8 R11 K8 ["Size"]
      149 DUPTABLE                         R12 K42 [{"Color3"}]
      150 GETUPVAL                         R13 1
      151 GETTABLEKS                       R13 R13 K10 ["TextColor"]
      153 JUMPIF                           R13 ; [+3]
      154 GETUPVAL                         R13 2
      155 GETTABLEKS                       R13 R13 K10 ["TextColor"]
      157 SETTABLEKS                       R13 R12 K41 ["Color3"]
      159 SETTABLEKS                       R12 R11 K38 ["textStyle"]
      161 DUPTABLE                         R12 K44 [{"Font", "FontSize"}]
      162 GETUPVAL                         R13 1
      163 GETTABLEKS                       R13 R13 K6 ["Font"]
      165 JUMPIF                           R13 ; [+3]
      166 GETUPVAL                         R13 2
      167 GETTABLEKS                       R13 R13 K6 ["Font"]
      169 SETTABLEKS                       R13 R12 K6 ["Font"]
      171 GETUPVAL                         R13 1
      172 GETTABLEKS                       R13 R13 K11 ["TextSize"]
      174 JUMPIF                           R13 ; [+3]
      175 GETUPVAL                         R13 2
      176 GETTABLEKS                       R13 R13 K11 ["TextSize"]
      178 SETTABLEKS                       R13 R12 K43 ["FontSize"]
      180 SETTABLEKS                       R12 R11 K39 ["FontStyle"]
      182 GETTABLEKS                       R12 R0 K9 ["Text"]
      184 SETTABLEKS                       R12 R11 K9 ["Text"]
      186 GETUPVAL                         R12 7
      187 SETTABLEKS                       R12 R11 K13 ["TextWrapped"]
      189 GETUPVAL                         R12 6
      190 SETTABLEKS                       R12 R11 K12 ["TextTruncate"]
      192 GETIMPORT                        R12 K21 [Enum.TextXAlignment.Left]
      194 SETTABLEKS                       R12 R11 K15 ["TextXAlignment"]
      196 CALL                             R9 2 1
      197 MOVE                             R2 R9
      198 JUMP                             ; [+53]
      199 FASTCALL1                        TYPEOF R0 ; [+3]
      200 MOVE                             R8 R0
      201 GETIMPORT                        R7 K23 [typeof]
      203 CALL                             R7 1 1
      204 JUMPIFNOTEQKS                    R7 K24 ["table"] ; [+28]
      206 GETTABLEKS                       R7 R0 K45 ["Item"]
      208 JUMPIFNOT                        R7 ; [+24]
      209 GETTABLEKS                       R6 R0 K25 ["Prefix"]
      211 GETUPVAL                         R7 3
      212 GETTABLEKS                       R7 R7 K4 ["createElement"]
      214 GETUPVAL                         R8 8
      215 DUPTABLE                         R9 K47 [{"tag", "LayoutOrder", "Size"}]
      216 LOADK                            R10 K48 ["auto-y"]
      217 SETTABLEKS                       R10 R9 K46 ["tag"]
      219 LOADN                            R10 2
      220 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      222 GETUPVAL                         R10 5
      223 SETTABLEKS                       R10 R9 K8 ["Size"]
      225 DUPTABLE                         R10 K50 [{"ContentElement"}]
      226 GETTABLEKS                       R11 R0 K45 ["Item"]
      228 SETTABLEKS                       R11 R10 K49 ["ContentElement"]
      230 CALL                             R7 3 1
      231 MOVE                             R2 R7
      232 JUMP                             ; [+19]
      233 GETUPVAL                         R7 3
      234 GETTABLEKS                       R7 R7 K4 ["createElement"]
      236 GETUPVAL                         R8 8
      237 DUPTABLE                         R9 K47 [{"tag", "LayoutOrder", "Size"}]
      238 LOADK                            R10 K48 ["auto-y"]
      239 SETTABLEKS                       R10 R9 K46 ["tag"]
      241 LOADN                            R10 2
      242 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      244 GETUPVAL                         R10 5
      245 SETTABLEKS                       R10 R9 K8 ["Size"]
      247 DUPTABLE                         R10 K50 [{"ContentElement"}]
      248 SETTABLEKS                       R0 R10 K49 ["ContentElement"]
      250 CALL                             R7 3 1
      251 MOVE                             R2 R7
      252 GETUPVAL                         R7 3
      253 GETTABLEKS                       R7 R7 K4 ["createElement"]
      255 GETUPVAL                         R8 8
      256 DUPTABLE                         R9 K53 [{"key", "testId", "LayoutOrder", "tag"}]
      257 FASTCALL1                        TOSTRING R1 ; [+3]
      258 MOVE                             R11 R1
      259 GETIMPORT                        R10 K55 [tostring]
      261 CALL                             R10 1 1
      262 SETTABLEKS                       R10 R9 K51 ["key"]
      264 LOADK                            R10 K56 ["--markdown--bullet-list-item"]
      265 SETTABLEKS                       R10 R9 K52 ["testId"]
      267 SETTABLEKS                       R1 R9 K7 ["LayoutOrder"]
      269 LOADK                            R10 K57 ["gap-small auto-xy row align-x-left align-y-top"]
      270 SETTABLEKS                       R10 R9 K46 ["tag"]
      272 DUPTABLE                         R10 K60 [{"Marker", "Content", "Padding"}]
      273 GETUPVAL                         R11 3
      274 GETTABLEKS                       R11 R11 K4 ["createElement"]
      276 GETUPVAL                         R12 8
      277 DUPTABLE                         R13 K61 [{"LayoutOrder", "Size"}]
      278 LOADN                            R14 1
      279 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      281 GETIMPORT                        R14 K63 [UDim2.fromOffset]
      283 GETUPVAL                         R15 1
      284 GETTABLEKS                       R15 R15 K64 ["MarkerSize"]
      286 JUMPIF                           R15 ; [+3]
      287 GETUPVAL                         R15 2
      288 GETTABLEKS                       R15 R15 K64 ["MarkerSize"]
      290 GETUPVAL                         R16 1
      291 GETTABLEKS                       R16 R16 K65 ["LineHeight"]
      293 JUMPIF                           R16 ; [+3]
      294 GETUPVAL                         R16 2
      295 GETTABLEKS                       R16 R16 K65 ["LineHeight"]
      297 CALL                             R14 2 1
      298 SETTABLEKS                       R14 R13 K8 ["Size"]
      300 DUPTABLE                         R14 K67 [{"Image"}]
      301 MOVE                             R17 R6
      302 MOVE                             R16 R17
      303 JUMPIFNOT                        R16 ; [+11]
      304 LOADK                            R20 K68 ["^*"]
      305 NAMECALL                         R18 R17 K69 ["find"]
      307 CALL                             R18 2 1
      308 NOT                              R16 R18
      309 JUMPIFNOT                        R16 ; [+5]
      310 LOADK                            R20 K70 ["^-"]
      311 NAMECALL                         R18 R17 K69 ["find"]
      313 CALL                             R18 2 1
      314 NOT                              R16 R18
      315 JUMPIFNOT                        R16 ; [+70]
      316 GETUPVAL                         R15 3
      317 GETTABLEKS                       R15 R15 K4 ["createElement"]
      319 GETUPVAL                         R16 4
      320 DUPTABLE                         R17 K72 [{"tag", "Text", "fontStyle", "textStyle", "Size"}]
      321 LOADK                            R18 K73 ["position-center-left anchor-center-left"]
      322 SETTABLEKS                       R18 R17 K46 ["tag"]
      324 LOADK                            R19 K74 ["%*."]
      325 MOVE                             R21 R6
      326 NAMECALL                         R19 R19 K75 ["format"]
      328 CALL                             R19 2 1
      329 MOVE                             R18 R19
      330 SETTABLEKS                       R18 R17 K9 ["Text"]
      332 DUPTABLE                         R18 K44 [{"Font", "FontSize"}]
      333 GETUPVAL                         R19 1
      334 GETTABLEKS                       R19 R19 K6 ["Font"]
      336 JUMPIF                           R19 ; [+3]
      337 GETUPVAL                         R19 2
      338 GETTABLEKS                       R19 R19 K6 ["Font"]
      340 SETTABLEKS                       R19 R18 K6 ["Font"]
      342 GETUPVAL                         R19 1
      343 GETTABLEKS                       R19 R19 K11 ["TextSize"]
      345 JUMPIF                           R19 ; [+3]
      346 GETUPVAL                         R19 2
      347 GETTABLEKS                       R19 R19 K11 ["TextSize"]
      349 SETTABLEKS                       R19 R18 K43 ["FontSize"]
      351 SETTABLEKS                       R18 R17 K71 ["fontStyle"]
      353 DUPTABLE                         R18 K42 [{"Color3"}]
      354 GETUPVAL                         R19 1
      355 GETTABLEKS                       R19 R19 K10 ["TextColor"]
      357 JUMPIF                           R19 ; [+3]
      358 GETUPVAL                         R19 2
      359 GETTABLEKS                       R19 R19 K10 ["TextColor"]
      361 SETTABLEKS                       R19 R18 K41 ["Color3"]
      363 SETTABLEKS                       R18 R17 K38 ["textStyle"]
      365 GETIMPORT                        R18 K63 [UDim2.fromOffset]
      367 GETUPVAL                         R19 1
      368 GETTABLEKS                       R19 R19 K64 ["MarkerSize"]
      370 JUMPIF                           R19 ; [+3]
      371 GETUPVAL                         R19 2
      372 GETTABLEKS                       R19 R19 K64 ["MarkerSize"]
      374 GETUPVAL                         R20 1
      375 GETTABLEKS                       R20 R20 K64 ["MarkerSize"]
      377 JUMPIF                           R20 ; [+3]
      378 GETUPVAL                         R20 2
      379 GETTABLEKS                       R20 R20 K64 ["MarkerSize"]
      381 CALL                             R18 2 1
      382 SETTABLEKS                       R18 R17 K8 ["Size"]
      384 CALL                             R15 2 1
      385 JUMP                             ; [+45]
      386 GETUPVAL                         R15 3
      387 GETTABLEKS                       R15 R15 K4 ["createElement"]
      389 GETUPVAL                         R16 9
      390 DUPTABLE                         R17 K77 [{"tag", "Image", "imageStyle", "LayoutOrder", "Size"}]
      391 LOADK                            R18 K73 ["position-center-left anchor-center-left"]
      392 SETTABLEKS                       R18 R17 K46 ["tag"]
      394 SETTABLEKS                       R4 R17 K66 ["Image"]
      396 DUPTABLE                         R18 K42 [{"Color3"}]
      397 GETUPVAL                         R19 1
      398 GETTABLEKS                       R19 R19 K10 ["TextColor"]
      400 JUMPIF                           R19 ; [+3]
      401 GETUPVAL                         R19 2
      402 GETTABLEKS                       R19 R19 K10 ["TextColor"]
      404 SETTABLEKS                       R19 R18 K41 ["Color3"]
      406 SETTABLEKS                       R18 R17 K76 ["imageStyle"]
      408 LOADN                            R18 1
      409 SETTABLEKS                       R18 R17 K7 ["LayoutOrder"]
      411 GETIMPORT                        R18 K63 [UDim2.fromOffset]
      413 GETUPVAL                         R19 1
      414 GETTABLEKS                       R19 R19 K64 ["MarkerSize"]
      416 JUMPIF                           R19 ; [+3]
      417 GETUPVAL                         R19 2
      418 GETTABLEKS                       R19 R19 K64 ["MarkerSize"]
      420 GETUPVAL                         R20 1
      421 GETTABLEKS                       R20 R20 K64 ["MarkerSize"]
      423 JUMPIF                           R20 ; [+3]
      424 GETUPVAL                         R20 2
      425 GETTABLEKS                       R20 R20 K64 ["MarkerSize"]
      427 CALL                             R18 2 1
      428 SETTABLEKS                       R18 R17 K8 ["Size"]
      430 CALL                             R15 2 1
      431 SETTABLEKS                       R15 R14 K66 ["Image"]
      433 CALL                             R11 3 1
      434 SETTABLEKS                       R11 R10 K58 ["Marker"]
      436 SETTABLEKS                       R2 R10 K59 ["Content"]
      438 SETTABLEKS                       R5 R10 K14 ["Padding"]
      440 CALL                             R7 3 -1
      441 RETURN                           R7 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["TextWrapped"]
        8 GETTABLEKS                       R3 R0 K3 ["TextTruncate"]
       10 GETTABLEKS                       R4 R0 K4 ["ListStyle"]
       12 JUMPIF                           R4 ; [+1]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R5 R0 K5 ["Items"]
       16 GETTABLEKS                       R6 R4 K6 ["ItemIndentation"]
       18 JUMPIF                           R6 ; [+3]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K6 ["ItemIndentation"]
       22 GETTABLEKS                       R8 R1 K7 ["Gap"]
       24 GETTABLEKS                       R8 R8 K8 ["Small"]
       26 GETTABLEKS                       R9 R4 K9 ["MarkerSize"]
       28 JUMPIF                           R9 ; [+3]
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R9 R9 K9 ["MarkerSize"]
       32 ADD                              R7 R9 R8
       33 GETIMPORT                        R8 K12 [UDim2.new]
       35 LOADN                            R9 1
       36 MINUS                            R10 R7
       37 LOADN                            R11 0
       38 LOADN                            R12 0
       39 CALL                             R8 4 1
       40 GETUPVAL                         R9 2
       41 MOVE                             R10 R5
       42 NEWCLOSURE                       R11 P0
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R4
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U6
       53 CALL                             R9 2 1
       54 GETTABLEKS                       R10 R0 K13 ["Size"]
       56 GETTABLEKS                       R11 R0 K14 ["Position"]
       58 GETIMPORT                        R12 K18 [Enum.AutomaticSize.XY]
       60 JUMPIFNOT                        R10 ; [+16]
       61 GETTABLEKS                       R13 R10 K19 ["X"]
       63 GETTABLEKS                       R13 R13 K20 ["Scale"]
       65 LOADN                            R14 0
       66 JUMPIFLT                         R14 R13 ; [+8]
       68 GETTABLEKS                       R13 R10 K19 ["X"]
       70 GETTABLEKS                       R13 R13 K21 ["Offset"]
       72 LOADN                            R14 0
       73 JUMPIFNOTLT                      R14 R13 ; [+3]
       75 GETIMPORT                        R12 K23 [Enum.AutomaticSize.Y]
       77 GETUPVAL                         R13 3
       78 GETTABLEKS                       R13 R13 K24 ["createElement"]
       80 GETUPVAL                         R14 5
       81 DUPTABLE                         R15 K29 [{"testId", "tag", "AutomaticSize", "backgroundStyle", "LayoutOrder", "Position", "Size"}]
       82 LOADK                            R16 K30 ["--markdown--bullet-list"]
       83 SETTABLEKS                       R16 R15 K25 ["testId"]
       85 LOADK                            R16 K31 ["col align-x-left gap-small"]
       86 SETTABLEKS                       R16 R15 K26 ["tag"]
       88 SETTABLEKS                       R12 R15 K16 ["AutomaticSize"]
       90 DUPTABLE                         R16 K33 [{"Transparency"}]
       91 LOADN                            R17 1
       92 SETTABLEKS                       R17 R16 K32 ["Transparency"]
       94 SETTABLEKS                       R16 R15 K27 ["backgroundStyle"]
       96 GETTABLEKS                       R17 R0 K28 ["LayoutOrder"]
       98 ORK                              R16 R17 K34 [1]
       99 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      101 SETTABLEKS                       R11 R15 K14 ["Position"]
      103 SETTABLEKS                       R10 R15 K13 ["Size"]
      105 GETUPVAL                         R16 7
      106 GETTABLEKS                       R16 R16 K35 ["assign"]
      108 MOVE                             R17 R9
      109 GETTABLEKS                       R18 R0 K36 ["children"]
      111 JUMPIF                           R18 ; [+2]
      112 NEWTABLE                         R18 0 0
      114 CALL                             R16 2 -1
      115 CALL                             R13 -1 -1
      116 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MarkdownCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K6 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Dash"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K6 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Foundation"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R2 K10 ["map"]
       26 GETTABLEKS                       R5 R3 K11 ["View"]
       28 GETTABLEKS                       R6 R3 K12 ["Image"]
       30 GETTABLEKS                       R7 R3 K13 ["Text"]
       32 DUPTABLE                         R8 K24 [{"ItemOffset", "MarkerImage", "MarkerSize", "Padding", "LineHeight", "Font", "TextColor", "TextSize", "ItemIndentation", "SubItemStyle"}]
       33 LOADN                            R9 12
       34 SETTABLEKS                       R9 R8 K14 ["ItemOffset"]
       36 LOADK                            R9 K25 ["rbxasset://textures/StudioSharedUI/dot.png"]
       37 SETTABLEKS                       R9 R8 K15 ["MarkerImage"]
       39 LOADN                            R9 4
       40 SETTABLEKS                       R9 R8 K16 ["MarkerSize"]
       42 LOADN                            R9 6
       43 SETTABLEKS                       R9 R8 K17 ["Padding"]
       45 LOADN                            R9 18
       46 SETTABLEKS                       R9 R8 K18 ["LineHeight"]
       48 GETIMPORT                        R9 K28 [Enum.Font.BuilderSans]
       50 SETTABLEKS                       R9 R8 K19 ["Font"]
       52 GETIMPORT                        R9 K31 [Color3.fromRGB]
       54 LOADN                            R10 0
       55 LOADN                            R11 0
       56 LOADN                            R12 0
       57 CALL                             R9 3 1
       58 SETTABLEKS                       R9 R8 K20 ["TextColor"]
       60 LOADN                            R9 18
       61 SETTABLEKS                       R9 R8 K21 ["TextSize"]
       63 LOADN                            R9 0
       64 SETTABLEKS                       R9 R8 K22 ["ItemIndentation"]
       66 DUPTABLE                         R9 K32 [{"ItemIndentation", "ItemOffset"}]
       67 LOADN                            R10 20
       68 SETTABLEKS                       R10 R9 K22 ["ItemIndentation"]
       70 LOADN                            R10 12
       71 SETTABLEKS                       R10 R9 K14 ["ItemOffset"]
       73 SETTABLEKS                       R9 R8 K23 ["SubItemStyle"]
       75 DUPCLOSURE                       R9 K33 [PROTO_0]
       76 DUPCLOSURE                       R10 K34 [PROTO_1]
       77 DUPCLOSURE                       R11 K35 [PROTO_3]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R2
       86 RETURN                           R11 1
