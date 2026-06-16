PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        GETMETATABLE R2 ; [+2]
        2 GETIMPORT                        R1 K1 [getmetatable]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K2 ["__tostring"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R2 K3 [{"name", "message", "stack"}]
        1 LOADK                            R3 K4 ["Error"]
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

PROTO_2:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["new"]
        4 GETVARARGS                       R2 -1
        5 CALL                             R1 -1 1
        6 GETIMPORT                        R2 K3 [debug.traceback]
        8 LOADNIL                          R3
        9 LOADN                            R4 2
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R1 K4 ["stack"]
       13 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 JUMPIFEQKNIL                     R1 ; [+32]
        4 GETTABLEKS                       R1 R0 K1 ["message"]
        6 JUMPIFNOT                        R1 ; [+21]
        7 GETTABLEKS                       R1 R0 K1 ["message"]
        9 JUMPIFEQKS                       R1 K2 [""] ; [+18]
       11 GETIMPORT                        R1 K5 [string.format]
       13 LOADK                            R2 K6 ["%s: %s"]
       14 GETTABLEKS                       R4 R0 K0 ["name"]
       16 FASTCALL1                        TOSTRING R4 ; [+2]
       17 GETIMPORT                        R3 K8 [tostring]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R5 R0 K1 ["message"]
       22 FASTCALL1                        TOSTRING R5 ; [+2]
       23 GETIMPORT                        R4 K8 [tostring]
       25 CALL                             R4 1 1
       26 CALL                             R1 3 -1
       27 RETURN                           R1 -1
       28 GETTABLEKS                       R2 R0 K0 ["name"]
       30 FASTCALL1                        TOSTRING R2 ; [+2]
       31 GETIMPORT                        R1 K8 [tostring]
       33 CALL                             R1 1 1
       34 RETURN                           R1 1
       35 LOADK                            R2 K9 ["Error"]
       36 FASTCALL1                        TOSTRING R2 ; [+2]
       37 GETIMPORT                        R1 K8 [tostring]
       39 CALL                             R1 1 1
       40 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["__tostring"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K4 ["new"]
       13 DUPTABLE                         R3 K6 [{"__call", "__tostring"}]
       14 DUPCLOSURE                       R4 K7 [PROTO_2]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R4 R3 K5 ["__call"]
       18 DUPCLOSURE                       R4 K8 [PROTO_3]
       19 SETTABLEKS                       R4 R3 K2 ["__tostring"]
       21 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       23 MOVE                             R2 R0
       24 GETIMPORT                        R1 K10 [setmetatable]
       26 CALL                             R1 2 1
       27 RETURN                           R1 1
