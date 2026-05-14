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
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R5 R0 K1 ["ViewType"]
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R6 R6 K1 ["ViewType"]
       15 GETTABLEKS                       R6 R6 K2 ["Grid"]
       17 JUMPIFEQ                         R5 R6 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 JUMPIFNOT                        R4 ; [+6]
       22 LOADK                            R7 K3 ["HeaderBar"]
       23 LOADK                            R8 K4 ["ViewTypeSelectGrid"]
       24 NAMECALL                         R5 R1 K5 ["getText"]
       26 CALL                             R5 3 1
       27 JUMP                             ; [+5]
       28 LOADK                            R7 K3 ["HeaderBar"]
       29 LOADK                            R8 K6 ["ViewTypeSelectList"]
       30 NAMECALL                         R5 R1 K5 ["getText"]
       32 CALL                             R5 3 1
       33 JUMPIFNOT                        R4 ; [+8]
       34 GETUPVAL                         R6 4
       35 GETTABLEKS                       R6 R6 K7 ["Enums"]
       37 GETTABLEKS                       R6 R6 K8 ["IconName"]
       39 GETTABLEKS                       R6 R6 K2 ["Grid"]
       41 JUMP                             ; [+7]
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R6 R6 K7 ["Enums"]
       45 GETTABLEKS                       R6 R6 K8 ["IconName"]
       47 GETTABLEKS                       R6 R6 K9 ["ListBulleted"]
       49 GETUPVAL                         R7 5
       50 GETTABLEKS                       R7 R7 K10 ["createElement"]
       52 GETUPVAL                         R8 4
       53 GETTABLEKS                       R8 R8 K11 ["View"]
       55 DUPTABLE                         R9 K15 [{"LayoutOrder", "onActivated", "tag"}]
       56 GETTABLEKS                       R10 R0 K12 ["LayoutOrder"]
       58 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       60 NEWCLOSURE                       R10 P0
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R10 R9 K13 ["onActivated"]
       65 LOADK                            R10 K16 ["size-3000-0 auto-y row align-y-center flex-x-between radius-small padding-xsmall gap-xsmall"]
       66 SETTABLEKS                       R10 R9 K14 ["tag"]
       68 DUPTABLE                         R10 K19 [{"Icon", "Text"}]
       69 GETUPVAL                         R11 5
       70 GETTABLEKS                       R11 R11 K10 ["createElement"]
       72 GETUPVAL                         R12 4
       73 GETTABLEKS                       R12 R12 K17 ["Icon"]
       75 DUPTABLE                         R13 K23 [{"LayoutOrder", "name", "style", "size"}]
       76 LOADN                            R14 1
       77 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
       79 SETTABLEKS                       R6 R13 K20 ["name"]
       81 GETTABLEKS                       R14 R3 K24 ["Color"]
       83 GETTABLEKS                       R14 R14 K25 ["Content"]
       85 GETTABLEKS                       R14 R14 K26 ["Emphasis"]
       87 SETTABLEKS                       R14 R13 K21 ["style"]
       89 GETUPVAL                         R14 4
       90 GETTABLEKS                       R14 R14 K7 ["Enums"]
       92 GETTABLEKS                       R14 R14 K27 ["IconSize"]
       94 GETTABLEKS                       R14 R14 K28 ["XSmall"]
       96 SETTABLEKS                       R14 R13 K22 ["size"]
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K17 ["Icon"]
      101 GETUPVAL                         R11 5
      102 GETTABLEKS                       R11 R11 K10 ["createElement"]
      104 GETUPVAL                         R12 4
      105 GETTABLEKS                       R12 R12 K18 ["Text"]
      107 DUPTABLE                         R13 K29 [{"LayoutOrder", "Text", "tag"}]
      108 LOADN                            R14 2
      109 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
      111 SETTABLEKS                       R5 R13 K18 ["Text"]
      113 LOADK                            R14 K30 ["text-caption-medium content-emphasis auto-y grow text-align-x-left text-truncate-end"]
      114 SETTABLEKS                       R14 R13 K14 ["tag"]
      116 CALL                             R11 2 1
      117 SETTABLEKS                       R11 R10 K18 ["Text"]
      119 CALL                             R7 3 -1
      120 RETURN                           R7 -1

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
       16 CALL                             R6 0 1
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K2 ["createElement"]
       20 GETUPVAL                         R8 5
       21 GETTABLEKS                       R8 R8 K3 ["Popover"]
       23 GETTABLEKS                       R8 R8 K4 ["Root"]
       25 DUPTABLE                         R9 K8 [{"LayoutOrder", "isOpen", "onPressedOutside"}]
       26 GETTABLEKS                       R10 R0 K5 ["LayoutOrder"]
       28 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       30 SETTABLEKS                       R3 R9 K6 ["isOpen"]
       32 NEWCLOSURE                       R10 P0
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R10 R9 K7 ["onPressedOutside"]
       36 DUPTABLE                         R10 K11 [{"Anchor", "Content"}]
       37 GETUPVAL                         R11 2
       38 GETTABLEKS                       R11 R11 K2 ["createElement"]
       40 GETUPVAL                         R12 5
       41 GETTABLEKS                       R12 R12 K3 ["Popover"]
       43 GETTABLEKS                       R12 R12 K9 ["Anchor"]
       45 DUPTABLE                         R13 K12 [{"LayoutOrder"}]
       46 GETTABLEKS                       R14 R0 K5 ["LayoutOrder"]
       48 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       50 GETUPVAL                         R14 2
       51 GETTABLEKS                       R14 R14 K2 ["createElement"]
       53 GETUPVAL                         R15 5
       54 GETTABLEKS                       R15 R15 K13 ["Tooltip"]
       56 DUPTABLE                         R16 K16 [{"LayoutOrder", "title", "side"}]
       57 GETTABLEKS                       R17 R0 K5 ["LayoutOrder"]
       59 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
       61 LOADK                            R19 K17 ["HeaderBar"]
       62 LOADK                            R20 K18 ["ViewTypeSelectTooltip"]
       63 NAMECALL                         R17 R1 K19 ["getText"]
       65 CALL                             R17 3 1
       66 SETTABLEKS                       R17 R16 K14 ["title"]
       68 GETUPVAL                         R17 5
       69 GETTABLEKS                       R17 R17 K20 ["Enums"]
       71 GETTABLEKS                       R17 R17 K21 ["PopoverSide"]
       73 GETTABLEKS                       R17 R17 K22 ["Bottom"]
       75 SETTABLEKS                       R17 R16 K15 ["side"]
       77 NEWTABLE                         R17 0 1
       79 GETUPVAL                         R18 2
       80 GETTABLEKS                       R18 R18 K2 ["createElement"]
       82 GETUPVAL                         R19 5
       83 GETTABLEKS                       R19 R19 K23 ["IconButton"]
       85 DUPTABLE                         R20 K28 [{"onActivated", "variant", "size", "icon"}]
       86 NEWCLOSURE                       R21 P1
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R21 R20 K24 ["onActivated"]
       91 GETUPVAL                         R21 5
       92 GETTABLEKS                       R21 R21 K20 ["Enums"]
       94 GETTABLEKS                       R21 R21 K29 ["ButtonVariant"]
       96 GETTABLEKS                       R21 R21 K30 ["Utility"]
       98 SETTABLEKS                       R21 R20 K25 ["variant"]
      100 GETUPVAL                         R21 5
      101 GETTABLEKS                       R21 R21 K20 ["Enums"]
      103 GETTABLEKS                       R21 R21 K31 ["InputSize"]
      105 GETTABLEKS                       R21 R21 K32 ["XSmall"]
      107 SETTABLEKS                       R21 R20 K26 ["size"]
      109 GETTABLEKS                       R22 R5 K33 ["ViewType"]
      111 GETUPVAL                         R23 6
      112 GETTABLEKS                       R23 R23 K33 ["ViewType"]
      114 GETTABLEKS                       R23 R23 K34 ["Grid"]
      116 JUMPIFNOTEQ                      R22 R23 ; [+9]
      118 GETUPVAL                         R21 5
      119 GETTABLEKS                       R21 R21 K20 ["Enums"]
      121 GETTABLEKS                       R21 R21 K35 ["IconName"]
      123 GETTABLEKS                       R21 R21 K34 ["Grid"]
      125 JUMP                             ; [+7]
      126 GETUPVAL                         R21 5
      127 GETTABLEKS                       R21 R21 K20 ["Enums"]
      129 GETTABLEKS                       R21 R21 K35 ["IconName"]
      131 GETTABLEKS                       R21 R21 K36 ["ListBulleted"]
      133 SETTABLEKS                       R21 R20 K27 ["icon"]
      135 CALL                             R18 2 -1
      136 SETLIST                          R17 R18 -1 [1]
      138 CALL                             R14 3 -1
      139 CALL                             R11 -1 1
      140 SETTABLEKS                       R11 R10 K9 ["Anchor"]
      142 GETUPVAL                         R11 2
      143 GETTABLEKS                       R11 R11 K2 ["createElement"]
      145 GETUPVAL                         R12 5
      146 GETTABLEKS                       R12 R12 K3 ["Popover"]
      148 GETTABLEKS                       R12 R12 K10 ["Content"]
      150 DUPTABLE                         R13 K39 [{"hasArrow", "onPressedOutside", "backgroundStyle"}]
      151 LOADB                            R14 0
      152 SETTABLEKS                       R14 R13 K37 ["hasArrow"]
      154 NEWCLOSURE                       R14 P2
      155 CAPTURE                          VAL R4
      156 SETTABLEKS                       R14 R13 K7 ["onPressedOutside"]
      158 GETTABLEKS                       R14 R6 K40 ["Color"]
      160 GETTABLEKS                       R14 R14 K41 ["Surface"]
      162 GETTABLEKS                       R14 R14 K42 ["Surface_100"]
      164 SETTABLEKS                       R14 R13 K38 ["backgroundStyle"]
      166 GETUPVAL                         R14 2
      167 GETTABLEKS                       R14 R14 K2 ["createElement"]
      169 GETUPVAL                         R15 2
      170 GETTABLEKS                       R15 R15 K43 ["Fragment"]
      172 LOADNIL                          R16
      173 DUPTABLE                         R17 K46 [{"Border", "Menu"}]
      174 GETUPVAL                         R18 2
      175 GETTABLEKS                       R18 R18 K2 ["createElement"]
      177 LOADK                            R19 K47 ["UIStroke"]
      178 DUPTABLE                         R20 K50 [{"Color", "Transparency", "Thickness"}]
      179 GETTABLEKS                       R21 R6 K40 ["Color"]
      181 GETTABLEKS                       R21 R21 K51 ["Stroke"]
      183 GETTABLEKS                       R21 R21 K52 ["Default"]
      185 GETTABLEKS                       R21 R21 K53 ["Color3"]
      187 SETTABLEKS                       R21 R20 K40 ["Color"]
      189 GETTABLEKS                       R21 R6 K40 ["Color"]
      191 GETTABLEKS                       R21 R21 K51 ["Stroke"]
      193 GETTABLEKS                       R21 R21 K52 ["Default"]
      195 GETTABLEKS                       R21 R21 K48 ["Transparency"]
      197 SETTABLEKS                       R21 R20 K48 ["Transparency"]
      199 GETTABLEKS                       R21 R6 K51 ["Stroke"]
      201 GETTABLEKS                       R21 R21 K54 ["Standard"]
      203 SETTABLEKS                       R21 R20 K49 ["Thickness"]
      205 CALL                             R18 2 1
      206 SETTABLEKS                       R18 R17 K44 ["Border"]
      208 GETUPVAL                         R18 2
      209 GETTABLEKS                       R18 R18 K2 ["createElement"]
      211 GETUPVAL                         R19 5
      212 GETTABLEKS                       R19 R19 K55 ["View"]
      214 DUPTABLE                         R20 K57 [{"tag"}]
      215 LOADK                            R21 K58 ["col padding-xsmall gap-xsmall auto-xy"]
      216 SETTABLEKS                       R21 R20 K56 ["tag"]
      218 DUPTABLE                         R21 K62 [{"ListButton", "GridButton", "GridSlider"}]
      219 GETUPVAL                         R22 2
      220 GETTABLEKS                       R22 R22 K2 ["createElement"]
      222 GETUPVAL                         R23 7
      223 DUPTABLE                         R24 K63 [{"LayoutOrder", "ViewType"}]
      224 LOADN                            R25 1
      225 SETTABLEKS                       R25 R24 K5 ["LayoutOrder"]
      227 GETUPVAL                         R25 6
      228 GETTABLEKS                       R25 R25 K33 ["ViewType"]
      230 GETTABLEKS                       R25 R25 K64 ["List"]
      232 SETTABLEKS                       R25 R24 K33 ["ViewType"]
      234 CALL                             R22 2 1
      235 SETTABLEKS                       R22 R21 K59 ["ListButton"]
      237 GETUPVAL                         R22 2
      238 GETTABLEKS                       R22 R22 K2 ["createElement"]
      240 GETUPVAL                         R23 7
      241 DUPTABLE                         R24 K63 [{"LayoutOrder", "ViewType"}]
      242 LOADN                            R25 2
      243 SETTABLEKS                       R25 R24 K5 ["LayoutOrder"]
      245 GETUPVAL                         R25 6
      246 GETTABLEKS                       R25 R25 K33 ["ViewType"]
      248 GETTABLEKS                       R25 R25 K34 ["Grid"]
      250 SETTABLEKS                       R25 R24 K33 ["ViewType"]
      252 CALL                             R22 2 1
      253 SETTABLEKS                       R22 R21 K60 ["GridButton"]
      255 GETTABLEKS                       R23 R5 K33 ["ViewType"]
      257 GETUPVAL                         R24 6
      258 GETTABLEKS                       R24 R24 K33 ["ViewType"]
      260 GETTABLEKS                       R24 R24 K34 ["Grid"]
      262 JUMPIFNOTEQ                      R23 R24 ; [+35]
      264 GETUPVAL                         R22 2
      265 GETTABLEKS                       R22 R22 K2 ["createElement"]
      267 GETUPVAL                         R23 5
      268 GETTABLEKS                       R23 R23 K65 ["Slider"]
      270 DUPTABLE                         R24 K70 [{"LayoutOrder", "value", "step", "range", "onValueChanged"}]
      271 LOADN                            R25 3
      272 SETTABLEKS                       R25 R24 K5 ["LayoutOrder"]
      274 GETTABLEKS                       R25 R5 K71 ["GridSize"]
      276 SETTABLEKS                       R25 R24 K66 ["value"]
      278 LOADN                            R25 1
      279 SETTABLEKS                       R25 R24 K67 ["step"]
      281 GETIMPORT                        R25 K74 [NumberRange.new]
      283 GETUPVAL                         R26 8
      284 GETTABLEKS                       R26 R26 K75 ["GridCellHeightMin"]
      286 GETUPVAL                         R27 8
      287 GETTABLEKS                       R27 R27 K76 ["GridCellHeightMax"]
      289 CALL                             R25 2 1
      290 SETTABLEKS                       R25 R24 K68 ["range"]
      292 NEWCLOSURE                       R25 P3
      293 CAPTURE                          VAL R2
      294 SETTABLEKS                       R25 R24 K69 ["onValueChanged"]
      296 CALL                             R22 2 1
      297 JUMP                             ; [+1]
      298 LOADNIL                          R22
      299 SETTABLEKS                       R22 R21 K61 ["GridSlider"]
      301 CALL                             R18 3 1
      302 SETTABLEKS                       R18 R17 K45 ["Menu"]
      304 CALL                             R14 3 -1
      305 CALL                             R11 -1 1
      306 SETTABLEKS                       R11 R10 K10 ["Content"]
      308 CALL                             R7 3 -1
      309 RETURN                           R7 -1

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
       50 GETTABLEKS                       R8 R2 K15 ["Hooks"]
       52 GETTABLEKS                       R8 R8 K17 ["useTokens"]
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K12 ["Src"]
       58 GETTABLEKS                       R10 R10 K18 ["Resources"]
       60 GETTABLEKS                       R10 R10 K19 ["StyleConstants"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K12 ["Src"]
       67 GETTABLEKS                       R11 R11 K20 ["Types"]
       69 CALL                             R10 1 1
       70 DUPCLOSURE                       R11 K21 [PROTO_1]
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R1
       77 DUPCLOSURE                       R12 K22 [PROTO_6]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R9
       87 RETURN                           R12 1
