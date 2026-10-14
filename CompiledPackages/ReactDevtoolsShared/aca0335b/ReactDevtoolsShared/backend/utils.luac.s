PROTO_0:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R2 R3
        5 JUMPIFEQKNIL                     R0 ; [+20]
        7 NEWTABLE                         R3 0 0
        9 NEWTABLE                         R4 0 0
       11 GETUPVAL                         R5 0
       12 MOVE                             R6 R0
       13 MOVE                             R7 R3
       14 MOVE                             R8 R4
       15 MOVE                             R9 R2
       16 MOVE                             R10 R1
       17 CALL                             R5 5 1
       18 DUPTABLE                         R6 K3 [{"data", "cleaned", "unserializable"}]
       19 SETTABLEKS                       R5 R6 K0 ["data"]
       21 SETTABLEKS                       R3 R6 K1 ["cleaned"]
       23 SETTABLEKS                       R4 R6 K2 ["unserializable"]
       25 RETURN                           R6 1
       26 LOADNIL                          R3
       27 RETURN                           R3 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 ORK                              R2 R2 K0 [1]
        1 GETTABLE                         R3 R1 R2
        2 GETIMPORT                        R4 K3 [table.clone]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 1
        6 LENGTH                           R5 R1
        7 JUMPIFNOTEQ                      R2 R5 ; [+18]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K4 ["isArray"]
       12 MOVE                             R6 R4
       13 CALL                             R5 1 1
       14 JUMPIFNOT                        R5 ; [+8]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K5 ["splice"]
       18 MOVE                             R6 R4
       19 MOVE                             R7 R3
       20 LOADN                            R8 1
       21 CALL                             R5 3 0
       22 RETURN                           R4 1
       23 LOADNIL                          R5
       24 SETTABLE                         R5 R4 R3
       25 RETURN                           R4 1
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K6 ["copyWithDelete"]
       29 GETTABLE                         R6 R0 R3
       30 MOVE                             R7 R1
       31 ADDK                             R8 R2 K0 [1]
       32 CALL                             R5 3 1
       33 SETTABLE                         R5 R4 R3
       34 RETURN                           R4 1

PROTO_3:
        0 ORK                              R3 R3 K0 [1]
        1 GETTABLE                         R4 R1 R3
        2 GETIMPORT                        R5 K3 [table.clone]
        4 MOVE                             R6 R0
        5 CALL                             R5 1 1
        6 LENGTH                           R6 R1
        7 JUMPIFNOTEQ                      R3 R6 ; [+21]
        9 GETTABLE                         R6 R2 R3
       10 GETTABLE                         R7 R5 R4
       11 SETTABLE                         R7 R5 R6
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K4 ["isArray"]
       15 MOVE                             R8 R5
       16 CALL                             R7 1 1
       17 JUMPIFNOT                        R7 ; [+8]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K5 ["splice"]
       21 MOVE                             R8 R5
       22 MOVE                             R9 R4
       23 LOADN                            R10 1
       24 CALL                             R7 3 0
       25 RETURN                           R5 1
       26 LOADNIL                          R7
       27 SETTABLE                         R7 R5 R4
       28 RETURN                           R5 1
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K6 ["copyWithRename"]
       32 GETTABLE                         R7 R0 R4
       33 MOVE                             R8 R1
       34 MOVE                             R9 R2
       35 ADDK                             R10 R3 K0 [1]
       36 CALL                             R6 4 1
       37 SETTABLE                         R6 R5 R4
       38 RETURN                           R5 1

PROTO_4:
        0 ORK                              R3 R3 K0 [1]
        1 LENGTH                           R4 R1
        2 JUMPIFNOTLT                      R4 R3 ; [+2]
        4 RETURN                           R2 1
        5 GETTABLE                         R4 R1 R3
        6 GETIMPORT                        R5 K3 [table.clone]
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["copyWithSet"]
       13 GETTABLE                         R7 R0 R4
       14 MOVE                             R8 R1
       15 MOVE                             R9 R2
       16 ADDK                             R10 R3 K0 [1]
       17 CALL                             R6 4 1
       18 SETTABLE                         R6 R5 R4
       19 RETURN                           R5 1

PROTO_5:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+15]
        7 JUMPIFEQKNIL                     R1 ; [+13]
        9 GETUPVAL                         R2 0
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R2 K3 ["has"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 0
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R2 K4 ["add"]
       20 CALL                             R2 2 0
       21 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["JSONEncode"]
        7 MOVE                             R3 R0
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Set"]
       16 GETTABLEKS                       R3 R1 K7 ["Array"]
       18 GETIMPORT                        R4 K4 [require]
       20 GETIMPORT                        R5 K1 [script]
       22 GETTABLEKS                       R5 R5 K2 ["Parent"]
       24 GETTABLEKS                       R5 R5 K2 ["Parent"]
       26 GETTABLEKS                       R5 R5 K8 ["hydration"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R4 K9 ["dehydrate"]
       31 GETIMPORT                        R6 K4 [require]
       33 GETIMPORT                        R7 K1 [script]
       35 GETTABLEKS                       R7 R7 K2 ["Parent"]
       37 GETTABLEKS                       R7 R7 K2 ["Parent"]
       39 GETTABLEKS                       R7 R7 K10 ["devtools"]
       41 GETTABLEKS                       R7 R7 K11 ["views"]
       43 GETTABLEKS                       R7 R7 K12 ["Components"]
       45 GETTABLEKS                       R7 R7 K13 ["types"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K15 [game]
       50 LOADK                            R9 K16 ["HttpService"]
       51 NAMECALL                         R7 R7 K17 ["GetService"]
       53 CALL                             R7 2 1
       54 NEWTABLE                         R8 8 0
       56 DUPCLOSURE                       R9 K18 [PROTO_0]
       57 CAPTURE                          VAL R5
       58 SETTABLEKS                       R9 R8 K19 ["cleanForBridge"]
       60 DUPCLOSURE                       R9 K20 [PROTO_1]
       61 SETTABLEKS                       R9 R8 K21 ["copyToClipboard"]
       63 DUPCLOSURE                       R9 K22 [PROTO_2]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R8
       66 SETTABLEKS                       R9 R8 K23 ["copyWithDelete"]
       68 DUPCLOSURE                       R9 K24 [PROTO_3]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R8
       71 SETTABLEKS                       R9 R8 K25 ["copyWithRename"]
       73 DUPCLOSURE                       R9 K26 [PROTO_4]
       74 CAPTURE                          VAL R8
       75 SETTABLEKS                       R9 R8 K27 ["copyWithSet"]
       77 DUPCLOSURE                       R9 K28 [PROTO_6]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R7
       80 SETTABLEKS                       R9 R8 K29 ["serializeToString"]
       82 RETURN                           R8 1
