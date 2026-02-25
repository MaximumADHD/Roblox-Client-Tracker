PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R1 0
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["resolve"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["resolve"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R3 R2 K8 ["Promise"]
       20 NEWTABLE                         R4 8 0
       22 SETTABLEKS                       R4 R4 K9 ["__index"]
       24 DUPCLOSURE                       R5 K10 [PROTO_0]
       25 CAPTURE                          VAL R4
       26 SETTABLEKS                       R5 R4 K11 ["new"]
       28 DUPCLOSURE                       R5 K12 [PROTO_1]
       29 SETTABLEKS                       R5 R4 K13 ["GetUserId"]
       31 DUPCLOSURE                       R5 K14 [PROTO_2]
       32 CAPTURE                          VAL R3
       33 SETTABLEKS                       R5 R4 K15 ["GetSettings"]
       35 DUPCLOSURE                       R5 K16 [PROTO_3]
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R5 R4 K17 ["SaveAll"]
       39 RETURN                           R4 1
