PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["advanceTimersByTime"]
        3 LOADN                            R1 50
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useFakeTimers"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["fireEvent"]
        7 GETTABLEKS                       R1 R2 K2 ["click"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 2
       12 DUPCLOSURE                       R2 K3 [PROTO_0]
       13 CAPTURE                          UPVAL U0
       14 CALL                             R1 1 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K1 ["fireEvent"]
       18 GETTABLEKS                       R1 R2 K2 ["click"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Packages"]
       13 GETTABLEKS                       R3 R4 K6 ["Dev"]
       15 GETTABLEKS                       R2 R3 K7 ["ReactTestingLibrary"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K8 ["act"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R6 R0 K5 ["Packages"]
       24 GETTABLEKS                       R5 R6 K6 ["Dev"]
       26 GETTABLEKS                       R4 R5 K9 ["JestGlobals"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K10 ["jest"]
       31 DUPCLOSURE                       R5 K11 [PROTO_1]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 RETURN                           R5 1
