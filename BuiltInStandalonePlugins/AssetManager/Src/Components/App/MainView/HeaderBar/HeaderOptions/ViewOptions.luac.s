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
       55 DUPTABLE                         R9 K16 [{["LayoutOrder"], ["onActivated"], ["tag"] = "row flex-x-between align-y-center gap-xsmall size-3000-0 auto-y padding-xsmall radius-small"}]
       56 GETTABLEKS                       R10 R0 K12 ["LayoutOrder"]
       58 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       60 NEWCLOSURE                       R10 P0
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R10 R9 K13 ["onActivated"]
       65 DUPTABLE                         R10 K19 [{"Icon", "Text"}]
       66 GETUPVAL                         R11 5
       67 GETTABLEKS                       R11 R11 K10 ["createElement"]
       69 GETUPVAL                         R12 4
       70 GETTABLEKS                       R12 R12 K17 ["Icon"]
       72 DUPTABLE                         R13 K24 [{["LayoutOrder"] = 1, ["name"], ["style"], ["size"]}]
       73 SETTABLEKS                       R6 R13 K21 ["name"]
       75 GETTABLEKS                       R14 R3 K25 ["Color"]
       77 GETTABLEKS                       R14 R14 K26 ["Content"]
       79 GETTABLEKS                       R14 R14 K27 ["Emphasis"]
       81 SETTABLEKS                       R14 R13 K22 ["style"]
       83 GETUPVAL                         R14 4
       84 GETTABLEKS                       R14 R14 K7 ["Enums"]
       86 GETTABLEKS                       R14 R14 K28 ["IconSize"]
       88 GETTABLEKS                       R14 R14 K29 ["XSmall"]
       90 SETTABLEKS                       R14 R13 K23 ["size"]
       92 CALL                             R11 2 1
       93 SETTABLEKS                       R11 R10 K17 ["Icon"]
       95 GETUPVAL                         R11 5
       96 GETTABLEKS                       R11 R11 K10 ["createElement"]
       98 GETUPVAL                         R12 4
       99 GETTABLEKS                       R12 R12 K18 ["Text"]
      101 DUPTABLE                         R13 K32 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "grow auto-y text-caption-medium text-align-x-left text-truncate-end content-emphasis"}]
      102 SETTABLEKS                       R5 R13 K18 ["Text"]
      104 CALL                             R11 2 1
      105 SETTABLEKS                       R11 R10 K18 ["Text"]
      107 CALL                             R7 3 -1
      108 RETURN                           R7 -1

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
      150 DUPTABLE                         R13 K40 [{["hasArrow"] = False, ["onPressedOutside"], ["backgroundStyle"]}]
      151 NEWCLOSURE                       R14 P2
      152 CAPTURE                          VAL R4
      153 SETTABLEKS                       R14 R13 K7 ["onPressedOutside"]
      155 GETTABLEKS                       R14 R6 K41 ["Color"]
      157 GETTABLEKS                       R14 R14 K42 ["Surface"]
      159 GETTABLEKS                       R14 R14 K43 ["Surface_100"]
      161 SETTABLEKS                       R14 R13 K39 ["backgroundStyle"]
      163 GETUPVAL                         R14 2
      164 GETTABLEKS                       R14 R14 K2 ["createElement"]
      166 GETUPVAL                         R15 2
      167 GETTABLEKS                       R15 R15 K44 ["Fragment"]
      169 LOADNIL                          R16
      170 DUPTABLE                         R17 K47 [{"Border", "Menu"}]
      171 GETUPVAL                         R18 2
      172 GETTABLEKS                       R18 R18 K2 ["createElement"]
      174 LOADK                            R19 K48 ["UIStroke"]
      175 DUPTABLE                         R20 K51 [{"Color", "Transparency", "Thickness"}]
      176 GETTABLEKS                       R21 R6 K41 ["Color"]
      178 GETTABLEKS                       R21 R21 K52 ["Stroke"]
      180 GETTABLEKS                       R21 R21 K53 ["Default"]
      182 GETTABLEKS                       R21 R21 K54 ["Color3"]
      184 SETTABLEKS                       R21 R20 K41 ["Color"]
      186 GETTABLEKS                       R21 R6 K41 ["Color"]
      188 GETTABLEKS                       R21 R21 K52 ["Stroke"]
      190 GETTABLEKS                       R21 R21 K53 ["Default"]
      192 GETTABLEKS                       R21 R21 K49 ["Transparency"]
      194 SETTABLEKS                       R21 R20 K49 ["Transparency"]
      196 GETTABLEKS                       R21 R6 K52 ["Stroke"]
      198 GETTABLEKS                       R21 R21 K55 ["Standard"]
      200 SETTABLEKS                       R21 R20 K50 ["Thickness"]
      202 CALL                             R18 2 1
      203 SETTABLEKS                       R18 R17 K45 ["Border"]
      205 GETUPVAL                         R18 2
      206 GETTABLEKS                       R18 R18 K2 ["createElement"]
      208 GETUPVAL                         R19 5
      209 GETTABLEKS                       R19 R19 K56 ["View"]
      211 DUPTABLE                         R20 K59 [{["tag"] = "col gap-xsmall auto-xy padding-xsmall"}]
      212 DUPTABLE                         R21 K63 [{"ListButton", "GridButton", "Slider"}]
      213 GETUPVAL                         R22 2
      214 GETTABLEKS                       R22 R22 K2 ["createElement"]
      216 GETUPVAL                         R23 7
      217 DUPTABLE                         R24 K65 [{["LayoutOrder"] = 1, ["ViewType"]}]
      218 GETUPVAL                         R25 6
      219 GETTABLEKS                       R25 R25 K33 ["ViewType"]
      221 GETTABLEKS                       R25 R25 K66 ["List"]
      223 SETTABLEKS                       R25 R24 K33 ["ViewType"]
      225 CALL                             R22 2 1
      226 SETTABLEKS                       R22 R21 K60 ["ListButton"]
      228 GETUPVAL                         R22 2
      229 GETTABLEKS                       R22 R22 K2 ["createElement"]
      231 GETUPVAL                         R23 7
      232 DUPTABLE                         R24 K68 [{["LayoutOrder"] = 2, ["ViewType"]}]
      233 GETUPVAL                         R25 6
      234 GETTABLEKS                       R25 R25 K33 ["ViewType"]
      236 GETTABLEKS                       R25 R25 K34 ["Grid"]
      238 SETTABLEKS                       R25 R24 K33 ["ViewType"]
      240 CALL                             R22 2 1
      241 SETTABLEKS                       R22 R21 K61 ["GridButton"]
      243 GETTABLEKS                       R23 R5 K33 ["ViewType"]
      245 GETUPVAL                         R24 6
      246 GETTABLEKS                       R24 R24 K33 ["ViewType"]
      248 GETTABLEKS                       R24 R24 K34 ["Grid"]
      250 JUMPIFNOTEQ                      R23 R24 ; [+29]
      252 GETUPVAL                         R22 2
      253 GETTABLEKS                       R22 R22 K2 ["createElement"]
      255 GETUPVAL                         R23 5
      256 GETTABLEKS                       R23 R23 K62 ["Slider"]
      258 DUPTABLE                         R24 K74 [{["LayoutOrder"] = 3, ["value"], ["step"] = 1, ["range"], ["onValueChanged"]}]
      259 GETTABLEKS                       R25 R5 K75 ["GridSize"]
      261 SETTABLEKS                       R25 R24 K70 ["value"]
      263 GETIMPORT                        R25 K78 [NumberRange.new]
      265 GETUPVAL                         R26 8
      266 GETTABLEKS                       R26 R26 K79 ["GridCellSizeMin"]
      268 GETUPVAL                         R27 8
      269 GETTABLEKS                       R27 R27 K80 ["GridCellSizeMax"]
      271 CALL                             R25 2 1
      272 SETTABLEKS                       R25 R24 K72 ["range"]
      274 NEWCLOSURE                       R25 P3
      275 CAPTURE                          VAL R2
      276 SETTABLEKS                       R25 R24 K73 ["onValueChanged"]
      278 CALL                             R22 2 1
      279 JUMP                             ; [+27]
      280 GETUPVAL                         R22 2
      281 GETTABLEKS                       R22 R22 K2 ["createElement"]
      283 GETUPVAL                         R23 5
      284 GETTABLEKS                       R23 R23 K62 ["Slider"]
      286 DUPTABLE                         R24 K74 [{["LayoutOrder"] = 3, ["value"], ["step"] = 1, ["range"], ["onValueChanged"]}]
      287 GETTABLEKS                       R25 R5 K81 ["ListRowHeight"]
      289 SETTABLEKS                       R25 R24 K70 ["value"]
      291 GETIMPORT                        R25 K78 [NumberRange.new]
      293 GETUPVAL                         R26 8
      294 GETTABLEKS                       R26 R26 K82 ["ListRowHeightMin"]
      296 GETUPVAL                         R27 8
      297 GETTABLEKS                       R27 R27 K83 ["ListRowHeightMax"]
      299 CALL                             R25 2 1
      300 SETTABLEKS                       R25 R24 K72 ["range"]
      302 NEWCLOSURE                       R25 P4
      303 CAPTURE                          VAL R2
      304 SETTABLEKS                       R25 R24 K73 ["onValueChanged"]
      306 CALL                             R22 2 1
      307 SETTABLEKS                       R22 R21 K62 ["Slider"]
      309 CALL                             R18 3 1
      310 SETTABLEKS                       R18 R17 K46 ["Menu"]
      312 CALL                             R14 3 -1
      313 CALL                             R11 -1 1
      314 SETTABLEKS                       R11 R10 K10 ["Content"]
      316 CALL                             R7 3 -1
      317 RETURN                           R7 -1

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
       77 DUPCLOSURE                       R12 K22 [PROTO_7]
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
