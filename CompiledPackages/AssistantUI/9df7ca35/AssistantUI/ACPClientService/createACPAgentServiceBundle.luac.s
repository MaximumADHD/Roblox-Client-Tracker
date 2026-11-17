PROTO_0:
        0 JUMPIFNOT                        R0 ; [+9]
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["RemoteACPAgentService"]
        5 GETTABLEKS                       R3 R3 K1 ["new"]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 -1
        9 RETURN                           R3 -1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["LocalACPAgentService"]
       13 GETTABLEKS                       R3 R3 K1 ["new"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 -1
       17 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
