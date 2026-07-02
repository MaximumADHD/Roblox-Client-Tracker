PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 2
        2 GETUPVAL                         R2 3
        3 CALL                             R0 2 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETIMPORT                        R6 K2 [coroutine.running]
        7 CALL                             R6 0 1
        8 JUMPIFEQ                         R5 R6 ; [+5]
       10 GETIMPORT                        R6 K5 [task.cancel]
       12 MOVE                             R7 R5
       13 CALL                             R6 1 0
       14 FORGLOOP                         R1 2 ; [-10]
       16 GETIMPORT                        R1 K7 [coroutine.status]
       18 GETUPVAL                         R2 2
       19 CALL                             R1 1 1
       20 JUMPIFNOTEQKS                    R1 K8 ["suspended"] ; [+5]
       22 GETIMPORT                        R1 K10 [coroutine.resume]
       24 GETUPVAL                         R2 2
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [xpcall]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+2]
       14 CLOSEUPVALS                      R0
       15 RETURN                           R0 0
       16 JUMPIFEQKNIL                     R0 ; [+4]
       18 GETUPVAL                         R2 6
       19 GETUPVAL                         R3 2
       20 SETTABLE                         R0 R2 R3
       21 GETUPVAL                         R2 7
       22 SUBK                             R2 R2 K2 [1]
       23 SETUPVAL                         R2 7
       24 GETUPVAL                         R2 7
       25 JUMPIFNOTEQKN                    R2 K3 [0] ; [+11]
       27 GETIMPORT                        R2 K6 [coroutine.status]
       29 GETUPVAL                         R3 5
       30 CALL                             R2 1 1
       31 JUMPIFNOTEQKS                    R2 K7 ["suspended"] ; [+5]
       33 GETIMPORT                        R2 K9 [coroutine.resume]
       35 GETUPVAL                         R3 5
       36 CALL                             R2 1 0
       37 CLOSEUPVALS                      R0
       38 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K2 [coroutine.running]
        2 CALL                             R2 0 1
        3 NEWTABLE                         R3 0 0
        5 LOADN                            R4 0
        6 MOVE                             R5 R0
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 ADDK                             R4 R4 K3 [1]
       11 FORGLOOP                         R5 1 ; [-2]
       13 LOADNIL                          R5
       14 NEWTABLE                         R6 0 0
       16 MOVE                             R7 R0
       17 LOADNIL                          R8
       18 LOADNIL                          R9
       19 FORGPREP                         R7
       20 MOVE                             R13 R3
       21 GETIMPORT                        R14 K6 [task.spawn]
       23 NEWCLOSURE                       R15 P0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R11
       26 CAPTURE                          VAL R10
       27 CAPTURE                          REF R5
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R6
       31 CAPTURE                          REF R4
       32 CALL                             R14 1 -1
       33 FASTCALL                         TABLE_INSERT ; [+2]
       34 GETIMPORT                        R12 K9 [table.insert]
       36 CALL                             R12 -1 0
       37 FORGLOOP                         R7 2 ; [-18]
       39 JUMPIFEQKNIL                     R5 ; [+5]
       41 GETIMPORT                        R7 K11 [error]
       43 MOVE                             R8 R5
       44 CALL                             R7 1 0
       45 JUMPIFEQKN                       R4 K12 [0] ; [+4]
       47 GETIMPORT                        R7 K14 [coroutine.yield]
       49 CALL                             R7 0 0
       50 JUMPIFEQKNIL                     R5 ; [+5]
       52 GETIMPORT                        R7 K11 [error]
       54 MOVE                             R8 R5
       55 CALL                             R7 1 0
       56 CLOSEUPVALS                      R4
       57 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
