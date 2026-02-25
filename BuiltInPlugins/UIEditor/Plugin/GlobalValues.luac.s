PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKN                       R2 K0 [1] ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["isScale"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 LOADN                            R1 2
        6 SETUPVAL                         R1 1
        7 GETIMPORT                        R1 K2 [print]
        9 LOADK                            R2 K3 ["Setting Grid mode: Offset"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 LOADN                            R1 1
       13 SETUPVAL                         R1 1
       14 GETIMPORT                        R1 K2 [print]
       16 LOADK                            R2 K4 ["Setting Grid mode: Scale"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R4 K1 [game]
        2 GETTABLEKS                       R3 R4 K2 ["Workspace"]
        4 GETTABLEKS                       R2 R3 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R1 R2 K4 ["ViewportSize"]
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 LOADN                            R0 1
        2 NEWTABLE                         R1 4 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R0
        6 SETTABLEKS                       R2 R1 K0 ["isScale"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R1
       10 CAPTURE                          REF R0
       11 SETTABLEKS                       R2 R1 K1 ["toggleGridType"]
       13 DUPCLOSURE                       R2 K2 [PROTO_2]
       14 SETTABLEKS                       R2 R1 K3 ["getScreenSize"]
       16 CLOSEUPVALS                      R0
       17 RETURN                           R1 1
