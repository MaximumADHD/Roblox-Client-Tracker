PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1] = "ok", ["value"]}]
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K2 ["value"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{[1] = "loading"}]
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K5 [task.spawn]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R0 1 1
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 DUPTABLE                         R3 K3 [{["state"] = "loading"}]
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["useEffect"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R0
       11 MOVE                             R6 R1
       12 CALL                             R4 2 0
       13 RETURN                           R2 1

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
