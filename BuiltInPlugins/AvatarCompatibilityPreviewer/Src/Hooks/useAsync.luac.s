PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"state", "value"}]
        2 LOADK                            R2 K3 ["ok"]
        3 SETTABLEKS                       R2 R1 K0 ["state"]
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R1 K1 ["value"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"state"}]
        2 LOADK                            R2 K2 ["loading"]
        3 SETTABLEKS                       R2 R1 K0 ["state"]
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K5 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CALL                             R0 1 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 DUPTABLE                         R3 K2 [{"state"}]
        4 LOADK                            R4 K3 ["loading"]
        5 SETTABLEKS                       R4 R3 K1 ["state"]
        7 CALL                             R2 1 2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["useEffect"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R0
       14 MOVE                             R6 R1
       15 CALL                             R4 2 0
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_3]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
