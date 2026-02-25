PROTO_0:
        0 MOVE                             R4 R1
        1 LOADB                            R5 1
        2 NAMECALL                         R2 R0 K0 ["FindFirstChild"]
        4 CALL                             R2 3 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+3]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 LOADK                            R5 K1 ["WrapTarget"]
       10 NAMECALL                         R3 R2 K2 ["IsA"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+1]
       14 RETURN                           R2 1
       15 MOVE                             R5 R1
       16 NAMECALL                         R3 R2 K0 ["FindFirstChild"]
       18 CALL                             R3 2 1
       19 JUMPIFEQKNIL                     R3 ; [+6]
       21 LOADK                            R6 K1 ["WrapTarget"]
       22 NAMECALL                         R4 R3 K2 ["IsA"]
       24 CALL                             R4 2 1
       25 JUMPIF                           R4 ; [+2]
       26 LOADNIL                          R4
       27 RETURN                           R4 1
       28 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
