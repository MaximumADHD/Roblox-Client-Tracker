PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["RoactHostEvent(%s)"]
        3 GETTABLEKS                       R3 R0 K4 ["name"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 NEWTABLE                         R2 2 0
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K0 ["HostEvent"]
        6 SETTABLE                         R4 R2 R3
        7 SETTABLEKS                       R1 R2 K1 ["name"]
        9 GETUPVAL                         R5 1
       10 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K3 [setmetatable]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R3 2
       17 SETTABLE                         R2 R3 R1
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K4 [script]
        5 GETTABLEKS                       R3 R4 K5 ["Parent"]
        7 GETTABLEKS                       R2 R3 K5 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Type.roblox"]
       11 CALL                             R0 1 1
       12 NEWTABLE                         R1 0 0
       14 DUPTABLE                         R2 K7 [{"__tostring"}]
       15 DUPCLOSURE                       R3 K8 [PROTO_0]
       16 SETTABLEKS                       R3 R2 K6 ["__tostring"]
       18 DUPTABLE                         R5 K10 [{"__index"}]
       19 DUPCLOSURE                       R6 K11 [PROTO_1]
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R6 R5 K9 ["__index"]
       25 FASTCALL2                        SETMETATABLE R1 R5 ; [+4]
       27 MOVE                             R4 R1
       28 GETIMPORT                        R3 K13 [setmetatable]
       30 CALL                             R3 2 0
       31 RETURN                           R1 1
