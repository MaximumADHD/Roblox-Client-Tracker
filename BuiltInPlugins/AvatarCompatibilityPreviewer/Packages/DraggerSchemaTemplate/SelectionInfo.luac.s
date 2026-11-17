PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 RETURN                           R2 1

PROTO_1:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [CFrame.new]
        2 CALL                             R1 0 1
        3 FASTCALL                         VECTOR ; [+2]
        4 GETIMPORT                        R2 K4 [Vector3.new]
        6 CALL                             R2 0 1
        7 FASTCALL                         VECTOR ; [+2]
        8 GETIMPORT                        R3 K4 [Vector3.new]
       10 CALL                             R3 0 1
       11 RETURN                           R1 3

PROTO_3:
        0 LOADB                            R2 0
        1 RETURN                           R2 1

PROTO_4:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

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
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["getMyFancyCustomObjects"]
       24 RETURN                           R0 1
