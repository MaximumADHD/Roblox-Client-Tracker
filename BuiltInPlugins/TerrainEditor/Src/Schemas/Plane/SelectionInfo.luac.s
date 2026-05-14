PROTO_0:
        0 LENGTH                           R4 R1
        1 JUMPIFEQKN                       R4 K0 [1] ; [+2]
        3 LOADB                            R3 0 +1
        4 LOADB                            R3 1
        5 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        7 LOADK                            R4 K1 ["Expected selection to have length 1."]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 DUPTABLE                         R3 K6 [{"_transform", "_draggerContext"}]
       12 GETTABLEN                        R4 R1 1
       13 SETTABLEKS                       R4 R3 K4 ["_transform"]
       15 SETTABLEKS                       R0 R3 K5 ["_draggerContext"]
       17 GETUPVAL                         R4 0
       18 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       20 GETIMPORT                        R2 K8 [setmetatable]
       22 CALL                             R2 2 1
       23 RETURN                           R2 1

PROTO_1:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldUseLocalSpace"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 NAMECALL                         R1 R0 K2 ["getLocalBoundingBox"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 GETIMPORT                        R1 K5 [CFrame.new]
       12 GETTABLEKS                       R2 R0 K6 ["_transform"]
       14 GETTABLEKS                       R2 R2 K7 ["Transform"]
       16 GETTABLEKS                       R2 R2 K8 ["Position"]
       18 CALL                             R1 1 1
       19 FASTCALL                         VECTOR ; [+2]
       20 GETIMPORT                        R2 K10 [Vector3.new]
       22 CALL                             R2 0 1
       23 FASTCALL                         VECTOR ; [+2]
       24 GETIMPORT                        R3 K10 [Vector3.new]
       26 CALL                             R3 0 1
       27 RETURN                           R1 3

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_transform"]
        2 GETTABLEKS                       R1 R1 K1 ["Transform"]
        4 FASTCALL                         VECTOR ; [+2]
        5 GETIMPORT                        R2 K4 [Vector3.new]
        7 CALL                             R2 0 1
        8 FASTCALL                         VECTOR ; [+2]
        9 GETIMPORT                        R3 K4 [Vector3.new]
       11 CALL                             R3 0 1
       12 RETURN                           R1 3

PROTO_4:
        0 LOADB                            R2 1
        1 RETURN                           R2 1

PROTO_5:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["isEmpty"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["getBoundingBox"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["getLocalBoundingBox"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["doesContainItem"]
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["isDynamic"]
       24 RETURN                           R0 1
