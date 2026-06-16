PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R4 0
        4 GETTABLE                         R3 R4 R1
        5 GETTABLE                         R2 R3 R0
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 LENGTH                           R3 R2
        9 LOADN                            R4 0
       10 JUMPIFNOTLT                      R4 R3 ; [+11]
       12 GETIMPORT                        R3 K2 [table.remove]
       14 MOVE                             R4 R2
       15 LOADN                            R5 1
       16 CALL                             R3 2 1
       17 GETIMPORT                        R4 K5 [task.spawn]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R4 0
       23 GETTABLE                         R3 R4 R1
       24 LOADNIL                          R4
       25 SETTABLE                         R4 R3 R0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETUPVAL                         R4 2
        6 GETTABLE                         R3 R4 R1
        7 GETTABLE                         R2 R3 R0
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 LENGTH                           R3 R2
       11 LOADN                            R4 0
       12 JUMPIFNOTLT                      R4 R3 ; [+11]
       14 GETIMPORT                        R3 K2 [table.remove]
       16 MOVE                             R4 R2
       17 LOADN                            R5 1
       18 CALL                             R3 2 1
       19 GETIMPORT                        R4 K5 [task.spawn]
       21 MOVE                             R5 R3
       22 CALL                             R4 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R4 2
       25 GETTABLE                         R3 R4 R1
       26 LOADNIL                          R4
       27 SETTABLE                         R4 R3 R0
       28 RETURN                           R0 0

PROTO_2:
        0 ORK                              R2 R1 K0 [0]
        1 GETUPVAL                         R4 0
        2 GETTABLE                         R3 R4 R2
        3 JUMPIF                           R3 ; [+4]
        4 GETUPVAL                         R3 0
        5 NEWTABLE                         R4 0 0
        7 SETTABLE                         R4 R3 R2
        8 GETUPVAL                         R5 0
        9 GETTABLE                         R4 R5 R2
       10 GETTABLE                         R3 R4 R0
       11 JUMPIF                           R3 ; [+6]
       12 GETUPVAL                         R4 0
       13 GETTABLE                         R3 R4 R2
       14 NEWTABLE                         R4 0 0
       16 SETTABLE                         R4 R3 R0
       17 JUMP                             ; [+13]
       18 GETUPVAL                         R6 0
       19 GETTABLE                         R5 R6 R2
       20 GETTABLE                         R4 R5 R0
       21 GETIMPORT                        R5 K3 [coroutine.running]
       23 CALL                             R5 0 -1
       24 FASTCALL                         TABLE_INSERT ; [+2]
       25 GETIMPORT                        R3 K6 [table.insert]
       27 CALL                             R3 -1 0
       28 GETIMPORT                        R3 K8 [coroutine.yield]
       30 CALL                             R3 0 0
       31 DUPTABLE                         R3 K10 [{"release"}]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U0
       36 SETTABLEKS                       R4 R3 K9 ["release"]
       38 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 NEWTABLE                         R1 1 0
        5 DUPCLOSURE                       R2 K0 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 DUPCLOSURE                       R3 K1 [PROTO_2]
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R3 R1 K2 ["acquireLock"]
       11 RETURN                           R1 1
