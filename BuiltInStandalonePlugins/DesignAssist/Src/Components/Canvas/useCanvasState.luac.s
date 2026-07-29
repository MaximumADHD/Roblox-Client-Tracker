PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R1 R1 K0 ["get"]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 0
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 2
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R0 R0 K1 ["on"]
       13 CALL                             R0 3 1
       14 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R0 K1 ["get"]
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R6 0 2
       17 MOVE                             R7 R0
       18 MOVE                             R8 R1
       19 SETLIST                          R6 R7 2 [1]
       21 CALL                             R4 2 0
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 LOADK                            R3 K4 ["DesignAssist"]
        6 NAMECALL                         R1 R1 K5 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R1 R1 K6 ["Packages"]
       11 GETTABLEKS                       R1 R1 K7 ["React"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K8 ["Parent"]
       20 GETTABLEKS                       R2 R2 K9 ["CanvasState"]
       22 CALL                             R1 1 1
       23 DUPCLOSURE                       R2 K10 [PROTO_2]
       24 CAPTURE                          VAL R0
       25 RETURN                           R2 1
