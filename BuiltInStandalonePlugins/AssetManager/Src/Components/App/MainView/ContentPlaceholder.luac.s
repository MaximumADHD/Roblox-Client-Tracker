PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearFilters"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 2
       10 GETTABLEKS                       R6 R0 K1 ["IsLoading"]
       12 NOT                              R5 R6
       13 JUMPIFNOT                        R5 ; [+3]
       14 GETUPVAL                         R5 3
       15 MOVE                             R6 R4
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 4
       18 CALL                             R6 0 1
       19 GETTABLEKS                       R7 R6 K2 ["ShowSearchOptions"]
       21 MOVE                             R8 R7
       22 JUMPIFNOT                        R8 ; [+27]
       23 LOADB                            R8 0
       24 GETTABLEKS                       R10 R6 K3 ["SearchOptions"]
       26 GETTABLEKS                       R9 R10 K4 ["AssetType"]
       28 GETUPVAL                         R12 5
       29 GETTABLEKS                       R11 R12 K4 ["AssetType"]
       31 GETTABLEKS                       R10 R11 K5 ["Place"]
       33 JUMPIFNOTEQ                      R9 R10 ; [+16]
       35 GETTABLEKS                       R11 R6 K3 ["SearchOptions"]
       37 GETTABLEKS                       R10 R11 K6 ["ScopeInfo"]
       39 GETTABLEKS                       R9 R10 K7 ["Type"]
       41 GETUPVAL                         R12 5
       42 GETTABLEKS                       R11 R12 K8 ["ScopeType"]
       44 GETTABLEKS                       R10 R11 K9 ["Universe"]
       46 JUMPIFNOTEQ                      R9 R10 ; [+2]
       48 LOADB                            R8 0 +1
       49 LOADB                            R8 1
       50 JUMPIFNOT                        R8 ; [+6]
       51 LOADK                            R11 K10 ["Filters"]
       52 LOADK                            R12 K11 ["PlacesOnlyInUniverseWarning"]
       53 NAMECALL                         R9 R1 K12 ["getText"]
       55 CALL                             R9 3 1
       56 JUMP                             ; [+17]
       57 GETTABLEKS                       R10 R6 K2 ["ShowSearchOptions"]
       59 JUMPIFNOT                        R10 ; [+9]
       60 GETTABLEKS                       R10 R6 K13 ["IsDefaultSearchState"]
       62 JUMPIF                           R10 ; [+4]
       63 GETTABLEKS                       R10 R6 K14 ["SearchTerm"]
       65 JUMPIFNOTEQKS                    R10 K15 [""] ; [+3]
       67 LOADK                            R9 K15 [""]
       68 JUMP                             ; [+5]
       69 LOADK                            R11 K16 ["Plugin"]
       70 LOADK                            R12 K17 ["NoAssets"]
       71 NAMECALL                         R9 R1 K12 ["getText"]
       73 CALL                             R9 3 1
       74 GETUPVAL                         R11 6
       75 GETTABLEKS                       R10 R11 K18 ["createElement"]
       77 GETUPVAL                         R12 7
       78 GETTABLEKS                       R11 R12 K19 ["View"]
       80 DUPTABLE                         R12 K22 [{"LayoutOrder", "tag"}]
       81 GETTABLEKS                       R13 R0 K20 ["LayoutOrder"]
       83 SETTABLEKS                       R13 R12 K20 ["LayoutOrder"]
       85 LOADK                            R13 K23 ["size-full col align-x-center align-y-center gap-xlarge"]
       86 SETTABLEKS                       R13 R12 K21 ["tag"]
       88 DUPTABLE                         R13 K26 [{"Content", "ClearFiltersButton"}]
       89 GETTABLEKS                       R15 R0 K1 ["IsLoading"]
       91 JUMPIFNOT                        R15 ; [+18]
       92 GETUPVAL                         R15 6
       93 GETTABLEKS                       R14 R15 K18 ["createElement"]
       95 GETUPVAL                         R16 7
       96 GETTABLEKS                       R15 R16 K27 ["Loading"]
       98 DUPTABLE                         R16 K29 [{"size"}]
       99 GETUPVAL                         R20 7
      100 GETTABLEKS                       R19 R20 K30 ["Enums"]
      102 GETTABLEKS                       R18 R19 K31 ["IconSize"]
      104 GETTABLEKS                       R17 R18 K32 ["Medium"]
      106 SETTABLEKS                       R17 R16 K28 ["size"]
      108 CALL                             R14 2 1
      109 JUMP                             ; [+21]
      110 GETUPVAL                         R15 6
      111 GETTABLEKS                       R14 R15 K18 ["createElement"]
      113 GETUPVAL                         R16 7
      114 GETTABLEKS                       R15 R16 K33 ["Text"]
      116 DUPTABLE                         R16 K34 [{"Text", "tag"}]
      117 SETTABLEKS                       R9 R16 K33 ["Text"]
      119 LOADK                            R18 K35 ["text-body-medium text-align-x-center %*"]
      120 JUMPIFNOT                        R8 ; [+2]
      121 LOADK                            R20 K36 ["content-alert"]
      122 JUMP                             ; [+1]
      123 LOADK                            R20 K37 ["content-default"]
      124 NAMECALL                         R18 R18 K38 ["format"]
      126 CALL                             R18 2 1
      127 MOVE                             R17 R18
      128 SETTABLEKS                       R17 R16 K21 ["tag"]
      130 CALL                             R14 2 1
      131 SETTABLEKS                       R14 R13 K24 ["Content"]
      133 MOVE                             R14 R5
      134 JUMPIFNOT                        R14 ; [+40]
      135 GETUPVAL                         R15 6
      136 GETTABLEKS                       R14 R15 K18 ["createElement"]
      138 GETUPVAL                         R16 7
      139 GETTABLEKS                       R15 R16 K39 ["Button"]
      141 DUPTABLE                         R16 K44 [{"text", "onActivated", "variant", "size", "testId"}]
      142 LOADK                            R19 K10 ["Filters"]
      143 LOADK                            R20 K45 ["ResetFilters"]
      144 NAMECALL                         R17 R1 K12 ["getText"]
      146 CALL                             R17 3 1
      147 SETTABLEKS                       R17 R16 K40 ["text"]
      149 NEWCLOSURE                       R17 P0
      150 CAPTURE                          VAL R2
      151 SETTABLEKS                       R17 R16 K41 ["onActivated"]
      153 GETUPVAL                         R20 7
      154 GETTABLEKS                       R19 R20 K30 ["Enums"]
      156 GETTABLEKS                       R18 R19 K46 ["ButtonVariant"]
      158 GETTABLEKS                       R17 R18 K47 ["Standard"]
      160 SETTABLEKS                       R17 R16 K42 ["variant"]
      162 GETUPVAL                         R20 7
      163 GETTABLEKS                       R19 R20 K30 ["Enums"]
      165 GETTABLEKS                       R18 R19 K48 ["InputSize"]
      167 GETTABLEKS                       R17 R18 K49 ["XSmall"]
      169 SETTABLEKS                       R17 R16 K28 ["size"]
      171 LOADK                            R17 K50 ["content-placeholder-clear-filters-button"]
      172 SETTABLEKS                       R17 R16 K43 ["testId"]
      174 CALL                             R14 2 1
      175 SETTABLEKS                       R14 R13 K25 ["ClearFiltersButton"]
      177 CALL                             R10 3 -1
      178 RETURN                           R10 -1

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
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R10 R0 K9 ["Src"]
       43 GETTABLEKS                       R9 R10 K14 ["Controllers"]
       45 GETTABLEKS                       R8 R9 K15 ["ItemsController"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R11 R0 K9 ["Src"]
       52 GETTABLEKS                       R10 R11 K16 ["Util"]
       54 GETTABLEKS                       R9 R10 K17 ["hasActiveFilters"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R12 R0 K9 ["Src"]
       61 GETTABLEKS                       R11 R12 K18 ["Hooks"]
       63 GETTABLEKS                       R10 R11 K19 ["useSortFilter"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R13 R0 K9 ["Src"]
       70 GETTABLEKS                       R12 R13 K18 ["Hooks"]
       72 GETTABLEKS                       R11 R12 K20 ["useSearchInfo"]
       74 CALL                             R10 1 1
       75 DUPCLOSURE                       R11 K21 [PROTO_1]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R2
       84 RETURN                           R11 1
