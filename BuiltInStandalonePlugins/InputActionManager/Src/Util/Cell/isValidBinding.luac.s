PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["keyCode"]
        2 GETIMPORT                        R2 K4 [Enum.KeyCode.Unknown]
        4 JUMPIFEQ                         R1 R2 ; [+3]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETTABLE                         R6 R0 R5
       13 JUMPIFNOT                        R6 ; [+6]
       14 GETIMPORT                        R7 K4 [Enum.KeyCode.Unknown]
       16 JUMPIFEQ                         R6 R7 ; [+3]
       18 LOADB                            R7 1
       19 RETURN                           R7 1
       20 FORGLOOP                         R1 2 ; [-9]
       22 LOADB                            R1 0
       23 RETURN                           R1 1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Constants"]
       22 GETTABLEKS                       R3 R3 K10 ["CompositeProperties"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 RETURN                           R3 1
