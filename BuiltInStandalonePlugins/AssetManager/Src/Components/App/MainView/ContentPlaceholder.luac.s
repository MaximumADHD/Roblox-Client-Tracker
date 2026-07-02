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
       59 DUPTABLE                         R14 K18 [{["LayoutOrder"], ["onSecondaryActivated"], ["stateLayer"], ["tag"] = "col align-x-center align-y-center fill gap-xlarge size-full-0"}]
       60 GETTABLEKS                       R15 R0 K13 ["LayoutOrder"]
       62 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
       64 NEWCLOSURE                       R15 P0
       65 CAPTURE                          VAL R2
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          VAL R8
       68 SETTABLEKS                       R15 R14 K14 ["onSecondaryActivated"]
       70 DUPTABLE                         R15 K20 [{"affordance"}]
       71 GETUPVAL                         R16 9
       72 GETTABLEKS                       R16 R16 K21 ["Enums"]
       74 GETTABLEKS                       R16 R16 K22 ["StateLayerAffordance"]
       76 GETTABLEKS                       R16 R16 K23 ["None"]
       78 SETTABLEKS                       R16 R15 K19 ["affordance"]
       80 SETTABLEKS                       R15 R14 K15 ["stateLayer"]
       82 DUPTABLE                         R15 K26 [{"Content", "ClearFiltersButton"}]
       83 GETTABLEKS                       R17 R0 K10 ["IsLoading"]
       85 JUMPIFNOT                        R17 ; [+18]
       86 GETUPVAL                         R16 8
       87 GETTABLEKS                       R16 R16 K11 ["createElement"]
       89 GETUPVAL                         R17 9
       90 GETTABLEKS                       R17 R17 K27 ["Loading"]
       92 DUPTABLE                         R18 K30 [{["LayoutOrder"] = 1, ["size"]}]
       93 GETUPVAL                         R19 9
       94 GETTABLEKS                       R19 R19 K21 ["Enums"]
       96 GETTABLEKS                       R19 R19 K31 ["IconSize"]
       98 GETTABLEKS                       R19 R19 K32 ["Medium"]
      100 SETTABLEKS                       R19 R18 K29 ["size"]
      102 CALL                             R16 2 1
      103 JUMP                             ; [+10]
      104 GETUPVAL                         R16 8
      105 GETTABLEKS                       R16 R16 K11 ["createElement"]
      107 GETUPVAL                         R17 9
      108 GETTABLEKS                       R17 R17 K33 ["Text"]
      110 DUPTABLE                         R18 K35 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "text-body-medium text-align-x-center content-default"}]
      111 SETTABLEKS                       R7 R18 K33 ["Text"]
      113 CALL                             R16 2 1
      114 SETTABLEKS                       R16 R15 K24 ["Content"]
      116 MOVE                             R16 R11
      117 JUMPIFNOT                        R16 ; [+37]
      118 GETUPVAL                         R16 8
      119 GETTABLEKS                       R16 R16 K11 ["createElement"]
      121 GETUPVAL                         R17 9
      122 GETTABLEKS                       R17 R17 K36 ["Button"]
      124 DUPTABLE                         R18 K43 [{["LayoutOrder"] = 2, ["text"], ["onActivated"], ["variant"], ["size"], ["testId"] = "content-placeholder-clear-filters-button"}]
      125 LOADK                            R21 K44 ["Filters"]
      126 LOADK                            R22 K45 ["ResetFilters"]
      127 NAMECALL                         R19 R1 K7 ["getText"]
      129 CALL                             R19 3 1
      130 SETTABLEKS                       R19 R18 K38 ["text"]
      132 NEWCLOSURE                       R19 P1
      133 CAPTURE                          VAL R3
      134 SETTABLEKS                       R19 R18 K39 ["onActivated"]
      136 GETUPVAL                         R19 9
      137 GETTABLEKS                       R19 R19 K21 ["Enums"]
      139 GETTABLEKS                       R19 R19 K46 ["ButtonVariant"]
      141 GETTABLEKS                       R19 R19 K47 ["Standard"]
      143 SETTABLEKS                       R19 R18 K40 ["variant"]
      145 GETUPVAL                         R19 9
      146 GETTABLEKS                       R19 R19 K21 ["Enums"]
      148 GETTABLEKS                       R19 R19 K48 ["InputSize"]
      150 GETTABLEKS                       R19 R19 K49 ["XSmall"]
      152 SETTABLEKS                       R19 R18 K29 ["size"]
      154 CALL                             R16 2 1
      155 SETTABLEKS                       R16 R15 K25 ["ClearFiltersButton"]
      157 CALL                             R12 3 -1
      158 RETURN                           R12 -1

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
       93 DUPCLOSURE                       R13 K23 [PROTO_2]
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R2
      104 RETURN                           R13 1
