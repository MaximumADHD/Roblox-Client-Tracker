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
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["ReactGlobals"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Scheduler"]
  CALL R2 1 1
  DUPCLOSURE R3 K7 [PROTO_1]
  MOVE R4 R2
  LOADNIL R5
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K8 ["Tracing"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K9 ["TracingSubscriptions"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K10 ["__ROACT_17_MOCK_SCHEDULER__"]
  JUMPIFNOT R7 [+8]
  GETIMPORT R7 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K11 ["unstable_mock"]
  CALL R7 1 -1
  RETURN R7 -1
  DUPTABLE R7 K41 [{"unstable_ImmediatePriority", "unstable_UserBlockingPriority", "unstable_NormalPriority", "unstable_IdlePriority", "unstable_LowPriority", "unstable_runWithPriority", "unstable_next", "unstable_scheduleCallback", "unstable_cancelCallback", "unstable_wrapCallback", "unstable_getCurrentPriorityLevel", "unstable_shouldYield", "unstable_requestPaint", "unstable_continueExecution", "unstable_pauseExecution", "unstable_getFirstCallbackNode", "unstable_now", "unstable_forceFrameRate", "unstable_setSchedulerFlags", "unstable_getSchedulerFlags", "unstable_flushAllWithoutAsserting", "unstable_flushAll", "unstable_flushNumberOfYields", "unstable_clearYields", "unstable_flushUntilNextPaint", "unstable_advanceTime", "unstable_flushExpired", "unstable_yieldValue", "tracing"}]
  GETTABLEKS R8 R4 K12 ["unstable_ImmediatePriority"]
  SETTABLEKS R8 R7 K12 ["unstable_ImmediatePriority"]
  GETTABLEKS R8 R4 K13 ["unstable_UserBlockingPriority"]
  SETTABLEKS R8 R7 K13 ["unstable_UserBlockingPriority"]
  GETTABLEKS R8 R4 K14 ["unstable_NormalPriority"]
  SETTABLEKS R8 R7 K14 ["unstable_NormalPriority"]
  GETTABLEKS R8 R4 K15 ["unstable_IdlePriority"]
  SETTABLEKS R8 R7 K15 ["unstable_IdlePriority"]
  GETTABLEKS R8 R4 K16 ["unstable_LowPriority"]
  SETTABLEKS R8 R7 K16 ["unstable_LowPriority"]
  GETTABLEKS R8 R4 K17 ["unstable_runWithPriority"]
  SETTABLEKS R8 R7 K17 ["unstable_runWithPriority"]
  GETTABLEKS R8 R4 K18 ["unstable_next"]
  SETTABLEKS R8 R7 K18 ["unstable_next"]
  GETTABLEKS R8 R4 K19 ["unstable_scheduleCallback"]
  SETTABLEKS R8 R7 K19 ["unstable_scheduleCallback"]
  GETTABLEKS R8 R4 K20 ["unstable_cancelCallback"]
  SETTABLEKS R8 R7 K20 ["unstable_cancelCallback"]
  GETTABLEKS R8 R4 K21 ["unstable_wrapCallback"]
  SETTABLEKS R8 R7 K21 ["unstable_wrapCallback"]
  GETTABLEKS R8 R4 K22 ["unstable_getCurrentPriorityLevel"]
  SETTABLEKS R8 R7 K22 ["unstable_getCurrentPriorityLevel"]
  GETTABLEKS R8 R4 K23 ["unstable_shouldYield"]
  SETTABLEKS R8 R7 K23 ["unstable_shouldYield"]
  GETTABLEKS R8 R4 K24 ["unstable_requestPaint"]
  SETTABLEKS R8 R7 K24 ["unstable_requestPaint"]
  GETTABLEKS R8 R4 K25 ["unstable_continueExecution"]
  SETTABLEKS R8 R7 K25 ["unstable_continueExecution"]
  GETTABLEKS R8 R4 K26 ["unstable_pauseExecution"]
  SETTABLEKS R8 R7 K26 ["unstable_pauseExecution"]
  GETTABLEKS R8 R4 K27 ["unstable_getFirstCallbackNode"]
  SETTABLEKS R8 R7 K27 ["unstable_getFirstCallbackNode"]
  GETTABLEKS R8 R4 K28 ["unstable_now"]
  SETTABLEKS R8 R7 K28 ["unstable_now"]
  GETTABLEKS R8 R4 K29 ["unstable_forceFrameRate"]
  SETTABLEKS R8 R7 K29 ["unstable_forceFrameRate"]
  GETTABLEKS R8 R4 K30 ["unstable_setSchedulerFlags"]
  SETTABLEKS R8 R7 K30 ["unstable_setSchedulerFlags"]
  GETTABLEKS R8 R4 K31 ["unstable_getSchedulerFlags"]
  SETTABLEKS R8 R7 K31 ["unstable_getSchedulerFlags"]
  LOADK R9 K32 ["unstable_flushAllWithoutAsserting"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R9
  SETTABLEKS R8 R7 K32 ["unstable_flushAllWithoutAsserting"]
  LOADK R9 K33 ["unstable_flushAll"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R9
  SETTABLEKS R8 R7 K33 ["unstable_flushAll"]
  LOADK R9 K34 ["unstable_flushNumberOfYields"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R9
  SETTABLEKS R8 R7 K34 ["unstable_flushNumberOfYields"]
  LOADK R9 K35 ["unstable_clearYields"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R9
  SETTABLEKS R8 R7 K35 ["unstable_clearYields"]
  LOADK R9 K35 ["unstable_clearYields"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R9
  SETTABLEKS R8 R7 K36 ["unstable_flushUntilNextPaint"]
  LOADK R9 K37 ["unstable_advanceTime"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R9
  SETTABLEKS R8 R7 K37 ["unstable_advanceTime"]
  LOADK R9 K38 ["unstable_flushExpired"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R9
  SETTABLEKS R8 R7 K38 ["unstable_flushExpired"]
  LOADK R9 K39 ["unstable_yieldValue"]
  NEWCLOSURE R8 P1
  CAPTURE VAL R9
  SETTABLEKS R8 R7 K39 ["unstable_yieldValue"]
  DUPTABLE R8 K45 [{"unstable_wrap", "__interactionsRef", "__subscriberRef"}]
  LOADK R10 K42 ["unstable_wrap"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R10
  SETTABLEKS R9 R8 K42 ["unstable_wrap"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K43 ["__interactionsRef"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K44 ["__subscriberRef"]
  SETTABLEKS R8 R7 K40 ["tracing"]
  MOVE R8 R5
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R13 R7 K40 ["tracing"]
  SETTABLE R12 R13 R11
  FORGLOOP R8 2 [-4]
  MOVE R8 R6
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R13 R7 K40 ["tracing"]
  SETTABLE R12 R13 R11
  FORGLOOP R8 2 [-4]
  RETURN R7 1
