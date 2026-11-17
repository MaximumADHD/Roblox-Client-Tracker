PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Hooks"]
        3 GETTABLEKS                       R0 R0 K1 ["useTokens"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["createElement"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["View"]
       12 DUPTABLE                         R3 K6 [{["tag"] = "align-x-center align-y-center size-full"}]
       13 DUPTABLE                         R4 K8 [{"Icon"}]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K2 ["createElement"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K7 ["Icon"]
       20 DUPTABLE                         R7 K12 [{"name", "variant", "size"}]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K13 ["Enums"]
       24 GETTABLEKS                       R8 R8 K14 ["IconName"]
       26 GETTABLEKS                       R8 R8 K15 ["Page"]
       28 SETTABLEKS                       R8 R7 K9 ["name"]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K13 ["Enums"]
       33 GETTABLEKS                       R8 R8 K16 ["IconVariant"]
       35 GETTABLEKS                       R8 R8 K17 ["Filled"]
       37 SETTABLEKS                       R8 R7 K10 ["variant"]
       39 GETTABLEKS                       R8 R0 K18 ["Size"]
       41 GETTABLEKS                       R8 R8 K19 ["Size_1600"]
       43 SETTABLEKS                       R8 R7 K11 ["size"]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K7 ["Icon"]
       48 CALL                             R1 3 -1
       49 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["React"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Foundation"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K8 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
