PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["BaseUrl"]
        3 LENGTH                           R3 R0
        4 FASTCALL2                        STRING_SUB R0 R3 ; [+4]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K3 [string.sub]
        9 CALL                             R1 2 1
       10 JUMPIFEQKS                       R1 K4 ["/"] ; [+4]
       12 MOVE                             R1 R0
       13 LOADK                            R2 K4 ["/"]
       14 CONCAT                           R0 R1 R2
       15 GETIMPORT                        R1 K6 [string.find]
       17 MOVE                             R2 R0
       18 LOADK                            R3 K7 ["://"]
       19 CALL                             R1 2 2
       20 GETIMPORT                        R3 K6 [string.find]
       22 MOVE                             R4 R0
       23 LOADK                            R5 K8 ["%."]
       24 ADDK                             R6 R2 K9 [1]
       25 CALL                             R3 3 2
       26 ADDK                             R7 R4 K9 [1]
       27 FASTCALL2                        STRING_SUB R0 R7 ; [+4]
       29 MOVE                             R6 R0
       30 GETIMPORT                        R5 K3 [string.sub]
       32 CALL                             R5 2 1
       33 RETURN                           R5 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADN                            R1 0
        3 GETIMPORT                        R2 K1 [pcall]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 2
        7 JUMPIFNOT                        R2 ; [+3]
        8 LOADB                            R4 1
        9 MOVE                             R5 R3
       10 RETURN                           R4 2
       11 LOADN                            R4 2
       12 JUMPIFNOTLE                      R4 R1 ; [+4]
       14 LOADB                            R4 0
       15 MOVE                             R5 R3
       16 RETURN                           R4 2
       17 LOADN                            R5 2
       18 SUBK                             R6 R1 K2 [1]
       19 POW                              R4 R5 R6
       20 GETIMPORT                        R5 K4 [wait]
       22 MOVE                             R6 R4
       23 CALL                             R5 1 0
       24 GETUPVAL                         R5 0
       25 MOVE                             R6 R0
       26 ADDK                             R7 R1 K2 [1]
       27 CALL                             R5 2 -1
       28 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["PostAsyncFullUrl"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAsyncFullUrl"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpRbxApiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ContentProvider"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 NEWTABLE                         R2 4 0
       15 DUPCLOSURE                       R3 K5 [PROTO_0]
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K6 ["getBaseDomain"]
       19 DUPCLOSURE                       R3 K7 [PROTO_1]
       20 CAPTURE                          VAL R3
       21 DUPCLOSURE                       R4 K8 [PROTO_3]
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R4 R2 K9 ["requestAndRetryPost"]
       26 DUPCLOSURE                       R4 K10 [PROTO_5]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R4 R2 K11 ["requestAndRetryGet"]
       31 RETURN                           R2 1
