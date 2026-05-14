PROTO_0:
        0 SETTABLEKS                       R1 R0 K0 ["index"]
        2 GETTABLEKS                       R2 R0 K1 ["children"]
        4 JUMPIFNOT                        R2 ; [+11]
        5 GETTABLEKS                       R2 R0 K1 ["children"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R7 0
       11 MOVE                             R8 R6
       12 MOVE                             R9 R5
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-5]
       16 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["index"]
        3 GETTABLEKS                       R1 R0 K1 ["children"]
        5 JUMPIFNOT                        R1 ; [+11]
        6 GETTABLEKS                       R1 R0 K1 ["children"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETUPVAL                         R6 0
       12 MOVE                             R7 R5
       13 MOVE                             R8 R4
       14 CALL                             R6 2 0
       15 FORGLOOP                         R1 2 ; [-5]
       17 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Utils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R2
       16 DUPCLOSURE                       R3 K9 [PROTO_1]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
