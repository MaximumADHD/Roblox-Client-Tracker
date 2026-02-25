PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 GETIMPORT                        R3 K1 [error]
        4 LOADK                            R4 K2 ["cannot create array from a nil value"]
        5 CALL                             R3 1 0
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R4 R0
        8 GETIMPORT                        R3 K4 [typeof]
       10 CALL                             R3 1 1
       11 LOADNIL                          R4
       12 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+12]
       14 GETUPVAL                         R5 0
       15 MOVE                             R6 R0
       16 CALL                             R5 1 1
       17 JUMPIFNOT                        R5 ; [+7]
       18 GETUPVAL                         R5 1
       19 MOVE                             R6 R0
       20 MOVE                             R7 R1
       21 MOVE                             R8 R2
       22 CALL                             R5 3 1
       23 MOVE                             R4 R5
       24 RETURN                           R4 1
       25 GETUPVAL                         R5 2
       26 MOVE                             R6 R0
       27 GETUPVAL                         R7 3
       28 CALL                             R5 2 1
       29 JUMPIFNOT                        R5 ; [+7]
       30 GETUPVAL                         R5 4
       31 MOVE                             R6 R0
       32 MOVE                             R7 R1
       33 MOVE                             R8 R2
       34 CALL                             R5 3 1
       35 MOVE                             R4 R5
       36 RETURN                           R4 1
       37 GETUPVAL                         R5 2
       38 MOVE                             R6 R0
       39 GETUPVAL                         R7 5
       40 CALL                             R5 2 1
       41 JUMPIFNOT                        R5 ; [+7]
       42 GETUPVAL                         R5 6
       43 MOVE                             R6 R0
       44 MOVE                             R7 R1
       45 MOVE                             R8 R2
       46 CALL                             R5 3 1
       47 MOVE                             R4 R5
       48 RETURN                           R4 1
       49 JUMPIFNOTEQKS                    R3 K6 ["string"] ; [+8]
       51 GETUPVAL                         R5 7
       52 MOVE                             R6 R0
       53 MOVE                             R7 R1
       54 MOVE                             R8 R2
       55 CALL                             R5 3 1
       56 MOVE                             R4 R5
       57 RETURN                           R4 1
       58 NEWTABLE                         R4 0 0
       60 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R1 K5 ["Set"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R6 R1 K6 ["Map"]
       18 GETTABLEKS                       R5 R6 K6 ["Map"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R0 K7 ["isArray"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K4 [require]
       28 GETTABLEKS                       R7 R2 K8 ["InstanceOf"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R8 R2 K9 ["ES7Types"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K4 [require]
       38 GETIMPORT                        R10 K1 [script]
       40 GETTABLEKS                       R9 R10 K10 ["fromString"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K4 [require]
       45 GETIMPORT                        R11 K1 [script]
       47 GETTABLEKS                       R10 R11 K11 ["fromSet"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K4 [require]
       52 GETIMPORT                        R12 K1 [script]
       54 GETTABLEKS                       R11 R12 K12 ["fromMap"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K4 [require]
       59 GETIMPORT                        R13 K1 [script]
       61 GETTABLEKS                       R12 R13 K13 ["fromArray"]
       63 CALL                             R11 1 1
       64 DUPCLOSURE                       R12 K14 [PROTO_0]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R8
       73 RETURN                           R12 1
