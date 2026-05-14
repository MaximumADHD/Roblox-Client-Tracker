PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"editText"}]
        2 SETTABLEKS                       R0 R3 K0 ["editText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnEdited"]
        5 JUMPIFNOT                        R0 ; [+11]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["OnEdited"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["state"]
       14 GETTABLEKS                       R1 R1 K3 ["editText"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnDoubleClick"]
        5 JUMPIFNOT                        R0 ; [+14]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["DoubleClickDetector"]
        9 NAMECALL                         R0 R0 K3 ["isDoubleClick"]
       11 CALL                             R0 1 1
       12 JUMPIFNOT                        R0 ; [+7]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["props"]
       16 GETTABLEKS                       R0 R0 K1 ["OnDoubleClick"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["props"]
       23 GETTABLEKS                       R0 R0 K4 ["OnPressed"]
       25 JUMPIFNOT                        R0 ; [+6]
       26 GETUPVAL                         R0 0
       27 GETTABLEKS                       R0 R0 K0 ["props"]
       29 GETTABLEKS                       R0 R0 K4 ["OnPressed"]
       31 CALL                             R0 0 0
       32 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"editText"}]
        1 GETTABLEKS                       R3 R0 K3 ["props"]
        3 GETTABLEKS                       R3 R3 K4 ["Text"]
        5 ORK                              R2 R3 K2 [""]
        6 SETTABLEKS                       R2 R1 K0 ["editText"]
        8 SETTABLEKS                       R1 R0 K5 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K6 ["onTextChanged"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K7 ["onEdited"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K8 ["new"]
       21 CALL                             R1 0 1
       22 SETTABLEKS                       R1 R0 K9 ["DoubleClickDetector"]
       24 NEWCLOSURE                       R1 P2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K10 ["onPress"]
       28 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Editing"]
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETTABLEKS                       R2 R1 K2 ["Text"]
        7 GETTABLEKS                       R3 R0 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K2 ["Text"]
       11 JUMPIFEQ                         R2 R3 ; [+11]
       13 DUPTABLE                         R4 K4 [{"editText"}]
       14 GETTABLEKS                       R5 R0 K0 ["props"]
       16 GETTABLEKS                       R5 R5 K2 ["Text"]
       18 SETTABLEKS                       R5 R4 K3 ["editText"]
       20 NAMECALL                         R2 R0 K5 ["setState"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["new"]
        7 CALL                             R3 0 1
        8 LOADNIL                          R4
        9 GETUPVAL                         R6 1
       10 JUMPIFNOT                        R6 ; [+5]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K3 ["Tag"]
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
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R9 R9 K8 ["createElement"]
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
       80 JUMP                             ; [+304]
       81 GETTABLEKS                       R9 R1 K24 ["Delimiters"]
       83 JUMPIFNOT                        R9 ; [+247]
       84 JUMPIFNOT                        R6 ; [+32]
       85 NAMECALL                         R9 R3 K17 ["getNextOrder"]
       87 CALL                             R9 1 1
       88 MOVE                             R4 R9
       89 MOVE                             R10 R4
       90 LOADK                            R11 K25 [" Icon"]
       91 CONCAT                           R9 R10 R11
       92 GETUPVAL                         R10 4
       93 GETTABLEKS                       R10 R10 K8 ["createElement"]
       95 GETUPVAL                         R11 6
       96 GETUPVAL                         R13 1
       97 JUMPIFNOT                        R13 ; [+10]
       98 NEWTABLE                         R12 2 0
      100 SETTABLEKS                       R4 R12 K10 ["LayoutOrder"]
      102 GETUPVAL                         R13 2
      103 GETTABLEKS                       R13 R13 K3 ["Tag"]
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
      122 JUMPIFNOTLT                      R12 R11 ; [+262]
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
      170 JUMPIFNOT                        R15 ; [+25]
      171 GETTABLEKS                       R15 R1 K35 ["GetImageProps"]
      173 MOVE                             R16 R13
      174 MOVE                             R17 R9
      175 CALL                             R15 2 1
      176 JUMPIFNOT                        R15 ; [+19]
      177 NAMECALL                         R16 R3 K17 ["getNextOrder"]
      179 CALL                             R16 1 1
      180 MOVE                             R4 R16
      181 MOVE                             R17 R4
      182 LOADK                            R18 K25 [" Icon"]
      183 CONCAT                           R16 R17 R18
      184 GETUPVAL                         R17 4
      185 GETTABLEKS                       R17 R17 K8 ["createElement"]
      187 GETUPVAL                         R18 6
      188 GETUPVAL                         R19 7
      189 MOVE                             R20 R15
      190 DUPTABLE                         R21 K28 [{"LayoutOrder"}]
      191 SETTABLEKS                       R4 R21 K10 ["LayoutOrder"]
      193 CALL                             R19 2 -1
      194 CALL                             R17 -1 1
      195 SETTABLE                         R17 R8 R16
      196 LENGTH                           R15 R13
      197 LOADN                            R16 0
      198 JUMPIFNOTLT                      R16 R15 ; [+51]
      200 NAMECALL                         R15 R3 K17 ["getNextOrder"]
      202 CALL                             R15 1 1
      203 MOVE                             R4 R15
      204 MOVE                             R16 R4
      205 LOADK                            R17 K36 [" Text"]
      206 CONCAT                           R15 R16 R17
      207 GETUPVAL                         R16 4
      208 GETTABLEKS                       R16 R16 K8 ["createElement"]
      210 GETUPVAL                         R17 9
      211 GETUPVAL                         R19 1
      212 JUMPIFNOT                        R19 ; [+18]
      213 NEWTABLE                         R18 4 0
      215 SETTABLEKS                       R4 R18 K10 ["LayoutOrder"]
      217 SETTABLEKS                       R13 R18 K15 ["Text"]
      219 GETUPVAL                         R19 2
      220 GETTABLEKS                       R19 R19 K3 ["Tag"]
      222 GETUPVAL                         R20 10
      223 LOADK                            R21 K37 ["X-Fit Left"]
      224 JUMPIFNOT                        R6 ; [+2]
      225 LOADK                            R22 K38 ["Error"]
      226 JUMP                             ; [+1]
      227 LOADNIL                          R22
      228 CALL                             R20 2 1
      229 SETTABLE                         R20 R18 R19
      230 JUMP                             ; [+17]
      231 DUPTABLE                         R18 K42 [{"AutomaticSize", "LayoutOrder", "Text", "TextColor", "TextXAlignment"}]
      232 GETIMPORT                        R19 K45 [Enum.AutomaticSize.XY]
      234 SETTABLEKS                       R19 R18 K39 ["AutomaticSize"]
      236 SETTABLEKS                       R4 R18 K10 ["LayoutOrder"]
      238 SETTABLEKS                       R13 R18 K15 ["Text"]
      240 GETTABLEKS                       R19 R7 K40 ["TextColor"]
      242 SETTABLEKS                       R19 R18 K40 ["TextColor"]
      244 GETIMPORT                        R19 K47 [Enum.TextXAlignment.Left]
      246 SETTABLEKS                       R19 R18 K41 ["TextXAlignment"]
      248 CALL                             R16 2 1
      249 SETTABLE                         R16 R8 R15
      250 JUMPIFNOT                        R11 ; [+78]
      251 GETTABLEKS                       R15 R1 K35 ["GetImageProps"]
      253 JUMPIFNOT                        R15 ; [+24]
      254 GETTABLEKS                       R15 R1 K35 ["GetImageProps"]
      256 MOVE                             R16 R14
      257 CALL                             R15 1 1
      258 JUMPIFNOT                        R15 ; [+19]
      259 NAMECALL                         R16 R3 K17 ["getNextOrder"]
      261 CALL                             R16 1 1
      262 MOVE                             R4 R16
      263 MOVE                             R17 R4
      264 LOADK                            R18 K25 [" Icon"]
      265 CONCAT                           R16 R17 R18
      266 GETUPVAL                         R17 4
      267 GETTABLEKS                       R17 R17 K8 ["createElement"]
      269 GETUPVAL                         R18 6
      270 GETUPVAL                         R19 7
      271 MOVE                             R20 R15
      272 DUPTABLE                         R21 K28 [{"LayoutOrder"}]
      273 SETTABLEKS                       R4 R21 K10 ["LayoutOrder"]
      275 CALL                             R19 2 -1
      276 CALL                             R17 -1 1
      277 SETTABLE                         R17 R8 R16
      278 MOVE                             R9 R14
      279 NAMECALL                         R15 R3 K17 ["getNextOrder"]
      281 CALL                             R15 1 1
      282 MOVE                             R4 R15
      283 MOVE                             R16 R4
      284 LOADK                            R17 K48 [" Delimiter"]
      285 CONCAT                           R15 R16 R17
      286 GETUPVAL                         R16 4
      287 GETTABLEKS                       R16 R16 K8 ["createElement"]
      289 GETUPVAL                         R17 9
      290 GETUPVAL                         R19 1
      291 JUMPIFNOT                        R19 ; [+18]
      292 NEWTABLE                         R18 4 0
      294 SETTABLEKS                       R4 R18 K10 ["LayoutOrder"]
      296 SETTABLEKS                       R14 R18 K15 ["Text"]
      298 GETUPVAL                         R19 2
      299 GETTABLEKS                       R19 R19 K3 ["Tag"]
      301 GETUPVAL                         R20 10
      302 LOADK                            R21 K37 ["X-Fit Left"]
      303 JUMPIFNOT                        R6 ; [+2]
      304 LOADK                            R22 K38 ["Error"]
      305 JUMP                             ; [+1]
      306 LOADNIL                          R22
      307 CALL                             R20 2 1
      308 SETTABLE                         R20 R18 R19
      309 JUMP                             ; [+17]
      310 DUPTABLE                         R18 K42 [{"AutomaticSize", "LayoutOrder", "Text", "TextColor", "TextXAlignment"}]
      311 GETIMPORT                        R19 K45 [Enum.AutomaticSize.XY]
      313 SETTABLEKS                       R19 R18 K39 ["AutomaticSize"]
      315 SETTABLEKS                       R4 R18 K10 ["LayoutOrder"]
      317 SETTABLEKS                       R14 R18 K15 ["Text"]
      319 GETTABLEKS                       R19 R7 K40 ["TextColor"]
      321 SETTABLEKS                       R19 R18 K40 ["TextColor"]
      323 GETIMPORT                        R19 K47 [Enum.TextXAlignment.Left]
      325 SETTABLEKS                       R19 R18 K41 ["TextXAlignment"]
      327 CALL                             R16 2 1
      328 SETTABLE                         R16 R8 R15
      329 JUMPBACK                         ; [-210]
      330 JUMP                             ; [+54]
      331 GETTABLEKS                       R9 R1 K35 ["GetImageProps"]
      333 JUMPIFNOT                        R9 ; [+25]
      334 GETTABLEKS                       R9 R1 K35 ["GetImageProps"]
      336 GETTABLEKS                       R10 R1 K15 ["Text"]
      338 CALL                             R9 1 1
      339 JUMPIFNOT                        R9 ; [+19]
      340 NAMECALL                         R10 R3 K17 ["getNextOrder"]
      342 CALL                             R10 1 1
      343 MOVE                             R4 R10
      344 MOVE                             R11 R4
      345 LOADK                            R12 K25 [" Icon"]
      346 CONCAT                           R10 R11 R12
      347 GETUPVAL                         R11 4
      348 GETTABLEKS                       R11 R11 K8 ["createElement"]
      350 GETUPVAL                         R12 6
      351 GETUPVAL                         R13 7
      352 MOVE                             R14 R9
      353 DUPTABLE                         R15 K28 [{"LayoutOrder"}]
      354 SETTABLEKS                       R4 R15 K10 ["LayoutOrder"]
      356 CALL                             R13 2 -1
      357 CALL                             R11 -1 1
      358 SETTABLE                         R11 R8 R10
      359 NAMECALL                         R9 R3 K17 ["getNextOrder"]
      361 CALL                             R9 1 1
      362 MOVE                             R4 R9
      363 GETUPVAL                         R9 4
      364 GETTABLEKS                       R9 R9 K8 ["createElement"]
      366 GETUPVAL                         R10 9
      367 DUPTABLE                         R11 K49 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment"}]
      368 GETIMPORT                        R12 K45 [Enum.AutomaticSize.XY]
      370 SETTABLEKS                       R12 R11 K39 ["AutomaticSize"]
      372 SETTABLEKS                       R4 R11 K10 ["LayoutOrder"]
      374 GETTABLEKS                       R12 R1 K15 ["Text"]
      376 SETTABLEKS                       R12 R11 K15 ["Text"]
      378 GETIMPORT                        R12 K47 [Enum.TextXAlignment.Left]
      380 SETTABLEKS                       R12 R11 K41 ["TextXAlignment"]
      382 CALL                             R9 2 1
      383 SETTABLEKS                       R9 R8 K15 ["Text"]
      385 GETUPVAL                         R9 4
      386 GETTABLEKS                       R9 R9 K8 ["createElement"]
      388 GETUPVAL                         R10 11
      389 GETUPVAL                         R12 1
      390 JUMPIFNOT                        R12 ; [+37]
      391 NEWTABLE                         R11 8 0
      393 GETTABLEKS                       R12 R1 K50 ["AnchorPoint"]
      395 SETTABLEKS                       R12 R11 K50 ["AnchorPoint"]
      397 GETTABLEKS                       R13 R1 K7 ["Editing"]
      399 JUMPIFNOT                        R13 ; [+2]
      400 LOADNIL                          R12
      401 JUMP                             ; [+2]
      402 GETTABLEKS                       R12 R0 K51 ["onPress"]
      404 SETTABLEKS                       R12 R11 K52 ["OnPress"]
      406 GETTABLEKS                       R12 R1 K10 ["LayoutOrder"]
      408 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      410 GETTABLEKS                       R12 R1 K53 ["Position"]
      412 SETTABLEKS                       R12 R11 K53 ["Position"]
      414 GETTABLEKS                       R12 R1 K13 ["Size"]
      416 SETTABLEKS                       R12 R11 K13 ["Size"]
      418 GETUPVAL                         R12 2
      419 GETTABLEKS                       R12 R12 K3 ["Tag"]
      421 GETUPVAL                         R13 10
      422 LOADK                            R14 K54 ["Component-Breadcrumb"]
      423 MOVE                             R15 R5
      424 LOADK                            R16 K55 ["X-RowS X-Left X-Middle"]
      425 CALL                             R13 3 1
      426 SETTABLE                         R13 R11 R12
      427 JUMP                             ; [+42]
      428 DUPTABLE                         R11 K59 [{"AnchorPoint", "HorizontalAlignment", "OnPress", "Layout", "LayoutOrder", "Position", "Size", "Spacing", "Style"}]
      429 GETTABLEKS                       R12 R1 K50 ["AnchorPoint"]
      431 SETTABLEKS                       R12 R11 K50 ["AnchorPoint"]
      433 GETIMPORT                        R12 K60 [Enum.HorizontalAlignment.Left]
      435 SETTABLEKS                       R12 R11 K56 ["HorizontalAlignment"]
      437 GETTABLEKS                       R13 R1 K7 ["Editing"]
      439 JUMPIFNOT                        R13 ; [+2]
      440 LOADNIL                          R12
      441 JUMP                             ; [+2]
      442 GETTABLEKS                       R12 R0 K51 ["onPress"]
      444 SETTABLEKS                       R12 R11 K52 ["OnPress"]
      446 GETIMPORT                        R12 K63 [Enum.FillDirection.Horizontal]
      448 SETTABLEKS                       R12 R11 K57 ["Layout"]
      450 GETTABLEKS                       R12 R1 K10 ["LayoutOrder"]
      452 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      454 GETTABLEKS                       R12 R1 K53 ["Position"]
      456 SETTABLEKS                       R12 R11 K53 ["Position"]
      458 GETTABLEKS                       R12 R1 K13 ["Size"]
      460 SETTABLEKS                       R12 R11 K13 ["Size"]
      462 GETTABLEKS                       R12 R7 K58 ["Spacing"]
      464 SETTABLEKS                       R12 R11 K58 ["Spacing"]
      466 GETTABLEKS                       R12 R1 K64 ["PaneStyle"]
      468 SETTABLEKS                       R12 R11 K5 ["Style"]
      470 MOVE                             R12 R8
      471 CALL                             R9 3 -1
      472 RETURN                           R9 -1

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
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["Theme"]
        7 GETTABLEKS                       R0 R0 K4 ["Name"]
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
       71 GETTABLEKS                       R9 R4 K16 ["ImageRectSize"]
       73 GETTABLEKS                       R9 R9 K20 ["X"]
       75 GETTABLEKS                       R10 R4 K16 ["ImageRectSize"]
       77 GETTABLEKS                       R10 R10 K21 ["Y"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["SharedFlags"]
       29 GETTABLEKS                       R5 R5 K11 ["getFFlagDevFrameworkSettingsCliFix"]
       31 CALL                             R4 1 1
       32 CALL                             R4 0 1
       33 GETTABLEKS                       R6 R0 K4 ["Parent"]
       35 LOADK                            R8 K12 ["React"]
       36 NAMECALL                         R6 R6 K13 ["FindFirstChild"]
       38 CALL                             R6 2 1
       39 JUMPIFNOT                        R6 ; [+8]
       40 GETIMPORT                        R5 K6 [require]
       42 GETTABLEKS                       R6 R0 K4 ["Parent"]
       44 GETTABLEKS                       R6 R6 K12 ["React"]
       46 CALL                             R5 1 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R5
       49 GETIMPORT                        R6 K6 [require]
       51 GETTABLEKS                       R7 R0 K14 ["Styling"]
       53 GETTABLEKS                       R7 R7 K15 ["supportsStyleSheets"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K6 [require]
       58 GETTABLEKS                       R8 R0 K14 ["Styling"]
       60 GETTABLEKS                       R8 R8 K16 ["joinTags"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K6 [require]
       65 GETTABLEKS                       R9 R0 K14 ["Styling"]
       67 GETTABLEKS                       R9 R9 K17 ["hasTag"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K6 [require]
       72 GETTABLEKS                       R10 R0 K18 ["Style"]
       74 GETTABLEKS                       R10 R10 K19 ["getStudioThemeNameOrDefault"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K6 [require]
       79 GETTABLEKS                       R11 R0 K4 ["Parent"]
       81 GETTABLEKS                       R11 R11 K20 ["Dash"]
       83 CALL                             R10 1 1
       84 GETTABLEKS                       R11 R10 K21 ["join"]
       86 GETTABLEKS                       R12 R10 K22 ["trim"]
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R14 R0 K2 ["UI"]
       92 GETTABLEKS                       R14 R14 K23 ["Components"]
       94 GETTABLEKS                       R14 R14 K24 ["Image"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K6 [require]
       99 GETTABLEKS                       R15 R0 K2 ["UI"]
      101 GETTABLEKS                       R15 R15 K23 ["Components"]
      103 GETTABLEKS                       R15 R15 K25 ["Pane"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K6 [require]
      108 GETTABLEKS                       R16 R0 K2 ["UI"]
      110 GETTABLEKS                       R16 R16 K23 ["Components"]
      112 GETTABLEKS                       R16 R16 K26 ["TextInput"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K6 [require]
      117 GETTABLEKS                       R17 R0 K2 ["UI"]
      119 GETTABLEKS                       R17 R17 K23 ["Components"]
      121 GETTABLEKS                       R17 R17 K27 ["TextLabel"]
      123 CALL                             R16 1 1
      124 GETTABLEKS                       R17 R0 K28 ["Util"]
      126 GETIMPORT                        R18 K6 [require]
      128 GETTABLEKS                       R19 R17 K29 ["DoubleClickDetector"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K6 [require]
      133 GETTABLEKS                       R20 R17 K30 ["LayoutOrderIterator"]
      135 CALL                             R19 1 1
      136 GETIMPORT                        R20 K6 [require]
      138 GETTABLEKS                       R21 R17 K31 ["Typecheck"]
      140 CALL                             R20 1 1
      141 GETTABLEKS                       R21 R1 K32 ["PureComponent"]
      143 LOADK                            R23 K33 ["Breadcrumb"]
      144 NAMECALL                         R21 R21 K34 ["extend"]
      146 CALL                             R21 2 1
      147 GETTABLEKS                       R22 R20 K35 ["wrap"]
      149 MOVE                             R23 R21
      150 GETIMPORT                        R24 K1 [script]
      152 CALL                             R22 2 0
      153 DUPCLOSURE                       R22 K36 [PROTO_3]
      154 CAPTURE                          VAL R18
      155 SETTABLEKS                       R22 R21 K37 ["init"]
      157 DUPCLOSURE                       R22 K38 [PROTO_4]
      158 SETTABLEKS                       R22 R21 K39 ["didUpdate"]
      160 DUPCLOSURE                       R22 K40 [PROTO_5]
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R16
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R14
      173 SETTABLEKS                       R22 R21 K41 ["render"]
      175 DUPTABLE                         R22 K45 [{"Image", "ImageRectOffset", "ImageRectSize", "Size"}]
      176 LOADK                            R23 K46 ["rbxasset://textures/ClassImages.png"]
      177 SETTABLEKS                       R23 R22 K24 ["Image"]
      179 GETIMPORT                        R23 K49 [Vector2.new]
      181 LOADN                            R24 0
      182 LOADN                            R25 0
      183 CALL                             R23 2 1
      184 SETTABLEKS                       R23 R22 K42 ["ImageRectOffset"]
      186 GETIMPORT                        R23 K49 [Vector2.new]
      188 LOADN                            R24 16
      189 LOADN                            R25 16
      190 CALL                             R23 2 1
      191 SETTABLEKS                       R23 R22 K43 ["ImageRectSize"]
      193 GETIMPORT                        R23 K52 [UDim2.fromOffset]
      195 LOADN                            R24 16
      196 LOADN                            R25 16
      197 CALL                             R23 2 1
      198 SETTABLEKS                       R23 R22 K44 ["Size"]
      200 GETIMPORT                        R23 K54 [pcall]
      202 DUPCLOSURE                       R24 K55 [PROTO_6]
      203 CALL                             R23 1 1
      204 DUPCLOSURE                       R24 K56 [PROTO_9]
      205 CAPTURE                          VAL R23
      206 CAPTURE                          VAL R22
      207 CAPTURE                          VAL R4
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R11
      210 SETTABLEKS                       R24 R21 K57 ["GetSelectorIcon"]
      212 JUMPIF                           R6 ; [+10]
      213 MOVE                             R24 R3
      214 DUPTABLE                         R25 K59 [{"Stylizer"}]
      215 GETTABLEKS                       R26 R2 K58 ["Stylizer"]
      217 SETTABLEKS                       R26 R25 K58 ["Stylizer"]
      219 CALL                             R24 1 1
      220 MOVE                             R25 R21
      221 CALL                             R24 1 1
      222 MOVE                             R21 R24
      223 RETURN                           R21 1
