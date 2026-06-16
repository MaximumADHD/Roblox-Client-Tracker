PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 3
        2 FORGPREP                         R1
        3 GETTABLE                         R6 R0 R5
        4 JUMPIFNOT                        R6 ; [+8]
        5 GETTABLEKS                       R7 R6 K0 ["secondaryModifier"]
        7 GETIMPORT                        R8 K4 [Enum.KeyCode.Unknown]
        9 JUMPIFEQ                         R7 R8 ; [+3]
       11 LOADB                            R7 1
       12 RETURN                           R7 1
       13 FORGLOOP                         R1 2 ; [-11]
       15 LOADB                            R1 0
       16 RETURN                           R1 1

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
       20 GETTABLEKS                       R3 R3 K9 ["getSchemas"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
