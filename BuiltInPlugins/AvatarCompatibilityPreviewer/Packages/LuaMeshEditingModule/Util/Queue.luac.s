PROTO_0:
        0 DUPTABLE                         R1 K2 [{"_first", "_last"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["_first"]
        4 LOADN                            R2 255
        5 SETTABLEKS                       R2 R1 K1 ["_last"]
        7 GETUPVAL                         R2 0
        8 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       10 GETIMPORT                        R0 K4 [setmetatable]
       12 CALL                             R0 2 1
       13 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K1 ["_last"]
        2 ADDK                             R2 R3 K0 [1]
        3 GETTABLEKS                       R3 R0 K2 ["_first"]
        5 SUB                              R1 R2 R3
        6 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K1 ["_last"]
        2 ADDK                             R2 R3 K0 [1]
        3 GETTABLEKS                       R3 R0 K2 ["_first"]
        5 SUB                              R1 R2 R3
        6 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K1 ["_first"]
        2 SUBK                             R2 R3 K0 [1]
        3 SETTABLEKS                       R2 R0 K1 ["_first"]
        5 GETTABLEKS                       R2 R0 K1 ["_first"]
        7 SETTABLE                         R1 R0 R2
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K1 ["_last"]
        2 ADDK                             R2 R3 K0 [1]
        3 SETTABLEKS                       R2 R0 K1 ["_last"]
        5 GETTABLEKS                       R2 R0 K1 ["_last"]
        7 SETTABLE                         R1 R0 R2
        8 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_first"]
        2 GETTABLEKS                       R2 R0 K1 ["_last"]
        4 JUMPIFNOTLT                      R2 R1 ; [+5]
        6 GETIMPORT                        R1 K3 [error]
        8 LOADK                            R2 K4 ["Queue is empty"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R2 R0 K0 ["_first"]
       12 GETTABLE                         R1 R0 R2
       13 GETTABLEKS                       R2 R0 K0 ["_first"]
       15 LOADNIL                          R3
       16 SETTABLE                         R3 R0 R2
       17 GETTABLEKS                       R3 R0 K0 ["_first"]
       19 ADDK                             R2 R3 K5 [1]
       20 SETTABLEKS                       R2 R0 K0 ["_first"]
       22 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_first"]
        2 GETTABLEKS                       R2 R0 K1 ["_last"]
        4 JUMPIFNOTLT                      R2 R1 ; [+5]
        6 GETIMPORT                        R1 K3 [error]
        8 LOADK                            R2 K4 ["Queue is empty"]
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R2 R0 K1 ["_last"]
       12 GETTABLE                         R1 R0 R2
       13 GETTABLEKS                       R2 R0 K1 ["_last"]
       15 LOADNIL                          R3
       16 SETTABLE                         R3 R0 R2
       17 GETTABLEKS                       R3 R0 K1 ["_last"]
       19 SUBK                             R2 R3 K5 [1]
       20 SETTABLEKS                       R2 R0 K1 ["_last"]
       22 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_first"]
        2 GETTABLEKS                       R3 R0 K1 ["_last"]
        4 JUMPIFLT                         R3 R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["__len"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["getCount"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["pushLeft"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["pushRight"]
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["popLeft"]
       24 DUPCLOSURE                       R1 K13 [PROTO_6]
       25 SETTABLEKS                       R1 R0 K14 ["popRight"]
       27 DUPCLOSURE                       R1 K15 [PROTO_7]
       28 SETTABLEKS                       R1 R0 K16 ["isEmpty"]
       30 RETURN                           R0 1
