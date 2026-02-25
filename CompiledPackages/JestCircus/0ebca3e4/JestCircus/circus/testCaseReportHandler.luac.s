PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["name"]
        2 JUMPIFNOTEQKS                    R2 K1 ["test_done"] ; [+17]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R3 R1 K2 ["test"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 LOADK                            R5 K3 ["test-case-result"]
       13 NEWTABLE                         R6 0 2
       15 GETUPVAL                         R7 3
       16 MOVE                             R8 R3
       17 SETLIST                          R6 R7 2 [1]
       19 CALL                             R4 2 0
       20 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R2 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 NEWTABLE                         R2 1 0
       11 GETIMPORT                        R3 K4 [require]
       13 GETTABLEKS                       R4 R1 K5 ["JestTestResult"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R1 K6 ["JestTypes"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K4 [require]
       23 GETIMPORT                        R8 K1 [script]
       25 GETTABLEKS                       R7 R8 K2 ["Parent"]
       27 GETTABLEKS                       R6 R7 K7 ["utils"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R5 K8 ["makeSingleTestResult"]
       32 GETTABLEKS                       R7 R5 K9 ["parseSingleTestResult"]
       34 DUPCLOSURE                       R8 K10 [PROTO_1]
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R7
       37 SETTABLEKS                       R8 R2 K11 ["default"]
       39 RETURN                           R2 1
