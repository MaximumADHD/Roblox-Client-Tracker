PROTO_0:
        0 ADDK                             R3 R3 K0 [1]
        1 GETUPVAL                         R6 0
        2 MOVE                             R7 R0
        3 CALL                             R6 1 1
        4 JUMPIFNOTEQKS                    R6 K1 ["string"] ; [+38]
        6 GETIMPORT                        R7 K4 [table.clone]
        8 MOVE                             R8 R1
        9 CALL                             R7 1 1
       10 GETIMPORT                        R8 K4 [table.clone]
       12 GETTABLEKS                       R9 R7 K5 ["plugins"]
       14 CALL                             R8 1 1
       15 SETTABLEKS                       R8 R7 K5 ["plugins"]
       17 GETIMPORT                        R8 K7 [table.remove]
       19 GETTABLEKS                       R9 R7 K5 ["plugins"]
       21 GETIMPORT                        R10 K9 [table.find]
       23 GETTABLEKS                       R11 R7 K5 ["plugins"]
       25 GETUPVAL                         R12 1
       26 CALL                             R10 2 -1
       27 CALL                             R8 -1 0
       28 MOVE                             R8 R5
       29 MOVE                             R9 R0
       30 MOVE                             R10 R7
       31 MOVE                             R11 R2
       32 MOVE                             R12 R3
       33 MOVE                             R13 R4
       34 CALL                             R8 5 1
       35 GETTABLEKS                       R9 R1 K10 ["redactStackTracesInStrings"]
       37 JUMPIFNOT                        R9 ; [+4]
       38 GETUPVAL                         R9 2
       39 MOVE                             R10 R8
       40 CALL                             R9 1 1
       41 MOVE                             R8 R9
       42 RETURN                           R8 1
       43 JUMPIFNOTEQKS                    R6 K11 ["error"] ; [+34]
       45 GETIMPORT                        R7 K4 [table.clone]
       47 MOVE                             R8 R1
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K4 [table.clone]
       51 GETTABLEKS                       R9 R7 K5 ["plugins"]
       53 CALL                             R8 1 1
       54 SETTABLEKS                       R8 R7 K5 ["plugins"]
       56 GETIMPORT                        R8 K7 [table.remove]
       58 GETTABLEKS                       R9 R7 K5 ["plugins"]
       60 GETIMPORT                        R10 K9 [table.find]
       62 GETTABLEKS                       R11 R7 K5 ["plugins"]
       64 GETUPVAL                         R12 1
       65 CALL                             R10 2 -1
       66 CALL                             R8 -1 0
       67 MOVE                             R8 R5
       68 MOVE                             R9 R0
       69 MOVE                             R10 R7
       70 MOVE                             R11 R2
       71 MOVE                             R12 R3
       72 MOVE                             R13 R4
       73 CALL                             R8 5 1
       74 GETUPVAL                         R9 2
       75 MOVE                             R10 R8
       76 CALL                             R9 1 1
       77 RETURN                           R9 1
       78 GETIMPORT                        R7 K12 [error]
       80 LOADK                            R8 K13 ["not supported"]
       81 CALL                             R7 1 0
       82 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 LOADB                            R2 1
        4 JUMPIFEQKS                       R1 K0 ["error"] ; [+5]
        6 JUMPIFEQKS                       R1 K1 ["string"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["JestGetType"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["getType"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R1 K7 ["RobloxShared"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R4 R4 K8 ["redactStackTrace"]
       23 GETIMPORT                        R5 K4 [require]
       25 GETTABLEKS                       R6 R0 K9 ["Types"]
       27 CALL                             R5 1 1
       28 NEWTABLE                         R6 2 0
       30 DUPCLOSURE                       R7 K10 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R4
       34 SETTABLEKS                       R7 R6 K11 ["serialize"]
       36 DUPCLOSURE                       R7 K12 [PROTO_1]
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R7 R6 K13 ["test"]
       40 RETURN                           R6 1
