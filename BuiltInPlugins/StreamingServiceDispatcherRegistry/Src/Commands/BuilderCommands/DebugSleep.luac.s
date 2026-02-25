PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["arguments"]
        3 JUMPIF                           R1 ; [+5]
        4 GETIMPORT                        R1 K3 [task.wait]
        6 LOADN                            R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 MOVE                             R1 R0
       10 JUMPIFNOT                        R1 ; [+2]
       11 GETTABLEKS                       R1 R0 K0 ["arguments"]
       13 GETIMPORT                        R2 K3 [task.wait]
       15 GETTABLEKS                       R4 R1 K5 ["time"]
       17 ORK                              R3 R4 K4 [1]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
