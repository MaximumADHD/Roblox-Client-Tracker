PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+45]
        3 GETUPVAL                         R1 1
        4 LENGTH                           R2 R0
        5 ADD                              R1 R1 R2
        6 SETUPVAL                         R1 1
        7 GETUPVAL                         R2 1
        8 ADDK                             R1 R2 K0 [1]
        9 GETUPVAL                         R2 2
       10 JUMPIFNOTLT                      R2 R1 ; [+29]
       12 GETUPVAL                         R1 2
       13 MULK                             R1 R1 K1 [2]
       14 SETUPVAL                         R1 2
       15 GETUPVAL                         R1 2
       16 LOADK                            R2 K2 [524288]
       17 JUMPIFNOTLT                      R2 R1 ; [+11]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R1 R2 K3 ["error"]
       22 LOADK                            R2 K4 ["Scheduler Profiling: Event log exceeded maximum size. Don't forget to call `stopLoggingProfilingEvents()`."]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 4
       25 GETTABLEKS                       R1 R1 K5 ["stopLoggingProfilingEvents"]
       27 CALL                             R1 0 0
       28 RETURN                           R0 0
       29 NEWTABLE                         R1 0 0
       31 GETUPVAL                         R4 0
       32 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       34 MOVE                             R3 R1
       35 GETIMPORT                        R2 K8 [table.insert]
       37 CALL                             R2 2 0
       38 SETUPVAL                         R1 5
       39 SETUPVAL                         R1 0
       40 GETUPVAL                         R2 0
       41 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       43 MOVE                             R3 R0
       44 GETIMPORT                        R1 K8 [table.insert]
       46 CALL                             R1 2 0
       47 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R0 K0 [131072]
        1 SETUPVAL                         R0 0
        2 NEWTABLE                         R0 0 0
        4 SETUPVAL                         R0 1
        5 GETUPVAL                         R0 1
        6 SETUPVAL                         R0 2
        7 LOADN                            R0 1
        8 SETUPVAL                         R0 3
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 SETUPVAL                         R1 1
        3 LOADNIL                          R1
        4 SETUPVAL                         R1 0
        5 LOADNIL                          R1
        6 SETUPVAL                         R1 2
        7 LOADN                            R1 1
        8 SETUPVAL                         R1 3
        9 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+15]
        2 GETUPVAL                         R2 1
        3 JUMPIFEQKNIL                     R2 ; [+13]
        5 GETUPVAL                         R2 2
        6 NEWTABLE                         R3 0 4
        8 LOADN                            R4 1
        9 MULK                             R5 R1 K0 [1000]
       10 GETTABLEKS                       R6 R0 K1 ["id"]
       12 GETTABLEKS                       R7 R0 K2 ["priorityLevel"]
       14 SETLIST                          R3 R4 4 [1]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+13]
        2 GETUPVAL                         R2 1
        3 JUMPIFEQKNIL                     R2 ; [+11]
        5 GETUPVAL                         R2 2
        6 NEWTABLE                         R3 0 3
        8 LOADN                            R4 2
        9 MULK                             R5 R1 K0 [1000]
       10 GETTABLEKS                       R6 R0 K1 ["id"]
       12 SETLIST                          R3 R4 3 [1]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+13]
        2 GETUPVAL                         R2 1
        3 JUMPIFEQKNIL                     R2 ; [+11]
        5 GETUPVAL                         R2 2
        6 NEWTABLE                         R3 0 3
        8 LOADN                            R4 4
        9 MULK                             R5 R1 K0 [1000]
       10 GETTABLEKS                       R6 R0 K1 ["id"]
       12 SETLIST                          R3 R4 3 [1]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+13]
        2 GETUPVAL                         R2 1
        3 JUMPIFEQKNIL                     R2 ; [+11]
        5 GETUPVAL                         R2 2
        6 NEWTABLE                         R3 0 3
        8 LOADN                            R4 3
        9 MULK                             R5 R1 K0 [1000]
       10 GETTABLEKS                       R6 R0 K1 ["id"]
       12 SETLIST                          R3 R4 3 [1]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+17]
        2 GETUPVAL                         R2 1
        3 ADDK                             R2 R2 K0 [1]
        4 SETUPVAL                         R2 1
        5 GETUPVAL                         R2 2
        6 JUMPIFEQKNIL                     R2 ; [+12]
        8 GETUPVAL                         R2 3
        9 NEWTABLE                         R3 0 4
       11 LOADN                            R4 5
       12 MULK                             R5 R1 K1 [1000]
       13 GETTABLEKS                       R6 R0 K2 ["id"]
       15 GETUPVAL                         R7 1
       16 SETLIST                          R3 R4 4 [1]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+14]
        2 GETUPVAL                         R2 1
        3 JUMPIFEQKNIL                     R2 ; [+12]
        5 GETUPVAL                         R2 2
        6 NEWTABLE                         R3 0 4
        8 LOADN                            R4 6
        9 MULK                             R5 R1 K0 [1000]
       10 GETTABLEKS                       R6 R0 K1 ["id"]
       12 GETUPVAL                         R7 3
       13 SETLIST                          R3 R4 4 [1]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+15]
        2 GETUPVAL                         R1 1
        3 ADDK                             R1 R1 K0 [1]
        4 SETUPVAL                         R1 1
        5 GETUPVAL                         R1 2
        6 JUMPIFEQKNIL                     R1 ; [+10]
        8 GETUPVAL                         R1 3
        9 NEWTABLE                         R2 0 3
       11 LOADN                            R3 7
       12 MULK                             R4 R0 K1 [1000]
       13 GETUPVAL                         R5 1
       14 SETLIST                          R2 R3 3 [1]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R1 1
        3 JUMPIFEQKNIL                     R1 ; [+10]
        5 GETUPVAL                         R1 2
        6 NEWTABLE                         R2 0 3
        8 LOADN                            R3 8
        9 MULK                             R4 R0 K0 [1000]
       10 GETUPVAL                         R5 3
       11 SETLIST                          R2 R3 3 [1]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Shared"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R1 R1 K6 ["console"]
       14 NEWTABLE                         R2 16 0
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K2 ["Parent"]
       22 GETTABLEKS                       R4 R4 K7 ["SchedulerPriorities"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K4 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K2 ["Parent"]
       31 GETTABLEKS                       R5 R5 K8 ["SchedulerFeatureFlags"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K9 ["enableProfiling"]
       36 LOADN                            R6 0
       37 LOADN                            R7 0
       38 LOADN                            R8 0
       39 LOADNIL                          R9
       40 LOADNIL                          R10
       41 LOADN                            R11 1
       42 NEWCLOSURE                       R12 P0
       43 CAPTURE                          REF R10
       44 CAPTURE                          REF R11
       45 CAPTURE                          REF R8
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          REF R9
       49 NEWCLOSURE                       R13 P1
       50 CAPTURE                          REF R8
       51 CAPTURE                          REF R9
       52 CAPTURE                          REF R10
       53 CAPTURE                          REF R11
       54 SETTABLEKS                       R13 R2 K10 ["startLoggingProfilingEvents"]
       56 NEWCLOSURE                       R13 P2
       57 CAPTURE                          REF R9
       58 CAPTURE                          REF R8
       59 CAPTURE                          REF R10
       60 CAPTURE                          REF R11
       61 SETTABLEKS                       R13 R2 K11 ["stopLoggingProfilingEvents"]
       63 NEWCLOSURE                       R13 P3
       64 CAPTURE                          VAL R5
       65 CAPTURE                          REF R10
       66 CAPTURE                          VAL R12
       67 SETTABLEKS                       R13 R2 K12 ["markTaskStart"]
       69 NEWCLOSURE                       R13 P4
       70 CAPTURE                          VAL R5
       71 CAPTURE                          REF R10
       72 CAPTURE                          VAL R12
       73 SETTABLEKS                       R13 R2 K13 ["markTaskCompleted"]
       75 NEWCLOSURE                       R13 P5
       76 CAPTURE                          VAL R5
       77 CAPTURE                          REF R10
       78 CAPTURE                          VAL R12
       79 SETTABLEKS                       R13 R2 K14 ["markTaskCanceled"]
       81 NEWCLOSURE                       R13 P6
       82 CAPTURE                          VAL R5
       83 CAPTURE                          REF R10
       84 CAPTURE                          VAL R12
       85 SETTABLEKS                       R13 R2 K15 ["markTaskErrored"]
       87 NEWCLOSURE                       R13 P7
       88 CAPTURE                          VAL R5
       89 CAPTURE                          REF R6
       90 CAPTURE                          REF R10
       91 CAPTURE                          VAL R12
       92 SETTABLEKS                       R13 R2 K16 ["markTaskRun"]
       94 NEWCLOSURE                       R13 P8
       95 CAPTURE                          VAL R5
       96 CAPTURE                          REF R10
       97 CAPTURE                          VAL R12
       98 CAPTURE                          REF R6
       99 SETTABLEKS                       R13 R2 K17 ["markTaskYield"]
      101 NEWCLOSURE                       R13 P9
      102 CAPTURE                          VAL R5
      103 CAPTURE                          REF R7
      104 CAPTURE                          REF R10
      105 CAPTURE                          VAL R12
      106 SETTABLEKS                       R13 R2 K18 ["markSchedulerSuspended"]
      108 NEWCLOSURE                       R13 P10
      109 CAPTURE                          VAL R5
      110 CAPTURE                          REF R10
      111 CAPTURE                          VAL R12
      112 CAPTURE                          REF R7
      113 SETTABLEKS                       R13 R2 K19 ["markSchedulerUnsuspended"]
      115 CLOSEUPVALS                      R6
      116 RETURN                           R2 1
