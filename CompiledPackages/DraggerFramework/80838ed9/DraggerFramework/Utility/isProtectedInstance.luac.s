PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+10]
        4 GETIMPORT                        R2 K1 [xpcall]
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 MOVE                             R5 R0
        9 CALL                             R2 3 1
       10 NOT                              R1 R2
       11 GETUPVAL                         R2 0
       12 SETTABLE                         R1 R2 R0
       13 RETURN                           R1 1

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
