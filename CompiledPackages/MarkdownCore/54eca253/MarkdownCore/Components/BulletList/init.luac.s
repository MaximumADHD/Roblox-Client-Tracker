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
       80 JUMP                             ; [+153]
       81 FASTCALL1                        TYPEOF R0 ; [+3]
       82 MOVE                             R8 R0
       83 GETIMPORT                        R7 K24 [typeof]
       85 CALL                             R7 1 1
       86 JUMPIFNOTEQKS                    R7 K25 ["table"] ; [+106]
       88 GETTABLEKS                       R7 R0 K10 ["Text"]
       90 JUMPIFNOT                        R7 ; [+102]
       91 GETTABLEKS                       R6 R0 K26 ["Prefix"]
       93 GETUPVAL                         R7 1
       94 GETTABLEKS                       R7 R7 K27 ["SubItemStyle"]
       96 GETIMPORT                        R8 K30 [UDim2.new]
       98 LOADN                            R9 1
       99 GETTABLEKS                       R11 R7 K31 ["ItemOffset"]
      101 MINUS                            R10 R11
      102 JUMPIF                           R10 ; [+5]
      103 GETUPVAL                         R10 2
      104 GETTABLEKS                       R10 R10 K27 ["SubItemStyle"]
      106 GETTABLEKS                       R10 R10 K31 ["ItemOffset"]
      108 LOADN                            R11 0
      109 LOADN                            R12 0
      110 CALL                             R8 4 1
      111 GETTABLEKS                       R9 R7 K32 ["ItemIndentation"]
      113 OR                               R3 R9 R3
      114 GETTABLEKS                       R9 R7 K33 ["MarkerStyle"]
      116 OR                               R4 R9 R4
      117 JUMPIFNOT                        R3 ; [+14]
      118 GETUPVAL                         R9 3
      119 GETTABLEKS                       R9 R9 K4 ["createElement"]
      121 LOADK                            R10 K34 ["UIPadding"]
      122 DUPTABLE                         R11 K36 [{"PaddingLeft"}]
      123 GETIMPORT                        R12 K38 [UDim.new]
      125 LOADN                            R13 0
      126 MOVE                             R14 R3
      127 CALL                             R12 2 1
      128 SETTABLEKS                       R12 R11 K35 ["PaddingLeft"]
      130 CALL                             R9 2 1
      131 MOVE                             R5 R9
      132 GETUPVAL                         R9 3
      133 GETTABLEKS                       R9 R9 K4 ["createElement"]
      135 GETUPVAL                         R10 4
      136 DUPTABLE                         R11 K41 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Size"], ["textStyle"], ["FontStyle"], ["Text"], ["TextWrapped"], ["TextTruncate"], ["TextXAlignment"]}]
      137 GETIMPORT                        R12 K20 [Enum.AutomaticSize.XY]
      139 SETTABLEKS                       R12 R11 K5 ["AutomaticSize"]
      141 SETTABLEKS                       R8 R11 K9 ["Size"]
      143 DUPTABLE                         R12 K43 [{"Color3"}]
      144 GETUPVAL                         R13 1
      145 GETTABLEKS                       R13 R13 K11 ["TextColor"]
      147 JUMPIF                           R13 ; [+3]
      148 GETUPVAL                         R13 2
      149 GETTABLEKS                       R13 R13 K11 ["TextColor"]
      151 SETTABLEKS                       R13 R12 K42 ["Color3"]
      153 SETTABLEKS                       R12 R11 K39 ["textStyle"]
      155 DUPTABLE                         R12 K45 [{"Font", "FontSize"}]
      156 GETUPVAL                         R13 1
      157 GETTABLEKS                       R13 R13 K6 ["Font"]
      159 JUMPIF                           R13 ; [+3]
      160 GETUPVAL                         R13 2
      161 GETTABLEKS                       R13 R13 K6 ["Font"]
      163 SETTABLEKS                       R13 R12 K6 ["Font"]
      165 GETUPVAL                         R13 1
      166 GETTABLEKS                       R13 R13 K12 ["TextSize"]
      168 JUMPIF                           R13 ; [+3]
      169 GETUPVAL                         R13 2
      170 GETTABLEKS                       R13 R13 K12 ["TextSize"]
      172 SETTABLEKS                       R13 R12 K44 ["FontSize"]
      174 SETTABLEKS                       R12 R11 K40 ["FontStyle"]
      176 GETTABLEKS                       R12 R0 K10 ["Text"]
      178 SETTABLEKS                       R12 R11 K10 ["Text"]
      180 GETUPVAL                         R12 7
      181 SETTABLEKS                       R12 R11 K14 ["TextWrapped"]
      183 GETUPVAL                         R12 6
      184 SETTABLEKS                       R12 R11 K13 ["TextTruncate"]
      186 GETIMPORT                        R12 K22 [Enum.TextXAlignment.Left]
      188 SETTABLEKS                       R12 R11 K16 ["TextXAlignment"]
      190 CALL                             R9 2 1
      191 MOVE                             R2 R9
      192 JUMP                             ; [+41]
      193 FASTCALL1                        TYPEOF R0 ; [+3]
      194 MOVE                             R8 R0
      195 GETIMPORT                        R7 K24 [typeof]
      197 CALL                             R7 1 1
      198 JUMPIFNOTEQKS                    R7 K25 ["table"] ; [+22]
      200 GETTABLEKS                       R7 R0 K46 ["Item"]
      202 JUMPIFNOT                        R7 ; [+18]
      203 GETTABLEKS                       R6 R0 K26 ["Prefix"]
      205 GETUPVAL                         R7 3
      206 GETTABLEKS                       R7 R7 K4 ["createElement"]
      208 GETUPVAL                         R8 8
      209 DUPTABLE                         R9 K49 [{["tag"] = "auto-y", ["LayoutOrder"] = 2, ["Size"]}]
      210 GETUPVAL                         R10 5
      211 SETTABLEKS                       R10 R9 K9 ["Size"]
      213 DUPTABLE                         R10 K51 [{"ContentElement"}]
      214 GETTABLEKS                       R11 R0 K46 ["Item"]
      216 SETTABLEKS                       R11 R10 K50 ["ContentElement"]
      218 CALL                             R7 3 1
      219 MOVE                             R2 R7
      220 JUMP                             ; [+13]
      221 GETUPVAL                         R7 3
      222 GETTABLEKS                       R7 R7 K4 ["createElement"]
      224 GETUPVAL                         R8 8
      225 DUPTABLE                         R9 K49 [{["tag"] = "auto-y", ["LayoutOrder"] = 2, ["Size"]}]
      226 GETUPVAL                         R10 5
      227 SETTABLEKS                       R10 R9 K9 ["Size"]
      229 DUPTABLE                         R10 K51 [{"ContentElement"}]
      230 SETTABLEKS                       R0 R10 K50 ["ContentElement"]
      232 CALL                             R7 3 1
      233 MOVE                             R2 R7
      234 GETUPVAL                         R7 3
      235 GETTABLEKS                       R7 R7 K4 ["createElement"]
      237 GETUPVAL                         R8 8
      238 DUPTABLE                         R9 K56 [{["key"], ["testId"] = "--markdown--bullet-list-item", ["LayoutOrder"], ["tag"] = "gap-small auto-xy row align-x-left align-y-top"}]
      239 FASTCALL1                        TOSTRING R1 ; [+3]
      240 MOVE                             R11 R1
      241 GETIMPORT                        R10 K58 [tostring]
      243 CALL                             R10 1 1
      244 SETTABLEKS                       R10 R9 K52 ["key"]
      246 SETTABLEKS                       R1 R9 K7 ["LayoutOrder"]
      248 DUPTABLE                         R10 K61 [{"Marker", "Content", "Padding"}]
      249 GETUPVAL                         R11 3
      250 GETTABLEKS                       R11 R11 K4 ["createElement"]
      252 GETUPVAL                         R12 8
      253 DUPTABLE                         R13 K63 [{["LayoutOrder"] = 1, ["Size"]}]
      254 GETIMPORT                        R14 K65 [UDim2.fromOffset]
      256 GETUPVAL                         R15 1
      257 GETTABLEKS                       R15 R15 K66 ["MarkerSize"]
      259 JUMPIF                           R15 ; [+3]
      260 GETUPVAL                         R15 2
      261 GETTABLEKS                       R15 R15 K66 ["MarkerSize"]
      263 GETUPVAL                         R16 1
      264 GETTABLEKS                       R16 R16 K67 ["LineHeight"]
      266 JUMPIF                           R16 ; [+3]
      267 GETUPVAL                         R16 2
      268 GETTABLEKS                       R16 R16 K67 ["LineHeight"]
      270 CALL                             R14 2 1
      271 SETTABLEKS                       R14 R13 K9 ["Size"]
      273 DUPTABLE                         R14 K69 [{"Image"}]
      274 MOVE                             R17 R6
      275 MOVE                             R16 R17
      276 JUMPIFNOT                        R16 ; [+11]
      277 LOADK                            R20 K70 ["^*"]
      278 NAMECALL                         R18 R17 K71 ["find"]
      280 CALL                             R18 2 1
      281 NOT                              R16 R18
      282 JUMPIFNOT                        R16 ; [+5]
      283 LOADK                            R20 K72 ["^-"]
      284 NAMECALL                         R18 R17 K71 ["find"]
      286 CALL                             R18 2 1
      287 NOT                              R16 R18
      288 JUMPIFNOT                        R16 ; [+67]
      289 GETUPVAL                         R15 3
      290 GETTABLEKS                       R15 R15 K4 ["createElement"]
      292 GETUPVAL                         R16 4
      293 DUPTABLE                         R17 K75 [{["tag"] = "position-center-left anchor-center-left", ["Text"], ["fontStyle"], ["textStyle"], ["Size"]}]
      294 LOADK                            R19 K76 ["%*."]
      295 MOVE                             R21 R6
      296 NAMECALL                         R19 R19 K77 ["format"]
      298 CALL                             R19 2 1
      299 MOVE                             R18 R19
      300 SETTABLEKS                       R18 R17 K10 ["Text"]
      302 DUPTABLE                         R18 K45 [{"Font", "FontSize"}]
      303 GETUPVAL                         R19 1
      304 GETTABLEKS                       R19 R19 K6 ["Font"]
      306 JUMPIF                           R19 ; [+3]
      307 GETUPVAL                         R19 2
      308 GETTABLEKS                       R19 R19 K6 ["Font"]
      310 SETTABLEKS                       R19 R18 K6 ["Font"]
      312 GETUPVAL                         R19 1
      313 GETTABLEKS                       R19 R19 K12 ["TextSize"]
      315 JUMPIF                           R19 ; [+3]
      316 GETUPVAL                         R19 2
      317 GETTABLEKS                       R19 R19 K12 ["TextSize"]
      319 SETTABLEKS                       R19 R18 K44 ["FontSize"]
      321 SETTABLEKS                       R18 R17 K74 ["fontStyle"]
      323 DUPTABLE                         R18 K43 [{"Color3"}]
      324 GETUPVAL                         R19 1
      325 GETTABLEKS                       R19 R19 K11 ["TextColor"]
      327 JUMPIF                           R19 ; [+3]
      328 GETUPVAL                         R19 2
      329 GETTABLEKS                       R19 R19 K11 ["TextColor"]
      331 SETTABLEKS                       R19 R18 K42 ["Color3"]
      333 SETTABLEKS                       R18 R17 K39 ["textStyle"]
      335 GETIMPORT                        R18 K65 [UDim2.fromOffset]
      337 GETUPVAL                         R19 1
      338 GETTABLEKS                       R19 R19 K66 ["MarkerSize"]
      340 JUMPIF                           R19 ; [+3]
      341 GETUPVAL                         R19 2
      342 GETTABLEKS                       R19 R19 K66 ["MarkerSize"]
      344 GETUPVAL                         R20 1
      345 GETTABLEKS                       R20 R20 K66 ["MarkerSize"]
      347 JUMPIF                           R20 ; [+3]
      348 GETUPVAL                         R20 2
      349 GETTABLEKS                       R20 R20 K66 ["MarkerSize"]
      351 CALL                             R18 2 1
      352 SETTABLEKS                       R18 R17 K9 ["Size"]
      354 CALL                             R15 2 1
      355 JUMP                             ; [+39]
      356 GETUPVAL                         R15 3
      357 GETTABLEKS                       R15 R15 K4 ["createElement"]
      359 GETUPVAL                         R16 9
      360 DUPTABLE                         R17 K79 [{["tag"] = "position-center-left anchor-center-left", ["Image"], ["imageStyle"], ["LayoutOrder"] = 1, ["Size"]}]
      361 SETTABLEKS                       R4 R17 K68 ["Image"]
      363 DUPTABLE                         R18 K43 [{"Color3"}]
      364 GETUPVAL                         R19 1
      365 GETTABLEKS                       R19 R19 K11 ["TextColor"]
      367 JUMPIF                           R19 ; [+3]
      368 GETUPVAL                         R19 2
      369 GETTABLEKS                       R19 R19 K11 ["TextColor"]
      371 SETTABLEKS                       R19 R18 K42 ["Color3"]
      373 SETTABLEKS                       R18 R17 K78 ["imageStyle"]
      375 GETIMPORT                        R18 K65 [UDim2.fromOffset]
      377 GETUPVAL                         R19 1
      378 GETTABLEKS                       R19 R19 K66 ["MarkerSize"]
      380 JUMPIF                           R19 ; [+3]
      381 GETUPVAL                         R19 2
      382 GETTABLEKS                       R19 R19 K66 ["MarkerSize"]
      384 GETUPVAL                         R20 1
      385 GETTABLEKS                       R20 R20 K66 ["MarkerSize"]
      387 JUMPIF                           R20 ; [+3]
      388 GETUPVAL                         R20 2
      389 GETTABLEKS                       R20 R20 K66 ["MarkerSize"]
      391 CALL                             R18 2 1
      392 SETTABLEKS                       R18 R17 K9 ["Size"]
      394 CALL                             R15 2 1
      395 SETTABLEKS                       R15 R14 K68 ["Image"]
      397 CALL                             R11 3 1
      398 SETTABLEKS                       R11 R10 K59 ["Marker"]
      400 SETTABLEKS                       R2 R10 K60 ["Content"]
      402 SETTABLEKS                       R5 R10 K15 ["Padding"]
      404 CALL                             R7 3 -1
      405 RETURN                           R7 -1

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
       81 DUPTABLE                         R15 K31 [{["testId"] = "--markdown--bullet-list", ["tag"] = "col align-x-left gap-small", ["AutomaticSize"], ["backgroundStyle"], ["LayoutOrder"], ["Position"], ["Size"]}]
       82 SETTABLEKS                       R12 R15 K16 ["AutomaticSize"]
       84 DUPTABLE                         R16 K34 [{["Transparency"] = 1}]
       85 SETTABLEKS                       R16 R15 K29 ["backgroundStyle"]
       87 GETTABLEKS                       R17 R0 K30 ["LayoutOrder"]
       89 ORK                              R16 R17 K33 [1]
       90 SETTABLEKS                       R16 R15 K30 ["LayoutOrder"]
       92 SETTABLEKS                       R11 R15 K14 ["Position"]
       94 SETTABLEKS                       R10 R15 K13 ["Size"]
       96 GETUPVAL                         R16 7
       97 GETTABLEKS                       R16 R16 K35 ["assign"]
       99 MOVE                             R17 R9
      100 GETTABLEKS                       R18 R0 K36 ["children"]
      102 JUMPIF                           R18 ; [+2]
      103 NEWTABLE                         R18 0 0
      105 CALL                             R16 2 -1
      106 CALL                             R13 -1 -1
      107 RETURN                           R13 -1

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
       32 DUPTABLE                         R8 K30 [{["ItemOffset"] = 12, ["MarkerImage"] = "rbxasset://textures/StudioSharedUI/dot.png", ["MarkerSize"] = 4, ["Padding"] = 6, ["LineHeight"] = 18, ["Font"], ["TextColor"], ["TextSize"] = 18, ["ItemIndentation"] = 0, ["SubItemStyle"]}]
       33 GETIMPORT                        R9 K33 [Enum.Font.BuilderSans]
       35 SETTABLEKS                       R9 R8 K24 ["Font"]
       37 GETIMPORT                        R9 K36 [Color3.fromRGB]
       39 LOADN                            R10 0
       40 LOADN                            R11 0
       41 LOADN                            R12 0
       42 CALL                             R9 3 1
       43 SETTABLEKS                       R9 R8 K25 ["TextColor"]
       45 DUPTABLE                         R9 K38 [{["ItemIndentation"] = 20, ["ItemOffset"] = 12}]
       46 SETTABLEKS                       R9 R8 K29 ["SubItemStyle"]
       48 DUPCLOSURE                       R9 K39 [PROTO_0]
       49 DUPCLOSURE                       R10 K40 [PROTO_1]
       50 DUPCLOSURE                       R11 K41 [PROTO_3]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R2
       59 RETURN                           R11 1
