MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["SafeFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K6 ["createGetFFlag"]
  LOADK R4 K7 ["ReactEnableSchedulingProfiler"]
  CALL R3 1 1
  NEWTABLE R4 64 0
  LOADB R5 1
  SETTABLEKS R5 R4 K8 ["enableFilterEmptyStringAttributesDOM"]
  LOADB R5 0
  SETTABLEKS R5 R4 K9 ["enableDebugTracing"]
  MOVE R5 R3
  CALL R5 0 1
  JUMPIF R5 [+9]
  GETIMPORT R6 K11 [_G]
  GETTABLEKS R5 R6 K12 ["__PROFILE__"]
  JUMPIFNOT R5 [+4]
  GETIMPORT R6 K11 [_G]
  GETTABLEKS R5 R6 K13 ["__EXPERIMENTAL__"]
  SETTABLEKS R5 R4 K14 ["enableSchedulingProfiler"]
  GETIMPORT R6 K11 [_G]
  GETTABLEKS R5 R6 K15 ["__DEV__"]
  SETTABLEKS R5 R4 K16 ["debugRenderPhaseSideEffectsForStrictMode"]
  GETIMPORT R6 K11 [_G]
  GETTABLEKS R5 R6 K15 ["__DEV__"]
  SETTABLEKS R5 R4 K17 ["replayFailedUnitOfWorkWithInvokeGuardedCallback"]
  LOADB R5 1
  SETTABLEKS R5 R4 K18 ["warnAboutDeprecatedLifecycles"]
  GETIMPORT R6 K11 [_G]
  GETTABLEKS R5 R6 K12 ["__PROFILE__"]
  SETTABLEKS R5 R4 K19 ["enableProfilerTimer"]
  GETIMPORT R6 K11 [_G]
  GETTABLEKS R5 R6 K12 ["__PROFILE__"]
  SETTABLEKS R5 R4 K20 ["enableProfilerCommitHooks"]
  LOADB R5 0
  SETTABLEKS R5 R4 K21 ["enableSchedulerTracing"]
  GETIMPORT R6 K11 [_G]
  GETTABLEKS R5 R6 K13 ["__EXPERIMENTAL__"]
  SETTABLEKS R5 R4 K22 ["enableSuspenseServerRenderer"]
  GETIMPORT R6 K11 [_G]
  GETTABLEKS R5 R6 K13 ["__EXPERIMENTAL__"]
  SETTABLEKS R5 R4 K23 ["enableSelectiveHydration"]
  GETIMPORT R6 K11 [_G]
  GETTABLEKS R5 R6 K13 ["__EXPERIMENTAL__"]
  SETTABLEKS R5 R4 K24 ["enableBlocksAPI"]
  GETIMPORT R6 K11 [_G]
  GETTABLEKS R5 R6 K13 ["__EXPERIMENTAL__"]
  SETTABLEKS R5 R4 K25 ["enableLazyElements"]
  LOADB R5 0
  SETTABLEKS R5 R4 K26 ["enableSchedulerDebugging"]
  LOADB R5 0
  SETTABLEKS R5 R4 K27 ["disableJavaScriptURLs"]
  LOADB R5 0
  SETTABLEKS R5 R4 K28 ["enableFundamentalAPI"]
  LOADB R5 0
  SETTABLEKS R5 R4 K29 ["enableScopeAPI"]
  LOADB R5 0
  SETTABLEKS R5 R4 K30 ["enableCreateEventHandleAPI"]
  LOADB R5 0
  SETTABLEKS R5 R4 K31 ["warnAboutUnmockedScheduler"]
  LOADB R5 0
  SETTABLEKS R5 R4 K32 ["enableSuspenseCallback"]
  LOADB R5 0
  SETTABLEKS R5 R4 K33 ["warnAboutDefaultPropsOnFunctionComponents"]
  LOADB R5 0
  SETTABLEKS R5 R4 K34 ["disableSchedulerTimeoutBasedOnReactExpirationTime"]
  LOADB R5 0
  SETTABLEKS R5 R4 K35 ["enableTrustedTypesIntegration"]
  LOADB R5 1
  SETTABLEKS R5 R4 K36 ["warnAboutSpreadingKeyToJSX"]
  LOADB R5 1
  SETTABLEKS R5 R4 K37 ["enableComponentStackLocations"]
  LOADB R5 1
  SETTABLEKS R5 R4 K38 ["enableNewReconciler"]
  LOADB R5 1
  SETTABLEKS R5 R4 K39 ["skipUnmountedBoundaries"]
  LOADB R5 1
  SETTABLEKS R5 R4 K40 ["disableInputAttributeSyncing"]
  LOADB R5 0
  SETTABLEKS R5 R4 K41 ["warnAboutStringRefs"]
  LOADB R5 0
  SETTABLEKS R5 R4 K42 ["disableLegacyContext"]
  LOADB R5 0
  SETTABLEKS R5 R4 K43 ["disableTextareaChildren"]
  LOADB R5 0
  SETTABLEKS R5 R4 K44 ["disableModulePatternComponents"]
  LOADB R5 0
  SETTABLEKS R5 R4 K45 ["warnUnstableRenderSubtreeIntoContainer"]
  LOADB R5 1
  SETTABLEKS R5 R4 K46 ["enableLegacyFBSupport"]
  LOADB R5 0
  SETTABLEKS R5 R4 K47 ["deferRenderPhaseUpdateToNextBatch"]
  LOADB R5 1
  SETTABLEKS R5 R4 K48 ["decoupleUpdatePriorityFromScheduler"]
  LOADB R5 0
  SETTABLEKS R5 R4 K49 ["enableDiscreteEventFlushingChange"]
  LOADB R5 0
  SETTABLEKS R5 R4 K50 ["enableEagerRootListeners"]
  LOADB R5 0
  SETTABLEKS R5 R4 K51 ["enableDoubleInvokingEffects"]
  RETURN R4 1
