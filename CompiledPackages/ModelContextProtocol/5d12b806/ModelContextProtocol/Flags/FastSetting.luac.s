PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Get"]
        2 CALL                             R1 0 -1
        3 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R3 K1 [{"__call"}]
        1 DUPCLOSURE                       R4 K2 [PROTO_0]
        2 SETTABLEKS                       R4 R3 K0 ["__call"]
        4 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K4 [setmetatable]
        9 CALL                             R1 2 1
       10 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["GetFastFlag"]
        4 GETIMPORT                        R2 K1 [game]
        6 GETUPVAL                         R3 0
        7 FASTPCALL                        pcall 3 ; [+2]
        8 GETIMPORT                        R0 K4 [pcall]
       10 CALL                             R0 3 2
       11 JUMPIF                           R0 ; [+2]
       12 GETUPVAL                         R2 1
       13 RETURN                           R2 1
       14 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["SetFastFlagForTesting"]
        4 GETIMPORT                        R3 K1 [game]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R0
        8 FASTPCALL                        pcall 4 ; [+2]
        9 GETIMPORT                        R1 K4 [pcall]
       11 CALL                             R1 4 0
       12 SETUPVAL                         R0 1
       13 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R3 K3 [{"Name", "Get", "Set"}]
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R4 R3 K0 ["Name"]
        5 NEWCLOSURE                       R4 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          REF R1
        8 SETTABLEKS                       R4 R3 K1 ["Get"]
       10 NEWCLOSURE                       R4 P2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          REF R1
       13 SETTABLEKS                       R4 R3 K2 ["Set"]
       15 DUPTABLE                         R6 K5 [{"__call"}]
       16 DUPCLOSURE                       R7 K6 [PROTO_0]
       17 SETTABLEKS                       R7 R6 K4 ["__call"]
       19 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K8 [setmetatable]
       24 CALL                             R4 2 1
       25 MOVE                             R2 R4
       26 CLOSEUPVALS                      R1
       27 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["GetFastInt"]
        4 GETIMPORT                        R2 K1 [game]
        6 GETUPVAL                         R3 0
        7 FASTPCALL                        pcall 3 ; [+2]
        8 GETIMPORT                        R0 K4 [pcall]
       10 CALL                             R0 3 2
       11 JUMPIF                           R0 ; [+2]
       12 GETUPVAL                         R2 1
       13 RETURN                           R2 1
       14 RETURN                           R1 1

PROTO_8:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["SetFastIntForTesting"]
        4 GETIMPORT                        R3 K1 [game]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R0
        8 FASTPCALL                        pcall 4 ; [+2]
        9 GETIMPORT                        R1 K4 [pcall]
       11 CALL                             R1 4 0
       12 SETUPVAL                         R0 1
       13 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R3 K3 [{"Name", "Get", "Set"}]
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R4 R3 K0 ["Name"]
        5 NEWCLOSURE                       R4 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          REF R1
        8 SETTABLEKS                       R4 R3 K1 ["Get"]
       10 NEWCLOSURE                       R4 P2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          REF R1
       13 SETTABLEKS                       R4 R3 K2 ["Set"]
       15 DUPTABLE                         R6 K5 [{"__call"}]
       16 DUPCLOSURE                       R7 K6 [PROTO_0]
       17 SETTABLEKS                       R7 R6 K4 ["__call"]
       19 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K8 [setmetatable]
       24 CALL                             R4 2 1
       25 MOVE                             R2 R4
       26 CLOSEUPVALS                      R1
       27 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_11:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["GetFastString"]
        4 GETIMPORT                        R2 K1 [game]
        6 GETUPVAL                         R3 0
        7 FASTPCALL                        pcall 3 ; [+2]
        8 GETIMPORT                        R0 K4 [pcall]
       10 CALL                             R0 3 2
       11 JUMPIF                           R0 ; [+2]
       12 GETUPVAL                         R2 1
       13 RETURN                           R2 1
       14 RETURN                           R1 1

PROTO_12:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["SetFastStringForTesting"]
        4 GETIMPORT                        R3 K1 [game]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R0
        8 FASTPCALL                        pcall 4 ; [+2]
        9 GETIMPORT                        R1 K4 [pcall]
       11 CALL                             R1 4 0
       12 SETUPVAL                         R0 1
       13 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R3 K3 [{"Name", "Get", "Set"}]
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R4 R3 K0 ["Name"]
        5 NEWCLOSURE                       R4 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          REF R1
        8 SETTABLEKS                       R4 R3 K1 ["Get"]
       10 NEWCLOSURE                       R4 P2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          REF R1
       13 SETTABLEKS                       R4 R3 K2 ["Set"]
       15 DUPTABLE                         R6 K5 [{"__call"}]
       16 DUPCLOSURE                       R7 K6 [PROTO_0]
       17 SETTABLEKS                       R7 R6 K4 ["__call"]
       19 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K8 [setmetatable]
       24 CALL                             R4 2 1
       25 MOVE                             R2 R4
       26 CLOSEUPVALS                      R1
       27 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 DUPCLOSURE                       R1 K1 [PROTO_5]
        3 DUPCLOSURE                       R2 K2 [PROTO_9]
        4 DUPCLOSURE                       R3 K3 [PROTO_13]
        5 DUPTABLE                         R4 K7 [{"createFFlag", "createFInt", "createFString"}]
        6 SETTABLEKS                       R1 R4 K4 ["createFFlag"]
        8 SETTABLEKS                       R2 R4 K5 ["createFInt"]
       10 SETTABLEKS                       R3 R4 K6 ["createFString"]
       12 RETURN                           R4 1
