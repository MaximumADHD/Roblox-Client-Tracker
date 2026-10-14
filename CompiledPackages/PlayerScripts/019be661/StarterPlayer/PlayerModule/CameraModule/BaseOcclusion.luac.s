PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["new"]
        4 GETVARARGS                       R2 -1
        5 CALL                             R1 -1 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["BaseOcclusion GetOcclusionMode must be overridden by derived classes"]
        3 CALL                             R1 1 0
        4 LOADNIL                          R1
        5 RETURN                           R1 1

PROTO_6:
        0 GETIMPORT                        R2 K1 [warn]
        2 LOADK                            R3 K2 ["BaseOcclusion Enable must be overridden by derived classes"]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R4 K1 [warn]
        2 LOADK                            R5 K2 ["BaseOcclusion Update must be overridden by derived classes"]
        3 CALL                             R4 1 0
        4 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPTABLE                         R3 K2 [{"__call"}]
        6 DUPCLOSURE                       R4 K3 [PROTO_0]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R4 R3 K1 ["__call"]
       10 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K5 [setmetatable]
       15 CALL                             R1 2 0
       16 DUPCLOSURE                       R1 K6 [PROTO_1]
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K7 ["new"]
       20 DUPCLOSURE                       R1 K8 [PROTO_2]
       21 SETTABLEKS                       R1 R0 K9 ["CharacterAdded"]
       23 DUPCLOSURE                       R1 K10 [PROTO_3]
       24 SETTABLEKS                       R1 R0 K11 ["CharacterRemoving"]
       26 DUPCLOSURE                       R1 K12 [PROTO_4]
       27 SETTABLEKS                       R1 R0 K13 ["OnCameraSubjectChanged"]
       29 DUPCLOSURE                       R1 K14 [PROTO_5]
       30 SETTABLEKS                       R1 R0 K15 ["GetOcclusionMode"]
       32 DUPCLOSURE                       R1 K16 [PROTO_6]
       33 SETTABLEKS                       R1 R0 K17 ["Enable"]
       35 DUPCLOSURE                       R1 K18 [PROTO_7]
       36 SETTABLEKS                       R1 R0 K19 ["Update"]
       38 RETURN                           R0 1
