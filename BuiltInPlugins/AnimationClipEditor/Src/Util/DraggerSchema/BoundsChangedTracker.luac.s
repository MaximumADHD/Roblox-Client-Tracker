PROTO_0:
        0 DUPTABLE                         R3 K3 [{"_handler", "_draggerContext", "_boundsChanged"}]
        1 SETTABLEKS                       R1 R3 K0 ["_handler"]
        3 SETTABLEKS                       R0 R3 K1 ["_draggerContext"]
        5 SETTABLEKS                       R1 R3 K2 ["_boundsChanged"]
        7 GETUPVAL                         R4 0
        8 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       10 GETIMPORT                        R2 K5 [setmetatable]
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 GETTABLEKS                       R1 R1 K1 ["ScrubberSignal"]
        4 GETTABLEKS                       R3 R0 K2 ["_boundsChanged"]
        6 NAMECALL                         R1 R1 K3 ["Connect"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K4 ["_scrubberChangedConnection"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_scrubberChangedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["install"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["uninstall"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["setSelection"]
       18 RETURN                           R0 1
