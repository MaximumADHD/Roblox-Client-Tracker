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
       22 DUPTABLE                         R5 K8 [{["tag"] = "row align-y-center gap-xxlarge auto-xy"}]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K9 ["map"]
       26 MOVE                             R7 R2
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R1
       31 CALL                             R6 2 -1
       32 CALL                             R3 -1 -1
       33 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
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
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 DUPTABLE                         R9 K20 [{["summary"] = "Icon component for displaying icons", ["story"], ["controls"]}]
       52 SETTABLEKS                       R8 R9 K18 ["story"]
       54 DUPTABLE                         R10 K23 [{"name", "variant"}]
       55 GETTABLEKS                       R11 R3 K24 ["values"]
       57 GETTABLEKS                       R12 R2 K11 ["Icon"]
       59 CALL                             R11 1 1
       60 SETTABLEKS                       R11 R10 K21 ["name"]
       62 GETTABLEKS                       R11 R3 K24 ["values"]
       64 GETTABLEKS                       R12 R2 K25 ["IconVariant"]
       66 CALL                             R11 1 1
       67 SETTABLEKS                       R11 R10 K22 ["variant"]
       69 SETTABLEKS                       R10 R9 K19 ["controls"]
       71 RETURN                           R9 1
