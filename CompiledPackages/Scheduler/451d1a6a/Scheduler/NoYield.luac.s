PROTO_0:
        0 PREPVARARGS                      2
        1 JUMPIF                           R1 ; [+23]
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
       17 LOADN                            R5 3
       18 CALL                             R3 2 0
       19 JUMP                             ; [+5]
       20 GETIMPORT                        R3 K4 [error]
       22 MOVE                             R4 R2
       23 LOADN                            R5 3
       24 CALL                             R3 2 0
       25 GETIMPORT                        R2 K10 [coroutine.status]
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 JUMPIFEQKS                       R2 K11 ["dead"] ; [+10]
       31 GETIMPORT                        R2 K4 [error]
       33 GETIMPORT                        R3 K7 [debug.traceback]
       35 MOVE                             R4 R0
       36 LOADK                            R5 K12 ["Yielding is not currently supported inside components or hooks. Move this yield into a new thread with `task.spawn` or `task.defer`."]
       37 CALL                             R3 2 1
       38 LOADN                            R4 3
       39 CALL                             R2 2 0
       40 GETVARARGS                       R2 -1
       41 RETURN                           R2 -1

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

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
