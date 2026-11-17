PROTO_0:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R2 R1 K2 ["CFrame"]
        7 GETTABLEKS                       R4 R0 K3 ["WorldCFrame"]
        9 NAMECALL                         R2 R2 K4 ["ToObjectSpace"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1
       13 GETTABLEKS                       R2 R0 K2 ["CFrame"]
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
