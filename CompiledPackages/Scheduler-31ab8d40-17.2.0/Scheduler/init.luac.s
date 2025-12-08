PROTO_0:
  GETIMPORT R0 K1 [error]
  GETUPVAL R2 0
  LOADK R3 K2 [" is only available in tests, not in production"]
  CONCAT R1 R2 R3
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Scheduler"]
  CALL R0 1 1
  DUPCLOSURE R1 K5 [PROTO_1]
  MOVE R2 R0
  LOADNIL R3
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K6 ["Tracing"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K7 ["TracingSubscriptions"]
  CALL R4 1 1
  GETIMPORT R6 K9 [_G]
  GETTABLEKS R5 R6 K10 ["__ROACT_17_MOCK_SCHEDULER__"]
  JUMPIFNOT R5 [+8]
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K11 ["unstable_mock"]
  CALL R5 1 -1
  RETURN R5 -1
  DUPTABLE R5 K41 [{"unstable_ImmediatePriority", "unstable_UserBlockingPriority", "unstable_NormalPriority", "unstable_IdlePriority", "unstable_LowPriority", "unstable_runWithPriority", "unstable_next", "unstable_scheduleCallback", "unstable_cancelCallback", "unstable_wrapCallback", "unstable_getCurrentPriorityLevel", "unstable_shouldYield", "unstable_requestPaint", "unstable_continueExecution", "unstable_pauseExecution", "unstable_getFirstCallbackNode", "unstable_now", "unstable_forceFrameRate", "unstable_setSchedulerFlags", "unstable_getSchedulerFlags", "unstable_flushAllWithoutAsserting", "unstable_flushAll", "unstable_flushNumberOfYields", "unstable_clearYields", "unstable_flushUntilNextPaint", "unstable_advanceTime", "unstable_flushExpired", "unstable_yieldValue", "tracing"}]
  GETTABLEKS R6 R2 K12 ["unstable_ImmediatePriority"]
  SETTABLEKS R6 R5 K12 ["unstable_ImmediatePriority"]
  GETTABLEKS R6 R2 K13 ["unstable_UserBlockingPriority"]
  SETTABLEKS R6 R5 K13 ["unstable_UserBlockingPriority"]
  GETTABLEKS R6 R2 K14 ["unstable_NormalPriority"]
  SETTABLEKS R6 R5 K14 ["unstable_NormalPriority"]
  GETTABLEKS R6 R2 K15 ["unstable_IdlePriority"]
  SETTABLEKS R6 R5 K15 ["unstable_IdlePriority"]
  GETTABLEKS R6 R2 K16 ["unstable_LowPriority"]
  SETTABLEKS R6 R5 K16 ["unstable_LowPriority"]
  GETTABLEKS R6 R2 K17 ["unstable_runWithPriority"]
  SETTABLEKS R6 R5 K17 ["unstable_runWithPriority"]
  GETTABLEKS R6 R2 K18 ["unstable_next"]
  SETTABLEKS R6 R5 K18 ["unstable_next"]
  GETTABLEKS R6 R2 K19 ["unstable_scheduleCallback"]
  SETTABLEKS R6 R5 K19 ["unstable_scheduleCallback"]
  GETTABLEKS R6 R2 K20 ["unstable_cancelCallback"]
  SETTABLEKS R6 R5 K20 ["unstable_cancelCallback"]
  GETTABLEKS R6 R2 K21 ["unstable_wrapCallback"]
  SETTABLEKS R6 R5 K21 ["unstable_wrapCallback"]
  GETTABLEKS R6 R2 K22 ["unstable_getCurrentPriorityLevel"]
  SETTABLEKS R6 R5 K22 ["unstable_getCurrentPriorityLevel"]
  GETTABLEKS R6 R2 K23 ["unstable_shouldYield"]
  SETTABLEKS R6 R5 K23 ["unstable_shouldYield"]
  GETTABLEKS R6 R2 K24 ["unstable_requestPaint"]
  SETTABLEKS R6 R5 K24 ["unstable_requestPaint"]
  GETTABLEKS R6 R2 K25 ["unstable_continueExecution"]
  SETTABLEKS R6 R5 K25 ["unstable_continueExecution"]
  GETTABLEKS R6 R2 K26 ["unstable_pauseExecution"]
  SETTABLEKS R6 R5 K26 ["unstable_pauseExecution"]
  GETTABLEKS R6 R2 K27 ["unstable_getFirstCallbackNode"]
  SETTABLEKS R6 R5 K27 ["unstable_getFirstCallbackNode"]
  GETTABLEKS R6 R2 K28 ["unstable_now"]
  SETTABLEKS R6 R5 K28 ["unstable_now"]
  GETTABLEKS R6 R2 K29 ["unstable_forceFrameRate"]
  SETTABLEKS R6 R5 K29 ["unstable_forceFrameRate"]
  GETTABLEKS R6 R2 K30 ["unstable_setSchedulerFlags"]
  SETTABLEKS R6 R5 K30 ["unstable_setSchedulerFlags"]
  GETTABLEKS R6 R2 K31 ["unstable_getSchedulerFlags"]
  SETTABLEKS R6 R5 K31 ["unstable_getSchedulerFlags"]
  LOADK R7 K32 ["unstable_flushAllWithoutAsserting"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R7
  SETTABLEKS R6 R5 K32 ["unstable_flushAllWithoutAsserting"]
  LOADK R7 K33 ["unstable_flushAll"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R7
  SETTABLEKS R6 R5 K33 ["unstable_flushAll"]
  LOADK R7 K34 ["unstable_flushNumberOfYields"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R7
  SETTABLEKS R6 R5 K34 ["unstable_flushNumberOfYields"]
  LOADK R7 K35 ["unstable_clearYields"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R7
  SETTABLEKS R6 R5 K35 ["unstable_clearYields"]
  LOADK R7 K35 ["unstable_clearYields"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R7
  SETTABLEKS R6 R5 K36 ["unstable_flushUntilNextPaint"]
  LOADK R7 K37 ["unstable_advanceTime"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R7
  SETTABLEKS R6 R5 K37 ["unstable_advanceTime"]
  LOADK R7 K38 ["unstable_flushExpired"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R7
  SETTABLEKS R6 R5 K38 ["unstable_flushExpired"]
  LOADK R7 K39 ["unstable_yieldValue"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R7
  SETTABLEKS R6 R5 K39 ["unstable_yieldValue"]
  DUPTABLE R6 K45 [{"unstable_wrap", "__interactionsRef", "__subscriberRef"}]
  LOADK R8 K42 ["unstable_wrap"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R8
  SETTABLEKS R7 R6 K42 ["unstable_wrap"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K43 ["__interactionsRef"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K44 ["__subscriberRef"]
  SETTABLEKS R6 R5 K40 ["tracing"]
  MOVE R6 R3
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R5 K40 ["tracing"]
  SETTABLE R10 R11 R9
  FORGLOOP R6 2 [-4]
  MOVE R6 R4
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R5 K40 ["tracing"]
  SETTABLE R10 R11 R9
  FORGLOOP R6 2 [-4]
  RETURN R5 1
