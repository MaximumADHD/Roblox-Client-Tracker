PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RbxAnalyticsService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETUPVAL                         R2 1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 LOADK                            R4 K0 ["Studio"]
        7 LOADK                            R5 K1 ["UIEditorAction"]
        8 MOVE                             R6 R1
        9 NAMECALL                         R2 R2 K2 ["TrackEvent"]
       11 CALL                             R2 4 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [pcall]
        3 DUPCLOSURE                       R1 K2 [PROTO_0]
        4 CALL                             R0 1 2
        5 NEWTABLE                         R2 1 0
        7 DUPCLOSURE                       R3 K3 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R3 R2 K4 ["reportEvent"]
       12 RETURN                           R2 1
