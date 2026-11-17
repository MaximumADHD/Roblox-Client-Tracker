PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R0 R0 K2 ["GetFFlag"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 AND                              R4 R1 R2
        8 SETTABLE                         R4 R3 R0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOTEQKNIL                  R2 ; [+10]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R2 K1 [pcall]
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 AND                              R5 R2 R3
       12 SETTABLE                         R5 R4 R1
       13 GETUPVAL                         R3 0
       14 GETTABLE                         R2 R3 R1
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R2 1 0
        7 DUPCLOSURE                       R3 K1 [PROTO_2]
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R3 R2 K2 ["isEnabled"]
       11 RETURN                           R2 1
