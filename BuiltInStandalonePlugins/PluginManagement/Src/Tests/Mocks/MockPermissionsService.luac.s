PROTO_0:
        0 DUPTABLE                         R0 K1 [{"_permissions"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["_permissions"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_permissions"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 RETURN                           R2 1

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_permissions"]
        2 FASTCALL1                        TOSTRING R1 ; [+3]
        3 MOVE                             R5 R1
        4 GETIMPORT                        R4 K2 [tostring]
        6 CALL                             R4 1 1
        7 SETTABLE                         R2 R3 R4
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["Types"]
       19 CALL                             R1 1 1
       20 NEWTABLE                         R2 8 0
       22 SETTABLEKS                       R2 R2 K8 ["__index"]
       24 DUPCLOSURE                       R3 K9 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R3 R2 K10 ["new"]
       28 DUPCLOSURE                       R3 K11 [PROTO_1]
       29 SETTABLEKS                       R3 R2 K12 ["Destroy"]
       31 DUPCLOSURE                       R3 K13 [PROTO_2]
       32 SETTABLEKS                       R3 R2 K14 ["GetPermissions"]
       34 DUPCLOSURE                       R3 K15 [PROTO_3]
       35 SETTABLEKS                       R3 R2 K16 ["SetPermissions"]
       37 DUPCLOSURE                       R3 K17 [PROTO_4]
       38 SETTABLEKS                       R3 R2 K18 ["setMockPermissions"]
       40 RETURN                           R2 1
