PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["createElement"]
       14 GETUPVAL                         R4 3
       15 DUPTABLE                         R5 K5 [{"tag"}]
       16 LOADK                            R6 K6 ["size-full-full col align-y-center align-x-center padding-medium bg-surface-200"]
       17 SETTABLEKS                       R6 R5 K4 ["tag"]
       19 DUPTABLE                         R6 K9 [{"OptionalContent", "VersionLabel"}]
       20 GETTABLEKS                       R8 R0 K10 ["showContent"]
       22 JUMPIFNOT                        R8 ; [+17]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K3 ["createElement"]
       26 GETUPVAL                         R8 4
       27 DUPTABLE                         R9 K13 [{"Text", "tag", "LayoutOrder"}]
       28 LOADK                            R10 K14 ["Kangaroos are great!"]
       29 SETTABLEKS                       R10 R9 K11 ["Text"]
       31 LOADK                            R10 K15 ["padding-small auto-xy bg-action-standard content-action-standard text-heading-medium radius-small"]
       32 SETTABLEKS                       R10 R9 K4 ["tag"]
       34 MOVE                             R10 R2
       35 CALL                             R10 0 1
       36 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       38 CALL                             R7 2 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R7
       41 SETTABLEKS                       R7 R6 K7 ["OptionalContent"]
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K3 ["createElement"]
       46 GETUPVAL                         R8 4
       47 DUPTABLE                         R9 K13 [{"Text", "tag", "LayoutOrder"}]
       48 LOADK                            R11 K16 ["Version: %*"]
       49 GETUPVAL                         R13 5
       50 NAMECALL                         R11 R11 K17 ["format"]
       52 CALL                             R11 2 1
       53 MOVE                             R10 R11
       54 SETTABLEKS                       R10 R9 K11 ["Text"]
       56 LOADK                            R10 K18 ["padding-small auto-xy bg-action-standard content-action-standard text-body-small radius-small"]
       57 SETTABLEKS                       R10 R9 K4 ["tag"]
       59 MOVE                             R10 R2
       60 CALL                             R10 0 1
       61 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       63 CALL                             R7 2 1
       64 SETTABLEKS                       R7 R6 K8 ["VersionLabel"]
       66 CALL                             R3 3 -1
       67 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SuperTemplate"]
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
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R4 R4 K12 ["Localization"]
       39 GETTABLEKS                       R5 R3 K13 ["View"]
       41 GETTABLEKS                       R6 R3 K14 ["Text"]
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K15 ["Src"]
       47 GETTABLEKS                       R8 R8 K16 ["Version"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K17 [PROTO_0]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 RETURN                           R8 1
