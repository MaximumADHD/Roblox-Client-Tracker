PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["resolve"]
        3 DUPTABLE                         R4 K2 [{"responseBody"}]
        4 DUPTABLE                         R5 K5 [{"TotalResults", "Results"}]
        5 MOVE                             R6 R2
        6 JUMPIF                           R6 ; [+1]
        7 LENGTH                           R6 R1
        8 SETTABLEKS                       R6 R5 K3 ["TotalResults"]
       10 SETTABLEKS                       R1 R5 K4 ["Results"]
       12 SETTABLEKS                       R5 R4 K1 ["responseBody"]
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["resolve"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 -1
        7 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["DEPRECATED_modules"]
       13 GETTABLEKS                       R3 R4 K6 ["Http"]
       15 GETTABLEKS                       R2 R3 K7 ["Promise"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 4 0
       20 SETTABLEKS                       R2 R2 K8 ["__index"]
       22 DUPCLOSURE                       R3 K9 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R3 R2 K10 ["new"]
       26 DUPCLOSURE                       R3 K11 [PROTO_1]
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R3 R2 K12 ["resolveAssets"]
       30 DUPCLOSURE                       R3 K13 [PROTO_2]
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R3 R2 K14 ["getMyGroups"]
       34 RETURN                           R2 1
