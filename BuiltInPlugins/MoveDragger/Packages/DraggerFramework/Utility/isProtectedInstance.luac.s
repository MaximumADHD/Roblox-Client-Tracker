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
        3 DUPTABLE                         R2 K1 [{"__mode"}]
        4 LOADK                            R3 K2 ["k"]
        5 SETTABLEKS                       R3 R2 K0 ["__mode"]
        7 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        9 GETIMPORT                        R0 K4 [setmetatable]
       11 CALL                             R0 2 1
       12 DUPCLOSURE                       R1 K5 [PROTO_0]
       13 DUPCLOSURE                       R2 K6 [PROTO_1]
       14 DUPCLOSURE                       R3 K7 [PROTO_2]
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R1
       18 RETURN                           R3 1
