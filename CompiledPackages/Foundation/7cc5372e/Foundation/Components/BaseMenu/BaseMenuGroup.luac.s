PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R0 K1 ["LayoutOrder"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["createElement"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K3 ["Fragment"]
       13 LOADNIL                          R5
       14 DUPTABLE                         R6 K6 [{"Divider", "Group"}]
       15 JUMPIFEQKN                       R2 K7 [1] ; [+12]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K2 ["createElement"]
       20 GETUPVAL                         R8 2
       21 DUPTABLE                         R9 K8 [{"LayoutOrder"}]
       22 MULK                             R11 R2 K9 [2]
       23 SUBK                             R10 R11 K7 [1]
       24 SETTABLEKS                       R10 R9 K1 ["LayoutOrder"]
       26 CALL                             R7 2 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R7
       29 SETTABLEKS                       R7 R6 K4 ["Divider"]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R7 R8 K2 ["createElement"]
       34 GETUPVAL                         R8 3
       35 DUPTABLE                         R9 K11 [{"LayoutOrder", "tag"}]
       36 MULK                             R10 R2 K9 [2]
       37 SETTABLEKS                       R10 R9 K1 ["LayoutOrder"]
       39 LOADK                            R11 K12 ["auto-y size-full-0 col gap-xxsmall %*"]
       40 GETUPVAL                         R14 4
       41 GETTABLEKS                       R15 R1 K13 ["size"]
       43 GETTABLE                         R13 R14 R15
       44 NAMECALL                         R11 R11 K14 ["format"]
       46 CALL                             R11 2 1
       47 MOVE                             R10 R11
       48 SETTABLEKS                       R10 R9 K10 ["tag"]
       50 DUPTABLE                         R10 K17 [{"Title", "Items"}]
       51 GETTABLEKS                       R12 R0 K18 ["title"]
       53 JUMPIFNOT                        R12 ; [+15]
       54 GETUPVAL                         R12 0
       55 GETTABLEKS                       R11 R12 K2 ["createElement"]
       57 GETUPVAL                         R12 5
       58 DUPTABLE                         R13 K20 [{"text", "size"}]
       59 GETTABLEKS                       R14 R0 K18 ["title"]
       61 SETTABLEKS                       R14 R13 K19 ["text"]
       63 GETTABLEKS                       R14 R1 K13 ["size"]
       65 SETTABLEKS                       R14 R13 K13 ["size"]
       67 CALL                             R11 2 1
       68 JUMP                             ; [+1]
       69 LOADNIL                          R11
       70 SETTABLEKS                       R11 R10 K15 ["Title"]
       72 GETUPVAL                         R12 0
       73 GETTABLEKS                       R11 R12 K2 ["createElement"]
       75 GETUPVAL                         R13 0
       76 GETTABLEKS                       R12 R13 K3 ["Fragment"]
       78 LOADNIL                          R13
       79 GETTABLEKS                       R14 R0 K21 ["children"]
       81 CALL                             R11 3 1
       82 SETTABLEKS                       R11 R10 K16 ["Items"]
       84 CALL                             R7 3 1
       85 SETTABLEKS                       R7 R6 K5 ["Group"]
       87 CALL                             R3 3 -1
       88 RETURN                           R3 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R7 K1 [script]
       25 GETTABLEKS                       R6 R7 K4 ["Parent"]
       27 GETTABLEKS                       R5 R6 K10 ["BaseMenuTitleItem"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETIMPORT                        R8 K1 [script]
       34 GETTABLEKS                       R7 R8 K4 ["Parent"]
       36 GETTABLEKS                       R6 R7 K11 ["BaseMenuDivider"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETIMPORT                        R9 K1 [script]
       43 GETTABLEKS                       R8 R9 K4 ["Parent"]
       45 GETTABLEKS                       R7 R8 K12 ["BaseMenuContext"]
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
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R4
       69 RETURN                           R8 1
