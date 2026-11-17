PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 GETTABLEKS                       R5 R0 K1 ["providers"]
        4 LENGTH                           R4 R5
        5 LOADN                            R2 1
        6 LOADN                            R3 -1
        7 FORNPREP                         R2
        8 GETTABLEKS                       R6 R0 K1 ["providers"]
       10 GETTABLE                         R5 R6 R4
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K2 ["cloneElement"]
       14 MOVE                             R7 R5
       15 LOADNIL                          R8
       16 MOVE                             R9 R1
       17 CALL                             R6 3 1
       18 MOVE                             R1 R6
       19 FORNLOOP                         R2
       20 RETURN                           R1 1

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
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
