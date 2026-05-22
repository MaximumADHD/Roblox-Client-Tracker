PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshItems"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["refreshUniverseInfo"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 1
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R0 3
       12 NAMECALL                         R0 R0 K2 ["refreshScopes"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

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
       13 GETTABLEKS                       R4 R4 K1 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K1 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 CALL                             R6 0 1
       22 GETTABLEKS                       R7 R6 K2 ["ShowSearchOptions"]
       24 GETUPVAL                         R8 6
       25 CALL                             R8 0 1
       26 GETUPVAL                         R9 7
       27 CALL                             R9 0 1
       28 GETUPVAL                         R10 8
       29 GETTABLEKS                       R10 R10 K3 ["createElement"]
       31 GETUPVAL                         R11 9
       32 GETTABLEKS                       R11 R11 K4 ["View"]
       34 DUPTABLE                         R12 K7 [{"LayoutOrder", "tag"}]
       35 GETTABLEKS                       R13 R0 K5 ["LayoutOrder"]
       37 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       39 LOADK                            R13 K8 ["padding-y-xsmall padding-right-xlarge size-0-full auto-x row align-x-right align-y-center gap-small"]
       40 SETTABLEKS                       R13 R12 K6 ["tag"]
       42 DUPTABLE                         R13 K16 [{"RefreshButton", "ClearAllButton", "GridSortButtonContainer", "FilterDropdown", "ViewTypeContainer", "Divider", "BulkImportButton"}]
       43 JUMPIF                           R7 ; [+85]
       44 GETTABLEKS                       R15 R8 K17 ["Type"]
       46 GETUPVAL                         R16 10
       47 GETTABLEKS                       R16 R16 K18 ["ScopeType"]
       49 GETTABLEKS                       R16 R16 K19 ["RecentUploads"]
       51 JUMPIFEQ                         R15 R16 ; [+77]
       53 GETUPVAL                         R14 8
       54 GETTABLEKS                       R14 R14 K3 ["createElement"]
       56 GETUPVAL                         R15 9
       57 GETTABLEKS                       R15 R15 K20 ["Tooltip"]
       59 DUPTABLE                         R16 K23 [{"LayoutOrder", "title", "side"}]
       60 NAMECALL                         R17 R1 K24 ["getNextOrder"]
       62 CALL                             R17 1 1
       63 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
       65 LOADK                            R19 K20 ["Tooltip"]
       66 LOADK                            R20 K25 ["Refresh"]
       67 NAMECALL                         R17 R2 K26 ["getText"]
       69 CALL                             R17 3 1
       70 SETTABLEKS                       R17 R16 K21 ["title"]
       72 GETUPVAL                         R17 9
       73 GETTABLEKS                       R17 R17 K27 ["Enums"]
       75 GETTABLEKS                       R17 R17 K28 ["PopoverSide"]
       77 GETTABLEKS                       R17 R17 K29 ["Bottom"]
       79 SETTABLEKS                       R17 R16 K22 ["side"]
       81 NEWTABLE                         R17 0 1
       83 GETUPVAL                         R18 8
       84 GETTABLEKS                       R18 R18 K3 ["createElement"]
       86 GETUPVAL                         R19 9
       87 GETTABLEKS                       R19 R19 K30 ["IconButton"]
       89 DUPTABLE                         R20 K35 [{"onActivated", "variant", "size", "icon"}]
       90 NEWCLOSURE                       R21 P0
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R3
       93 CAPTURE                          UPVAL U11
       94 CAPTURE                          VAL R5
       95 SETTABLEKS                       R21 R20 K31 ["onActivated"]
       97 GETUPVAL                         R21 9
       98 GETTABLEKS                       R21 R21 K27 ["Enums"]
      100 GETTABLEKS                       R21 R21 K36 ["ButtonVariant"]
      102 GETTABLEKS                       R21 R21 K37 ["Utility"]
      104 SETTABLEKS                       R21 R20 K32 ["variant"]
      106 GETUPVAL                         R21 9
      107 GETTABLEKS                       R21 R21 K27 ["Enums"]
      109 GETTABLEKS                       R21 R21 K38 ["InputSize"]
      111 GETTABLEKS                       R21 R21 K39 ["XSmall"]
      113 SETTABLEKS                       R21 R20 K33 ["size"]
      115 GETUPVAL                         R21 9
      116 GETTABLEKS                       R21 R21 K27 ["Enums"]
      118 GETTABLEKS                       R21 R21 K40 ["IconName"]
      120 GETTABLEKS                       R21 R21 K41 ["TwoArrowsSpinClockwise"]
      122 SETTABLEKS                       R21 R20 K34 ["icon"]
      124 CALL                             R18 2 -1
      125 SETLIST                          R17 R18 -1 [1]
      127 CALL                             R14 3 1
      128 JUMP                             ; [+1]
      129 LOADNIL                          R14
      130 SETTABLEKS                       R14 R13 K9 ["RefreshButton"]
      132 GETTABLEKS                       R15 R8 K17 ["Type"]
      134 GETUPVAL                         R16 10
      135 GETTABLEKS                       R16 R16 K18 ["ScopeType"]
      137 GETTABLEKS                       R16 R16 K19 ["RecentUploads"]
      139 JUMPIFNOTEQ                      R15 R16 ; [+70]
      141 GETUPVAL                         R14 8
      142 GETTABLEKS                       R14 R14 K3 ["createElement"]
      144 GETUPVAL                         R15 9
      145 GETTABLEKS                       R15 R15 K20 ["Tooltip"]
      147 DUPTABLE                         R16 K23 [{"LayoutOrder", "title", "side"}]
      148 NAMECALL                         R17 R1 K24 ["getNextOrder"]
      150 CALL                             R17 1 1
      151 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
      153 LOADK                            R19 K42 ["ContextMenu"]
      154 LOADK                            R20 K43 ["ClearRecent"]
      155 NAMECALL                         R17 R2 K26 ["getText"]
      157 CALL                             R17 3 1
      158 SETTABLEKS                       R17 R16 K21 ["title"]
      160 GETUPVAL                         R17 9
      161 GETTABLEKS                       R17 R17 K27 ["Enums"]
      163 GETTABLEKS                       R17 R17 K28 ["PopoverSide"]
      165 GETTABLEKS                       R17 R17 K29 ["Bottom"]
      167 SETTABLEKS                       R17 R16 K22 ["side"]
      169 GETUPVAL                         R17 8
      170 GETTABLEKS                       R17 R17 K3 ["createElement"]
      172 GETUPVAL                         R18 9
      173 GETTABLEKS                       R18 R18 K30 ["IconButton"]
      175 DUPTABLE                         R19 K35 [{"onActivated", "variant", "size", "icon"}]
      176 NEWCLOSURE                       R20 P1
      177 CAPTURE                          VAL R4
      178 SETTABLEKS                       R20 R19 K31 ["onActivated"]
      180 GETUPVAL                         R20 9
      181 GETTABLEKS                       R20 R20 K27 ["Enums"]
      183 GETTABLEKS                       R20 R20 K36 ["ButtonVariant"]
      185 GETTABLEKS                       R20 R20 K37 ["Utility"]
      187 SETTABLEKS                       R20 R19 K32 ["variant"]
      189 GETUPVAL                         R20 9
      190 GETTABLEKS                       R20 R20 K27 ["Enums"]
      192 GETTABLEKS                       R20 R20 K38 ["InputSize"]
      194 GETTABLEKS                       R20 R20 K39 ["XSmall"]
      196 SETTABLEKS                       R20 R19 K33 ["size"]
      198 GETUPVAL                         R20 9
      199 GETTABLEKS                       R20 R20 K27 ["Enums"]
      201 GETTABLEKS                       R20 R20 K40 ["IconName"]
      203 GETTABLEKS                       R20 R20 K44 ["TrashCan"]
      205 SETTABLEKS                       R20 R19 K34 ["icon"]
      207 CALL                             R17 2 -1
      208 CALL                             R14 -1 1
      209 JUMP                             ; [+1]
      210 LOADNIL                          R14
      211 SETTABLEKS                       R14 R13 K10 ["ClearAllButton"]
      213 GETTABLEKS                       R15 R9 K45 ["ViewType"]
      215 GETUPVAL                         R16 10
      216 GETTABLEKS                       R16 R16 K45 ["ViewType"]
      218 GETTABLEKS                       R16 R16 K46 ["Grid"]
      220 JUMPIFNOTEQ                      R15 R16 ; [+13]
      222 GETUPVAL                         R14 8
      223 GETTABLEKS                       R14 R14 K3 ["createElement"]
      225 GETUPVAL                         R15 12
      226 DUPTABLE                         R16 K47 [{"LayoutOrder"}]
      227 NAMECALL                         R17 R1 K24 ["getNextOrder"]
      229 CALL                             R17 1 1
      230 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
      232 CALL                             R14 2 1
      233 JUMP                             ; [+1]
      234 LOADNIL                          R14
      235 SETTABLEKS                       R14 R13 K11 ["GridSortButtonContainer"]
      237 JUMPIF                           R7 ; [+12]
      238 GETUPVAL                         R14 8
      239 GETTABLEKS                       R14 R14 K3 ["createElement"]
      241 GETUPVAL                         R15 13
      242 DUPTABLE                         R16 K47 [{"LayoutOrder"}]
      243 NAMECALL                         R17 R1 K24 ["getNextOrder"]
      245 CALL                             R17 1 1
      246 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
      248 CALL                             R14 2 1
      249 JUMP                             ; [+1]
      250 LOADNIL                          R14
      251 SETTABLEKS                       R14 R13 K12 ["FilterDropdown"]
      253 GETUPVAL                         R14 8
      254 GETTABLEKS                       R14 R14 K3 ["createElement"]
      256 GETUPVAL                         R15 14
      257 DUPTABLE                         R16 K47 [{"LayoutOrder"}]
      258 NAMECALL                         R17 R1 K24 ["getNextOrder"]
      260 CALL                             R17 1 1
      261 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
      263 CALL                             R14 2 1
      264 SETTABLEKS                       R14 R13 K13 ["ViewTypeContainer"]
      266 GETUPVAL                         R14 8
      267 GETTABLEKS                       R14 R14 K3 ["createElement"]
      269 GETUPVAL                         R15 9
      270 GETTABLEKS                       R15 R15 K14 ["Divider"]
      272 DUPTABLE                         R16 K49 [{"LayoutOrder", "orientation"}]
      273 NAMECALL                         R17 R1 K24 ["getNextOrder"]
      275 CALL                             R17 1 1
      276 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
      278 GETUPVAL                         R17 9
      279 GETTABLEKS                       R17 R17 K27 ["Enums"]
      281 GETTABLEKS                       R17 R17 K50 ["DividerOrientation"]
      283 GETTABLEKS                       R17 R17 K51 ["Vertical"]
      285 SETTABLEKS                       R17 R16 K48 ["orientation"]
      287 CALL                             R14 2 1
      288 SETTABLEKS                       R14 R13 K14 ["Divider"]
      290 GETUPVAL                         R14 8
      291 GETTABLEKS                       R14 R14 K3 ["createElement"]
      293 GETUPVAL                         R15 15
      294 DUPTABLE                         R16 K47 [{"LayoutOrder"}]
      295 NAMECALL                         R17 R1 K24 ["getNextOrder"]
      297 CALL                             R17 1 1
      298 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
      300 CALL                             R14 2 1
      301 SETTABLEKS                       R14 R13 K15 ["BulkImportButton"]
      303 CALL                             R10 3 -1
      304 RETURN                           R10 -1

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
       34 GETIMPORT                        R7 K1 [script]
       36 GETTABLEKS                       R7 R7 K12 ["BulkImportButton"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K5 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R8 R8 K13 ["FilterTypesDropdown"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETIMPORT                        R9 K1 [script]
       50 GETTABLEKS                       R9 R9 K14 ["SortOptions"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K5 [require]
       55 GETIMPORT                        R10 K1 [script]
       57 GETTABLEKS                       R10 R10 K15 ["ViewOptions"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K5 [require]
       62 GETTABLEKS                       R11 R0 K16 ["Src"]
       64 GETTABLEKS                       R11 R11 K17 ["Controllers"]
       66 GETTABLEKS                       R11 R11 K18 ["ExplorerController"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R12 R0 K16 ["Src"]
       73 GETTABLEKS                       R12 R12 K17 ["Controllers"]
       75 GETTABLEKS                       R12 R12 K19 ["ItemsController"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R13 R0 K16 ["Src"]
       82 GETTABLEKS                       R13 R13 K17 ["Controllers"]
       84 GETTABLEKS                       R13 R13 K20 ["PluginController"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K5 [require]
       89 GETTABLEKS                       R14 R0 K16 ["Src"]
       91 GETTABLEKS                       R14 R14 K21 ["Hooks"]
       93 GETTABLEKS                       R14 R14 K22 ["useLayoutInfo"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K16 ["Src"]
      100 GETTABLEKS                       R15 R15 K21 ["Hooks"]
      102 GETTABLEKS                       R15 R15 K23 ["useSearchInfo"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K16 ["Src"]
      109 GETTABLEKS                       R16 R16 K21 ["Hooks"]
      111 GETTABLEKS                       R16 R16 K24 ["useCurrentScope"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K16 ["Src"]
      118 GETTABLEKS                       R17 R17 K25 ["Types"]
      120 CALL                             R16 1 1
      121 GETTABLEKS                       R17 R3 K26 ["Util"]
      123 GETTABLEKS                       R17 R17 K27 ["LayoutOrderIterator"]
      125 GETIMPORT                        R18 K5 [require]
      127 GETTABLEKS                       R19 R0 K16 ["Src"]
      129 GETTABLEKS                       R19 R19 K28 ["Flags"]
      131 GETTABLEKS                       R19 R19 K29 ["getFFlagAmrOrganizationFoundation"]
      133 CALL                             R18 1 1
      134 DUPCLOSURE                       R19 K30 [PROTO_2]
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R15
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R6
      151 RETURN                           R19 1
