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
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETIMPORT                        R4 K1 [script]
       14 GETTABLEKS                       R3 R4 K6 ["Scheduler"]
       16 CALL                             R2 1 1
       17 DUPCLOSURE                       R3 K7 [PROTO_1]
       18 MOVE                             R4 R2
       19 LOADNIL                          R5
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K4 [require]
       23 GETIMPORT                        R7 K1 [script]
       25 GETTABLEKS                       R6 R7 K8 ["Tracing"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K4 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R7 R8 K9 ["TracingSubscriptions"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R1 K10 ["__ROACT_17_MOCK_SCHEDULER__"]
       37 JUMPIFNOT                        R7 ; [+8]
       38 GETIMPORT                        R7 K4 [require]
       40 GETIMPORT                        R9 K1 [script]
       42 GETTABLEKS                       R8 R9 K11 ["unstable_mock"]
       44 CALL                             R7 1 -1
       45 RETURN                           R7 -1
       46 DUPTABLE                         R7 K41 [{"unstable_ImmediatePriority", "unstable_UserBlockingPriority", "unstable_NormalPriority", "unstable_IdlePriority", "unstable_LowPriority", "unstable_runWithPriority", "unstable_next", "unstable_scheduleCallback", "unstable_cancelCallback", "unstable_wrapCallback", "unstable_getCurrentPriorityLevel", "unstable_shouldYield", "unstable_requestPaint", "unstable_continueExecution", "unstable_pauseExecution", "unstable_getFirstCallbackNode", "unstable_now", "unstable_forceFrameRate", "unstable_setSchedulerFlags", "unstable_getSchedulerFlags", "unstable_flushAllWithoutAsserting", "unstable_flushAll", "unstable_flushNumberOfYields", "unstable_clearYields", "unstable_flushUntilNextPaint", "unstable_advanceTime", "unstable_flushExpired", "unstable_yieldValue", "tracing"}]
       47 GETTABLEKS                       R8 R4 K12 ["unstable_ImmediatePriority"]
       49 SETTABLEKS                       R8 R7 K12 ["unstable_ImmediatePriority"]
       51 GETTABLEKS                       R8 R4 K13 ["unstable_UserBlockingPriority"]
       53 SETTABLEKS                       R8 R7 K13 ["unstable_UserBlockingPriority"]
       55 GETTABLEKS                       R8 R4 K14 ["unstable_NormalPriority"]
       57 SETTABLEKS                       R8 R7 K14 ["unstable_NormalPriority"]
       59 GETTABLEKS                       R8 R4 K15 ["unstable_IdlePriority"]
       61 SETTABLEKS                       R8 R7 K15 ["unstable_IdlePriority"]
       63 GETTABLEKS                       R8 R4 K16 ["unstable_LowPriority"]
       65 SETTABLEKS                       R8 R7 K16 ["unstable_LowPriority"]
       67 GETTABLEKS                       R8 R4 K17 ["unstable_runWithPriority"]
       69 SETTABLEKS                       R8 R7 K17 ["unstable_runWithPriority"]
       71 GETTABLEKS                       R8 R4 K18 ["unstable_next"]
       73 SETTABLEKS                       R8 R7 K18 ["unstable_next"]
       75 GETTABLEKS                       R8 R4 K19 ["unstable_scheduleCallback"]
       77 SETTABLEKS                       R8 R7 K19 ["unstable_scheduleCallback"]
       79 GETTABLEKS                       R8 R4 K20 ["unstable_cancelCallback"]
       81 SETTABLEKS                       R8 R7 K20 ["unstable_cancelCallback"]
       83 GETTABLEKS                       R8 R4 K21 ["unstable_wrapCallback"]
       85 SETTABLEKS                       R8 R7 K21 ["unstable_wrapCallback"]
       87 GETTABLEKS                       R8 R4 K22 ["unstable_getCurrentPriorityLevel"]
       89 SETTABLEKS                       R8 R7 K22 ["unstable_getCurrentPriorityLevel"]
       91 GETTABLEKS                       R8 R4 K23 ["unstable_shouldYield"]
       93 SETTABLEKS                       R8 R7 K23 ["unstable_shouldYield"]
       95 GETTABLEKS                       R8 R4 K24 ["unstable_requestPaint"]
       97 SETTABLEKS                       R8 R7 K24 ["unstable_requestPaint"]
       99 GETTABLEKS                       R8 R4 K25 ["unstable_continueExecution"]
      101 SETTABLEKS                       R8 R7 K25 ["unstable_continueExecution"]
      103 GETTABLEKS                       R8 R4 K26 ["unstable_pauseExecution"]
      105 SETTABLEKS                       R8 R7 K26 ["unstable_pauseExecution"]
      107 GETTABLEKS                       R8 R4 K27 ["unstable_getFirstCallbackNode"]
      109 SETTABLEKS                       R8 R7 K27 ["unstable_getFirstCallbackNode"]
      111 GETTABLEKS                       R8 R4 K28 ["unstable_now"]
      113 SETTABLEKS                       R8 R7 K28 ["unstable_now"]
      115 GETTABLEKS                       R8 R4 K29 ["unstable_forceFrameRate"]
      117 SETTABLEKS                       R8 R7 K29 ["unstable_forceFrameRate"]
      119 GETTABLEKS                       R8 R4 K30 ["unstable_setSchedulerFlags"]
      121 SETTABLEKS                       R8 R7 K30 ["unstable_setSchedulerFlags"]
      123 GETTABLEKS                       R8 R4 K31 ["unstable_getSchedulerFlags"]
      125 SETTABLEKS                       R8 R7 K31 ["unstable_getSchedulerFlags"]
      127 LOADK                            R9 K32 ["unstable_flushAllWithoutAsserting"]
      128 NEWCLOSURE                       R8 P1
      129 CAPTURE                          VAL R9
      130 SETTABLEKS                       R8 R7 K32 ["unstable_flushAllWithoutAsserting"]
      132 LOADK                            R9 K33 ["unstable_flushAll"]
      133 NEWCLOSURE                       R8 P1
      134 CAPTURE                          VAL R9
      135 SETTABLEKS                       R8 R7 K33 ["unstable_flushAll"]
      137 LOADK                            R9 K34 ["unstable_flushNumberOfYields"]
      138 NEWCLOSURE                       R8 P1
      139 CAPTURE                          VAL R9
      140 SETTABLEKS                       R8 R7 K34 ["unstable_flushNumberOfYields"]
      142 LOADK                            R9 K35 ["unstable_clearYields"]
      143 NEWCLOSURE                       R8 P1
      144 CAPTURE                          VAL R9
      145 SETTABLEKS                       R8 R7 K35 ["unstable_clearYields"]
      147 LOADK                            R9 K35 ["unstable_clearYields"]
      148 NEWCLOSURE                       R8 P1
      149 CAPTURE                          VAL R9
      150 SETTABLEKS                       R8 R7 K36 ["unstable_flushUntilNextPaint"]
      152 LOADK                            R9 K37 ["unstable_advanceTime"]
      153 NEWCLOSURE                       R8 P1
      154 CAPTURE                          VAL R9
      155 SETTABLEKS                       R8 R7 K37 ["unstable_advanceTime"]
      157 LOADK                            R9 K38 ["unstable_flushExpired"]
      158 NEWCLOSURE                       R8 P1
      159 CAPTURE                          VAL R9
      160 SETTABLEKS                       R8 R7 K38 ["unstable_flushExpired"]
      162 LOADK                            R9 K39 ["unstable_yieldValue"]
      163 NEWCLOSURE                       R8 P1
      164 CAPTURE                          VAL R9
      165 SETTABLEKS                       R8 R7 K39 ["unstable_yieldValue"]
      167 DUPTABLE                         R8 K45 [{"unstable_wrap", "__interactionsRef", "__subscriberRef"}]
      168 LOADK                            R10 K42 ["unstable_wrap"]
      169 NEWCLOSURE                       R9 P1
      170 CAPTURE                          VAL R10
      171 SETTABLEKS                       R9 R8 K42 ["unstable_wrap"]
      173 NEWTABLE                         R9 0 0
      175 SETTABLEKS                       R9 R8 K43 ["__interactionsRef"]
      177 NEWTABLE                         R9 0 0
      179 SETTABLEKS                       R9 R8 K44 ["__subscriberRef"]
      181 SETTABLEKS                       R8 R7 K40 ["tracing"]
      183 MOVE                             R8 R5
      184 LOADNIL                          R9
      185 LOADNIL                          R10
      186 FORGPREP                         R8
      187 GETTABLEKS                       R13 R7 K40 ["tracing"]
      189 SETTABLE                         R12 R13 R11
      190 FORGLOOP                         R8 2 ; [-4]
      192 MOVE                             R8 R6
      193 LOADNIL                          R9
      194 LOADNIL                          R10
      195 FORGPREP                         R8
      196 GETTABLEKS                       R13 R7 K40 ["tracing"]
      198 SETTABLE                         R12 R13 R11
      199 FORGLOOP                         R8 2 ; [-4]
      201 RETURN                           R7 1
