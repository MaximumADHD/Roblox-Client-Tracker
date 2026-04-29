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
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["isArray"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["instanceof"]
       16 CALL                             R3 1 1
       17 GETIMPORT                        R4 K4 [require]
       19 GETTABLEKS                       R5 R1 K7 ["Set"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K4 [require]
       24 GETTABLEKS                       R6 R1 K8 ["Map"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K4 [require]
       29 GETIMPORT                        R8 K1 [script]
       31 GETTABLEKS                       R7 R8 K9 ["fromString"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K4 [require]
       36 GETIMPORT                        R9 K1 [script]
       38 GETTABLEKS                       R8 R9 K10 ["fromSet"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K4 [require]
       43 GETIMPORT                        R10 K1 [script]
       45 GETTABLEKS                       R9 R10 K11 ["fromMap"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K4 [require]
       50 GETIMPORT                        R11 K1 [script]
       52 GETTABLEKS                       R10 R11 K12 ["fromArray"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K4 [require]
       57 GETTABLEKS                       R11 R1 K13 ["types"]
       59 CALL                             R10 1 1
       60 DUPCLOSURE                       R11 K14 [PROTO_0]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R6
       69 RETURN                           R11 1
