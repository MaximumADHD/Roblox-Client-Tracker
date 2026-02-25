PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Value"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R0 R1 K3 ["MaterialIndex"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K4 ["OnChanged"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETUPVAL                         R3 1
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K3 ["MaterialList"]
       10 GETTABLEKS                       R2 R1 K3 ["MaterialList"]
       12 GETUPVAL                         R3 2
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K4 ["join"]
       16 GETUPVAL                         R6 1
       17 GETUPVAL                         R7 2
       18 GETTABLE                         R5 R6 R7
       19 MOVE                             R6 R0
       20 CALL                             R4 2 1
       21 SETTABLE                         R4 R2 R3
       22 GETUPVAL                         R2 4
       23 MOVE                             R3 R1
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 SETTABLEKS                       R0 R2 K3 ["Min"]
        7 JUMPIFNOT                        R1 ; [+2]
        8 SETTABLEKS                       R1 R2 K4 ["Max"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K5 ["OnChanged"]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R1 R0 K3 ["MaterialList"]
       10 DUPTABLE                         R1 K10 [{"Priority", "Material", "MinHeight", "MaxHeight", "MinSlope", "MaxSlope"}]
       11 GETTABLEKS                       R3 R0 K3 ["MaterialList"]
       13 LENGTH                           R2 R3
       14 SETTABLEKS                       R2 R1 K4 ["Priority"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K11 ["FallbackMaterial"]
       19 SETTABLEKS                       R2 R1 K5 ["Material"]
       21 GETUPVAL                         R2 2
       22 SETTABLEKS                       R2 R1 K6 ["MinHeight"]
       24 GETUPVAL                         R2 3
       25 SETTABLEKS                       R2 R1 K7 ["MaxHeight"]
       27 LOADN                            R2 0
       28 SETTABLEKS                       R2 R1 K8 ["MinSlope"]
       30 LOADN                            R2 90
       31 SETTABLEKS                       R2 R1 K9 ["MaxSlope"]
       33 GETTABLEKS                       R3 R0 K3 ["MaterialList"]
       35 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       37 MOVE                             R4 R1
       38 GETIMPORT                        R2 K13 [table.insert]
       40 CALL                             R2 2 0
       41 GETTABLEKS                       R3 R0 K3 ["MaterialList"]
       43 LENGTH                           R2 R3
       44 SETTABLEKS                       R2 R0 K14 ["MaterialIndex"]
       46 GETUPVAL                         R3 4
       47 GETTABLEKS                       R2 R3 K15 ["OnChanged"]
       49 MOVE                             R3 R0
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R1 R0 K3 ["MaterialList"]
       10 GETIMPORT                        R1 K5 [table.remove]
       12 GETTABLEKS                       R2 R0 K3 ["MaterialList"]
       14 GETUPVAL                         R3 2
       15 CALL                             R1 2 0
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R4 R0 K3 ["MaterialList"]
       19 LENGTH                           R1 R4
       20 LOADN                            R2 1
       21 FORNPREP                         R1
       22 GETTABLEKS                       R5 R0 K3 ["MaterialList"]
       24 GETTABLE                         R4 R5 R3
       25 SUBK                             R5 R3 K6 [1]
       26 SETTABLEKS                       R5 R4 K7 ["Priority"]
       28 FORNLOOP                         R1
       29 GETUPVAL                         R2 2
       30 JUMPIFNOTEQKN                    R2 K6 [1] ; [+3]
       32 GETUPVAL                         R1 2
       33 JUMP                             ; [+2]
       34 GETUPVAL                         R2 2
       35 SUBK                             R1 R2 K6 [1]
       36 SETTABLEKS                       R1 R0 K8 ["MaterialIndex"]
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R1 R2 K9 ["OnChanged"]
       41 MOVE                             R2 R0
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Min"]
        2 JUMPIF                           R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["Max"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R2 R0 K0 ["Min"]
        9 GETTABLEKS                       R3 R0 K1 ["Max"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 1
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ElevationRenderer"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R3 R0 K2 ["Value"]
        8 CALL                             R2 1 2
        9 GETTABLEKS                       R4 R2 K3 ["Min"]
       11 GETTABLEKS                       R5 R2 K4 ["Max"]
       13 GETTABLEKS                       R6 R2 K5 ["Unit"]
       15 GETTABLEKS                       R7 R2 K6 ["MaterialIndex"]
       17 GETTABLEKS                       R8 R0 K7 ["Schema"]
       19 GETUPVAL                         R10 2
       20 GETTABLEKS                       R9 R10 K8 ["new"]
       22 CALL                             R9 0 1
       23 GETUPVAL                         R10 3
       24 CALL                             R10 0 1
       25 NEWTABLE                         R11 2 0
       27 GETIMPORT                        R12 K11 [table.clone]
       29 GETTABLEKS                       R13 R2 K12 ["MaterialList"]
       31 CALL                             R12 1 1
       32 GETUPVAL                         R13 4
       33 NEWCLOSURE                       R14 P0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R15 0 1
       38 GETTABLEKS                       R16 R0 K2 ["Value"]
       40 SETLIST                          R15 R16 1 [1]
       42 CALL                             R13 2 0
       43 GETUPVAL                         R13 5
       44 NEWCLOSURE                       R14 P1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R15 0 2
       49 MOVE                             R16 R2
       50 GETTABLEKS                       R17 R0 K13 ["OnChanged"]
       52 SETLIST                          R15 R16 2 [1]
       54 CALL                             R13 2 1
       55 GETUPVAL                         R14 5
       56 NEWCLOSURE                       R15 P2
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R16 0 3
       61 MOVE                             R17 R2
       62 MOVE                             R18 R12
       63 MOVE                             R19 R7
       64 SETLIST                          R16 R17 3 [1]
       66 CALL                             R14 2 1
       67 GETUPVAL                         R15 5
       68 NEWCLOSURE                       R16 P3
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R7
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          VAL R3
       74 NEWTABLE                         R17 0 3
       76 MOVE                             R18 R2
       77 MOVE                             R19 R12
       78 MOVE                             R20 R7
       79 SETLIST                          R17 R18 3 [1]
       81 CALL                             R15 2 1
       82 GETUPVAL                         R16 5
       83 NEWCLOSURE                       R17 P4
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R0
       86 NEWTABLE                         R18 0 2
       88 MOVE                             R19 R2
       89 GETTABLEKS                       R20 R0 K13 ["OnChanged"]
       91 SETLIST                          R18 R19 2 [1]
       93 CALL                             R16 2 1
       94 GETUPVAL                         R17 5
       95 NEWCLOSURE                       R18 P5
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R0
      101 NEWTABLE                         R19 0 6
      103 MOVE                             R20 R2
      104 MOVE                             R21 R12
      105 MOVE                             R22 R7
      106 GETTABLEKS                       R23 R0 K13 ["OnChanged"]
      108 MOVE                             R24 R4
      109 MOVE                             R25 R5
      110 SETLIST                          R19 R20 6 [1]
      112 CALL                             R17 2 1
      113 GETUPVAL                         R18 5
      114 NEWCLOSURE                       R19 P6
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R0
      119 NEWTABLE                         R20 0 4
      121 MOVE                             R21 R2
      122 MOVE                             R22 R12
      123 MOVE                             R23 R7
      124 GETTABLEKS                       R24 R0 K13 ["OnChanged"]
      126 SETLIST                          R20 R21 4 [1]
      128 CALL                             R18 2 1
      129 GETTABLE                         R19 R12 R7
      130 GETUPVAL                         R21 7
      131 GETTABLEKS                       R20 R21 K14 ["createElement"]
      133 GETUPVAL                         R21 8
      134 DUPTABLE                         R22 K18 [{"LayoutOrder", "Max", "MaxHeight", "Min", "MinHeight", "OnChanged", "Unit"}]
      135 NAMECALL                         R23 R9 K19 ["getNextOrder"]
      137 CALL                             R23 1 1
      138 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      140 SETTABLEKS                       R5 R22 K4 ["Max"]
      142 JUMPIFNOT                        R19 ; [+3]
      143 GETTABLEKS                       R23 R19 K16 ["MaxHeight"]
      145 JUMP                             ; [+1]
      146 LOADNIL                          R23
      147 SETTABLEKS                       R23 R22 K16 ["MaxHeight"]
      149 SETTABLEKS                       R4 R22 K3 ["Min"]
      151 JUMPIFNOT                        R19 ; [+3]
      152 GETTABLEKS                       R23 R19 K17 ["MinHeight"]
      154 JUMP                             ; [+1]
      155 LOADNIL                          R23
      156 SETTABLEKS                       R23 R22 K17 ["MinHeight"]
      158 NEWCLOSURE                       R23 P7
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R15
      161 SETTABLEKS                       R23 R22 K13 ["OnChanged"]
      163 SETTABLEKS                       R6 R22 K5 ["Unit"]
      165 CALL                             R20 2 1
      166 SETTABLEKS                       R20 R11 K20 ["RangeInputs"]
      168 MOVE                             R20 R12
      169 LOADNIL                          R21
      170 LOADNIL                          R22
      171 FORGPREP                         R20
      172 MOVE                             R25 R10
      173 GETTABLEKS                       R27 R24 K21 ["Material"]
      175 GETTABLEKS                       R26 R27 K22 ["Name"]
      177 CALL                             R25 1 1
      178 GETUPVAL                         R27 7
      179 GETTABLEKS                       R26 R27 K14 ["createElement"]
      181 GETUPVAL                         R27 9
      182 DUPTABLE                         R28 K28 [{"CanDelete", "LayoutOrder", "Material", "Max", "MaxHeight", "Min", "MinHeight", "OnChanged", "OnCommit", "OnRemove", "OnSelect", "Selected"}]
      183 LENGTH                           R30 R12
      184 LOADN                            R31 1
      185 JUMPIFLT                         R31 R30 ; [+2]
      187 LOADB                            R29 0 +1
      188 LOADB                            R29 1
      189 SETTABLEKS                       R29 R28 K23 ["CanDelete"]
      191 NAMECALL                         R29 R9 K19 ["getNextOrder"]
      193 CALL                             R29 1 1
      194 SETTABLEKS                       R29 R28 K15 ["LayoutOrder"]
      196 GETTABLEKS                       R29 R24 K21 ["Material"]
      198 SETTABLEKS                       R29 R28 K21 ["Material"]
      200 SETTABLEKS                       R5 R28 K4 ["Max"]
      202 GETTABLEKS                       R29 R24 K16 ["MaxHeight"]
      204 SETTABLEKS                       R29 R28 K16 ["MaxHeight"]
      206 SETTABLEKS                       R4 R28 K3 ["Min"]
      208 GETTABLEKS                       R29 R24 K17 ["MinHeight"]
      210 SETTABLEKS                       R29 R28 K17 ["MinHeight"]
      212 SETTABLEKS                       R15 R28 K13 ["OnChanged"]
      214 SETTABLEKS                       R13 R28 K24 ["OnCommit"]
      216 SETTABLEKS                       R18 R28 K25 ["OnRemove"]
      218 NEWCLOSURE                       R29 P8
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R23
      221 SETTABLEKS                       R29 R28 K26 ["OnSelect"]
      223 JUMPIFEQ                         R7 R23 ; [+2]
      225 LOADB                            R29 0 +1
      226 LOADB                            R29 1
      227 SETTABLEKS                       R29 R28 K27 ["Selected"]
      229 CALL                             R26 2 1
      230 SETTABLE                         R26 R11 R25
      231 FORGLOOP                         R20 2 ; [-60]
      233 LENGTH                           R20 R12
      234 GETUPVAL                         R22 10
      235 GETTABLEKS                       R21 R22 K29 ["MaxMaterialListSize"]
      237 JUMPIFNOTLT                      R20 R21 ; [+106]
      239 GETUPVAL                         R21 7
      240 GETTABLEKS                       R20 R21 K14 ["createElement"]
      242 GETUPVAL                         R21 11
      243 DUPTABLE                         R22 K34 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "Size"}]
      244 GETIMPORT                        R23 K37 [Enum.AutomaticSize.XY]
      246 SETTABLEKS                       R23 R22 K30 ["AutomaticSize"]
      248 GETIMPORT                        R23 K40 [Enum.FillDirection.Vertical]
      250 SETTABLEKS                       R23 R22 K31 ["Layout"]
      252 NAMECALL                         R23 R9 K19 ["getNextOrder"]
      254 CALL                             R23 1 1
      255 SETTABLEKS                       R23 R22 K15 ["LayoutOrder"]
      257 GETTABLEKS                       R24 R1 K32 ["Spacing"]
      259 SUBK                             R23 R24 K41 [2]
      260 SETTABLEKS                       R23 R22 K32 ["Spacing"]
      262 GETIMPORT                        R23 K44 [UDim2.fromScale]
      264 LOADN                            R24 0
      265 LOADN                            R25 0
      266 CALL                             R23 2 1
      267 SETTABLEKS                       R23 R22 K33 ["Size"]
      269 DUPTABLE                         R23 K47 [{"MaterialSliderPlaceHolder", "Add"}]
      270 GETUPVAL                         R25 7
      271 GETTABLEKS                       R24 R25 K14 ["createElement"]
      273 GETUPVAL                         R25 11
      274 DUPTABLE                         R26 K48 [{"LayoutOrder", "Size"}]
      275 NAMECALL                         R27 R9 K19 ["getNextOrder"]
      277 CALL                             R27 1 1
      278 SETTABLEKS                       R27 R26 K15 ["LayoutOrder"]
      280 GETTABLEKS                       R27 R1 K49 ["SliderSize"]
      282 SETTABLEKS                       R27 R26 K33 ["Size"]
      284 CALL                             R24 2 1
      285 SETTABLEKS                       R24 R23 K45 ["MaterialSliderPlaceHolder"]
      287 GETUPVAL                         R25 7
      288 GETTABLEKS                       R24 R25 K14 ["createElement"]
      290 GETUPVAL                         R25 12
      291 DUPTABLE                         R26 K52 [{"OnClick", "LayoutOrder", "Size", "Style"}]
      292 SETTABLEKS                       R17 R26 K50 ["OnClick"]
      294 NAMECALL                         R27 R9 K19 ["getNextOrder"]
      296 CALL                             R27 1 1
      297 SETTABLEKS                       R27 R26 K15 ["LayoutOrder"]
      299 GETTABLEKS                       R27 R1 K53 ["MaterialPreviewSize"]
      301 SETTABLEKS                       R27 R26 K33 ["Size"]
      303 LOADK                            R27 K54 ["RoundSubtle"]
      304 SETTABLEKS                       R27 R26 K51 ["Style"]
      306 NEWTABLE                         R27 0 1
      308 GETUPVAL                         R29 7
      309 GETTABLEKS                       R28 R29 K14 ["createElement"]
      311 GETUPVAL                         R29 13
      312 DUPTABLE                         R30 K57 [{"AnchorPoint", "Position", "Size", "Style"}]
      313 GETIMPORT                        R31 K59 [Vector2.new]
      315 LOADK                            R32 K60 [0.5]
      316 LOADK                            R33 K60 [0.5]
      317 CALL                             R31 2 1
      318 SETTABLEKS                       R31 R30 K55 ["AnchorPoint"]
      320 GETIMPORT                        R31 K44 [UDim2.fromScale]
      322 LOADK                            R32 K60 [0.5]
      323 LOADK                            R33 K60 [0.5]
      324 CALL                             R31 2 1
      325 SETTABLEKS                       R31 R30 K56 ["Position"]
      327 GETTABLEKS                       R31 R1 K61 ["ButtonSize"]
      329 SETTABLEKS                       R31 R30 K33 ["Size"]
      331 GETTABLEKS                       R31 R1 K62 ["AddStyle"]
      333 SETTABLEKS                       R31 R30 K51 ["Style"]
      335 CALL                             R28 2 -1
      336 SETLIST                          R27 R28 -1 [1]
      338 CALL                             R24 3 1
      339 SETTABLEKS                       R24 R23 K46 ["Add"]
      341 CALL                             R20 3 1
      342 SETTABLEKS                       R20 R11 K63 ["AddMaterial"]
      344 LENGTH                           R23 R12
      345 ADDK                             R22 R23 K65 [1]
      346 LOADN                            R23 1
      347 LOADN                            R24 5
      348 FASTCALL                         MATH_CLAMP ; [+2]
      349 GETIMPORT                        R21 K68 [math.clamp]
      351 CALL                             R21 3 1
      352 MULK                             R20 R21 K64 [30]
      353 GETUPVAL                         R22 7
      354 GETTABLEKS                       R21 R22 K14 ["createElement"]
      356 LOADK                            R22 K69 ["Frame"]
      357 DUPTABLE                         R23 K71 [{"AutomaticSize", "BackgroundTransparency"}]
      358 GETIMPORT                        R24 K37 [Enum.AutomaticSize.XY]
      360 SETTABLEKS                       R24 R23 K30 ["AutomaticSize"]
      362 LOADN                            R24 1
      363 SETTABLEKS                       R24 R23 K70 ["BackgroundTransparency"]
      365 DUPTABLE                         R24 K75 [{"XAxis", "YAxis", "Sliders"}]
      366 GETUPVAL                         R26 7
      367 GETTABLEKS                       R25 R26 K14 ["createElement"]
      369 LOADK                            R26 K69 ["Frame"]
      370 DUPTABLE                         R27 K76 [{"BackgroundTransparency", "Size", "Position"}]
      371 LOADN                            R28 1
      372 SETTABLEKS                       R28 R27 K70 ["BackgroundTransparency"]
      374 GETIMPORT                        R28 K78 [UDim2.fromOffset]
      376 MOVE                             R29 R20
      377 LOADN                            R30 5
      378 CALL                             R28 2 1
      379 SETTABLEKS                       R28 R27 K33 ["Size"]
      381 GETIMPORT                        R28 K78 [UDim2.fromOffset]
      383 LOADN                            R29 50
      384 LOADN                            R30 200
      385 CALL                             R28 2 1
      386 SETTABLEKS                       R28 R27 K56 ["Position"]
      388 DUPTABLE                         R28 K80 [{"Separator"}]
      389 GETUPVAL                         R30 7
      390 GETTABLEKS                       R29 R30 K14 ["createElement"]
      392 GETUPVAL                         R30 14
      393 DUPTABLE                         R31 K82 [{"DominantAxis", "Position"}]
      394 GETIMPORT                        R32 K84 [Enum.DominantAxis.Width]
      396 SETTABLEKS                       R32 R31 K81 ["DominantAxis"]
      398 GETIMPORT                        R32 K78 [UDim2.fromOffset]
      400 DIVK                             R33 R20 K41 [2]
      401 LOADN                            R34 0
      402 CALL                             R32 2 1
      403 SETTABLEKS                       R32 R31 K56 ["Position"]
      405 CALL                             R29 2 1
      406 SETTABLEKS                       R29 R28 K79 ["Separator"]
      408 CALL                             R25 3 1
      409 SETTABLEKS                       R25 R24 K72 ["XAxis"]
      411 GETUPVAL                         R26 7
      412 GETTABLEKS                       R25 R26 K14 ["createElement"]
      414 LOADK                            R26 K69 ["Frame"]
      415 DUPTABLE                         R27 K76 [{"BackgroundTransparency", "Size", "Position"}]
      416 LOADN                            R28 1
      417 SETTABLEKS                       R28 R27 K70 ["BackgroundTransparency"]
      419 GETIMPORT                        R28 K78 [UDim2.fromOffset]
      421 LOADN                            R29 5
      422 LOADN                            R30 200
      423 CALL                             R28 2 1
      424 SETTABLEKS                       R28 R27 K33 ["Size"]
      426 GETIMPORT                        R28 K78 [UDim2.fromOffset]
      428 LOADN                            R29 50
      429 LOADN                            R30 0
      430 CALL                             R28 2 1
      431 SETTABLEKS                       R28 R27 K56 ["Position"]
      433 DUPTABLE                         R28 K80 [{"Separator"}]
      434 GETUPVAL                         R30 7
      435 GETTABLEKS                       R29 R30 K14 ["createElement"]
      437 GETUPVAL                         R30 14
      438 DUPTABLE                         R31 K82 [{"DominantAxis", "Position"}]
      439 GETIMPORT                        R32 K86 [Enum.DominantAxis.Height]
      441 SETTABLEKS                       R32 R31 K81 ["DominantAxis"]
      443 GETIMPORT                        R32 K78 [UDim2.fromOffset]
      445 LOADN                            R33 0
      446 LOADN                            R34 100
      447 CALL                             R32 2 1
      448 SETTABLEKS                       R32 R31 K56 ["Position"]
      450 CALL                             R29 2 1
      451 SETTABLEKS                       R29 R28 K79 ["Separator"]
      453 CALL                             R25 3 1
      454 SETTABLEKS                       R25 R24 K73 ["YAxis"]
      456 GETUPVAL                         R26 7
      457 GETTABLEKS                       R25 R26 K14 ["createElement"]
      459 GETUPVAL                         R26 11
      460 DUPTABLE                         R27 K90 [{"Layout", "VerticalAlignment", "HorizontalAlignment", "Padding", "Spacing"}]
      461 GETIMPORT                        R28 K92 [Enum.FillDirection.Horizontal]
      463 SETTABLEKS                       R28 R27 K31 ["Layout"]
      465 GETIMPORT                        R28 K94 [Enum.VerticalAlignment.Top]
      467 SETTABLEKS                       R28 R27 K87 ["VerticalAlignment"]
      469 GETIMPORT                        R28 K96 [Enum.HorizontalAlignment.Left]
      471 SETTABLEKS                       R28 R27 K88 ["HorizontalAlignment"]
      473 DUPTABLE                         R28 K98 [{"Top", "Bottom"}]
      474 GETTABLEKS                       R32 R1 K99 ["TextBoxSize"]
      476 GETTABLEKS                       R31 R32 K100 ["Y"]
      478 GETTABLEKS                       R30 R31 K101 ["Offset"]
      480 DIVK                             R29 R30 K41 [2]
      481 SETTABLEKS                       R29 R28 K93 ["Top"]
      483 GETTABLEKS                       R32 R1 K99 ["TextBoxSize"]
      485 GETTABLEKS                       R31 R32 K100 ["Y"]
      487 GETTABLEKS                       R30 R31 K101 ["Offset"]
      489 DIVK                             R29 R30 K41 [2]
      490 SETTABLEKS                       R29 R28 K97 ["Bottom"]
      492 SETTABLEKS                       R28 R27 K89 ["Padding"]
      494 GETTABLEKS                       R28 R1 K32 ["Spacing"]
      496 SETTABLEKS                       R28 R27 K32 ["Spacing"]
      498 MOVE                             R28 R11
      499 CALL                             R25 3 1
      500 SETTABLEKS                       R25 R24 K74 ["Sliders"]
      502 CALL                             R21 3 -1
      503 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["useCallback"]
       30 GETTABLEKS                       R5 R3 K11 ["useEffect"]
       32 GETTABLEKS                       R6 R3 K12 ["useState"]
       34 GETTABLEKS                       R8 R2 K13 ["UI"]
       36 GETTABLEKS                       R7 R8 K14 ["Button"]
       38 GETTABLEKS                       R9 R2 K13 ["UI"]
       40 GETTABLEKS                       R8 R9 K15 ["Image"]
       42 GETTABLEKS                       R10 R2 K13 ["UI"]
       44 GETTABLEKS                       R9 R10 K16 ["Pane"]
       46 GETTABLEKS                       R11 R2 K13 ["UI"]
       48 GETTABLEKS                       R10 R11 K17 ["Separator"]
       50 GETTABLEKS                       R12 R2 K18 ["ContextServices"]
       52 GETTABLEKS                       R11 R12 K19 ["Stylizer"]
       54 GETTABLEKS                       R13 R2 K20 ["Util"]
       56 GETTABLEKS                       R12 R13 K21 ["LayoutOrderIterator"]
       58 GETIMPORT                        R13 K5 [require]
       60 GETIMPORT                        R15 K1 [script]
       62 GETTABLEKS                       R14 R15 K22 ["RangeInputs"]
       64 CALL                             R13 1 1
       65 GETIMPORT                        R14 K5 [require]
       67 GETIMPORT                        R16 K1 [script]
       69 GETTABLEKS                       R15 R16 K23 ["MaterialSlider"]
       71 CALL                             R14 1 1
       72 GETIMPORT                        R15 K5 [require]
       74 GETTABLEKS                       R18 R0 K24 ["Src"]
       76 GETTABLEKS                       R17 R18 K25 ["Resources"]
       78 GETTABLEKS                       R16 R17 K26 ["Constants"]
       80 CALL                             R15 1 1
       81 GETIMPORT                        R16 K5 [require]
       83 GETTABLEKS                       R19 R0 K24 ["Src"]
       85 GETTABLEKS                       R18 R19 K25 ["Resources"]
       87 GETTABLEKS                       R17 R18 K27 ["Theme"]
       89 CALL                             R16 1 1
       90 GETIMPORT                        R17 K5 [require]
       92 GETTABLEKS                       R19 R0 K24 ["Src"]
       94 GETTABLEKS                       R18 R19 K28 ["Types"]
       96 CALL                             R17 1 1
       97 GETIMPORT                        R18 K5 [require]
       99 GETTABLEKS                       R21 R0 K24 ["Src"]
      101 GETTABLEKS                       R20 R21 K20 ["Util"]
      103 GETTABLEKS                       R19 R20 K29 ["CreateUniqueKey"]
      105 CALL                             R18 1 1
      106 DUPCLOSURE                       R19 K30 [PROTO_9]
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R10
      122 RETURN                           R19 1
