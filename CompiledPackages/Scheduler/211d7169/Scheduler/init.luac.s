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
       10 CALL                             R2 0 1
       11 GETIMPORT                        R3 K1 [require]
       13 GETIMPORT                        R5 K3 [script]
       15 GETTABLEKS                       R4 R5 K6 ["Tracing"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K1 [require]
       20 GETIMPORT                        R6 K3 [script]
       22 GETTABLEKS                       R5 R6 K7 ["TracingSubscriptions"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R6 K9 [_G]
       27 GETTABLEKS                       R5 R6 K10 ["__ROACT_17_MOCK_SCHEDULER__"]
       29 JUMPIFNOT                        R5 ; [+8]
       30 GETIMPORT                        R5 K1 [require]
       32 GETIMPORT                        R7 K3 [script]
       34 GETTABLEKS                       R6 R7 K11 ["unstable_mock"]
       36 CALL                             R5 1 -1
       37 RETURN                           R5 -1
       38 DUPTABLE                         R5 K39 [{"getJestMatchers", "unstable_ImmediatePriority", "unstable_UserBlockingPriority", "unstable_NormalPriority", "unstable_IdlePriority", "unstable_LowPriority", "unstable_runWithPriority", "unstable_next", "unstable_scheduleCallback", "unstable_cancelCallback", "unstable_wrapCallback", "unstable_getCurrentPriorityLevel", "unstable_shouldYield", "unstable_requestPaint", "unstable_continueExecution", "unstable_pauseExecution", "unstable_getFirstCallbackNode", "unstable_now", "unstable_forceFrameRate", "unstable_flushAllWithoutAsserting", "unstable_flushAll", "unstable_flushNumberOfYields", "unstable_clearYields", "unstable_advanceTime", "unstable_flushExpired", "unstable_yieldValue", "tracing"}]
       39 GETTABLEKS                       R6 R2 K40 ["getJestMatcher"]
       41 SETTABLEKS                       R6 R5 K12 ["getJestMatchers"]
       43 GETTABLEKS                       R6 R2 K13 ["unstable_ImmediatePriority"]
       45 SETTABLEKS                       R6 R5 K13 ["unstable_ImmediatePriority"]
       47 GETTABLEKS                       R6 R2 K14 ["unstable_UserBlockingPriority"]
       49 SETTABLEKS                       R6 R5 K14 ["unstable_UserBlockingPriority"]
       51 GETTABLEKS                       R6 R2 K15 ["unstable_NormalPriority"]
       53 SETTABLEKS                       R6 R5 K15 ["unstable_NormalPriority"]
       55 GETTABLEKS                       R6 R2 K16 ["unstable_IdlePriority"]
       57 SETTABLEKS                       R6 R5 K16 ["unstable_IdlePriority"]
       59 GETTABLEKS                       R6 R2 K17 ["unstable_LowPriority"]
       61 SETTABLEKS                       R6 R5 K17 ["unstable_LowPriority"]
       63 GETTABLEKS                       R6 R2 K18 ["unstable_runWithPriority"]
       65 SETTABLEKS                       R6 R5 K18 ["unstable_runWithPriority"]
       67 GETTABLEKS                       R6 R2 K19 ["unstable_next"]
       69 SETTABLEKS                       R6 R5 K19 ["unstable_next"]
       71 GETTABLEKS                       R6 R2 K20 ["unstable_scheduleCallback"]
       73 SETTABLEKS                       R6 R5 K20 ["unstable_scheduleCallback"]
       75 GETTABLEKS                       R6 R2 K21 ["unstable_cancelCallback"]
       77 SETTABLEKS                       R6 R5 K21 ["unstable_cancelCallback"]
       79 GETTABLEKS                       R6 R2 K22 ["unstable_wrapCallback"]
       81 SETTABLEKS                       R6 R5 K22 ["unstable_wrapCallback"]
       83 GETTABLEKS                       R6 R2 K23 ["unstable_getCurrentPriorityLevel"]
       85 SETTABLEKS                       R6 R5 K23 ["unstable_getCurrentPriorityLevel"]
       87 GETTABLEKS                       R6 R2 K24 ["unstable_shouldYield"]
       89 SETTABLEKS                       R6 R5 K24 ["unstable_shouldYield"]
       91 GETTABLEKS                       R6 R2 K25 ["unstable_requestPaint"]
       93 SETTABLEKS                       R6 R5 K25 ["unstable_requestPaint"]
       95 GETTABLEKS                       R6 R2 K26 ["unstable_continueExecution"]
       97 SETTABLEKS                       R6 R5 K26 ["unstable_continueExecution"]
       99 GETTABLEKS                       R6 R2 K27 ["unstable_pauseExecution"]
      101 SETTABLEKS                       R6 R5 K27 ["unstable_pauseExecution"]
      103 GETTABLEKS                       R6 R2 K28 ["unstable_getFirstCallbackNode"]
      105 SETTABLEKS                       R6 R5 K28 ["unstable_getFirstCallbackNode"]
      107 GETTABLEKS                       R6 R2 K29 ["unstable_now"]
      109 SETTABLEKS                       R6 R5 K29 ["unstable_now"]
      111 GETTABLEKS                       R6 R2 K30 ["unstable_forceFrameRate"]
      113 SETTABLEKS                       R6 R5 K30 ["unstable_forceFrameRate"]
      115 LOADK                            R7 K31 ["unstable_flushAllWithoutAsserting"]
      116 NEWCLOSURE                       R6 P1
      117 CAPTURE                          VAL R7
      118 SETTABLEKS                       R6 R5 K31 ["unstable_flushAllWithoutAsserting"]
      120 LOADK                            R7 K32 ["unstable_flushAll"]
      121 NEWCLOSURE                       R6 P1
      122 CAPTURE                          VAL R7
      123 SETTABLEKS                       R6 R5 K32 ["unstable_flushAll"]
      125 LOADK                            R7 K33 ["unstable_flushNumberOfYields"]
      126 NEWCLOSURE                       R6 P1
      127 CAPTURE                          VAL R7
      128 SETTABLEKS                       R6 R5 K33 ["unstable_flushNumberOfYields"]
      130 LOADK                            R7 K34 ["unstable_clearYields"]
      131 NEWCLOSURE                       R6 P1
      132 CAPTURE                          VAL R7
      133 SETTABLEKS                       R6 R5 K34 ["unstable_clearYields"]
      135 LOADK                            R7 K35 ["unstable_advanceTime"]
      136 NEWCLOSURE                       R6 P1
      137 CAPTURE                          VAL R7
      138 SETTABLEKS                       R6 R5 K35 ["unstable_advanceTime"]
      140 LOADK                            R7 K36 ["unstable_flushExpired"]
      141 NEWCLOSURE                       R6 P1
      142 CAPTURE                          VAL R7
      143 SETTABLEKS                       R6 R5 K36 ["unstable_flushExpired"]
      145 LOADK                            R7 K37 ["unstable_yieldValue"]
      146 NEWCLOSURE                       R6 P1
      147 CAPTURE                          VAL R7
      148 SETTABLEKS                       R6 R5 K37 ["unstable_yieldValue"]
      150 DUPTABLE                         R6 K44 [{"unstable_wrap", "__interactionsRef", "__subscriberRef"}]
      151 LOADK                            R8 K41 ["unstable_wrap"]
      152 NEWCLOSURE                       R7 P1
      153 CAPTURE                          VAL R8
      154 SETTABLEKS                       R7 R6 K41 ["unstable_wrap"]
      156 NEWTABLE                         R7 0 0
      158 SETTABLEKS                       R7 R6 K42 ["__interactionsRef"]
      160 NEWTABLE                         R7 0 0
      162 SETTABLEKS                       R7 R6 K43 ["__subscriberRef"]
      164 SETTABLEKS                       R6 R5 K38 ["tracing"]
      166 GETIMPORT                        R6 K46 [pairs]
      168 MOVE                             R7 R3
      169 CALL                             R6 1 3
      170 FORGPREP_NEXT                    R6
      171 GETTABLEKS                       R11 R5 K38 ["tracing"]
      173 SETTABLE                         R10 R11 R9
      174 FORGLOOP                         R6 2 ; [-4]
      176 GETIMPORT                        R6 K46 [pairs]
      178 MOVE                             R7 R4
      179 CALL                             R6 1 3
      180 FORGPREP_NEXT                    R6
      181 GETTABLEKS                       R11 R5 K38 ["tracing"]
      183 SETTABLE                         R10 R11 R9
      184 FORGLOOP                         R6 2 ; [-4]
      186 RETURN                           R5 1
