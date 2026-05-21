PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parse"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["buildQuery"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["parseQuery"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["removeDotSegments"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["lib"]
       16 GETTABLEKS                       R3 R3 K8 ["neturl"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 4 0
       21 DUPCLOSURE                       R4 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R4 R3 K10 ["parse"]
       25 DUPCLOSURE                       R4 K11 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R4 R3 K12 ["buildQuery"]
       29 DUPCLOSURE                       R4 K13 [PROTO_2]
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R4 R3 K14 ["parseQuery"]
       33 DUPCLOSURE                       R4 K15 [PROTO_3]
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R4 R3 K16 ["removeDotSegments"]
       37 RETURN                           R3 1
