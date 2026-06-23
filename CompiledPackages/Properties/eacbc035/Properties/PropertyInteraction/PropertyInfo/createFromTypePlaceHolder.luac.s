PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 LOADB                            R2 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 DUPTABLE                         R1 K2 [{"type", "readonly"}]
        9 SETTABLEKS                       R0 R1 K0 ["type"]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K1 ["readonly"]
       14 RETURN                           R1 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_1]
       13 RETURN                           R2 1
