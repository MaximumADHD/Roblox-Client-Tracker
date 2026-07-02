PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["createElement"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K2 ["View"]
       12 DUPTABLE                         R5 K6 [{["tag"] = "col align-x-center gap-medium size-0-0 auto-xy", ["LayoutOrder"]}]
       13 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       15 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       17 DUPTABLE                         R6 K11 [{"Title", "Description", "ClearFiltersButton", "RefreshButton"}]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K1 ["createElement"]
       21 GETUPVAL                         R8 3
       22 GETTABLEKS                       R8 R8 K12 ["Text"]
       24 DUPTABLE                         R9 K14 [{["tag"] = "size-0-0 auto-xy text-label-medium text-wrap content-emphasis", ["Text"], ["LayoutOrder"]}]
       25 GETTABLEKS                       R11 R0 K15 ["isFailure"]
       27 JUMPIFNOT                        R11 ; [+6]
       28 LOADK                            R12 K7 ["Title"]
       29 LOADK                            R13 K16 ["ErrorLoadingHistory"]
       30 NAMECALL                         R10 R2 K17 ["getText"]
       32 CALL                             R10 3 1
       33 JUMP                             ; [+14]
       34 GETTABLEKS                       R11 R0 K18 ["isFiltered"]
       36 JUMPIFNOT                        R11 ; [+6]
       37 LOADK                            R12 K7 ["Title"]
       38 LOADK                            R13 K19 ["NothingMatchesFilters"]
       39 NAMECALL                         R10 R2 K17 ["getText"]
       41 CALL                             R10 3 1
       42 JUMP                             ; [+5]
       43 LOADK                            R12 K7 ["Title"]
       44 LOADK                            R13 K20 ["MigrationInProgress"]
       45 NAMECALL                         R10 R2 K17 ["getText"]
       47 CALL                             R10 3 1
       48 SETTABLEKS                       R10 R9 K12 ["Text"]
       50 MOVE                             R10 R1
       51 CALL                             R10 0 1
       52 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       54 CALL                             R7 2 1
       55 SETTABLEKS                       R7 R6 K7 ["Title"]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K1 ["createElement"]
       60 GETUPVAL                         R8 3
       61 GETTABLEKS                       R8 R8 K12 ["Text"]
       63 DUPTABLE                         R9 K22 [{["tag"] = "size-0-0 auto-xy text-body-small text-wrap", ["Text"], ["LayoutOrder"]}]
       64 GETTABLEKS                       R11 R0 K15 ["isFailure"]
       66 JUMPIFNOT                        R11 ; [+6]
       67 LOADK                            R12 K8 ["Description"]
       68 LOADK                            R13 K16 ["ErrorLoadingHistory"]
       69 NAMECALL                         R10 R2 K17 ["getText"]
       71 CALL                             R10 3 1
       72 JUMP                             ; [+14]
       73 GETTABLEKS                       R11 R0 K18 ["isFiltered"]
       75 JUMPIFNOT                        R11 ; [+6]
       76 LOADK                            R12 K8 ["Description"]
       77 LOADK                            R13 K19 ["NothingMatchesFilters"]
       78 NAMECALL                         R10 R2 K17 ["getText"]
       80 CALL                             R10 3 1
       81 JUMP                             ; [+5]
       82 LOADK                            R12 K8 ["Description"]
       83 LOADK                            R13 K20 ["MigrationInProgress"]
       84 NAMECALL                         R10 R2 K17 ["getText"]
       86 CALL                             R10 3 1
       87 SETTABLEKS                       R10 R9 K12 ["Text"]
       89 MOVE                             R10 R1
       90 CALL                             R10 0 1
       91 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       93 CALL                             R7 2 1
       94 SETTABLEKS                       R7 R6 K8 ["Description"]
       96 GETTABLEKS                       R7 R0 K18 ["isFiltered"]
       98 JUMPIFNOT                        R7 ; [+41]
       99 GETUPVAL                         R7 2
      100 GETTABLEKS                       R7 R7 K1 ["createElement"]
      102 GETUPVAL                         R8 3
      103 GETTABLEKS                       R8 R8 K23 ["Button"]
      105 DUPTABLE                         R9 K30 [{["text"], ["variant"], ["onActivated"], ["size"], ["testId"] = "--clear-filters-button", ["LayoutOrder"]}]
      106 LOADK                            R12 K31 ["Action"]
      107 LOADK                            R13 K32 ["ClearFilters"]
      108 NAMECALL                         R10 R2 K17 ["getText"]
      110 CALL                             R10 3 1
      111 SETTABLEKS                       R10 R9 K24 ["text"]
      113 GETUPVAL                         R10 3
      114 GETTABLEKS                       R10 R10 K33 ["Enums"]
      116 GETTABLEKS                       R10 R10 K34 ["ButtonVariant"]
      118 GETTABLEKS                       R10 R10 K35 ["Standard"]
      120 SETTABLEKS                       R10 R9 K25 ["variant"]
      122 GETTABLEKS                       R10 R0 K36 ["onClearFiltersActivated"]
      124 SETTABLEKS                       R10 R9 K26 ["onActivated"]
      126 GETUPVAL                         R10 3
      127 GETTABLEKS                       R10 R10 K33 ["Enums"]
      129 GETTABLEKS                       R10 R10 K37 ["InputSize"]
      131 GETTABLEKS                       R10 R10 K38 ["Small"]
      133 SETTABLEKS                       R10 R9 K27 ["size"]
      135 MOVE                             R10 R1
      136 CALL                             R10 0 1
      137 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      139 CALL                             R7 2 1
      140 SETTABLEKS                       R7 R6 K9 ["ClearFiltersButton"]
      142 GETTABLEKS                       R8 R0 K18 ["isFiltered"]
      144 NOT                              R7 R8
      145 JUMPIFNOT                        R7 ; [+41]
      146 GETUPVAL                         R7 2
      147 GETTABLEKS                       R7 R7 K1 ["createElement"]
      149 GETUPVAL                         R8 3
      150 GETTABLEKS                       R8 R8 K23 ["Button"]
      152 DUPTABLE                         R9 K40 [{["text"], ["variant"], ["onActivated"], ["size"], ["testId"] = "--refresh-button", ["LayoutOrder"]}]
      153 LOADK                            R12 K31 ["Action"]
      154 LOADK                            R13 K41 ["Refresh"]
      155 NAMECALL                         R10 R2 K17 ["getText"]
      157 CALL                             R10 3 1
      158 SETTABLEKS                       R10 R9 K24 ["text"]
      160 GETUPVAL                         R10 3
      161 GETTABLEKS                       R10 R10 K33 ["Enums"]
      163 GETTABLEKS                       R10 R10 K34 ["ButtonVariant"]
      165 GETTABLEKS                       R10 R10 K35 ["Standard"]
      167 SETTABLEKS                       R10 R9 K25 ["variant"]
      169 GETTABLEKS                       R10 R0 K42 ["onRefreshActivated"]
      171 SETTABLEKS                       R10 R9 K26 ["onActivated"]
      173 GETUPVAL                         R10 3
      174 GETTABLEKS                       R10 R10 K33 ["Enums"]
      176 GETTABLEKS                       R10 R10 K37 ["InputSize"]
      178 GETTABLEKS                       R10 R10 K38 ["Small"]
      180 SETTABLEKS                       R10 R9 K27 ["size"]
      182 MOVE                             R10 R1
      183 CALL                             R10 0 1
      184 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      186 CALL                             R7 2 1
      187 SETTABLEKS                       R7 R6 K10 ["RefreshButton"]
      189 CALL                             R3 3 -1
      190 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["View"]
        8 DUPTABLE                         R4 K5 [{["tag"] = "col align-x-center size-full-full", ["LayoutOrder"]}]
        9 MOVE                             R5 R1
       10 CALL                             R5 0 1
       11 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       13 DUPTABLE                         R5 K9 [{"StartSpacer", "Body", "EndSpacer"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K0 ["createElement"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K1 ["View"]
       20 DUPTABLE                         R8 K11 [{["LayoutOrder"], ["tag"] = "fill"}]
       21 MOVE                             R9 R1
       22 CALL                             R9 0 1
       23 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K6 ["StartSpacer"]
       28 GETTABLEKS                       R7 R0 K12 ["isDone"]
       30 JUMPIFNOT                        R7 ; [+27]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K0 ["createElement"]
       34 GETUPVAL                         R7 3
       35 DUPTABLE                         R8 K17 [{"isFiltered", "isFailure", "onClearFiltersActivated", "onRefreshActivated", "LayoutOrder"}]
       36 GETTABLEKS                       R9 R0 K13 ["isFiltered"]
       38 SETTABLEKS                       R9 R8 K13 ["isFiltered"]
       40 GETTABLEKS                       R9 R0 K14 ["isFailure"]
       42 SETTABLEKS                       R9 R8 K14 ["isFailure"]
       44 GETTABLEKS                       R9 R0 K15 ["onClearFiltersActivated"]
       46 SETTABLEKS                       R9 R8 K15 ["onClearFiltersActivated"]
       48 GETTABLEKS                       R9 R0 K16 ["onRefreshActivated"]
       50 SETTABLEKS                       R9 R8 K16 ["onRefreshActivated"]
       52 MOVE                             R9 R1
       53 CALL                             R9 0 1
       54 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       56 CALL                             R6 2 1
       57 JUMP                             ; [+30]
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R6 R6 K0 ["createElement"]
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R7 R7 K18 ["Button"]
       64 DUPTABLE                         R8 K28 [{["onActivated"] = , ["variant"], ["isLoading"] = True, ["isDisabled"] = True, ["size"], ["testId"] = "--loading-indicator", ["LayoutOrder"]}]
       65 GETUPVAL                         R9 2
       66 GETTABLEKS                       R9 R9 K29 ["Enums"]
       68 GETTABLEKS                       R9 R9 K30 ["ButtonVariant"]
       70 GETTABLEKS                       R9 R9 K31 ["Text"]
       72 SETTABLEKS                       R9 R8 K21 ["variant"]
       74 GETUPVAL                         R9 2
       75 GETTABLEKS                       R9 R9 K29 ["Enums"]
       77 GETTABLEKS                       R9 R9 K32 ["InputSize"]
       79 GETTABLEKS                       R9 R9 K33 ["Large"]
       81 SETTABLEKS                       R9 R8 K25 ["size"]
       83 MOVE                             R9 R1
       84 CALL                             R9 0 1
       85 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       87 CALL                             R6 2 1
       88 SETTABLEKS                       R6 R5 K7 ["Body"]
       90 GETUPVAL                         R6 1
       91 GETTABLEKS                       R6 R6 K0 ["createElement"]
       93 GETUPVAL                         R7 2
       94 GETTABLEKS                       R7 R7 K1 ["View"]
       96 DUPTABLE                         R8 K11 [{["LayoutOrder"], ["tag"] = "fill"}]
       97 MOVE                             R9 R1
       98 CALL                             R9 0 1
       99 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      101 CALL                             R6 2 1
      102 SETTABLEKS                       R6 R5 K8 ["EndSpacer"]
      104 CALL                             R2 3 -1
      105 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R2 K13 ["createNextOrder"]
       41 DUPCLOSURE                       R8 K14 [PROTO_0]
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 DUPCLOSURE                       R9 K15 [PROTO_1]
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R8
       51 RETURN                           R9 1
