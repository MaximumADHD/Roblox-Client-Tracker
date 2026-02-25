PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetChildren"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["TerrainDetail"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+7]
       11 GETTABLEKS                       R8 R6 K3 ["Face"]
       13 GETTABLE                         R7 R1 R8
       14 JUMPIF                           R7 ; [+3]
       15 GETTABLEKS                       R7 R6 K3 ["Face"]
       17 SETTABLE                         R6 R1 R7
       18 FORGLOOP                         R2 2 ; [-13]
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
