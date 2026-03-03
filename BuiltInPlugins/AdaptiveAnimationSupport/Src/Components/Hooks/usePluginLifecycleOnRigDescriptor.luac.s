PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 0
        6 LOADB                            R2 1
        7 NAMECALL                         R0 R0 K0 ["Activate"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 NAMECALL                         R0 R0 K1 ["Deactivate"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useEffect"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R4 0 2
        8 MOVE                             R5 R1
        9 MOVE                             R6 R0
       10 SETLIST                          R4 R5 2 [1]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
