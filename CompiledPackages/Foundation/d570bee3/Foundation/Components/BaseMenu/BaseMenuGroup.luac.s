PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K1 ["LayoutOrder"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["createElement"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["Fragment"]
       13 LOADNIL                          R5
       14 DUPTABLE                         R6 K6 [{"Divider", "Group"}]
       15 JUMPIFEQKN                       R2 K7 [1] ; [+12]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K2 ["createElement"]
       20 GETUPVAL                         R8 2
       21 DUPTABLE                         R9 K8 [{"LayoutOrder"}]
       22 MULK                             R11 R2 K9 [2]
       23 SUBK                             R10 R11 K7 [1]
       24 SETTABLEKS                       R10 R9 K1 ["LayoutOrder"]
       26 CALL                             R7 2 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R7
       29 SETTABLEKS                       R7 R6 K4 ["Divider"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K2 ["createElement"]
       34 GETUPVAL                         R8 3
       35 DUPTABLE                         R9 K11 [{"LayoutOrder", "tag"}]
       36 MULK                             R10 R2 K9 [2]
       37 SETTABLEKS                       R10 R9 K1 ["LayoutOrder"]
       39 LOADK                            R11 K12 ["col gap-xxsmall size-full-0 auto-y %*"]
       40 GETUPVAL                         R14 4
       41 GETTABLEKS                       R15 R1 K13 ["size"]
       43 GETTABLE                         R13 R14 R15
       44 NAMECALL                         R11 R11 K14 ["format"]
       46 CALL                             R11 2 1
       47 MOVE                             R10 R11
       48 SETTABLEKS                       R10 R9 K10 ["tag"]
       50 DUPTABLE                         R10 K17 [{"Title", "Items"}]
       51 GETTABLEKS                       R12 R0 K18 ["title"]
       53 JUMPIFNOT                        R12 ; [+23]
       54 GETUPVAL                         R11 0
       55 GETTABLEKS                       R11 R11 K2 ["createElement"]
       57 GETUPVAL                         R12 5
       58 DUPTABLE                         R13 K22 [{"text", "size", "menuHasLeading", "menuHasCheck"}]
       59 GETTABLEKS                       R14 R0 K18 ["title"]
       61 SETTABLEKS                       R14 R13 K19 ["text"]
       63 GETTABLEKS                       R14 R1 K13 ["size"]
       65 SETTABLEKS                       R14 R13 K13 ["size"]
       67 GETTABLEKS                       R14 R0 K20 ["menuHasLeading"]
       69 SETTABLEKS                       R14 R13 K20 ["menuHasLeading"]
       71 GETTABLEKS                       R14 R0 K21 ["menuHasCheck"]
       73 SETTABLEKS                       R14 R13 K21 ["menuHasCheck"]
       75 CALL                             R11 2 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R11
       78 SETTABLEKS                       R11 R10 K15 ["Title"]
       80 GETUPVAL                         R11 0
       81 GETTABLEKS                       R11 R11 K2 ["createElement"]
       83 GETUPVAL                         R12 0
       84 GETTABLEKS                       R12 R12 K3 ["Fragment"]
       86 LOADNIL                          R13
       87 GETTABLEKS                       R14 R0 K23 ["children"]
       89 CALL                             R11 3 1
       90 SETTABLEKS                       R11 R10 K16 ["Items"]
       92 CALL                             R7 3 1
       93 SETTABLEKS                       R7 R6 K5 ["Group"]
       95 CALL                             R3 3 -1
       96 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["BaseMenuContext"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K9 ["BaseMenuDivider"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K4 ["Parent"]
       38 GETTABLEKS                       R6 R6 K10 ["BaseMenuTitleItem"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Components"]
       45 GETTABLEKS                       R7 R7 K12 ["View"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 4 0
       50 LOADK                            R8 K13 ["padding-xsmall"]
       51 SETTABLEKS                       R8 R7 K14 ["XSmall"]
       53 LOADK                            R8 K15 ["padding-small"]
       54 SETTABLEKS                       R8 R7 K16 ["Small"]
       56 LOADK                            R8 K15 ["padding-small"]
       57 SETTABLEKS                       R8 R7 K17 ["Medium"]
       59 LOADK                            R8 K15 ["padding-small"]
       60 SETTABLEKS                       R8 R7 K18 ["Large"]
       62 DUPCLOSURE                       R8 K19 [PROTO_0]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R5
       69 RETURN                           R8 1
