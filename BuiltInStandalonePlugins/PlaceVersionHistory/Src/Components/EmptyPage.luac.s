PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["createElement"]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R4 R5 K2 ["View"]
       12 DUPTABLE                         R5 K5 [{"tag", "LayoutOrder"}]
       13 LOADK                            R6 K6 ["size-0-0 auto-xy col align-x-center gap-medium"]
       14 SETTABLEKS                       R6 R5 K3 ["tag"]
       16 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       18 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       20 DUPTABLE                         R6 K11 [{"Title", "Description", "ClearFiltersButton", "RefreshButton"}]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R7 R8 K1 ["createElement"]
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R8 R9 K12 ["Text"]
       27 DUPTABLE                         R9 K13 [{"tag", "Text", "LayoutOrder"}]
       28 LOADK                            R10 K14 ["size-0-0 auto-xy text-label-medium text-wrap content-emphasis"]
       29 SETTABLEKS                       R10 R9 K3 ["tag"]
       31 GETTABLEKS                       R11 R0 K15 ["isFailure"]
       33 JUMPIFNOT                        R11 ; [+6]
       34 LOADK                            R12 K7 ["Title"]
       35 LOADK                            R13 K16 ["ErrorLoadingHistory"]
       36 NAMECALL                         R10 R2 K17 ["getText"]
       38 CALL                             R10 3 1
       39 JUMP                             ; [+14]
       40 GETTABLEKS                       R11 R0 K18 ["isFiltered"]
       42 JUMPIFNOT                        R11 ; [+6]
       43 LOADK                            R12 K7 ["Title"]
       44 LOADK                            R13 K19 ["NothingMatchesFilters"]
       45 NAMECALL                         R10 R2 K17 ["getText"]
       47 CALL                             R10 3 1
       48 JUMP                             ; [+5]
       49 LOADK                            R12 K7 ["Title"]
       50 LOADK                            R13 K20 ["MigrationInProgress"]
       51 NAMECALL                         R10 R2 K17 ["getText"]
       53 CALL                             R10 3 1
       54 SETTABLEKS                       R10 R9 K12 ["Text"]
       56 MOVE                             R10 R1
       57 CALL                             R10 0 1
       58 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K7 ["Title"]
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R7 R8 K1 ["createElement"]
       66 GETUPVAL                         R9 3
       67 GETTABLEKS                       R8 R9 K12 ["Text"]
       69 DUPTABLE                         R9 K13 [{"tag", "Text", "LayoutOrder"}]
       70 LOADK                            R10 K21 ["size-0-0 auto-xy text-body-small text-wrap"]
       71 SETTABLEKS                       R10 R9 K3 ["tag"]
       73 GETTABLEKS                       R11 R0 K15 ["isFailure"]
       75 JUMPIFNOT                        R11 ; [+6]
       76 LOADK                            R12 K8 ["Description"]
       77 LOADK                            R13 K16 ["ErrorLoadingHistory"]
       78 NAMECALL                         R10 R2 K17 ["getText"]
       80 CALL                             R10 3 1
       81 JUMP                             ; [+14]
       82 GETTABLEKS                       R11 R0 K18 ["isFiltered"]
       84 JUMPIFNOT                        R11 ; [+6]
       85 LOADK                            R12 K8 ["Description"]
       86 LOADK                            R13 K19 ["NothingMatchesFilters"]
       87 NAMECALL                         R10 R2 K17 ["getText"]
       89 CALL                             R10 3 1
       90 JUMP                             ; [+5]
       91 LOADK                            R12 K8 ["Description"]
       92 LOADK                            R13 K20 ["MigrationInProgress"]
       93 NAMECALL                         R10 R2 K17 ["getText"]
       95 CALL                             R10 3 1
       96 SETTABLEKS                       R10 R9 K12 ["Text"]
       98 MOVE                             R10 R1
       99 CALL                             R10 0 1
      100 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
      102 CALL                             R7 2 1
      103 SETTABLEKS                       R7 R6 K8 ["Description"]
      105 GETTABLEKS                       R7 R0 K18 ["isFiltered"]
      107 JUMPIFNOT                        R7 ; [+44]
      108 GETUPVAL                         R8 2
      109 GETTABLEKS                       R7 R8 K1 ["createElement"]
      111 GETUPVAL                         R9 3
      112 GETTABLEKS                       R8 R9 K22 ["Button"]
      114 DUPTABLE                         R9 K28 [{"text", "variant", "onActivated", "size", "testId", "LayoutOrder"}]
      115 LOADK                            R12 K29 ["Action"]
      116 LOADK                            R13 K30 ["ClearFilters"]
      117 NAMECALL                         R10 R2 K17 ["getText"]
      119 CALL                             R10 3 1
      120 SETTABLEKS                       R10 R9 K23 ["text"]
      122 GETUPVAL                         R13 3
      123 GETTABLEKS                       R12 R13 K31 ["Enums"]
      125 GETTABLEKS                       R11 R12 K32 ["ButtonVariant"]
      127 GETTABLEKS                       R10 R11 K33 ["Standard"]
      129 SETTABLEKS                       R10 R9 K24 ["variant"]
      131 GETTABLEKS                       R10 R0 K34 ["onClearFiltersActivated"]
      133 SETTABLEKS                       R10 R9 K25 ["onActivated"]
      135 GETUPVAL                         R13 3
      136 GETTABLEKS                       R12 R13 K31 ["Enums"]
      138 GETTABLEKS                       R11 R12 K35 ["InputSize"]
      140 GETTABLEKS                       R10 R11 K36 ["Small"]
      142 SETTABLEKS                       R10 R9 K26 ["size"]
      144 LOADK                            R10 K37 ["--clear-filters-button"]
      145 SETTABLEKS                       R10 R9 K27 ["testId"]
      147 MOVE                             R10 R1
      148 CALL                             R10 0 1
      149 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
      151 CALL                             R7 2 1
      152 SETTABLEKS                       R7 R6 K9 ["ClearFiltersButton"]
      154 GETTABLEKS                       R8 R0 K18 ["isFiltered"]
      156 NOT                              R7 R8
      157 JUMPIFNOT                        R7 ; [+44]
      158 GETUPVAL                         R8 2
      159 GETTABLEKS                       R7 R8 K1 ["createElement"]
      161 GETUPVAL                         R9 3
      162 GETTABLEKS                       R8 R9 K22 ["Button"]
      164 DUPTABLE                         R9 K28 [{"text", "variant", "onActivated", "size", "testId", "LayoutOrder"}]
      165 LOADK                            R12 K29 ["Action"]
      166 LOADK                            R13 K38 ["Refresh"]
      167 NAMECALL                         R10 R2 K17 ["getText"]
      169 CALL                             R10 3 1
      170 SETTABLEKS                       R10 R9 K23 ["text"]
      172 GETUPVAL                         R13 3
      173 GETTABLEKS                       R12 R13 K31 ["Enums"]
      175 GETTABLEKS                       R11 R12 K32 ["ButtonVariant"]
      177 GETTABLEKS                       R10 R11 K33 ["Standard"]
      179 SETTABLEKS                       R10 R9 K24 ["variant"]
      181 GETTABLEKS                       R10 R0 K39 ["onRefreshActivated"]
      183 SETTABLEKS                       R10 R9 K25 ["onActivated"]
      185 GETUPVAL                         R13 3
      186 GETTABLEKS                       R12 R13 K31 ["Enums"]
      188 GETTABLEKS                       R11 R12 K35 ["InputSize"]
      190 GETTABLEKS                       R10 R11 K36 ["Small"]
      192 SETTABLEKS                       R10 R9 K26 ["size"]
      194 LOADK                            R10 K40 ["--refresh-button"]
      195 SETTABLEKS                       R10 R9 K27 ["testId"]
      197 MOVE                             R10 R1
      198 CALL                             R10 0 1
      199 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
      201 CALL                             R7 2 1
      202 SETTABLEKS                       R7 R6 K10 ["RefreshButton"]
      204 CALL                             R3 3 -1
      205 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["View"]
        8 DUPTABLE                         R4 K4 [{"tag", "LayoutOrder"}]
        9 LOADK                            R5 K5 ["size-full-full col align-x-center"]
       10 SETTABLEKS                       R5 R4 K2 ["tag"]
       12 MOVE                             R5 R1
       13 CALL                             R5 0 1
       14 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       16 DUPTABLE                         R5 K9 [{"StartSpacer", "Body", "EndSpacer"}]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K0 ["createElement"]
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R7 R8 K1 ["View"]
       23 DUPTABLE                         R8 K10 [{"LayoutOrder", "tag"}]
       24 MOVE                             R9 R1
       25 CALL                             R9 0 1
       26 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       28 LOADK                            R9 K11 ["fill"]
       29 SETTABLEKS                       R9 R8 K2 ["tag"]
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K6 ["StartSpacer"]
       34 GETTABLEKS                       R7 R0 K12 ["isDone"]
       36 JUMPIFNOT                        R7 ; [+27]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R6 R7 K0 ["createElement"]
       40 GETUPVAL                         R7 3
       41 DUPTABLE                         R8 K17 [{"isFiltered", "isFailure", "onClearFiltersActivated", "onRefreshActivated", "LayoutOrder"}]
       42 GETTABLEKS                       R9 R0 K13 ["isFiltered"]
       44 SETTABLEKS                       R9 R8 K13 ["isFiltered"]
       46 GETTABLEKS                       R9 R0 K14 ["isFailure"]
       48 SETTABLEKS                       R9 R8 K14 ["isFailure"]
       50 GETTABLEKS                       R9 R0 K15 ["onClearFiltersActivated"]
       52 SETTABLEKS                       R9 R8 K15 ["onClearFiltersActivated"]
       54 GETTABLEKS                       R9 R0 K16 ["onRefreshActivated"]
       56 SETTABLEKS                       R9 R8 K16 ["onRefreshActivated"]
       58 MOVE                             R9 R1
       59 CALL                             R9 0 1
       60 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       62 CALL                             R6 2 1
       63 JUMP                             ; [+42]
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R6 R7 K0 ["createElement"]
       67 GETUPVAL                         R8 2
       68 GETTABLEKS                       R7 R8 K18 ["Button"]
       70 DUPTABLE                         R8 K25 [{"onActivated", "variant", "isLoading", "isDisabled", "size", "testId", "LayoutOrder"}]
       71 LOADNIL                          R9
       72 SETTABLEKS                       R9 R8 K19 ["onActivated"]
       74 GETUPVAL                         R12 2
       75 GETTABLEKS                       R11 R12 K26 ["Enums"]
       77 GETTABLEKS                       R10 R11 K27 ["ButtonVariant"]
       79 GETTABLEKS                       R9 R10 K28 ["Text"]
       81 SETTABLEKS                       R9 R8 K20 ["variant"]
       83 LOADB                            R9 1
       84 SETTABLEKS                       R9 R8 K21 ["isLoading"]
       86 LOADB                            R9 1
       87 SETTABLEKS                       R9 R8 K22 ["isDisabled"]
       89 GETUPVAL                         R12 2
       90 GETTABLEKS                       R11 R12 K26 ["Enums"]
       92 GETTABLEKS                       R10 R11 K29 ["InputSize"]
       94 GETTABLEKS                       R9 R10 K30 ["Large"]
       96 SETTABLEKS                       R9 R8 K23 ["size"]
       98 LOADK                            R9 K31 ["--loading-indicator"]
       99 SETTABLEKS                       R9 R8 K24 ["testId"]
      101 MOVE                             R9 R1
      102 CALL                             R9 0 1
      103 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
      105 CALL                             R6 2 1
      106 SETTABLEKS                       R6 R5 K7 ["Body"]
      108 GETUPVAL                         R7 1
      109 GETTABLEKS                       R6 R7 K0 ["createElement"]
      111 GETUPVAL                         R8 2
      112 GETTABLEKS                       R7 R8 K1 ["View"]
      114 DUPTABLE                         R8 K10 [{"LayoutOrder", "tag"}]
      115 MOVE                             R9 R1
      116 CALL                             R9 0 1
      117 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
      119 LOADK                            R9 K11 ["fill"]
      120 SETTABLEKS                       R9 R8 K2 ["tag"]
      122 CALL                             R6 2 1
      123 SETTABLEKS                       R6 R5 K8 ["EndSpacer"]
      125 CALL                             R2 3 -1
      126 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Framework"]
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
