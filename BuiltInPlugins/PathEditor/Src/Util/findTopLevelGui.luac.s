PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFEQKNIL                     R1 ; [+15]
        3 LOADK                            R4 K0 ["ScreenGui"]
        4 NAMECALL                         R2 R1 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIF                           R2 ; [+5]
        8 LOADK                            R4 K2 ["SurfaceGui"]
        9 NAMECALL                         R2 R1 K1 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+1]
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R1 K3 ["Parent"]
       16 JUMPBACK                         ; [-16]
       17 LOADNIL                          R2
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
