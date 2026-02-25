PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"groupInfo"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["groupInfo"]
       14 GETTABLEKS                       R7 R1 K2 ["groupInfo"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["groupInfo"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"groupInfo"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["groupInfo"]
       14 GETTABLEKS                       R7 R1 K2 ["groupInfo"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["groupInfo"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K9 [{"groupInfo"}]
       24 DUPTABLE                         R4 K12 [{"groups", "ownedGroups"}]
       25 NEWTABLE                         R5 0 0
       27 SETTABLEKS                       R5 R4 K10 ["groups"]
       29 NEWTABLE                         R5 0 0
       31 SETTABLEKS                       R5 R4 K11 ["ownedGroups"]
       33 SETTABLEKS                       R4 R3 K8 ["groupInfo"]
       35 GETTABLEKS                       R4 R1 K13 ["createReducer"]
       37 MOVE                             R5 R3
       38 DUPTABLE                         R6 K16 [{"SetGroupInfo", "ResetInfo"}]
       39 DUPCLOSURE                       R7 K17 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R7 R6 K14 ["SetGroupInfo"]
       43 DUPCLOSURE                       R7 K18 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R7 R6 K15 ["ResetInfo"]
       47 CALL                             R4 2 -1
       48 RETURN                           R4 -1
