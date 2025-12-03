MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["ReactGlobals"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R1 K6 ["SafeFlags"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K7 ["createGetFFlag"]
  LOADK R5 K8 ["ReactEnableSchedulingProfiler"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K7 ["createGetFFlag"]
  LOADK R6 K9 ["ReactCatchYieldingInDEV"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K7 ["createGetFFlag"]
  LOADK R7 K10 ["ReactFilterInternalStackFrames"]
  CALL R6 1 1
  NEWTABLE R7 32 0
  LOADB R8 0
  SETTABLEKS R8 R7 K11 ["enableDebugTracing"]
  MOVE R8 R4
  CALL R8 0 1
  JUMPIF R8 [+5]
  GETTABLEKS R8 R2 K12 ["__PROFILE__"]
  JUMPIFNOT R8 [+2]
  GETTABLEKS R8 R2 K13 ["__EXPERIMENTAL__"]
  SETTABLEKS R8 R7 K14 ["enableSchedulingProfiler"]
  GETTABLEKS R8 R2 K15 ["__DEV__"]
  JUMPIFNOT R8 [+2]
  MOVE R8 R5
  CALL R8 0 1
  SETTABLEKS R8 R7 K16 ["catchYieldingInDEV"]
  GETTABLEKS R8 R2 K15 ["__DEV__"]
  SETTABLEKS R8 R7 K17 ["debugRenderPhaseSideEffectsForStrictMode"]
  GETTABLEKS R8 R2 K15 ["__DEV__"]
  SETTABLEKS R8 R7 K18 ["replayFailedUnitOfWorkWithInvokeGuardedCallback"]
  LOADB R8 1
  SETTABLEKS R8 R7 K19 ["warnAboutDeprecatedLifecycles"]
  GETTABLEKS R8 R2 K12 ["__PROFILE__"]
  SETTABLEKS R8 R7 K20 ["enableProfilerTimer"]
  GETTABLEKS R8 R2 K12 ["__PROFILE__"]
  SETTABLEKS R8 R7 K21 ["enableProfilerCommitHooks"]
  GETTABLEKS R8 R2 K12 ["__PROFILE__"]
  SETTABLEKS R8 R7 K22 ["enableSchedulerTracing"]
  GETTABLEKS R8 R2 K13 ["__EXPERIMENTAL__"]
  SETTABLEKS R8 R7 K23 ["enableSuspenseServerRenderer"]
  GETTABLEKS R8 R2 K13 ["__EXPERIMENTAL__"]
  SETTABLEKS R8 R7 K24 ["enableBlocksAPI"]
  GETTABLEKS R8 R2 K13 ["__EXPERIMENTAL__"]
  SETTABLEKS R8 R7 K25 ["enableLazyElements"]
  LOADB R8 0
  SETTABLEKS R8 R7 K26 ["enableSchedulerDebugging"]
  LOADB R8 0
  SETTABLEKS R8 R7 K27 ["enableFundamentalAPI"]
  LOADB R8 0
  SETTABLEKS R8 R7 K28 ["enableScopeAPI"]
  LOADB R8 0
  SETTABLEKS R8 R7 K29 ["enableCreateEventHandleAPI"]
  LOADB R8 0
  SETTABLEKS R8 R7 K30 ["warnAboutUnmockedScheduler"]
  LOADB R8 0
  SETTABLEKS R8 R7 K31 ["enableSuspenseCallback"]
  LOADB R8 0
  SETTABLEKS R8 R7 K32 ["warnAboutDefaultPropsOnFunctionComponents"]
  LOADB R8 1
  SETTABLEKS R8 R7 K33 ["warnAboutSpreadingKeyToJSX"]
  LOADB R8 1
  SETTABLEKS R8 R7 K34 ["enableComponentStackLocations"]
  LOADB R8 1
  SETTABLEKS R8 R7 K35 ["enableNewReconciler"]
  LOADB R8 1
  SETTABLEKS R8 R7 K36 ["skipUnmountedBoundaries"]
  GETTABLEKS R8 R2 K15 ["__DEV__"]
  JUMPIFNOT R8 [+2]
  MOVE R8 R6
  CALL R8 0 1
  SETTABLEKS R8 R7 K37 ["filterInternalStackFrames"]
  LOADB R8 0
  SETTABLEKS R8 R7 K38 ["warnAboutStringRefs"]
  LOADB R8 0
  SETTABLEKS R8 R7 K39 ["disableLegacyContext"]
  LOADB R8 0
  SETTABLEKS R8 R7 K40 ["disableModulePatternComponents"]
  LOADB R8 0
  SETTABLEKS R8 R7 K41 ["warnUnstableRenderSubtreeIntoContainer"]
  LOADB R8 0
  SETTABLEKS R8 R7 K42 ["deferRenderPhaseUpdateToNextBatch"]
  LOADB R8 1
  SETTABLEKS R8 R7 K43 ["decoupleUpdatePriorityFromScheduler"]
  LOADB R8 0
  SETTABLEKS R8 R7 K44 ["enableEagerRootListeners"]
  LOADB R8 0
  SETTABLEKS R8 R7 K45 ["enableDoubleInvokingEffects"]
  RETURN R7 1
