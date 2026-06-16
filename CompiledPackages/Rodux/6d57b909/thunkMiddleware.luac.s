PROTO_0:
        0 GETIMPORT                        R1 K2 [debug.traceback]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["function"] ; [+29]
        7 GETIMPORT                        R1 K4 [xpcall]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 GETUPVAL                         R3 1
       13 CALL                             R1 2 2
       14 JUMPIF                           R1 ; [+19]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["_errorReporter"]
       18 GETTABLEKS                       R3 R3 K6 ["reportReducerError"]
       20 GETUPVAL                         R4 0
       21 NAMECALL                         R4 R4 K7 ["getState"]
       23 CALL                             R4 1 1
       24 MOVE                             R5 R0
       25 DUPTABLE                         R6 K10 [{"message", "thrownValue"}]
       26 LOADK                            R7 K11 ["Caught error in thunk"]
       27 SETTABLEKS                       R7 R6 K8 ["message"]
       29 SETTABLEKS                       R2 R6 K9 ["thrownValue"]
       31 CALL                             R3 3 0
       32 LOADNIL                          R3
       33 RETURN                           R3 1
       34 RETURN                           R2 1
       35 GETUPVAL                         R1 2
       36 MOVE                             R2 R0
       37 CALL                             R1 1 -1
       38 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_3]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
