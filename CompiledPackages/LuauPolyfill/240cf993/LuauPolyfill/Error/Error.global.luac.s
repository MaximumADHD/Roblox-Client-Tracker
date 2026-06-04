PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        GETMETATABLE R2 ; [+2]
        2 GETIMPORT                        R1 K1 [getmetatable]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K2 ["__tostring"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"name", "message"}]
        1 LOADK                            R3 K3 ["Error"]
        2 SETTABLEKS                       R3 R2 K0 ["name"]
        4 ORK                              R3 R0 K4 [""]
        5 SETTABLEKS                       R3 R2 K1 ["message"]
        7 GETUPVAL                         R3 0
        8 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       10 GETIMPORT                        R1 K6 [setmetatable]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K7 ["__captureStackTrace"]
       16 MOVE                             R3 R1
       17 LOADN                            R4 4
       18 CALL                             R2 2 0
       19 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R3 K2 [{"name", "message"}]
        1 LOADK                            R4 K3 ["Error"]
        2 SETTABLEKS                       R4 R3 K0 ["name"]
        4 ORK                              R4 R0 K4 [""]
        5 SETTABLEKS                       R4 R3 K1 ["message"]
        7 GETUPVAL                         R4 0
        8 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       10 GETIMPORT                        R2 K6 [setmetatable]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K7 ["__captureStackTrace"]
       16 MOVE                             R4 R2
       17 LOADN                            R5 4
       18 CALL                             R3 2 0
       19 MOVE                             R1 R2
       20 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["__captureStackTrace"]
        3 MOVE                             R3 R0
        4 LOADN                            R4 3
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TYPEOF R2 ; [+3]
        1 MOVE                             R4 R2
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+55]
        7 GETIMPORT                        R3 K5 [debug.traceback]
        9 LOADNIL                          R4
       10 MOVE                             R5 R1
       11 CALL                             R3 2 1
       12 GETIMPORT                        R4 K7 [debug.info]
       14 MOVE                             R5 R2
       15 LOADK                            R6 K8 ["n"]
       16 CALL                             R4 2 1
       17 GETIMPORT                        R5 K7 [debug.info]
       19 MOVE                             R6 R2
       20 LOADK                            R7 K9 ["s"]
       21 CALL                             R5 2 1
       22 GETIMPORT                        R6 K12 [string.gsub]
       24 MOVE                             R7 R5
       25 LOADK                            R8 K13 ["([%(%)%.%%%+%-%*%?%[%^%$])"]
       26 LOADK                            R9 K14 ["%%%1"]
       27 CALL                             R6 3 1
       28 MOVE                             R8 R6
       29 LOADK                            R9 K15 [":%d* function "]
       30 MOVE                             R10 R4
       31 CONCAT                           R7 R8 R10
       32 GETIMPORT                        R8 K17 [string.find]
       34 MOVE                             R9 R3
       35 MOVE                             R10 R7
       36 CALL                             R8 2 1
       37 LOADNIL                          R9
       38 JUMPIFEQKNIL                     R8 ; [+9]
       40 GETIMPORT                        R10 K17 [string.find]
       42 MOVE                             R11 R3
       43 LOADK                            R12 K18 ["\n"]
       44 ADDK                             R13 R8 K19 [1]
       45 CALL                             R10 3 2
       46 MOVE                             R8 R10
       47 MOVE                             R9 R11
       48 JUMPIFEQKNIL                     R9 ; [+9]
       50 ADDK                             R12 R9 K19 [1]
       51 FASTCALL2                        STRING_SUB R3 R12 ; [+4]
       53 MOVE                             R11 R3
       54 GETIMPORT                        R10 K21 [string.sub]
       56 CALL                             R10 2 1
       57 MOVE                             R3 R10
       58 SETTABLEKS                       R3 R0 K22 ["__stack"]
       60 JUMP                             ; [+7]
       61 GETIMPORT                        R3 K5 [debug.traceback]
       63 LOADNIL                          R4
       64 MOVE                             R5 R1
       65 CALL                             R3 2 1
       66 SETTABLEKS                       R3 R0 K22 ["__stack"]
       68 GETUPVAL                         R3 0
       69 GETTABLEKS                       R3 R3 K23 ["__recalculateStacktrace"]
       71 MOVE                             R4 R0
       72 CALL                             R3 1 0
       73 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["message"]
        2 GETTABLEKS                       R3 R0 K2 ["name"]
        4 ORK                              R2 R3 K1 ["Error"]
        5 MOVE                             R4 R2
        6 JUMPIFEQKNIL                     R1 ; [+7]
        8 JUMPIFEQKS                       R1 K3 [""] ; [+5]
       10 LOADK                            R6 K4 [": "]
       11 MOVE                             R7 R1
       12 CONCAT                           R5 R6 R7
       13 JUMP                             ; [+1]
       14 LOADK                            R5 K3 [""]
       15 CONCAT                           R3 R4 R5
       16 GETTABLEKS                       R5 R0 K5 ["__stack"]
       18 JUMPIFNOT                        R5 ; [+3]
       19 GETTABLEKS                       R4 R0 K5 ["__stack"]
       21 JUMP                             ; [+1]
       22 LOADK                            R4 K3 [""]
       23 MOVE                             R6 R3
       24 LOADK                            R7 K6 ["\n"]
       25 MOVE                             R8 R4
       26 CONCAT                           R5 R6 R8
       27 SETTABLEKS                       R5 R0 K7 ["stack"]
       29 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      1
        1 GETVARARGS                       R2 1
        2 DUPTABLE                         R4 K2 [{"name", "message"}]
        3 LOADK                            R5 K3 ["Error"]
        4 SETTABLEKS                       R5 R4 K0 ["name"]
        6 ORK                              R5 R2 K4 [""]
        7 SETTABLEKS                       R5 R4 K1 ["message"]
        9 GETUPVAL                         R5 0
       10 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       12 GETIMPORT                        R3 K6 [setmetatable]
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K7 ["__captureStackTrace"]
       18 MOVE                             R5 R3
       19 LOADN                            R6 4
       20 CALL                             R4 2 0
       21 MOVE                             R1 R3
       22 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 JUMPIFEQKNIL                     R1 ; [+32]
        4 GETTABLEKS                       R1 R0 K1 ["message"]
        6 JUMPIFNOT                        R1 ; [+21]
        7 GETTABLEKS                       R1 R0 K1 ["message"]
        9 JUMPIFEQKS                       R1 K2 [""] ; [+18]
       11 GETIMPORT                        R1 K5 [string.format]
       13 LOADK                            R2 K6 ["%s: %s"]
       14 GETTABLEKS                       R4 R0 K0 ["name"]
       16 FASTCALL1                        TOSTRING R4 ; [+2]
       17 GETIMPORT                        R3 K8 [tostring]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R5 R0 K1 ["message"]
       22 FASTCALL1                        TOSTRING R5 ; [+2]
       23 GETIMPORT                        R4 K8 [tostring]
       25 CALL                             R4 1 1
       26 CALL                             R1 3 -1
       27 RETURN                           R1 -1
       28 GETTABLEKS                       R2 R0 K0 ["name"]
       30 FASTCALL1                        TOSTRING R2 ; [+2]
       31 GETIMPORT                        R1 K8 [tostring]
       33 CALL                             R1 1 1
       34 RETURN                           R1 1
       35 LOADK                            R2 K9 ["Error"]
       36 FASTCALL1                        TOSTRING R2 ; [+2]
       37 GETIMPORT                        R1 K8 [tostring]
       39 CALL                             R1 1 1
       40 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["ES7Types"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 8 0
       16 SETTABLEKS                       R3 R3 K6 ["__index"]
       18 DUPCLOSURE                       R4 K7 [PROTO_0]
       19 CAPTURE                          VAL R3
       20 SETTABLEKS                       R4 R3 K8 ["__tostring"]
       22 DUPCLOSURE                       R4 K9 [PROTO_1]
       23 CAPTURE                          VAL R3
       24 DUPCLOSURE                       R5 K10 [PROTO_2]
       25 CAPTURE                          VAL R3
       26 SETTABLEKS                       R5 R3 K11 ["new"]
       28 DUPCLOSURE                       R5 K12 [PROTO_3]
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R5 R3 K13 ["captureStackTrace"]
       32 DUPCLOSURE                       R5 K14 [PROTO_4]
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R5 R3 K15 ["__captureStackTrace"]
       36 DUPCLOSURE                       R5 K16 [PROTO_5]
       37 SETTABLEKS                       R5 R3 K17 ["__recalculateStacktrace"]
       39 DUPTABLE                         R7 K19 [{"__call", "__tostring"}]
       40 DUPCLOSURE                       R8 K20 [PROTO_6]
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R8 R7 K18 ["__call"]
       44 DUPCLOSURE                       R8 K21 [PROTO_7]
       45 SETTABLEKS                       R8 R7 K8 ["__tostring"]
       47 FASTCALL2                        SETMETATABLE R3 R7 ; [+4]
       49 MOVE                             R6 R3
       50 GETIMPORT                        R5 K23 [setmetatable]
       52 CALL                             R5 2 1
       53 RETURN                           R5 1
