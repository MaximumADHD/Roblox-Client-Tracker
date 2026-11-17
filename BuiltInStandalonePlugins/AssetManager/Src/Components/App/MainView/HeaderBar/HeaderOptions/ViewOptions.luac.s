PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["ViewType"]
        5 NAMECALL                         R0 R0 K1 ["setBrowserLayout"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["Hooks"]
       11 GETTABLEKS                       R3 R3 K2 ["useTokens"]
       13 CALL                             R3 0 1
       14 GETTABLEKS                       R5 R0 K3 ["ViewType"]
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K3 ["ViewType"]
       19 GETTABLEKS                       R6 R6 K4 ["Grid"]
       21 JUMPIFEQ                         R5 R6 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 JUMPIFNOT                        R4 ; [+6]
       26 LOADK                            R7 K5 ["HeaderBar"]
       27 LOADK                            R8 K6 ["ViewTypeSelectGrid"]
       28 NAMECALL                         R5 R1 K7 ["getText"]
       30 CALL                             R5 3 1
       31 JUMP                             ; [+5]
       32 LOADK                            R7 K5 ["HeaderBar"]
       33 LOADK                            R8 K8 ["ViewTypeSelectList"]
       34 NAMECALL                         R5 R1 K7 ["getText"]
       36 CALL                             R5 3 1
       37 JUMPIFNOT                        R4 ; [+8]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K9 ["Enums"]
       41 GETTABLEKS                       R6 R6 K10 ["IconName"]
       43 GETTABLEKS                       R6 R6 K4 ["Grid"]
       45 JUMP                             ; [+7]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K9 ["Enums"]
       49 GETTABLEKS                       R6 R6 K10 ["IconName"]
       51 GETTABLEKS                       R6 R6 K11 ["ListBulleted"]
       53 GETUPVAL                         R7 4
       54 GETTABLEKS                       R7 R7 K12 ["createElement"]
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R8 R8 K13 ["View"]
       59 DUPTABLE                         R9 K18 [{["LayoutOrder"], ["onActivated"], ["tag"] = "row flex-x-between align-y-center gap-xsmall size-3000-0 auto-y padding-xsmall radius-small"}]
       60 GETTABLEKS                       R10 R0 K14 ["LayoutOrder"]
       62 SETTABLEKS                       R10 R9 K14 ["LayoutOrder"]
       64 NEWCLOSURE                       R10 P0
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R10 R9 K15 ["onActivated"]
       69 DUPTABLE                         R10 K21 [{"Icon", "Text"}]
       70 GETUPVAL                         R11 4
       71 GETTABLEKS                       R11 R11 K12 ["createElement"]
       73 GETUPVAL                         R12 2
       74 GETTABLEKS                       R12 R12 K19 ["Icon"]
       76 DUPTABLE                         R13 K26 [{["LayoutOrder"] = 1, ["name"], ["style"], ["size"]}]
       77 SETTABLEKS                       R6 R13 K23 ["name"]
       79 GETTABLEKS                       R14 R3 K27 ["Color"]
       81 GETTABLEKS                       R14 R14 K28 ["Content"]
       83 GETTABLEKS                       R14 R14 K29 ["Emphasis"]
       85 SETTABLEKS                       R14 R13 K24 ["style"]
       87 GETUPVAL                         R14 2
       88 GETTABLEKS                       R14 R14 K9 ["Enums"]
       90 GETTABLEKS                       R14 R14 K30 ["IconSize"]
       92 GETTABLEKS                       R14 R14 K31 ["XSmall"]
       94 SETTABLEKS                       R14 R13 K25 ["size"]
       96 CALL                             R11 2 1
       97 SETTABLEKS                       R11 R10 K19 ["Icon"]
       99 GETUPVAL                         R11 4
      100 GETTABLEKS                       R11 R11 K12 ["createElement"]
      102 GETUPVAL                         R12 2
      103 GETTABLEKS                       R12 R12 K20 ["Text"]
      105 DUPTABLE                         R13 K34 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "grow auto-y text-caption-medium text-align-x-left text-truncate-end content-emphasis"}]
      106 SETTABLEKS                       R5 R13 K20 ["Text"]
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K20 ["Text"]
      111 CALL                             R7 3 -1
      112 RETURN                           R7 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setBrowserLayout"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 MOVE                             R5 R0
        4 NAMECALL                         R1 R1 K0 ["setBrowserLayout"]
        6 CALL                             R1 4 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["useState"]
       11 LOADB                            R4 0
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 3
       14 CALL                             R5 0 1
       15 GETUPVAL                         R6 4
       16 GETTABLEKS                       R6 R6 K2 ["Hooks"]
       18 GETTABLEKS                       R6 R6 K3 ["useTokens"]
       20 CALL                             R6 0 1
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K4 ["createElement"]
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R8 R8 K5 ["Popover"]
       27 GETTABLEKS                       R8 R8 K6 ["Root"]
       29 DUPTABLE                         R9 K10 [{"LayoutOrder", "isOpen", "onPressedOutside"}]
       30 GETTABLEKS                       R10 R0 K7 ["LayoutOrder"]
       32 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       34 SETTABLEKS                       R3 R9 K8 ["isOpen"]
       36 NEWCLOSURE                       R10 P0
       37 CAPTURE                          VAL R4
       38 SETTABLEKS                       R10 R9 K9 ["onPressedOutside"]
       40 DUPTABLE                         R10 K13 [{"Anchor", "Content"}]
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R11 R11 K4 ["createElement"]
       44 GETUPVAL                         R12 4
       45 GETTABLEKS                       R12 R12 K5 ["Popover"]
       47 GETTABLEKS                       R12 R12 K11 ["Anchor"]
       49 DUPTABLE                         R13 K14 [{"LayoutOrder"}]
       50 GETTABLEKS                       R14 R0 K7 ["LayoutOrder"]
       52 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       54 GETUPVAL                         R14 2
       55 GETTABLEKS                       R14 R14 K4 ["createElement"]
       57 GETUPVAL                         R15 4
       58 GETTABLEKS                       R15 R15 K15 ["Tooltip"]
       60 DUPTABLE                         R16 K18 [{"LayoutOrder", "title", "side"}]
       61 GETTABLEKS                       R17 R0 K7 ["LayoutOrder"]
       63 SETTABLEKS                       R17 R16 K7 ["LayoutOrder"]
       65 LOADK                            R19 K19 ["HeaderBar"]
       66 LOADK                            R20 K20 ["ViewTypeSelectTooltip"]
       67 NAMECALL                         R17 R1 K21 ["getText"]
       69 CALL                             R17 3 1
       70 SETTABLEKS                       R17 R16 K16 ["title"]
       72 GETUPVAL                         R17 4
       73 GETTABLEKS                       R17 R17 K22 ["Enums"]
       75 GETTABLEKS                       R17 R17 K23 ["PopoverSide"]
       77 GETTABLEKS                       R17 R17 K24 ["Bottom"]
       79 SETTABLEKS                       R17 R16 K17 ["side"]
       81 NEWTABLE                         R17 0 1
       83 GETUPVAL                         R18 2
       84 GETTABLEKS                       R18 R18 K4 ["createElement"]
       86 GETUPVAL                         R19 4
       87 GETTABLEKS                       R19 R19 K25 ["IconButton"]
       89 DUPTABLE                         R20 K30 [{"onActivated", "variant", "size", "icon"}]
       90 NEWCLOSURE                       R21 P1
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R3
       93 SETTABLEKS                       R21 R20 K26 ["onActivated"]
       95 GETUPVAL                         R21 4
       96 GETTABLEKS                       R21 R21 K22 ["Enums"]
       98 GETTABLEKS                       R21 R21 K31 ["ButtonVariant"]
      100 GETTABLEKS                       R21 R21 K32 ["Utility"]
      102 SETTABLEKS                       R21 R20 K27 ["variant"]
      104 GETUPVAL                         R21 4
      105 GETTABLEKS                       R21 R21 K22 ["Enums"]
      107 GETTABLEKS                       R21 R21 K33 ["InputSize"]
      109 GETTABLEKS                       R21 R21 K34 ["XSmall"]
      111 SETTABLEKS                       R21 R20 K28 ["size"]
      113 GETTABLEKS                       R22 R5 K35 ["ViewType"]
      115 GETUPVAL                         R23 5
      116 GETTABLEKS                       R23 R23 K35 ["ViewType"]
      118 GETTABLEKS                       R23 R23 K36 ["Grid"]
      120 JUMPIFNOTEQ                      R22 R23 ; [+9]
      122 GETUPVAL                         R21 4
      123 GETTABLEKS                       R21 R21 K22 ["Enums"]
      125 GETTABLEKS                       R21 R21 K37 ["IconName"]
      127 GETTABLEKS                       R21 R21 K36 ["Grid"]
      129 JUMP                             ; [+7]
      130 GETUPVAL                         R21 4
      131 GETTABLEKS                       R21 R21 K22 ["Enums"]
      133 GETTABLEKS                       R21 R21 K37 ["IconName"]
      135 GETTABLEKS                       R21 R21 K38 ["ListBulleted"]
      137 SETTABLEKS                       R21 R20 K29 ["icon"]
      139 CALL                             R18 2 -1
      140 SETLIST                          R17 R18 -1 [1]
      142 CALL                             R14 3 -1
      143 CALL                             R11 -1 1
      144 SETTABLEKS                       R11 R10 K11 ["Anchor"]
      146 GETUPVAL                         R11 2
      147 GETTABLEKS                       R11 R11 K4 ["createElement"]
      149 GETUPVAL                         R12 4
      150 GETTABLEKS                       R12 R12 K5 ["Popover"]
      152 GETTABLEKS                       R12 R12 K12 ["Content"]
      154 DUPTABLE                         R13 K42 [{["hasArrow"] = False, ["onPressedOutside"], ["backgroundStyle"]}]
      155 NEWCLOSURE                       R14 P2
      156 CAPTURE                          VAL R4
      157 SETTABLEKS                       R14 R13 K9 ["onPressedOutside"]
      159 GETTABLEKS                       R14 R6 K43 ["Color"]
      161 GETTABLEKS                       R14 R14 K44 ["Surface"]
      163 GETTABLEKS                       R14 R14 K45 ["Surface_100"]
      165 SETTABLEKS                       R14 R13 K41 ["backgroundStyle"]
      167 GETUPVAL                         R14 2
      168 GETTABLEKS                       R14 R14 K4 ["createElement"]
      170 GETUPVAL                         R15 2
      171 GETTABLEKS                       R15 R15 K46 ["Fragment"]
      173 LOADNIL                          R16
      174 DUPTABLE                         R17 K49 [{"Border", "Menu"}]
      175 GETUPVAL                         R18 2
      176 GETTABLEKS                       R18 R18 K4 ["createElement"]
      178 LOADK                            R19 K50 ["UIStroke"]
      179 DUPTABLE                         R20 K53 [{"Color", "Transparency", "Thickness"}]
      180 GETTABLEKS                       R21 R6 K43 ["Color"]
      182 GETTABLEKS                       R21 R21 K54 ["Stroke"]
      184 GETTABLEKS                       R21 R21 K55 ["Default"]
      186 GETTABLEKS                       R21 R21 K56 ["Color3"]
      188 SETTABLEKS                       R21 R20 K43 ["Color"]
      190 GETTABLEKS                       R21 R6 K43 ["Color"]
      192 GETTABLEKS                       R21 R21 K54 ["Stroke"]
      194 GETTABLEKS                       R21 R21 K55 ["Default"]
      196 GETTABLEKS                       R21 R21 K51 ["Transparency"]
      198 SETTABLEKS                       R21 R20 K51 ["Transparency"]
      200 GETTABLEKS                       R21 R6 K54 ["Stroke"]
      202 GETTABLEKS                       R21 R21 K57 ["Standard"]
      204 SETTABLEKS                       R21 R20 K52 ["Thickness"]
      206 CALL                             R18 2 1
      207 SETTABLEKS                       R18 R17 K47 ["Border"]
      209 GETUPVAL                         R18 2
      210 GETTABLEKS                       R18 R18 K4 ["createElement"]
      212 GETUPVAL                         R19 4
      213 GETTABLEKS                       R19 R19 K58 ["View"]
      215 DUPTABLE                         R20 K61 [{["tag"] = "col gap-xsmall auto-xy padding-xsmall"}]
      216 DUPTABLE                         R21 K65 [{"ListButton", "GridButton", "Slider"}]
      217 GETUPVAL                         R22 2
      218 GETTABLEKS                       R22 R22 K4 ["createElement"]
      220 GETUPVAL                         R23 6
      221 DUPTABLE                         R24 K67 [{["LayoutOrder"] = 1, ["ViewType"]}]
      222 GETUPVAL                         R25 5
      223 GETTABLEKS                       R25 R25 K35 ["ViewType"]
      225 GETTABLEKS                       R25 R25 K68 ["List"]
      227 SETTABLEKS                       R25 R24 K35 ["ViewType"]
      229 CALL                             R22 2 1
      230 SETTABLEKS                       R22 R21 K62 ["ListButton"]
      232 GETUPVAL                         R22 2
      233 GETTABLEKS                       R22 R22 K4 ["createElement"]
      235 GETUPVAL                         R23 6
      236 DUPTABLE                         R24 K70 [{["LayoutOrder"] = 2, ["ViewType"]}]
      237 GETUPVAL                         R25 5
      238 GETTABLEKS                       R25 R25 K35 ["ViewType"]
      240 GETTABLEKS                       R25 R25 K36 ["Grid"]
      242 SETTABLEKS                       R25 R24 K35 ["ViewType"]
      244 CALL                             R22 2 1
      245 SETTABLEKS                       R22 R21 K63 ["GridButton"]
      247 GETTABLEKS                       R23 R5 K35 ["ViewType"]
      249 GETUPVAL                         R24 5
      250 GETTABLEKS                       R24 R24 K35 ["ViewType"]
      252 GETTABLEKS                       R24 R24 K36 ["Grid"]
      254 JUMPIFNOTEQ                      R23 R24 ; [+29]
      256 GETUPVAL                         R22 2
      257 GETTABLEKS                       R22 R22 K4 ["createElement"]
      259 GETUPVAL                         R23 4
      260 GETTABLEKS                       R23 R23 K64 ["Slider"]
      262 DUPTABLE                         R24 K76 [{["LayoutOrder"] = 3, ["value"], ["step"] = 1, ["range"], ["onValueChanged"]}]
      263 GETTABLEKS                       R25 R5 K77 ["GridSize"]
      265 SETTABLEKS                       R25 R24 K72 ["value"]
      267 GETIMPORT                        R25 K80 [NumberRange.new]
      269 GETUPVAL                         R26 7
      270 GETTABLEKS                       R26 R26 K81 ["GridCellSizeMin"]
      272 GETUPVAL                         R27 7
      273 GETTABLEKS                       R27 R27 K82 ["GridCellSizeMax"]
      275 CALL                             R25 2 1
      276 SETTABLEKS                       R25 R24 K74 ["range"]
      278 NEWCLOSURE                       R25 P3
      279 CAPTURE                          VAL R2
      280 SETTABLEKS                       R25 R24 K75 ["onValueChanged"]
      282 CALL                             R22 2 1
      283 JUMP                             ; [+27]
      284 GETUPVAL                         R22 2
      285 GETTABLEKS                       R22 R22 K4 ["createElement"]
      287 GETUPVAL                         R23 4
      288 GETTABLEKS                       R23 R23 K64 ["Slider"]
      290 DUPTABLE                         R24 K76 [{["LayoutOrder"] = 3, ["value"], ["step"] = 1, ["range"], ["onValueChanged"]}]
      291 GETTABLEKS                       R25 R5 K83 ["ListRowHeight"]
      293 SETTABLEKS                       R25 R24 K72 ["value"]
      295 GETIMPORT                        R25 K80 [NumberRange.new]
      297 GETUPVAL                         R26 7
      298 GETTABLEKS                       R26 R26 K84 ["ListRowHeightMin"]
      300 GETUPVAL                         R27 7
      301 GETTABLEKS                       R27 R27 K85 ["ListRowHeightMax"]
      303 CALL                             R25 2 1
      304 SETTABLEKS                       R25 R24 K74 ["range"]
      306 NEWCLOSURE                       R25 P4
      307 CAPTURE                          VAL R2
      308 SETTABLEKS                       R25 R24 K75 ["onValueChanged"]
      310 CALL                             R22 2 1
      311 SETTABLEKS                       R22 R21 K64 ["Slider"]
      313 CALL                             R18 3 1
      314 SETTABLEKS                       R18 R17 K48 ["Menu"]
      316 CALL                             R14 3 -1
      317 CALL                             R11 -1 1
      318 SETTABLEKS                       R11 R10 K12 ["Content"]
      320 CALL                             R7 3 -1
      321 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R7 K14 ["LayoutController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       47 GETTABLEKS                       R8 R8 K16 ["useLayoutInfo"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R9 K17 ["Resources"]
       56 GETTABLEKS                       R9 R9 K18 ["StyleConstants"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K12 ["Src"]
       63 GETTABLEKS                       R10 R10 K19 ["Types"]
       65 CALL                             R9 1 1
       66 DUPCLOSURE                       R10 K20 [PROTO_1]
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R1
       72 DUPCLOSURE                       R11 K21 [PROTO_7]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R8
       81 RETURN                           R11 1
