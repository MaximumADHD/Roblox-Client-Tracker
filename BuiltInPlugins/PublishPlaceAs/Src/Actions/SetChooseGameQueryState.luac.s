PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assertNullableType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["string"]
        5 LOADK                            R4 K2 ["SetChooseGameQuery arg"]
        6 CALL                             R1 3 0
        7 DUPTABLE                         R1 K4 [{"gameInfo"}]
        8 DUPTABLE                         R2 K6 [{"queryState"}]
        9 SETTABLEKS                       R0 R2 K5 ["queryState"]
       11 SETTABLEKS                       R2 R1 K3 ["gameInfo"]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["AssertType"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R5 R6 K2 ["Parent"]
       31 GETTABLEKS                       R4 R5 K10 ["Action"]
       33 CALL                             R3 1 1
       34 MOVE                             R4 R3
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R5 R6 K11 ["Name"]
       39 DUPCLOSURE                       R6 K12 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 CALL                             R4 2 -1
       42 RETURN                           R4 -1
