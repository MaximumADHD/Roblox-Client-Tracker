PROTO_0:
        0 SETTABLEKS                       R0 R1 K0 ["SourceAssetId"]
        2 LOADK                            R4 K1 ["Folder"]
        3 NAMECALL                         R2 R1 K2 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+13]
        7 NAMECALL                         R2 R1 K3 ["GetChildren"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 LOADK                            R9 K4 ["Model"]
       12 NAMECALL                         R7 R6 K2 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+2]
       16 SETTABLEKS                       R0 R6 K0 ["SourceAssetId"]
       18 FORGLOOP                         R2 2 ; [-8]
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
