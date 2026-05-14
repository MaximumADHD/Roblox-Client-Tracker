PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETTABLEKS                       R3 R0 K2 ["groups"]
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 GETTABLEKS                       R9 R6 K3 ["id"]
       10 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       12 MOVE                             R8 R1
       13 GETIMPORT                        R7 K6 [table.insert]
       15 CALL                             R7 2 0
       16 FORGLOOP                         R2 2 ; [-9]
       18 GETUPVAL                         R2 0
       19 GETUPVAL                         R4 1
       20 DUPTABLE                         R5 K7 [{"groups"}]
       21 GETTABLEKS                       R6 R0 K2 ["groups"]
       23 SETTABLEKS                       R6 R5 K2 ["groups"]
       25 CALL                             R4 1 -1
       26 NAMECALL                         R2 R2 K8 ["dispatch"]
       28 CALL                             R2 -1 0
       29 GETUPVAL                         R2 2
       30 MOVE                             R3 R1
       31 CALL                             R2 1 -1
       32 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K1 [{"ownedGroups"}]
        3 SETTABLEKS                       R0 R4 K0 ["ownedGroups"]
        5 CALL                             R3 1 -1
        6 NAMECALL                         R1 R1 K2 ["dispatch"]
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["Failed to fetch groups with edit permission"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K1 [{"groups"}]
        2 NEWTABLE                         R5 0 0
        4 SETTABLEKS                       R5 R4 K0 ["groups"]
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R0 K2 ["dispatch"]
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 CALL                             R1 2 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U4
       18 NAMECALL                         R2 R1 K3 ["andThen"]
       20 CALL                             R2 2 1
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U0
       24 NAMECALL                         R2 R2 K3 ["andThen"]
       26 CALL                             R2 2 1
       27 DUPCLOSURE                       R4 K4 [PROTO_2]
       28 NAMECALL                         R2 R2 K5 ["catch"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetGroupInfo"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Network"]
       24 GETTABLEKS                       R3 R3 K9 ["Requests"]
       26 GETTABLEKS                       R3 R3 K10 ["ApiFetchGroupsHavePermission"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K8 ["Network"]
       35 GETTABLEKS                       R4 R4 K9 ["Requests"]
       37 GETTABLEKS                       R4 R4 K11 ["ApiFetchOwnedGroups"]
       39 CALL                             R3 1 1
       40 DUPCLOSURE                       R4 K12 [PROTO_4]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 RETURN                           R4 1
