PROTO_0:
        0 NEWTABLE                         R2 1 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["assign"]
       11 NEWTABLE                         R3 0 0
       13 DUPTABLE                         R4 K6 [{"env", "stdout", "stderr"}]
       14 NEWTABLE                         R5 0 0
       16 SETTABLEKS                       R5 R4 K3 ["env"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K7 ["new"]
       21 CALL                             R5 0 1
       22 SETTABLEKS                       R5 R4 K4 ["stdout"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K7 ["new"]
       27 CALL                             R5 0 1
       28 SETTABLEKS                       R5 R4 K5 ["stderr"]
       30 MOVE                             R5 R0
       31 JUMPIF                           R5 ; [+2]
       32 NEWTABLE                         R5 0 0
       34 CALL                             R2 3 1
       35 SETTABLEKS                       R2 R1 K8 ["_process"]
       37 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_process"]
        2 GETTABLEKS                       R2 R2 K1 ["stderr"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["write"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["_process"]
        3 GETTABLEKS                       R4 R4 K1 ["stderr"]
        5 CALL                             R3 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 SETTABLEKS                       R1 R0 K0 ["_error"]
        2 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_error"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Object"]
       14 NEWTABLE                         R4 1 0
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R1 K7 ["JestTestResult"]
       20 CALL                             R5 1 1
       21 GETIMPORT                        R6 K4 [require]
       23 GETTABLEKS                       R7 R1 K8 ["JestUtil"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R6 R6 K9 ["remove"]
       28 GETIMPORT                        R7 K4 [require]
       30 GETTABLEKS                       R8 R0 K10 ["types"]
       32 CALL                             R7 1 1
       33 GETIMPORT                        R8 K4 [require]
       35 GETTABLEKS                       R9 R1 K11 ["RobloxShared"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R9 R8 K12 ["Writeable"]
       40 NEWTABLE                         R10 16 0
       42 SETTABLEKS                       R10 R10 K13 ["__index"]
       44 DUPCLOSURE                       R11 K14 [PROTO_0]
       45 CAPTURE                          VAL R10
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R9
       48 SETTABLEKS                       R11 R10 K15 ["new"]
       50 DUPCLOSURE                       R11 K16 [PROTO_1]
       51 SETTABLEKS                       R11 R10 K17 ["log"]
       53 DUPCLOSURE                       R11 K18 [PROTO_2]
       54 CAPTURE                          VAL R6
       55 SETTABLEKS                       R11 R10 K19 ["onRunStart"]
       57 DUPCLOSURE                       R11 K20 [PROTO_3]
       58 SETTABLEKS                       R11 R10 K21 ["onTestCaseResult"]
       60 DUPCLOSURE                       R11 K22 [PROTO_4]
       61 SETTABLEKS                       R11 R10 K23 ["onTestResult"]
       63 DUPCLOSURE                       R11 K24 [PROTO_5]
       64 SETTABLEKS                       R11 R10 K25 ["onTestStart"]
       66 DUPCLOSURE                       R11 K26 [PROTO_6]
       67 SETTABLEKS                       R11 R10 K27 ["onRunComplete"]
       69 DUPCLOSURE                       R11 K28 [PROTO_7]
       70 SETTABLEKS                       R11 R10 K29 ["_setError"]
       72 DUPCLOSURE                       R11 K30 [PROTO_8]
       73 SETTABLEKS                       R11 R10 K31 ["getLastError"]
       75 SETTABLEKS                       R10 R4 K32 ["default"]
       77 RETURN                           R4 1
