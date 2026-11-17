PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 DUPTABLE                         R10 K5 [{[1], ["onActivated"], ["isChecked"] = True, ["trailing"]}]
        9 GETTABLEKS                       R11 R7 K6 ["Text"]
       11 SETTABLEKS                       R11 R10 K0 ["text"]
       13 GETTABLEKS                       R11 R7 K7 ["OnRemove"]
       15 SETTABLEKS                       R11 R10 K1 ["onActivated"]
       17 GETUPVAL                         R11 1
       18 GETTABLEKS                       R11 R11 K8 ["Enums"]
       20 GETTABLEKS                       R11 R11 K9 ["IconName"]
       22 GETTABLEKS                       R11 R11 K10 ["X"]
       24 SETTABLEKS                       R11 R10 K4 ["trailing"]
       26 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       28 MOVE                             R9 R2
       29 GETIMPORT                        R8 K13 [table.insert]
       31 CALL                             R8 2 0
       32 FORGLOOP                         R3 2 ; [-25]
       34 LENGTH                           R3 R2
       35 JUMPIFNOTEQKN                    R3 K14 [0] ; [+3]
       37 LOADNIL                          R3
       38 RETURN                           R3 1
       39 GETUPVAL                         R3 2
       40 GETTABLEKS                       R3 R3 K15 ["createElement"]
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K16 ["View"]
       45 DUPTABLE                         R5 K20 [{["LayoutOrder"], ["tag"] = "size-full-700 auto-y padding-left-xsmall padding-right-xsmall"}]
       46 GETTABLEKS                       R6 R0 K17 ["LayoutOrder"]
       48 SETTABLEKS                       R6 R5 K17 ["LayoutOrder"]
       50 DUPTABLE                         R6 K22 [{"ChipGroup"}]
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R7 R7 K15 ["createElement"]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K21 ["ChipGroup"]
       57 DUPTABLE                         R9 K29 [{["LayoutOrder"] = 1, ["chips"], ["size"], ["variant"], ["testId"] = "active-search-filters"}]
       58 SETTABLEKS                       R2 R9 K24 ["chips"]
       60 GETUPVAL                         R10 1
       61 GETTABLEKS                       R10 R10 K8 ["Enums"]
       63 GETTABLEKS                       R10 R10 K30 ["ChipSize"]
       65 GETTABLEKS                       R10 R10 K31 ["Small"]
       67 SETTABLEKS                       R10 R9 K25 ["size"]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K8 ["Enums"]
       72 GETTABLEKS                       R10 R10 K32 ["ChipGroupVariant"]
       74 GETTABLEKS                       R10 R10 K33 ["Row"]
       76 SETTABLEKS                       R10 R9 K26 ["variant"]
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K21 ["ChipGroup"]
       81 CALL                             R3 3 -1
       82 RETURN                           R3 -1

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
       25 GETTABLEKS                       R4 R4 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K11 ["useActiveSearchFilters"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 RETURN                           R4 1
