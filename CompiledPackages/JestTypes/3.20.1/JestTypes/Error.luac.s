PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 ORK                              R2 R0 K2 [""]
        9 SETTABLEKS                       R2 R1 K3 ["message"]
       11 LOADK                            R2 K4 ["Error"]
       12 SETTABLEKS                       R2 R1 K5 ["name"]
       14 GETIMPORT                        R2 K8 [debug.traceback]
       16 MOVE                             R3 R0
       17 LOADN                            R4 2
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R1 K9 ["stack"]
       21 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 JUMPIFNOT                        R1 ; [+16]
        3 GETTABLEKS                       R1 R0 K1 ["message"]
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETTABLEKS                       R2 R0 K1 ["message"]
        8 LENGTH                           R1 R2
        9 LOADN                            R2 0
       10 JUMPIFNOTLT                      R2 R1 ; [+8]
       12 GETTABLEKS                       R2 R0 K0 ["name"]
       14 LOADK                            R3 K2 [": "]
       15 GETTABLEKS                       R4 R0 K1 ["message"]
       17 CONCAT                           R1 R2 R4
       18 RETURN                           R1 1
       19 GETTABLEKS                       R1 R0 K0 ["name"]
       21 JUMPIFNOT                        R1 ; [+3]
       22 GETTABLEKS                       R1 R0 K0 ["name"]
       24 RETURN                           R1 1
       25 LOADK                            R1 K3 ["Error"]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["__tostring"]
       12 RETURN                           R0 1
