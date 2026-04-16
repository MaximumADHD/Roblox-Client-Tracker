PROTO_0:
        0 PREPVARARGS                      2
        1 JUMPIF                           R1 ; [+27]
        2 GETVARARGS                       R2 1
        3 FASTCALL1                        TYPEOF R2 ; [+3]
        4 MOVE                             R4 R2
        5 GETIMPORT                        R3 K1 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+11]
       10 GETIMPORT                        R3 K4 [error]
       12 GETIMPORT                        R4 K7 [debug.traceback]
       14 MOVE                             R5 R0
       15 MOVE                             R6 R2
       16 CALL                             R4 2 1
       17 LOADN                            R5 2
       18 CALL                             R3 2 0
       19 JUMP                             ; [+9]
       20 GETIMPORT                        R3 K4 [error]
       22 FASTCALL1                        TOSTRING R2 ; [+3]
       23 MOVE                             R5 R2
       24 GETIMPORT                        R4 K9 [tostring]
       26 CALL                             R4 1 1
       27 LOADN                            R5 2
       28 CALL                             R3 2 0
       29 GETIMPORT                        R2 K12 [coroutine.status]
       31 MOVE                             R3 R0
       32 CALL                             R2 1 1
       33 JUMPIFEQKS                       R2 K13 ["dead"] ; [+10]
       35 GETIMPORT                        R2 K4 [error]
       37 GETIMPORT                        R3 K7 [debug.traceback]
       39 MOVE                             R4 R0
       40 LOADK                            R5 K14 ["Attempted to yield!"]
       41 CALL                             R3 2 1
       42 LOADN                            R4 2
       43 CALL                             R2 2 0
       44 GETVARARGS                       R2 -1
       45 RETURN                           R2 -1

PROTO_1:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [coroutine.create]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 GETIMPORT                        R4 K4 [coroutine.resume]
        9 MOVE                             R5 R1
       10 GETVARARGS                       R6 -1
       11 CALL                             R4 -1 -1
       12 CALL                             R2 -1 -1
       13 RETURN                           R2 -1

PROTO_2:
        0 PREPVARARGS                      1
        1 MOVE                             R1 R0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 -1
        4 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [_G]
        3 GETTABLEKS                       R0 R1 K2 ["__SIGNALS_VALIDATION_ENABLED__"]
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R1 K1 [_G]
        8 GETTABLEKS                       R0 R1 K3 ["__DEV__"]
       10 DUPCLOSURE                       R1 K4 [PROTO_0]
       11 DUPCLOSURE                       R2 K5 [PROTO_1]
       12 CAPTURE                          VAL R1
       13 DUPCLOSURE                       R3 K6 [PROTO_2]
       14 JUMPIFNOT                        R0 ; [+2]
       15 MOVE                             R4 R2
       16 RETURN                           R4 1
       17 MOVE                             R4 R3
       18 RETURN                           R4 1
