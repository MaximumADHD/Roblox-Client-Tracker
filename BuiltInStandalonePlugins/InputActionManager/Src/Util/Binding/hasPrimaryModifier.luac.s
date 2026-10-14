PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 3
        2 FORGPREP                         R1
        3 GETTABLE                         R6 R0 R5
        4 JUMPIFNOT                        R6 ; [+12]
        5 GETTABLEKS                       R7 R6 K0 ["primaryModifier"]
        7 GETIMPORT                        R8 K4 [Enum.KeyCode.None]
        9 JUMPIFNOTEQ                      R7 R8 ; [+5]
       11 GETTABLEKS                       R7 R6 K5 ["uiModifier"]
       13 JUMPIFEQKNIL                     R7 ; [+3]
       15 LOADB                            R7 1
       16 RETURN                           R7 1
       17 FORGLOOP                         R1 2 ; [-15]
       19 LOADB                            R1 0
       20 RETURN                           R1 1

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
