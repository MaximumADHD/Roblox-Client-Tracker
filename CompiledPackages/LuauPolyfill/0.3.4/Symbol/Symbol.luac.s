PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [newproxy]
        2 LOADB                            R2 1
        3 CALL                             R1 1 1
        4 LOADK                            R2 K2 ["Symbol()"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 LOADK                            R3 K3 ["Symbol(%s)"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K4 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 FASTCALL1                        GETMETATABLE R1 ; [+3]
       13 MOVE                             R4 R1
       14 GETIMPORT                        R3 K6 [getmetatable]
       16 CALL                             R3 1 1
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          REF R2
       19 SETTABLEKS                       R4 R3 K7 ["__tostring"]
       21 CLOSEUPVALS                      R2
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"new"}]
        2 DUPCLOSURE                       R1 K2 [PROTO_1]
        3 SETTABLEKS                       R1 R0 K0 ["new"]
        5 RETURN                           R0 1
