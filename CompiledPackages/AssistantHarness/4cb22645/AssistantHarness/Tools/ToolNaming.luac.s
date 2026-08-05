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

PROTO_2:
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

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADK                            R1 K0 ["studio_"]
        4 SETTABLEKS                       R1 R0 K1 ["PREFIX"]
        6 DUPCLOSURE                       R1 K2 [PROTO_0]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["isStudioTool"]
       10 DUPCLOSURE                       R1 K4 [PROTO_1]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["stripPrefix"]
       14 DUPCLOSURE                       R1 K6 [PROTO_2]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K7 ["addPrefix"]
       18 RETURN                           R0 1
