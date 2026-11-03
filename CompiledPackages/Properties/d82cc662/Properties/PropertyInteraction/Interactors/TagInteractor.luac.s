PROTO_0:
        0 GETTABLEKS                       R4 R1 K0 ["name"]
        2 NAMECALL                         R2 R0 K1 ["HasTag"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R3 R1 K0 ["name"]
        8 RETURN                           R3 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_1:
        0 JUMPIFNOT                        R2 ; [+6]
        1 GETTABLEKS                       R5 R1 K0 ["name"]
        3 NAMECALL                         R3 R0 K1 ["AddTag"]
        5 CALL                             R3 2 0
        6 RETURN                           R0 0
        7 GETTABLEKS                       R5 R1 K0 ["name"]
        9 NAMECALL                         R3 R0 K2 ["RemoveTag"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R1 K0 ["name"]
        2 NAMECALL                         R2 R0 K1 ["HasTag"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_3:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["InteractorTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["PropertyTypes"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 DUPCLOSURE                       R4 K10 [PROTO_1]
       23 DUPCLOSURE                       R5 K11 [PROTO_2]
       24 DUPCLOSURE                       R6 K12 [PROTO_3]
       25 DUPTABLE                         R7 K17 [{"read", "write", "has", "canWrite"}]
       26 SETTABLEKS                       R3 R7 K13 ["read"]
       28 SETTABLEKS                       R4 R7 K14 ["write"]
       30 SETTABLEKS                       R5 R7 K15 ["has"]
       32 SETTABLEKS                       R6 R7 K16 ["canWrite"]
       34 RETURN                           R7 1
