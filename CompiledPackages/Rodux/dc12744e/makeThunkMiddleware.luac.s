PROTO_0:
        0 GETIMPORT                        R1 K2 [debug.traceback]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+30]
        7 GETIMPORT                        R1 K4 [xpcall]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 GETUPVAL                         R3 2
       14 CALL                             R1 2 2
       15 JUMPIF                           R1 ; [+19]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K5 ["_errorReporter"]
       19 GETTABLEKS                       R3 R4 K6 ["reportReducerError"]
       21 GETUPVAL                         R4 0
       22 NAMECALL                         R4 R4 K7 ["getState"]
       24 CALL                             R4 1 1
       25 MOVE                             R5 R0
       26 DUPTABLE                         R6 K10 [{"message", "thrownValue"}]
       27 LOADK                            R7 K11 ["Caught error in thunk"]
       28 SETTABLEKS                       R7 R6 K8 ["message"]
       30 SETTABLEKS                       R2 R6 K9 ["thrownValue"]
       32 CALL                             R3 3 0
       33 LOADNIL                          R3
       34 RETURN                           R3 1
       35 RETURN                           R2 1
       36 GETUPVAL                         R1 3
       37 MOVE                             R2 R0
       38 CALL                             R1 1 -1
       39 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 RETURN                           R2 1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_4]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
