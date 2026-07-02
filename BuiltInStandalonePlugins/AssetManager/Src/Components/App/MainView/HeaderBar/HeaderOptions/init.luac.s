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
       26 DUPTABLE                         R10 K8 [{["LayoutOrder"], ["tag"] = "row align-x-right align-y-center gap-small size-0-full auto-x padding-y-xsmall padding-right-small"}]
       27 GETTABLEKS                       R11 R0 K5 ["LayoutOrder"]
       29 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       31 DUPTABLE                         R11 K16 [{"RefreshButton", "ClearAllButton", "GridSortButtonContainer", "FilterDropdown", "ViewTypeContainer", "Divider", "BulkImportButton"}]
       32 JUMPIF                           R7 ; [+82]
       33 GETTABLEKS                       R13 R4 K17 ["Type"]
       35 GETUPVAL                         R14 8
       36 GETTABLEKS                       R14 R14 K18 ["ScopeType"]
       38 GETTABLEKS                       R14 R14 K19 ["RecentUploads"]
       40 JUMPIFEQ                         R13 R14 ; [+74]
       42 GETUPVAL                         R12 6
       43 GETTABLEKS                       R12 R12 K3 ["createElement"]
       45 GETUPVAL                         R13 7
       46 GETTABLEKS                       R13 R13 K20 ["Tooltip"]
       48 DUPTABLE                         R14 K23 [{"LayoutOrder", "title", "side"}]
       49 NAMECALL                         R15 R1 K24 ["getNextOrder"]
       51 CALL                             R15 1 1
       52 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
       54 LOADK                            R17 K20 ["Tooltip"]
       55 LOADK                            R18 K25 ["Refresh"]
       56 NAMECALL                         R15 R2 K26 ["getText"]
       58 CALL                             R15 3 1
       59 SETTABLEKS                       R15 R14 K21 ["title"]
       61 GETUPVAL                         R15 7
       62 GETTABLEKS                       R15 R15 K27 ["Enums"]
       64 GETTABLEKS                       R15 R15 K28 ["PopoverSide"]
       66 GETTABLEKS                       R15 R15 K29 ["Bottom"]
       68 SETTABLEKS                       R15 R14 K22 ["side"]
       70 NEWTABLE                         R15 0 1
       72 GETUPVAL                         R16 6
       73 GETTABLEKS                       R16 R16 K3 ["createElement"]
       75 GETUPVAL                         R17 7
       76 GETTABLEKS                       R17 R17 K30 ["IconButton"]
       78 DUPTABLE                         R18 K35 [{"onActivated", "variant", "size", "icon"}]
       79 NEWCLOSURE                       R19 P0
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R19 R18 K31 ["onActivated"]
       83 GETUPVAL                         R19 7
       84 GETTABLEKS                       R19 R19 K27 ["Enums"]
       86 GETTABLEKS                       R19 R19 K36 ["ButtonVariant"]
       88 GETTABLEKS                       R19 R19 K37 ["Utility"]
       90 SETTABLEKS                       R19 R18 K32 ["variant"]
       92 GETUPVAL                         R19 7
       93 GETTABLEKS                       R19 R19 K27 ["Enums"]
       95 GETTABLEKS                       R19 R19 K38 ["InputSize"]
       97 GETTABLEKS                       R19 R19 K39 ["XSmall"]
       99 SETTABLEKS                       R19 R18 K33 ["size"]
      101 GETUPVAL                         R19 7
      102 GETTABLEKS                       R19 R19 K27 ["Enums"]
      104 GETTABLEKS                       R19 R19 K40 ["IconName"]
      106 GETTABLEKS                       R19 R19 K41 ["TwoArrowsSpinClockwise"]
      108 SETTABLEKS                       R19 R18 K34 ["icon"]
      110 CALL                             R16 2 -1
      111 SETLIST                          R15 R16 -1 [1]
      113 CALL                             R12 3 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R12
      116 SETTABLEKS                       R12 R11 K9 ["RefreshButton"]
      118 GETTABLEKS                       R13 R4 K17 ["Type"]
      120 GETUPVAL                         R14 8
      121 GETTABLEKS                       R14 R14 K18 ["ScopeType"]
      123 GETTABLEKS                       R14 R14 K19 ["RecentUploads"]
      125 JUMPIFNOTEQ                      R13 R14 ; [+70]
      127 GETUPVAL                         R12 6
      128 GETTABLEKS                       R12 R12 K3 ["createElement"]
      130 GETUPVAL                         R13 7
      131 GETTABLEKS                       R13 R13 K20 ["Tooltip"]
      133 DUPTABLE                         R14 K23 [{"LayoutOrder", "title", "side"}]
      134 NAMECALL                         R15 R1 K24 ["getNextOrder"]
      136 CALL                             R15 1 1
      137 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      139 LOADK                            R17 K42 ["ContextMenu"]
      140 LOADK                            R18 K43 ["ClearRecent"]
      141 NAMECALL                         R15 R2 K26 ["getText"]
      143 CALL                             R15 3 1
      144 SETTABLEKS                       R15 R14 K21 ["title"]
      146 GETUPVAL                         R15 7
      147 GETTABLEKS                       R15 R15 K27 ["Enums"]
      149 GETTABLEKS                       R15 R15 K28 ["PopoverSide"]
      151 GETTABLEKS                       R15 R15 K29 ["Bottom"]
      153 SETTABLEKS                       R15 R14 K22 ["side"]
      155 GETUPVAL                         R15 6
      156 GETTABLEKS                       R15 R15 K3 ["createElement"]
      158 GETUPVAL                         R16 7
      159 GETTABLEKS                       R16 R16 K30 ["IconButton"]
      161 DUPTABLE                         R17 K35 [{"onActivated", "variant", "size", "icon"}]
      162 NEWCLOSURE                       R18 P1
      163 CAPTURE                          VAL R3
      164 SETTABLEKS                       R18 R17 K31 ["onActivated"]
      166 GETUPVAL                         R18 7
      167 GETTABLEKS                       R18 R18 K27 ["Enums"]
      169 GETTABLEKS                       R18 R18 K36 ["ButtonVariant"]
      171 GETTABLEKS                       R18 R18 K37 ["Utility"]
      173 SETTABLEKS                       R18 R17 K32 ["variant"]
      175 GETUPVAL                         R18 7
      176 GETTABLEKS                       R18 R18 K27 ["Enums"]
      178 GETTABLEKS                       R18 R18 K38 ["InputSize"]
      180 GETTABLEKS                       R18 R18 K39 ["XSmall"]
      182 SETTABLEKS                       R18 R17 K33 ["size"]
      184 GETUPVAL                         R18 7
      185 GETTABLEKS                       R18 R18 K27 ["Enums"]
      187 GETTABLEKS                       R18 R18 K40 ["IconName"]
      189 GETTABLEKS                       R18 R18 K44 ["TrashCan"]
      191 SETTABLEKS                       R18 R17 K34 ["icon"]
      193 CALL                             R15 2 -1
      194 CALL                             R12 -1 1
      195 JUMP                             ; [+1]
      196 LOADNIL                          R12
      197 SETTABLEKS                       R12 R11 K10 ["ClearAllButton"]
      199 GETTABLEKS                       R13 R5 K45 ["ViewType"]
      201 GETUPVAL                         R14 8
      202 GETTABLEKS                       R14 R14 K45 ["ViewType"]
      204 GETTABLEKS                       R14 R14 K46 ["Grid"]
      206 JUMPIFNOTEQ                      R13 R14 ; [+13]
      208 GETUPVAL                         R12 6
      209 GETTABLEKS                       R12 R12 K3 ["createElement"]
      211 GETUPVAL                         R13 9
      212 DUPTABLE                         R14 K47 [{"LayoutOrder"}]
      213 NAMECALL                         R15 R1 K24 ["getNextOrder"]
      215 CALL                             R15 1 1
      216 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      218 CALL                             R12 2 1
      219 JUMP                             ; [+1]
      220 LOADNIL                          R12
      221 SETTABLEKS                       R12 R11 K11 ["GridSortButtonContainer"]
      223 JUMPIF                           R7 ; [+12]
      224 GETUPVAL                         R12 6
      225 GETTABLEKS                       R12 R12 K3 ["createElement"]
      227 GETUPVAL                         R13 10
      228 DUPTABLE                         R14 K47 [{"LayoutOrder"}]
      229 NAMECALL                         R15 R1 K24 ["getNextOrder"]
      231 CALL                             R15 1 1
      232 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      234 CALL                             R12 2 1
      235 JUMP                             ; [+1]
      236 LOADNIL                          R12
      237 SETTABLEKS                       R12 R11 K12 ["FilterDropdown"]
      239 GETUPVAL                         R12 6
      240 GETTABLEKS                       R12 R12 K3 ["createElement"]
      242 GETUPVAL                         R13 11
      243 DUPTABLE                         R14 K47 [{"LayoutOrder"}]
      244 NAMECALL                         R15 R1 K24 ["getNextOrder"]
      246 CALL                             R15 1 1
      247 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      249 CALL                             R12 2 1
      250 SETTABLEKS                       R12 R11 K13 ["ViewTypeContainer"]
      252 GETUPVAL                         R12 6
      253 GETTABLEKS                       R12 R12 K3 ["createElement"]
      255 GETUPVAL                         R13 7
      256 GETTABLEKS                       R13 R13 K14 ["Divider"]
      258 DUPTABLE                         R14 K49 [{"LayoutOrder", "orientation"}]
      259 NAMECALL                         R15 R1 K24 ["getNextOrder"]
      261 CALL                             R15 1 1
      262 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      264 GETUPVAL                         R15 7
      265 GETTABLEKS                       R15 R15 K27 ["Enums"]
      267 GETTABLEKS                       R15 R15 K50 ["DividerOrientation"]
      269 GETTABLEKS                       R15 R15 K51 ["Vertical"]
      271 SETTABLEKS                       R15 R14 K48 ["orientation"]
      273 CALL                             R12 2 1
      274 SETTABLEKS                       R12 R11 K14 ["Divider"]
      276 GETUPVAL                         R12 6
      277 GETTABLEKS                       R12 R12 K3 ["createElement"]
      279 GETUPVAL                         R13 12
      280 DUPTABLE                         R14 K47 [{"LayoutOrder"}]
      281 NAMECALL                         R15 R1 K24 ["getNextOrder"]
      283 CALL                             R15 1 1
      284 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      286 CALL                             R12 2 1
      287 SETTABLEKS                       R12 R11 K15 ["BulkImportButton"]
      289 CALL                             R8 3 -1
      290 RETURN                           R8 -1

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
