PROTO_0:
        0 GETUPVAL                         R3 0
        1 AND                              R2 R3 R0
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R2 K2 [table.insert]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 2
       11 SUBK                             R2 R2 K3 [1]
       12 SETUPVAL                         R2 2
       13 GETUPVAL                         R2 2
       14 JUMPIFNOTEQKN                    R2 K4 [0] ; [+19]
       16 GETIMPORT                        R4 K7 [coroutine.status]
       18 GETUPVAL                         R5 3
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K8 ["suspended"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       26 LOADK                            R4 K9 ["Expected main task to be suspended after all tasks have completed"]
       27 GETIMPORT                        R2 K11 [assert]
       29 CALL                             R2 2 0
       30 GETIMPORT                        R2 K14 [task.spawn]
       32 GETUPVAL                         R3 3
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_1:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+5]
        3 LOADB                            R1 1
        4 NEWTABLE                         R2 0 0
        6 RETURN                           R1 2
        7 GETIMPORT                        R1 K3 [coroutine.running]
        9 CALL                             R1 0 1
       10 LENGTH                           R2 R0
       11 LOADB                            R3 1
       12 NEWTABLE                         R4 0 0
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          REF R3
       16 CAPTURE                          VAL R4
       17 CAPTURE                          REF R2
       18 CAPTURE                          VAL R1
       19 MOVE                             R6 R0
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 FORGPREP                         R6
       23 GETIMPORT                        R13 K5 [coroutine.status]
       25 MOVE                             R14 R10
       26 CALL                             R13 1 1
       27 JUMPIFEQKS                       R13 K6 ["suspended"] ; [+2]
       29 LOADB                            R12 0 +1
       30 LOADB                            R12 1
       31 FASTCALL2K                       ASSERT R12 K7 ; [+4]
       33 LOADK                            R13 K7 ["Expected worker to be suspended before being deferred"]
       34 GETIMPORT                        R11 K9 [assert]
       36 CALL                             R11 2 0
       37 GETIMPORT                        R11 K12 [task.defer]
       39 MOVE                             R12 R10
       40 MOVE                             R13 R5
       41 CALL                             R11 2 0
       42 FORGLOOP                         R6 2 ; [-20]
       44 GETIMPORT                        R6 K14 [coroutine.yield]
       46 CALL                             R6 0 0
       47 CLOSEUPVALS                      R2
       48 RETURN                           R3 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R1 1
        3 GETIMPORT                        R2 K2 [coroutine.running]
        5 CALL                             R2 0 -1
        6 FASTCALL                         TABLE_INSERT ; [+2]
        7 GETIMPORT                        R0 K5 [table.insert]
        9 CALL                             R0 -1 0
       10 GETIMPORT                        R0 K7 [coroutine.yield]
       12 CALL                             R0 0 0
       13 JUMPBACK                         ; [-14]
       14 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NEWTABLE                         R1 0 0
        5 SETUPVAL                         R1 1
        6 MOVE                             R1 R0
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETIMPORT                        R6 K2 [coroutine.status]
       12 MOVE                             R7 R5
       13 CALL                             R6 1 1
       14 JUMPIFNOTEQKS                    R6 K3 ["suspended"] ; [+5]
       16 GETIMPORT                        R6 K6 [task.defer]
       18 MOVE                             R7 R5
       19 CALL                             R6 1 0
       20 FORGLOOP                         R1 2 ; [-11]
       22 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R0 0
        1 NEWTABLE                         R1 0 0
        3 DUPTABLE                         R2 K3 [{"waitIfLocked", "lock", "unlock"}]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          REF R0
        6 CAPTURE                          REF R1
        7 SETTABLEKS                       R3 R2 K0 ["waitIfLocked"]
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          REF R0
       11 SETTABLEKS                       R3 R2 K1 ["lock"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          REF R0
       15 CAPTURE                          REF R1
       16 SETTABLEKS                       R3 R2 K2 ["unlock"]
       18 CLOSEUPVALS                      R0
       19 RETURN                           R2 1

PROTO_6:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 2
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 MOVE                             R5 R2
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [coroutine.create]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_1]
        4 SETTABLEKS                       R1 R0 K1 ["collectTasks"]
        6 DUPCLOSURE                       R1 K2 [PROTO_5]
        7 SETTABLEKS                       R1 R0 K3 ["createMutex"]
        9 DUPCLOSURE                       R1 K4 [PROTO_7]
       10 SETTABLEKS                       R1 R0 K5 ["wrapFunction"]
       12 RETURN                           R0 1
