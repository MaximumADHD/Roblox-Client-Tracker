PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R2 2 -1
        4 FASTCALL                         ASSERT ; [+2]
        5 GETIMPORT                        R1 K1 [assert]
        7 CALL                             R1 -1 0
        8 DUPTABLE                         R1 K3 [{"currentTab"}]
        9 SETTABLEKS                       R0 R1 K2 ["currentTab"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Util"]
       20 GETTABLEKS                       R3 R2 K8 ["Action"]
       22 GETTABLEKS                       R4 R0 K9 ["Src"]
       24 GETTABLEKS                       R4 R4 K10 ["Models"]
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R4 K11 ["Watch"]
       30 GETTABLEKS                       R6 R6 K12 ["TableTab"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R1 K13 ["Dash"]
       35 GETTABLEKS                       R7 R6 K14 ["includes"]
       37 MOVE                             R8 R3
       38 GETIMPORT                        R9 K1 [script]
       40 GETTABLEKS                       R9 R9 K15 ["Name"]
       42 DUPCLOSURE                       R10 K16 [PROTO_0]
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R5
       45 CALL                             R8 2 -1
       46 RETURN                           R8 -1
