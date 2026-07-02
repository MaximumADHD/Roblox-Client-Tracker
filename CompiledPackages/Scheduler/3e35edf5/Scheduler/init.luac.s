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
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Scheduler"]
        7 CALL                             R0 1 1
        8 DUPCLOSURE                       R1 K5 [PROTO_1]
        9 MOVE                             R2 R0
       10 LOADNIL                          R3
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K1 [require]
       14 GETIMPORT                        R4 K3 [script]
       16 GETTABLEKS                       R4 R4 K6 ["Tracing"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R5 R5 K7 ["TracingSubscriptions"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K9 [_G]
       28 GETTABLEKS                       R5 R5 K10 ["__ROACT_17_MOCK_SCHEDULER__"]
       30 JUMPIFNOT                        R5 ; [+8]
       31 GETIMPORT                        R5 K1 [require]
       33 GETIMPORT                        R6 K3 [script]
       35 GETTABLEKS                       R6 R6 K11 ["unstable_mock"]
       37 CALL                             R5 1 -1
       38 RETURN                           R5 -1
       39 DUPTABLE                         R5 K40 [{"unstable_ImmediatePriority", "unstable_UserBlockingPriority", "unstable_NormalPriority", "unstable_IdlePriority", "unstable_LowPriority", "unstable_runWithPriority", "unstable_next", "unstable_scheduleCallback", "unstable_cancelCallback", "unstable_wrapCallback", "unstable_getCurrentPriorityLevel", "unstable_shouldYield", "unstable_requestPaint", "unstable_continueExecution", "unstable_pauseExecution", "unstable_getFirstCallbackNode", "unstable_now", "unstable_forceFrameRate", "unstable_setSchedulerFlags", "unstable_flushAllWithoutAsserting", "unstable_flushAll", "unstable_flushNumberOfYields", "unstable_clearYields", "unstable_flushUntilNextPaint", "unstable_advanceTime", "unstable_flushExpired", "unstable_yieldValue", "tracing"}]
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
      116 LOADK                            R7 K31 ["unstable_flushAllWithoutAsserting"]
      117 NEWCLOSURE                       R6 P1
      118 CAPTURE                          VAL R7
      119 SETTABLEKS                       R6 R5 K31 ["unstable_flushAllWithoutAsserting"]
      121 LOADK                            R7 K32 ["unstable_flushAll"]
      122 NEWCLOSURE                       R6 P1
      123 CAPTURE                          VAL R7
      124 SETTABLEKS                       R6 R5 K32 ["unstable_flushAll"]
      126 LOADK                            R7 K33 ["unstable_flushNumberOfYields"]
      127 NEWCLOSURE                       R6 P1
      128 CAPTURE                          VAL R7
      129 SETTABLEKS                       R6 R5 K33 ["unstable_flushNumberOfYields"]
      131 LOADK                            R7 K34 ["unstable_clearYields"]
      132 NEWCLOSURE                       R6 P1
      133 CAPTURE                          VAL R7
      134 SETTABLEKS                       R6 R5 K34 ["unstable_clearYields"]
      136 LOADK                            R7 K34 ["unstable_clearYields"]
      137 NEWCLOSURE                       R6 P1
      138 CAPTURE                          VAL R7
      139 SETTABLEKS                       R6 R5 K35 ["unstable_flushUntilNextPaint"]
      141 LOADK                            R7 K36 ["unstable_advanceTime"]
      142 NEWCLOSURE                       R6 P1
      143 CAPTURE                          VAL R7
      144 SETTABLEKS                       R6 R5 K36 ["unstable_advanceTime"]
      146 LOADK                            R7 K37 ["unstable_flushExpired"]
      147 NEWCLOSURE                       R6 P1
      148 CAPTURE                          VAL R7
      149 SETTABLEKS                       R6 R5 K37 ["unstable_flushExpired"]
      151 LOADK                            R7 K38 ["unstable_yieldValue"]
      152 NEWCLOSURE                       R6 P1
      153 CAPTURE                          VAL R7
      154 SETTABLEKS                       R6 R5 K38 ["unstable_yieldValue"]
      156 DUPTABLE                         R6 K44 [{"unstable_wrap", "__interactionsRef", "__subscriberRef"}]
      157 LOADK                            R8 K41 ["unstable_wrap"]
      158 NEWCLOSURE                       R7 P1
      159 CAPTURE                          VAL R8
      160 SETTABLEKS                       R7 R6 K41 ["unstable_wrap"]
      162 NEWTABLE                         R7 0 0
      164 SETTABLEKS                       R7 R6 K42 ["__interactionsRef"]
      166 NEWTABLE                         R7 0 0
      168 SETTABLEKS                       R7 R6 K43 ["__subscriberRef"]
      170 SETTABLEKS                       R6 R5 K39 ["tracing"]
      172 MOVE                             R6 R3
      173 LOADNIL                          R7
      174 LOADNIL                          R8
      175 FORGPREP                         R6
      176 GETTABLEKS                       R11 R5 K39 ["tracing"]
      178 SETTABLE                         R10 R11 R9
      179 FORGLOOP                         R6 2 ; [-4]
      181 MOVE                             R6 R4
      182 LOADNIL                          R7
      183 LOADNIL                          R8
      184 FORGPREP                         R6
      185 GETTABLEKS                       R11 R5 K39 ["tracing"]
      187 SETTABLE                         R10 R11 R9
      188 FORGLOOP                         R6 2 ; [-4]
      190 RETURN                           R5 1
