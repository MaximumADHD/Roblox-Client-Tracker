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
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+2]
        5 MOVE                             R2 R1
        6 JUMP                             ; [+1]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 JUMPIFNOT                        R3 ; [+4]
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R2
       12 CALL                             R3 1 -1
       13 RETURN                           R3 -1
       14 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 SETUPVAL                         R0 1
        6 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R6 K3 [{"Name", "Get", "Set"}]
        1 NEWCLOSURE                       R7 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R7 R6 K0 ["Name"]
        5 NEWCLOSURE                       R7 P1
        6 CAPTURE                          VAL R3
        7 CAPTURE                          REF R1
        8 CAPTURE                          VAL R2
        9 SETTABLEKS                       R7 R6 K1 ["Get"]
       11 NEWCLOSURE                       R7 P2
       12 CAPTURE                          VAL R4
       13 CAPTURE                          REF R1
       14 SETTABLEKS                       R7 R6 K2 ["Set"]
       16 DUPTABLE                         R9 K5 [{"__call"}]
       17 DUPCLOSURE                       R10 K6 [PROTO_0]
       18 SETTABLEKS                       R10 R9 K4 ["__call"]
       20 FASTCALL2                        SETMETATABLE R6 R9 ; [+4]
       22 MOVE                             R8 R6
       23 GETIMPORT                        R7 K8 [setmetatable]
       25 CALL                             R7 2 1
       26 MOVE                             R5 R7
       27 CLOSEUPVALS                      R1
       28 RETURN                           R5 1

PROTO_6:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R1 K1 [game]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K2 ["SetFastFlagForTesting"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R8 P1
        7 CAPTURE                          VAL R0
        8 CALL                             R3 5 1
        9 RETURN                           R3 1

PROTO_9:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R1 K1 [game]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K2 ["SetFastIntForTesting"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R8 P1
        7 CAPTURE                          VAL R0
        8 CALL                             R3 5 1
        9 RETURN                           R3 1

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastString"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R1 K1 [game]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K2 ["SetFastStringForTesting"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R8 P1
        7 CAPTURE                          VAL R0
        8 CALL                             R3 5 1
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 DUPCLOSURE                       R1 K1 [PROTO_5]
        3 DUPCLOSURE                       R2 K2 [PROTO_8]
        4 CAPTURE                          VAL R1
        5 DUPCLOSURE                       R3 K3 [PROTO_11]
        6 CAPTURE                          VAL R1
        7 DUPCLOSURE                       R4 K4 [PROTO_14]
        8 CAPTURE                          VAL R1
        9 DUPTABLE                         R5 K8 [{"createFFlag", "createFInt", "createFString"}]
       10 SETTABLEKS                       R2 R5 K5 ["createFFlag"]
       12 SETTABLEKS                       R3 R5 K6 ["createFInt"]
       14 SETTABLEKS                       R4 R5 K7 ["createFString"]
       16 RETURN                           R5 1
