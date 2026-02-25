PROTO_0:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["MeshName"]
        6 GETTABLEKS                       R8 R6 K1 ["Index"]
        8 GETTABLE                         R10 R0 R7
        9 GETTABLE                         R9 R10 R8
       10 NAMECALL                         R9 R9 K2 ["cleanup"]
       12 CALL                             R9 1 0
       13 GETTABLE                         R9 R0 R7
       14 LOADNIL                          R10
       15 SETTABLE                         R10 R9 R8
       16 FORGLOOP                         R2 2 ; [-13]
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
