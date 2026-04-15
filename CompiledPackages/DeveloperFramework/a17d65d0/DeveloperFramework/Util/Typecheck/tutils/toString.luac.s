PROTO_0:
        0 ORK                              R1 R1 K0 [""]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K2 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+69]
        8 LOADK                            R2 K0 [""]
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 JUMPIF                           R3 ; [+3]
       13 MOVE                             R3 R2
       14 LOADK                            R4 K4 ["-- WARNING: this table fails the list consistency test\n"]
       15 CONCAT                           R2 R3 R4
       16 MOVE                             R3 R2
       17 LOADK                            R4 K5 ["{\n"]
       18 CONCAT                           R2 R3 R4
       19 GETIMPORT                        R3 K7 [pairs]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 3
       23 FORGPREP_NEXT                    R3
       24 FASTCALL1                        TYPE R6 ; [+3]
       25 MOVE                             R9 R6
       26 GETIMPORT                        R8 K2 [type]
       28 CALL                             R8 1 1
       29 JUMPIFNOTEQKS                    R8 K8 ["string"] ; [+20]
       31 MOVE                             R8 R2
       32 LOADK                            R9 K9 ["  "]
       33 MOVE                             R10 R1
       34 FASTCALL1                        TOSTRING R6 ; [+3]
       35 MOVE                             R16 R6
       36 GETIMPORT                        R15 K11 [tostring]
       38 CALL                             R15 1 1
       39 MOVE                             R11 R15
       40 LOADK                            R12 K12 [" = "]
       41 GETUPVAL                         R15 1
       42 MOVE                             R16 R7
       43 LOADK                            R18 K9 ["  "]
       44 MOVE                             R19 R1
       45 CONCAT                           R17 R18 R19
       46 CALL                             R15 2 1
       47 MOVE                             R13 R15
       48 LOADK                            R14 K13 [";\n"]
       49 CONCAT                           R2 R8 R14
       50 FASTCALL1                        TYPE R6 ; [+3]
       51 MOVE                             R9 R6
       52 GETIMPORT                        R8 K2 [type]
       54 CALL                             R8 1 1
       55 JUMPIFNOTEQKS                    R8 K14 ["number"] ; [+13]
       57 MOVE                             R8 R2
       58 LOADK                            R9 K9 ["  "]
       59 MOVE                             R10 R1
       60 GETUPVAL                         R13 1
       61 MOVE                             R14 R7
       62 LOADK                            R16 K9 ["  "]
       63 MOVE                             R17 R1
       64 CONCAT                           R15 R16 R17
       65 CALL                             R13 2 1
       66 MOVE                             R11 R13
       67 LOADK                            R12 K15 [",\n"]
       68 CONCAT                           R2 R8 R12
       69 FORGLOOP                         R3 2 ; [-46]
       71 MOVE                             R3 R2
       72 MOVE                             R4 R1
       73 LOADK                            R5 K16 ["}"]
       74 CONCAT                           R2 R3 R5
       75 RETURN                           R2 1
       76 FASTCALL1                        TOSTRING R0 ; [+3]
       77 MOVE                             R3 R0
       78 GETIMPORT                        R2 K11 [tostring]
       80 CALL                             R2 1 1
       81 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["checkListConsistency"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 RETURN                           R1 1
