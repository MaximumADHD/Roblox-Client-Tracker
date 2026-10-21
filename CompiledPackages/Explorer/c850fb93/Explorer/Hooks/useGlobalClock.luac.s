PROTO_0:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 CALL                             R0 0 0
        3 GETUPVAL                         R0 0
        4 GETIMPORT                        R1 K5 [os.clock]
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 JUMPBACK                         ; [-9]
        9 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 1
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useBinding"]
        3 GETIMPORT                        R1 K3 [os.clock]
        5 CALL                             R1 0 -1
        6 CALL                             R0 -1 2
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K4 ["useEffect"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 0
       14 CALL                             R2 2 0
       15 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_3]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
