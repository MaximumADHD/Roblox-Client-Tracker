PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assertNullableType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["table"]
        5 LOADK                            R4 K2 ["SetGroupInfo arg"]
        6 CALL                             R1 3 0
        7 MOVE                             R1 R0
        8 JUMPIF                           R1 ; [+2]
        9 NEWTABLE                         R1 0 0
       11 GETTABLEKS                       R2 R1 K3 ["groups"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["assertNullableType"]
       16 MOVE                             R4 R2
       17 LOADK                            R5 K1 ["table"]
       18 LOADK                            R6 K4 ["SetGroupInfo.groups"]
       19 CALL                             R3 3 0
       20 GETTABLEKS                       R3 R1 K5 ["ownedGroups"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K0 ["assertNullableType"]
       25 MOVE                             R5 R3
       26 LOADK                            R6 K1 ["table"]
       27 LOADK                            R7 K6 ["SetGroupInfo.ownedGroups"]
       28 CALL                             R4 3 0
       29 DUPTABLE                         R4 K8 [{"groupInfo"}]
       30 DUPTABLE                         R5 K9 [{"groups", "ownedGroups"}]
       31 SETTABLEKS                       R2 R5 K3 ["groups"]
       33 SETTABLEKS                       R3 R5 K5 ["ownedGroups"]
       35 SETTABLEKS                       R5 R4 K7 ["groupInfo"]
       37 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["AssertType"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K2 ["Parent"]
       31 GETTABLEKS                       R4 R4 K10 ["Action"]
       33 CALL                             R3 1 1
       34 MOVE                             R4 R3
       35 GETIMPORT                        R5 K1 [script]
       37 GETTABLEKS                       R5 R5 K11 ["Name"]
       39 DUPCLOSURE                       R6 K12 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 CALL                             R4 2 -1
       42 RETURN                           R4 -1
