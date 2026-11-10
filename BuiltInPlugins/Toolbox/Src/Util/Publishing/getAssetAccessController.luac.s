PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetAccessController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K1 [pcall]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 2
        8 JUMPIFNOT                        R1 ; [+2]
        9 MOVE                             R3 R2
       10 RETURN                           R3 1
       11 LOADNIL                          R3
       12 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
