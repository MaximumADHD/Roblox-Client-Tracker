PROTO_0:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R2 0
        3 LOADK                            R3 K2 [" is only available in tests, not in production"]
        4 CONCAT                           R1 R2 R3
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["Scheduler"]
        7 CALL                             R0 1 1
        8 DUPCLOSURE                       R1 K5 [PROTO_1]
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K1 [require]
       14 GETIMPORT                        R5 K3 [script]
       16 GETTABLEKS                       R4 R5 K6 ["Tracing"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K1 [require]
       21 GETIMPORT                        R6 K3 [script]
       23 GETTABLEKS                       R5 R6 K7 ["TracingSubscriptions"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R6 K9 [_G]
       28 GETTABLEKS                       R5 R6 K10 ["__ROACT_17_MOCK_SCHEDULER__"]
       30 JUMPIFNOT                        R5 ; [+8]
       31 GETIMPORT                        R5 K1 [require]
       33 GETIMPORT                        R7 K3 [script]
       35 GETTABLEKS                       R6 R7 K11 ["unstable_mock"]
       37 CALL                             R5 1 -1
       38 RETURN                           R5 -1
       39 DUPTABLE                         R5 K41 [{"unstable_ImmediatePriority", "unstable_UserBlockingPriority", "unstable_NormalPriority", "unstable_IdlePriority", "unstable_LowPriority", "unstable_runWithPriority", "unstable_next", "unstable_scheduleCallback", "unstable_cancelCallback", "unstable_wrapCallback", "unstable_getCurrentPriorityLevel", "unstable_shouldYield", "unstable_requestPaint", "unstable_continueExecution", "unstable_pauseExecution", "unstable_getFirstCallbackNode", "unstable_now", "unstable_forceFrameRate", "unstable_setSchedulerFlags", "unstable_getSchedulerFlags", "unstable_flushAllWithoutAsserting", "unstable_flushAll", "unstable_flushNumberOfYields", "unstable_clearYields", "unstable_flushUntilNextPaint", "unstable_advanceTime", "unstable_flushExpired", "unstable_yieldValue", "tracing"}]
       40 GETTABLEKS                       R6 R2 K12 ["unstable_ImmediatePriority"]
       42 SETTABLEKS                       R6 R5 K12 ["unstable_ImmediatePriority"]
       44 GETTABLEKS                       R6 R2 K13 ["unstable_UserBlockingPriority"]
       46 SETTABLEKS                       R6 R5 K13 ["unstable_UserBlockingPriority"]
       48 GETTABLEKS                       R6 R2 K14 ["unstable_NormalPriority"]
       50 SETTABLEKS                       R6 R5 K14 ["unstable_NormalPriority"]
       52 GETTABLEKS                       R6 R2 K15 ["unstable_IdlePriority"]
       54 SETTABLEKS                       R6 R5 K15 ["unstable_IdlePriority"]
       56 GETTABLEKS                       R6 R2 K16 ["unstable_LowPriority"]
       58 SETTABLEKS                       R6 R5 K16 ["unstable_LowPriority"]
       60 GETTABLEKS                       R6 R2 K17 ["unstable_runWithPriority"]
       62 SETTABLEKS                       R6 R5 K17 ["unstable_runWithPriority"]
       64 GETTABLEKS                       R6 R2 K18 ["unstable_next"]
       66 SETTABLEKS                       R6 R5 K18 ["unstable_next"]
       68 GETTABLEKS                       R6 R2 K19 ["unstable_scheduleCallback"]
       70 SETTABLEKS                       R6 R5 K19 ["unstable_scheduleCallback"]
       72 GETTABLEKS                       R6 R2 K20 ["unstable_cancelCallback"]
       74 SETTABLEKS                       R6 R5 K20 ["unstable_cancelCallback"]
       76 GETTABLEKS                       R6 R2 K21 ["unstable_wrapCallback"]
       78 SETTABLEKS                       R6 R5 K21 ["unstable_wrapCallback"]
       80 GETTABLEKS                       R6 R2 K22 ["unstable_getCurrentPriorityLevel"]
       82 SETTABLEKS                       R6 R5 K22 ["unstable_getCurrentPriorityLevel"]
       84 GETTABLEKS                       R6 R2 K23 ["unstable_shouldYield"]
       86 SETTABLEKS                       R6 R5 K23 ["unstable_shouldYield"]
       88 GETTABLEKS                       R6 R2 K24 ["unstable_requestPaint"]
       90 SETTABLEKS                       R6 R5 K24 ["unstable_requestPaint"]
       92 GETTABLEKS                       R6 R2 K25 ["unstable_continueExecution"]
       94 SETTABLEKS                       R6 R5 K25 ["unstable_continueExecution"]
       96 GETTABLEKS                       R6 R2 K26 ["unstable_pauseExecution"]
       98 SETTABLEKS                       R6 R5 K26 ["unstable_pauseExecution"]
      100 GETTABLEKS                       R6 R2 K27 ["unstable_getFirstCallbackNode"]
      102 SETTABLEKS                       R6 R5 K27 ["unstable_getFirstCallbackNode"]
      104 GETTABLEKS                       R6 R2 K28 ["unstable_now"]
      106 SETTABLEKS                       R6 R5 K28 ["unstable_now"]
      108 GETTABLEKS                       R6 R2 K29 ["unstable_forceFrameRate"]
      110 SETTABLEKS                       R6 R5 K29 ["unstable_forceFrameRate"]
      112 GETTABLEKS                       R6 R2 K30 ["unstable_setSchedulerFlags"]
      114 SETTABLEKS                       R6 R5 K30 ["unstable_setSchedulerFlags"]
      116 GETTABLEKS                       R6 R2 K31 ["unstable_getSchedulerFlags"]
      118 SETTABLEKS                       R6 R5 K31 ["unstable_getSchedulerFlags"]
      120 LOADK                            R7 K32 ["unstable_flushAllWithoutAsserting"]
      121 NEWCLOSURE                       R6 P1
      122 CAPTURE                          VAL R7
      123 SETTABLEKS                       R6 R5 K32 ["unstable_flushAllWithoutAsserting"]
      125 LOADK                            R7 K33 ["unstable_flushAll"]
      126 NEWCLOSURE                       R6 P1
      127 CAPTURE                          VAL R7
      128 SETTABLEKS                       R6 R5 K33 ["unstable_flushAll"]
      130 LOADK                            R7 K34 ["unstable_flushNumberOfYields"]
      131 NEWCLOSURE                       R6 P1
      132 CAPTURE                          VAL R7
      133 SETTABLEKS                       R6 R5 K34 ["unstable_flushNumberOfYields"]
      135 LOADK                            R7 K35 ["unstable_clearYields"]
      136 NEWCLOSURE                       R6 P1
      137 CAPTURE                          VAL R7
      138 SETTABLEKS                       R6 R5 K35 ["unstable_clearYields"]
      140 LOADK                            R7 K35 ["unstable_clearYields"]
      141 NEWCLOSURE                       R6 P1
      142 CAPTURE                          VAL R7
      143 SETTABLEKS                       R6 R5 K36 ["unstable_flushUntilNextPaint"]
      145 LOADK                            R7 K37 ["unstable_advanceTime"]
      146 NEWCLOSURE                       R6 P1
      147 CAPTURE                          VAL R7
      148 SETTABLEKS                       R6 R5 K37 ["unstable_advanceTime"]
      150 LOADK                            R7 K38 ["unstable_flushExpired"]
      151 NEWCLOSURE                       R6 P1
      152 CAPTURE                          VAL R7
      153 SETTABLEKS                       R6 R5 K38 ["unstable_flushExpired"]
      155 LOADK                            R7 K39 ["unstable_yieldValue"]
      156 NEWCLOSURE                       R6 P1
      157 CAPTURE                          VAL R7
      158 SETTABLEKS                       R6 R5 K39 ["unstable_yieldValue"]
      160 DUPTABLE                         R6 K45 [{"unstable_wrap", "__interactionsRef", "__subscriberRef"}]
      161 LOADK                            R8 K42 ["unstable_wrap"]
      162 NEWCLOSURE                       R7 P1
      163 CAPTURE                          VAL R8
      164 SETTABLEKS                       R7 R6 K42 ["unstable_wrap"]
      166 NEWTABLE                         R7 0 0
      168 SETTABLEKS                       R7 R6 K43 ["__interactionsRef"]
      170 NEWTABLE                         R7 0 0
      172 SETTABLEKS                       R7 R6 K44 ["__subscriberRef"]
      174 SETTABLEKS                       R6 R5 K40 ["tracing"]
      176 MOVE                             R6 R3
      177 LOADNIL                          R7
      178 LOADNIL                          R8
      179 FORGPREP                         R6
      180 GETTABLEKS                       R11 R5 K40 ["tracing"]
      182 SETTABLE                         R10 R11 R9
      183 FORGLOOP                         R6 2 ; [-4]
      185 MOVE                             R6 R4
      186 LOADNIL                          R7
      187 LOADNIL                          R8
      188 FORGPREP                         R6
      189 GETTABLEKS                       R11 R5 K40 ["tracing"]
      191 SETTABLE                         R10 R11 R9
      192 FORGLOOP                         R6 2 ; [-4]
      194 RETURN                           R5 1
