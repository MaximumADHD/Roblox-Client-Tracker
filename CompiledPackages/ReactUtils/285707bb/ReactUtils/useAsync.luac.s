PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"status", "value"}]
        2 LOADK                            R2 K3 ["ok"]
        3 SETTABLEKS                       R2 R1 K0 ["status"]
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R1 K1 ["value"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"status", "problem"}]
        2 LOADK                            R3 K3 ["error"]
        3 SETTABLEKS                       R3 R2 K0 ["status"]
        5 SETTABLEKS                       R0 R2 K1 ["problem"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [xpcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          UPVAL U0
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"status"}]
        2 LOADK                            R2 K2 ["loading"]
        3 SETTABLEKS                       R2 R1 K0 ["status"]
        5 CALL                             R0 1 0
        6 GETIMPORT                        R0 K5 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CALL                             R0 1 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useState"]
        3 DUPTABLE                         R3 K2 [{"status"}]
        4 LOADK                            R4 K3 ["loading"]
        5 SETTABLEKS                       R4 R3 K1 ["status"]
        7 CALL                             R2 1 2
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K4 ["useEffect"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R0
       14 MOVE                             R6 R1
       15 CALL                             R4 2 0
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_5]
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1
