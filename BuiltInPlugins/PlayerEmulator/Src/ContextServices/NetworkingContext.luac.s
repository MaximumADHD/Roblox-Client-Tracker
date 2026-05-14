PROTO_0:
        0 DUPTABLE                         R1 K1 [{"networking"}]
        1 SETTABLEKS                       R0 R1 K0 ["networking"]
        3 GETUPVAL                         R4 0
        4 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K3 [setmetatable]
        9 CALL                             R2 2 0
       10 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["ContextServices"]
       18 GETTABLEKS                       R2 R2 K8 ["ContextItem"]
       20 LOADK                            R5 K9 ["RobloxAPI"]
       21 NAMECALL                         R3 R2 K10 ["extend"]
       23 CALL                             R3 2 1
       24 DUPCLOSURE                       R4 K11 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 SETTABLEKS                       R4 R3 K12 ["new"]
       28 DUPCLOSURE                       R4 K13 [PROTO_1]
       29 SETTABLEKS                       R4 R3 K14 ["get"]
       31 RETURN                           R3 1
