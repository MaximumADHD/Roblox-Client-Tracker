PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshItems"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["refreshUniverseInfo"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearRecent"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K1 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 CALL                             R5 0 1
       18 GETTABLEKS                       R6 R5 K2 ["ShowSearchOptions"]
       20 GETUPVAL                         R7 5
       21 CALL                             R7 0 1
       22 GETUPVAL                         R8 6
       23 CALL                             R8 0 1
       24 GETUPVAL                         R10 7
       25 GETTABLEKS                       R9 R10 K3 ["createElement"]
       27 GETUPVAL                         R11 8
       28 GETTABLEKS                       R10 R11 K4 ["View"]
       30 DUPTABLE                         R11 K7 [{"LayoutOrder", "tag"}]
       31 GETTABLEKS                       R12 R0 K5 ["LayoutOrder"]
       33 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       35 LOADK                            R12 K8 ["padding-y-xsmall padding-right-xlarge size-0-full auto-x row align-x-right align-y-center gap-small"]
       36 SETTABLEKS                       R12 R11 K6 ["tag"]
       38 DUPTABLE                         R12 K16 [{"RefreshButton", "ClearAllButton", "GridSortButtonContainer", "FilterDropdown", "ViewTypeContainer", "Divider", "BulkImportButton"}]
       39 JUMPIF                           R6 ; [+83]
       40 GETTABLEKS                       R14 R7 K17 ["Type"]
       42 GETUPVAL                         R17 9
       43 GETTABLEKS                       R16 R17 K18 ["ScopeType"]
       45 GETTABLEKS                       R15 R16 K19 ["RecentUploads"]
       47 JUMPIFEQ                         R14 R15 ; [+75]
       49 GETUPVAL                         R14 7
       50 GETTABLEKS                       R13 R14 K3 ["createElement"]
       52 GETUPVAL                         R15 8
       53 GETTABLEKS                       R14 R15 K20 ["Tooltip"]
       55 DUPTABLE                         R15 K23 [{"LayoutOrder", "title", "side"}]
       56 NAMECALL                         R16 R1 K24 ["getNextOrder"]
       58 CALL                             R16 1 1
       59 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
       61 LOADK                            R18 K20 ["Tooltip"]
       62 LOADK                            R19 K25 ["Refresh"]
       63 NAMECALL                         R16 R2 K26 ["getText"]
       65 CALL                             R16 3 1
       66 SETTABLEKS                       R16 R15 K21 ["title"]
       68 GETUPVAL                         R19 8
       69 GETTABLEKS                       R18 R19 K27 ["Enums"]
       71 GETTABLEKS                       R17 R18 K28 ["PopoverSide"]
       73 GETTABLEKS                       R16 R17 K29 ["Bottom"]
       75 SETTABLEKS                       R16 R15 K22 ["side"]
       77 NEWTABLE                         R16 0 1
       79 GETUPVAL                         R18 7
       80 GETTABLEKS                       R17 R18 K3 ["createElement"]
       82 GETUPVAL                         R19 8
       83 GETTABLEKS                       R18 R19 K30 ["IconButton"]
       85 DUPTABLE                         R19 K35 [{"onActivated", "variant", "size", "icon"}]
       86 NEWCLOSURE                       R20 P0
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R20 R19 K31 ["onActivated"]
       91 GETUPVAL                         R23 8
       92 GETTABLEKS                       R22 R23 K27 ["Enums"]
       94 GETTABLEKS                       R21 R22 K36 ["ButtonVariant"]
       96 GETTABLEKS                       R20 R21 K37 ["Utility"]
       98 SETTABLEKS                       R20 R19 K32 ["variant"]
      100 GETUPVAL                         R23 8
      101 GETTABLEKS                       R22 R23 K27 ["Enums"]
      103 GETTABLEKS                       R21 R22 K38 ["InputSize"]
      105 GETTABLEKS                       R20 R21 K39 ["XSmall"]
      107 SETTABLEKS                       R20 R19 K33 ["size"]
      109 GETUPVAL                         R23 8
      110 GETTABLEKS                       R22 R23 K27 ["Enums"]
      112 GETTABLEKS                       R21 R22 K40 ["IconName"]
      114 GETTABLEKS                       R20 R21 K41 ["TwoArrowsSpinClockwise"]
      116 SETTABLEKS                       R20 R19 K34 ["icon"]
      118 CALL                             R17 2 -1
      119 SETLIST                          R16 R17 -1 [1]
      121 CALL                             R13 3 1
      122 JUMP                             ; [+1]
      123 LOADNIL                          R13
      124 SETTABLEKS                       R13 R12 K9 ["RefreshButton"]
      126 GETTABLEKS                       R14 R7 K17 ["Type"]
      128 GETUPVAL                         R17 9
      129 GETTABLEKS                       R16 R17 K18 ["ScopeType"]
      131 GETTABLEKS                       R15 R16 K19 ["RecentUploads"]
      133 JUMPIFNOTEQ                      R14 R15 ; [+70]
      135 GETUPVAL                         R14 7
      136 GETTABLEKS                       R13 R14 K3 ["createElement"]
      138 GETUPVAL                         R15 8
      139 GETTABLEKS                       R14 R15 K20 ["Tooltip"]
      141 DUPTABLE                         R15 K23 [{"LayoutOrder", "title", "side"}]
      142 NAMECALL                         R16 R1 K24 ["getNextOrder"]
      144 CALL                             R16 1 1
      145 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      147 LOADK                            R18 K42 ["ContextMenu"]
      148 LOADK                            R19 K43 ["ClearRecent"]
      149 NAMECALL                         R16 R2 K26 ["getText"]
      151 CALL                             R16 3 1
      152 SETTABLEKS                       R16 R15 K21 ["title"]
      154 GETUPVAL                         R19 8
      155 GETTABLEKS                       R18 R19 K27 ["Enums"]
      157 GETTABLEKS                       R17 R18 K28 ["PopoverSide"]
      159 GETTABLEKS                       R16 R17 K29 ["Bottom"]
      161 SETTABLEKS                       R16 R15 K22 ["side"]
      163 GETUPVAL                         R17 7
      164 GETTABLEKS                       R16 R17 K3 ["createElement"]
      166 GETUPVAL                         R18 8
      167 GETTABLEKS                       R17 R18 K30 ["IconButton"]
      169 DUPTABLE                         R18 K35 [{"onActivated", "variant", "size", "icon"}]
      170 NEWCLOSURE                       R19 P1
      171 CAPTURE                          VAL R4
      172 SETTABLEKS                       R19 R18 K31 ["onActivated"]
      174 GETUPVAL                         R22 8
      175 GETTABLEKS                       R21 R22 K27 ["Enums"]
      177 GETTABLEKS                       R20 R21 K36 ["ButtonVariant"]
      179 GETTABLEKS                       R19 R20 K37 ["Utility"]
      181 SETTABLEKS                       R19 R18 K32 ["variant"]
      183 GETUPVAL                         R22 8
      184 GETTABLEKS                       R21 R22 K27 ["Enums"]
      186 GETTABLEKS                       R20 R21 K38 ["InputSize"]
      188 GETTABLEKS                       R19 R20 K39 ["XSmall"]
      190 SETTABLEKS                       R19 R18 K33 ["size"]
      192 GETUPVAL                         R22 8
      193 GETTABLEKS                       R21 R22 K27 ["Enums"]
      195 GETTABLEKS                       R20 R21 K40 ["IconName"]
      197 GETTABLEKS                       R19 R20 K44 ["TrashCan"]
      199 SETTABLEKS                       R19 R18 K34 ["icon"]
      201 CALL                             R16 2 -1
      202 CALL                             R13 -1 1
      203 JUMP                             ; [+1]
      204 LOADNIL                          R13
      205 SETTABLEKS                       R13 R12 K10 ["ClearAllButton"]
      207 GETTABLEKS                       R14 R8 K45 ["ViewType"]
      209 GETUPVAL                         R17 9
      210 GETTABLEKS                       R16 R17 K45 ["ViewType"]
      212 GETTABLEKS                       R15 R16 K46 ["Grid"]
      214 JUMPIFNOTEQ                      R14 R15 ; [+13]
      216 GETUPVAL                         R14 7
      217 GETTABLEKS                       R13 R14 K3 ["createElement"]
      219 GETUPVAL                         R14 10
      220 DUPTABLE                         R15 K47 [{"LayoutOrder"}]
      221 NAMECALL                         R16 R1 K24 ["getNextOrder"]
      223 CALL                             R16 1 1
      224 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      226 CALL                             R13 2 1
      227 JUMP                             ; [+1]
      228 LOADNIL                          R13
      229 SETTABLEKS                       R13 R12 K11 ["GridSortButtonContainer"]
      231 JUMPIF                           R6 ; [+12]
      232 GETUPVAL                         R14 7
      233 GETTABLEKS                       R13 R14 K3 ["createElement"]
      235 GETUPVAL                         R14 11
      236 DUPTABLE                         R15 K47 [{"LayoutOrder"}]
      237 NAMECALL                         R16 R1 K24 ["getNextOrder"]
      239 CALL                             R16 1 1
      240 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      242 CALL                             R13 2 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R13
      245 SETTABLEKS                       R13 R12 K12 ["FilterDropdown"]
      247 GETUPVAL                         R14 7
      248 GETTABLEKS                       R13 R14 K3 ["createElement"]
      250 GETUPVAL                         R14 12
      251 DUPTABLE                         R15 K47 [{"LayoutOrder"}]
      252 NAMECALL                         R16 R1 K24 ["getNextOrder"]
      254 CALL                             R16 1 1
      255 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      257 CALL                             R13 2 1
      258 SETTABLEKS                       R13 R12 K13 ["ViewTypeContainer"]
      260 GETUPVAL                         R14 7
      261 GETTABLEKS                       R13 R14 K3 ["createElement"]
      263 GETUPVAL                         R15 8
      264 GETTABLEKS                       R14 R15 K14 ["Divider"]
      266 DUPTABLE                         R15 K49 [{"LayoutOrder", "orientation"}]
      267 NAMECALL                         R16 R1 K24 ["getNextOrder"]
      269 CALL                             R16 1 1
      270 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      272 GETUPVAL                         R19 8
      273 GETTABLEKS                       R18 R19 K27 ["Enums"]
      275 GETTABLEKS                       R17 R18 K50 ["DividerOrientation"]
      277 GETTABLEKS                       R16 R17 K51 ["Vertical"]
      279 SETTABLEKS                       R16 R15 K48 ["orientation"]
      281 CALL                             R13 2 1
      282 SETTABLEKS                       R13 R12 K14 ["Divider"]
      284 GETUPVAL                         R14 7
      285 GETTABLEKS                       R13 R14 K3 ["createElement"]
      287 GETUPVAL                         R14 13
      288 DUPTABLE                         R15 K47 [{"LayoutOrder"}]
      289 NAMECALL                         R16 R1 K24 ["getNextOrder"]
      291 CALL                             R16 1 1
      292 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      294 CALL                             R13 2 1
      295 SETTABLEKS                       R13 R12 K15 ["BulkImportButton"]
      297 CALL                             R9 3 -1
      298 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R7 R8 K12 ["BulkImportButton"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETIMPORT                        R9 K1 [script]
       43 GETTABLEKS                       R8 R9 K13 ["FilterTypesDropdown"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETIMPORT                        R10 K1 [script]
       50 GETTABLEKS                       R9 R10 K14 ["SortOptions"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETIMPORT                        R11 K1 [script]
       57 GETTABLEKS                       R10 R11 K15 ["ViewOptions"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K5 [require]
       62 GETTABLEKS                       R13 R0 K16 ["Src"]
       64 GETTABLEKS                       R12 R13 K17 ["Controllers"]
       66 GETTABLEKS                       R11 R12 K18 ["ItemsController"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R14 R0 K16 ["Src"]
       73 GETTABLEKS                       R13 R14 K17 ["Controllers"]
       75 GETTABLEKS                       R12 R13 K19 ["PluginController"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R15 R0 K16 ["Src"]
       82 GETTABLEKS                       R14 R15 K20 ["Hooks"]
       84 GETTABLEKS                       R13 R14 K21 ["useLayoutInfo"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R16 R0 K16 ["Src"]
       91 GETTABLEKS                       R15 R16 K20 ["Hooks"]
       93 GETTABLEKS                       R14 R15 K22 ["useSearchInfo"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R17 R0 K16 ["Src"]
      100 GETTABLEKS                       R16 R17 K20 ["Hooks"]
      102 GETTABLEKS                       R15 R16 K23 ["useCurrentScope"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R17 R0 K16 ["Src"]
      109 GETTABLEKS                       R16 R17 K24 ["Types"]
      111 CALL                             R15 1 1
      112 GETTABLEKS                       R17 R3 K25 ["Util"]
      114 GETTABLEKS                       R16 R17 K26 ["LayoutOrderIterator"]
      116 DUPCLOSURE                       R17 K27 [PROTO_2]
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R6
      131 RETURN                           R17 1
