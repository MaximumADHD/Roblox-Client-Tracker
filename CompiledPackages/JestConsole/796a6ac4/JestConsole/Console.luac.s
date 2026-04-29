PROTO_0:
        0 NEWTABLE                         R4 2 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 MOVE                             R4 R2
        9 JUMPIF                           R4 ; [+2]
       10 NEWTABLE                         R4 0 0
       12 GETTABLEKS                       R6 R0 K2 ["write"]
       14 FASTCALL1                        TYPEOF R6 ; [+2]
       15 GETIMPORT                        R5 K4 [typeof]
       17 CALL                             R5 1 1
       18 JUMPIFNOTEQKS                    R5 K5 ["function"] ; [+5]
       20 SETTABLEKS                       R0 R4 K6 ["stdout"]
       22 SETTABLEKS                       R1 R4 K7 ["stderr"]
       24 GETTABLEKS                       R5 R4 K7 ["stderr"]
       26 JUMPIFNOTEQKNIL                  R5 ; [+5]
       28 GETTABLEKS                       R5 R4 K6 ["stdout"]
       30 SETTABLEKS                       R5 R4 K7 ["stderr"]
       32 GETTABLEKS                       R5 R4 K6 ["stdout"]
       34 JUMPIFEQKNIL                     R5 ; [+11]
       36 GETTABLEKS                       R7 R4 K6 ["stdout"]
       38 GETTABLEKS                       R6 R7 K2 ["write"]
       40 FASTCALL1                        TYPEOF R6 ; [+2]
       41 GETIMPORT                        R5 K4 [typeof]
       43 CALL                             R5 1 1
       44 JUMPIFEQKS                       R5 K5 ["function"] ; [+5]
       46 GETIMPORT                        R5 K9 [error]
       48 LOADK                            R6 K10 ["stdout must have a write method"]
       49 CALL                             R5 1 0
       50 GETTABLEKS                       R5 R4 K7 ["stderr"]
       52 JUMPIFEQKNIL                     R5 ; [+11]
       54 GETTABLEKS                       R7 R4 K7 ["stderr"]
       56 GETTABLEKS                       R6 R7 K2 ["write"]
       58 FASTCALL1                        TYPEOF R6 ; [+2]
       59 GETIMPORT                        R5 K4 [typeof]
       61 CALL                             R5 1 1
       62 JUMPIFEQKS                       R5 K5 ["function"] ; [+5]
       64 GETIMPORT                        R5 K9 [error]
       66 LOADK                            R6 K11 ["stderr must have a write method"]
       67 CALL                             R5 1 0
       68 GETTABLEKS                       R5 R4 K6 ["stdout"]
       70 SETTABLEKS                       R5 R3 K12 ["_stdout"]
       72 GETTABLEKS                       R5 R4 K7 ["stderr"]
       74 SETTABLEKS                       R5 R3 K13 ["_stderr"]
       76 RETURN                           R3 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["stdout"] ; [+4]
        2 GETTABLEKS                       R3 R0 K1 ["_stdout"]
        4 JUMP                             ; [+2]
        5 GETTABLEKS                       R3 R0 K2 ["_stderr"]
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R3 K3 ["write"]
       10 CALL                             R4 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      1
        1 LOADK                            R3 K0 ["stdout"]
        2 GETUPVAL                         R4 0
        3 GETVARARGS                       R5 -1
        4 CALL                             R4 -1 -1
        5 NAMECALL                         R1 R0 K1 ["_write"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      1
        1 LOADK                            R3 K0 ["stderr"]
        2 GETUPVAL                         R4 0
        3 GETVARARGS                       R5 -1
        4 CALL                             R4 -1 -1
        5 NAMECALL                         R1 R0 K1 ["_write"]
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R2 K1 [script]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R4 K4 [require]
       11 GETTABLEKS                       R5 R1 K5 ["helpers"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R3 R4 K6 ["format"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R2 K7 ["RobloxShared"]
       20 CALL                             R4 1 1
       21 NEWTABLE                         R5 8 0
       23 SETTABLEKS                       R5 R5 K8 ["__index"]
       25 DUPCLOSURE                       R6 K9 [PROTO_0]
       26 CAPTURE                          VAL R5
       27 SETTABLEKS                       R6 R5 K10 ["new"]
       29 DUPCLOSURE                       R6 K11 [PROTO_1]
       30 SETTABLEKS                       R6 R5 K12 ["_write"]
       32 DUPCLOSURE                       R6 K13 [PROTO_2]
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R6 R5 K14 ["log"]
       36 DUPCLOSURE                       R6 K15 [PROTO_3]
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R6 R5 K16 ["error"]
       40 SETTABLEKS                       R5 R0 K17 ["default"]
       42 RETURN                           R0 1
