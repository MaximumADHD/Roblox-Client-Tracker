PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["Symbol"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["GlobalRegistry"]
       14 CALL                             R1 1 1
       15 NEWTABLE                         R3 1 0
       17 DUPTABLE                         R4 K7 [{"__call"}]
       18 DUPCLOSURE                       R5 K8 [PROTO_0]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R5 R4 K6 ["__call"]
       22 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       24 GETIMPORT                        R2 K10 [setmetatable]
       26 CALL                             R2 2 1
       27 GETTABLEKS                       R3 R1 K11 ["getOrInit"]
       29 SETTABLEKS                       R3 R2 K12 ["for_"]
       31 RETURN                           R2 1
