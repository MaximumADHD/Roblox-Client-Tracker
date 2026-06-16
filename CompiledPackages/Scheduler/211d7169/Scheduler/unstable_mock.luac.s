MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Tracing"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["TracingSubscriptions"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["Scheduler"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R5 K3 [script]
       32 GETTABLEKS                       R5 R5 K4 ["Parent"]
       34 GETTABLEKS                       R5 R5 K9 ["forks"]
       36 GETTABLEKS                       R4 R5 K8 ["SchedulerHostConfig.mock"]
       38 CALL                             R3 1 1
       39 MOVE                             R4 R2
       40 MOVE                             R5 R3
       41 CALL                             R4 1 1
       42 NEWTABLE                         R5 16 0
       44 NEWTABLE                         R6 0 0
       46 SETTABLEKS                       R6 R5 K10 ["tracing"]
       48 GETIMPORT                        R6 K12 [pairs]
       50 MOVE                             R7 R4
       51 CALL                             R6 1 3
       52 FORGPREP_NEXT                    R6
       53 SETTABLE                         R10 R5 R9
       54 FORGLOOP                         R6 2 ; [-2]
       56 GETIMPORT                        R6 K12 [pairs]
       58 MOVE                             R7 R0
       59 CALL                             R6 1 3
       60 FORGPREP_NEXT                    R6
       61 GETTABLEKS                       R11 R5 K10 ["tracing"]
       63 SETTABLE                         R10 R11 R9
       64 FORGLOOP                         R6 2 ; [-4]
       66 GETIMPORT                        R6 K12 [pairs]
       68 MOVE                             R7 R1
       69 CALL                             R6 1 3
       70 FORGPREP_NEXT                    R6
       71 GETTABLEKS                       R11 R5 K10 ["tracing"]
       73 SETTABLE                         R10 R11 R9
       74 FORGLOOP                         R6 2 ; [-4]
       76 GETTABLEKS                       R6 R3 K13 ["unstable_flushAllWithoutAsserting"]
       78 SETTABLEKS                       R6 R5 K13 ["unstable_flushAllWithoutAsserting"]
       80 GETTABLEKS                       R6 R3 K14 ["unstable_flushNumberOfYields"]
       82 SETTABLEKS                       R6 R5 K14 ["unstable_flushNumberOfYields"]
       84 GETTABLEKS                       R6 R3 K15 ["unstable_flushExpired"]
       86 SETTABLEKS                       R6 R5 K15 ["unstable_flushExpired"]
       88 GETTABLEKS                       R6 R3 K16 ["unstable_clearYields"]
       90 SETTABLEKS                       R6 R5 K16 ["unstable_clearYields"]
       92 GETTABLEKS                       R6 R3 K17 ["unstable_flushUntilNextPaint"]
       94 SETTABLEKS                       R6 R5 K17 ["unstable_flushUntilNextPaint"]
       96 GETTABLEKS                       R6 R3 K18 ["unstable_flushAll"]
       98 SETTABLEKS                       R6 R5 K18 ["unstable_flushAll"]
      100 GETTABLEKS                       R6 R3 K19 ["unstable_yieldValue"]
      102 SETTABLEKS                       R6 R5 K19 ["unstable_yieldValue"]
      104 GETTABLEKS                       R6 R3 K20 ["unstable_advanceTime"]
      106 SETTABLEKS                       R6 R5 K20 ["unstable_advanceTime"]
      108 GETTABLEKS                       R6 R4 K21 ["unstable_Profiling"]
      110 SETTABLEKS                       R6 R5 K21 ["unstable_Profiling"]
      112 RETURN                           R5 1
