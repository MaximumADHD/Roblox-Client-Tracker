PROTO_0:
        0 GETTABLEN                        R2 R1 1
        1 JUMPIFNOT                        R2 ; [+17]
        2 LOADK                            R5 K0 ["PVInstance"]
        3 NAMECALL                         R3 R2 K1 ["IsA"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+12]
        7 DUPTABLE                         R3 K5 [{"_primaryObject", "_isEmpty", "_basisCFrame"}]
        8 SETTABLEKS                       R2 R3 K2 ["_primaryObject"]
       10 LOADB                            R4 0
       11 SETTABLEKS                       R4 R3 K3 ["_isEmpty"]
       13 NAMECALL                         R4 R2 K6 ["GetPivot"]
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K4 ["_basisCFrame"]
       18 RETURN                           R3 1
       19 DUPTABLE                         R3 K5 [{"_primaryObject", "_isEmpty", "_basisCFrame"}]
       20 LOADNIL                          R4
       21 SETTABLEKS                       R4 R3 K2 ["_primaryObject"]
       23 LOADB                            R4 1
       24 SETTABLEKS                       R4 R3 K3 ["_isEmpty"]
       26 GETIMPORT                        R4 K9 [CFrame.new]
       28 CALL                             R4 0 1
       29 SETTABLEKS                       R4 R3 K4 ["_basisCFrame"]
       31 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 1
        5 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        7 GETIMPORT                        R2 K1 [setmetatable]
        9 CALL                             R2 2 1
       10 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_isEmpty"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_basisCFrame"]
        2 FASTCALL                         VECTOR ; [+2]
        3 GETIMPORT                        R2 K3 [Vector3.new]
        5 CALL                             R2 0 1
        6 FASTCALL                         VECTOR ; [+2]
        7 GETIMPORT                        R3 K3 [Vector3.new]
        9 CALL                             R3 0 1
       10 RETURN                           R1 3

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_primaryObject"]
        2 GETTABLEKS                       R4 R0 K1 ["_isEmpty"]
        4 NOT                              R3 R4
        5 JUMPIFNOT                        R3 ; [+8]
        6 LOADB                            R3 1
        7 JUMPIFEQ                         R1 R2 ; [+6]
        9 GETTABLEKS                       R5 R0 K0 ["_primaryObject"]
       11 NAMECALL                         R3 R1 K2 ["IsDescendantOf"]
       13 CALL                             R3 2 1
       14 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_primaryObject"]
        2 RETURN                           R1 1

PROTO_6:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 DUPCLOSURE                       R1 K3 [PROTO_0]
       10 NEWTABLE                         R2 8 0
       12 SETTABLEKS                       R2 R2 K4 ["__index"]
       14 DUPCLOSURE                       R3 K5 [PROTO_1]
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R3 R2 K6 ["new"]
       19 DUPCLOSURE                       R3 K7 [PROTO_2]
       20 SETTABLEKS                       R3 R2 K8 ["isEmpty"]
       22 DUPCLOSURE                       R3 K9 [PROTO_3]
       23 SETTABLEKS                       R3 R2 K10 ["getBoundingBox"]
       25 DUPCLOSURE                       R3 K11 [PROTO_4]
       26 SETTABLEKS                       R3 R2 K12 ["doesContainItem"]
       28 DUPCLOSURE                       R3 K13 [PROTO_5]
       29 SETTABLEKS                       R3 R2 K14 ["getPrimaryObject"]
       31 DUPCLOSURE                       R3 K15 [PROTO_6]
       32 SETTABLEKS                       R3 R2 K16 ["isDynamic"]
       34 RETURN                           R2 1
