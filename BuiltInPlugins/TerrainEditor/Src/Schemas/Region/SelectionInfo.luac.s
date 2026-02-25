PROTO_0:
        0 DUPTABLE                         R3 K2 [{"_region", "_draggerContext"}]
        1 GETTABLEN                        R4 R1 1
        2 SETTABLEKS                       R4 R3 K0 ["_region"]
        4 SETTABLEKS                       R0 R3 K1 ["_draggerContext"]
        6 GETUPVAL                         R4 0
        7 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        9 GETIMPORT                        R2 K4 [setmetatable]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

PROTO_1:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldUseLocalSpace"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETTABLEKS                       R3 R0 K2 ["_region"]
        8 GETTABLEKS                       R2 R3 K3 ["Region"]
       10 GETTABLEKS                       R1 R2 K4 ["transform"]
       12 FASTCALL                         VECTOR ; [+2]
       13 GETIMPORT                        R2 K7 [Vector3.new]
       15 CALL                             R2 0 1
       16 GETTABLEKS                       R5 R0 K2 ["_region"]
       18 GETTABLEKS                       R4 R5 K3 ["Region"]
       20 GETTABLEKS                       R3 R4 K8 ["size"]
       22 RETURN                           R1 3
       23 GETTABLEKS                       R3 R0 K2 ["_region"]
       25 GETTABLEKS                       R2 R3 K3 ["Region"]
       27 GETTABLEKS                       R1 R2 K4 ["transform"]
       29 FASTCALL                         VECTOR ; [+2]
       30 GETIMPORT                        R2 K7 [Vector3.new]
       32 CALL                             R2 0 1
       33 GETTABLEKS                       R5 R0 K2 ["_region"]
       35 GETTABLEKS                       R4 R5 K3 ["Region"]
       37 GETTABLEKS                       R3 R4 K8 ["size"]
       39 RETURN                           R1 3

PROTO_3:
        0 LOADB                            R2 1
        1 RETURN                           R2 1

PROTO_4:
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
       16 SETTABLEKS                       R1 R0 K8 ["doesContainItem"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["isDynamic"]
       21 RETURN                           R0 1
