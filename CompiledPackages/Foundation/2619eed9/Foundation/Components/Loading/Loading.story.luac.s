PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K3 [{"size"}]
        7 GETTABLEKS                       R5 R1 K2 ["size"]
        9 SETTABLEKS                       R5 R4 K2 ["size"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["IconSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Loading"]
       27 CALL                             R4 1 1
       28 DUPTABLE                         R5 K15 [{"summary", "story", "controls"}]
       29 LOADK                            R6 K16 ["Loading component"]
       30 SETTABLEKS                       R6 R5 K12 ["summary"]
       32 DUPCLOSURE                       R6 K17 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R6 R5 K13 ["story"]
       37 DUPTABLE                         R6 K19 [{"size"}]
       38 NEWTABLE                         R7 0 3
       40 GETTABLEKS                       R8 R3 K20 ["Large"]
       42 GETTABLEKS                       R9 R3 K21 ["Medium"]
       44 GETTABLEKS                       R10 R3 K22 ["Small"]
       46 SETLIST                          R7 R8 3 [1]
       48 SETTABLEKS                       R7 R6 K18 ["size"]
       50 SETTABLEKS                       R6 R5 K14 ["controls"]
       52 RETURN                           R5 1
