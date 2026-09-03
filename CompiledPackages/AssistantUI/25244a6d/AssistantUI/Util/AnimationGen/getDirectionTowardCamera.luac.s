PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 MINUS                            R2 R3
        3 LOADN                            R3 0
        4 GETTABLEKS                       R5 R0 K1 ["Z"]
        6 MINUS                            R4 R5
        7 FASTCALL                         VECTOR ; [+2]
        8 GETIMPORT                        R1 K4 [Vector3.new]
       10 CALL                             R1 3 1
       11 GETTABLEKS                       R2 R1 K5 ["Magnitude"]
       13 LOADK                            R3 K6 [0.0001]
       14 JUMPIFNOTLE                      R2 R3 ; [+3]
       16 LOADK                            R2 K7 [{0, 0, 1}]
       17 RETURN                           R2 1
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
