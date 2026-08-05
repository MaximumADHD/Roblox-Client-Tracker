PROTO_0:
        0 GETTABLEKS                       R4 R2 K0 ["clickedFaceInstance"]
        2 JUMPIFNOT                        R4 ; [+7]
        3 NEWTABLE                         R4 0 1
        5 GETTABLEKS                       R5 R2 K0 ["clickedFaceInstance"]
        7 SETLIST                          R4 R5 1 [1]
        9 RETURN                           R4 1
       10 LOADNIL                          R4
       11 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K3 ["DraggerFramework"]
        9 GETIMPORT                        R3 K5 [require]
       11 GETTABLEKS                       R4 R2 K6 ["Types"]
       13 CALL                             R3 1 1
       14 DUPCLOSURE                       R4 K7 [PROTO_0]
       15 RETURN                           R4 1
