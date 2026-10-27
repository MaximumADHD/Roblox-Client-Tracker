PROTO_0:
        0 LOADN                            R1 1
        1 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K1 [setmetatable]
        8 CALL                             R2 2 0
        9 SETTABLEKS                       R0 R1 K2 ["_service"]
       11 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 1 0
        3 GETUPVAL                         R5 1
        4 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
        6 MOVE                             R4 R2
        7 GETIMPORT                        R3 K1 [setmetatable]
        9 CALL                             R3 2 0
       10 SETTABLEKS                       R1 R2 K2 ["_service"]
       12 MOVE                             R0 R2
       13 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_service"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 1 0
        3 GETUPVAL                         R6 1
        4 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
        6 MOVE                             R5 R3
        7 GETIMPORT                        R4 K1 [setmetatable]
        9 CALL                             R4 2 0
       10 SETTABLEKS                       R2 R3 K2 ["_service"]
       12 MOVE                             R1 R3
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETIMPORT                        R3 K8 [require]
       17 GETTABLEKS                       R4 R2 K9 ["Framework"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       22 GETTABLEKS                       R4 R4 K11 ["ContextItem"]
       24 LOADK                            R7 K12 ["StudioServiceWrapper"]
       25 NAMECALL                         R5 R4 K13 ["extend"]
       27 CALL                             R5 2 1
       28 NEWTABLE                         R6 1 0
       30 DUPCLOSURE                       R7 K14 [PROTO_0]
       31 SETTABLEKS                       R7 R6 K15 ["GetUserId"]
       33 DUPCLOSURE                       R7 K16 [PROTO_1]
       34 CAPTURE                          VAL R5
       35 DUPCLOSURE                       R8 K17 [PROTO_2]
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R8 R5 K18 ["new"]
       40 DUPCLOSURE                       R8 K19 [PROTO_3]
       41 SETTABLEKS                       R8 R5 K20 ["get"]
       43 DUPCLOSURE                       R8 K21 [PROTO_4]
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R5
       46 SETTABLEKS                       R8 R5 K22 ["mock"]
       48 RETURN                           R5 1
