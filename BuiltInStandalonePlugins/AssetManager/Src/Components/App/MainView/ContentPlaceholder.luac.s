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
       32 MOVE                             R10 R9
       33 JUMPIFNOT                        R10 ; [+27]
       34 LOADB                            R10 0
       35 GETTABLEKS                       R11 R8 K5 ["SearchOptions"]
       37 GETTABLEKS                       R11 R11 K6 ["AssetType"]
       39 GETUPVAL                         R12 4
       40 GETTABLEKS                       R12 R12 K6 ["AssetType"]
       42 GETTABLEKS                       R12 R12 K7 ["Place"]
       44 JUMPIFNOTEQ                      R11 R12 ; [+16]
       46 GETTABLEKS                       R11 R8 K5 ["SearchOptions"]
       48 GETTABLEKS                       R11 R11 K8 ["ScopeInfo"]
       50 GETTABLEKS                       R11 R11 K9 ["Type"]
       52 GETUPVAL                         R12 4
       53 GETTABLEKS                       R12 R12 K10 ["ScopeType"]
       55 GETTABLEKS                       R12 R12 K11 ["Universe"]
       57 JUMPIFNOTEQ                      R11 R12 ; [+2]
       59 LOADB                            R10 0 +1
       60 LOADB                            R10 1
       61 JUMPIFNOT                        R10 ; [+6]
       62 LOADK                            R13 K12 ["Filters"]
       63 LOADK                            R14 K13 ["PlacesOnlyInUniverseWarning"]
       64 NAMECALL                         R11 R1 K14 ["getText"]
       66 CALL                             R11 3 1
       67 JUMP                             ; [+17]
       68 GETTABLEKS                       R12 R8 K4 ["ShowSearchOptions"]
       70 JUMPIFNOT                        R12 ; [+9]
       71 GETTABLEKS                       R12 R8 K15 ["IsDefaultSearchState"]
       73 JUMPIF                           R12 ; [+4]
       74 GETTABLEKS                       R12 R8 K16 ["SearchTerm"]
       76 JUMPIFNOTEQKS                    R12 K17 [""] ; [+3]
       78 LOADK                            R11 K17 [""]
       79 JUMP                             ; [+5]
       80 LOADK                            R13 K18 ["Plugin"]
       81 LOADK                            R14 K19 ["NoAssets"]
       82 NAMECALL                         R11 R1 K14 ["getText"]
       84 CALL                             R11 3 1
       85 GETUPVAL                         R12 8
       86 GETTABLEKS                       R12 R12 K20 ["createElement"]
       88 GETUPVAL                         R13 9
       89 GETTABLEKS                       R13 R13 K21 ["View"]
       91 DUPTABLE                         R14 K26 [{"LayoutOrder", "onSecondaryActivated", "stateLayer", "tag"}]
       92 GETTABLEKS                       R15 R0 K22 ["LayoutOrder"]
       94 SETTABLEKS                       R15 R14 K22 ["LayoutOrder"]
       96 GETUPVAL                         R16 10
       97 CALL                             R16 0 1
       98 JUMPIFNOT                        R16 ; [+5]
       99 NEWCLOSURE                       R15 P0
      100 CAPTURE                          VAL R2
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          VAL R4
      103 JUMP                             ; [+1]
      104 LOADNIL                          R15
      105 SETTABLEKS                       R15 R14 K23 ["onSecondaryActivated"]
      107 GETUPVAL                         R16 10
      108 CALL                             R16 0 1
      109 JUMPIFNOT                        R16 ; [+11]
      110 DUPTABLE                         R15 K28 [{"affordance"}]
      111 GETUPVAL                         R16 9
      112 GETTABLEKS                       R16 R16 K29 ["Enums"]
      114 GETTABLEKS                       R16 R16 K30 ["StateLayerAffordance"]
      116 GETTABLEKS                       R16 R16 K31 ["None"]
      118 SETTABLEKS                       R16 R15 K27 ["affordance"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R15
      122 SETTABLEKS                       R15 R14 K24 ["stateLayer"]
      124 LOADK                            R15 K32 ["size-full col align-x-center align-y-center gap-xlarge"]
      125 SETTABLEKS                       R15 R14 K25 ["tag"]
      127 DUPTABLE                         R15 K35 [{"Content", "ClearFiltersButton"}]
      128 GETTABLEKS                       R17 R0 K3 ["IsLoading"]
      130 JUMPIFNOT                        R17 ; [+18]
      131 GETUPVAL                         R16 8
      132 GETTABLEKS                       R16 R16 K20 ["createElement"]
      134 GETUPVAL                         R17 9
      135 GETTABLEKS                       R17 R17 K36 ["Loading"]
      137 DUPTABLE                         R18 K38 [{"size"}]
      138 GETUPVAL                         R19 9
      139 GETTABLEKS                       R19 R19 K29 ["Enums"]
      141 GETTABLEKS                       R19 R19 K39 ["IconSize"]
      143 GETTABLEKS                       R19 R19 K40 ["Medium"]
      145 SETTABLEKS                       R19 R18 K37 ["size"]
      147 CALL                             R16 2 1
      148 JUMP                             ; [+21]
      149 GETUPVAL                         R16 8
      150 GETTABLEKS                       R16 R16 K20 ["createElement"]
      152 GETUPVAL                         R17 9
      153 GETTABLEKS                       R17 R17 K41 ["Text"]
      155 DUPTABLE                         R18 K42 [{"Text", "tag"}]
      156 SETTABLEKS                       R11 R18 K41 ["Text"]
      158 LOADK                            R20 K43 ["text-body-medium text-align-x-center %*"]
      159 JUMPIFNOT                        R10 ; [+2]
      160 LOADK                            R22 K44 ["content-alert"]
      161 JUMP                             ; [+1]
      162 LOADK                            R22 K45 ["content-default"]
      163 NAMECALL                         R20 R20 K46 ["format"]
      165 CALL                             R20 2 1
      166 MOVE                             R19 R20
      167 SETTABLEKS                       R19 R18 K25 ["tag"]
      169 CALL                             R16 2 1
      170 SETTABLEKS                       R16 R15 K33 ["Content"]
      172 MOVE                             R16 R7
      173 JUMPIFNOT                        R16 ; [+40]
      174 GETUPVAL                         R16 8
      175 GETTABLEKS                       R16 R16 K20 ["createElement"]
      177 GETUPVAL                         R17 9
      178 GETTABLEKS                       R17 R17 K47 ["Button"]
      180 DUPTABLE                         R18 K52 [{"text", "onActivated", "variant", "size", "testId"}]
      181 LOADK                            R21 K12 ["Filters"]
      182 LOADK                            R22 K53 ["ResetFilters"]
      183 NAMECALL                         R19 R1 K14 ["getText"]
      185 CALL                             R19 3 1
      186 SETTABLEKS                       R19 R18 K48 ["text"]
      188 NEWCLOSURE                       R19 P1
      189 CAPTURE                          VAL R3
      190 SETTABLEKS                       R19 R18 K49 ["onActivated"]
      192 GETUPVAL                         R19 9
      193 GETTABLEKS                       R19 R19 K29 ["Enums"]
      195 GETTABLEKS                       R19 R19 K54 ["ButtonVariant"]
      197 GETTABLEKS                       R19 R19 K55 ["Standard"]
      199 SETTABLEKS                       R19 R18 K50 ["variant"]
      201 GETUPVAL                         R19 9
      202 GETTABLEKS                       R19 R19 K29 ["Enums"]
      204 GETTABLEKS                       R19 R19 K56 ["InputSize"]
      206 GETTABLEKS                       R19 R19 K57 ["XSmall"]
      208 SETTABLEKS                       R19 R18 K37 ["size"]
      210 LOADK                            R19 K58 ["content-placeholder-clear-filters-button"]
      211 SETTABLEKS                       R19 R18 K51 ["testId"]
      213 CALL                             R16 2 1
      214 SETTABLEKS                       R16 R15 K34 ["ClearFiltersButton"]
      216 CALL                             R12 3 -1
      217 RETURN                           R12 -1

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
