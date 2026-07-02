PROTO_0:
        0 JUMPIFNOTEQKS                    R2 K0 ["Touch"] ; [+9]
        2 GETTABLEKS                       R3 R0 K1 ["uiButton"]
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETTABLEKS                       R3 R0 K1 ["uiButton"]
        7 GETTABLEKS                       R3 R3 K2 ["uuid"]
        9 RETURN                           R3 1
       10 GETTABLE                         R3 R0 R1
       11 JUMPIFNOT                        R3 ; [+4]
       12 GETIMPORT                        R4 K6 [Enum.KeyCode.Unknown]
       14 JUMPIFNOTEQ                      R3 R4 ; [+3]
       16 LOADNIL                          R4
       17 RETURN                           R4 1
       18 RETURN                           R3 1

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
