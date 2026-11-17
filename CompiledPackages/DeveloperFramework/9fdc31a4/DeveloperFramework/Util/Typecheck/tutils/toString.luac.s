PROTO_0:
        0 ORK                              R1 R1 K0 [""]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K2 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+66]
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
       29 JUMPIFNOTEQKS                    R8 K8 ["string"] ; [+18]
       31 MOVE                             R8 R2
       32 LOADK                            R9 K9 ["  "]
       33 MOVE                             R10 R1
       34 FASTCALL1                        TOSTRING R6 ; [+3]
       35 MOVE                             R12 R6
       36 GETIMPORT                        R11 K11 [tostring]
       38 CALL                             R11 1 1
       39 LOADK                            R12 K12 [" = "]
       40 GETUPVAL                         R13 1
       41 MOVE                             R14 R7
       42 LOADK                            R16 K9 ["  "]
       43 MOVE                             R17 R1
       44 CONCAT                           R15 R16 R17
       45 CALL                             R13 2 1
       46 LOADK                            R14 K13 [";\n"]
       47 CONCAT                           R2 R8 R14
       48 FASTCALL1                        TYPE R6 ; [+3]
       49 MOVE                             R9 R6
       50 GETIMPORT                        R8 K2 [type]
       52 CALL                             R8 1 1
       53 JUMPIFNOTEQKS                    R8 K14 ["number"] ; [+12]
       55 MOVE                             R8 R2
       56 LOADK                            R9 K9 ["  "]
       57 MOVE                             R10 R1
       58 GETUPVAL                         R11 1
       59 MOVE                             R12 R7
       60 LOADK                            R14 K9 ["  "]
       61 MOVE                             R15 R1
       62 CONCAT                           R13 R14 R15
       63 CALL                             R11 2 1
       64 LOADK                            R12 K15 [",\n"]
       65 CONCAT                           R2 R8 R12
       66 FORGLOOP                         R3 2 ; [-43]
       68 MOVE                             R3 R2
       69 MOVE                             R4 R1
       70 LOADK                            R5 K16 ["}"]
       71 CONCAT                           R2 R3 R5
       72 RETURN                           R2 1
       73 FASTCALL1                        TOSTRING R0 ; [+3]
       74 MOVE                             R3 R0
       75 GETIMPORT                        R2 K11 [tostring]
       77 CALL                             R2 1 1
       78 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["checkListConsistency"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 RETURN                           R1 1
