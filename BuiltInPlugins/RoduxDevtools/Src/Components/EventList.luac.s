PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["rightAlignSizes"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSelected"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 GETTABLEKS                       R5 R0 K4 ["X"]
        5 MINUS                            R4 R5
        6 SUBK                             R3 R4 K3 [5]
        7 LOADN                            R4 1
        8 LOADN                            R5 0
        9 CALL                             R1 4 -1
       10 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["rightAlignSizes"]
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R2 R3 R4
        5 GETTABLEN                        R1 R2 2
        6 GETTABLEKS                       R2 R0 K1 ["AbsoluteContentSize"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R4 K1 ["name"]
        4 GETTABLEKS                       R6 R4 K2 ["elapsedMs"]
        6 GETUPVAL                         R8 0
        7 JUMPIFEQ                         R1 R8 ; [+2]
        9 LOADB                            R7 0 +1
       10 LOADB                            R7 1
       11 GETUPVAL                         R9 1
       12 JUMPIFEQKS                       R9 K3 [""] ; [+16]
       14 GETIMPORT                        R9 K6 [string.find]
       16 GETIMPORT                        R10 K8 [string.lower]
       18 MOVE                             R11 R5
       19 CALL                             R10 1 1
       20 GETUPVAL                         R11 1
       21 LOADN                            R12 1
       22 LOADB                            R13 1
       23 CALL                             R9 4 1
       24 JUMPIFNOTEQKNIL                  R9 ; [+2]
       26 LOADB                            R8 0 +1
       27 LOADB                            R8 1
       28 JUMP                             ; [+1]
       29 LOADB                            R8 0
       30 GETTABLEKS                       R10 R0 K9 ["eventType"]
       32 JUMPIFNOTEQKS                    R10 K10 ["Flush"] ; [+3]
       34 LOADN                            R9 6
       35 JUMP                             ; [+1]
       36 LOADN                            R9 1
       37 MULK                             R10 R9 K11 [0.75]
       38 LOADNIL                          R11
       39 JUMPIFNOTLE                      R10 R6 ; [+24]
       41 GETUPVAL                         R13 2
       42 GETUPVAL                         R14 3
       43 GETTABLEKS                       R14 R14 K12 ["ErrorText"]
       45 GETTABLE                         R12 R13 R14
       46 GETUPVAL                         R15 2
       47 GETUPVAL                         R16 3
       48 GETTABLEKS                       R16 R16 K13 ["WarningText"]
       50 GETTABLE                         R14 R15 R16
       51 SUB                              R17 R9 R6
       52 SUB                              R18 R9 R10
       53 DIV                              R16 R17 R18
       54 LOADN                            R17 0
       55 LOADN                            R18 1
       56 FASTCALL                         MATH_CLAMP ; [+2]
       57 GETIMPORT                        R15 K16 [math.clamp]
       59 CALL                             R15 3 1
       60 NAMECALL                         R12 R12 K17 ["Lerp"]
       62 CALL                             R12 3 1
       63 MOVE                             R11 R12
       64 GETUPVAL                         R13 4
       65 GETTABLEKS                       R13 R13 K18 ["rightAlignSizes"]
       67 GETTABLE                         R12 R13 R1
       68 JUMPIFNOTEQKNIL                  R12 ; [+15]
       70 GETUPVAL                         R12 4
       71 GETTABLEKS                       R12 R12 K18 ["rightAlignSizes"]
       73 NEWTABLE                         R13 0 1
       75 GETUPVAL                         R14 5
       76 GETTABLEKS                       R14 R14 K19 ["createBinding"]
       78 GETIMPORT                        R15 K22 [Vector2.zero]
       80 CALL                             R14 1 -1
       81 SETLIST                          R13 R14 -1 [1]
       83 SETTABLE                         R13 R12 R1
       84 NEWTABLE                         R12 16 0
       86 SETTABLEKS                       R1 R12 K23 ["LayoutOrder"]
       88 SETTABLEKS                       R2 R12 K24 ["Position"]
       90 SETTABLEKS                       R3 R12 K25 ["Size"]
       92 JUMPIFNOT                        R7 ; [+6]
       93 GETUPVAL                         R14 2
       94 GETUPVAL                         R15 3
       95 GETTABLEKS                       R15 R15 K26 ["MenuEntryHighlight"]
       97 GETTABLE                         R13 R14 R15
       98 JUMP                             ; [+5]
       99 GETUPVAL                         R14 2
      100 GETUPVAL                         R15 3
      101 GETTABLEKS                       R15 R15 K27 ["SecondaryMain"]
      103 GETTABLE                         R13 R14 R15
      104 SETTABLEKS                       R13 R12 K28 ["BackgroundColor3"]
      106 JUMPIF                           R7 ; [+1]
      107 JUMPIFNOT                        R8 ; [+2]
      108 LOADN                            R13 0
      109 JUMP                             ; [+1]
      110 LOADN                            R13 1
      111 SETTABLEKS                       R13 R12 K29 ["BackgroundTransparency"]
      113 LOADB                            R13 0
      114 SETTABLEKS                       R13 R12 K30 ["AutoButtonColor"]
      116 LOADK                            R13 K3 [""]
      117 SETTABLEKS                       R13 R12 K31 ["Text"]
      119 GETUPVAL                         R13 5
      120 GETTABLEKS                       R13 R13 K32 ["Event"]
      122 GETTABLEKS                       R13 R13 K33 ["Activated"]
      124 NEWCLOSURE                       R14 P0
      125 CAPTURE                          UPVAL U6
      126 CAPTURE                          VAL R1
      127 SETTABLE                         R14 R12 R13
      128 DUPTABLE                         R13 K38 [{"Padding", "Corner", "Title", "RightAligned"}]
      129 GETUPVAL                         R14 5
      130 GETTABLEKS                       R14 R14 K39 ["createElement"]
      132 LOADK                            R15 K40 ["UIPadding"]
      133 DUPTABLE                         R16 K43 [{"PaddingLeft", "PaddingRight"}]
      134 GETIMPORT                        R17 K46 [UDim.new]
      136 LOADN                            R18 0
      137 LOADN                            R19 5
      138 CALL                             R17 2 1
      139 SETTABLEKS                       R17 R16 K41 ["PaddingLeft"]
      141 GETIMPORT                        R17 K46 [UDim.new]
      143 LOADN                            R18 0
      144 LOADN                            R19 12
      145 CALL                             R17 2 1
      146 SETTABLEKS                       R17 R16 K42 ["PaddingRight"]
      148 CALL                             R14 2 1
      149 SETTABLEKS                       R14 R13 K34 ["Padding"]
      151 GETUPVAL                         R14 5
      152 GETTABLEKS                       R14 R14 K39 ["createElement"]
      154 LOADK                            R15 K47 ["UICorner"]
      155 DUPTABLE                         R16 K49 [{"CornerRadius"}]
      156 GETIMPORT                        R17 K46 [UDim.new]
      158 LOADN                            R18 0
      159 LOADN                            R19 3
      160 CALL                             R17 2 1
      161 SETTABLEKS                       R17 R16 K48 ["CornerRadius"]
      163 CALL                             R14 2 1
      164 SETTABLEKS                       R14 R13 K35 ["Corner"]
      166 GETUPVAL                         R14 5
      167 GETTABLEKS                       R14 R14 K39 ["createElement"]
      169 LOADK                            R15 K50 ["Frame"]
      170 DUPTABLE                         R16 K51 [{"BackgroundTransparency", "Size"}]
      171 LOADN                            R17 1
      172 SETTABLEKS                       R17 R16 K29 ["BackgroundTransparency"]
      174 GETUPVAL                         R19 4
      175 GETTABLEKS                       R19 R19 K18 ["rightAlignSizes"]
      177 GETTABLE                         R18 R19 R1
      178 GETTABLEN                        R17 R18 1
      179 DUPCLOSURE                       R19 K52 [PROTO_2]
      180 NAMECALL                         R17 R17 K53 ["map"]
      182 CALL                             R17 2 1
      183 SETTABLEKS                       R17 R16 K25 ["Size"]
      185 DUPTABLE                         R17 K55 [{"Label"}]
      186 GETUPVAL                         R18 5
      187 GETTABLEKS                       R18 R18 K39 ["createElement"]
      189 GETUPVAL                         R19 7
      190 DUPTABLE                         R20 K59 [{"Size", "Text", "TextColor", "TextXAlignment", "TextTruncate"}]
      191 GETIMPORT                        R21 K62 [UDim2.fromScale]
      193 LOADN                            R22 1
      194 LOADN                            R23 1
      195 CALL                             R21 2 1
      196 SETTABLEKS                       R21 R20 K25 ["Size"]
      198 SETTABLEKS                       R5 R20 K31 ["Text"]
      200 GETTABLEKS                       R22 R0 K63 ["altered"]
      202 JUMPIFNOT                        R22 ; [+11]
      203 GETTABLEKS                       R22 R0 K63 ["altered"]
      205 GETTABLEKS                       R22 R22 K64 ["skipped"]
      207 JUMPIFNOT                        R22 ; [+6]
      208 GETUPVAL                         R22 2
      209 GETUPVAL                         R23 3
      210 GETTABLEKS                       R23 R23 K65 ["SubText"]
      212 GETTABLE                         R21 R22 R23
      213 JUMP                             ; [+1]
      214 LOADNIL                          R21
      215 SETTABLEKS                       R21 R20 K56 ["TextColor"]
      217 GETIMPORT                        R21 K68 [Enum.TextXAlignment.Left]
      219 SETTABLEKS                       R21 R20 K57 ["TextXAlignment"]
      221 GETIMPORT                        R21 K70 [Enum.TextTruncate.AtEnd]
      223 SETTABLEKS                       R21 R20 K58 ["TextTruncate"]
      225 DUPTABLE                         R21 K72 [{"Strikethrough"}]
      226 GETUPVAL                         R22 5
      227 GETTABLEKS                       R22 R22 K39 ["createElement"]
      229 LOADK                            R23 K50 ["Frame"]
      230 DUPTABLE                         R24 K76 [{"Visible", "BackgroundColor3", "BorderSizePixel", "Size", "Position", "AnchorPoint"}]
      231 GETTABLEKS                       R26 R0 K63 ["altered"]
      233 JUMPIFNOT                        R26 ; [+5]
      234 GETTABLEKS                       R25 R0 K63 ["altered"]
      236 GETTABLEKS                       R25 R25 K64 ["skipped"]
      238 JUMP                             ; [+1]
      239 LOADB                            R25 0
      240 SETTABLEKS                       R25 R24 K73 ["Visible"]
      242 GETUPVAL                         R26 2
      243 GETUPVAL                         R27 3
      244 GETTABLEKS                       R27 R27 K65 ["SubText"]
      246 GETTABLE                         R25 R26 R27
      247 SETTABLEKS                       R25 R24 K28 ["BackgroundColor3"]
      249 LOADN                            R25 0
      250 SETTABLEKS                       R25 R24 K74 ["BorderSizePixel"]
      252 GETIMPORT                        R25 K77 [UDim2.new]
      254 LOADN                            R26 1
      255 LOADN                            R27 0
      256 LOADN                            R28 0
      257 LOADN                            R29 1
      258 CALL                             R25 4 1
      259 SETTABLEKS                       R25 R24 K25 ["Size"]
      261 GETIMPORT                        R25 K62 [UDim2.fromScale]
      263 LOADK                            R26 K78 [0.5]
      264 LOADK                            R27 K78 [0.5]
      265 CALL                             R25 2 1
      266 SETTABLEKS                       R25 R24 K24 ["Position"]
      268 GETIMPORT                        R25 K79 [Vector2.new]
      270 LOADK                            R26 K78 [0.5]
      271 LOADK                            R27 K78 [0.5]
      272 CALL                             R25 2 1
      273 SETTABLEKS                       R25 R24 K75 ["AnchorPoint"]
      275 CALL                             R22 2 1
      276 SETTABLEKS                       R22 R21 K71 ["Strikethrough"]
      278 CALL                             R18 3 1
      279 SETTABLEKS                       R18 R17 K54 ["Label"]
      281 CALL                             R14 3 1
      282 SETTABLEKS                       R14 R13 K36 ["Title"]
      284 GETUPVAL                         R14 5
      285 GETTABLEKS                       R14 R14 K39 ["createElement"]
      287 LOADK                            R15 K50 ["Frame"]
      288 DUPTABLE                         R16 K80 [{"BackgroundTransparency", "Size", "Position"}]
      289 LOADN                            R17 1
      290 SETTABLEKS                       R17 R16 K29 ["BackgroundTransparency"]
      292 GETIMPORT                        R17 K62 [UDim2.fromScale]
      294 LOADK                            R18 K78 [0.5]
      295 LOADN                            R19 1
      296 CALL                             R17 2 1
      297 SETTABLEKS                       R17 R16 K25 ["Size"]
      299 GETIMPORT                        R17 K62 [UDim2.fromScale]
      301 LOADK                            R18 K78 [0.5]
      302 LOADN                            R19 0
      303 CALL                             R17 2 1
      304 SETTABLEKS                       R17 R16 K24 ["Position"]
      306 DUPTABLE                         R17 K83 [{"Layout", "ElapsedMs"}]
      307 GETUPVAL                         R18 5
      308 GETTABLEKS                       R18 R18 K39 ["createElement"]
      310 LOADK                            R19 K84 ["UIListLayout"]
      311 NEWTABLE                         R20 8 0
      313 GETIMPORT                        R21 K87 [Enum.FillDirection.Horizontal]
      315 SETTABLEKS                       R21 R20 K85 ["FillDirection"]
      317 GETIMPORT                        R21 K90 [Enum.HorizontalAlignment.Right]
      319 SETTABLEKS                       R21 R20 K88 ["HorizontalAlignment"]
      321 GETIMPORT                        R21 K93 [Enum.VerticalAlignment.Center]
      323 SETTABLEKS                       R21 R20 K91 ["VerticalAlignment"]
      325 GETIMPORT                        R21 K95 [Enum.SortOrder.LayoutOrder]
      327 SETTABLEKS                       R21 R20 K94 ["SortOrder"]
      329 GETIMPORT                        R21 K46 [UDim.new]
      331 LOADN                            R22 0
      332 LOADN                            R23 5
      333 CALL                             R21 2 1
      334 SETTABLEKS                       R21 R20 K34 ["Padding"]
      336 GETUPVAL                         R21 5
      337 GETTABLEKS                       R21 R21 K96 ["Change"]
      339 GETTABLEKS                       R21 R21 K97 ["AbsoluteContentSize"]
      341 NEWCLOSURE                       R22 P2
      342 CAPTURE                          UPVAL U4
      343 CAPTURE                          VAL R1
      344 SETTABLE                         R22 R20 R21
      345 CALL                             R18 2 1
      346 SETTABLEKS                       R18 R17 K81 ["Layout"]
      348 GETUPVAL                         R18 5
      349 GETTABLEKS                       R18 R18 K39 ["createElement"]
      351 GETUPVAL                         R19 7
      352 DUPTABLE                         R20 K100 [{"Style", "Text", "TextXAlignment", "TextColor", "Size", "AutomaticSize"}]
      353 LOADK                            R21 K65 ["SubText"]
      354 SETTABLEKS                       R21 R20 K98 ["Style"]
      356 GETIMPORT                        R21 K102 [string.format]
      358 LOADK                            R22 K103 ["%.1f ms"]
      359 MOVE                             R23 R6
      360 CALL                             R21 2 1
      361 SETTABLEKS                       R21 R20 K31 ["Text"]
      363 GETIMPORT                        R21 K104 [Enum.TextXAlignment.Right]
      365 SETTABLEKS                       R21 R20 K57 ["TextXAlignment"]
      367 SETTABLEKS                       R11 R20 K56 ["TextColor"]
      369 GETIMPORT                        R21 K62 [UDim2.fromScale]
      371 LOADN                            R22 0
      372 LOADN                            R23 1
      373 CALL                             R21 2 1
      374 SETTABLEKS                       R21 R20 K25 ["Size"]
      376 GETIMPORT                        R21 K106 [Enum.AutomaticSize.X]
      378 SETTABLEKS                       R21 R20 K99 ["AutomaticSize"]
      380 CALL                             R18 2 1
      381 SETTABLEKS                       R18 R17 K82 ["ElapsedMs"]
      383 CALL                             R14 3 1
      384 SETTABLEKS                       R14 R13 K37 ["RightAligned"]
      386 SETTABLEKS                       R13 R12 K107 ["children"]
      388 RETURN                           R12 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["SelectedIndex"]
        6 GETIMPORT                        R4 K5 [string.lower]
        8 GETTABLEKS                       R5 R1 K6 ["SearchTerm"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R1 K7 ["Events"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K8 ["createElement"]
       16 GETUPVAL                         R7 1
       17 DUPTABLE                         R8 K12 [{"Rows", "RowComponent", "GetRowProps"}]
       18 SETTABLEKS                       R5 R8 K9 ["Rows"]
       20 LOADK                            R9 K13 ["TextButton"]
       21 SETTABLEKS                       R9 R8 K10 ["RowComponent"]
       23 NEWCLOSURE                       R9 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U3
       32 SETTABLEKS                       R9 R8 K11 ["GetRowProps"]
       34 CALL                             R6 2 -1
       35 RETURN                           R6 -1

PROTO_6:
        0 DUPTABLE                         R2 K3 [{"SelectedIndex", "SearchTerm", "Events"}]
        1 GETTABLEKS                       R3 R0 K4 ["selectedIndex"]
        3 SETTABLEKS                       R3 R2 K0 ["SelectedIndex"]
        5 GETTABLEKS                       R3 R0 K5 ["searchTerm"]
        7 SETTABLEKS                       R3 R2 K1 ["SearchTerm"]
        9 GETTABLEKS                       R3 R0 K6 ["events"]
       11 SETTABLEKS                       R3 R2 K2 ["Events"]
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K12 ["withContext"]
       41 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       43 GETTABLEKS                       R8 R5 K14 ["Localization"]
       45 GETTABLEKS                       R9 R4 K15 ["Style"]
       47 GETTABLEKS                       R9 R9 K16 ["Stylizer"]
       49 GETTABLEKS                       R10 R4 K15 ["Style"]
       51 GETTABLEKS                       R10 R10 K17 ["StyleKey"]
       53 GETTABLEKS                       R11 R4 K18 ["UI"]
       55 GETTABLEKS                       R12 R11 K19 ["List"]
       57 GETTABLEKS                       R13 R11 K20 ["TextLabel"]
       59 GETTABLEKS                       R14 R2 K21 ["PureComponent"]
       61 LOADK                            R16 K22 ["EventList"]
       62 NAMECALL                         R14 R14 K23 ["extend"]
       64 CALL                             R14 2 1
       65 DUPCLOSURE                       R15 K24 [PROTO_0]
       66 SETTABLEKS                       R15 R14 K25 ["init"]
       68 DUPCLOSURE                       R15 K26 [PROTO_5]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R13
       73 SETTABLEKS                       R15 R14 K27 ["render"]
       75 MOVE                             R15 R6
       76 DUPTABLE                         R16 K28 [{"Analytics", "Localization", "Stylizer"}]
       77 SETTABLEKS                       R7 R16 K13 ["Analytics"]
       79 SETTABLEKS                       R8 R16 K14 ["Localization"]
       81 SETTABLEKS                       R9 R16 K16 ["Stylizer"]
       83 CALL                             R15 1 1
       84 MOVE                             R16 R14
       85 CALL                             R15 1 1
       86 MOVE                             R14 R15
       87 GETTABLEKS                       R15 R3 K29 ["connect"]
       89 DUPCLOSURE                       R16 K30 [PROTO_6]
       90 CALL                             R15 1 1
       91 MOVE                             R16 R14
       92 CALL                             R15 1 -1
       93 RETURN                           R15 -1
