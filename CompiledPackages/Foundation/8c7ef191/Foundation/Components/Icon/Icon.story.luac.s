PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{"name", "size", "variant", "LayoutOrder"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["name"]
        8 SETTABLEKS                       R5 R4 K1 ["name"]
       10 SETTABLEKS                       R0 R4 K2 ["size"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K3 ["variant"]
       15 SETTABLEKS                       R5 R4 K3 ["variant"]
       17 SETTABLEKS                       R1 R4 K4 ["LayoutOrder"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 NEWTABLE                         R2 0 4
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Large"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["Medium"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["Small"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K4 ["XSmall"]
       16 SETLIST                          R2 R3 4 [1]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["createElement"]
       21 GETUPVAL                         R4 2
       22 DUPTABLE                         R5 K7 [{"tag"}]
       23 LOADK                            R6 K8 ["row gap-xxlarge auto-xy align-y-center"]
       24 SETTABLEKS                       R6 R5 K6 ["tag"]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K9 ["map"]
       29 MOVE                             R7 R2
       30 NEWCLOSURE                       R8 P0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R1
       34 CALL                             R6 2 -1
       35 CALL                             R3 -1 -1
       36 RETURN                           R3 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["Icon"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Enums"]
       35 GETTABLEKS                       R7 R7 K13 ["IconSize"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Components"]
       42 GETTABLEKS                       R8 R8 K14 ["View"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K15 [PROTO_1]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 DUPTABLE                         R9 K19 [{"summary", "story", "controls"}]
       52 LOADK                            R10 K20 ["Icon component for displaying icons"]
       53 SETTABLEKS                       R10 R9 K16 ["summary"]
       55 SETTABLEKS                       R8 R9 K17 ["story"]
       57 DUPTABLE                         R10 K23 [{"name", "variant"}]
       58 GETTABLEKS                       R11 R4 K24 ["values"]
       60 GETTABLEKS                       R12 R3 K11 ["Icon"]
       62 CALL                             R11 1 1
       63 SETTABLEKS                       R11 R10 K21 ["name"]
       65 GETTABLEKS                       R11 R4 K24 ["values"]
       67 GETTABLEKS                       R12 R3 K25 ["IconVariant"]
       69 CALL                             R11 1 1
       70 SETTABLEKS                       R11 R10 K22 ["variant"]
       72 SETTABLEKS                       R10 R9 K18 ["controls"]
       74 RETURN                           R9 1
