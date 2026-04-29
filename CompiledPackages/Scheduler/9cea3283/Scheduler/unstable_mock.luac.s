MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Tracing"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["TracingSubscriptions"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["Scheduler"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R7 K3 [script]
       32 GETTABLEKS                       R6 R7 K4 ["Parent"]
       34 GETTABLEKS                       R5 R6 K9 ["forks"]
       36 GETTABLEKS                       R4 R5 K8 ["SchedulerHostConfig.mock"]
       38 CALL                             R3 1 1
       39 MOVE                             R4 R2
       40 MOVE                             R5 R3
       41 CALL                             R4 1 1
       42 NEWTABLE                         R5 16 0
       44 NEWTABLE                         R6 0 0
       46 SETTABLEKS                       R6 R5 K10 ["tracing"]
       48 MOVE                             R6 R4
       49 LOADNIL                          R7
       50 LOADNIL                          R8
       51 FORGPREP                         R6
       52 SETTABLE                         R10 R5 R9
       53 FORGLOOP                         R6 2 ; [-2]
       55 MOVE                             R6 R0
       56 LOADNIL                          R7
       57 LOADNIL                          R8
       58 FORGPREP                         R6
       59 GETTABLEKS                       R11 R5 K10 ["tracing"]
       61 SETTABLE                         R10 R11 R9
       62 FORGLOOP                         R6 2 ; [-4]
       64 MOVE                             R6 R1
       65 LOADNIL                          R7
       66 LOADNIL                          R8
       67 FORGPREP                         R6
       68 GETTABLEKS                       R11 R5 K10 ["tracing"]
       70 SETTABLE                         R10 R11 R9
       71 FORGLOOP                         R6 2 ; [-4]
       73 GETTABLEKS                       R6 R3 K11 ["unstable_flushAllWithoutAsserting"]
       75 SETTABLEKS                       R6 R5 K11 ["unstable_flushAllWithoutAsserting"]
       77 GETTABLEKS                       R6 R3 K12 ["unstable_flushNumberOfYields"]
       79 SETTABLEKS                       R6 R5 K12 ["unstable_flushNumberOfYields"]
       81 GETTABLEKS                       R6 R3 K13 ["unstable_flushExpired"]
       83 SETTABLEKS                       R6 R5 K13 ["unstable_flushExpired"]
       85 GETTABLEKS                       R6 R3 K14 ["unstable_clearYields"]
       87 SETTABLEKS                       R6 R5 K14 ["unstable_clearYields"]
       89 GETTABLEKS                       R6 R3 K15 ["unstable_flushUntilNextPaint"]
       91 SETTABLEKS                       R6 R5 K15 ["unstable_flushUntilNextPaint"]
       93 GETTABLEKS                       R6 R3 K16 ["unstable_flushAll"]
       95 SETTABLEKS                       R6 R5 K16 ["unstable_flushAll"]
       97 GETTABLEKS                       R6 R3 K17 ["unstable_yieldValue"]
       99 SETTABLEKS                       R6 R5 K17 ["unstable_yieldValue"]
      101 GETTABLEKS                       R6 R3 K18 ["unstable_advanceTime"]
      103 SETTABLEKS                       R6 R5 K18 ["unstable_advanceTime"]
      105 GETTABLEKS                       R6 R4 K19 ["unstable_Profiling"]
      107 SETTABLEKS                       R6 R5 K19 ["unstable_Profiling"]
      109 RETURN                           R5 1
