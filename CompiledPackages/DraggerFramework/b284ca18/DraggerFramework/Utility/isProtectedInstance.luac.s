PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+11]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 MOVE                             R5 R0
        7 FASTPCALL                        xpcall 3 ; [+2]
        8 GETIMPORT                        R2 K1 [xpcall]
       10 CALL                             R2 3 1
       11 NOT                              R1 R2
       12 GETUPVAL                         R2 0
       13 SETTABLE                         R1 R2 R0
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R1 0 0
        3 DUPTABLE                         R2 K2 [{[1] = "k"}]
        4 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        6 GETIMPORT                        R0 K4 [setmetatable]
        8 CALL                             R0 2 1
        9 DUPCLOSURE                       R1 K5 [PROTO_0]
       10 DUPCLOSURE                       R2 K6 [PROTO_1]
       11 DUPCLOSURE                       R3 K7 [PROTO_2]
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R1
       15 RETURN                           R3 1
