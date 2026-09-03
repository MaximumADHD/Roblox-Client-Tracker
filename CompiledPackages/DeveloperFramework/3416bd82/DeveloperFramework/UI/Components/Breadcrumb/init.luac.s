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
      387 JUMPIFNOT                        R12 ; [+46]
      388 NEWTABLE                         R11 8 0
      390 GETTABLEKS                       R12 R1 K51 ["AnchorPoint"]
      392 SETTABLEKS                       R12 R11 K51 ["AnchorPoint"]
      394 GETTABLEKS                       R13 R1 K7 ["Editing"]
      396 JUMPIFNOT                        R13 ; [+2]
      397 LOADNIL                          R12
      398 JUMP                             ; [+2]
      399 GETTABLEKS                       R12 R0 K52 ["onPress"]
      401 SETTABLEKS                       R12 R11 K53 ["OnPress"]
      403 GETTABLEKS                       R13 R1 K7 ["Editing"]
      405 JUMPIF                           R13 ; [+3]
      406 GETTABLEKS                       R12 R1 K54 ["OnRightClick"]
      408 JUMP                             ; [+1]
      409 LOADNIL                          R12
      410 SETTABLEKS                       R12 R11 K54 ["OnRightClick"]
      412 GETTABLEKS                       R12 R1 K10 ["LayoutOrder"]
      414 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      416 GETTABLEKS                       R12 R1 K55 ["Position"]
      418 SETTABLEKS                       R12 R11 K55 ["Position"]
      420 GETTABLEKS                       R12 R1 K13 ["Size"]
      422 SETTABLEKS                       R12 R11 K13 ["Size"]
      424 GETUPVAL                         R12 2
      425 GETTABLEKS                       R12 R12 K3 ["Tag"]
      427 GETUPVAL                         R13 10
      428 LOADK                            R14 K56 ["Component-Breadcrumb"]
      429 MOVE                             R15 R5
      430 LOADK                            R16 K57 ["X-RowS X-Left X-Middle"]
      431 CALL                             R13 3 1
      432 SETTABLE                         R13 R11 R12
      433 JUMP                             ; [+51]
      434 DUPTABLE                         R11 K61 [{"AnchorPoint", "HorizontalAlignment", "OnPress", "OnRightClick", "Layout", "LayoutOrder", "Position", "Size", "Spacing", "Style"}]
      435 GETTABLEKS                       R12 R1 K51 ["AnchorPoint"]
      437 SETTABLEKS                       R12 R11 K51 ["AnchorPoint"]
      439 GETIMPORT                        R12 K62 [Enum.HorizontalAlignment.Left]
      441 SETTABLEKS                       R12 R11 K58 ["HorizontalAlignment"]
      443 GETTABLEKS                       R13 R1 K7 ["Editing"]
      445 JUMPIFNOT                        R13 ; [+2]
      446 LOADNIL                          R12
      447 JUMP                             ; [+2]
      448 GETTABLEKS                       R12 R0 K52 ["onPress"]
      450 SETTABLEKS                       R12 R11 K53 ["OnPress"]
      452 GETTABLEKS                       R13 R1 K7 ["Editing"]
      454 JUMPIF                           R13 ; [+3]
      455 GETTABLEKS                       R12 R1 K54 ["OnRightClick"]
      457 JUMP                             ; [+1]
      458 LOADNIL                          R12
      459 SETTABLEKS                       R12 R11 K54 ["OnRightClick"]
      461 GETIMPORT                        R12 K65 [Enum.FillDirection.Horizontal]
      463 SETTABLEKS                       R12 R11 K59 ["Layout"]
      465 GETTABLEKS                       R12 R1 K10 ["LayoutOrder"]
      467 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      469 GETTABLEKS                       R12 R1 K55 ["Position"]
      471 SETTABLEKS                       R12 R11 K55 ["Position"]
      473 GETTABLEKS                       R12 R1 K13 ["Size"]
      475 SETTABLEKS                       R12 R11 K13 ["Size"]
      477 GETTABLEKS                       R12 R7 K60 ["Spacing"]
      479 SETTABLEKS                       R12 R11 K60 ["Spacing"]
      481 GETTABLEKS                       R12 R1 K66 ["PaneStyle"]
      483 SETTABLEKS                       R12 R11 K5 ["Style"]
      485 MOVE                             R12 R8
      486 CALL                             R9 3 -1
      487 RETURN                           R9 -1

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
       25 JUMP                             ; [+23]
       26 LOADNIL                          R7
       27 RETURN                           R7 1
       28 JUMP                             ; [+20]
       29 GETUPVAL                         R5 2
       30 CALL                             R5 0 1
       31 LOADK                            R8 K7 ["^%s*%."]
       32 NAMECALL                         R6 R0 K1 ["find"]
       34 CALL                             R6 2 1
       35 JUMPIFNOT                        R6 ; [+11]
       36 DUPTABLE                         R6 K9 [{"Image"}]
       37 LOADK                            R8 K10 ["rbxasset://studio_svg_textures/Lua/TagEditor/%*/Standard/Tag.png"]
       38 MOVE                             R10 R5
       39 NAMECALL                         R8 R8 K11 ["format"]
       41 CALL                             R8 2 1
       42 MOVE                             R7 R8
       43 SETTABLEKS                       R7 R6 K8 ["Image"]
       45 MOVE                             R4 R6
       46 JUMP                             ; [+2]
       47 LOADNIL                          R6
       48 RETURN                           R6 1
       49 GETUPVAL                         R5 3
       50 MOVE                             R6 R4
       51 DUPTABLE                         R7 K13 [{"Size"}]
       52 GETTABLEKS                       R9 R4 K14 ["ImageRectSize"]
       54 JUMPIFNOT                        R9 ; [+12]
       55 GETIMPORT                        R8 K17 [UDim2.fromOffset]
       57 GETTABLEKS                       R9 R4 K14 ["ImageRectSize"]
       59 GETTABLEKS                       R9 R9 K18 ["X"]
       61 GETTABLEKS                       R10 R4 K14 ["ImageRectSize"]
       63 GETTABLEKS                       R10 R10 K19 ["Y"]
       65 CALL                             R8 2 1
       66 JUMP                             ; [+5]
       67 GETIMPORT                        R8 K17 [UDim2.fromOffset]
       69 LOADN                            R9 16
       70 LOADN                            R10 16
       71 CALL                             R8 2 1
       72 SETTABLEKS                       R8 R7 K12 ["Size"]
       74 CALL                             R5 2 -1
       75 RETURN                           R5 -1

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
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 LOADK                            R7 K10 ["React"]
       28 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+8]
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R5 K10 ["React"]
       38 CALL                             R4 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Styling"]
       45 GETTABLEKS                       R6 R6 K13 ["supportsStyleSheets"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K12 ["Styling"]
       52 GETTABLEKS                       R7 R7 K14 ["joinTags"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K6 [require]
       57 GETTABLEKS                       R8 R0 K12 ["Styling"]
       59 GETTABLEKS                       R8 R8 K15 ["hasTag"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K6 [require]
       64 GETTABLEKS                       R9 R0 K16 ["Style"]
       66 GETTABLEKS                       R9 R9 K17 ["getStudioThemeNameOrDefault"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K6 [require]
       71 GETTABLEKS                       R10 R0 K4 ["Parent"]
       73 GETTABLEKS                       R10 R10 K18 ["Dash"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R9 K19 ["join"]
       78 GETTABLEKS                       R11 R9 K20 ["trim"]
       80 GETIMPORT                        R12 K6 [require]
       82 GETTABLEKS                       R13 R0 K2 ["UI"]
       84 GETTABLEKS                       R13 R13 K21 ["Components"]
       86 GETTABLEKS                       R13 R13 K22 ["Image"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K6 [require]
       91 GETTABLEKS                       R14 R0 K2 ["UI"]
       93 GETTABLEKS                       R14 R14 K21 ["Components"]
       95 GETTABLEKS                       R14 R14 K23 ["Pane"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K6 [require]
      100 GETTABLEKS                       R15 R0 K2 ["UI"]
      102 GETTABLEKS                       R15 R15 K21 ["Components"]
      104 GETTABLEKS                       R15 R15 K24 ["TextInput"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K6 [require]
      109 GETTABLEKS                       R16 R0 K2 ["UI"]
      111 GETTABLEKS                       R16 R16 K21 ["Components"]
      113 GETTABLEKS                       R16 R16 K25 ["TextLabel"]
      115 CALL                             R15 1 1
      116 GETTABLEKS                       R16 R0 K26 ["Util"]
      118 GETIMPORT                        R17 K6 [require]
      120 GETTABLEKS                       R18 R16 K27 ["DoubleClickDetector"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K6 [require]
      125 GETTABLEKS                       R19 R16 K28 ["LayoutOrderIterator"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K6 [require]
      130 GETTABLEKS                       R20 R16 K29 ["Typecheck"]
      132 CALL                             R19 1 1
      133 GETTABLEKS                       R20 R1 K30 ["PureComponent"]
      135 LOADK                            R22 K31 ["Breadcrumb"]
      136 NAMECALL                         R20 R20 K32 ["extend"]
      138 CALL                             R20 2 1
      139 GETTABLEKS                       R21 R19 K33 ["wrap"]
      141 MOVE                             R22 R20
      142 GETIMPORT                        R23 K1 [script]
      144 CALL                             R21 2 0
      145 DUPCLOSURE                       R21 K34 [PROTO_3]
      146 CAPTURE                          VAL R17
      147 SETTABLEKS                       R21 R20 K35 ["init"]
      149 DUPCLOSURE                       R21 K36 [PROTO_4]
      150 SETTABLEKS                       R21 R20 K37 ["didUpdate"]
      152 DUPCLOSURE                       R21 K38 [PROTO_5]
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R13
      165 SETTABLEKS                       R21 R20 K39 ["render"]
      167 DUPTABLE                         R21 K44 [{["Image"] = "rbxasset://textures/ClassImages.png", ["ImageRectOffset"], ["ImageRectSize"], ["Size"]}]
      168 GETIMPORT                        R22 K47 [Vector2.new]
      170 LOADN                            R23 0
      171 LOADN                            R24 0
      172 CALL                             R22 2 1
      173 SETTABLEKS                       R22 R21 K41 ["ImageRectOffset"]
      175 GETIMPORT                        R22 K47 [Vector2.new]
      177 LOADN                            R23 16
      178 LOADN                            R24 16
      179 CALL                             R22 2 1
      180 SETTABLEKS                       R22 R21 K42 ["ImageRectSize"]
      182 GETIMPORT                        R22 K50 [UDim2.fromOffset]
      184 LOADN                            R23 16
      185 LOADN                            R24 16
      186 CALL                             R22 2 1
      187 SETTABLEKS                       R22 R21 K43 ["Size"]
      189 GETIMPORT                        R22 K52 [pcall]
      191 DUPCLOSURE                       R23 K53 [PROTO_6]
      192 CALL                             R22 1 1
      193 DUPCLOSURE                       R23 K54 [PROTO_8]
      194 CAPTURE                          VAL R22
      195 CAPTURE                          VAL R21
      196 CAPTURE                          VAL R8
      197 CAPTURE                          VAL R10
      198 SETTABLEKS                       R23 R20 K55 ["GetSelectorIcon"]
      200 JUMPIF                           R5 ; [+10]
      201 MOVE                             R23 R3
      202 DUPTABLE                         R24 K57 [{"Stylizer"}]
      203 GETTABLEKS                       R25 R2 K56 ["Stylizer"]
      205 SETTABLEKS                       R25 R24 K56 ["Stylizer"]
      207 CALL                             R23 1 1
      208 MOVE                             R24 R20
      209 CALL                             R23 1 1
      210 MOVE                             R20 R23
      211 RETURN                           R20 1
