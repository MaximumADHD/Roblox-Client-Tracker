PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["Model"]
        4 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+7]
        8 GETTABLEKS                       R2 R1 K2 ["SourceAssetId"]
       10 JUMPIFNOT                        R2 ; [+6]
       11 JUMPIFEQKN                       R2 K3 [-1] ; [+5]
       13 RETURN                           R1 1
       14 JUMP                             ; [+2]
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 GETUPVAL                         R2 0
       18 MOVE                             R3 R1
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
