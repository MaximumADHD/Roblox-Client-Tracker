PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["_intoProxyMap"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOTEQKNIL                  R2 ; [+23]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["new"]
        8 MOVE                             R4 R1
        9 CALL                             R3 1 1
       10 MOVE                             R2 R3
       11 GETTABLEKS                       R3 R0 K0 ["_intoProxyMap"]
       13 SETTABLE                         R2 R3 R1
       14 GETTABLEKS                       R3 R0 K0 ["_intoProxyMap"]
       16 SETTABLE                         R2 R3 R2
       17 GETTABLEKS                       R3 R0 K0 ["_intoProxyMap"]
       19 GETTABLEKS                       R4 R2 K2 ["spy"]
       21 SETTABLE                         R2 R3 R4
       22 GETTABLEKS                       R3 R0 K0 ["_intoProxyMap"]
       24 GETTABLEKS                       R4 R2 K3 ["controls"]
       26 SETTABLE                         R2 R3 R4
       27 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_intoProxyMap"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"_intoProxyMap"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_intoProxyMap"]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K3 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["InstanceProxy"]
        9 CALL                             R1 1 1
       10 NEWTABLE                         R2 4 0
       12 SETTABLEKS                       R2 R2 K6 ["__index"]
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R3 R2 K8 ["mockInstance"]
       18 DUPCLOSURE                       R3 K9 [PROTO_1]
       19 SETTABLEKS                       R3 R2 K10 ["intoProxy"]
       21 NEWTABLE                         R3 1 0
       23 DUPCLOSURE                       R4 K11 [PROTO_2]
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R4 R3 K12 ["new"]
       27 RETURN                           R3 1
