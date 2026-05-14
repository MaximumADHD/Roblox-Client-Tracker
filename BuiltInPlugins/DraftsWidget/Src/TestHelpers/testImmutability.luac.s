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
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["function"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Expected a reducer to test"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K1 [type]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K6 ["table"] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       26 LOADK                            R5 K7 ["Expected an action to test"]
       27 GETIMPORT                        R3 K5 [assert]
       29 CALL                             R3 2 0
       30 MOVE                             R3 R0
       31 MOVE                             R4 R2
       32 DUPTABLE                         R5 K8 [{"type"}]
       33 LOADK                            R6 K9 ["__nil__"]
       34 SETTABLEKS                       R6 R5 K0 ["type"]
       36 CALL                             R3 2 1
       37 GETUPVAL                         R4 0
       38 MOVE                             R5 R3
       39 NEWTABLE                         R6 0 0
       41 CALL                             R4 2 1
       42 GETUPVAL                         R6 1
       43 MOVE                             R7 R3
       44 MOVE                             R8 R4
       45 CALL                             R6 2 1
       46 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       48 LOADK                            R7 K10 ["deepJoin mutates fields"]
       49 GETIMPORT                        R5 K5 [assert]
       51 CALL                             R5 2 0
       52 MOVE                             R5 R0
       53 MOVE                             R6 R3
       54 MOVE                             R7 R1
       55 CALL                             R5 2 0
       56 GETUPVAL                         R5 1
       57 MOVE                             R6 R3
       58 MOVE                             R7 R4
       59 CALL                             R5 2 -1
       60 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K7 ["Util"]
       18 GETTABLEKS                       R1 R1 K8 ["deepJoin"]
       20 DUPCLOSURE                       R2 K9 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 DUPCLOSURE                       R3 K10 [PROTO_1]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
