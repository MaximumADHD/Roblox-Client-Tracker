PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["type"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R3 0
        6 RETURN                           R3 1
        7 MOVE                             R3 R2
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLE                         R8 R1 R7
       12 GETIMPORT                        R9 K4 [Enum.KeyCode.None]
       14 JUMPIFEQ                         R8 R9 ; [+3]
       16 LOADB                            R8 1
       17 RETURN                           R8 1
       18 FORGLOOP                         R3 2 ; [-8]
       20 LOADB                            R3 0
       21 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 GETTABLEKS                       R2 R2 K9 ["DirectionPropertyNames"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Types"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 RETURN                           R3 1
