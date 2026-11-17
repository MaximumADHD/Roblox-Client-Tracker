PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 DUPCLOSURE                       R1 K0 [PROTO_0]
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R0 K2 [pcall]
        9 CALL                             R0 1 2
       10 AND                              R2 R0 R1
       11 SETUPVAL                         R2 0
       12 GETUPVAL                         R2 0
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          REF R0
        4 CLOSEUPVALS                      R0
        5 RETURN                           R1 1
