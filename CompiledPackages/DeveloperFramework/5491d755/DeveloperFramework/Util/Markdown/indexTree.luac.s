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
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Types"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 DUPCLOSURE                       R2 K7 [PROTO_1]
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1
