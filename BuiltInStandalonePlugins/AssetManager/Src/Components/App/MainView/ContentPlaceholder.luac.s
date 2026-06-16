PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UiZone"]
        4 GETTABLEKS                       R2 R2 K1 ["Browser"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 2
        9 NAMECALL                         R0 R0 K2 ["handleMouse2Click"]
       11 CALL                             R0 5 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearFilters"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K1 ["MenuContext"]
       16 GETTABLEKS                       R5 R5 K2 ["Asset"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 5
       20 CALL                             R5 0 2
       21 GETTABLEKS                       R8 R0 K3 ["IsLoading"]
       23 NOT                              R7 R8
       24 JUMPIFNOT                        R7 ; [+3]
       25 GETUPVAL                         R7 6
       26 MOVE                             R8 R6
       27 CALL                             R7 1 1
       28 GETUPVAL                         R8 7
       29 CALL                             R8 0 1
       30 GETTABLEKS                       R9 R8 K4 ["ShowSearchOptions"]
       32 JUMPIFNOT                        R9 ; [+9]
       33 GETTABLEKS                       R9 R8 K5 ["IsDefaultSearchState"]
       35 JUMPIF                           R9 ; [+6]
       36 GETTABLEKS                       R10 R8 K6 ["SearchTerm"]
       38 JUMPIFEQKS                       R10 K7 [""] ; [+2]
       40 LOADB                            R9 0 +1
       41 LOADB                            R9 1
       42 JUMPIFNOT                        R9 ; [+2]
       43 LOADK                            R10 K7 [""]
       44 JUMP                             ; [+5]
       45 LOADK                            R12 K8 ["Plugin"]
       46 LOADK                            R13 K9 ["NoAssets"]
       47 NAMECALL                         R10 R1 K10 ["getText"]
       49 CALL                             R10 3 1
       50 GETUPVAL                         R11 8
       51 GETTABLEKS                       R11 R11 K11 ["createElement"]
       53 GETUPVAL                         R12 9
       54 GETTABLEKS                       R12 R12 K12 ["View"]
       56 DUPTABLE                         R13 K17 [{"LayoutOrder", "onSecondaryActivated", "stateLayer", "tag"}]
       57 GETTABLEKS                       R14 R0 K13 ["LayoutOrder"]
       59 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
       61 GETUPVAL                         R15 10
       62 CALL                             R15 0 1
       63 JUMPIFNOT                        R15 ; [+5]
       64 NEWCLOSURE                       R14 P0
       65 CAPTURE                          VAL R2
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          VAL R4
       68 JUMP                             ; [+1]
       69 LOADNIL                          R14
       70 SETTABLEKS                       R14 R13 K14 ["onSecondaryActivated"]
       72 GETUPVAL                         R15 10
       73 CALL                             R15 0 1
       74 JUMPIFNOT                        R15 ; [+11]
       75 DUPTABLE                         R14 K19 [{"affordance"}]
       76 GETUPVAL                         R15 9
       77 GETTABLEKS                       R15 R15 K20 ["Enums"]
       79 GETTABLEKS                       R15 R15 K21 ["StateLayerAffordance"]
       81 GETTABLEKS                       R15 R15 K22 ["None"]
       83 SETTABLEKS                       R15 R14 K18 ["affordance"]
       85 JUMP                             ; [+1]
       86 LOADNIL                          R14
       87 SETTABLEKS                       R14 R13 K15 ["stateLayer"]
       89 LOADK                            R14 K23 ["size-full-0 fill col align-x-center align-y-center gap-xlarge"]
       90 SETTABLEKS                       R14 R13 K16 ["tag"]
       92 DUPTABLE                         R14 K26 [{"Content", "ClearFiltersButton"}]
       93 GETTABLEKS                       R16 R0 K3 ["IsLoading"]
       95 JUMPIFNOT                        R16 ; [+21]
       96 GETUPVAL                         R15 8
       97 GETTABLEKS                       R15 R15 K11 ["createElement"]
       99 GETUPVAL                         R16 9
      100 GETTABLEKS                       R16 R16 K27 ["Loading"]
      102 DUPTABLE                         R17 K29 [{"LayoutOrder", "size"}]
      103 LOADN                            R18 1
      104 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      106 GETUPVAL                         R18 9
      107 GETTABLEKS                       R18 R18 K20 ["Enums"]
      109 GETTABLEKS                       R18 R18 K30 ["IconSize"]
      111 GETTABLEKS                       R18 R18 K31 ["Medium"]
      113 SETTABLEKS                       R18 R17 K28 ["size"]
      115 CALL                             R15 2 1
      116 JUMP                             ; [+16]
      117 GETUPVAL                         R15 8
      118 GETTABLEKS                       R15 R15 K11 ["createElement"]
      120 GETUPVAL                         R16 9
      121 GETTABLEKS                       R16 R16 K32 ["Text"]
      123 DUPTABLE                         R17 K33 [{"LayoutOrder", "Text", "tag"}]
      124 LOADN                            R18 1
      125 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      127 SETTABLEKS                       R10 R17 K32 ["Text"]
      129 LOADK                            R18 K34 ["text-body-medium text-align-x-center content-default"]
      130 SETTABLEKS                       R18 R17 K16 ["tag"]
      132 CALL                             R15 2 1
      133 SETTABLEKS                       R15 R14 K24 ["Content"]
      135 MOVE                             R15 R7
      136 JUMPIFNOT                        R15 ; [+43]
      137 GETUPVAL                         R15 8
      138 GETTABLEKS                       R15 R15 K11 ["createElement"]
      140 GETUPVAL                         R16 9
      141 GETTABLEKS                       R16 R16 K35 ["Button"]
      143 DUPTABLE                         R17 K40 [{"LayoutOrder", "text", "onActivated", "variant", "size", "testId"}]
      144 LOADN                            R18 2
      145 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      147 LOADK                            R20 K41 ["Filters"]
      148 LOADK                            R21 K42 ["ResetFilters"]
      149 NAMECALL                         R18 R1 K10 ["getText"]
      151 CALL                             R18 3 1
      152 SETTABLEKS                       R18 R17 K36 ["text"]
      154 NEWCLOSURE                       R18 P1
      155 CAPTURE                          VAL R3
      156 SETTABLEKS                       R18 R17 K37 ["onActivated"]
      158 GETUPVAL                         R18 9
      159 GETTABLEKS                       R18 R18 K20 ["Enums"]
      161 GETTABLEKS                       R18 R18 K43 ["ButtonVariant"]
      163 GETTABLEKS                       R18 R18 K44 ["Standard"]
      165 SETTABLEKS                       R18 R17 K38 ["variant"]
      167 GETUPVAL                         R18 9
      168 GETTABLEKS                       R18 R18 K20 ["Enums"]
      170 GETTABLEKS                       R18 R18 K45 ["InputSize"]
      172 GETTABLEKS                       R18 R18 K46 ["XSmall"]
      174 SETTABLEKS                       R18 R17 K28 ["size"]
      176 LOADK                            R18 K47 ["content-placeholder-clear-filters-button"]
      177 SETTABLEKS                       R18 R17 K39 ["testId"]
      179 CALL                             R15 2 1
      180 SETTABLEKS                       R15 R14 K25 ["ClearFiltersButton"]
      182 CALL                             R11 3 -1
      183 RETURN                           R11 -1

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
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Controllers"]
       45 GETTABLEKS                       R8 R8 K15 ["Input"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K9 ["Src"]
       52 GETTABLEKS                       R9 R9 K14 ["Controllers"]
       54 GETTABLEKS                       R9 R9 K16 ["ItemsController"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K9 ["Src"]
       61 GETTABLEKS                       R10 R10 K17 ["Util"]
       63 GETTABLEKS                       R10 R10 K18 ["hasActiveFilters"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R11 R0 K9 ["Src"]
       70 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K20 ["useContextMenu"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K9 ["Src"]
       79 GETTABLEKS                       R12 R12 K19 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K21 ["useSortFilter"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K9 ["Src"]
       88 GETTABLEKS                       R13 R13 K19 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K22 ["useSearchInfo"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K9 ["Src"]
       97 GETTABLEKS                       R14 R14 K23 ["Flags"]
       99 GETTABLEKS                       R14 R14 K24 ["getFFlagAmrOrganizationFoundation"]
      101 CALL                             R13 1 1
      102 DUPCLOSURE                       R14 K25 [PROTO_2]
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R13
      114 RETURN                           R14 1
