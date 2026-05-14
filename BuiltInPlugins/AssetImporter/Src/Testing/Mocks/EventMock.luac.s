PROTO_0:
        0 NEWTABLE                         R3 2 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["lambda"]
       10 SETTABLEKS                       R1 R2 K3 ["removeConnection"]
       12 RETURN                           R2 1

PROTO_1:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R1 R0 K0 ["lambda"]
        3 GETVARARGS                       R2 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["removeConnection"]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K1 ["lambda"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["removeConnection"]
       10 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["connections"]
       12 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_remove"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R3 R0 K1 ["connections"]
        9 LOADB                            R4 1
       10 SETTABLE                         R4 R3 R2
       11 RETURN                           R2 1

PROTO_6:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K1 [pairs]
        3 GETTABLEKS                       R2 R0 K2 ["connections"]
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 GETVARARGS                       R8 -1
        8 NAMECALL                         R6 R4 K3 ["_fire"]
       10 CALL                             R6 -1 0
       11 FORGLOOP                         R1 2 ; [-5]
       13 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["connections"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFEQKNIL                     R2 ; [+5]
        5 GETTABLEKS                       R2 R0 K0 ["connections"]
        7 LOADNIL                          R3
        8 SETTABLE                         R3 R2 R1
        9 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["connections"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 NAMECALL                         R6 R4 K3 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K2 ["connections"]
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["_fire"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["Disconnect"]
       15 NEWTABLE                         R1 8 0
       17 SETTABLEKS                       R1 R1 K0 ["__index"]
       19 DUPCLOSURE                       R2 K7 [PROTO_3]
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R2 R1 K2 ["new"]
       23 DUPCLOSURE                       R2 K8 [PROTO_5]
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R1 K9 ["Connect"]
       27 DUPCLOSURE                       R2 K10 [PROTO_6]
       28 SETTABLEKS                       R2 R1 K11 ["Fire"]
       30 DUPCLOSURE                       R2 K12 [PROTO_7]
       31 SETTABLEKS                       R2 R1 K13 ["_remove"]
       33 DUPCLOSURE                       R2 K14 [PROTO_8]
       34 SETTABLEKS                       R2 R1 K15 ["Destroy"]
       36 RETURN                           R1 1
