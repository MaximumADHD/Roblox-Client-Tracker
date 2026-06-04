PROTO_0:
        0 DUPTABLE                         R2 K3 [{"name", "message", "stack"}]
        1 LOADK                            R3 K4 ["TypeError"]
        2 SETTABLEKS                       R3 R2 K0 ["name"]
        4 ORK                              R3 R0 K5 [""]
        5 SETTABLEKS                       R3 R2 K1 ["message"]
        7 GETIMPORT                        R3 K8 [debug.traceback]
        9 LOADNIL                          R4
       10 LOADN                            R5 2
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K2 ["stack"]
       14 GETUPVAL                         R3 0
       15 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       17 GETIMPORT                        R1 K10 [setmetatable]
       19 CALL                             R1 2 1
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Error"]
       16 NEWTABLE                         R3 2 0
       18 SETTABLEKS                       R3 R3 K7 ["__index"]
       20 DUPCLOSURE                       R4 K8 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R4 R3 K9 ["new"]
       24 RETURN                           R3 1
