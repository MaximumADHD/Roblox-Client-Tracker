PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assertNullableType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["table"]
        5 LOADK                            R4 K2 ["SetGameConfiguration arg"]
        6 CALL                             R1 3 0
        7 MOVE                             R1 R0
        8 JUMPIF                           R1 ; [+2]
        9 NEWTABLE                         R1 0 0
       11 GETTABLEKS                       R2 R0 K3 ["optInRegions"]
       13 JUMPIF                           R2 ; [+2]
       14 NEWTABLE                         R2 0 0
       16 DUPTABLE                         R3 K5 [{"gameConfiguration"}]
       17 DUPTABLE                         R4 K6 [{"optInRegions"}]
       18 SETTABLEKS                       R2 R4 K3 ["optInRegions"]
       20 SETTABLEKS                       R4 R3 K4 ["gameConfiguration"]
       22 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["AssertType"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETIMPORT                        R3 K1 [script]
       22 GETTABLEKS                       R3 R3 K2 ["Parent"]
       24 GETTABLEKS                       R3 R3 K8 ["Action"]
       26 CALL                             R2 1 1
       27 MOVE                             R3 R2
       28 GETIMPORT                        R4 K1 [script]
       30 GETTABLEKS                       R4 R4 K9 ["Name"]
       32 DUPCLOSURE                       R5 K10 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CALL                             R3 2 -1
       35 RETURN                           R3 -1
