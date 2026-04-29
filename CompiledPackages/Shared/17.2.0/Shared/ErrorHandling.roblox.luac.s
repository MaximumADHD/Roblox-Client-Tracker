PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+31]
        7 GETIMPORT                        R1 K4 [string.find]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 [":[%d]+: "]
       11 CALL                             R1 2 2
       12 JUMPIFNOT                        R2 ; [+8]
       13 ADDK                             R5 R2 K6 [1]
       14 FASTCALL2                        STRING_SUB R0 R5 ; [+4]
       16 MOVE                             R4 R0
       17 GETIMPORT                        R3 K8 [string.sub]
       19 CALL                             R3 2 1
       20 JUMP                             ; [+1]
       21 MOVE                             R3 R0
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K9 ["Error"]
       25 GETTABLEKS                       R4 R5 K10 ["new"]
       27 MOVE                             R5 R3
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K13 [debug.traceback]
       31 LOADNIL                          R6
       32 LOADN                            R7 2
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K14 ["stack"]
       36 RETURN                           R4 1
       37 RETURN                           R0 1

PROTO_1:
        0 LOADNIL                          R1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+24]
        8 GETTABLEKS                       R2 R0 K3 ["message"]
       10 JUMPIFNOT                        R2 ; [+15]
       11 GETTABLEKS                       R2 R0 K4 ["stack"]
       13 JUMPIFNOT                        R2 ; [+12]
       14 LOADK                            R2 K5 ["\n------ Error caught by React ------\n"]
       15 GETTABLEKS                       R3 R0 K3 ["message"]
       17 LOADK                            R4 K5 ["\n------ Error caught by React ------\n"]
       18 GETTABLEKS                       R6 R0 K4 ["stack"]
       20 FASTCALL1                        TOSTRING R6 ; [+2]
       21 GETIMPORT                        R5 K7 [tostring]
       23 CALL                             R5 1 1
       24 CONCAT                           R1 R2 R5
       25 RETURN                           R1 1
       26 GETUPVAL                         R2 0
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 MOVE                             R1 R2
       30 RETURN                           R1 1
       31 GETUPVAL                         R2 0
       32 MOVE                             R3 R0
       33 CALL                             R2 1 1
       34 MOVE                             R1 R2
       35 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.split]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["\n------ Error caught by React ------\n"]
        4 CALL                             R1 2 1
        5 LENGTH                           R2 R1
        6 JUMPIFNOTEQKN                    R2 K4 [3] ; [+16]
        8 FASTCALL1                        TABLE_UNPACK R1 ; [+3]
        9 MOVE                             R3 R1
       10 GETIMPORT                        R2 K7 [table.unpack]
       12 CALL                             R2 1 3
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K8 ["new"]
       16 MOVE                             R6 R3
       17 CALL                             R5 1 1
       18 SETTABLEKS                       R4 R5 K9 ["stack"]
       20 MOVE                             R6 R5
       21 MOVE                             R7 R2
       22 RETURN                           R6 2
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K8 ["new"]
       26 MOVE                             R3 R0
       27 CALL                             R2 1 1
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K9 ["stack"]
       31 MOVE                             R3 R2
       32 LOADK                            R4 K10 [""]
       33 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Error"]
       14 GETTABLEKS                       R4 R1 K7 ["util"]
       16 GETTABLEKS                       R3 R4 K8 ["inspect"]
       18 DUPCLOSURE                       R4 K9 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 DUPCLOSURE                       R5 K10 [PROTO_1]
       21 CAPTURE                          VAL R3
       22 DUPCLOSURE                       R6 K11 [PROTO_2]
       23 CAPTURE                          VAL R2
       24 DUPTABLE                         R7 K16 [{"describeError", "errorToString", "parseReactError", "__ERROR_DIVIDER"}]
       25 SETTABLEKS                       R4 R7 K12 ["describeError"]
       27 SETTABLEKS                       R5 R7 K13 ["errorToString"]
       29 SETTABLEKS                       R6 R7 K14 ["parseReactError"]
       31 LOADK                            R8 K17 ["\n------ Error caught by React ------\n"]
       32 SETTABLEKS                       R8 R7 K15 ["__ERROR_DIVIDER"]
       34 RETURN                           R7 1
