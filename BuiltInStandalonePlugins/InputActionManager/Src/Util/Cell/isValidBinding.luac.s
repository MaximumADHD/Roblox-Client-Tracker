PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["keyCode"]
        2 GETIMPORT                        R2 K4 [Enum.KeyCode.None]
        4 JUMPIFEQ                         R1 R2 ; [+3]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 GETTABLEKS                       R1 R0 K5 ["uiButton"]
       10 JUMPIFEQKNIL                     R1 ; [+3]
       12 LOADB                            R1 1
       13 RETURN                           R1 1
       14 GETUPVAL                         R1 0
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 GETTABLE                         R6 R0 R5
       19 JUMPIFNOT                        R6 ; [+6]
       20 GETIMPORT                        R7 K4 [Enum.KeyCode.None]
       22 JUMPIFEQ                         R6 R7 ; [+3]
       24 LOADB                            R7 1
       25 RETURN                           R7 1
       26 FORGLOOP                         R1 2 ; [-9]
       28 GETTABLEKS                       R1 R0 K6 ["type"]
       30 GETIMPORT                        R2 K9 [Enum.InputBindingType.Scriptable]
       32 JUMPIFNOTEQ                      R1 R2 ; [+3]
       34 LOADB                            R1 1
       35 RETURN                           R1 1
       36 LOADB                            R1 0
       37 RETURN                           R1 1

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
