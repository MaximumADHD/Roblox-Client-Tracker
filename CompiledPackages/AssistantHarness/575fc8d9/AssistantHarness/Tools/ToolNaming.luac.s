PROTO_0:
        0 LOADN                            R4 1
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K0 ["PREFIX"]
        4 LENGTH                           R5 R6
        5 FASTCALL3                        STRING_SUB R0 R4 R5
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K3 [string.sub]
       10 CALL                             R2 3 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["PREFIX"]
       14 JUMPIFEQ                         R2 R3 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R4 1
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K0 ["CLOUD_PREFIX"]
        4 LENGTH                           R5 R6
        5 FASTCALL3                        STRING_SUB R0 R4 R5
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K3 [string.sub]
       10 CALL                             R2 3 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["CLOUD_PREFIX"]
       14 JUMPIFEQ                         R2 R3 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isStudioTool"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+12]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["PREFIX"]
        9 LENGTH                           R4 R5
       10 ADDK                             R3 R4 K1 [1]
       11 FASTCALL2                        STRING_SUB R0 R3 ; [+4]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K5 [string.sub]
       16 CALL                             R1 2 1
       17 RETURN                           R1 1
       18 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isCloudTool"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+12]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["CLOUD_PREFIX"]
        9 LENGTH                           R4 R5
       10 ADDK                             R3 R4 K1 [1]
       11 FASTCALL2                        STRING_SUB R0 R3 ; [+4]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K5 [string.sub]
       16 CALL                             R1 2 1
       17 RETURN                           R1 1
       18 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isStudioTool"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["PREFIX"]
       10 MOVE                             R3 R0
       11 CONCAT                           R1 R2 R3
       12 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isCloudTool"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["CLOUD_PREFIX"]
       10 MOVE                             R3 R0
       11 CONCAT                           R1 R2 R3
       12 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isStudioTool"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["stripPrefix"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["addCloudPrefix"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADK                            R1 K0 ["studio_"]
        4 SETTABLEKS                       R1 R0 K1 ["PREFIX"]
        6 LOADK                            R1 K2 ["cloud_"]
        7 SETTABLEKS                       R1 R0 K3 ["CLOUD_PREFIX"]
        9 DUPCLOSURE                       R1 K4 [PROTO_0]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["isStudioTool"]
       13 DUPCLOSURE                       R1 K6 [PROTO_1]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K7 ["isCloudTool"]
       17 DUPCLOSURE                       R1 K8 [PROTO_2]
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K9 ["stripPrefix"]
       21 DUPCLOSURE                       R1 K10 [PROTO_3]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K11 ["stripCloudPrefix"]
       25 DUPCLOSURE                       R1 K12 [PROTO_4]
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K13 ["addPrefix"]
       29 DUPCLOSURE                       R1 K14 [PROTO_5]
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K15 ["addCloudPrefix"]
       33 DUPCLOSURE                       R1 K16 [PROTO_6]
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K17 ["toUIToolName"]
       37 RETURN                           R0 1
