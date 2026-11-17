PROTO_0:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 GETTABLEKS                       R7 R6 K2 ["MeshName"]
        7 GETTABLEKS                       R8 R6 K3 ["Index"]
        9 GETTABLE                         R10 R0 R7
       10 GETTABLE                         R9 R10 R8
       11 NAMECALL                         R9 R9 K4 ["cleanup"]
       13 CALL                             R9 1 0
       14 GETTABLE                         R9 R0 R7
       15 LOADNIL                          R10
       16 SETTABLE                         R10 R9 R8
       17 FORGLOOP                         R2 2 [inext] ; [-13]
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
