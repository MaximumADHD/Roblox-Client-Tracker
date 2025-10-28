MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["Tracing"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K7 ["TracingSubscriptions"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K8 ["Scheduler"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K9 ["forks"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 1
  LOADK R6 K10 ["SchedulerHostConfig.mock"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  MOVE R4 R2
  MOVE R5 R3
  CALL R4 1 1
  NEWTABLE R5 16 0
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K11 ["tracing"]
  MOVE R6 R4
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  SETTABLE R10 R5 R9
  FORGLOOP R6 2 [-2]
  MOVE R6 R0
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R5 K11 ["tracing"]
  SETTABLE R10 R11 R9
  FORGLOOP R6 2 [-4]
  MOVE R6 R1
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLEKS R11 R5 K11 ["tracing"]
  SETTABLE R10 R11 R9
  FORGLOOP R6 2 [-4]
  GETTABLEKS R6 R3 K12 ["unstable_flushAllWithoutAsserting"]
  SETTABLEKS R6 R5 K12 ["unstable_flushAllWithoutAsserting"]
  GETTABLEKS R6 R3 K13 ["unstable_flushNumberOfYields"]
  SETTABLEKS R6 R5 K13 ["unstable_flushNumberOfYields"]
  GETTABLEKS R6 R3 K14 ["unstable_flushExpired"]
  SETTABLEKS R6 R5 K14 ["unstable_flushExpired"]
  GETTABLEKS R6 R3 K15 ["unstable_clearYields"]
  SETTABLEKS R6 R5 K15 ["unstable_clearYields"]
  GETTABLEKS R6 R3 K16 ["unstable_flushUntilNextPaint"]
  SETTABLEKS R6 R5 K16 ["unstable_flushUntilNextPaint"]
  GETTABLEKS R6 R3 K17 ["unstable_flushAll"]
  SETTABLEKS R6 R5 K17 ["unstable_flushAll"]
  GETTABLEKS R6 R3 K18 ["unstable_yieldValue"]
  SETTABLEKS R6 R5 K18 ["unstable_yieldValue"]
  GETTABLEKS R6 R3 K19 ["unstable_advanceTime"]
  SETTABLEKS R6 R5 K19 ["unstable_advanceTime"]
  GETTABLEKS R6 R4 K20 ["unstable_Profiling"]
  SETTABLEKS R6 R5 K20 ["unstable_Profiling"]
  RETURN R5 1
