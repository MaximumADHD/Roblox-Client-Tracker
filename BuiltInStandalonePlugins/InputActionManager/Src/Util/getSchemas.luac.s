PROTO_0:
        0 NEWTABLE                         R0 0 4
        2 LOADK                            R1 K0 ["KeyboardAndMouse"]
        3 LOADK                            R2 K1 ["Touch"]
        4 LOADK                            R3 K2 ["Gamepad"]
        5 LOADK                            R4 K3 ["VR"]
        6 SETLIST                          R0 R1 4 [1]
        8 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
