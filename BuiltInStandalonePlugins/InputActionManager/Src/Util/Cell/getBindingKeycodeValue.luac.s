PROTO_0:
        0 JUMPIF                           R0 ; [+5]
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.Unknown]
        3 GETTABLEKS                       R2 R2 K4 ["Value"]
        5 RETURN                           R2 1
        6 GETTABLE                         R2 R0 R1
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETTABLEKS                       R3 R2 K4 ["Value"]
       10 RETURN                           R3 1
       11 GETIMPORT                        R3 K3 [Enum.KeyCode.Unknown]
       13 GETTABLEKS                       R3 R3 K4 ["Value"]
       15 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
