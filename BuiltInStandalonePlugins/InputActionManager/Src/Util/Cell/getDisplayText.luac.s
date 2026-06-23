PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Instance"] ; [+5]
        2 JUMPIFNOT                        R3 ; [+3]
        3 JUMPIFEQKS                       R3 K1 [""] ; [+2]
        5 RETURN                           R3 1
        6 JUMPIFNOTEQKS                    R0 K2 ["Dropdown"] ; [+11]
        8 JUMPIFNOT                        R1 ; [+9]
        9 GETTABLE                         R4 R1 R2
       10 JUMPIFNOT                        R4 ; [+7]
       11 GETIMPORT                        R5 K6 [Enum.KeyCode.Unknown]
       13 JUMPIFEQ                         R4 R5 ; [+4]
       15 GETTABLEKS                       R5 R4 K7 ["Name"]
       17 RETURN                           R5 1
       18 LOADK                            R4 K8 ["None"]
       19 RETURN                           R4 1

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
