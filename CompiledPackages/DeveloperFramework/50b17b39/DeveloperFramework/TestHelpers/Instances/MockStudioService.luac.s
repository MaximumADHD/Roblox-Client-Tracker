PROTO_0:
        0 DUPTABLE                         R1 K2 [{"_localUserId", "_file"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["_localUserId"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R1 K1 ["_file"]
        8 GETUPVAL                         R2 0
        9 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       11 GETIMPORT                        R0 K4 [setmetatable]
       13 CALL                             R0 2 1
       14 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_localUserId"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_file"]
        2 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["Destroy"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["GetUserId"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["PromptImportFile"]
       18 RETURN                           R0 1
