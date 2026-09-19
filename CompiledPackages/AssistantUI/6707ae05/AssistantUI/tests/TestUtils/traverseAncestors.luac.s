PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIFEQKNIL                     R2 ; [+15]
        3 LOADK                            R5 K0 ["GuiObject"]
        4 NAMECALL                         R3 R2 K1 ["IsA"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+9]
        8 MOVE                             R3 R1
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 JUMPIFEQKNIL                     R3 ; [+2]
       13 RETURN                           R3 1
       14 GETTABLEKS                       R2 R2 K2 ["Parent"]
       16 JUMPBACK                         ; [-16]
       17 LOADNIL                          R3
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
