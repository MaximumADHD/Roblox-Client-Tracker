PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["isChecked"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K5 [{"LayoutOrder", "onActivated", "tag"}]
        7 GETTABLEKS                       R5 R0 K2 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       11 GETTABLEKS                       R5 R0 K3 ["onActivated"]
       13 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       15 LOADK                            R6 K6 ["row auto-y align-y-center size-full-600 radius-small padding-x-small gap-medium %*"]
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADK                            R8 K7 ["bg-surface-300"]
       18 JUMP                             ; [+1]
       19 LOADK                            R8 K8 [""]
       20 NAMECALL                         R6 R6 K9 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 SETTABLEKS                       R5 R4 K4 ["tag"]
       26 DUPTABLE                         R5 K12 [{"CheckIcon", "Label"}]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K1 ["createElement"]
       30 GETUPVAL                         R7 1
       31 DUPTABLE                         R8 K13 [{"LayoutOrder", "tag"}]
       32 LOADN                            R9 1
       33 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       35 LOADK                            R9 K14 ["size-300"]
       36 SETTABLEKS                       R9 R8 K4 ["tag"]
       38 NEWTABLE                         R9 0 1
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R10 R11 K1 ["createElement"]
       43 GETUPVAL                         R11 2
       44 DUPTABLE                         R12 K17 [{"name", "size"}]
       45 JUMPIFNOT                        R1 ; [+6]
       46 GETUPVAL                         R15 3
       47 GETTABLEKS                       R14 R15 K18 ["IconName"]
       49 GETTABLEKS                       R13 R14 K19 ["CheckLarge"]
       51 JUMP                             ; [+1]
       52 LOADK                            R13 K8 [""]
       53 SETTABLEKS                       R13 R12 K15 ["name"]
       55 GETUPVAL                         R14 4
       56 GETTABLEKS                       R13 R14 K20 ["XSmall"]
       58 SETTABLEKS                       R13 R12 K16 ["size"]
       60 CALL                             R10 2 -1
       61 SETLIST                          R9 R10 -1 [1]
       63 CALL                             R6 3 1
       64 SETTABLEKS                       R6 R5 K10 ["CheckIcon"]
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R6 R7 K1 ["createElement"]
       69 GETUPVAL                         R7 5
       70 DUPTABLE                         R8 K22 [{"LayoutOrder", "Text", "tag"}]
       71 LOADN                            R9 2
       72 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       74 GETTABLEKS                       R9 R0 K21 ["Text"]
       76 SETTABLEKS                       R9 R8 K21 ["Text"]
       78 LOADK                            R9 K23 ["auto-xy text-caption-medium text-align-x-left text-truncate-split content-emphasis"]
       79 SETTABLEKS                       R9 R8 K4 ["tag"]
       81 CALL                             R6 2 1
       82 SETTABLEKS                       R6 R5 K11 ["Label"]
       84 CALL                             R2 3 -1
       85 RETURN                           R2 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["Enums"]
       23 GETTABLEKS                       R4 R2 K10 ["View"]
       25 GETTABLEKS                       R5 R2 K11 ["Text"]
       27 GETTABLEKS                       R6 R2 K12 ["Icon"]
       29 GETTABLEKS                       R8 R2 K9 ["Enums"]
       31 GETTABLEKS                       R7 R8 K13 ["IconSize"]
       33 DUPCLOSURE                       R8 K14 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R5
       40 RETURN                           R8 1
