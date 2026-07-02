PROTO_0:
        0 DUPTABLE                         R0 K2 [{[1] = 0}]
        1 GETUPVAL                         R3 0
        2 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K4 [setmetatable]
        7 CALL                             R1 2 0
        8 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [tick]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R4 R0 K3 ["lastClick"]
        5 ADDK                             R3 R4 K2 [0.5]
        6 JUMPIFLT                         R1 R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 SETTABLEKS                       R1 R0 K3 ["lastClick"]
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["isDoubleClick"]
       12 RETURN                           R0 1
