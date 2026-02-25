PROTO_0:
        0 DUPTABLE                         R1 K1 [{"navigation"}]
        1 SETTABLEKS                       R0 R1 K0 ["navigation"]
        3 GETUPVAL                         R4 0
        4 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K3 [setmetatable]
        9 CALL                             R2 2 0
       10 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["navigation"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R5 R0 K5 ["Packages"]
       13 GETTABLEKS                       R4 R5 K6 ["Framework"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K7 ["ContextServices"]
       18 GETTABLEKS                       R1 R2 K8 ["ContextItem"]
       20 LOADK                            R4 K9 ["Navigation"]
       21 NAMECALL                         R2 R1 K10 ["extend"]
       23 CALL                             R2 2 1
       24 DUPCLOSURE                       R3 K11 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R3 R2 K12 ["new"]
       28 DUPCLOSURE                       R3 K13 [PROTO_1]
       29 SETTABLEKS                       R3 R2 K14 ["get"]
       31 RETURN                           R2 1
