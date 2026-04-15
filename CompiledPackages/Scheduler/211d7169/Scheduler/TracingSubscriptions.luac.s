PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+39]
        2 GETUPVAL                         R1 1
        3 LOADB                            R2 1
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K0 ["keys"]
        8 GETUPVAL                         R3 1
        9 CALL                             R2 1 1
       10 LENGTH                           R1 R2
       11 JUMPIFNOTEQKN                    R1 K1 [1] ; [+29]
       13 GETUPVAL                         R1 3
       14 DUPTABLE                         R2 K8 [{"onInteractionScheduledWorkCompleted", "onInteractionTraced", "onWorkCanceled", "onWorkScheduled", "onWorkStarted", "onWorkStopped"}]
       15 GETGLOBAL                        R3 K2 ["onInteractionScheduledWorkCompleted"]
       17 SETTABLEKS                       R3 R2 K2 ["onInteractionScheduledWorkCompleted"]
       19 GETGLOBAL                        R3 K3 ["onInteractionTraced"]
       21 SETTABLEKS                       R3 R2 K3 ["onInteractionTraced"]
       23 GETGLOBAL                        R3 K4 ["onWorkCanceled"]
       25 SETTABLEKS                       R3 R2 K4 ["onWorkCanceled"]
       27 GETGLOBAL                        R3 K5 ["onWorkScheduled"]
       29 SETTABLEKS                       R3 R2 K5 ["onWorkScheduled"]
       31 GETGLOBAL                        R3 K6 ["onWorkStarted"]
       33 SETTABLEKS                       R3 R2 K6 ["onWorkStarted"]
       35 GETGLOBAL                        R3 K7 ["onWorkStopped"]
       37 SETTABLEKS                       R3 R2 K7 ["onWorkStopped"]
       39 SETTABLEKS                       R2 R1 K9 ["current"]
       41 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+15]
        2 GETUPVAL                         R1 1
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K0 ["keys"]
        8 GETUPVAL                         R3 1
        9 CALL                             R2 1 1
       10 LENGTH                           R1 R2
       11 JUMPIFNOTEQKN                    R1 K1 [0] ; [+5]
       13 GETUPVAL                         R1 3
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K2 ["current"]
       17 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 0
        1 LOADNIL                          R2
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETUPVAL                         R4 0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETIMPORT                        R8 K3 [pcall]
        9 GETTABLEKS                       R9 R6 K4 ["onInteractionTraced"]
       11 MOVE                             R10 R0
       12 CALL                             R8 2 2
       13 JUMPIF                           R8 ; [+3]
       14 JUMPIF                           R1 ; [+2]
       15 LOADB                            R1 1
       16 MOVE                             R2 R9
       17 FORGLOOP                         R3 2 ; [-11]
       19 JUMPIFNOT                        R1 ; [+4]
       20 GETIMPORT                        R3 K6 [error]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 0
        1 LOADNIL                          R2
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETUPVAL                         R4 0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETIMPORT                        R8 K3 [pcall]
        9 GETTABLEKS                       R9 R6 K4 ["onInteractionScheduledWorkCompleted"]
       11 MOVE                             R10 R0
       12 CALL                             R8 2 2
       13 JUMPIF                           R8 ; [+3]
       14 JUMPIF                           R1 ; [+2]
       15 LOADB                            R1 1
       16 MOVE                             R2 R9
       17 FORGLOOP                         R3 2 ; [-11]
       19 JUMPIFNOT                        R1 ; [+4]
       20 GETIMPORT                        R3 K6 [error]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R2 0
        1 LOADNIL                          R3
        2 GETIMPORT                        R4 K1 [pairs]
        4 GETUPVAL                         R5 0
        5 CALL                             R4 1 3
        6 FORGPREP_NEXT                    R4
        7 GETIMPORT                        R9 K3 [pcall]
        9 GETTABLEKS                       R10 R7 K4 ["onWorkScheduled"]
       11 MOVE                             R11 R0
       12 MOVE                             R12 R1
       13 CALL                             R9 3 2
       14 JUMPIF                           R9 ; [+3]
       15 JUMPIF                           R2 ; [+2]
       16 LOADB                            R2 1
       17 MOVE                             R3 R10
       18 FORGLOOP                         R4 2 ; [-12]
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETIMPORT                        R4 K6 [error]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R2 0
        1 LOADNIL                          R3
        2 GETIMPORT                        R4 K1 [pairs]
        4 GETUPVAL                         R5 0
        5 CALL                             R4 1 3
        6 FORGPREP_NEXT                    R4
        7 GETIMPORT                        R9 K3 [pcall]
        9 GETTABLEKS                       R10 R7 K4 ["onWorkStarted"]
       11 MOVE                             R11 R0
       12 MOVE                             R12 R1
       13 CALL                             R9 3 2
       14 JUMPIF                           R9 ; [+3]
       15 JUMPIF                           R2 ; [+2]
       16 LOADB                            R2 1
       17 MOVE                             R3 R10
       18 FORGLOOP                         R4 2 ; [-12]
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETIMPORT                        R4 K6 [error]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R2 0
        1 LOADNIL                          R3
        2 GETIMPORT                        R4 K1 [pairs]
        4 GETUPVAL                         R5 0
        5 CALL                             R4 1 3
        6 FORGPREP_NEXT                    R4
        7 GETIMPORT                        R9 K3 [pcall]
        9 GETTABLEKS                       R10 R7 K4 ["onWorkStopped"]
       11 MOVE                             R11 R0
       12 MOVE                             R12 R1
       13 CALL                             R9 3 2
       14 JUMPIF                           R9 ; [+3]
       15 JUMPIF                           R2 ; [+2]
       16 LOADB                            R2 1
       17 MOVE                             R3 R10
       18 FORGLOOP                         R4 2 ; [-12]
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETIMPORT                        R4 K6 [error]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R2 0
        1 LOADNIL                          R3
        2 GETIMPORT                        R4 K1 [pairs]
        4 GETUPVAL                         R5 0
        5 CALL                             R4 1 3
        6 FORGPREP_NEXT                    R4
        7 GETIMPORT                        R9 K3 [pcall]
        9 GETTABLEKS                       R10 R7 K4 ["onWorkCanceled"]
       11 MOVE                             R11 R0
       12 MOVE                             R12 R1
       13 CALL                             R9 3 2
       14 JUMPIF                           R9 ; [+3]
       15 JUMPIF                           R2 ; [+2]
       16 LOADB                            R2 1
       17 MOVE                             R3 R10
       18 FORGLOOP                         R4 2 ; [-12]
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETIMPORT                        R4 K6 [error]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R3 K1 [script]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R1 K5 ["LuauPolyfill"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R2 R3 K6 ["Object"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R6 K1 [script]
       20 GETTABLEKS                       R5 R6 K2 ["Parent"]
       22 GETTABLEKS                       R4 R5 K7 ["Tracing"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R5 K4 [require]
       27 GETTABLEKS                       R6 R1 K8 ["Shared"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R4 R5 K9 ["ReactFeatureFlags"]
       32 GETTABLEKS                       R5 R4 K10 ["enableSchedulerTracing"]
       34 GETTABLEKS                       R6 R3 K11 ["__subscriberRef"]
       36 NEWTABLE                         R7 0 0
       38 JUMPIFNOT                        R5 ; [+2]
       39 NEWTABLE                         R7 0 0
       41 NEWCLOSURE                       R8 P0
       42 CAPTURE                          VAL R5
       43 CAPTURE                          REF R7
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R6
       46 SETTABLEKS                       R8 R0 K12 ["unstable_subscribe"]
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          REF R7
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 SETTABLEKS                       R8 R0 K13 ["unstable_unsubscribe"]
       55 NEWCLOSURE                       R8 P2
       56 CAPTURE                          REF R7
       57 SETGLOBAL                        R8 K14 ["onInteractionTraced"]
       59 NEWCLOSURE                       R8 P3
       60 CAPTURE                          REF R7
       61 SETGLOBAL                        R8 K15 ["onInteractionScheduledWorkCompleted"]
       63 NEWCLOSURE                       R8 P4
       64 CAPTURE                          REF R7
       65 SETGLOBAL                        R8 K16 ["onWorkScheduled"]
       67 NEWCLOSURE                       R8 P5
       68 CAPTURE                          REF R7
       69 SETGLOBAL                        R8 K17 ["onWorkStarted"]
       71 NEWCLOSURE                       R8 P6
       72 CAPTURE                          REF R7
       73 SETGLOBAL                        R8 K18 ["onWorkStopped"]
       75 NEWCLOSURE                       R8 P7
       76 CAPTURE                          REF R7
       77 SETGLOBAL                        R8 K19 ["onWorkCanceled"]
       79 CLOSEUPVALS                      R7
       80 RETURN                           R0 1
