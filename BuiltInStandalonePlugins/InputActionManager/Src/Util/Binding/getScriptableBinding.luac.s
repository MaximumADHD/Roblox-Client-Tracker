PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R0 K0 ["bindings"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 MOVE                             R7 R1
       10 MOVE                             R8 R6
       11 CALL                             R7 1 1
       12 JUMPIFNOT                        R7 ; [+7]
       13 GETTABLEKS                       R8 R7 K1 ["type"]
       15 GETIMPORT                        R9 K5 [Enum.InputBindingType.Scriptable]
       17 JUMPIFNOTEQ                      R8 R9 ; [+2]
       19 RETURN                           R7 1
       20 FORGLOOP                         R2 2 ; [-12]
       22 LOADNIL                          R2
       23 RETURN                           R2 1

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
