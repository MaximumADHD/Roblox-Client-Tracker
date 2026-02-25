PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["FileName"]
        2 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"ScriptGuid", "FileName"}]
        1 SETTABLEKS                       R0 R2 K0 ["ScriptGuid"]
        3 SETTABLEKS                       R1 R2 K1 ["FileName"]
        5 GETUPVAL                         R5 0
        6 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K4 [setmetatable]
       11 CALL                             R3 2 0
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 SETTABLEKS                       R1 R0 K2 ["GetFullName"]
        8 DUPCLOSURE                       R1 K3 [PROTO_1]
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K4 ["new"]
       12 RETURN                           R0 1
