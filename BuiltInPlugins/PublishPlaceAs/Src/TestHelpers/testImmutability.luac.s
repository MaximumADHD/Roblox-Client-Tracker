PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
        7 FASTCALL1                        TYPE R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K1 [type]
       11 CALL                             R2 1 1
       12 JUMPIFEQKS                       R2 K2 ["table"] ; [+22]
       14 JUMPIF                           R0 ; [+1]
       15 LOADK                            R0 K3 ["nil"]
       16 JUMPIF                           R1 ; [+1]
       17 LOADK                            R1 K3 ["nil"]
       18 GETIMPORT                        R2 K5 [error]
       20 GETIMPORT                        R3 K8 [string.format]
       22 LOADK                            R4 K9 ["Expected to compare two tables, got %s and %s"]
       23 FASTCALL1                        TOSTRING R0 ; [+3]
       24 MOVE                             R6 R0
       25 GETIMPORT                        R5 K11 [tostring]
       27 CALL                             R5 1 1
       28 FASTCALL1                        TOSTRING R1 ; [+3]
       29 MOVE                             R7 R1
       30 GETIMPORT                        R6 K11 [tostring]
       32 CALL                             R6 1 1
       33 CALL                             R3 3 -1
       34 CALL                             R2 -1 0
       35 LOADN                            R2 0
       36 GETIMPORT                        R3 K13 [pairs]
       38 MOVE                             R4 R1
       39 CALL                             R3 1 3
       40 FORGPREP_NEXT                    R3
       41 ADDK                             R2 R2 K14 [1]
       42 FORGLOOP                         R3 2 ; [-2]
       44 LOADN                            R3 0
       45 GETIMPORT                        R4 K13 [pairs]
       47 MOVE                             R5 R0
       48 CALL                             R4 1 3
       49 FORGPREP_NEXT                    R4
       50 ADDK                             R3 R3 K14 [1]
       51 GETTABLE                         R9 R1 R7
       52 FASTCALL1                        TYPE R8 ; [+3]
       53 MOVE                             R11 R8
       54 GETIMPORT                        R10 K1 [type]
       56 CALL                             R10 1 1
       57 JUMPIFNOTEQKS                    R10 K2 ["table"] ; [+6]
       59 GETUPVAL                         R10 0
       60 MOVE                             R11 R8
       61 MOVE                             R12 R9
       62 CALL                             R10 2 0
       63 JUMP                             ; [+10]
       64 JUMPIFEQ                         R8 R9 ; [+9]
       66 GETIMPORT                        R10 K5 [error]
       68 GETIMPORT                        R11 K8 [string.format]
       70 LOADK                            R12 K15 ["the field \"%s\" no longer matches"]
       71 MOVE                             R13 R7
       72 CALL                             R11 2 -1
       73 CALL                             R10 -1 0
       74 FORGLOOP                         R4 2 ; [-25]
       76 JUMPIFEQ                         R3 R2 ; [+11]
       78 GETIMPORT                        R4 K5 [error]
       80 GETIMPORT                        R5 K8 [string.format]
       82 LOADK                            R6 K16 ["Number of keys mismatch : %d vs %d"]
       83 MOVE                             R7 R3
       84 MOVE                             R8 R2
       85 CALL                             R5 3 -1
       86 CALL                             R4 -1 -1
       87 RETURN                           R4 -1
       88 LOADB                            R4 1
       89 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R2 R2 K2 ["toBe"]
        9 LOADK                            R3 K3 ["function"]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 0
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R4 R1
       14 GETIMPORT                        R3 K1 [type]
       16 CALL                             R3 1 1
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R2 R2 K2 ["toBe"]
       20 LOADK                            R3 K4 ["table"]
       21 CALL                             R2 1 0
       22 MOVE                             R2 R0
       23 LOADNIL                          R3
       24 DUPTABLE                         R4 K6 [{[1] = "__nil__"}]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 1
       27 MOVE                             R4 R2
       28 NEWTABLE                         R5 0 0
       30 CALL                             R3 2 1
       31 GETUPVAL                         R4 0
       32 GETUPVAL                         R5 2
       33 MOVE                             R6 R2
       34 MOVE                             R7 R3
       35 CALL                             R5 2 -1
       36 CALL                             R4 -1 1
       37 GETTABLEKS                       R4 R4 K2 ["toBe"]
       39 LOADB                            R5 1
       40 CALL                             R4 1 0
       41 MOVE                             R4 R0
       42 MOVE                             R5 R2
       43 MOVE                             R6 R1
       44 CALL                             R4 2 0
       45 GETUPVAL                         R4 2
       46 MOVE                             R5 R2
       47 MOVE                             R6 R3
       48 CALL                             R4 2 -1
       49 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Dev"]
       15 GETTABLEKS                       R2 R2 K7 ["JestGlobals"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K8 ["expect"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R0 K5 ["Packages"]
       24 GETTABLEKS                       R4 R4 K9 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R3 R3 K10 ["Util"]
       29 GETTABLEKS                       R3 R3 K11 ["deepJoin"]
       31 DUPCLOSURE                       R4 K12 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 DUPCLOSURE                       R5 K13 [PROTO_1]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 RETURN                           R5 1
