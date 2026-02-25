PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K5 [{"name", "size", "variant"}]
        7 GETTABLEKS                       R5 R1 K2 ["name"]
        9 SETTABLEKS                       R5 R4 K2 ["name"]
       11 GETTABLEKS                       R5 R1 K3 ["size"]
       13 SETTABLEKS                       R5 R4 K3 ["size"]
       15 GETTABLEKS                       R5 R1 K4 ["variant"]
       17 SETTABLEKS                       R5 R4 K4 ["variant"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

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
       26 GETTABLEKS                       R7 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R7 K11 ["Icon"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Enums"]
       35 GETTABLEKS                       R7 R8 K13 ["IconSize"]
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K14 [PROTO_0]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 DUPTABLE                         R8 K18 [{"summary", "story", "controls"}]
       42 LOADK                            R9 K19 ["Icon component for displaying icons"]
       43 SETTABLEKS                       R9 R8 K15 ["summary"]
       45 SETTABLEKS                       R7 R8 K16 ["story"]
       47 DUPTABLE                         R9 K23 [{"name", "variant", "size"}]
       48 GETTABLEKS                       R10 R4 K24 ["values"]
       50 GETTABLEKS                       R11 R3 K11 ["Icon"]
       52 CALL                             R10 1 1
       53 SETTABLEKS                       R10 R9 K20 ["name"]
       55 GETTABLEKS                       R10 R4 K24 ["values"]
       57 GETTABLEKS                       R11 R3 K25 ["IconVariant"]
       59 CALL                             R10 1 1
       60 SETTABLEKS                       R10 R9 K21 ["variant"]
       62 NEWTABLE                         R10 0 4
       64 GETTABLEKS                       R11 R6 K26 ["Large"]
       66 GETTABLEKS                       R12 R6 K27 ["XSmall"]
       68 GETTABLEKS                       R13 R6 K28 ["Small"]
       70 GETTABLEKS                       R14 R6 K29 ["Medium"]
       72 SETLIST                          R10 R11 4 [1]
       74 SETTABLEKS                       R10 R9 K22 ["size"]
       76 SETTABLEKS                       R9 R8 K17 ["controls"]
       78 RETURN                           R8 1
