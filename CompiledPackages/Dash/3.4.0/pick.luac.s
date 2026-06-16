PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R8 R1
        7 MOVE                             R9 R7
        8 MOVE                             R10 R6
        9 CALL                             R8 2 1
       10 JUMPIFNOT                        R8 ; [+1]
       11 SETTABLE                         R7 R2 R6
       12 FORGLOOP                         R3 2 ; [-7]
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 RETURN                           R2 1
