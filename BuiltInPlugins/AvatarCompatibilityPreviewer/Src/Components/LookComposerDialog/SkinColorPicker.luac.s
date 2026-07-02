PROTO_0:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R2 R0 K1 ["fromPicker"]
        5 NOT                              R1 R2
        6 GETUPVAL                         R2 0
        7 DUPTABLE                         R3 K4 [{["fromPicker"] = False, ["previousColor"]}]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K5 ["selectedColor"]
       11 SETTABLEKS                       R4 R3 K3 ["previousColor"]
       13 SETTABLEKS                       R3 R2 K0 ["current"]
       15 GETUPVAL                         R2 2
       16 GETUPVAL                         R3 3
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["selectedColor"]
       20 CALL                             R3 1 -1
       21 CALL                             R2 -1 0
       22 GETUPVAL                         R2 4
       23 LOADNIL                          R3
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 5
       26 GETTABLEKS                       R2 R2 K6 ["enabled"]
       28 JUMPIFNOT                        R2 ; [+11]
       29 JUMPIFNOT                        R1 ; [+10]
       30 GETTABLEKS                       R2 R0 K3 ["previousColor"]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K5 ["selectedColor"]
       35 JUMPIFEQ                         R2 R3 ; [+4]
       37 GETUPVAL                         R2 6
       38 DUPCLOSURE                       R3 K7 [PROTO_0]
       39 CALL                             R2 1 0
       40 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K1 ["fromPicker"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["onColorChanged"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R1 K1 ["fromPicker"]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["onColorChanged"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R3 2
        8 LOADNIL                          R4
        9 CALL                             R3 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 2
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K1 ["fromPicker"]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K2 ["onColorChanged"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 4
       16 LOADNIL                          R3
       17 CALL                             R2 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 4
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["disable"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [ipairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_INEXT                   R1
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K2 ["selectedColor"]
       10 JUMPIFEQ                         R5 R7 ; [+2]
       12 LOADB                            R6 0 +1
       13 LOADB                            R6 1
       14 FASTCALL1                        TOSTRING R4 ; [+3]
       15 MOVE                             R8 R4
       16 GETIMPORT                        R7 K4 [tostring]
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R8 R8 K5 ["createElement"]
       22 GETUPVAL                         R9 3
       23 DUPTABLE                         R10 K11 [{["tag"] = "stroke-standard stroke-default radius-small", ["Size"], ["LayoutOrder"], ["onActivated"]}]
       24 GETIMPORT                        R11 K14 [UDim2.fromOffset]
       26 LOADN                            R12 24
       27 LOADN                            R13 24
       28 CALL                             R11 2 1
       29 SETTABLEKS                       R11 R10 K8 ["Size"]
       31 SETTABLEKS                       R4 R10 K9 ["LayoutOrder"]
       33 NEWCLOSURE                       R11 P0
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R11 R10 K10 ["onActivated"]
       38 DUPTABLE                         R11 K16 [{"ColorSwatch"}]
       39 GETUPVAL                         R12 2
       40 GETTABLEKS                       R12 R12 K5 ["createElement"]
       42 LOADK                            R13 K17 ["Frame"]
       43 DUPTABLE                         R14 K20 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
       44 GETIMPORT                        R15 K22 [UDim2.new]
       46 LOADN                            R16 1
       47 LOADN                            R17 0
       48 LOADN                            R18 1
       49 LOADN                            R19 0
       50 CALL                             R15 4 1
       51 SETTABLEKS                       R15 R14 K8 ["Size"]
       53 SETTABLEKS                       R5 R14 K18 ["BackgroundColor3"]
       55 JUMPIFNOT                        R6 ; [+2]
       56 LOADN                            R15 2
       57 JUMP                             ; [+1]
       58 LOADN                            R15 1
       59 SETTABLEKS                       R15 R14 K19 ["BorderSizePixel"]
       61 DUPTABLE                         R15 K24 [{"UICorner"}]
       62 GETUPVAL                         R16 2
       63 GETTABLEKS                       R16 R16 K5 ["createElement"]
       65 LOADK                            R17 K23 ["UICorner"]
       66 DUPTABLE                         R18 K26 [{"CornerRadius"}]
       67 GETIMPORT                        R19 K28 [UDim.new]
       69 LOADN                            R20 0
       70 LOADN                            R21 4
       71 CALL                             R19 2 1
       72 SETTABLEKS                       R19 R18 K25 ["CornerRadius"]
       74 CALL                             R16 2 1
       75 SETTABLEKS                       R16 R15 K23 ["UICorner"]
       77 CALL                             R12 3 1
       78 SETTABLEKS                       R12 R11 K15 ["ColorSwatch"]
       80 CALL                             R8 3 1
       81 SETTABLE                         R8 R0 R7
       82 FORGLOOP                         R1 2 [inext] ; [-76]
       84 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 LOADB                            R3 0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R4 R0 K1 ["selectedColor"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K2 ["useState"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 2
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R6 R6 K2 ["useState"]
       24 LOADNIL                          R7
       25 CALL                             R6 1 2
       26 GETUPVAL                         R8 4
       27 GETTABLEKS                       R8 R8 K2 ["useState"]
       29 LOADN                            R9 0
       30 CALL                             R8 1 2
       31 GETUPVAL                         R10 4
       32 GETTABLEKS                       R10 R10 K3 ["useRef"]
       34 DUPTABLE                         R11 K7 [{["fromPicker"] = False, ["previousColor"]}]
       35 GETTABLEKS                       R12 R0 K1 ["selectedColor"]
       37 SETTABLEKS                       R12 R11 K6 ["previousColor"]
       39 CALL                             R10 1 1
       40 GETUPVAL                         R11 4
       41 GETTABLEKS                       R11 R11 K8 ["useEffect"]
       43 NEWCLOSURE                       R12 P0
       44 CAPTURE                          VAL R10
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R5
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R9
       51 NEWTABLE                         R13 0 2
       53 GETTABLEKS                       R14 R0 K1 ["selectedColor"]
       55 GETTABLEKS                       R15 R2 K9 ["enabled"]
       57 SETLIST                          R13 R14 2 [1]
       59 CALL                             R11 2 0
       60 GETUPVAL                         R11 4
       61 GETTABLEKS                       R11 R11 K10 ["useCallback"]
       63 NEWCLOSURE                       R12 P1
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R0
       66 NEWTABLE                         R13 0 1
       68 GETTABLEKS                       R14 R0 K11 ["onColorChanged"]
       70 SETLIST                          R13 R14 1 [1]
       72 CALL                             R11 2 1
       73 GETUPVAL                         R12 4
       74 GETTABLEKS                       R12 R12 K10 ["useCallback"]
       76 NEWCLOSURE                       R13 P2
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R0
       79 NEWTABLE                         R14 0 1
       81 GETTABLEKS                       R15 R0 K11 ["onColorChanged"]
       83 SETLIST                          R14 R15 1 [1]
       85 CALL                             R12 2 1
       86 GETUPVAL                         R13 4
       87 GETTABLEKS                       R13 R13 K10 ["useCallback"]
       89 NEWCLOSURE                       R14 P3
       90 CAPTURE                          VAL R5
       91 CAPTURE                          UPVAL U5
       92 CAPTURE                          VAL R7
       93 NEWTABLE                         R15 0 0
       95 CALL                             R13 2 1
       96 GETUPVAL                         R14 4
       97 GETTABLEKS                       R14 R14 K10 ["useCallback"]
       99 NEWCLOSURE                       R15 P4
      100 CAPTURE                          UPVAL U5
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R7
      105 NEWTABLE                         R16 0 2
      107 MOVE                             R17 R4
      108 GETTABLEKS                       R18 R0 K11 ["onColorChanged"]
      110 SETLIST                          R16 R17 2 [1]
      112 CALL                             R14 2 1
      113 GETUPVAL                         R15 4
      114 GETTABLEKS                       R15 R15 K10 ["useCallback"]
      116 NEWCLOSURE                       R16 P5
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R2
      119 NEWTABLE                         R17 0 2
      121 MOVE                             R18 R6
      122 GETTABLEKS                       R19 R2 K12 ["disable"]
      124 SETLIST                          R17 R18 2 [1]
      126 CALL                             R15 2 1
      127 GETUPVAL                         R16 4
      128 GETTABLEKS                       R16 R16 K13 ["useMemo"]
      130 NEWCLOSURE                       R17 P6
      131 CAPTURE                          UPVAL U6
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U4
      134 CAPTURE                          UPVAL U7
      135 CAPTURE                          VAL R12
      136 NEWTABLE                         R18 0 2
      138 GETTABLEKS                       R19 R0 K1 ["selectedColor"]
      140 MOVE                             R20 R12
      141 SETLIST                          R18 R19 2 [1]
      143 CALL                             R16 2 1
      144 JUMPIFNOT                        R6 ; [+12]
      145 GETUPVAL                         R19 8
      146 GETTABLE                         R18 R19 R6
      147 JUMPIFNOT                        R18 ; [+7]
      148 LOADK                            R19 K14 ["LookComposerDialog"]
      149 GETUPVAL                         R21 8
      150 GETTABLE                         R20 R21 R6
      151 NAMECALL                         R17 R1 K15 ["getText"]
      153 CALL                             R17 3 1
      154 JUMPIF                           R17 ; [+3]
      155 MOVE                             R17 R6
      156 JUMP                             ; [+1]
      157 LOADNIL                          R17
      158 GETUPVAL                         R18 9
      159 GETTABLEKS                       R18 R18 K16 ["new"]
      161 CALL                             R18 0 1
      162 GETUPVAL                         R19 4
      163 GETTABLEKS                       R19 R19 K17 ["createElement"]
      165 GETUPVAL                         R20 7
      166 DUPTABLE                         R21 K23 [{["tag"] = "col gap-small auto-y", ["Size"], ["AutomaticSize"], ["LayoutOrder"]}]
      167 GETIMPORT                        R22 K25 [UDim2.new]
      169 LOADN                            R23 1
      170 LOADN                            R24 0
      171 LOADN                            R25 0
      172 LOADN                            R26 0
      173 CALL                             R22 4 1
      174 SETTABLEKS                       R22 R21 K20 ["Size"]
      176 GETIMPORT                        R22 K28 [Enum.AutomaticSize.Y]
      178 SETTABLEKS                       R22 R21 K21 ["AutomaticSize"]
      180 GETTABLEKS                       R22 R0 K22 ["LayoutOrder"]
      182 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      184 DUPTABLE                         R22 K31 [{"Title", "PopoverWrapper"}]
      185 GETUPVAL                         R23 4
      186 GETTABLEKS                       R23 R23 K17 ["createElement"]
      188 GETUPVAL                         R24 10
      189 DUPTABLE                         R25 K34 [{["Text"], ["tag"] = "auto-xy text-label-medium content-emphasis", ["LayoutOrder"]}]
      190 LOADK                            R28 K14 ["LookComposerDialog"]
      191 LOADK                            R29 K35 ["ThumbnailSkinTone"]
      192 NAMECALL                         R26 R1 K15 ["getText"]
      194 CALL                             R26 3 1
      195 SETTABLEKS                       R26 R25 K32 ["Text"]
      197 NAMECALL                         R26 R18 K36 ["getNextOrder"]
      199 CALL                             R26 1 1
      200 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      202 CALL                             R23 2 1
      203 SETTABLEKS                       R23 R22 K29 ["Title"]
      205 GETUPVAL                         R23 4
      206 GETTABLEKS                       R23 R23 K17 ["createElement"]
      208 GETUPVAL                         R24 7
      209 DUPTABLE                         R25 K38 [{["tag"] = "col gap-xsmall", ["Size"], ["LayoutOrder"]}]
      210 GETIMPORT                        R26 K25 [UDim2.new]
      212 LOADN                            R27 1
      213 LOADN                            R28 0
      214 LOADN                            R29 0
      215 LOADN                            R30 32
      216 CALL                             R26 4 1
      217 SETTABLEKS                       R26 R25 K20 ["Size"]
      219 NAMECALL                         R26 R18 K36 ["getNextOrder"]
      221 CALL                             R26 1 1
      222 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      224 DUPTABLE                         R26 K40 [{"PopoverRoot"}]
      225 GETUPVAL                         R27 4
      226 GETTABLEKS                       R27 R27 K17 ["createElement"]
      228 GETUPVAL                         R28 7
      229 DUPTABLE                         R29 K41 [{"LayoutOrder", "Size"}]
      230 NAMECALL                         R30 R18 K36 ["getNextOrder"]
      232 CALL                             R30 1 1
      233 SETTABLEKS                       R30 R29 K22 ["LayoutOrder"]
      235 GETIMPORT                        R30 K25 [UDim2.new]
      237 LOADN                            R31 1
      238 LOADN                            R32 0
      239 LOADN                            R33 0
      240 LOADN                            R34 28
      241 CALL                             R30 4 1
      242 SETTABLEKS                       R30 R29 K20 ["Size"]
      244 DUPTABLE                         R30 K43 [{"Root"}]
      245 GETUPVAL                         R31 4
      246 GETTABLEKS                       R31 R31 K17 ["createElement"]
      248 GETUPVAL                         R32 11
      249 GETTABLEKS                       R32 R32 K42 ["Root"]
      251 DUPTABLE                         R33 K45 [{"isOpen"}]
      252 GETTABLEKS                       R34 R2 K9 ["enabled"]
      254 SETTABLEKS                       R34 R33 K44 ["isOpen"]
      256 DUPTABLE                         R34 K48 [{"Anchor", "Content"}]
      257 GETUPVAL                         R35 4
      258 GETTABLEKS                       R35 R35 K17 ["createElement"]
      260 GETUPVAL                         R36 11
      261 GETTABLEKS                       R36 R36 K46 ["Anchor"]
      263 NEWTABLE                         R37 0 0
      265 DUPTABLE                         R38 K50 [{"ColorSwatchButton"}]
      266 GETUPVAL                         R39 4
      267 GETTABLEKS                       R39 R39 K17 ["createElement"]
      269 GETUPVAL                         R40 7
      270 DUPTABLE                         R41 K52 [{"tag", "Size", "onActivated"}]
      271 NEWTABLE                         R42 4 0
      273 LOADB                            R43 1
      274 SETTABLEKS                       R43 R42 K53 ["cursor-pointer row align-y-center gap-small padding-small radius-small bg-surface-100"]
      276 JUMPIFNOTEQKNIL                  R6 ; [+2]
      278 LOADB                            R43 0 +1
      279 LOADB                            R43 1
      280 SETTABLEKS                       R43 R42 K54 ["stroke-system-alert"]
      282 JUMPIFEQKNIL                     R6 ; [+2]
      284 LOADB                            R43 0 +1
      285 LOADB                            R43 1
      286 SETTABLEKS                       R43 R42 K55 ["stroke-default"]
      288 SETTABLEKS                       R42 R41 K18 ["tag"]
      290 GETIMPORT                        R42 K25 [UDim2.new]
      292 LOADN                            R43 1
      293 LOADN                            R44 0
      294 LOADN                            R45 0
      295 LOADN                            R46 28
      296 CALL                             R42 4 1
      297 SETTABLEKS                       R42 R41 K20 ["Size"]
      299 GETTABLEKS                       R42 R2 K56 ["toggle"]
      301 SETTABLEKS                       R42 R41 K51 ["onActivated"]
      303 DUPTABLE                         R42 K59 [{"ColorSwatch", "ColorLabelContainer"}]
      304 GETUPVAL                         R43 4
      305 GETTABLEKS                       R43 R43 K17 ["createElement"]
      307 LOADK                            R44 K60 ["Frame"]
      308 DUPTABLE                         R45 K64 [{["Size"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      309 GETIMPORT                        R46 K66 [UDim2.fromOffset]
      311 LOADN                            R47 18
      312 LOADN                            R48 18
      313 CALL                             R46 2 1
      314 SETTABLEKS                       R46 R45 K20 ["Size"]
      316 GETTABLEKS                       R46 R0 K1 ["selectedColor"]
      318 SETTABLEKS                       R46 R45 K61 ["BackgroundColor3"]
      320 NAMECALL                         R46 R18 K36 ["getNextOrder"]
      322 CALL                             R46 1 1
      323 SETTABLEKS                       R46 R45 K22 ["LayoutOrder"]
      325 DUPTABLE                         R46 K68 [{"UICorner"}]
      326 GETUPVAL                         R47 4
      327 GETTABLEKS                       R47 R47 K17 ["createElement"]
      329 LOADK                            R48 K67 ["UICorner"]
      330 DUPTABLE                         R49 K70 [{"CornerRadius"}]
      331 GETIMPORT                        R50 K72 [UDim.new]
      333 LOADN                            R51 0
      334 LOADN                            R52 4
      335 CALL                             R50 2 1
      336 SETTABLEKS                       R50 R49 K69 ["CornerRadius"]
      338 CALL                             R47 2 1
      339 SETTABLEKS                       R47 R46 K67 ["UICorner"]
      341 CALL                             R43 3 1
      342 SETTABLEKS                       R43 R42 K57 ["ColorSwatch"]
      344 GETUPVAL                         R43 4
      345 GETTABLEKS                       R43 R43 K17 ["createElement"]
      347 GETUPVAL                         R44 7
      348 DUPTABLE                         R45 K74 [{["tag"] = "row align-y-center gap-xsmall", ["LayoutOrder"], ["AutomaticSize"]}]
      349 NAMECALL                         R46 R18 K36 ["getNextOrder"]
      351 CALL                             R46 1 1
      352 SETTABLEKS                       R46 R45 K22 ["LayoutOrder"]
      354 GETIMPORT                        R46 K76 [Enum.AutomaticSize.X]
      356 SETTABLEKS                       R46 R45 K21 ["AutomaticSize"]
      358 DUPTABLE                         R46 K79 [{"ColorLabel", "HexErrorMessage"}]
      359 GETUPVAL                         R47 4
      360 GETTABLEKS                       R47 R47 K17 ["createElement"]
      362 GETUPVAL                         R48 12
      363 DUPTABLE                         R49 K87 [{["text"], ["label"] = "", ["size"], ["width"], ["onChanged"], ["onFocusLost"]}]
      364 SETTABLEKS                       R4 R49 K80 ["text"]
      366 GETUPVAL                         R50 13
      367 GETTABLEKS                       R50 R50 K88 ["Enums"]
      369 GETTABLEKS                       R50 R50 K89 ["InputSize"]
      371 GETTABLEKS                       R50 R50 K90 ["XSmall"]
      373 SETTABLEKS                       R50 R49 K83 ["size"]
      375 GETIMPORT                        R50 K72 [UDim.new]
      377 LOADN                            R51 0
      378 LOADN                            R52 80
      379 CALL                             R50 2 1
      380 SETTABLEKS                       R50 R49 K84 ["width"]
      382 SETTABLEKS                       R13 R49 K85 ["onChanged"]
      384 SETTABLEKS                       R14 R49 K86 ["onFocusLost"]
      386 CALL                             R47 2 1
      387 SETTABLEKS                       R47 R46 K77 ["ColorLabel"]
      389 JUMPIFNOT                        R6 ; [+52]
      390 GETUPVAL                         R47 4
      391 GETTABLEKS                       R47 R47 K17 ["createElement"]
      393 GETUPVAL                         R48 7
      394 DUPTABLE                         R49 K92 [{["tag"] = "row align-y-center", ["LayoutOrder"], ["AutomaticSize"]}]
      395 NAMECALL                         R50 R18 K36 ["getNextOrder"]
      397 CALL                             R50 1 1
      398 SETTABLEKS                       R50 R49 K22 ["LayoutOrder"]
      400 GETIMPORT                        R50 K76 [Enum.AutomaticSize.X]
      402 SETTABLEKS                       R50 R49 K21 ["AutomaticSize"]
      404 DUPTABLE                         R50 K95 [{"Spacer", "ErrorText"}]
      405 GETUPVAL                         R51 4
      406 GETTABLEKS                       R51 R51 K17 ["createElement"]
      408 LOADK                            R52 K60 ["Frame"]
      409 DUPTABLE                         R53 K98 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      410 GETIMPORT                        R54 K66 [UDim2.fromOffset]
      412 LOADN                            R55 8
      413 LOADN                            R56 0
      414 CALL                             R54 2 1
      415 SETTABLEKS                       R54 R53 K20 ["Size"]
      417 NAMECALL                         R54 R18 K36 ["getNextOrder"]
      419 CALL                             R54 1 1
      420 SETTABLEKS                       R54 R53 K22 ["LayoutOrder"]
      422 CALL                             R51 2 1
      423 SETTABLEKS                       R51 R50 K93 ["Spacer"]
      425 GETUPVAL                         R51 4
      426 GETTABLEKS                       R51 R51 K17 ["createElement"]
      428 GETUPVAL                         R52 10
      429 DUPTABLE                         R53 K100 [{["tag"] = "auto-xy text-body-small content-alert", ["Text"], ["LayoutOrder"]}]
      430 SETTABLEKS                       R17 R53 K32 ["Text"]
      432 NAMECALL                         R54 R18 K36 ["getNextOrder"]
      434 CALL                             R54 1 1
      435 SETTABLEKS                       R54 R53 K22 ["LayoutOrder"]
      437 CALL                             R51 2 1
      438 SETTABLEKS                       R51 R50 K94 ["ErrorText"]
      440 CALL                             R47 3 1
      441 JUMPIF                           R47 ; [+1]
      442 LOADNIL                          R47
      443 SETTABLEKS                       R47 R46 K78 ["HexErrorMessage"]
      445 CALL                             R43 3 1
      446 SETTABLEKS                       R43 R42 K58 ["ColorLabelContainer"]
      448 CALL                             R39 3 1
      449 SETTABLEKS                       R39 R38 K49 ["ColorSwatchButton"]
      451 CALL                             R35 3 1
      452 SETTABLEKS                       R35 R34 K46 ["Anchor"]
      454 GETUPVAL                         R35 4
      455 GETTABLEKS                       R35 R35 K17 ["createElement"]
      457 GETUPVAL                         R36 11
      458 GETTABLEKS                       R36 R36 K47 ["Content"]
      460 DUPTABLE                         R37 K105 [{["onPressedOutside"], ["side"], ["align"], ["hasArrow"] = False}]
      461 SETTABLEKS                       R15 R37 K101 ["onPressedOutside"]
      463 GETUPVAL                         R38 13
      464 GETTABLEKS                       R38 R38 K88 ["Enums"]
      466 GETTABLEKS                       R38 R38 K106 ["PopoverSide"]
      468 GETTABLEKS                       R38 R38 K107 ["Bottom"]
      470 SETTABLEKS                       R38 R37 K102 ["side"]
      472 GETUPVAL                         R38 13
      473 GETTABLEKS                       R38 R38 K88 ["Enums"]
      475 GETTABLEKS                       R38 R38 K108 ["PopoverAlign"]
      477 GETTABLEKS                       R38 R38 K109 ["Start"]
      479 SETTABLEKS                       R38 R37 K103 ["align"]
      481 GETTABLEKS                       R38 R2 K9 ["enabled"]
      483 JUMPIFNOT                        R38 ; [+93]
      484 GETUPVAL                         R38 4
      485 GETTABLEKS                       R38 R38 K17 ["createElement"]
      487 GETUPVAL                         R39 7
      488 DUPTABLE                         R40 K112 [{["tag"] = "col gap-small auto-xy padding-small stroke-default radius-small bg-surface-100", ["ClipsDescendants"] = False}]
      489 DUPTABLE                         R41 K115 [{"Picker", "Spacer", "PresetsSection"}]
      490 GETUPVAL                         R42 4
      491 GETTABLEKS                       R42 R42 K17 ["createElement"]
      493 GETUPVAL                         R43 7
      494 DUPTABLE                         R44 K116 [{"Size", "LayoutOrder"}]
      495 GETIMPORT                        R45 K66 [UDim2.fromOffset]
      497 LOADN                            R46 282
      498 LOADN                            R47 150
      499 CALL                             R45 2 1
      500 SETTABLEKS                       R45 R44 K20 ["Size"]
      502 NAMECALL                         R45 R18 K36 ["getNextOrder"]
      504 CALL                             R45 1 1
      505 SETTABLEKS                       R45 R44 K22 ["LayoutOrder"]
      507 DUPTABLE                         R45 K118 [{"ColorPickerComponent"}]
      508 GETUPVAL                         R46 4
      509 GETTABLEKS                       R46 R46 K17 ["createElement"]
      511 GETUPVAL                         R47 13
      512 GETTABLEKS                       R47 R47 K119 ["ColorPicker"]
      514 DUPTABLE                         R48 K123 [{"key", "initialColor", "availableModes", "onColorChanged"}]
      515 SETTABLEKS                       R8 R48 K120 ["key"]
      517 GETTABLEKS                       R49 R0 K1 ["selectedColor"]
      519 SETTABLEKS                       R49 R48 K121 ["initialColor"]
      521 GETUPVAL                         R49 14
      522 SETTABLEKS                       R49 R48 K122 ["availableModes"]
      524 SETTABLEKS                       R11 R48 K11 ["onColorChanged"]
      526 CALL                             R46 2 1
      527 SETTABLEKS                       R46 R45 K117 ["ColorPickerComponent"]
      529 CALL                             R42 3 1
      530 SETTABLEKS                       R42 R41 K113 ["Picker"]
      532 GETUPVAL                         R42 4
      533 GETTABLEKS                       R42 R42 K17 ["createElement"]
      535 GETUPVAL                         R43 7
      536 DUPTABLE                         R44 K116 [{"Size", "LayoutOrder"}]
      537 GETIMPORT                        R45 K66 [UDim2.fromOffset]
      539 LOADN                            R46 282
      540 LOADN                            R47 65
      541 CALL                             R45 2 1
      542 SETTABLEKS                       R45 R44 K20 ["Size"]
      544 NAMECALL                         R45 R18 K36 ["getNextOrder"]
      546 CALL                             R45 1 1
      547 SETTABLEKS                       R45 R44 K22 ["LayoutOrder"]
      549 CALL                             R42 2 1
      550 SETTABLEKS                       R42 R41 K93 ["Spacer"]
      552 GETUPVAL                         R42 4
      553 GETTABLEKS                       R42 R42 K17 ["createElement"]
      555 GETUPVAL                         R43 7
      556 DUPTABLE                         R44 K126 [{["tag"] = "align-x-center", ["layout"], ["LayoutOrder"], ["Size"]}]
      557 GETUPVAL                         R45 15
      558 SETTABLEKS                       R45 R44 K125 ["layout"]
      560 NAMECALL                         R45 R18 K36 ["getNextOrder"]
      562 CALL                             R45 1 1
      563 SETTABLEKS                       R45 R44 K22 ["LayoutOrder"]
      565 GETIMPORT                        R45 K66 [UDim2.fromOffset]
      567 LOADN                            R46 282
      568 LOADN                            R47 52
      569 CALL                             R45 2 1
      570 SETTABLEKS                       R45 R44 K20 ["Size"]
      572 MOVE                             R45 R16
      573 CALL                             R42 3 1
      574 SETTABLEKS                       R42 R41 K114 ["PresetsSection"]
      576 CALL                             R38 3 1
      577 CALL                             R35 3 1
      578 SETTABLEKS                       R35 R34 K47 ["Content"]
      580 CALL                             R31 3 1
      581 SETTABLEKS                       R31 R30 K42 ["Root"]
      583 CALL                             R27 3 1
      584 SETTABLEKS                       R27 R26 K39 ["PopoverRoot"]
      586 CALL                             R23 3 1
      587 SETTABLEKS                       R23 R22 K30 ["PopoverWrapper"]
      589 CALL                             R19 3 -1
      590 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["TextInput"]
       27 GETTABLEKS                       R6 R2 K12 ["Popover"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R8 R0 K6 ["Packages"]
       33 GETTABLEKS                       R8 R8 K13 ["Framework"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R8 R7 K14 ["ContextServices"]
       38 GETTABLEKS                       R8 R8 K15 ["Localization"]
       40 GETTABLEKS                       R9 R7 K16 ["Util"]
       42 GETTABLEKS                       R9 R9 K17 ["LayoutOrderIterator"]
       44 GETIMPORT                        R10 K5 [require]
       46 GETTABLEKS                       R11 R0 K18 ["Src"]
       48 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       50 GETTABLEKS                       R11 R11 K20 ["useToggleState"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R12 R0 K18 ["Src"]
       57 GETTABLEKS                       R12 R12 K21 ["Flags"]
       59 GETTABLEKS                       R12 R12 K22 ["getFFlagAvatarPreviewerLookComposer"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R0 K18 ["Src"]
       66 GETTABLEKS                       R13 R13 K16 ["Util"]
       68 GETTABLEKS                       R13 R13 K23 ["ColorPickerUtil"]
       70 CALL                             R12 1 1
       71 GETTABLEKS                       R13 R12 K24 ["color3ToHex"]
       73 GETTABLEKS                       R14 R12 K25 ["hexToColor3"]
       75 DUPTABLE                         R15 K31 [{["FillDirection"], ["SortOrder"], ["Wraps"] = True, ["Padding"]}]
       76 GETIMPORT                        R16 K34 [Enum.FillDirection.Horizontal]
       78 SETTABLEKS                       R16 R15 K26 ["FillDirection"]
       80 GETIMPORT                        R16 K36 [Enum.SortOrder.LayoutOrder]
       82 SETTABLEKS                       R16 R15 K27 ["SortOrder"]
       84 GETIMPORT                        R16 K39 [UDim.new]
       86 LOADN                            R17 0
       87 LOADN                            R18 4
       88 CALL                             R16 2 1
       89 SETTABLEKS                       R16 R15 K30 ["Padding"]
       91 NEWTABLE                         R16 0 20
       93 GETIMPORT                        R17 K42 [Color3.fromHex]
       95 LOADK                            R18 K43 ["#312C25"]
       96 CALL                             R17 1 1
       97 GETIMPORT                        R18 K42 [Color3.fromHex]
       99 LOADK                            R19 K44 ["#3D2F25"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R19 K42 [Color3.fromHex]
      103 LOADK                            R20 K45 ["#5A462E"]
      104 CALL                             R19 1 1
      105 GETIMPORT                        R20 K42 [Color3.fromHex]
      107 LOADK                            R21 K46 ["#60392D"]
      108 CALL                             R20 1 1
      109 GETIMPORT                        R21 K42 [Color3.fromHex]
      111 LOADK                            R22 K47 ["#594234"]
      112 CALL                             R21 1 1
      113 GETIMPORT                        R22 K42 [Color3.fromHex]
      115 LOADK                            R23 K48 ["#8F5424"]
      116 CALL                             R22 1 1
      117 GETIMPORT                        R23 K42 [Color3.fromHex]
      119 LOADK                            R24 K49 ["#74573E"]
      120 CALL                             R23 1 1
      121 GETIMPORT                        R24 K42 [Color3.fromHex]
      123 LOADK                            R25 K50 ["#765243"]
      124 CALL                             R24 1 1
      125 GETIMPORT                        R25 K42 [Color3.fromHex]
      127 LOADK                            R26 K51 ["#AE7966"]
      128 CALL                             R25 1 1
      129 GETIMPORT                        R26 K42 [Color3.fromHex]
      131 LOADK                            R27 K52 ["#AE9381"]
      132 CALL                             R26 1 1
      133 GETIMPORT                        R27 K42 [Color3.fromHex]
      135 LOADK                            R28 K53 ["#CC8E69"]
      136 CALL                             R27 1 1
      137 GETIMPORT                        R28 K42 [Color3.fromHex]
      139 LOADK                            R29 K54 ["#D4A784"]
      140 CALL                             R28 1 1
      141 GETIMPORT                        R29 K42 [Color3.fromHex]
      143 LOADK                            R30 K55 ["#D49E8C"]
      144 CALL                             R29 1 1
      145 GETIMPORT                        R30 K42 [Color3.fromHex]
      147 LOADK                            R31 K56 ["#E8BAAA"]
      148 CALL                             R30 1 1
      149 GETIMPORT                        R31 K42 [Color3.fromHex]
      151 LOADK                            R32 K57 ["#E8B995"]
      152 CALL                             R31 1 1
      153 GETIMPORT                        R32 K42 [Color3.fromHex]
      155 LOADK                            R33 K58 ["#EED6B5"]
      156 CALL                             R32 1 1
      157 SETLIST                          R16 R17 16 [1]
      159 GETIMPORT                        R17 K42 [Color3.fromHex]
      161 LOADK                            R18 K59 ["#F8F8F8"]
      162 CALL                             R17 1 1
      163 GETIMPORT                        R18 K42 [Color3.fromHex]
      165 LOADK                            R19 K60 ["#CDCDCD"]
      166 CALL                             R18 1 1
      167 GETIMPORT                        R19 K42 [Color3.fromHex]
      169 LOADK                            R20 K61 ["#A3A2A5"]
      170 CALL                             R19 1 1
      171 GETIMPORT                        R20 K42 [Color3.fromHex]
      173 LOADK                            R21 K62 ["#635F62"]
      174 CALL                             R20 1 -1
      175 SETLIST                          R16 R17 -1 [17]
      177 DUPTABLE                         R17 K69 [{["InvalidHexCharacters"] = "ErrorInvalidHexCharacters", ["HexCharCount"] = "ErrorHexCharCount", ["FailedToParseHex"] = "ErrorFailedToParseHex"}]
      178 NEWTABLE                         R18 0 2
      180 LOADK                            R19 K70 ["RGB"]
      181 LOADK                            R20 K71 ["HSV"]
      182 SETLIST                          R18 R19 2 [1]
      184 DUPCLOSURE                       R19 K72 [PROTO_9]
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R18
      200 CAPTURE                          VAL R15
      201 RETURN                           R19 1
