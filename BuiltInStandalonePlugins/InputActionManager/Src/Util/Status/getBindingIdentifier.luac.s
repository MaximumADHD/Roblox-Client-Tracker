PROTO_0:
        0 JUMPIFNOTEQKS                    R2 K0 ["Touch"] ; [+21]
        2 JUMPIFNOTEQKS                    R1 K1 ["keyCode"] ; [+9]
        4 GETTABLEKS                       R3 R0 K2 ["uiButton"]
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETTABLEKS                       R3 R0 K2 ["uiButton"]
        9 GETTABLEKS                       R3 R3 K3 ["uuid"]
       11 RETURN                           R3 1
       12 JUMPIFNOTEQKS                    R1 K4 ["primaryModifier"] ; [+9]
       14 GETTABLEKS                       R3 R0 K5 ["uiModifier"]
       16 JUMPIFNOT                        R3 ; [+5]
       17 GETTABLEKS                       R3 R0 K5 ["uiModifier"]
       19 GETTABLEKS                       R3 R3 K3 ["uuid"]
       21 RETURN                           R3 1
       22 GETTABLE                         R3 R0 R1
       23 JUMPIFNOT                        R3 ; [+4]
       24 GETIMPORT                        R4 K9 [Enum.KeyCode.None]
       26 JUMPIFNOTEQ                      R3 R4 ; [+3]
       28 LOADNIL                          R4
       29 RETURN                           R4 1
       30 RETURN                           R3 1

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
