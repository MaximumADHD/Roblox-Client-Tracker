PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 JUMPIFEQKS                       R1 K1 [""] ; [+8]
        6 GETUPVAL                         R2 1
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 NAMECALL                         R2 R2 K2 ["openLocalFileInChannel"]
       11 CALL                             R2 3 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 MOVE                             R4 R0
       15 LOADB                            R5 0
       16 NAMECALL                         R2 R2 K3 ["openLocalFile"]
       18 CALL                             R2 3 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["SessionChannel"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K10 ["StartPageManager"]
       27 DUPCLOSURE                       R4 K11 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 RETURN                           R4 1
