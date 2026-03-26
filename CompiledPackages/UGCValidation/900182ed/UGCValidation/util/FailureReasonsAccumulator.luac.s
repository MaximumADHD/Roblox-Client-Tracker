PROTO_0:
        0 NEWTABLE                         R0 2 0
        2 LOADB                            R1 1
        3 SETTABLEKS                       R1 R0 K0 ["passed"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["reasons"]
        9 GETUPVAL                         R3 0
       10 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K3 [setmetatable]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R4 R0 K0 ["reasons"]
        4 GETIMPORT                        R5 K3 [table.concat]
        6 MOVE                             R6 R2
        7 LOADK                            R7 K4 ["\n"]
        8 CALL                             R5 2 -1
        9 FASTCALL                         TABLE_INSERT ; [+2]
       10 GETIMPORT                        R3 K6 [table.insert]
       12 CALL                             R3 -1 0
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R0 K7 ["passed"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["passed"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADB                            R1 1
        4 RETURN                           R1 1
        5 LOADB                            R1 0
        6 GETTABLEKS                       R2 R0 K1 ["reasons"]
        8 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["updateReasons"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["getFinalResults"]
       15 RETURN                           R0 1
