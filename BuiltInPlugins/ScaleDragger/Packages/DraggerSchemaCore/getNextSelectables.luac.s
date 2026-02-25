PROTO_0:
        0 GETTABLEKS                       R4 R2 K0 ["clickedFaceInstance"]
        2 JUMPIFNOT                        R4 ; [+7]
        3 NEWTABLE                         R4 0 1
        5 GETTABLEKS                       R5 R2 K0 ["clickedFaceInstance"]
        7 SETLIST                          R4 R5 1 [1]
        9 RETURN                           R4 1
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
