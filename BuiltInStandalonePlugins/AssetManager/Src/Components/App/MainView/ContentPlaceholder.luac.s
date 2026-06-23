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
       13 CALL                             R4 0 1
       14 GETTABLEKS                       R5 R4 K1 ["ShowSearchOptions"]
       16 MOVE                             R6 R5
       17 JUMPIFNOT                        R6 ; [+9]
       18 GETTABLEKS                       R6 R4 K2 ["IsDefaultSearchState"]
       20 JUMPIF                           R6 ; [+6]
       21 GETTABLEKS                       R7 R4 K3 ["SearchTerm"]
       23 JUMPIFEQKS                       R7 K4 [""] ; [+2]
       25 LOADB                            R6 0 +1
       26 LOADB                            R6 1
       27 JUMPIFNOT                        R6 ; [+2]
       28 LOADK                            R7 K4 [""]
       29 JUMP                             ; [+5]
       30 LOADK                            R9 K5 ["Plugin"]
       31 LOADK                            R10 K6 ["NoAssets"]
       32 NAMECALL                         R7 R1 K7 ["getText"]
       34 CALL                             R7 3 1
       35 GETUPVAL                         R8 4
       36 GETUPVAL                         R9 5
       37 GETTABLEKS                       R9 R9 K8 ["MenuContext"]
       39 GETTABLEKS                       R9 R9 K9 ["Asset"]
       41 CALL                             R8 1 1
       42 GETUPVAL                         R9 6
       43 CALL                             R9 0 2
       44 GETTABLEKS                       R12 R0 K10 ["IsLoading"]
       46 NOT                              R11 R12
       47 JUMPIFNOT                        R11 ; [+5]
       48 NOT                              R11 R5
       49 JUMPIFNOT                        R11 ; [+3]
       50 GETUPVAL                         R11 7
       51 MOVE                             R12 R10
       52 CALL                             R11 1 1
       53 GETUPVAL                         R12 8
       54 GETTABLEKS                       R12 R12 K11 ["createElement"]
       56 GETUPVAL                         R13 9
       57 GETTABLEKS                       R13 R13 K12 ["View"]
       59 DUPTABLE                         R14 K17 [{"LayoutOrder", "onSecondaryActivated", "stateLayer", "tag"}]
       60 GETTABLEKS                       R15 R0 K13 ["LayoutOrder"]
       62 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
       64 GETUPVAL                         R16 10
       65 CALL                             R16 0 1
       66 JUMPIFNOT                        R16 ; [+5]
       67 NEWCLOSURE                       R15 P0
       68 CAPTURE                          VAL R2
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          VAL R8
       71 JUMP                             ; [+1]
       72 LOADNIL                          R15
       73 SETTABLEKS                       R15 R14 K14 ["onSecondaryActivated"]
       75 GETUPVAL                         R16 10
       76 CALL                             R16 0 1
       77 JUMPIFNOT                        R16 ; [+11]
       78 DUPTABLE                         R15 K19 [{"affordance"}]
       79 GETUPVAL                         R16 9
       80 GETTABLEKS                       R16 R16 K20 ["Enums"]
       82 GETTABLEKS                       R16 R16 K21 ["StateLayerAffordance"]
       84 GETTABLEKS                       R16 R16 K22 ["None"]
       86 SETTABLEKS                       R16 R15 K18 ["affordance"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R15
       90 SETTABLEKS                       R15 R14 K15 ["stateLayer"]
       92 LOADK                            R15 K23 ["size-full-0 fill col align-x-center align-y-center gap-xlarge"]
       93 SETTABLEKS                       R15 R14 K16 ["tag"]
       95 DUPTABLE                         R15 K26 [{"Content", "ClearFiltersButton"}]
       96 GETTABLEKS                       R17 R0 K10 ["IsLoading"]
       98 JUMPIFNOT                        R17 ; [+21]
       99 GETUPVAL                         R16 8
      100 GETTABLEKS                       R16 R16 K11 ["createElement"]
      102 GETUPVAL                         R17 9
      103 GETTABLEKS                       R17 R17 K27 ["Loading"]
      105 DUPTABLE                         R18 K29 [{"LayoutOrder", "size"}]
      106 LOADN                            R19 1
      107 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      109 GETUPVAL                         R19 9
      110 GETTABLEKS                       R19 R19 K20 ["Enums"]
      112 GETTABLEKS                       R19 R19 K30 ["IconSize"]
      114 GETTABLEKS                       R19 R19 K31 ["Medium"]
      116 SETTABLEKS                       R19 R18 K28 ["size"]
      118 CALL                             R16 2 1
      119 JUMP                             ; [+16]
      120 GETUPVAL                         R16 8
      121 GETTABLEKS                       R16 R16 K11 ["createElement"]
      123 GETUPVAL                         R17 9
      124 GETTABLEKS                       R17 R17 K32 ["Text"]
      126 DUPTABLE                         R18 K33 [{"LayoutOrder", "Text", "tag"}]
      127 LOADN                            R19 1
      128 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      130 SETTABLEKS                       R7 R18 K32 ["Text"]
      132 LOADK                            R19 K34 ["text-body-medium text-align-x-center content-default"]
      133 SETTABLEKS                       R19 R18 K16 ["tag"]
      135 CALL                             R16 2 1
      136 SETTABLEKS                       R16 R15 K24 ["Content"]
      138 MOVE                             R16 R11
      139 JUMPIFNOT                        R16 ; [+43]
      140 GETUPVAL                         R16 8
      141 GETTABLEKS                       R16 R16 K11 ["createElement"]
      143 GETUPVAL                         R17 9
      144 GETTABLEKS                       R17 R17 K35 ["Button"]
      146 DUPTABLE                         R18 K40 [{"LayoutOrder", "text", "onActivated", "variant", "size", "testId"}]
      147 LOADN                            R19 2
      148 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      150 LOADK                            R21 K41 ["Filters"]
      151 LOADK                            R22 K42 ["ResetFilters"]
      152 NAMECALL                         R19 R1 K7 ["getText"]
      154 CALL                             R19 3 1
      155 SETTABLEKS                       R19 R18 K36 ["text"]
      157 NEWCLOSURE                       R19 P1
      158 CAPTURE                          VAL R3
      159 SETTABLEKS                       R19 R18 K37 ["onActivated"]
      161 GETUPVAL                         R19 9
      162 GETTABLEKS                       R19 R19 K20 ["Enums"]
      164 GETTABLEKS                       R19 R19 K43 ["ButtonVariant"]
      166 GETTABLEKS                       R19 R19 K44 ["Standard"]
      168 SETTABLEKS                       R19 R18 K38 ["variant"]
      170 GETUPVAL                         R19 9
      171 GETTABLEKS                       R19 R19 K20 ["Enums"]
      173 GETTABLEKS                       R19 R19 K45 ["InputSize"]
      175 GETTABLEKS                       R19 R19 K46 ["XSmall"]
      177 SETTABLEKS                       R19 R18 K28 ["size"]
      179 LOADK                            R19 K47 ["content-placeholder-clear-filters-button"]
      180 SETTABLEKS                       R19 R18 K39 ["testId"]
      182 CALL                             R16 2 1
      183 SETTABLEKS                       R16 R15 K25 ["ClearFiltersButton"]
      185 CALL                             R12 3 -1
      186 RETURN                           R12 -1

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
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R13
      114 RETURN                           R14 1
