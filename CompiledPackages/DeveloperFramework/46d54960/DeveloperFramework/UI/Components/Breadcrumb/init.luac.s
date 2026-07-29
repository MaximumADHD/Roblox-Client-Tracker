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
       40 JUMPIFNOT                        R9 ; [+37]
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R9 R9 K8 ["createElement"]
       44 GETUPVAL                         R10 5
       45 DUPTABLE                         R11 K17 [{["GetAutocompleteItems"], ["LayoutOrder"], ["OnTextChanged"], ["OnFocusLost"], ["Size"], ["ShouldFocus"] = True, ["Text"]}]
       46 GETTABLEKS                       R12 R1 K9 ["GetAutocompleteItems"]
       48 SETTABLEKS                       R12 R11 K9 ["GetAutocompleteItems"]
       50 NAMECALL                         R12 R3 K18 ["getNextOrder"]
       52 CALL                             R12 1 1
       53 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       55 GETTABLEKS                       R12 R0 K19 ["onTextChanged"]
       57 SETTABLEKS                       R12 R11 K11 ["OnTextChanged"]
       59 GETTABLEKS                       R12 R0 K20 ["onEdited"]
       61 SETTABLEKS                       R12 R11 K12 ["OnFocusLost"]
       63 GETIMPORT                        R12 K23 [UDim2.fromScale]
       65 LOADN                            R13 1
       66 LOADN                            R14 1
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K13 ["Size"]
       70 GETTABLEKS                       R12 R2 K24 ["editText"]
       72 SETTABLEKS                       R12 R11 K16 ["Text"]
       74 CALL                             R9 2 1
       75 SETTABLEKS                       R9 R8 K16 ["Text"]
       77 JUMP                             ; [+304]
       78 GETTABLEKS                       R9 R1 K25 ["Delimiters"]
       80 JUMPIFNOT                        R9 ; [+247]
       81 JUMPIFNOT                        R6 ; [+32]
       82 NAMECALL                         R9 R3 K18 ["getNextOrder"]
       84 CALL                             R9 1 1
       85 MOVE                             R4 R9
       86 MOVE                             R10 R4
       87 LOADK                            R11 K26 [" Icon"]
       88 CONCAT                           R9 R10 R11
       89 GETUPVAL                         R10 4
       90 GETTABLEKS                       R10 R10 K8 ["createElement"]
       92 GETUPVAL                         R11 6
       93 GETUPVAL                         R13 1
       94 JUMPIFNOT                        R13 ; [+10]
       95 NEWTABLE                         R12 2 0
       97 SETTABLEKS                       R4 R12 K10 ["LayoutOrder"]
       99 GETUPVAL                         R13 2
      100 GETTABLEKS                       R13 R13 K3 ["Tag"]
      102 LOADK                            R14 K27 ["ErrorIcon"]
      103 SETTABLE                         R14 R12 R13
      104 JUMP                             ; [+7]
      105 GETUPVAL                         R12 7
      106 GETTABLEKS                       R13 R7 K28 ["ErrorImage"]
      108 DUPTABLE                         R14 K29 [{"LayoutOrder"}]
      109 SETTABLEKS                       R4 R14 K10 ["LayoutOrder"]
      111 CALL                             R12 2 1
      112 CALL                             R10 2 1
      113 SETTABLE                         R10 R8 R9
      114 LOADNIL                          R9
      115 GETTABLEKS                       R10 R1 K16 ["Text"]
      117 LENGTH                           R11 R10
      118 LOADN                            R12 0
      119 JUMPIFNOTLT                      R12 R11 ; [+262]
      121 LOADNIL                          R11
      122 LOADNIL                          R12
      123 GETIMPORT                        R13 K31 [ipairs]
      125 GETTABLEKS                       R14 R1 K25 ["Delimiters"]
      127 CALL                             R13 1 3
      128 FORGPREP_INEXT                   R13
      129 MOVE                             R20 R17
      130 NAMECALL                         R18 R10 K32 ["find"]
      132 CALL                             R18 2 2
      133 JUMPIFNOT                        R18 ; [+5]
      134 JUMPIFNOT                        R11 ; [+2]
      135 JUMPIFNOTLT                      R18 R11 ; [+3]
      137 MOVE                             R11 R18
      138 MOVE                             R12 R19
      139 FORGLOOP                         R13 2 [inext] ; [-11]
      141 MOVE                             R13 R10
      142 LOADNIL                          R14
      143 JUMPIFNOT                        R11 ; [+20]
      144 GETUPVAL                         R15 8
      145 LOADN                            R18 1
      146 SUBK                             R19 R11 K33 [1]
      147 NAMECALL                         R16 R10 K34 ["sub"]
      149 CALL                             R16 3 -1
      150 CALL                             R15 -1 1
      151 MOVE                             R13 R15
      152 MOVE                             R17 R11
      153 MOVE                             R18 R12
      154 NAMECALL                         R15 R10 K34 ["sub"]
      156 CALL                             R15 3 1
      157 MOVE                             R14 R15
      158 ADDK                             R17 R12 K33 [1]
      159 NAMECALL                         R15 R10 K34 ["sub"]
      161 CALL                             R15 2 1
      162 MOVE                             R10 R15
      163 JUMP                             ; [+1]
      164 LOADK                            R10 K35 [""]
      165 GETTABLEKS                       R15 R1 K36 ["GetImageProps"]
      167 JUMPIFNOT                        R15 ; [+25]
      168 GETTABLEKS                       R15 R1 K36 ["GetImageProps"]
      170 MOVE                             R16 R13
      171 MOVE                             R17 R9
      172 CALL                             R15 2 1
      173 JUMPIFNOT                        R15 ; [+19]
      174 NAMECALL                         R16 R3 K18 ["getNextOrder"]
      176 CALL                             R16 1 1
      177 MOVE                             R4 R16
      178 MOVE                             R17 R4
      179 LOADK                            R18 K26 [" Icon"]
      180 CONCAT                           R16 R17 R18
      181 GETUPVAL                         R17 4
      182 GETTABLEKS                       R17 R17 K8 ["createElement"]
      184 GETUPVAL                         R18 6
      185 GETUPVAL                         R19 7
      186 MOVE                             R20 R15
      187 DUPTABLE                         R21 K29 [{"LayoutOrder"}]
      188 SETTABLEKS                       R4 R21 K10 ["LayoutOrder"]
      190 CALL                             R19 2 -1
      191 CALL                             R17 -1 1
      192 SETTABLE                         R17 R8 R16
      193 LENGTH                           R15 R13
      194 LOADN                            R16 0
      195 JUMPIFNOTLT                      R16 R15 ; [+51]
      197 NAMECALL                         R15 R3 K18 ["getNextOrder"]
      199 CALL                             R15 1 1
      200 MOVE                             R4 R15
      201 MOVE                             R16 R4
      202 LOADK                            R17 K37 [" Text"]
      203 CONCAT                           R15 R16 R17
      204 GETUPVAL                         R16 4
      205 GETTABLEKS                       R16 R16 K8 ["createElement"]
      207 GETUPVAL                         R17 9
      208 GETUPVAL                         R19 1
      209 JUMPIFNOT                        R19 ; [+18]
      210 NEWTABLE                         R18 4 0
      212 SETTABLEKS                       R4 R18 K10 ["LayoutOrder"]
      214 SETTABLEKS                       R13 R18 K16 ["Text"]
      216 GETUPVAL                         R19 2
      217 GETTABLEKS                       R19 R19 K3 ["Tag"]
      219 GETUPVAL                         R20 10
      220 LOADK                            R21 K38 ["X-Fit Left"]
      221 JUMPIFNOT                        R6 ; [+2]
      222 LOADK                            R22 K39 ["Error"]
      223 JUMP                             ; [+1]
      224 LOADNIL                          R22
      225 CALL                             R20 2 1
      226 SETTABLE                         R20 R18 R19
      227 JUMP                             ; [+17]
      228 DUPTABLE                         R18 K43 [{"AutomaticSize", "LayoutOrder", "Text", "TextColor", "TextXAlignment"}]
      229 GETIMPORT                        R19 K46 [Enum.AutomaticSize.XY]
      231 SETTABLEKS                       R19 R18 K40 ["AutomaticSize"]
      233 SETTABLEKS                       R4 R18 K10 ["LayoutOrder"]
      235 SETTABLEKS                       R13 R18 K16 ["Text"]
      237 GETTABLEKS                       R19 R7 K41 ["TextColor"]
      239 SETTABLEKS                       R19 R18 K41 ["TextColor"]
      241 GETIMPORT                        R19 K48 [Enum.TextXAlignment.Left]
      243 SETTABLEKS                       R19 R18 K42 ["TextXAlignment"]
      245 CALL                             R16 2 1
      246 SETTABLE                         R16 R8 R15
      247 JUMPIFNOT                        R11 ; [+78]
      248 GETTABLEKS                       R15 R1 K36 ["GetImageProps"]
      250 JUMPIFNOT                        R15 ; [+24]
      251 GETTABLEKS                       R15 R1 K36 ["GetImageProps"]
      253 MOVE                             R16 R14
      254 CALL                             R15 1 1
      255 JUMPIFNOT                        R15 ; [+19]
      256 NAMECALL                         R16 R3 K18 ["getNextOrder"]
      258 CALL                             R16 1 1
      259 MOVE                             R4 R16
      260 MOVE                             R17 R4
      261 LOADK                            R18 K26 [" Icon"]
      262 CONCAT                           R16 R17 R18
      263 GETUPVAL                         R17 4
      264 GETTABLEKS                       R17 R17 K8 ["createElement"]
      266 GETUPVAL                         R18 6
      267 GETUPVAL                         R19 7
      268 MOVE                             R20 R15
      269 DUPTABLE                         R21 K29 [{"LayoutOrder"}]
      270 SETTABLEKS                       R4 R21 K10 ["LayoutOrder"]
      272 CALL                             R19 2 -1
      273 CALL                             R17 -1 1
      274 SETTABLE                         R17 R8 R16
      275 MOVE                             R9 R14
      276 NAMECALL                         R15 R3 K18 ["getNextOrder"]
      278 CALL                             R15 1 1
      279 MOVE                             R4 R15
      280 MOVE                             R16 R4
      281 LOADK                            R17 K49 [" Delimiter"]
      282 CONCAT                           R15 R16 R17
      283 GETUPVAL                         R16 4
      284 GETTABLEKS                       R16 R16 K8 ["createElement"]
      286 GETUPVAL                         R17 9
      287 GETUPVAL                         R19 1
      288 JUMPIFNOT                        R19 ; [+18]
      289 NEWTABLE                         R18 4 0
      291 SETTABLEKS                       R4 R18 K10 ["LayoutOrder"]
      293 SETTABLEKS                       R14 R18 K16 ["Text"]
      295 GETUPVAL                         R19 2
      296 GETTABLEKS                       R19 R19 K3 ["Tag"]
      298 GETUPVAL                         R20 10
      299 LOADK                            R21 K38 ["X-Fit Left"]
      300 JUMPIFNOT                        R6 ; [+2]
      301 LOADK                            R22 K39 ["Error"]
      302 JUMP                             ; [+1]
      303 LOADNIL                          R22
      304 CALL                             R20 2 1
      305 SETTABLE                         R20 R18 R19
      306 JUMP                             ; [+17]
      307 DUPTABLE                         R18 K43 [{"AutomaticSize", "LayoutOrder", "Text", "TextColor", "TextXAlignment"}]
      308 GETIMPORT                        R19 K46 [Enum.AutomaticSize.XY]
      310 SETTABLEKS                       R19 R18 K40 ["AutomaticSize"]
      312 SETTABLEKS                       R4 R18 K10 ["LayoutOrder"]
      314 SETTABLEKS                       R14 R18 K16 ["Text"]
      316 GETTABLEKS                       R19 R7 K41 ["TextColor"]
      318 SETTABLEKS                       R19 R18 K41 ["TextColor"]
      320 GETIMPORT                        R19 K48 [Enum.TextXAlignment.Left]
      322 SETTABLEKS                       R19 R18 K42 ["TextXAlignment"]
      324 CALL                             R16 2 1
      325 SETTABLE                         R16 R8 R15
      326 JUMPBACK                         ; [-210]
      327 JUMP                             ; [+54]
      328 GETTABLEKS                       R9 R1 K36 ["GetImageProps"]
      330 JUMPIFNOT                        R9 ; [+25]
      331 GETTABLEKS                       R9 R1 K36 ["GetImageProps"]
      333 GETTABLEKS                       R10 R1 K16 ["Text"]
      335 CALL                             R9 1 1
      336 JUMPIFNOT                        R9 ; [+19]
      337 NAMECALL                         R10 R3 K18 ["getNextOrder"]
      339 CALL                             R10 1 1
      340 MOVE                             R4 R10
      341 MOVE                             R11 R4
      342 LOADK                            R12 K26 [" Icon"]
      343 CONCAT                           R10 R11 R12
      344 GETUPVAL                         R11 4
      345 GETTABLEKS                       R11 R11 K8 ["createElement"]
      347 GETUPVAL                         R12 6
      348 GETUPVAL                         R13 7
      349 MOVE                             R14 R9
      350 DUPTABLE                         R15 K29 [{"LayoutOrder"}]
      351 SETTABLEKS                       R4 R15 K10 ["LayoutOrder"]
      353 CALL                             R13 2 -1
      354 CALL                             R11 -1 1
      355 SETTABLE                         R11 R8 R10
      356 NAMECALL                         R9 R3 K18 ["getNextOrder"]
      358 CALL                             R9 1 1
      359 MOVE                             R4 R9
      360 GETUPVAL                         R9 4
      361 GETTABLEKS                       R9 R9 K8 ["createElement"]
      363 GETUPVAL                         R10 9
      364 DUPTABLE                         R11 K50 [{"AutomaticSize", "LayoutOrder", "Text", "TextXAlignment"}]
      365 GETIMPORT                        R12 K46 [Enum.AutomaticSize.XY]
      367 SETTABLEKS                       R12 R11 K40 ["AutomaticSize"]
      369 SETTABLEKS                       R4 R11 K10 ["LayoutOrder"]
      371 GETTABLEKS                       R12 R1 K16 ["Text"]
      373 SETTABLEKS                       R12 R11 K16 ["Text"]
      375 GETIMPORT                        R12 K48 [Enum.TextXAlignment.Left]
      377 SETTABLEKS                       R12 R11 K42 ["TextXAlignment"]
      379 CALL                             R9 2 1
      380 SETTABLEKS                       R9 R8 K16 ["Text"]
      382 GETUPVAL                         R9 4
      383 GETTABLEKS                       R9 R9 K8 ["createElement"]
      385 GETUPVAL                         R10 11
      386 GETUPVAL                         R12 1
      387 JUMPIFNOT                        R12 ; [+48]
      388 NEWTABLE                         R11 8 0
      390 GETTABLEKS                       R12 R1 K51 ["AnchorPoint"]
      392 SETTABLEKS                       R12 R11 K51 ["AnchorPoint"]
      394 GETTABLEKS                       R13 R1 K7 ["Editing"]
      396 JUMPIFNOT                        R13 ; [+2]
      397 LOADNIL                          R12
      398 JUMP                             ; [+2]
      399 GETTABLEKS                       R12 R0 K52 ["onPress"]
      401 SETTABLEKS                       R12 R11 K53 ["OnPress"]
      403 GETUPVAL                         R13 12
      404 JUMPIFNOT                        R13 ; [+6]
      405 GETTABLEKS                       R13 R1 K7 ["Editing"]
      407 JUMPIF                           R13 ; [+3]
      408 GETTABLEKS                       R12 R1 K54 ["OnRightClick"]
      410 JUMP                             ; [+1]
      411 LOADNIL                          R12
      412 SETTABLEKS                       R12 R11 K54 ["OnRightClick"]
      414 GETTABLEKS                       R12 R1 K10 ["LayoutOrder"]
      416 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      418 GETTABLEKS                       R12 R1 K55 ["Position"]
      420 SETTABLEKS                       R12 R11 K55 ["Position"]
      422 GETTABLEKS                       R12 R1 K13 ["Size"]
      424 SETTABLEKS                       R12 R11 K13 ["Size"]
      426 GETUPVAL                         R12 2
      427 GETTABLEKS                       R12 R12 K3 ["Tag"]
      429 GETUPVAL                         R13 10
      430 LOADK                            R14 K56 ["Component-Breadcrumb"]
      431 MOVE                             R15 R5
      432 LOADK                            R16 K57 ["X-RowS X-Left X-Middle"]
      433 CALL                             R13 3 1
      434 SETTABLE                         R13 R11 R12
      435 JUMP                             ; [+53]
      436 DUPTABLE                         R11 K61 [{"AnchorPoint", "HorizontalAlignment", "OnPress", "OnRightClick", "Layout", "LayoutOrder", "Position", "Size", "Spacing", "Style"}]
      437 GETTABLEKS                       R12 R1 K51 ["AnchorPoint"]
      439 SETTABLEKS                       R12 R11 K51 ["AnchorPoint"]
      441 GETIMPORT                        R12 K62 [Enum.HorizontalAlignment.Left]
      443 SETTABLEKS                       R12 R11 K58 ["HorizontalAlignment"]
      445 GETTABLEKS                       R13 R1 K7 ["Editing"]
      447 JUMPIFNOT                        R13 ; [+2]
      448 LOADNIL                          R12
      449 JUMP                             ; [+2]
      450 GETTABLEKS                       R12 R0 K52 ["onPress"]
      452 SETTABLEKS                       R12 R11 K53 ["OnPress"]
      454 GETUPVAL                         R13 12
      455 JUMPIFNOT                        R13 ; [+6]
      456 GETTABLEKS                       R13 R1 K7 ["Editing"]
      458 JUMPIF                           R13 ; [+3]
      459 GETTABLEKS                       R12 R1 K54 ["OnRightClick"]
      461 JUMP                             ; [+1]
      462 LOADNIL                          R12
      463 SETTABLEKS                       R12 R11 K54 ["OnRightClick"]
      465 GETIMPORT                        R12 K65 [Enum.FillDirection.Horizontal]
      467 SETTABLEKS                       R12 R11 K59 ["Layout"]
      469 GETTABLEKS                       R12 R1 K10 ["LayoutOrder"]
      471 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      473 GETTABLEKS                       R12 R1 K55 ["Position"]
      475 SETTABLEKS                       R12 R11 K55 ["Position"]
      477 GETTABLEKS                       R12 R1 K13 ["Size"]
      479 SETTABLEKS                       R12 R11 K13 ["Size"]
      481 GETTABLEKS                       R12 R7 K60 ["Spacing"]
      483 SETTABLEKS                       R12 R11 K60 ["Spacing"]
      485 GETTABLEKS                       R12 R1 K66 ["PaneStyle"]
      487 SETTABLEKS                       R12 R11 K5 ["Style"]
      489 MOVE                             R12 R8
      490 CALL                             R9 3 -1
      491 RETURN                           R9 -1

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
       33 GETIMPORT                        R5 K6 [require]
       35 GETTABLEKS                       R6 R0 K10 ["SharedFlags"]
       37 GETTABLEKS                       R6 R6 K12 ["getFFlagDevFrameworkFixTreeTableRightClick"]
       39 CALL                             R5 1 1
       40 CALL                             R5 0 1
       41 GETTABLEKS                       R7 R0 K4 ["Parent"]
       43 LOADK                            R9 K13 ["React"]
       44 NAMECALL                         R7 R7 K14 ["FindFirstChild"]
       46 CALL                             R7 2 1
       47 JUMPIFNOT                        R7 ; [+8]
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K4 ["Parent"]
       52 GETTABLEKS                       R7 R7 K13 ["React"]
       54 CALL                             R6 1 1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R6
       57 GETIMPORT                        R7 K6 [require]
       59 GETTABLEKS                       R8 R0 K15 ["Styling"]
       61 GETTABLEKS                       R8 R8 K16 ["supportsStyleSheets"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K6 [require]
       66 GETTABLEKS                       R9 R0 K15 ["Styling"]
       68 GETTABLEKS                       R9 R9 K17 ["joinTags"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K6 [require]
       73 GETTABLEKS                       R10 R0 K15 ["Styling"]
       75 GETTABLEKS                       R10 R10 K18 ["hasTag"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K6 [require]
       80 GETTABLEKS                       R11 R0 K19 ["Style"]
       82 GETTABLEKS                       R11 R11 K20 ["getStudioThemeNameOrDefault"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K6 [require]
       87 GETTABLEKS                       R12 R0 K4 ["Parent"]
       89 GETTABLEKS                       R12 R12 K21 ["Dash"]
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R12 R11 K22 ["join"]
       94 GETTABLEKS                       R13 R11 K23 ["trim"]
       96 GETIMPORT                        R14 K6 [require]
       98 GETTABLEKS                       R15 R0 K2 ["UI"]
      100 GETTABLEKS                       R15 R15 K24 ["Components"]
      102 GETTABLEKS                       R15 R15 K25 ["Image"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K6 [require]
      107 GETTABLEKS                       R16 R0 K2 ["UI"]
      109 GETTABLEKS                       R16 R16 K24 ["Components"]
      111 GETTABLEKS                       R16 R16 K26 ["Pane"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K6 [require]
      116 GETTABLEKS                       R17 R0 K2 ["UI"]
      118 GETTABLEKS                       R17 R17 K24 ["Components"]
      120 GETTABLEKS                       R17 R17 K27 ["TextInput"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K6 [require]
      125 GETTABLEKS                       R18 R0 K2 ["UI"]
      127 GETTABLEKS                       R18 R18 K24 ["Components"]
      129 GETTABLEKS                       R18 R18 K28 ["TextLabel"]
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
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R8
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R5
      182 SETTABLEKS                       R23 R22 K42 ["render"]
      184 DUPTABLE                         R23 K47 [{["Image"] = "rbxasset://textures/ClassImages.png", ["ImageRectOffset"], ["ImageRectSize"], ["Size"]}]
      185 GETIMPORT                        R24 K50 [Vector2.new]
      187 LOADN                            R25 0
      188 LOADN                            R26 0
      189 CALL                             R24 2 1
      190 SETTABLEKS                       R24 R23 K44 ["ImageRectOffset"]
      192 GETIMPORT                        R24 K50 [Vector2.new]
      194 LOADN                            R25 16
      195 LOADN                            R26 16
      196 CALL                             R24 2 1
      197 SETTABLEKS                       R24 R23 K45 ["ImageRectSize"]
      199 GETIMPORT                        R24 K53 [UDim2.fromOffset]
      201 LOADN                            R25 16
      202 LOADN                            R26 16
      203 CALL                             R24 2 1
      204 SETTABLEKS                       R24 R23 K46 ["Size"]
      206 GETIMPORT                        R24 K55 [pcall]
      208 DUPCLOSURE                       R25 K56 [PROTO_6]
      209 CALL                             R24 1 1
      210 DUPCLOSURE                       R25 K57 [PROTO_9]
      211 CAPTURE                          VAL R24
      212 CAPTURE                          VAL R23
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R12
      216 SETTABLEKS                       R25 R22 K58 ["GetSelectorIcon"]
      218 JUMPIF                           R7 ; [+10]
      219 MOVE                             R25 R3
      220 DUPTABLE                         R26 K60 [{"Stylizer"}]
      221 GETTABLEKS                       R27 R2 K59 ["Stylizer"]
      223 SETTABLEKS                       R27 R26 K59 ["Stylizer"]
      225 CALL                             R25 1 1
      226 MOVE                             R26 R22
      227 CALL                             R25 1 1
      228 MOVE                             R22 R25
      229 RETURN                           R22 1
