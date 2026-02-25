PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["panViewport"]
        3 LOADNIL                          R1
        4 GETUPVAL                         R2 1
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 2
       15 GETTABLEKS                       R5 R1 K3 ["panViewport"]
       17 MOVE                             R6 R0
       18 SETLIST                          R4 R5 2 [1]
       20 CALL                             R2 2 1
       21 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K9 ["ViewportRectContext"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_1]
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
