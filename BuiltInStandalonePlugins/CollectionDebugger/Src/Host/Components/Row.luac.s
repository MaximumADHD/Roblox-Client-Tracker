PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleNode"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createElement"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K1 ["View"]
        6 DUPTABLE                         R7 K9 [{["testId"] = "--collections-enable", ["LayoutOrder"], ["Size"], ["tag"] = "align-x-center align-y-center", ["onActivated"]}]
        7 SETTABLEKS                       R0 R7 K4 ["LayoutOrder"]
        9 GETIMPORT                        R8 K12 [UDim2.fromOffset]
       11 LOADN                            R9 24
       12 GETUPVAL                         R10 2
       13 CALL                             R8 2 1
       14 SETTABLEKS                       R8 R7 K5 ["Size"]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R8 R7 K8 ["onActivated"]
       21 DUPTABLE                         R8 K14 [{"Glyph"}]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K0 ["createElement"]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K15 ["Image"]
       28 DUPTABLE                         R11 K17 [{"testId", "Image", "Size", "imageStyle"}]
       29 GETTABLEKS                       R13 R1 K18 ["enabled"]
       31 JUMPIFNOT                        R13 ; [+2]
       32 LOADK                            R12 K19 ["--collections-enable-pause"]
       33 JUMP                             ; [+1]
       34 LOADK                            R12 K20 ["--collections-enable-resume"]
       35 SETTABLEKS                       R12 R11 K2 ["testId"]
       37 GETTABLEKS                       R13 R1 K18 ["enabled"]
       39 JUMPIFNOT                        R13 ; [+2]
       40 LOADK                            R12 K21 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonPauseSmall.png"]
       41 JUMP                             ; [+1]
       42 LOADK                            R12 K22 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonResumeSmall.png"]
       43 SETTABLEKS                       R12 R11 K15 ["Image"]
       45 GETIMPORT                        R12 K12 [UDim2.fromOffset]
       47 GETTABLEKS                       R13 R3 K5 ["Size"]
       49 GETTABLEKS                       R13 R13 K23 ["Size_400"]
       51 GETTABLEKS                       R14 R3 K5 ["Size"]
       53 GETTABLEKS                       R14 R14 K23 ["Size_400"]
       55 CALL                             R12 2 1
       56 SETTABLEKS                       R12 R11 K5 ["Size"]
       58 JUMPIFNOT                        R4 ; [+12]
       59 DUPTABLE                         R12 K27 [{["Color3"], ["Transparency"] = 0.5}]
       60 GETTABLEKS                       R13 R3 K28 ["Color"]
       62 GETTABLEKS                       R13 R13 K29 ["Content"]
       64 GETTABLEKS                       R13 R13 K30 ["Emphasis"]
       66 GETTABLEKS                       R13 R13 K24 ["Color3"]
       68 SETTABLEKS                       R13 R12 K24 ["Color3"]
       70 JUMP                             ; [+6]
       71 GETTABLEKS                       R12 R3 K28 ["Color"]
       73 GETTABLEKS                       R12 R12 K29 ["Content"]
       75 GETTABLEKS                       R12 R12 K30 ["Emphasis"]
       77 SETTABLEKS                       R12 R11 K16 ["imageStyle"]
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K13 ["Glyph"]
       82 CALL                             R5 3 -1
       83 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["Text"]
        6 DUPTABLE                         R6 K7 [{["LayoutOrder"], ["Text"], ["tag"] = "grow size-0-full text-body-small text-align-x-left text-align-y-center text-truncate-end", ["onActivated"], ["ref"]}]
        7 SETTABLEKS                       R0 R6 K2 ["LayoutOrder"]
        9 GETTABLEKS                       R7 R1 K8 ["text"]
       11 SETTABLEKS                       R7 R6 K1 ["Text"]
       13 SETTABLEKS                       R2 R6 K5 ["onActivated"]
       15 SETTABLEKS                       R3 R6 K6 ["ref"]
       17 CALL                             R4 2 -1
       18 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R1 R2 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["showScriptMenu"]
        9 GETUPVAL                         R2 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 NEWTABLE                         R0 0 0
        6 NEWTABLE                         R1 0 2
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K0 ["current"]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K0 ["current"]
       14 SETLIST                          R1 R4 2 [1]
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 JUMPIFNOT                        R5 ; [+13]
       20 MOVE                             R7 R0
       21 GETTABLEKS                       R8 R5 K1 ["InputBegan"]
       23 NEWCLOSURE                       R10 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 NAMECALL                         R8 R8 K2 ["Connect"]
       28 CALL                             R8 2 -1
       29 FASTCALL                         TABLE_INSERT ; [+2]
       30 GETIMPORT                        R6 K5 [table.insert]
       32 CALL                             R6 -1 0
       33 FORGLOOP                         R1 2 ; [-15]
       35 NEWCLOSURE                       R1 P1
       36 CAPTURE                          VAL R0
       37 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onToggleExpanded"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openScript"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleHighlight"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R2 R0 K1 ["depth"]
        4 GETTABLEKS                       R3 R0 K2 ["controller"]
        6 GETUPVAL                         R4 0
        7 CALL                             R4 0 1
        8 LOADB                            R5 0
        9 GETTABLEKS                       R6 R1 K3 ["children"]
       11 JUMPIFEQKNIL                     R6 ; [+9]
       13 GETTABLEKS                       R7 R1 K3 ["children"]
       15 LENGTH                           R6 R7
       16 LOADN                            R7 0
       17 JUMPIFLT                         R7 R6 ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K4 ["useRef"]
       24 LOADNIL                          R7
       25 CALL                             R6 1 1
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K4 ["useRef"]
       29 LOADNIL                          R8
       30 CALL                             R7 1 1
       31 LOADB                            R8 0
       32 GETTABLEKS                       R9 R1 K5 ["type"]
       34 JUMPIFNOTEQKS                    R9 K6 ["callback"] ; [+12]
       36 LOADB                            R8 0
       37 GETTABLEKS                       R9 R1 K7 ["scriptName"]
       39 JUMPIFEQKNIL                     R9 ; [+7]
       41 GETTABLEKS                       R9 R1 K7 ["scriptName"]
       43 JUMPIFNOTEQKS                    R9 K8 [""] ; [+2]
       45 LOADB                            R8 0 +1
       46 LOADB                            R8 1
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R9 R9 K9 ["useEffect"]
       50 NEWCLOSURE                       R10 P0
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R1
       56 NEWTABLE                         R11 0 3
       58 MOVE                             R12 R8
       59 MOVE                             R13 R1
       60 MOVE                             R14 R3
       61 SETLIST                          R11 R12 3 [1]
       63 CALL                             R9 2 0
       64 NEWTABLE                         R9 8 0
       66 LOADN                            R10 0
       67 NEWCLOSURE                       R11 P1
       68 CAPTURE                          REF R10
       69 LOADN                            R12 0
       70 JUMPIFNOTLT                      R12 R2 ; [+23]
       72 GETUPVAL                         R12 1
       73 GETTABLEKS                       R12 R12 K10 ["createElement"]
       75 GETUPVAL                         R13 2
       76 GETTABLEKS                       R13 R13 K11 ["View"]
       78 DUPTABLE                         R14 K14 [{"LayoutOrder", "Size"}]
       79 ADDK                             R10 R10 K15 [1]
       80 MOVE                             R15 R10
       81 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
       83 GETIMPORT                        R15 K18 [UDim2.fromOffset]
       85 GETUPVAL                         R17 3
       86 MUL                              R16 R2 R17
       87 LOADN                            R17 0
       88 CALL                             R15 2 1
       89 SETTABLEKS                       R15 R14 K13 ["Size"]
       91 CALL                             R12 2 1
       92 SETTABLEKS                       R12 R9 K19 ["Indent"]
       94 JUMPIFNOT                        R5 ; [+77]
       95 GETUPVAL                         R12 1
       96 GETTABLEKS                       R12 R12 K10 ["createElement"]
       98 GETUPVAL                         R13 2
       99 GETTABLEKS                       R13 R13 K11 ["View"]
      101 DUPTABLE                         R14 K25 [{["testId"] = "--collections-disclosure", ["LayoutOrder"], ["Size"], ["tag"] = "align-x-center align-y-center", ["onActivated"]}]
      102 ADDK                             R10 R10 K15 [1]
      103 MOVE                             R15 R10
      104 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      106 GETIMPORT                        R15 K18 [UDim2.fromOffset]
      108 GETUPVAL                         R17 4
      109 ADDK                             R16 R17 K26 [4]
      110 GETUPVAL                         R17 5
      111 CALL                             R15 2 1
      112 SETTABLEKS                       R15 R14 K13 ["Size"]
      114 NEWCLOSURE                       R15 P2
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R1
      117 SETTABLEKS                       R15 R14 K24 ["onActivated"]
      119 DUPTABLE                         R15 K28 [{"Caret"}]
      120 GETUPVAL                         R16 1
      121 GETTABLEKS                       R16 R16 K10 ["createElement"]
      123 GETUPVAL                         R17 2
      124 GETTABLEKS                       R17 R17 K29 ["Icon"]
      126 DUPTABLE                         R18 K33 [{"name", "variant", "size"}]
      127 GETTABLEKS                       R20 R0 K34 ["expanded"]
      129 JUMPIFNOT                        R20 ; [+8]
      130 GETUPVAL                         R19 2
      131 GETTABLEKS                       R19 R19 K35 ["Enums"]
      133 GETTABLEKS                       R19 R19 K36 ["IconName"]
      135 GETTABLEKS                       R19 R19 K37 ["CaretSmallDown"]
      137 JUMP                             ; [+7]
      138 GETUPVAL                         R19 2
      139 GETTABLEKS                       R19 R19 K35 ["Enums"]
      141 GETTABLEKS                       R19 R19 K36 ["IconName"]
      143 GETTABLEKS                       R19 R19 K38 ["CaretSmallRight"]
      145 SETTABLEKS                       R19 R18 K30 ["name"]
      147 GETUPVAL                         R19 2
      148 GETTABLEKS                       R19 R19 K35 ["Enums"]
      150 GETTABLEKS                       R19 R19 K39 ["IconVariant"]
      152 GETTABLEKS                       R19 R19 K40 ["Filled"]
      154 SETTABLEKS                       R19 R18 K31 ["variant"]
      156 GETUPVAL                         R19 2
      157 GETTABLEKS                       R19 R19 K35 ["Enums"]
      159 GETTABLEKS                       R19 R19 K41 ["IconSize"]
      161 GETTABLEKS                       R19 R19 K42 ["Small"]
      163 SETTABLEKS                       R19 R18 K32 ["size"]
      165 CALL                             R16 2 1
      166 SETTABLEKS                       R16 R15 K27 ["Caret"]
      168 CALL                             R12 3 1
      169 SETTABLEKS                       R12 R9 K43 ["Disclosure"]
      171 JUMP                             ; [+22]
      172 GETUPVAL                         R12 1
      173 GETTABLEKS                       R12 R12 K10 ["createElement"]
      175 GETUPVAL                         R13 2
      176 GETTABLEKS                       R13 R13 K11 ["View"]
      178 DUPTABLE                         R14 K14 [{"LayoutOrder", "Size"}]
      179 ADDK                             R10 R10 K15 [1]
      180 MOVE                             R15 R10
      181 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      183 GETIMPORT                        R15 K18 [UDim2.fromOffset]
      185 GETUPVAL                         R17 4
      186 ADDK                             R16 R17 K26 [4]
      187 LOADN                            R17 0
      188 CALL                             R15 2 1
      189 SETTABLEKS                       R15 R14 K13 ["Size"]
      191 CALL                             R12 2 1
      192 SETTABLEKS                       R12 R9 K43 ["Disclosure"]
      194 GETTABLEKS                       R12 R1 K5 ["type"]
      196 JUMPIFNOTEQKS                    R12 K6 ["callback"] ; [+43]
      198 GETUPVAL                         R12 6
      199 ADDK                             R10 R10 K15 [1]
      200 MOVE                             R13 R10
      201 MOVE                             R14 R1
      202 MOVE                             R15 R3
      203 MOVE                             R16 R4
      204 GETTABLEKS                       R18 R0 K44 ["parentEnabled"]
      206 JUMPIFEQKB                       R18 FALSE ; [+2]
      208 LOADB                            R17 0 +1
      209 LOADB                            R17 1
      210 CALL                             R12 5 1
      211 SETTABLEKS                       R12 R9 K45 ["Enable"]
      213 ADDK                             R10 R10 K15 [1]
      214 MOVE                             R13 R10
      215 NEWCLOSURE                       R14 P3
      216 CAPTURE                          VAL R3
      217 CAPTURE                          VAL R1
      218 GETUPVAL                         R15 1
      219 GETTABLEKS                       R15 R15 K10 ["createElement"]
      221 GETUPVAL                         R16 2
      222 GETTABLEKS                       R16 R16 K46 ["Text"]
      224 DUPTABLE                         R17 K49 [{["LayoutOrder"], ["Text"], ["tag"] = "grow size-0-full text-body-small text-align-x-left text-align-y-center text-truncate-end", ["onActivated"], ["ref"]}]
      225 SETTABLEKS                       R13 R17 K12 ["LayoutOrder"]
      227 GETTABLEKS                       R18 R1 K50 ["text"]
      229 SETTABLEKS                       R18 R17 K46 ["Text"]
      231 SETTABLEKS                       R14 R17 K24 ["onActivated"]
      233 SETTABLEKS                       R7 R17 K48 ["ref"]
      235 CALL                             R15 2 1
      236 MOVE                             R12 R15
      237 SETTABLEKS                       R12 R9 K51 ["Name"]
      239 JUMP                             ; [+183]
      240 GETTABLEKS                       R12 R1 K5 ["type"]
      242 JUMPIFNOTEQKS                    R12 K52 ["collection"] ; [+111]
      244 GETUPVAL                         R12 6
      245 ADDK                             R10 R10 K15 [1]
      246 MOVE                             R13 R10
      247 MOVE                             R14 R1
      248 MOVE                             R15 R3
      249 MOVE                             R16 R4
      250 CALL                             R12 4 1
      251 SETTABLEKS                       R12 R9 K45 ["Enable"]
      253 GETTABLEKS                       R12 R3 K53 ["isHighlighted"]
      255 MOVE                             R13 R1
      256 CALL                             R12 1 1
      257 GETUPVAL                         R13 1
      258 GETTABLEKS                       R13 R13 K10 ["createElement"]
      260 GETUPVAL                         R14 2
      261 GETTABLEKS                       R14 R14 K11 ["View"]
      263 DUPTABLE                         R15 K56 [{["testId"] = "--collections-highlight", ["LayoutOrder"], ["tag"], ["stateLayer"], ["onActivated"]}]
      264 ADDK                             R10 R10 K15 [1]
      265 MOVE                             R16 R10
      266 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      268 NEWTABLE                         R16 2 0
      270 LOADB                            R17 1
      271 SETTABLEKS                       R17 R16 K57 ["row align-x-center align-y-center auto-xy padding-xsmall radius-small"]
      273 SETTABLEKS                       R12 R16 K58 ["bg-action-standard"]
      275 SETTABLEKS                       R16 R15 K22 ["tag"]
      277 DUPTABLE                         R16 K60 [{"affordance"}]
      278 GETUPVAL                         R17 2
      279 GETTABLEKS                       R17 R17 K35 ["Enums"]
      281 GETTABLEKS                       R17 R17 K61 ["StateLayerAffordance"]
      283 GETTABLEKS                       R17 R17 K62 ["Background"]
      285 SETTABLEKS                       R17 R16 K59 ["affordance"]
      287 SETTABLEKS                       R16 R15 K55 ["stateLayer"]
      289 NEWCLOSURE                       R16 P4
      290 CAPTURE                          VAL R3
      291 CAPTURE                          VAL R1
      292 SETTABLEKS                       R16 R15 K24 ["onActivated"]
      294 DUPTABLE                         R16 K64 [{"Glyph"}]
      295 GETUPVAL                         R17 1
      296 GETTABLEKS                       R17 R17 K10 ["createElement"]
      298 GETUPVAL                         R18 2
      299 GETTABLEKS                       R18 R18 K29 ["Icon"]
      301 DUPTABLE                         R19 K66 [{"name", "size", "style"}]
      302 GETUPVAL                         R20 2
      303 GETTABLEKS                       R20 R20 K35 ["Enums"]
      305 GETTABLEKS                       R20 R20 K36 ["IconName"]
      307 GETTABLEKS                       R20 R20 K67 ["Binoculars"]
      309 SETTABLEKS                       R20 R19 K30 ["name"]
      311 GETUPVAL                         R20 2
      312 GETTABLEKS                       R20 R20 K35 ["Enums"]
      314 GETTABLEKS                       R20 R20 K41 ["IconSize"]
      316 GETTABLEKS                       R20 R20 K42 ["Small"]
      318 SETTABLEKS                       R20 R19 K32 ["size"]
      320 GETTABLEKS                       R20 R4 K68 ["Color"]
      322 GETTABLEKS                       R20 R20 K69 ["Content"]
      324 GETTABLEKS                       R20 R20 K70 ["Emphasis"]
      326 SETTABLEKS                       R20 R19 K65 ["style"]
      328 CALL                             R17 2 1
      329 SETTABLEKS                       R17 R16 K63 ["Glyph"]
      331 CALL                             R13 3 1
      332 SETTABLEKS                       R13 R9 K71 ["Highlight"]
      334 ADDK                             R10 R10 K15 [1]
      335 MOVE                             R14 R10
      336 GETUPVAL                         R15 1
      337 GETTABLEKS                       R15 R15 K10 ["createElement"]
      339 GETUPVAL                         R16 2
      340 GETTABLEKS                       R16 R16 K46 ["Text"]
      342 DUPTABLE                         R17 K73 [{["LayoutOrder"], ["Text"], ["tag"] = "grow size-0-full text-body-small text-align-x-left text-align-y-center text-truncate-end", ["onActivated"] = , ["ref"] = }]
      343 SETTABLEKS                       R14 R17 K12 ["LayoutOrder"]
      345 GETTABLEKS                       R18 R1 K50 ["text"]
      347 SETTABLEKS                       R18 R17 K46 ["Text"]
      349 CALL                             R15 2 1
      350 MOVE                             R13 R15
      351 SETTABLEKS                       R13 R9 K51 ["Name"]
      353 JUMP                             ; [+69]
      354 GETUPVAL                         R12 1
      355 GETTABLEKS                       R12 R12 K10 ["createElement"]
      357 GETUPVAL                         R13 2
      358 GETTABLEKS                       R13 R13 K11 ["View"]
      360 DUPTABLE                         R14 K74 [{["LayoutOrder"], ["Size"], ["tag"] = "align-x-center align-y-center"}]
      361 ADDK                             R10 R10 K15 [1]
      362 MOVE                             R15 R10
      363 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      365 GETIMPORT                        R15 K18 [UDim2.fromOffset]
      367 LOADN                            R16 24
      368 GETUPVAL                         R17 5
      369 CALL                             R15 2 1
      370 SETTABLEKS                       R15 R14 K13 ["Size"]
      372 DUPTABLE                         R15 K64 [{"Glyph"}]
      373 GETUPVAL                         R16 1
      374 GETTABLEKS                       R16 R16 K10 ["createElement"]
      376 GETUPVAL                         R17 2
      377 GETTABLEKS                       R17 R17 K29 ["Icon"]
      379 DUPTABLE                         R18 K75 [{"name", "size"}]
      380 GETUPVAL                         R19 2
      381 GETTABLEKS                       R19 R19 K35 ["Enums"]
      383 GETTABLEKS                       R19 R19 K36 ["IconName"]
      385 GETTABLEKS                       R19 R19 K76 ["ComputerMonitor"]
      387 SETTABLEKS                       R19 R18 K30 ["name"]
      389 GETUPVAL                         R19 2
      390 GETTABLEKS                       R19 R19 K35 ["Enums"]
      392 GETTABLEKS                       R19 R19 K41 ["IconSize"]
      394 GETTABLEKS                       R19 R19 K42 ["Small"]
      396 SETTABLEKS                       R19 R18 K32 ["size"]
      398 CALL                             R16 2 1
      399 SETTABLEKS                       R16 R15 K63 ["Glyph"]
      401 CALL                             R12 3 1
      402 SETTABLEKS                       R12 R9 K77 ["NodeIcon"]
      404 ADDK                             R10 R10 K15 [1]
      405 MOVE                             R13 R10
      406 GETUPVAL                         R14 1
      407 GETTABLEKS                       R14 R14 K10 ["createElement"]
      409 GETUPVAL                         R15 2
      410 GETTABLEKS                       R15 R15 K46 ["Text"]
      412 DUPTABLE                         R16 K73 [{["LayoutOrder"], ["Text"], ["tag"] = "grow size-0-full text-body-small text-align-x-left text-align-y-center text-truncate-end", ["onActivated"] = , ["ref"] = }]
      413 SETTABLEKS                       R13 R16 K12 ["LayoutOrder"]
      415 GETTABLEKS                       R17 R1 K50 ["text"]
      417 SETTABLEKS                       R17 R16 K46 ["Text"]
      419 CALL                             R14 2 1
      420 MOVE                             R12 R14
      421 SETTABLEKS                       R12 R9 K51 ["Name"]
      423 NEWTABLE                         R12 4 0
      425 GETTABLEKS                       R13 R1 K78 ["enabled"]
      427 JUMPIFNOT                        R13 ; [+31]
      428 GETTABLEKS                       R13 R1 K79 ["runtime"]
      430 JUMPIFNOT                        R13 ; [+28]
      431 GETUPVAL                         R13 1
      432 GETTABLEKS                       R13 R13 K10 ["createElement"]
      434 GETUPVAL                         R14 2
      435 GETTABLEKS                       R14 R14 K46 ["Text"]
      437 DUPTABLE                         R15 K81 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-0-full auto-x text-body-small text-align-x-right text-align-y-center content-muted"}]
      438 GETTABLEKS                       R16 R0 K82 ["localization"]
      440 LOADK                            R18 K83 ["App"]
      441 LOADK                            R19 K84 ["FrameTime"]
      442 DUPTABLE                         R20 K86 [{"time"}]
      443 GETIMPORT                        R21 K89 [string.format]
      445 LOADK                            R22 K90 ["%.2f"]
      446 GETTABLEKS                       R23 R1 K79 ["runtime"]
      448 CALL                             R21 2 1
      449 SETTABLEKS                       R21 R20 K85 ["time"]
      451 NAMECALL                         R16 R16 K91 ["getText"]
      453 CALL                             R16 4 1
      454 SETTABLEKS                       R16 R15 K46 ["Text"]
      456 CALL                             R13 2 1
      457 SETTABLEKS                       R13 R12 K92 ["Runtime"]
      459 GETTABLEKS                       R13 R1 K93 ["history"]
      461 JUMPIFNOT                        R13 ; [+45]
      462 GETTABLEKS                       R14 R1 K93 ["history"]
      464 LENGTH                           R13 R14
      465 LOADN                            R14 0
      466 JUMPIFNOTLT                      R14 R13 ; [+40]
      468 GETUPVAL                         R13 1
      469 GETTABLEKS                       R13 R13 K10 ["createElement"]
      471 GETUPVAL                         R14 2
      472 GETTABLEKS                       R14 R14 K11 ["View"]
      474 DUPTABLE                         R15 K96 [{["LayoutOrder"] = 2, ["Size"], ["tag"] = "align-y-center"}]
      475 GETIMPORT                        R16 K18 [UDim2.fromOffset]
      477 LOADN                            R17 64
      478 GETUPVAL                         R18 5
      479 CALL                             R16 2 1
      480 SETTABLEKS                       R16 R15 K13 ["Size"]
      482 DUPTABLE                         R16 K98 [{"Graph"}]
      483 GETUPVAL                         R17 1
      484 GETTABLEKS                       R17 R17 K10 ["createElement"]
      486 GETUPVAL                         R18 7
      487 DUPTABLE                         R19 K101 [{["history"], ["width"] = 64, ["Size"]}]
      488 GETTABLEKS                       R20 R1 K93 ["history"]
      490 SETTABLEKS                       R20 R19 K93 ["history"]
      492 GETIMPORT                        R20 K18 [UDim2.fromOffset]
      494 LOADN                            R21 64
      495 GETUPVAL                         R23 5
      496 SUBK                             R22 R23 K102 [6]
      497 CALL                             R20 2 1
      498 SETTABLEKS                       R20 R19 K13 ["Size"]
      500 CALL                             R17 2 1
      501 SETTABLEKS                       R17 R16 K97 ["Graph"]
      503 CALL                             R13 3 1
      504 SETTABLEKS                       R13 R12 K97 ["Graph"]
      506 JUMP                             ; [+45]
      507 GETTABLEKS                       R13 R1 K32 ["size"]
      509 JUMPIFNOT                        R13 ; [+42]
      510 GETTABLEKS                       R13 R1 K78 ["enabled"]
      512 JUMPIFNOT                        R13 ; [+39]
      513 GETTABLEKS                       R13 R1 K103 ["unconfirmed"]
      515 JUMPIF                           R13 ; [+36]
      516 GETUPVAL                         R13 1
      517 GETTABLEKS                       R13 R13 K10 ["createElement"]
      519 GETUPVAL                         R14 2
      520 GETTABLEKS                       R14 R14 K104 ["Badge"]
      522 DUPTABLE                         R15 K106 [{["LayoutOrder"] = 2, ["testId"] = "--collections-instance-count", ["text"], ["variant"], ["size"]}]
      523 GETTABLEKS                       R17 R1 K32 ["size"]
      525 FASTCALL1                        TOSTRING R17 ; [+2]
      526 GETIMPORT                        R16 K108 [tostring]
      528 CALL                             R16 1 1
      529 SETTABLEKS                       R16 R15 K50 ["text"]
      531 GETUPVAL                         R16 2
      532 GETTABLEKS                       R16 R16 K35 ["Enums"]
      534 GETTABLEKS                       R16 R16 K109 ["BadgeVariant"]
      536 GETTABLEKS                       R16 R16 K110 ["Standard"]
      538 SETTABLEKS                       R16 R15 K31 ["variant"]
      540 GETUPVAL                         R16 2
      541 GETTABLEKS                       R16 R16 K35 ["Enums"]
      543 GETTABLEKS                       R16 R16 K111 ["BadgeSize"]
      545 GETTABLEKS                       R16 R16 K112 ["XSmall"]
      547 SETTABLEKS                       R16 R15 K32 ["size"]
      549 CALL                             R13 2 1
      550 SETTABLEKS                       R13 R12 K104 ["Badge"]
      552 GETIMPORT                        R13 K114 [next]
      554 MOVE                             R14 R12
      555 CALL                             R13 1 1
      556 JUMPIFEQKNIL                     R13 ; [+16]
      558 GETUPVAL                         R13 1
      559 GETTABLEKS                       R13 R13 K10 ["createElement"]
      561 GETUPVAL                         R14 2
      562 GETTABLEKS                       R14 R14 K11 ["View"]
      564 DUPTABLE                         R15 K117 [{["testId"] = "--collections-trailing", ["LayoutOrder"], ["tag"] = "row align-x-right align-y-center gap-small size-0-full auto-x"}]
      565 ADDK                             R10 R10 K15 [1]
      566 MOVE                             R16 R10
      567 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      569 MOVE                             R16 R12
      570 CALL                             R13 3 1
      571 SETTABLEKS                       R13 R9 K118 ["Trailing"]
      573 GETUPVAL                         R13 1
      574 GETTABLEKS                       R13 R13 K10 ["createElement"]
      576 GETUPVAL                         R14 2
      577 GETTABLEKS                       R14 R14 K11 ["View"]
      579 DUPTABLE                         R15 K121 [{["testId"] = "--collections-row", ["Size"], ["LayoutOrder"], ["tag"] = "row align-y-center gap-xsmall padding-left-xsmall padding-right-small", ["ref"]}]
      580 GETIMPORT                        R16 K123 [UDim2.new]
      582 LOADN                            R17 1
      583 LOADN                            R18 0
      584 LOADN                            R19 0
      585 GETUPVAL                         R20 5
      586 CALL                             R16 4 1
      587 SETTABLEKS                       R16 R15 K13 ["Size"]
      589 GETTABLEKS                       R16 R0 K124 ["order"]
      591 SETTABLEKS                       R16 R15 K12 ["LayoutOrder"]
      593 SETTABLEKS                       R6 R15 K48 ["ref"]
      595 MOVE                             R16 R9
      596 CALL                             R13 3 -1
      597 CLOSEUPVALS                      R10
      598 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CollectionDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Hooks"]
       23 GETTABLEKS                       R3 R3 K10 ["useTokens"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K11 ["Parent"]
       31 GETTABLEKS                       R5 R5 K12 ["HistoryGraph"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K13 ["Src"]
       38 GETTABLEKS                       R6 R6 K14 ["Types"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETIMPORT                        R7 K1 [script]
       45 GETTABLEKS                       R7 R7 K11 ["Parent"]
       47 GETTABLEKS                       R7 R7 K15 ["constants"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R6 K16 ["INDENT_PX"]
       52 GETTABLEKS                       R8 R6 K17 ["TRIANGLE_W"]
       54 GETTABLEKS                       R9 R6 K18 ["ROW_HEIGHT"]
       56 DUPCLOSURE                       R10 K19 [PROTO_1]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R9
       60 DUPCLOSURE                       R11 K20 [PROTO_2]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R1
       63 DUPCLOSURE                       R12 K21 [PROTO_10]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R4
       72 RETURN                           R12 1
