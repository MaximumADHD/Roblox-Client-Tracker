PROTO_0:
        0 DUPTABLE                         R3 K2 [{"_handler", "_draggerContext"}]
        1 SETTABLEKS                       R1 R3 K0 ["_handler"]
        3 SETTABLEKS                       R0 R3 K1 ["_draggerContext"]
        5 GETUPVAL                         R4 0
        6 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        8 GETIMPORT                        R2 K4 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_handler"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R1 R1 K1 ["vertexEditingTool"]
        4 GETTABLEKS                       R1 R1 K2 ["boundsChanged"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R1 R1 K3 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K4 ["_boundsChangedConnection"]
       13 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_boundsChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_boundsChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K4 ["install"]
       12 DUPCLOSURE                       R1 K5 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K6 ["uninstall"]
       15 DUPCLOSURE                       R1 K7 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K8 ["setSelection"]
       18 RETURN                           R0 1
