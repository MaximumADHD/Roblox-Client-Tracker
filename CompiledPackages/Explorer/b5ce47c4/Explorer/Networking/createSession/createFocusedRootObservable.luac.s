PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K0 ["get"]
        8 CALL                             R0 0 1
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["get"]
        4 CALL                             R1 0 1
        5 JUMPIF                           R1 ; [+4]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K0 ["get"]
        9 CALL                             R1 0 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["create"]
        6 GETTABLEKS                       R4 R1 K1 ["get"]
        8 CALL                             R4 0 1
        9 JUMPIF                           R4 ; [+3]
       10 GETTABLEKS                       R4 R0 K1 ["get"]
       12 CALL                             R4 0 1
       13 CALL                             R3 1 2
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 GETTABLEKS                       R6 R0 K2 ["changedSignal"]
       20 MOVE                             R8 R5
       21 NAMECALL                         R6 R6 K3 ["Connect"]
       23 CALL                             R6 2 0
       24 GETTABLEKS                       R6 R1 K2 ["changedSignal"]
       26 MOVE                             R8 R5
       27 NAMECALL                         R6 R6 K3 ["Connect"]
       29 CALL                             R6 2 0
       30 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Observable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_2]
       20 CAPTURE                          VAL R1
       21 RETURN                           R3 1
