PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"editText"}]
        2 SETTABLEKS                       R0 R3 K0 ["editText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnEdited"]
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["OnEdited"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K2 ["state"]
       14 GETTABLEKS                       R1 R2 K3 ["editText"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnDoubleClick"]
        5 JUMPIFNOT                        R0 ; [+14]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K2 ["DoubleClickDetector"]
        9 NAMECALL                         R0 R0 K3 ["isDoubleClick"]
       11 CALL                             R0 1 1
       12 JUMPIFNOT                        R0 ; [+7]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K0 ["props"]
       16 GETTABLEKS                       R0 R1 K1 ["OnDoubleClick"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K0 ["props"]
       23 GETTABLEKS                       R0 R1 K4 ["OnPressed"]
       25 JUMPIFNOT                        R0 ; [+6]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K0 ["props"]
       29 GETTABLEKS                       R0 R1 K4 ["OnPressed"]
       31 CALL                             R0 0 0
       32 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"editText"}]
        1 GETTABLEKS                       R4 R0 K3 ["props"]
        3 GETTABLEKS                       R3 R4 K4 ["Text"]
        5 ORK                              R2 R3 K2 [""]
        6 SETTABLEKS                       R2 R1 K0 ["editText"]
        8 SETTABLEKS                       R1 R0 K5 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K6 ["onTextChanged"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K7 ["onEdited"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K8 ["new"]
       21 CALL                             R1 0 1
       22 SETTABLEKS                       R1 R0 K9 ["DoubleClickDetector"]
       24 NEWCLOSURE                       R1 P2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K10 ["onPress"]
       28 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Editing"]
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETTABLEKS                       R2 R1 K2 ["Text"]
        7 GETTABLEKS                       R4 R0 K0 ["props"]
        9 GETTABLEKS                       R3 R4 K2 ["Text"]
       11 JUMPIFEQ                         R2 R3 ; [+11]
       13 DUPTABLE                         R4 K4 [{"editText"}]
       14 GETTABLEKS                       R6 R0 K0 ["props"]
       16 GETTABLEKS                       R5 R6 K2 ["Text"]
       18 SETTABLEKS                       R5 R4 K3 ["editText"]
       20 NAMECALL                         R2 R0 K5 ["setState"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["new"]
        7 CALL                             R3 0 1
        8 LOADNIL                          R4
        9 GETUPVAL                         R6 1
       10 JUMPIFNOT                        R6 ; [+5]
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R6 R7 K3 ["Tag"]
       14 GETTABLE                         R5 R1 R6
       15 JUMP                             ; [+1]
       16 LOADNIL                          R5
       17 GETUPVAL                         R7 1
       18 JUMPIFNOT                        R7 ; [+5]
       19 GETUPVAL                         R6 3
       20 MOVE                             R7 R5
       21 LOADK                            R8 K4 ["PropertyCellError"]
       22 CALL                             R6 2 1
       23 JUMP                             ; [+6]
       24 GETTABLEKS                       R7 R1 K5 ["Style"]
       26 JUMPIFEQKS                       R7 K4 ["PropertyCellError"] ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 GETUPVAL                         R8 1
       31 JUMPIFNOT                        R8 ; [+2]
       32 LOADNIL                          R7
       33 JUMP                             ; [+2]
       34 GETTABLEKS                       R7 R1 K6 ["Stylizer"]
       36 NEWTABLE                         R8 1 0
       38 GETTABLEKS                       R9 R1 K7 ["Editing"]
       40 JUMPIFNOT                        R9 ; [+40]
       41 GETUPVAL                         R10 4
       42 GETTABLEKS                       R9 R10 K8 ["createElement"]
       44 GETUPVAL                         R10 5
       45 DUPTABLE                         R11 K16 [{"GetAutocompleteItems", "LayoutOrder", "OnTextChanged", "OnFocusLost", "Size", "ShouldFocus", "Text"}]
       46 GETTABLEKS                       R12 R1 K9 ["GetAutocompleteItems"]
       48 SETTABLEKS                       R12 R11 K9 ["GetAutocompleteItems"]
       50 NAMECALL                         R12 R3 K17 ["getNextOrder"]
       52 CALL                             R12 1 1
       53 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       55 GETTABLEKS                       R12 R0 K18 ["onTextChanged"]
       57 SETTABLEKS                       R12 R11 K11 ["OnTextChanged"]
       59 GETTABLEKS                       R12 R0 K19 ["onEdited"]
       61 SETTABLEKS                       R12 R11 K12 ["OnFocusLost"]
       63 GETIMPORT                        R12 K22 [UDim2.fromScale]
       65 LOADN                            R13 1
       66 LOADN                            R14 1
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K13 ["Size"]
       70 LOADB                            R12 1
       71 SETTABLEKS                       R12 R11 K14 ["ShouldFocus"]
       73 GETTABLEKS                       R12 R2 K23 ["editText"]
       75 SETTABLEKS                       R12 R11 K15 ["Text"]
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K15 ["Text"]
       80 JUMP                             ; [+310]
       81 GETTABLEKS                       R9 R1 K24 ["Delimiters"]
       83 JUMPIFNOT                        R9 ; [+253]
       84 JUMPIFNOT                        R6 ; [+32]
       85 NAMECALL                         R9 R3 K17 ["getNextOrder"]
       87 CALL                             R9 1 1
       88 MOVE                             R4 R9
       89 MOVE                             R10 R4
       90 LOADK                            R11 K25 [" Icon"]
       91 CONCAT                           R9 R10 R11
       92 GETUPVAL                         R11 4
       93 GETTABLEKS                       R10 R11 K8 ["createElement"]
       95 GETUPVAL                         R11 6
       96 GETUPVAL                         R13 1
       97 JUMPIFNOT                        R13 ; [+10]
       98 NEWTABLE                         R12 2 0
      100 SETTABLEKS                       R4 R12 K10 ["LayoutOrder"]
      102 GETUPVAL                         R14 2
      103 GETTABLEKS                       R13 R14 K3 ["Tag"]
      105 LOADK                            R14 K26 ["ErrorIcon"]
      106 SETTABLE                         R14 R12 R13
      107 JUMP                             ; [+7]
      108 GETUPVAL                         R12 7
      109 GETTABLEKS                       R13 R7 K27 ["ErrorImage"]
      111 DUPTABLE                         R14 K28 [{"LayoutOrder"}]
      112 SETTABLEKS                       R4 R14 K10 ["LayoutOrder"]
      114 CALL                             R12 2 1
      115 CALL                             R10 2 1
      116 SETTABLE                         R10 R8 R9
      117 LOADNIL                          R9
      118 GETTABLEKS                       R10 R1 K15 ["Text"]
      120 LENGTH                           R11 R10
      121 LOADN                            R12 0
      122 JUMPIFNOTLT                      R12 R11 ; [+268]
      124 LOADNIL                          R11
      125 LOADNIL                          R12
      126 GETIMPORT                        R13 K30 [ipairs]
      128 GETTABLEKS                       R14 R1 K24 ["Delimiters"]
      130 CALL                             R13 1 3
      131 FORGPREP_INEXT                   R13
      132 MOVE                             R20 R17
      133 NAMECALL                         R18 R10 K31 ["find"]
      135 CALL                             R18 2 2
      136 JUMPIFNOT                        R18 ; [+5]
      137 JUMPIFNOT                        R11 ; [+2]
      138 JUMPIFNOTLT                      R18 R11 ; [+3]
      140 MOVE                             R11 R18
      141 MOVE                             R12 R19
      142 FORGLOOP                         R13 2 [inext] ; [-11]
      144 MOVE                             R13 R10
      145 LOADNIL                          R14
      146 JUMPIFNOT                        R11 ; [+20]
      147 GETUPVAL                         R15 8
      148 LOADN                            R18 1
      149 SUBK                             R19 R11 K32 [1]
      150 NAMECALL                         R16 R10 K33 ["sub"]
      152 CALL                             R16 3 -1
      153 CALL                             R15 -1 1
      154 MOVE                             R13 R15
      155 MOVE                             R17 R11
      156 MOVE                             R18 R12
      157 NAMECALL                         R15 R10 K33 ["sub"]
      159 CALL                             R15 3 1
      160 MOVE                             R14 R15
      161 ADDK                             R17 R12 K32 [1]
      162 NAMECALL                         R15 R10 K33 ["sub"]
      164 CALL                             R15 2 1
      165 MOVE                             R10 R15
      166 JUMP                             ; [+1]
      167 LOADK                            R10 K34 [""]
      168 GETTABLEKS                       R15 R1 K35 ["GetImageProps"]
      170 JUMPIFNOT                        R15 ; [+29]
      171 GETTABLEKS                       R15 R1 K35 ["GetImageProps"]
      173 MOVE                             R16 R13
      174 GETUPVAL                         R18 9
      175 JUMPIFNOT                        R18 ; [+2]
      176 MOVE                             R17 R9
      177 JUMP                             ; [+1]
      178 LOADNIL                          R17
      179 CALL                             R15 2 1
      180 JUMPIFNOT                        R15 ; [+19]
      181 NAMECALL                         R16 R3 K17 ["getNextOrder"]
      183 CALL                             R16 1 1
      184 MOVE                             R4 R16
      185 MOVE                             R17 R4
      186 LOADK                            R18 K25 [" Icon"]
      187 CONCAT                           R16 R17 R18
      188 GETUPVAL                         R18 4
      189 GETTABLEKS                       R17 R18 K8 ["createElement"]
      191 GETUPVAL                         R18 6
      192 GETUPVAL                         R19 7
      193 MOVE                             R20 R15
      194 DUPTABLE                         R21 K28 [{"LayoutOrder"}]
      195 SETTABLEKS                       R4 R21 K10 ["LayoutOrder"]
      197 CALL                             R19 2 -1
      198 CALL                             R17 -1 1
      199 SETTABLE                         R17 R8 R16
      200 LENGTH                           R15 R13
      201 LOADN                            R16 0
      202 JUMPIFNOTLT                      R16 R15 ; [+51]
      204 NAMECALL                         R15 R3 K17 ["getNextOrder"]
      206 CALL                             R15 1 1
      207 MOVE                             R4 R15
      208 MOVE                             R16 R4
      209 LOADK                            R17 K36 [" Text"]
      210 CONCAT                           R15 R16 R17
      211 GETUPVAL                         R17 4
      212 GETTABLEKS                       R16 R17 K8 ["createElement"]
      214 GETUPVAL                         R17 10
      215 GETUPVAL                         R19 1
      216 JUMPIFNOT                        R19 ; [+18]
      217 NEWTABLE                         R18 4 0
      219 SETTABLEKS                       R4 R18 K10 ["LayoutOrder"]
      221 SETTABLEKS                       R13 R18 K15 ["Text"]
      223 GETUPVAL                         R20 2
      224 GETTABLEKS                       R19 R20 K3 ["Tag"]
      226 GETUPVAL                         R20 11
      227 LOADK                            R21 K37 ["X-Fit Left"]
      228 JUMPIFNOT                        R6 ; [+2]
      229 LOADK                            R22 K38 ["Error"]
      230 JUMP                             ; [+1]
      231 LOADNIL                          R22
      232 CALL                             R20 2 1
      233 SETTABLE                         R20 R18 R19
      234 JUMP                             ; [+17]
      235 DUPTABLE                         R18 K42 [{"AutomaticSize", "LayoutOrder", "Text", "TextColor", "TextXAlignment"}]
      236 GETIMPORT                        R19 K45 [Enum.AutomaticSize.XY]
      238 SETTABLEKS                       R19 R18 K39 ["AutomaticSize"]
      240 SETTABLEKS                       R4 R18 K10 ["LayoutOrder"]
      242 SETTABLEKS                       R13 R18 K15 ["Text"]
      244 GETTABLEKS                       R19 R7 K40 ["TextColor"]
      246 SETTABLEKS                       R19 R18 K40 ["TextColor"]
      248 GETIMPORT                        R19 K47 [Enum.TextXAlignment.Left]
      250 SETTABLEKS                       R19 R18 K41 ["TextXAlignment"]
      252 CALL                             R16 2 1
      253 SETTABLE                         R16 R8 R15
      254 JUMPIFNOT                        R11 ; [+80]
      255 GETTABLEKS                       R15 R1 K35 ["GetImageProps"]
      257 JUMPIFNOT                        R15 ; [+24]
      258 GETTABLEKS                       R15 R1 K35 ["GetImageProps"]
      260 MOVE                             R16 R14
      261 CALL                             R15 1 1
      262 JUMPIFNOT                        R15 ; [+19]
      263 NAMECALL                         R16 R3 K17 ["getNextOrder"]
      265 CALL                             R16 1 1
      266 MOVE                             R4 R16
      267 MOVE                             R17 R4
      268 LOADK                            R18 K25 [" Icon"]
      269 CONCAT                           R16 R17 R18
      270 GETUPVAL                         R18 4
      271 GETTABLEKS                       R17 R18 K8 ["createElement"]
      273 GETUPVAL                         R18 6
      274 GETUPVAL                         R19 7
      275 MOVE                             R20 R15
      276 DUPTABLE                         R21 K28 [{"LayoutOrder"}]
      277 SETTABLEKS                       R4 R21 K10 ["LayoutOrder"]
      279 CALL                             R19 2 -1
      280 CALL                             R17 -1 1
      281 SETTABLE                         R17 R8 R16
      282 GETUPVAL                         R15 9
      283 JUMPIFNOT                        R15 ; [+1]
      284 MOVE                             R9 R14
      285 NAMECALL                         R15 R3 K17 ["getNextOrder"]
      287 CALL                             R15 1 1
      288 MOVE                             R4 R15
      289 MOVE                             R16 R4
      290 LOADK                            R17 K48 [" Delimiter"]
      291 CONCAT                           R15 R16 R17
      292 GETUPVAL                         R17 4
      293 GETTABLEKS                       R16 R17 K8 ["createElement"]
      295 GETUPVAL                         R17 10
      296 GETUPVAL                         R19 1
      297 JUMPIFNOT                        R19 ; [+18]
      298 NEWTABLE                         R18 4 0
      300 SETTABLEKS                       R4 R18 K10 ["LayoutOrder"]
      302 SETTABLEKS                       R14 R18 K15 ["Text"]
      304 GETUPVAL                         R20 2
      305 GETTABLEKS                       R19 R20 K3 ["Tag"]
      307 GETUPVAL                         R20 11
      308 LOADK                            R21 K37 ["X-Fit Left"]
      309 JUMPIFNOT                        R6 ; [+2]
      310 LOADK                            R22 K38 ["Error"]
      311 JUMP                             ; [+1]
      312 LOADNIL                          R22
      313 CALL                             R20 2 1
      314 SETTABLE                         R20 R18 R19
      315 JUMP                             ; [+17]
      316 DUPTABLE                         R18 K42 [{"AutomaticSize", "LayoutOrder", "Text", "TextColor", "TextXAlignment"}]
      317 GETIMPORT                        R19 K45 [Enum.AutomaticSize.XY]
      319 SETTABLEKS                       R19 R18 K39 ["AutomaticSize"]
      321 SETTABLEKS                       R4 R18 K10 ["LayoutOrder"]
      323 SETTABLEKS                       R14 R18 K15 ["Text"]
      325 GETTABLEKS                       R19 R7 K40 ["TextColor"]
      327 SETTABLEKS                       R19 R18 K40 ["TextColor"]
      329 GETIMPORT                        R19 K47 [Enum.TextXAlignment.Left]
      331 SETTABLEKS                       R19 R18 K41 ["TextXAlignment"]
      333 CALL                             R16 2 1
      334 SETTABLE                         R16 R8 R15
      335 JUMPBACK                         ; [-216]
      336 JUMP                             ; [+54]
      337 GETTABLEKS                       R9 R1 K35 ["GetImageProps"]
      339 JUMPIFNOT                        R9 ; [+25]
      340 GETTABLEKS                       R9 R1 K35 ["GetImageProps"]
      342 GETTABLEKS                       R10 R1 K15 ["Text"]
      344 CALL                             R9 1 1
      345 JUMPIFNOT                        R9 ; [+19]
      346 NAMECALL                         R10 R3 K17 ["getNextOrder"]
      348 CALL                             R10 1 1
      349 MOVE                             R4 R10
      350 MOVE                             R11 R4
      351 LOADK                            R12 K25 [" Icon"]
      352 CONCAT                           R10 R11 R12
      353 GETUPVAL                         R12 4
      354 GETTABLEKS                       R11 R12 K8 ["createElement"]
      356 GETUPVAL                         R12 6
      357 GETUPVAL                         R13 7
      358 MOVE                             R14 R9
      359 DUPTABLE                         R15 K28 [{"LayoutOrder"}]
      360 SETTABLEKS                       R4 R15 K10 ["LayoutOrder"]
      362 CALL                             R13 2 -1
      363 CALL                             R11 -1 1
      364 SETTABLE                         R11 R8 R10
      365 NAMECALL                         R9 R3 K17 ["getNextOrder"]
      367 CALL                             R9 1 1
      368 MOVE                             R4 R9
      369 GETUPVAL                         R10 4
      370 GETTABLEKS                       R9 R10 K8 ["createElement"]
      372 GETUPVAL                         R10 10
      373 DUPTABLE                         R11 K49 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment"}]
      374 GETIMPORT                        R12 K45 [Enum.AutomaticSize.XY]
      376 SETTABLEKS                       R12 R11 K39 ["AutomaticSize"]
      378 SETTABLEKS                       R4 R11 K10 ["LayoutOrder"]
      380 GETTABLEKS                       R12 R1 K15 ["Text"]
      382 SETTABLEKS                       R12 R11 K15 ["Text"]
      384 GETIMPORT                        R12 K47 [Enum.TextXAlignment.Left]
      386 SETTABLEKS                       R12 R11 K41 ["TextXAlignment"]
      388 CALL                             R9 2 1
      389 SETTABLEKS                       R9 R8 K15 ["Text"]
      391 GETUPVAL                         R10 4
      392 GETTABLEKS                       R9 R10 K8 ["createElement"]
      394 GETUPVAL                         R10 12
      395 GETUPVAL                         R12 1
      396 JUMPIFNOT                        R12 ; [+37]
      397 NEWTABLE                         R11 8 0
      399 GETTABLEKS                       R12 R1 K50 ["AnchorPoint"]
      401 SETTABLEKS                       R12 R11 K50 ["AnchorPoint"]
      403 GETTABLEKS                       R13 R1 K7 ["Editing"]
      405 JUMPIFNOT                        R13 ; [+2]
      406 LOADNIL                          R12
      407 JUMP                             ; [+2]
      408 GETTABLEKS                       R12 R0 K51 ["onPress"]
      410 SETTABLEKS                       R12 R11 K52 ["OnPress"]
      412 GETTABLEKS                       R12 R1 K10 ["LayoutOrder"]
      414 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      416 GETTABLEKS                       R12 R1 K53 ["Position"]
      418 SETTABLEKS                       R12 R11 K53 ["Position"]
      420 GETTABLEKS                       R12 R1 K13 ["Size"]
      422 SETTABLEKS                       R12 R11 K13 ["Size"]
      424 GETUPVAL                         R13 2
      425 GETTABLEKS                       R12 R13 K3 ["Tag"]
      427 GETUPVAL                         R13 11
      428 LOADK                            R14 K54 ["Component-Breadcrumb"]
      429 MOVE                             R15 R5
      430 LOADK                            R16 K55 ["X-RowS X-Left X-Middle"]
      431 CALL                             R13 3 1
      432 SETTABLE                         R13 R11 R12
      433 JUMP                             ; [+42]
      434 DUPTABLE                         R11 K59 [{"AnchorPoint", "HorizontalAlignment", "OnPress", "Layout", "LayoutOrder", "Position", "Size", "Spacing", "Style"}]
      435 GETTABLEKS                       R12 R1 K50 ["AnchorPoint"]
      437 SETTABLEKS                       R12 R11 K50 ["AnchorPoint"]
      439 GETIMPORT                        R12 K60 [Enum.HorizontalAlignment.Left]
      441 SETTABLEKS                       R12 R11 K56 ["HorizontalAlignment"]
      443 GETTABLEKS                       R13 R1 K7 ["Editing"]
      445 JUMPIFNOT                        R13 ; [+2]
      446 LOADNIL                          R12
      447 JUMP                             ; [+2]
      448 GETTABLEKS                       R12 R0 K51 ["onPress"]
      450 SETTABLEKS                       R12 R11 K52 ["OnPress"]
      452 GETIMPORT                        R12 K63 [Enum.FillDirection.Horizontal]
      454 SETTABLEKS                       R12 R11 K57 ["Layout"]
      456 GETTABLEKS                       R12 R1 K10 ["LayoutOrder"]
      458 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      460 GETTABLEKS                       R12 R1 K53 ["Position"]
      462 SETTABLEKS                       R12 R11 K53 ["Position"]
      464 GETTABLEKS                       R12 R1 K13 ["Size"]
      466 SETTABLEKS                       R12 R11 K13 ["Size"]
      468 GETTABLEKS                       R12 R7 K58 ["Spacing"]
      470 SETTABLEKS                       R12 R11 K58 ["Spacing"]
      472 GETTABLEKS                       R12 R1 K64 ["PaneStyle"]
      474 SETTABLEKS                       R12 R11 K5 ["Style"]
      476 MOVE                             R12 R8
      477 CALL                             R9 3 -1
      478 RETURN                           R9 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 LOADK                            R3 K4 ["Folder"]
        7 NAMECALL                         R1 R0 K5 ["GetClassIcon"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R3 0
        7 NAMECALL                         R1 R0 K4 ["GetClassIcon"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_8:
        0 GETIMPORT                        R3 K1 [settings]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R2 R3 K2 ["Studio"]
        5 GETTABLEKS                       R1 R2 K3 ["Theme"]
        7 GETTABLEKS                       R0 R1 K4 ["Name"]
        9 RETURN                           R0 1

PROTO_9:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 JUMPIF                           R1 ; [+2]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 LOADK                            R3 K0 ["^%s*([A-Za-z]+)"]
        8 NAMECALL                         R1 R0 K1 ["find"]
       10 CALL                             R1 2 3
       11 LOADNIL                          R4
       12 JUMPIFNOT                        R3 ; [+16]
       13 JUMPIFEQKS                       R0 K2 ["ManualWeld"] ; [+3]
       15 JUMPIFNOTEQKS                    R0 K3 ["ManualGlue"] ; [+2]
       17 LOADK                            R0 K4 ["JointInstance"]
       18 GETIMPORT                        R5 K6 [pcall]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R3
       22 CALL                             R5 1 2
       23 JUMPIFNOT                        R5 ; [+2]
       24 MOVE                             R4 R6
       25 JUMP                             ; [+37]
       26 LOADNIL                          R7
       27 RETURN                           R7 1
       28 JUMP                             ; [+34]
       29 LOADNIL                          R5
       30 LOADNIL                          R6
       31 GETUPVAL                         R7 2
       32 JUMPIFNOT                        R7 ; [+4]
       33 GETUPVAL                         R7 3
       34 CALL                             R7 0 1
       35 MOVE                             R6 R7
       36 JUMP                             ; [+8]
       37 GETIMPORT                        R7 K6 [pcall]
       39 DUPCLOSURE                       R8 K7 [PROTO_8]
       40 CALL                             R7 1 2
       41 MOVE                             R5 R7
       42 MOVE                             R6 R8
       43 JUMPIF                           R5 ; [+1]
       44 LOADK                            R6 K8 ["Dark"]
       45 LOADK                            R9 K9 ["^%s*%."]
       46 NAMECALL                         R7 R0 K1 ["find"]
       48 CALL                             R7 2 1
       49 JUMPIFNOT                        R7 ; [+11]
       50 DUPTABLE                         R7 K11 [{"Image"}]
       51 LOADK                            R9 K12 ["rbxasset://studio_svg_textures/Lua/TagEditor/%*/Standard/Tag.png"]
       52 MOVE                             R11 R6
       53 NAMECALL                         R9 R9 K13 ["format"]
       55 CALL                             R9 2 1
       56 MOVE                             R8 R9
       57 SETTABLEKS                       R8 R7 K10 ["Image"]
       59 MOVE                             R4 R7
       60 JUMP                             ; [+2]
       61 LOADNIL                          R7
       62 RETURN                           R7 1
       63 GETUPVAL                         R5 4
       64 MOVE                             R6 R4
       65 DUPTABLE                         R7 K15 [{"Size"}]
       66 GETTABLEKS                       R9 R4 K16 ["ImageRectSize"]
       68 JUMPIFNOT                        R9 ; [+12]
       69 GETIMPORT                        R8 K19 [UDim2.fromOffset]
       71 GETTABLEKS                       R10 R4 K16 ["ImageRectSize"]
       73 GETTABLEKS                       R9 R10 K20 ["X"]
       75 GETTABLEKS                       R11 R4 K16 ["ImageRectSize"]
       77 GETTABLEKS                       R10 R11 K21 ["Y"]
       79 CALL                             R8 2 1
       80 JUMP                             ; [+5]
       81 GETIMPORT                        R8 K19 [UDim2.fromOffset]
       83 LOADN                            R9 16
       84 LOADN                            R10 16
       85 CALL                             R8 2 1
       86 SETTABLEKS                       R8 R7 K14 ["Size"]
       88 CALL                             R5 2 -1
       89 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K10 ["SharedFlags"]
       29 GETTABLEKS                       R5 R6 K11 ["getFFlagDevFrameworkSettingsCliFix"]
       31 CALL                             R4 1 1
       32 CALL                             R4 0 1
       33 GETIMPORT                        R5 K6 [require]
       35 GETTABLEKS                       R7 R0 K10 ["SharedFlags"]
       37 GETTABLEKS                       R6 R7 K12 ["getFFlagDevFrameworkBreadcrumbAddDelimiterToImageLookup"]
       39 CALL                             R5 1 1
       40 CALL                             R5 0 1
       41 GETTABLEKS                       R7 R0 K4 ["Parent"]
       43 LOADK                            R9 K13 ["React"]
       44 NAMECALL                         R7 R7 K14 ["FindFirstChild"]
       46 CALL                             R7 2 1
       47 JUMPIFNOT                        R7 ; [+8]
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R8 R0 K4 ["Parent"]
       52 GETTABLEKS                       R7 R8 K13 ["React"]
       54 CALL                             R6 1 1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R6
       57 GETIMPORT                        R7 K6 [require]
       59 GETTABLEKS                       R9 R0 K15 ["Styling"]
       61 GETTABLEKS                       R8 R9 K16 ["supportsStyleSheets"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K6 [require]
       66 GETTABLEKS                       R10 R0 K15 ["Styling"]
       68 GETTABLEKS                       R9 R10 K17 ["joinTags"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K6 [require]
       73 GETTABLEKS                       R11 R0 K15 ["Styling"]
       75 GETTABLEKS                       R10 R11 K18 ["hasTag"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K6 [require]
       80 GETTABLEKS                       R12 R0 K19 ["Style"]
       82 GETTABLEKS                       R11 R12 K20 ["getStudioThemeNameOrDefault"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K6 [require]
       87 GETTABLEKS                       R13 R0 K4 ["Parent"]
       89 GETTABLEKS                       R12 R13 K21 ["Dash"]
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R12 R11 K22 ["join"]
       94 GETTABLEKS                       R13 R11 K23 ["trim"]
       96 GETIMPORT                        R14 K6 [require]
       98 GETTABLEKS                       R17 R0 K2 ["UI"]
      100 GETTABLEKS                       R16 R17 K24 ["Components"]
      102 GETTABLEKS                       R15 R16 K25 ["Image"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K6 [require]
      107 GETTABLEKS                       R18 R0 K2 ["UI"]
      109 GETTABLEKS                       R17 R18 K24 ["Components"]
      111 GETTABLEKS                       R16 R17 K26 ["Pane"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K6 [require]
      116 GETTABLEKS                       R19 R0 K2 ["UI"]
      118 GETTABLEKS                       R18 R19 K24 ["Components"]
      120 GETTABLEKS                       R17 R18 K27 ["TextInput"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K6 [require]
      125 GETTABLEKS                       R20 R0 K2 ["UI"]
      127 GETTABLEKS                       R19 R20 K24 ["Components"]
      129 GETTABLEKS                       R18 R19 K28 ["TextLabel"]
      131 CALL                             R17 1 1
      132 GETTABLEKS                       R18 R0 K29 ["Util"]
      134 GETIMPORT                        R19 K6 [require]
      136 GETTABLEKS                       R20 R18 K30 ["DoubleClickDetector"]
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K6 [require]
      141 GETTABLEKS                       R21 R18 K31 ["LayoutOrderIterator"]
      143 CALL                             R20 1 1
      144 GETIMPORT                        R21 K6 [require]
      146 GETTABLEKS                       R22 R18 K32 ["Typecheck"]
      148 CALL                             R21 1 1
      149 GETTABLEKS                       R22 R1 K33 ["PureComponent"]
      151 LOADK                            R24 K34 ["Breadcrumb"]
      152 NAMECALL                         R22 R22 K35 ["extend"]
      154 CALL                             R22 2 1
      155 GETTABLEKS                       R23 R21 K36 ["wrap"]
      157 MOVE                             R24 R22
      158 GETIMPORT                        R25 K1 [script]
      160 CALL                             R23 2 0
      161 DUPCLOSURE                       R23 K37 [PROTO_3]
      162 CAPTURE                          VAL R19
      163 SETTABLEKS                       R23 R22 K38 ["init"]
      165 DUPCLOSURE                       R23 K39 [PROTO_4]
      166 SETTABLEKS                       R23 R22 K40 ["didUpdate"]
      168 DUPCLOSURE                       R23 K41 [PROTO_5]
      169 CAPTURE                          VAL R20
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R16
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R5
      179 CAPTURE                          VAL R17
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R15
      182 SETTABLEKS                       R23 R22 K42 ["render"]
      184 DUPTABLE                         R23 K46 [{"Image", "ImageRectOffset", "ImageRectSize", "Size"}]
      185 LOADK                            R24 K47 ["rbxasset://textures/ClassImages.png"]
      186 SETTABLEKS                       R24 R23 K25 ["Image"]
      188 GETIMPORT                        R24 K50 [Vector2.new]
      190 LOADN                            R25 0
      191 LOADN                            R26 0
      192 CALL                             R24 2 1
      193 SETTABLEKS                       R24 R23 K43 ["ImageRectOffset"]
      195 GETIMPORT                        R24 K50 [Vector2.new]
      197 LOADN                            R25 16
      198 LOADN                            R26 16
      199 CALL                             R24 2 1
      200 SETTABLEKS                       R24 R23 K44 ["ImageRectSize"]
      202 GETIMPORT                        R24 K53 [UDim2.fromOffset]
      204 LOADN                            R25 16
      205 LOADN                            R26 16
      206 CALL                             R24 2 1
      207 SETTABLEKS                       R24 R23 K45 ["Size"]
      209 GETIMPORT                        R24 K55 [pcall]
      211 DUPCLOSURE                       R25 K56 [PROTO_6]
      212 CALL                             R24 1 1
      213 DUPCLOSURE                       R25 K57 [PROTO_9]
      214 CAPTURE                          VAL R24
      215 CAPTURE                          VAL R23
      216 CAPTURE                          VAL R4
      217 CAPTURE                          VAL R10
      218 CAPTURE                          VAL R12
      219 SETTABLEKS                       R25 R22 K58 ["GetSelectorIcon"]
      221 JUMPIF                           R7 ; [+10]
      222 MOVE                             R25 R3
      223 DUPTABLE                         R26 K60 [{"Stylizer"}]
      224 GETTABLEKS                       R27 R2 K59 ["Stylizer"]
      226 SETTABLEKS                       R27 R26 K59 ["Stylizer"]
      228 CALL                             R25 1 1
      229 MOVE                             R26 R22
      230 CALL                             R25 1 1
      231 MOVE                             R22 R25
      232 RETURN                           R22 1
