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
       17 LOADK                            R6 K7 ["row auto-y align-y-center size-full-600 radius-small padding-x-small gap-medium %*"]
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
       35 DUPTABLE                         R8 K14 [{"LayoutOrder", "tag"}]
       36 LOADN                            R9 1
       37 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       39 LOADK                            R9 K15 ["size-300"]
       40 SETTABLEKS                       R9 R8 K5 ["tag"]
       42 NEWTABLE                         R9 0 1
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R10 R10 K1 ["createElement"]
       47 GETUPVAL                         R11 1
       48 GETTABLEKS                       R11 R11 K16 ["Icon"]
       50 DUPTABLE                         R12 K19 [{"name", "size"}]
       51 JUMPIFNOT                        R1 ; [+8]
       52 GETUPVAL                         R13 1
       53 GETTABLEKS                       R13 R13 K20 ["Enums"]
       55 GETTABLEKS                       R13 R13 K21 ["IconName"]
       57 GETTABLEKS                       R13 R13 K22 ["CheckLarge"]
       59 JUMP                             ; [+1]
       60 LOADK                            R13 K9 [""]
       61 SETTABLEKS                       R13 R12 K17 ["name"]
       63 GETUPVAL                         R13 1
       64 GETTABLEKS                       R13 R13 K20 ["Enums"]
       66 GETTABLEKS                       R13 R13 K23 ["IconSize"]
       68 GETTABLEKS                       R13 R13 K24 ["XSmall"]
       70 SETTABLEKS                       R13 R12 K18 ["size"]
       72 CALL                             R10 2 -1
       73 SETLIST                          R9 R10 -1 [1]
       75 CALL                             R6 3 1
       76 SETTABLEKS                       R6 R5 K11 ["CheckIcon"]
       78 GETUPVAL                         R6 0
       79 GETTABLEKS                       R6 R6 K1 ["createElement"]
       81 GETUPVAL                         R7 1
       82 GETTABLEKS                       R7 R7 K25 ["Text"]
       84 DUPTABLE                         R8 K26 [{"LayoutOrder", "Text", "tag"}]
       85 LOADN                            R9 2
       86 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       88 GETTABLEKS                       R9 R0 K25 ["Text"]
       90 SETTABLEKS                       R9 R8 K25 ["Text"]
       92 LOADK                            R9 K27 ["fill auto-y text-caption-medium text-align-x-left text-truncate-split content-emphasis"]
       93 SETTABLEKS                       R9 R8 K5 ["tag"]
       95 CALL                             R6 2 1
       96 SETTABLEKS                       R6 R5 K12 ["Label"]
       98 CALL                             R2 3 -1
       99 RETURN                           R2 -1

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
