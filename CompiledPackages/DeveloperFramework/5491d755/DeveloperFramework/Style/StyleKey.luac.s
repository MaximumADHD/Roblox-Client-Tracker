PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["add"]
        4 CALL                             R2 2 1
        5 SETTABLE                         R2 R0 R1
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R3 K6 ["tableCache"]
       13 CALL                             R1 1 1
       14 MOVE                             R2 R1
       15 LOADK                            R3 K7 ["StyleKey"]
       16 CALL                             R2 1 1
       17 DUPTABLE                         R5 K9 [{"__index"}]
       18 DUPCLOSURE                       R6 K10 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R6 R5 K8 ["__index"]
       22 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       24 MOVE                             R4 R2
       25 GETIMPORT                        R3 K12 [setmetatable]
       27 CALL                             R3 2 0
       28 RETURN                           R2 1
