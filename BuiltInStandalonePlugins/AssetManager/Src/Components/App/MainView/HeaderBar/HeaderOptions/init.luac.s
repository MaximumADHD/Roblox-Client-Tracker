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
      126 GETUPVAL                         R14 10
      127 CALL                             R14 0 1
      128 JUMPIFNOT                        R14 ; [+78]
      129 GETTABLEKS                       R14 R7 K17 ["Type"]
      131 GETUPVAL                         R17 9
      132 GETTABLEKS                       R16 R17 K18 ["ScopeType"]
      134 GETTABLEKS                       R15 R16 K19 ["RecentUploads"]
      136 JUMPIFNOTEQ                      R14 R15 ; [+70]
      138 GETUPVAL                         R14 7
      139 GETTABLEKS                       R13 R14 K3 ["createElement"]
      141 GETUPVAL                         R15 8
      142 GETTABLEKS                       R14 R15 K20 ["Tooltip"]
      144 DUPTABLE                         R15 K23 [{"LayoutOrder", "title", "side"}]
      145 NAMECALL                         R16 R1 K24 ["getNextOrder"]
      147 CALL                             R16 1 1
      148 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      150 LOADK                            R18 K42 ["ContextMenu"]
      151 LOADK                            R19 K43 ["ClearRecent"]
      152 NAMECALL                         R16 R2 K26 ["getText"]
      154 CALL                             R16 3 1
      155 SETTABLEKS                       R16 R15 K21 ["title"]
      157 GETUPVAL                         R19 8
      158 GETTABLEKS                       R18 R19 K27 ["Enums"]
      160 GETTABLEKS                       R17 R18 K28 ["PopoverSide"]
      162 GETTABLEKS                       R16 R17 K29 ["Bottom"]
      164 SETTABLEKS                       R16 R15 K22 ["side"]
      166 GETUPVAL                         R17 7
      167 GETTABLEKS                       R16 R17 K3 ["createElement"]
      169 GETUPVAL                         R18 8
      170 GETTABLEKS                       R17 R18 K30 ["IconButton"]
      172 DUPTABLE                         R18 K35 [{"onActivated", "variant", "size", "icon"}]
      173 NEWCLOSURE                       R19 P1
      174 CAPTURE                          VAL R4
      175 SETTABLEKS                       R19 R18 K31 ["onActivated"]
      177 GETUPVAL                         R22 8
      178 GETTABLEKS                       R21 R22 K27 ["Enums"]
      180 GETTABLEKS                       R20 R21 K36 ["ButtonVariant"]
      182 GETTABLEKS                       R19 R20 K37 ["Utility"]
      184 SETTABLEKS                       R19 R18 K32 ["variant"]
      186 GETUPVAL                         R22 8
      187 GETTABLEKS                       R21 R22 K27 ["Enums"]
      189 GETTABLEKS                       R20 R21 K38 ["InputSize"]
      191 GETTABLEKS                       R19 R20 K39 ["XSmall"]
      193 SETTABLEKS                       R19 R18 K33 ["size"]
      195 GETUPVAL                         R22 8
      196 GETTABLEKS                       R21 R22 K27 ["Enums"]
      198 GETTABLEKS                       R20 R21 K40 ["IconName"]
      200 GETTABLEKS                       R19 R20 K44 ["TrashCan"]
      202 SETTABLEKS                       R19 R18 K34 ["icon"]
      204 CALL                             R16 2 -1
      205 CALL                             R13 -1 1
      206 JUMP                             ; [+1]
      207 LOADNIL                          R13
      208 SETTABLEKS                       R13 R12 K10 ["ClearAllButton"]
      210 GETTABLEKS                       R14 R8 K45 ["ViewType"]
      212 GETUPVAL                         R17 9
      213 GETTABLEKS                       R16 R17 K45 ["ViewType"]
      215 GETTABLEKS                       R15 R16 K46 ["Grid"]
      217 JUMPIFNOTEQ                      R14 R15 ; [+13]
      219 GETUPVAL                         R14 7
      220 GETTABLEKS                       R13 R14 K3 ["createElement"]
      222 GETUPVAL                         R14 11
      223 DUPTABLE                         R15 K47 [{"LayoutOrder"}]
      224 NAMECALL                         R16 R1 K24 ["getNextOrder"]
      226 CALL                             R16 1 1
      227 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      229 CALL                             R13 2 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R13
      232 SETTABLEKS                       R13 R12 K11 ["GridSortButtonContainer"]
      234 JUMPIF                           R6 ; [+12]
      235 GETUPVAL                         R14 7
      236 GETTABLEKS                       R13 R14 K3 ["createElement"]
      238 GETUPVAL                         R14 12
      239 DUPTABLE                         R15 K47 [{"LayoutOrder"}]
      240 NAMECALL                         R16 R1 K24 ["getNextOrder"]
      242 CALL                             R16 1 1
      243 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      245 CALL                             R13 2 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R13
      248 SETTABLEKS                       R13 R12 K12 ["FilterDropdown"]
      250 GETUPVAL                         R14 7
      251 GETTABLEKS                       R13 R14 K3 ["createElement"]
      253 GETUPVAL                         R14 13
      254 DUPTABLE                         R15 K47 [{"LayoutOrder"}]
      255 NAMECALL                         R16 R1 K24 ["getNextOrder"]
      257 CALL                             R16 1 1
      258 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      260 CALL                             R13 2 1
      261 SETTABLEKS                       R13 R12 K13 ["ViewTypeContainer"]
      263 GETUPVAL                         R14 7
      264 GETTABLEKS                       R13 R14 K3 ["createElement"]
      266 GETUPVAL                         R15 8
      267 GETTABLEKS                       R14 R15 K14 ["Divider"]
      269 DUPTABLE                         R15 K49 [{"LayoutOrder", "orientation"}]
      270 NAMECALL                         R16 R1 K24 ["getNextOrder"]
      272 CALL                             R16 1 1
      273 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      275 GETUPVAL                         R19 8
      276 GETTABLEKS                       R18 R19 K27 ["Enums"]
      278 GETTABLEKS                       R17 R18 K50 ["DividerOrientation"]
      280 GETTABLEKS                       R16 R17 K51 ["Vertical"]
      282 SETTABLEKS                       R16 R15 K48 ["orientation"]
      284 CALL                             R13 2 1
      285 SETTABLEKS                       R13 R12 K14 ["Divider"]
      287 GETUPVAL                         R14 7
      288 GETTABLEKS                       R13 R14 K3 ["createElement"]
      290 GETUPVAL                         R14 14
      291 DUPTABLE                         R15 K47 [{"LayoutOrder"}]
      292 NAMECALL                         R16 R1 K24 ["getNextOrder"]
      294 CALL                             R16 1 1
      295 SETTABLEKS                       R16 R15 K5 ["LayoutOrder"]
      297 CALL                             R13 2 1
      298 SETTABLEKS                       R13 R12 K15 ["BulkImportButton"]
      300 CALL                             R9 3 -1
      301 RETURN                           R9 -1

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
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R20 R0 K16 ["Src"]
      120 GETTABLEKS                       R19 R20 K27 ["Flags"]
      122 GETTABLEKS                       R18 R19 K28 ["getFFlagAmrRecents"]
      124 CALL                             R17 1 1
      125 DUPCLOSURE                       R18 K29 [PROTO_2]
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R6
      141 RETURN                           R18 1
