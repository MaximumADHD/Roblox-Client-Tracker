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
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R2 R0
        3 GETIMPORT                        R1 K1 [type]
        5 CALL                             R1 1 1
        6 JUMPIFEQKS                       R1 K2 ["function"] ; [+10]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["log"]
       11 LOADK                            R2 K4 ["Signals"]
       12 LOADK                            R3 K5 ["Invalid function"]
       13 GETIMPORT                        R4 K8 [debug.traceback]
       15 CALL                             R4 0 -1
       16 CALL                             R1 -1 0
       17 FASTCALL1                        TYPE R0 ; [+3]
       18 MOVE                             R4 R0
       19 GETIMPORT                        R3 K1 [type]
       21 CALL                             R3 1 1
       22 JUMPIFEQKS                       R3 K2 ["function"] ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       28 LOADK                            R3 K9 ["Expected function"]
       29 GETIMPORT                        R1 K11 [assert]
       31 CALL                             R1 2 0
       32 GETIMPORT                        R1 K14 [coroutine.create]
       34 MOVE                             R2 R0
       35 CALL                             R1 1 1
       36 GETUPVAL                         R2 1
       37 MOVE                             R3 R1
       38 GETIMPORT                        R4 K16 [coroutine.resume]
       40 MOVE                             R5 R1
       41 GETVARARGS                       R6 -1
       42 CALL                             R4 -1 -1
       43 CALL                             R2 -1 -1
       44 RETURN                           R2 -1

PROTO_2:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 1
        3 MOVE                             R3 R0
        4 GETVARARGS                       R4 -1
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R2 K1 [pcall]
        8 CALL                             R2 -1 -1
        9 SETLIST                          R1 R2 -1 [1]
       11 GETTABLEN                        R2 R1 1
       12 JUMPIF                           R2 ; [+11]
       13 GETIMPORT                        R2 K3 [print]
       15 LOADK                            R3 K4 ["Got error"]
       16 GETTABLEN                        R4 R1 2
       17 MOVE                             R5 R0
       18 CALL                             R2 3 0
       19 GETIMPORT                        R2 K6 [error]
       21 GETTABLEN                        R3 R1 2
       22 LOADN                            R4 2
       23 CALL                             R2 2 0
       24 FASTCALL2K                       TABLE_UNPACK R1 K7 ; [+5]
       26 MOVE                             R3 R1
       27 LOADK                            R4 K7 [2]
       28 GETIMPORT                        R2 K9 [unpack]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Debug"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["SIGNALS_VALIDATION_ENABLED"]
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 DUPCLOSURE                       R4 K8 [PROTO_1]
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 DUPCLOSURE                       R5 K9 [PROTO_2]
       19 JUMPIFNOT                        R2 ; [+2]
       20 MOVE                             R6 R4
       21 RETURN                           R6 1
       22 MOVE                             R6 R5
       23 RETURN                           R6 1
