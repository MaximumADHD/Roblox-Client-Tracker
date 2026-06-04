PROTO_0:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOTEQKNIL                  R2 ; [+12]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["reject"]
        7 LOADK                            R5 K1 ["Unexpected url: %*"]
        8 MOVE                             R7 R1
        9 NAMECALL                         R5 R5 K2 ["format"]
       11 CALL                             R5 2 1
       12 MOVE                             R4 R5
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1
       15 FASTCALL1                        TYPEOF R2 ; [+3]
       16 MOVE                             R5 R2
       17 GETIMPORT                        R4 K4 [typeof]
       19 CALL                             R4 1 1
       20 JUMPIFNOTEQKS                    R4 K5 ["function"] ; [+4]
       22 MOVE                             R3 R2
       23 CALL                             R3 0 1
       24 JUMP                             ; [+1]
       25 MOVE                             R3 R2
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K6 ["resolve"]
       29 DUPTABLE                         R5 K8 [{"responseBody"}]
       30 SETTABLEKS                       R3 R5 K7 ["responseBody"]
       32 CALL                             R4 1 -1
       33 RETURN                           R4 -1

PROTO_3:
        0 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 2 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["get"]
        7 DUPCLOSURE                       R2 K1 [PROTO_3]
        8 SETTABLEKS                       R2 R1 K2 ["parseJson"]
       10 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Dev"]
        7 GETTABLEKS                       R1 R1 K4 ["JestGlobals"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["jest"]
       12 GETTABLEKS                       R2 R1 K6 ["requireActual"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["Packages"]
       17 GETTABLEKS                       R3 R3 K7 ["Framework"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Promise"]
       24 GETIMPORT                        R4 K12 [table.clone]
       26 MOVE                             R5 R2
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K12 [table.clone]
       30 GETTABLEKS                       R6 R2 K13 ["Http"]
       32 CALL                             R5 1 1
       33 SETTABLEKS                       R5 R4 K13 ["Http"]
       35 GETTABLEKS                       R5 R4 K13 ["Http"]
       37 GETIMPORT                        R6 K12 [table.clone]
       39 GETTABLEKS                       R7 R2 K13 ["Http"]
       41 GETTABLEKS                       R7 R7 K14 ["Networking"]
       43 CALL                             R6 1 1
       44 SETTABLEKS                       R6 R5 K14 ["Networking"]
       46 GETTABLEKS                       R5 R4 K13 ["Http"]
       48 GETTABLEKS                       R5 R5 K14 ["Networking"]
       50 NEWCLOSURE                       R6 P0
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R6 R5 K15 ["new"]
       55 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorConfig"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 0 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 CAPTURE                          VAL R1
       11 DUPCLOSURE                       R3 K5 [PROTO_1]
       12 CAPTURE                          VAL R1
       13 DUPCLOSURE                       R4 K6 [PROTO_5]
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 DUPTABLE                         R5 K10 [{"reset", "mockResponse", "factory"}]
       17 SETTABLEKS                       R3 R5 K7 ["reset"]
       19 SETTABLEKS                       R2 R5 K8 ["mockResponse"]
       21 SETTABLEKS                       R4 R5 K9 ["factory"]
       23 RETURN                           R5 1
