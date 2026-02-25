PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R0 R0 K2 ["GetFFlag"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 AND                              R4 R1 R2
        7 SETTABLE                         R4 R3 R0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOTEQKNIL                  R2 ; [+9]
        4 GETIMPORT                        R2 K1 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 0
       10 AND                              R5 R2 R3
       11 SETTABLE                         R5 R4 R1
       12 GETUPVAL                         R3 0
       13 GETTABLE                         R2 R3 R1
       14 RETURN                           R2 1

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
