PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 GETTABLEKS                       R5 R0 K1 ["providers"]
        4 LENGTH                           R4 R5
        5 LOADN                            R2 1
        6 LOADN                            R3 255
        7 FORNPREP                         R2
        8 GETTABLEKS                       R6 R0 K1 ["providers"]
       10 GETTABLE                         R5 R6 R4
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K2 ["cloneElement"]
       14 MOVE                             R7 R5
       15 LOADNIL                          R8
       16 MOVE                             R9 R1
       17 CALL                             R6 3 1
       18 MOVE                             R1 R6
       19 FORNLOOP                         R2
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["Packages"]
       11 GETTABLEKS                       R1 R2 K6 ["React"]
       13 CALL                             R0 1 1
       14 DUPCLOSURE                       R1 K7 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1
