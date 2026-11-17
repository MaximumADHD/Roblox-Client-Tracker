PROTO_0:
        0 PREPVARARGS                      1
        1 DUPTABLE                         R2 K1 [{"_draggerContext"}]
        2 SETTABLEKS                       R0 R2 K0 ["_draggerContext"]
        4 GETUPVAL                         R3 0
        5 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        7 GETIMPORT                        R1 K3 [setmetatable]
        9 CALL                             R1 2 1
       10 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R1 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R2
        1 RETURN                           R2 1

PROTO_5:
        0 LOADN                            R1 0
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["beginDrag"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["updateDrag"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["endDrag"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["render"]
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["getPriority"]
       24 RETURN                           R0 1
