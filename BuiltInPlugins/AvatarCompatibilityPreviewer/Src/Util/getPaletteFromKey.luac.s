PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+21]
        2 MOVE                             R2 R1
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R10 0
        7 GETTABLE                         R7 R10 R6
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 GETTABLEKS                       R12 R11 K0 ["Key"]
       13 JUMPIFNOTEQ                      R12 R0 ; [+4]
       15 MOVE                             R12 R11
       16 MOVE                             R13 R6
       17 RETURN                           R12 2
       18 FORGLOOP                         R7 2 ; [-8]
       20 FORGLOOP                         R2 2 ; [-15]
       22 GETUPVAL                         R2 0
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 MOVE                             R7 R6
       27 LOADNIL                          R8
       28 LOADNIL                          R9
       29 FORGPREP                         R7
       30 GETTABLEKS                       R12 R11 K0 ["Key"]
       32 JUMPIFNOTEQ                      R12 R0 ; [+4]
       34 MOVE                             R12 R11
       35 MOVE                             R13 R5
       36 RETURN                           R12 2
       37 FORGLOOP                         R7 2 ; [-8]
       39 FORGLOOP                         R2 2 ; [-14]
       41 LOADNIL                          R2
       42 LOADNIL                          R3
       43 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["CatalogItems"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 RETURN                           R3 1
