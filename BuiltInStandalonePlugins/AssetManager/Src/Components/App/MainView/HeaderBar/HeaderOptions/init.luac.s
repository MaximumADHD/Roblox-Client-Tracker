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
       18 GETTABLEKS                       R7 R6 K2 ["ShowSearchOptions"]
       20 GETUPVAL                         R8 6
       21 GETTABLEKS                       R8 R8 K3 ["createElement"]
       23 GETUPVAL                         R9 7
       24 GETTABLEKS                       R9 R9 K4 ["View"]
       26 DUPTABLE                         R10 K7 [{"LayoutOrder", "tag"}]
       27 GETTABLEKS                       R11 R0 K5 ["LayoutOrder"]
       29 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       31 LOADK                            R11 K8 ["padding-y-xsmall padding-right-small size-0-full auto-x row align-x-right align-y-center gap-small"]
       32 SETTABLEKS                       R11 R10 K6 ["tag"]
       34 DUPTABLE                         R11 K16 [{"RefreshButton", "ClearAllButton", "GridSortButtonContainer", "FilterDropdown", "ViewTypeContainer", "Divider", "BulkImportButton"}]
       35 JUMPIF                           R7 ; [+82]
       36 GETTABLEKS                       R13 R4 K17 ["Type"]
       38 GETUPVAL                         R14 8
       39 GETTABLEKS                       R14 R14 K18 ["ScopeType"]
       41 GETTABLEKS                       R14 R14 K19 ["RecentUploads"]
       43 JUMPIFEQ                         R13 R14 ; [+74]
       45 GETUPVAL                         R12 6
       46 GETTABLEKS                       R12 R12 K3 ["createElement"]
       48 GETUPVAL                         R13 7
       49 GETTABLEKS                       R13 R13 K20 ["Tooltip"]
       51 DUPTABLE                         R14 K23 [{"LayoutOrder", "title", "side"}]
       52 NAMECALL                         R15 R1 K24 ["getNextOrder"]
       54 CALL                             R15 1 1
       55 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
       57 LOADK                            R17 K20 ["Tooltip"]
       58 LOADK                            R18 K25 ["Refresh"]
       59 NAMECALL                         R15 R2 K26 ["getText"]
       61 CALL                             R15 3 1
       62 SETTABLEKS                       R15 R14 K21 ["title"]
       64 GETUPVAL                         R15 7
       65 GETTABLEKS                       R15 R15 K27 ["Enums"]
       67 GETTABLEKS                       R15 R15 K28 ["PopoverSide"]
       69 GETTABLEKS                       R15 R15 K29 ["Bottom"]
       71 SETTABLEKS                       R15 R14 K22 ["side"]
       73 NEWTABLE                         R15 0 1
       75 GETUPVAL                         R16 6
       76 GETTABLEKS                       R16 R16 K3 ["createElement"]
       78 GETUPVAL                         R17 7
       79 GETTABLEKS                       R17 R17 K30 ["IconButton"]
       81 DUPTABLE                         R18 K35 [{"onActivated", "variant", "size", "icon"}]
       82 NEWCLOSURE                       R19 P0
       83 CAPTURE                          VAL R3
       84 SETTABLEKS                       R19 R18 K31 ["onActivated"]
       86 GETUPVAL                         R19 7
       87 GETTABLEKS                       R19 R19 K27 ["Enums"]
       89 GETTABLEKS                       R19 R19 K36 ["ButtonVariant"]
       91 GETTABLEKS                       R19 R19 K37 ["Utility"]
       93 SETTABLEKS                       R19 R18 K32 ["variant"]
       95 GETUPVAL                         R19 7
       96 GETTABLEKS                       R19 R19 K27 ["Enums"]
       98 GETTABLEKS                       R19 R19 K38 ["InputSize"]
      100 GETTABLEKS                       R19 R19 K39 ["XSmall"]
      102 SETTABLEKS                       R19 R18 K33 ["size"]
      104 GETUPVAL                         R19 7
      105 GETTABLEKS                       R19 R19 K27 ["Enums"]
      107 GETTABLEKS                       R19 R19 K40 ["IconName"]
      109 GETTABLEKS                       R19 R19 K41 ["TwoArrowsSpinClockwise"]
      111 SETTABLEKS                       R19 R18 K34 ["icon"]
      113 CALL                             R16 2 -1
      114 SETLIST                          R15 R16 -1 [1]
      116 CALL                             R12 3 1
      117 JUMP                             ; [+1]
      118 LOADNIL                          R12
      119 SETTABLEKS                       R12 R11 K9 ["RefreshButton"]
      121 GETTABLEKS                       R13 R4 K17 ["Type"]
      123 GETUPVAL                         R14 8
      124 GETTABLEKS                       R14 R14 K18 ["ScopeType"]
      126 GETTABLEKS                       R14 R14 K19 ["RecentUploads"]
      128 JUMPIFNOTEQ                      R13 R14 ; [+70]
      130 GETUPVAL                         R12 6
      131 GETTABLEKS                       R12 R12 K3 ["createElement"]
      133 GETUPVAL                         R13 7
      134 GETTABLEKS                       R13 R13 K20 ["Tooltip"]
      136 DUPTABLE                         R14 K23 [{"LayoutOrder", "title", "side"}]
      137 NAMECALL                         R15 R1 K24 ["getNextOrder"]
      139 CALL                             R15 1 1
      140 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      142 LOADK                            R17 K42 ["ContextMenu"]
      143 LOADK                            R18 K43 ["ClearRecent"]
      144 NAMECALL                         R15 R2 K26 ["getText"]
      146 CALL                             R15 3 1
      147 SETTABLEKS                       R15 R14 K21 ["title"]
      149 GETUPVAL                         R15 7
      150 GETTABLEKS                       R15 R15 K27 ["Enums"]
      152 GETTABLEKS                       R15 R15 K28 ["PopoverSide"]
      154 GETTABLEKS                       R15 R15 K29 ["Bottom"]
      156 SETTABLEKS                       R15 R14 K22 ["side"]
      158 GETUPVAL                         R15 6
      159 GETTABLEKS                       R15 R15 K3 ["createElement"]
      161 GETUPVAL                         R16 7
      162 GETTABLEKS                       R16 R16 K30 ["IconButton"]
      164 DUPTABLE                         R17 K35 [{"onActivated", "variant", "size", "icon"}]
      165 NEWCLOSURE                       R18 P1
      166 CAPTURE                          VAL R3
      167 SETTABLEKS                       R18 R17 K31 ["onActivated"]
      169 GETUPVAL                         R18 7
      170 GETTABLEKS                       R18 R18 K27 ["Enums"]
      172 GETTABLEKS                       R18 R18 K36 ["ButtonVariant"]
      174 GETTABLEKS                       R18 R18 K37 ["Utility"]
      176 SETTABLEKS                       R18 R17 K32 ["variant"]
      178 GETUPVAL                         R18 7
      179 GETTABLEKS                       R18 R18 K27 ["Enums"]
      181 GETTABLEKS                       R18 R18 K38 ["InputSize"]
      183 GETTABLEKS                       R18 R18 K39 ["XSmall"]
      185 SETTABLEKS                       R18 R17 K33 ["size"]
      187 GETUPVAL                         R18 7
      188 GETTABLEKS                       R18 R18 K27 ["Enums"]
      190 GETTABLEKS                       R18 R18 K40 ["IconName"]
      192 GETTABLEKS                       R18 R18 K44 ["TrashCan"]
      194 SETTABLEKS                       R18 R17 K34 ["icon"]
      196 CALL                             R15 2 -1
      197 CALL                             R12 -1 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R12
      200 SETTABLEKS                       R12 R11 K10 ["ClearAllButton"]
      202 GETTABLEKS                       R13 R5 K45 ["ViewType"]
      204 GETUPVAL                         R14 8
      205 GETTABLEKS                       R14 R14 K45 ["ViewType"]
      207 GETTABLEKS                       R14 R14 K46 ["Grid"]
      209 JUMPIFNOTEQ                      R13 R14 ; [+13]
      211 GETUPVAL                         R12 6
      212 GETTABLEKS                       R12 R12 K3 ["createElement"]
      214 GETUPVAL                         R13 9
      215 DUPTABLE                         R14 K47 [{"LayoutOrder"}]
      216 NAMECALL                         R15 R1 K24 ["getNextOrder"]
      218 CALL                             R15 1 1
      219 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      221 CALL                             R12 2 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R12
      224 SETTABLEKS                       R12 R11 K11 ["GridSortButtonContainer"]
      226 JUMPIF                           R7 ; [+12]
      227 GETUPVAL                         R12 6
      228 GETTABLEKS                       R12 R12 K3 ["createElement"]
      230 GETUPVAL                         R13 10
      231 DUPTABLE                         R14 K47 [{"LayoutOrder"}]
      232 NAMECALL                         R15 R1 K24 ["getNextOrder"]
      234 CALL                             R15 1 1
      235 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      237 CALL                             R12 2 1
      238 JUMP                             ; [+1]
      239 LOADNIL                          R12
      240 SETTABLEKS                       R12 R11 K12 ["FilterDropdown"]
      242 GETUPVAL                         R12 6
      243 GETTABLEKS                       R12 R12 K3 ["createElement"]
      245 GETUPVAL                         R13 11
      246 DUPTABLE                         R14 K47 [{"LayoutOrder"}]
      247 NAMECALL                         R15 R1 K24 ["getNextOrder"]
      249 CALL                             R15 1 1
      250 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      252 CALL                             R12 2 1
      253 SETTABLEKS                       R12 R11 K13 ["ViewTypeContainer"]
      255 GETUPVAL                         R12 6
      256 GETTABLEKS                       R12 R12 K3 ["createElement"]
      258 GETUPVAL                         R13 7
      259 GETTABLEKS                       R13 R13 K14 ["Divider"]
      261 DUPTABLE                         R14 K49 [{"LayoutOrder", "orientation"}]
      262 NAMECALL                         R15 R1 K24 ["getNextOrder"]
      264 CALL                             R15 1 1
      265 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      267 GETUPVAL                         R15 7
      268 GETTABLEKS                       R15 R15 K27 ["Enums"]
      270 GETTABLEKS                       R15 R15 K50 ["DividerOrientation"]
      272 GETTABLEKS                       R15 R15 K51 ["Vertical"]
      274 SETTABLEKS                       R15 R14 K48 ["orientation"]
      276 CALL                             R12 2 1
      277 SETTABLEKS                       R12 R11 K14 ["Divider"]
      279 GETUPVAL                         R12 6
      280 GETTABLEKS                       R12 R12 K3 ["createElement"]
      282 GETUPVAL                         R13 12
      283 DUPTABLE                         R14 K47 [{"LayoutOrder"}]
      284 NAMECALL                         R15 R1 K24 ["getNextOrder"]
      286 CALL                             R15 1 1
      287 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      289 CALL                             R12 2 1
      290 SETTABLEKS                       R12 R11 K15 ["BulkImportButton"]
      292 CALL                             R8 3 -1
      293 RETURN                           R8 -1

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
       81 GETTABLEKS                       R12 R12 K23 ["useLayoutInfo"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K12 ["Src"]
       88 GETTABLEKS                       R13 R13 K22 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K24 ["useSearchInfo"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K12 ["Src"]
       97 GETTABLEKS                       R14 R14 K22 ["Hooks"]
       99 GETTABLEKS                       R14 R14 K25 ["useCurrentScope"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K12 ["Src"]
      106 GETTABLEKS                       R15 R15 K26 ["Types"]
      108 CALL                             R14 1 1
      109 GETTABLEKS                       R15 R3 K27 ["Util"]
      111 GETTABLEKS                       R15 R15 K28 ["LayoutOrderIterator"]
      113 DUPCLOSURE                       R16 K29 [PROTO_2]
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R6
      127 RETURN                           R16 1
