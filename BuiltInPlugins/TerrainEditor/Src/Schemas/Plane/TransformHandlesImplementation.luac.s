PROTO_0:
        0 DUPTABLE                         R2 K1 [{"_draggerContext"}]
        1 SETTABLEKS                       R0 R2 K0 ["_draggerContext"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 LENGTH                           R5 R1
        1 JUMPIFEQKN                       R5 K0 [1] ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        7 LOADK                            R5 K1 ["Expected selection to have length 1."]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETTABLEN                        R4 R1 1
       12 GETTABLEKS                       R3 R4 K4 ["Transform"]
       14 SETTABLEKS                       R3 R0 K5 ["source"]
       16 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R2 R3 K1 ["updatePlane"]
        4 GETTABLEKS                       R4 R0 K2 ["source"]
        6 MUL                              R3 R1 R4
        7 CALL                             R2 1 0
        8 RETURN                           R1 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R2
        1 RETURN                           R2 1

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
       21 RETURN                           R0 1
