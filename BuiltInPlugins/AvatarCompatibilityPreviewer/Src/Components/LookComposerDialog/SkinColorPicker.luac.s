PROTO_0:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETTABLEKS                       R2 R0 K1 ["fromPicker"]
        5 NOT                              R1 R2
        6 GETUPVAL                         R2 0
        7 DUPTABLE                         R3 K3 [{"fromPicker", "previousColor"}]
        8 LOADB                            R4 0
        9 SETTABLEKS                       R4 R3 K1 ["fromPicker"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K4 ["selectedColor"]
       14 SETTABLEKS                       R4 R3 K2 ["previousColor"]
       16 SETTABLEKS                       R3 R2 K0 ["current"]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 3
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K4 ["selectedColor"]
       23 CALL                             R3 1 -1
       24 CALL                             R2 -1 0
       25 GETUPVAL                         R2 4
       26 LOADNIL                          R3
       27 CALL                             R2 1 0
       28 GETUPVAL                         R3 5
       29 GETTABLEKS                       R2 R3 K5 ["enabled"]
       31 JUMPIFNOT                        R2 ; [+11]
       32 JUMPIFNOT                        R1 ; [+10]
       33 GETTABLEKS                       R2 R0 K2 ["previousColor"]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R3 R4 K4 ["selectedColor"]
       38 JUMPIFEQ                         R2 R3 ; [+4]
       40 GETUPVAL                         R2 6
       41 DUPCLOSURE                       R3 K6 [PROTO_0]
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 LOADB                            R3 1
        4 SETTABLEKS                       R3 R2 K1 ["fromPicker"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["onColorChanged"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R1 K1 ["fromPicker"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K2 ["onColorChanged"]
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
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R2 R3 K0 ["current"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K1 ["fromPicker"]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R2 R3 K2 ["onColorChanged"]
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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["disable"]
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
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R7 R8 K2 ["selectedColor"]
       10 JUMPIFEQ                         R5 R7 ; [+2]
       12 LOADB                            R6 0 +1
       13 LOADB                            R6 1
       14 FASTCALL1                        TOSTRING R4 ; [+3]
       15 MOVE                             R8 R4
       16 GETIMPORT                        R7 K4 [tostring]
       18 CALL                             R7 1 1
       19 GETUPVAL                         R9 2
       20 GETTABLEKS                       R8 R9 K5 ["createElement"]
       22 GETUPVAL                         R9 3
       23 DUPTABLE                         R10 K10 [{"tag", "Size", "LayoutOrder", "onActivated"}]
       24 LOADK                            R11 K11 ["radius-small stroke-standard stroke-default"]
       25 SETTABLEKS                       R11 R10 K6 ["tag"]
       27 GETIMPORT                        R11 K14 [UDim2.fromOffset]
       29 LOADN                            R12 24
       30 LOADN                            R13 24
       31 CALL                             R11 2 1
       32 SETTABLEKS                       R11 R10 K7 ["Size"]
       34 SETTABLEKS                       R4 R10 K8 ["LayoutOrder"]
       36 NEWCLOSURE                       R11 P0
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R5
       39 SETTABLEKS                       R11 R10 K9 ["onActivated"]
       41 DUPTABLE                         R11 K16 [{"ColorSwatch"}]
       42 GETUPVAL                         R13 2
       43 GETTABLEKS                       R12 R13 K5 ["createElement"]
       45 LOADK                            R13 K17 ["Frame"]
       46 DUPTABLE                         R14 K20 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
       47 GETIMPORT                        R15 K22 [UDim2.new]
       49 LOADN                            R16 1
       50 LOADN                            R17 0
       51 LOADN                            R18 1
       52 LOADN                            R19 0
       53 CALL                             R15 4 1
       54 SETTABLEKS                       R15 R14 K7 ["Size"]
       56 SETTABLEKS                       R5 R14 K18 ["BackgroundColor3"]
       58 JUMPIFNOT                        R6 ; [+2]
       59 LOADN                            R15 2
       60 JUMP                             ; [+1]
       61 LOADN                            R15 1
       62 SETTABLEKS                       R15 R14 K19 ["BorderSizePixel"]
       64 DUPTABLE                         R15 K24 [{"UICorner"}]
       65 GETUPVAL                         R17 2
       66 GETTABLEKS                       R16 R17 K5 ["createElement"]
       68 LOADK                            R17 K23 ["UICorner"]
       69 DUPTABLE                         R18 K26 [{"CornerRadius"}]
       70 GETIMPORT                        R19 K28 [UDim.new]
       72 LOADN                            R20 0
       73 LOADN                            R21 4
       74 CALL                             R19 2 1
       75 SETTABLEKS                       R19 R18 K25 ["CornerRadius"]
       77 CALL                             R16 2 1
       78 SETTABLEKS                       R16 R15 K23 ["UICorner"]
       80 CALL                             R12 3 1
       81 SETTABLEKS                       R12 R11 K15 ["ColorSwatch"]
       83 CALL                             R8 3 1
       84 SETTABLE                         R8 R0 R7
       85 FORGLOOP                         R1 2 [inext] ; [-79]
       87 RETURN                           R0 1

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
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R4 R5 K2 ["useState"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 2
       21 GETUPVAL                         R7 4
       22 GETTABLEKS                       R6 R7 K2 ["useState"]
       24 LOADNIL                          R7
       25 CALL                             R6 1 2
       26 GETUPVAL                         R9 4
       27 GETTABLEKS                       R8 R9 K2 ["useState"]
       29 LOADN                            R9 0
       30 CALL                             R8 1 2
       31 GETUPVAL                         R11 4
       32 GETTABLEKS                       R10 R11 K3 ["useRef"]
       34 DUPTABLE                         R11 K6 [{"fromPicker", "previousColor"}]
       35 LOADB                            R12 0
       36 SETTABLEKS                       R12 R11 K4 ["fromPicker"]
       38 GETTABLEKS                       R12 R0 K1 ["selectedColor"]
       40 SETTABLEKS                       R12 R11 K5 ["previousColor"]
       42 CALL                             R10 1 1
       43 GETUPVAL                         R12 4
       44 GETTABLEKS                       R11 R12 K7 ["useEffect"]
       46 NEWCLOSURE                       R12 P0
       47 CAPTURE                          VAL R10
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R5
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R9
       54 NEWTABLE                         R13 0 2
       56 GETTABLEKS                       R14 R0 K1 ["selectedColor"]
       58 GETTABLEKS                       R15 R2 K8 ["enabled"]
       60 SETLIST                          R13 R14 2 [1]
       62 CALL                             R11 2 0
       63 GETUPVAL                         R12 4
       64 GETTABLEKS                       R11 R12 K9 ["useCallback"]
       66 NEWCLOSURE                       R12 P1
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R13 0 1
       71 GETTABLEKS                       R14 R0 K10 ["onColorChanged"]
       73 SETLIST                          R13 R14 1 [1]
       75 CALL                             R11 2 1
       76 GETUPVAL                         R13 4
       77 GETTABLEKS                       R12 R13 K9 ["useCallback"]
       79 NEWCLOSURE                       R13 P2
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R0
       82 NEWTABLE                         R14 0 1
       84 GETTABLEKS                       R15 R0 K10 ["onColorChanged"]
       86 SETLIST                          R14 R15 1 [1]
       88 CALL                             R12 2 1
       89 GETUPVAL                         R14 4
       90 GETTABLEKS                       R13 R14 K9 ["useCallback"]
       92 NEWCLOSURE                       R14 P3
       93 CAPTURE                          VAL R5
       94 CAPTURE                          UPVAL U5
       95 CAPTURE                          VAL R7
       96 NEWTABLE                         R15 0 0
       98 CALL                             R13 2 1
       99 GETUPVAL                         R15 4
      100 GETTABLEKS                       R14 R15 K9 ["useCallback"]
      102 NEWCLOSURE                       R15 P4
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R7
      108 NEWTABLE                         R16 0 2
      110 MOVE                             R17 R4
      111 GETTABLEKS                       R18 R0 K10 ["onColorChanged"]
      113 SETLIST                          R16 R17 2 [1]
      115 CALL                             R14 2 1
      116 GETUPVAL                         R16 4
      117 GETTABLEKS                       R15 R16 K9 ["useCallback"]
      119 NEWCLOSURE                       R16 P5
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R2
      122 NEWTABLE                         R17 0 2
      124 MOVE                             R18 R6
      125 GETTABLEKS                       R19 R2 K11 ["disable"]
      127 SETLIST                          R17 R18 2 [1]
      129 CALL                             R15 2 1
      130 GETUPVAL                         R17 4
      131 GETTABLEKS                       R16 R17 K12 ["useMemo"]
      133 NEWCLOSURE                       R17 P6
      134 CAPTURE                          UPVAL U6
      135 CAPTURE                          VAL R0
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          UPVAL U7
      138 CAPTURE                          VAL R12
      139 NEWTABLE                         R18 0 2
      141 GETTABLEKS                       R19 R0 K1 ["selectedColor"]
      143 MOVE                             R20 R12
      144 SETLIST                          R18 R19 2 [1]
      146 CALL                             R16 2 1
      147 JUMPIFNOT                        R6 ; [+12]
      148 GETUPVAL                         R19 8
      149 GETTABLE                         R18 R19 R6
      150 JUMPIFNOT                        R18 ; [+7]
      151 LOADK                            R19 K13 ["LookComposerDialog"]
      152 GETUPVAL                         R21 8
      153 GETTABLE                         R20 R21 R6
      154 NAMECALL                         R17 R1 K14 ["getText"]
      156 CALL                             R17 3 1
      157 JUMPIF                           R17 ; [+3]
      158 MOVE                             R17 R6
      159 JUMP                             ; [+1]
      160 LOADNIL                          R17
      161 GETUPVAL                         R19 9
      162 GETTABLEKS                       R18 R19 K15 ["new"]
      164 CALL                             R18 0 1
      165 GETUPVAL                         R20 4
      166 GETTABLEKS                       R19 R20 K16 ["createElement"]
      168 GETUPVAL                         R20 7
      169 DUPTABLE                         R21 K21 [{"tag", "Size", "AutomaticSize", "LayoutOrder"}]
      170 LOADK                            R22 K22 ["col gap-small auto-y"]
      171 SETTABLEKS                       R22 R21 K17 ["tag"]
      173 GETIMPORT                        R22 K24 [UDim2.new]
      175 LOADN                            R23 1
      176 LOADN                            R24 0
      177 LOADN                            R25 0
      178 LOADN                            R26 0
      179 CALL                             R22 4 1
      180 SETTABLEKS                       R22 R21 K18 ["Size"]
      182 GETIMPORT                        R22 K27 [Enum.AutomaticSize.Y]
      184 SETTABLEKS                       R22 R21 K19 ["AutomaticSize"]
      186 GETTABLEKS                       R22 R0 K20 ["LayoutOrder"]
      188 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      190 DUPTABLE                         R22 K30 [{"Title", "PopoverWrapper"}]
      191 GETUPVAL                         R24 4
      192 GETTABLEKS                       R23 R24 K16 ["createElement"]
      194 GETUPVAL                         R24 10
      195 DUPTABLE                         R25 K32 [{"Text", "tag", "LayoutOrder"}]
      196 LOADK                            R28 K13 ["LookComposerDialog"]
      197 LOADK                            R29 K33 ["ThumbnailSkinTone"]
      198 NAMECALL                         R26 R1 K14 ["getText"]
      200 CALL                             R26 3 1
      201 SETTABLEKS                       R26 R25 K31 ["Text"]
      203 LOADK                            R26 K34 ["text-label-medium auto-xy content-emphasis"]
      204 SETTABLEKS                       R26 R25 K17 ["tag"]
      206 NAMECALL                         R26 R18 K35 ["getNextOrder"]
      208 CALL                             R26 1 1
      209 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      211 CALL                             R23 2 1
      212 SETTABLEKS                       R23 R22 K28 ["Title"]
      214 GETUPVAL                         R24 4
      215 GETTABLEKS                       R23 R24 K16 ["createElement"]
      217 GETUPVAL                         R24 7
      218 DUPTABLE                         R25 K36 [{"tag", "Size", "LayoutOrder"}]
      219 LOADK                            R26 K37 ["col gap-xsmall"]
      220 SETTABLEKS                       R26 R25 K17 ["tag"]
      222 GETIMPORT                        R26 K24 [UDim2.new]
      224 LOADN                            R27 1
      225 LOADN                            R28 0
      226 LOADN                            R29 0
      227 LOADN                            R30 32
      228 CALL                             R26 4 1
      229 SETTABLEKS                       R26 R25 K18 ["Size"]
      231 NAMECALL                         R26 R18 K35 ["getNextOrder"]
      233 CALL                             R26 1 1
      234 SETTABLEKS                       R26 R25 K20 ["LayoutOrder"]
      236 DUPTABLE                         R26 K39 [{"PopoverRoot"}]
      237 GETUPVAL                         R28 4
      238 GETTABLEKS                       R27 R28 K16 ["createElement"]
      240 GETUPVAL                         R28 7
      241 DUPTABLE                         R29 K40 [{"LayoutOrder", "Size"}]
      242 NAMECALL                         R30 R18 K35 ["getNextOrder"]
      244 CALL                             R30 1 1
      245 SETTABLEKS                       R30 R29 K20 ["LayoutOrder"]
      247 GETIMPORT                        R30 K24 [UDim2.new]
      249 LOADN                            R31 1
      250 LOADN                            R32 0
      251 LOADN                            R33 0
      252 LOADN                            R34 28
      253 CALL                             R30 4 1
      254 SETTABLEKS                       R30 R29 K18 ["Size"]
      256 DUPTABLE                         R30 K42 [{"Root"}]
      257 GETUPVAL                         R32 4
      258 GETTABLEKS                       R31 R32 K16 ["createElement"]
      260 GETUPVAL                         R33 11
      261 GETTABLEKS                       R32 R33 K41 ["Root"]
      263 DUPTABLE                         R33 K44 [{"isOpen"}]
      264 GETTABLEKS                       R34 R2 K8 ["enabled"]
      266 SETTABLEKS                       R34 R33 K43 ["isOpen"]
      268 DUPTABLE                         R34 K47 [{"Anchor", "Content"}]
      269 GETUPVAL                         R36 4
      270 GETTABLEKS                       R35 R36 K16 ["createElement"]
      272 GETUPVAL                         R37 11
      273 GETTABLEKS                       R36 R37 K45 ["Anchor"]
      275 NEWTABLE                         R37 0 0
      277 DUPTABLE                         R38 K49 [{"ColorSwatchButton"}]
      278 GETUPVAL                         R40 4
      279 GETTABLEKS                       R39 R40 K16 ["createElement"]
      281 GETUPVAL                         R40 7
      282 DUPTABLE                         R41 K51 [{"tag", "Size", "onActivated"}]
      283 NEWTABLE                         R42 4 0
      285 LOADB                            R43 1
      286 SETTABLEKS                       R43 R42 K52 ["bg-surface-100 row align-y-center gap-small padding-small radius-small cursor-pointer"]
      288 JUMPIFNOTEQKNIL                  R6 ; [+2]
      290 LOADB                            R43 0 +1
      291 LOADB                            R43 1
      292 SETTABLEKS                       R43 R42 K53 ["stroke-system-alert"]
      294 JUMPIFEQKNIL                     R6 ; [+2]
      296 LOADB                            R43 0 +1
      297 LOADB                            R43 1
      298 SETTABLEKS                       R43 R42 K54 ["stroke-default"]
      300 SETTABLEKS                       R42 R41 K17 ["tag"]
      302 GETIMPORT                        R42 K24 [UDim2.new]
      304 LOADN                            R43 1
      305 LOADN                            R44 0
      306 LOADN                            R45 0
      307 LOADN                            R46 28
      308 CALL                             R42 4 1
      309 SETTABLEKS                       R42 R41 K18 ["Size"]
      311 GETTABLEKS                       R42 R2 K55 ["toggle"]
      313 SETTABLEKS                       R42 R41 K50 ["onActivated"]
      315 DUPTABLE                         R42 K58 [{"ColorSwatch", "ColorLabelContainer"}]
      316 GETUPVAL                         R44 4
      317 GETTABLEKS                       R43 R44 K16 ["createElement"]
      319 LOADK                            R44 K59 ["Frame"]
      320 DUPTABLE                         R45 K62 [{"Size", "BackgroundColor3", "BorderSizePixel", "LayoutOrder"}]
      321 GETIMPORT                        R46 K64 [UDim2.fromOffset]
      323 LOADN                            R47 18
      324 LOADN                            R48 18
      325 CALL                             R46 2 1
      326 SETTABLEKS                       R46 R45 K18 ["Size"]
      328 GETTABLEKS                       R46 R0 K1 ["selectedColor"]
      330 SETTABLEKS                       R46 R45 K60 ["BackgroundColor3"]
      332 LOADN                            R46 0
      333 SETTABLEKS                       R46 R45 K61 ["BorderSizePixel"]
      335 NAMECALL                         R46 R18 K35 ["getNextOrder"]
      337 CALL                             R46 1 1
      338 SETTABLEKS                       R46 R45 K20 ["LayoutOrder"]
      340 DUPTABLE                         R46 K66 [{"UICorner"}]
      341 GETUPVAL                         R48 4
      342 GETTABLEKS                       R47 R48 K16 ["createElement"]
      344 LOADK                            R48 K65 ["UICorner"]
      345 DUPTABLE                         R49 K68 [{"CornerRadius"}]
      346 GETIMPORT                        R50 K70 [UDim.new]
      348 LOADN                            R51 0
      349 LOADN                            R52 4
      350 CALL                             R50 2 1
      351 SETTABLEKS                       R50 R49 K67 ["CornerRadius"]
      353 CALL                             R47 2 1
      354 SETTABLEKS                       R47 R46 K65 ["UICorner"]
      356 CALL                             R43 3 1
      357 SETTABLEKS                       R43 R42 K56 ["ColorSwatch"]
      359 GETUPVAL                         R44 4
      360 GETTABLEKS                       R43 R44 K16 ["createElement"]
      362 GETUPVAL                         R44 7
      363 DUPTABLE                         R45 K71 [{"tag", "LayoutOrder", "AutomaticSize"}]
      364 LOADK                            R46 K72 ["row align-y-center gap-xsmall"]
      365 SETTABLEKS                       R46 R45 K17 ["tag"]
      367 NAMECALL                         R46 R18 K35 ["getNextOrder"]
      369 CALL                             R46 1 1
      370 SETTABLEKS                       R46 R45 K20 ["LayoutOrder"]
      372 GETIMPORT                        R46 K74 [Enum.AutomaticSize.X]
      374 SETTABLEKS                       R46 R45 K19 ["AutomaticSize"]
      376 DUPTABLE                         R46 K77 [{"ColorLabel", "HexErrorMessage"}]
      377 GETUPVAL                         R48 4
      378 GETTABLEKS                       R47 R48 K16 ["createElement"]
      380 GETUPVAL                         R48 12
      381 DUPTABLE                         R49 K84 [{"text", "label", "size", "width", "onChanged", "onFocusLost"}]
      382 SETTABLEKS                       R4 R49 K78 ["text"]
      384 LOADK                            R50 K85 [""]
      385 SETTABLEKS                       R50 R49 K79 ["label"]
      387 GETUPVAL                         R53 13
      388 GETTABLEKS                       R52 R53 K86 ["Enums"]
      390 GETTABLEKS                       R51 R52 K87 ["InputSize"]
      392 GETTABLEKS                       R50 R51 K88 ["XSmall"]
      394 SETTABLEKS                       R50 R49 K80 ["size"]
      396 GETIMPORT                        R50 K70 [UDim.new]
      398 LOADN                            R51 0
      399 LOADN                            R52 80
      400 CALL                             R50 2 1
      401 SETTABLEKS                       R50 R49 K81 ["width"]
      403 SETTABLEKS                       R13 R49 K82 ["onChanged"]
      405 SETTABLEKS                       R14 R49 K83 ["onFocusLost"]
      407 CALL                             R47 2 1
      408 SETTABLEKS                       R47 R46 K75 ["ColorLabel"]
      410 JUMPIFNOT                        R6 ; [+61]
      411 GETUPVAL                         R48 4
      412 GETTABLEKS                       R47 R48 K16 ["createElement"]
      414 GETUPVAL                         R48 7
      415 DUPTABLE                         R49 K71 [{"tag", "LayoutOrder", "AutomaticSize"}]
      416 LOADK                            R50 K89 ["row align-y-center"]
      417 SETTABLEKS                       R50 R49 K17 ["tag"]
      419 NAMECALL                         R50 R18 K35 ["getNextOrder"]
      421 CALL                             R50 1 1
      422 SETTABLEKS                       R50 R49 K20 ["LayoutOrder"]
      424 GETIMPORT                        R50 K74 [Enum.AutomaticSize.X]
      426 SETTABLEKS                       R50 R49 K19 ["AutomaticSize"]
      428 DUPTABLE                         R50 K92 [{"Spacer", "ErrorText"}]
      429 GETUPVAL                         R52 4
      430 GETTABLEKS                       R51 R52 K16 ["createElement"]
      432 LOADK                            R52 K59 ["Frame"]
      433 DUPTABLE                         R53 K94 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      434 GETIMPORT                        R54 K64 [UDim2.fromOffset]
      436 LOADN                            R55 8
      437 LOADN                            R56 0
      438 CALL                             R54 2 1
      439 SETTABLEKS                       R54 R53 K18 ["Size"]
      441 LOADN                            R54 1
      442 SETTABLEKS                       R54 R53 K93 ["BackgroundTransparency"]
      444 NAMECALL                         R54 R18 K35 ["getNextOrder"]
      446 CALL                             R54 1 1
      447 SETTABLEKS                       R54 R53 K20 ["LayoutOrder"]
      449 CALL                             R51 2 1
      450 SETTABLEKS                       R51 R50 K90 ["Spacer"]
      452 GETUPVAL                         R52 4
      453 GETTABLEKS                       R51 R52 K16 ["createElement"]
      455 GETUPVAL                         R52 10
      456 DUPTABLE                         R53 K95 [{"tag", "Text", "LayoutOrder"}]
      457 LOADK                            R54 K96 ["text-body-small content-alert auto-xy"]
      458 SETTABLEKS                       R54 R53 K17 ["tag"]
      460 SETTABLEKS                       R17 R53 K31 ["Text"]
      462 NAMECALL                         R54 R18 K35 ["getNextOrder"]
      464 CALL                             R54 1 1
      465 SETTABLEKS                       R54 R53 K20 ["LayoutOrder"]
      467 CALL                             R51 2 1
      468 SETTABLEKS                       R51 R50 K91 ["ErrorText"]
      470 CALL                             R47 3 1
      471 JUMPIF                           R47 ; [+1]
      472 LOADNIL                          R47
      473 SETTABLEKS                       R47 R46 K76 ["HexErrorMessage"]
      475 CALL                             R43 3 1
      476 SETTABLEKS                       R43 R42 K57 ["ColorLabelContainer"]
      478 CALL                             R39 3 1
      479 SETTABLEKS                       R39 R38 K48 ["ColorSwatchButton"]
      481 CALL                             R35 3 1
      482 SETTABLEKS                       R35 R34 K45 ["Anchor"]
      484 GETUPVAL                         R36 4
      485 GETTABLEKS                       R35 R36 K16 ["createElement"]
      487 GETUPVAL                         R37 11
      488 GETTABLEKS                       R36 R37 K46 ["Content"]
      490 DUPTABLE                         R37 K101 [{"onPressedOutside", "side", "align", "hasArrow"}]
      491 SETTABLEKS                       R15 R37 K97 ["onPressedOutside"]
      493 GETUPVAL                         R41 13
      494 GETTABLEKS                       R40 R41 K86 ["Enums"]
      496 GETTABLEKS                       R39 R40 K102 ["PopoverSide"]
      498 GETTABLEKS                       R38 R39 K103 ["Bottom"]
      500 SETTABLEKS                       R38 R37 K98 ["side"]
      502 GETUPVAL                         R41 13
      503 GETTABLEKS                       R40 R41 K86 ["Enums"]
      505 GETTABLEKS                       R39 R40 K104 ["PopoverAlign"]
      507 GETTABLEKS                       R38 R39 K105 ["Start"]
      509 SETTABLEKS                       R38 R37 K99 ["align"]
      511 LOADB                            R38 0
      512 SETTABLEKS                       R38 R37 K100 ["hasArrow"]
      514 GETTABLEKS                       R38 R2 K8 ["enabled"]
      516 JUMPIFNOT                        R38 ; [+102]
      517 GETUPVAL                         R39 4
      518 GETTABLEKS                       R38 R39 K16 ["createElement"]
      520 GETUPVAL                         R39 7
      521 DUPTABLE                         R40 K107 [{"tag", "ClipsDescendants"}]
      522 LOADK                            R41 K108 ["col padding-small gap-small bg-surface-100 radius-small stroke-default auto-xy"]
      523 SETTABLEKS                       R41 R40 K17 ["tag"]
      525 LOADB                            R41 0
      526 SETTABLEKS                       R41 R40 K106 ["ClipsDescendants"]
      528 DUPTABLE                         R41 K111 [{"Picker", "Spacer", "PresetsSection"}]
      529 GETUPVAL                         R43 4
      530 GETTABLEKS                       R42 R43 K16 ["createElement"]
      532 GETUPVAL                         R43 7
      533 DUPTABLE                         R44 K112 [{"Size", "LayoutOrder"}]
      534 GETIMPORT                        R45 K64 [UDim2.fromOffset]
      536 LOADN                            R46 26
      537 LOADN                            R47 150
      538 CALL                             R45 2 1
      539 SETTABLEKS                       R45 R44 K18 ["Size"]
      541 NAMECALL                         R45 R18 K35 ["getNextOrder"]
      543 CALL                             R45 1 1
      544 SETTABLEKS                       R45 R44 K20 ["LayoutOrder"]
      546 DUPTABLE                         R45 K114 [{"ColorPickerComponent"}]
      547 GETUPVAL                         R47 4
      548 GETTABLEKS                       R46 R47 K16 ["createElement"]
      550 GETUPVAL                         R48 13
      551 GETTABLEKS                       R47 R48 K115 ["ColorPicker"]
      553 DUPTABLE                         R48 K119 [{"key", "initialColor", "availableModes", "onColorChanged"}]
      554 SETTABLEKS                       R8 R48 K116 ["key"]
      556 GETTABLEKS                       R49 R0 K1 ["selectedColor"]
      558 SETTABLEKS                       R49 R48 K117 ["initialColor"]
      560 GETUPVAL                         R49 14
      561 SETTABLEKS                       R49 R48 K118 ["availableModes"]
      563 SETTABLEKS                       R11 R48 K10 ["onColorChanged"]
      565 CALL                             R46 2 1
      566 SETTABLEKS                       R46 R45 K113 ["ColorPickerComponent"]
      568 CALL                             R42 3 1
      569 SETTABLEKS                       R42 R41 K109 ["Picker"]
      571 GETUPVAL                         R43 4
      572 GETTABLEKS                       R42 R43 K16 ["createElement"]
      574 GETUPVAL                         R43 7
      575 DUPTABLE                         R44 K112 [{"Size", "LayoutOrder"}]
      576 GETIMPORT                        R45 K64 [UDim2.fromOffset]
      578 LOADN                            R46 26
      579 LOADN                            R47 65
      580 CALL                             R45 2 1
      581 SETTABLEKS                       R45 R44 K18 ["Size"]
      583 NAMECALL                         R45 R18 K35 ["getNextOrder"]
      585 CALL                             R45 1 1
      586 SETTABLEKS                       R45 R44 K20 ["LayoutOrder"]
      588 CALL                             R42 2 1
      589 SETTABLEKS                       R42 R41 K90 ["Spacer"]
      591 GETUPVAL                         R43 4
      592 GETTABLEKS                       R42 R43 K16 ["createElement"]
      594 GETUPVAL                         R43 7
      595 DUPTABLE                         R44 K121 [{"tag", "layout", "LayoutOrder", "Size"}]
      596 LOADK                            R45 K122 ["align-x-center"]
      597 SETTABLEKS                       R45 R44 K17 ["tag"]
      599 GETUPVAL                         R45 15
      600 SETTABLEKS                       R45 R44 K120 ["layout"]
      602 NAMECALL                         R45 R18 K35 ["getNextOrder"]
      604 CALL                             R45 1 1
      605 SETTABLEKS                       R45 R44 K20 ["LayoutOrder"]
      607 GETIMPORT                        R45 K64 [UDim2.fromOffset]
      609 LOADN                            R46 26
      610 LOADN                            R47 52
      611 CALL                             R45 2 1
      612 SETTABLEKS                       R45 R44 K18 ["Size"]
      614 MOVE                             R45 R16
      615 CALL                             R42 3 1
      616 SETTABLEKS                       R42 R41 K110 ["PresetsSection"]
      618 CALL                             R38 3 1
      619 CALL                             R35 3 1
      620 SETTABLEKS                       R35 R34 K46 ["Content"]
      622 CALL                             R31 3 1
      623 SETTABLEKS                       R31 R30 K41 ["Root"]
      625 CALL                             R27 3 1
      626 SETTABLEKS                       R27 R26 K38 ["PopoverRoot"]
      628 CALL                             R23 3 1
      629 SETTABLEKS                       R23 R22 K29 ["PopoverWrapper"]
      631 CALL                             R19 3 -1
      632 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["TextInput"]
       27 GETTABLEKS                       R6 R2 K12 ["Popover"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R9 R0 K6 ["Packages"]
       33 GETTABLEKS                       R8 R9 K13 ["Framework"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R9 R7 K14 ["ContextServices"]
       38 GETTABLEKS                       R8 R9 K15 ["Localization"]
       40 GETTABLEKS                       R10 R7 K16 ["Util"]
       42 GETTABLEKS                       R9 R10 K17 ["LayoutOrderIterator"]
       44 GETIMPORT                        R10 K5 [require]
       46 GETTABLEKS                       R13 R0 K18 ["Src"]
       48 GETTABLEKS                       R12 R13 K19 ["Hooks"]
       50 GETTABLEKS                       R11 R12 K20 ["useToggleState"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R14 R0 K18 ["Src"]
       57 GETTABLEKS                       R13 R14 K21 ["Flags"]
       59 GETTABLEKS                       R12 R13 K22 ["getFFlagAvatarPreviewerLookComposer"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R15 R0 K18 ["Src"]
       66 GETTABLEKS                       R14 R15 K16 ["Util"]
       68 GETTABLEKS                       R13 R14 K23 ["ColorPickerUtil"]
       70 CALL                             R12 1 1
       71 GETTABLEKS                       R13 R12 K24 ["color3ToHex"]
       73 GETTABLEKS                       R14 R12 K25 ["hexToColor3"]
       75 DUPTABLE                         R15 K30 [{"FillDirection", "SortOrder", "Wraps", "Padding"}]
       76 GETIMPORT                        R16 K33 [Enum.FillDirection.Horizontal]
       78 SETTABLEKS                       R16 R15 K26 ["FillDirection"]
       80 GETIMPORT                        R16 K35 [Enum.SortOrder.LayoutOrder]
       82 SETTABLEKS                       R16 R15 K27 ["SortOrder"]
       84 LOADB                            R16 1
       85 SETTABLEKS                       R16 R15 K28 ["Wraps"]
       87 GETIMPORT                        R16 K38 [UDim.new]
       89 LOADN                            R17 0
       90 LOADN                            R18 4
       91 CALL                             R16 2 1
       92 SETTABLEKS                       R16 R15 K29 ["Padding"]
       94 NEWTABLE                         R16 0 20
       96 GETIMPORT                        R17 K41 [Color3.fromHex]
       98 LOADK                            R18 K42 ["#312C25"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K41 [Color3.fromHex]
      102 LOADK                            R19 K43 ["#3D2F25"]
      103 CALL                             R18 1 1
      104 GETIMPORT                        R19 K41 [Color3.fromHex]
      106 LOADK                            R20 K44 ["#5A462E"]
      107 CALL                             R19 1 1
      108 GETIMPORT                        R20 K41 [Color3.fromHex]
      110 LOADK                            R21 K45 ["#60392D"]
      111 CALL                             R20 1 1
      112 GETIMPORT                        R21 K41 [Color3.fromHex]
      114 LOADK                            R22 K46 ["#594234"]
      115 CALL                             R21 1 1
      116 GETIMPORT                        R22 K41 [Color3.fromHex]
      118 LOADK                            R23 K47 ["#8F5424"]
      119 CALL                             R22 1 1
      120 GETIMPORT                        R23 K41 [Color3.fromHex]
      122 LOADK                            R24 K48 ["#74573E"]
      123 CALL                             R23 1 1
      124 GETIMPORT                        R24 K41 [Color3.fromHex]
      126 LOADK                            R25 K49 ["#765243"]
      127 CALL                             R24 1 1
      128 GETIMPORT                        R25 K41 [Color3.fromHex]
      130 LOADK                            R26 K50 ["#AE7966"]
      131 CALL                             R25 1 1
      132 GETIMPORT                        R26 K41 [Color3.fromHex]
      134 LOADK                            R27 K51 ["#AE9381"]
      135 CALL                             R26 1 1
      136 GETIMPORT                        R27 K41 [Color3.fromHex]
      138 LOADK                            R28 K52 ["#CC8E69"]
      139 CALL                             R27 1 1
      140 GETIMPORT                        R28 K41 [Color3.fromHex]
      142 LOADK                            R29 K53 ["#D4A784"]
      143 CALL                             R28 1 1
      144 GETIMPORT                        R29 K41 [Color3.fromHex]
      146 LOADK                            R30 K54 ["#D49E8C"]
      147 CALL                             R29 1 1
      148 GETIMPORT                        R30 K41 [Color3.fromHex]
      150 LOADK                            R31 K55 ["#E8BAAA"]
      151 CALL                             R30 1 1
      152 GETIMPORT                        R31 K41 [Color3.fromHex]
      154 LOADK                            R32 K56 ["#E8B995"]
      155 CALL                             R31 1 1
      156 GETIMPORT                        R32 K41 [Color3.fromHex]
      158 LOADK                            R33 K57 ["#EED6B5"]
      159 CALL                             R32 1 1
      160 SETLIST                          R16 R17 16 [1]
      162 GETIMPORT                        R17 K41 [Color3.fromHex]
      164 LOADK                            R18 K58 ["#F8F8F8"]
      165 CALL                             R17 1 1
      166 GETIMPORT                        R18 K41 [Color3.fromHex]
      168 LOADK                            R19 K59 ["#CDCDCD"]
      169 CALL                             R18 1 1
      170 GETIMPORT                        R19 K41 [Color3.fromHex]
      172 LOADK                            R20 K60 ["#A3A2A5"]
      173 CALL                             R19 1 1
      174 GETIMPORT                        R20 K41 [Color3.fromHex]
      176 LOADK                            R21 K61 ["#635F62"]
      177 CALL                             R20 1 -1
      178 SETLIST                          R16 R17 -1 [17]
      180 DUPTABLE                         R17 K65 [{"InvalidHexCharacters", "HexCharCount", "FailedToParseHex"}]
      181 LOADK                            R18 K66 ["ErrorInvalidHexCharacters"]
      182 SETTABLEKS                       R18 R17 K62 ["InvalidHexCharacters"]
      184 LOADK                            R18 K67 ["ErrorHexCharCount"]
      185 SETTABLEKS                       R18 R17 K63 ["HexCharCount"]
      187 LOADK                            R18 K68 ["ErrorFailedToParseHex"]
      188 SETTABLEKS                       R18 R17 K64 ["FailedToParseHex"]
      190 NEWTABLE                         R18 0 2
      192 LOADK                            R19 K69 ["RGB"]
      193 LOADK                            R20 K70 ["HSV"]
      194 SETLIST                          R18 R19 2 [1]
      196 DUPCLOSURE                       R19 K71 [PROTO_9]
      197 CAPTURE                          VAL R11
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R10
      200 CAPTURE                          VAL R13
      201 CAPTURE                          VAL R1
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R9
      207 CAPTURE                          VAL R4
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R2
      211 CAPTURE                          VAL R18
      212 CAPTURE                          VAL R15
      213 RETURN                           R19 1
