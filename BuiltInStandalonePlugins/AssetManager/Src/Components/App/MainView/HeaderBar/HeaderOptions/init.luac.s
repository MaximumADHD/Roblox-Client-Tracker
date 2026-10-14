PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshAll"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearRecent"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 CALL                             R5 0 1
       16 GETUPVAL                         R6 5
       17 CALL                             R6 0 1
       18 GETUPVAL                         R8 6
       19 GETUPVAL                         R9 7
       20 GETTABLEKS                       R9 R9 K2 ["IxpVariable"]
       22 GETTABLEKS                       R9 R9 K3 ["Omnisearch"]
       24 CALL                             R8 1 1
       25 GETUPVAL                         R9 7
       26 GETTABLEKS                       R9 R9 K4 ["IxpValue"]
       28 GETTABLEKS                       R9 R9 K5 ["Experiment"]
       30 JUMPIFEQ                         R8 R9 ; [+2]
       32 LOADB                            R7 0 +1
       33 LOADB                            R7 1
       34 GETTABLEKS                       R8 R6 K6 ["IsSearchRequested"]
       36 GETUPVAL                         R9 8
       37 GETTABLEKS                       R9 R9 K7 ["createElement"]
       39 GETUPVAL                         R10 9
       40 GETTABLEKS                       R10 R10 K8 ["View"]
       42 DUPTABLE                         R11 K12 [{["LayoutOrder"], ["tag"] = "row align-x-right align-y-center gap-small size-0-full auto-x padding-y-xsmall padding-right-small"}]
       43 GETTABLEKS                       R12 R0 K9 ["LayoutOrder"]
       45 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       47 DUPTABLE                         R12 K20 [{"RefreshButton", "ClearAllButton", "GridSortButtonContainer", "FilterDropdown", "ViewTypeContainer", "Divider", "BulkImportButton"}]
       48 JUMPIF                           R8 ; [+82]
       49 GETTABLEKS                       R14 R4 K21 ["Type"]
       51 GETUPVAL                         R15 7
       52 GETTABLEKS                       R15 R15 K22 ["ScopeType"]
       54 GETTABLEKS                       R15 R15 K23 ["RecentUploads"]
       56 JUMPIFEQ                         R14 R15 ; [+74]
       58 GETUPVAL                         R13 8
       59 GETTABLEKS                       R13 R13 K7 ["createElement"]
       61 GETUPVAL                         R14 9
       62 GETTABLEKS                       R14 R14 K24 ["Tooltip"]
       64 DUPTABLE                         R15 K27 [{"LayoutOrder", "title", "side"}]
       65 NAMECALL                         R16 R1 K28 ["getNextOrder"]
       67 CALL                             R16 1 1
       68 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
       70 LOADK                            R18 K24 ["Tooltip"]
       71 LOADK                            R19 K29 ["Refresh"]
       72 NAMECALL                         R16 R2 K30 ["getText"]
       74 CALL                             R16 3 1
       75 SETTABLEKS                       R16 R15 K25 ["title"]
       77 GETUPVAL                         R16 9
       78 GETTABLEKS                       R16 R16 K31 ["Enums"]
       80 GETTABLEKS                       R16 R16 K32 ["PopoverSide"]
       82 GETTABLEKS                       R16 R16 K33 ["Bottom"]
       84 SETTABLEKS                       R16 R15 K26 ["side"]
       86 NEWTABLE                         R16 0 1
       88 GETUPVAL                         R17 8
       89 GETTABLEKS                       R17 R17 K7 ["createElement"]
       91 GETUPVAL                         R18 9
       92 GETTABLEKS                       R18 R18 K34 ["IconButton"]
       94 DUPTABLE                         R19 K39 [{"onActivated", "variant", "size", "icon"}]
       95 NEWCLOSURE                       R20 P0
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R20 R19 K35 ["onActivated"]
       99 GETUPVAL                         R20 9
      100 GETTABLEKS                       R20 R20 K31 ["Enums"]
      102 GETTABLEKS                       R20 R20 K40 ["ButtonVariant"]
      104 GETTABLEKS                       R20 R20 K41 ["Utility"]
      106 SETTABLEKS                       R20 R19 K36 ["variant"]
      108 GETUPVAL                         R20 9
      109 GETTABLEKS                       R20 R20 K31 ["Enums"]
      111 GETTABLEKS                       R20 R20 K42 ["InputSize"]
      113 GETTABLEKS                       R20 R20 K43 ["XSmall"]
      115 SETTABLEKS                       R20 R19 K37 ["size"]
      117 GETUPVAL                         R20 9
      118 GETTABLEKS                       R20 R20 K31 ["Enums"]
      120 GETTABLEKS                       R20 R20 K44 ["IconName"]
      122 GETTABLEKS                       R20 R20 K45 ["TwoArrowsSpinClockwise"]
      124 SETTABLEKS                       R20 R19 K38 ["icon"]
      126 CALL                             R17 2 -1
      127 SETLIST                          R16 R17 -1 [1]
      129 CALL                             R13 3 1
      130 JUMP                             ; [+1]
      131 LOADNIL                          R13
      132 SETTABLEKS                       R13 R12 K13 ["RefreshButton"]
      134 GETTABLEKS                       R14 R4 K21 ["Type"]
      136 GETUPVAL                         R15 7
      137 GETTABLEKS                       R15 R15 K22 ["ScopeType"]
      139 GETTABLEKS                       R15 R15 K23 ["RecentUploads"]
      141 JUMPIFNOTEQ                      R14 R15 ; [+70]
      143 GETUPVAL                         R13 8
      144 GETTABLEKS                       R13 R13 K7 ["createElement"]
      146 GETUPVAL                         R14 9
      147 GETTABLEKS                       R14 R14 K24 ["Tooltip"]
      149 DUPTABLE                         R15 K27 [{"LayoutOrder", "title", "side"}]
      150 NAMECALL                         R16 R1 K28 ["getNextOrder"]
      152 CALL                             R16 1 1
      153 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      155 LOADK                            R18 K46 ["ContextMenu"]
      156 LOADK                            R19 K47 ["ClearRecent"]
      157 NAMECALL                         R16 R2 K30 ["getText"]
      159 CALL                             R16 3 1
      160 SETTABLEKS                       R16 R15 K25 ["title"]
      162 GETUPVAL                         R16 9
      163 GETTABLEKS                       R16 R16 K31 ["Enums"]
      165 GETTABLEKS                       R16 R16 K32 ["PopoverSide"]
      167 GETTABLEKS                       R16 R16 K33 ["Bottom"]
      169 SETTABLEKS                       R16 R15 K26 ["side"]
      171 GETUPVAL                         R16 8
      172 GETTABLEKS                       R16 R16 K7 ["createElement"]
      174 GETUPVAL                         R17 9
      175 GETTABLEKS                       R17 R17 K34 ["IconButton"]
      177 DUPTABLE                         R18 K39 [{"onActivated", "variant", "size", "icon"}]
      178 NEWCLOSURE                       R19 P1
      179 CAPTURE                          VAL R3
      180 SETTABLEKS                       R19 R18 K35 ["onActivated"]
      182 GETUPVAL                         R19 9
      183 GETTABLEKS                       R19 R19 K31 ["Enums"]
      185 GETTABLEKS                       R19 R19 K40 ["ButtonVariant"]
      187 GETTABLEKS                       R19 R19 K41 ["Utility"]
      189 SETTABLEKS                       R19 R18 K36 ["variant"]
      191 GETUPVAL                         R19 9
      192 GETTABLEKS                       R19 R19 K31 ["Enums"]
      194 GETTABLEKS                       R19 R19 K42 ["InputSize"]
      196 GETTABLEKS                       R19 R19 K43 ["XSmall"]
      198 SETTABLEKS                       R19 R18 K37 ["size"]
      200 GETUPVAL                         R19 9
      201 GETTABLEKS                       R19 R19 K31 ["Enums"]
      203 GETTABLEKS                       R19 R19 K44 ["IconName"]
      205 GETTABLEKS                       R19 R19 K48 ["TrashCan"]
      207 SETTABLEKS                       R19 R18 K38 ["icon"]
      209 CALL                             R16 2 -1
      210 CALL                             R13 -1 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R13
      213 SETTABLEKS                       R13 R12 K14 ["ClearAllButton"]
      215 GETTABLEKS                       R14 R5 K49 ["ViewType"]
      217 GETUPVAL                         R15 7
      218 GETTABLEKS                       R15 R15 K49 ["ViewType"]
      220 GETTABLEKS                       R15 R15 K50 ["Grid"]
      222 JUMPIFNOTEQ                      R14 R15 ; [+13]
      224 GETUPVAL                         R13 8
      225 GETTABLEKS                       R13 R13 K7 ["createElement"]
      227 GETUPVAL                         R14 10
      228 DUPTABLE                         R15 K51 [{"LayoutOrder"}]
      229 NAMECALL                         R16 R1 K28 ["getNextOrder"]
      231 CALL                             R16 1 1
      232 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      234 CALL                             R13 2 1
      235 JUMP                             ; [+1]
      236 LOADNIL                          R13
      237 SETTABLEKS                       R13 R12 K15 ["GridSortButtonContainer"]
      239 JUMPIFNOT                        R8 ; [+1]
      240 JUMPIFNOT                        R7 ; [+12]
      241 GETUPVAL                         R13 8
      242 GETTABLEKS                       R13 R13 K7 ["createElement"]
      244 GETUPVAL                         R14 11
      245 DUPTABLE                         R15 K51 [{"LayoutOrder"}]
      246 NAMECALL                         R16 R1 K28 ["getNextOrder"]
      248 CALL                             R16 1 1
      249 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      251 CALL                             R13 2 1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R13
      254 SETTABLEKS                       R13 R12 K16 ["FilterDropdown"]
      256 GETUPVAL                         R13 8
      257 GETTABLEKS                       R13 R13 K7 ["createElement"]
      259 GETUPVAL                         R14 12
      260 DUPTABLE                         R15 K51 [{"LayoutOrder"}]
      261 NAMECALL                         R16 R1 K28 ["getNextOrder"]
      263 CALL                             R16 1 1
      264 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      266 CALL                             R13 2 1
      267 SETTABLEKS                       R13 R12 K17 ["ViewTypeContainer"]
      269 GETUPVAL                         R13 8
      270 GETTABLEKS                       R13 R13 K7 ["createElement"]
      272 GETUPVAL                         R14 9
      273 GETTABLEKS                       R14 R14 K18 ["Divider"]
      275 DUPTABLE                         R15 K53 [{"LayoutOrder", "orientation"}]
      276 NAMECALL                         R16 R1 K28 ["getNextOrder"]
      278 CALL                             R16 1 1
      279 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      281 GETUPVAL                         R16 9
      282 GETTABLEKS                       R16 R16 K31 ["Enums"]
      284 GETTABLEKS                       R16 R16 K54 ["DividerOrientation"]
      286 GETTABLEKS                       R16 R16 K55 ["Vertical"]
      288 SETTABLEKS                       R16 R15 K52 ["orientation"]
      290 CALL                             R13 2 1
      291 SETTABLEKS                       R13 R12 K18 ["Divider"]
      293 GETUPVAL                         R13 8
      294 GETTABLEKS                       R13 R13 K7 ["createElement"]
      296 GETUPVAL                         R14 13
      297 DUPTABLE                         R15 K51 [{"LayoutOrder"}]
      298 NAMECALL                         R16 R1 K28 ["getNextOrder"]
      300 CALL                             R16 1 1
      301 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      303 CALL                             R13 2 1
      304 SETTABLEKS                       R13 R12 K19 ["BulkImportButton"]
      306 CALL                             R9 3 -1
      307 RETURN                           R9 -1

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
       36 GETTABLEKS                       R7 R7 K13 ["Components"]
       38 GETTABLEKS                       R7 R7 K14 ["App"]
       40 GETTABLEKS                       R7 R7 K15 ["MainView"]
       42 GETTABLEKS                       R7 R7 K16 ["BulkImportButton"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETIMPORT                        R8 K1 [script]
       49 GETTABLEKS                       R8 R8 K17 ["FilterTypesDropdown"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETIMPORT                        R9 K1 [script]
       56 GETTABLEKS                       R9 R9 K18 ["SortOptions"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETIMPORT                        R10 K1 [script]
       63 GETTABLEKS                       R10 R10 K19 ["ViewOptions"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K12 ["Src"]
       70 GETTABLEKS                       R11 R11 K20 ["Controllers"]
       72 GETTABLEKS                       R11 R11 K21 ["ItemsController"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K12 ["Src"]
       79 GETTABLEKS                       R12 R12 K22 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K23 ["useIxpValue"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K12 ["Src"]
       88 GETTABLEKS                       R13 R13 K22 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K24 ["useLayoutInfo"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K12 ["Src"]
       97 GETTABLEKS                       R14 R14 K22 ["Hooks"]
       99 GETTABLEKS                       R14 R14 K25 ["useSearchInfo"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K12 ["Src"]
      106 GETTABLEKS                       R15 R15 K22 ["Hooks"]
      108 GETTABLEKS                       R15 R15 K26 ["useCurrentScope"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K12 ["Src"]
      115 GETTABLEKS                       R16 R16 K27 ["Types"]
      117 CALL                             R15 1 1
      118 GETTABLEKS                       R16 R3 K28 ["Util"]
      120 GETTABLEKS                       R16 R16 K29 ["LayoutOrderIterator"]
      122 DUPCLOSURE                       R17 K30 [PROTO_2]
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R6
      137 RETURN                           R17 1
