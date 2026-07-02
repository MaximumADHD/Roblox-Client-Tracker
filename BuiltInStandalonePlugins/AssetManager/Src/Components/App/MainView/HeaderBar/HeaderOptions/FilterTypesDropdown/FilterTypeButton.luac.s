PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["isChecked"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["View"]
        8 DUPTABLE                         R4 K6 [{"LayoutOrder", "onActivated", "tag"}]
        9 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       13 GETTABLEKS                       R5 R0 K4 ["onActivated"]
       15 SETTABLEKS                       R5 R4 K4 ["onActivated"]
       17 LOADK                            R6 K7 ["row align-y-center gap-medium size-full-600 auto-y padding-x-small radius-small %*"]
       18 JUMPIFNOT                        R1 ; [+2]
       19 LOADK                            R8 K8 ["bg-surface-300"]
       20 JUMP                             ; [+1]
       21 LOADK                            R8 K9 [""]
       22 NAMECALL                         R6 R6 K10 ["format"]
       24 CALL                             R6 2 1
       25 MOVE                             R5 R6
       26 SETTABLEKS                       R5 R4 K5 ["tag"]
       28 DUPTABLE                         R5 K13 [{"CheckIcon", "Label"}]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K1 ["createElement"]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R7 R7 K2 ["View"]
       35 DUPTABLE                         R8 K16 [{["LayoutOrder"] = 1, ["tag"] = "size-300"}]
       36 NEWTABLE                         R9 0 1
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R10 R10 K1 ["createElement"]
       41 GETUPVAL                         R11 1
       42 GETTABLEKS                       R11 R11 K17 ["Icon"]
       44 DUPTABLE                         R12 K20 [{"name", "size"}]
       45 JUMPIFNOT                        R1 ; [+8]
       46 GETUPVAL                         R13 1
       47 GETTABLEKS                       R13 R13 K21 ["Enums"]
       49 GETTABLEKS                       R13 R13 K22 ["IconName"]
       51 GETTABLEKS                       R13 R13 K23 ["CheckLarge"]
       53 JUMP                             ; [+1]
       54 LOADK                            R13 K9 [""]
       55 SETTABLEKS                       R13 R12 K18 ["name"]
       57 GETUPVAL                         R13 1
       58 GETTABLEKS                       R13 R13 K21 ["Enums"]
       60 GETTABLEKS                       R13 R13 K24 ["IconSize"]
       62 GETTABLEKS                       R13 R13 K25 ["XSmall"]
       64 SETTABLEKS                       R13 R12 K19 ["size"]
       66 CALL                             R10 2 -1
       67 SETLIST                          R9 R10 -1 [1]
       69 CALL                             R6 3 1
       70 SETTABLEKS                       R6 R5 K11 ["CheckIcon"]
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R6 R6 K1 ["createElement"]
       75 GETUPVAL                         R7 1
       76 GETTABLEKS                       R7 R7 K26 ["Text"]
       78 DUPTABLE                         R8 K29 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "fill auto-y text-caption-medium text-align-x-left text-truncate-split content-emphasis"}]
       79 GETTABLEKS                       R9 R0 K26 ["Text"]
       81 SETTABLEKS                       R9 R8 K26 ["Text"]
       83 CALL                             R6 2 1
       84 SETTABLEKS                       R6 R5 K12 ["Label"]
       86 CALL                             R2 3 -1
       87 RETURN                           R2 -1

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
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
