PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["JUMP_STUDS"]
        3 JUMPIFNOTLE                      R1 R4 ; [+3]
        5 LOADB                            R4 0
        6 RETURN                           R4 1
        7 JUMPIFEQKNIL                     R0 ; [+8]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K1 ["SETTLED_STUDS"]
       12 JUMPIFNOTLE                      R4 R0 ; [+3]
       14 LOADB                            R4 0
       15 RETURN                           R4 1
       16 JUMPIFEQKNIL                     R2 ; [+9]
       18 SUB                              R4 R3 R2
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K2 ["DEBOUNCE_SECONDS"]
       22 JUMPIFNOTLT                      R4 R5 ; [+3]
       24 LOADB                            R4 0
       25 RETURN                           R4 1
       26 LOADB                            R4 1
       27 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADN                            R1 4
        4 SETTABLEKS                       R1 R0 K0 ["JUMP_STUDS"]
        6 LOADN                            R1 1
        7 SETTABLEKS                       R1 R0 K1 ["SETTLED_STUDS"]
        9 LOADK                            R1 K2 [0.25]
       10 SETTABLEKS                       R1 R0 K3 ["DEBOUNCE_SECONDS"]
       12 DUPCLOSURE                       R1 K4 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["shouldRecenter"]
       16 RETURN                           R0 1
