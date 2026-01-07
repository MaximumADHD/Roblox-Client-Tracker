MAIN:
  PREPVARARGS 0
  NEWTABLE R0 64 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["enableFilterEmptyStringAttributesDOM"]
  LOADB R1 0
  SETTABLEKS R1 R0 K1 ["enableDebugTracing"]
  GETIMPORT R2 K3 [_G]
  GETTABLEKS R1 R2 K4 ["__PROFILE__"]
  JUMPIFNOT R1 [+4]
  GETIMPORT R2 K3 [_G]
  GETTABLEKS R1 R2 K5 ["__EXPERIMENTAL__"]
  SETTABLEKS R1 R0 K6 ["enableSchedulingProfiler"]
  GETIMPORT R2 K3 [_G]
  GETTABLEKS R1 R2 K7 ["__DEV__"]
  SETTABLEKS R1 R0 K8 ["debugRenderPhaseSideEffectsForStrictMode"]
  GETIMPORT R2 K3 [_G]
  GETTABLEKS R1 R2 K7 ["__DEV__"]
  SETTABLEKS R1 R0 K9 ["replayFailedUnitOfWorkWithInvokeGuardedCallback"]
  LOADB R1 1
  SETTABLEKS R1 R0 K10 ["warnAboutDeprecatedLifecycles"]
  GETIMPORT R2 K3 [_G]
  GETTABLEKS R1 R2 K4 ["__PROFILE__"]
  SETTABLEKS R1 R0 K11 ["enableProfilerTimer"]
  LOADB R1 0
  SETTABLEKS R1 R0 K12 ["enableProfilerCommitHooks"]
  GETIMPORT R2 K3 [_G]
  GETTABLEKS R1 R2 K4 ["__PROFILE__"]
  SETTABLEKS R1 R0 K13 ["enableSchedulerTracing"]
  GETIMPORT R2 K3 [_G]
  GETTABLEKS R1 R2 K5 ["__EXPERIMENTAL__"]
  SETTABLEKS R1 R0 K14 ["enableSuspenseServerRenderer"]
  GETIMPORT R2 K3 [_G]
  GETTABLEKS R1 R2 K5 ["__EXPERIMENTAL__"]
  SETTABLEKS R1 R0 K15 ["enableSelectiveHydration"]
  GETIMPORT R2 K3 [_G]
  GETTABLEKS R1 R2 K5 ["__EXPERIMENTAL__"]
  SETTABLEKS R1 R0 K16 ["enableBlocksAPI"]
  GETIMPORT R2 K3 [_G]
  GETTABLEKS R1 R2 K5 ["__EXPERIMENTAL__"]
  SETTABLEKS R1 R0 K17 ["enableLazyElements"]
  LOADB R1 0
  SETTABLEKS R1 R0 K18 ["enableSchedulerDebugging"]
  LOADB R1 0
  SETTABLEKS R1 R0 K19 ["disableJavaScriptURLs"]
  LOADB R1 0
  SETTABLEKS R1 R0 K20 ["enableFundamentalAPI"]
  LOADB R1 0
  SETTABLEKS R1 R0 K21 ["enableScopeAPI"]
  LOADB R1 0
  SETTABLEKS R1 R0 K22 ["enableCreateEventHandleAPI"]
  LOADB R1 0
  SETTABLEKS R1 R0 K23 ["warnAboutUnmockedScheduler"]
  LOADB R1 0
  SETTABLEKS R1 R0 K24 ["enableSuspenseCallback"]
  LOADB R1 0
  SETTABLEKS R1 R0 K25 ["warnAboutDefaultPropsOnFunctionComponents"]
  LOADB R1 0
  SETTABLEKS R1 R0 K26 ["disableSchedulerTimeoutBasedOnReactExpirationTime"]
  LOADB R1 0
  SETTABLEKS R1 R0 K27 ["enableTrustedTypesIntegration"]
  LOADB R1 1
  SETTABLEKS R1 R0 K28 ["warnAboutSpreadingKeyToJSX"]
  LOADB R1 1
  SETTABLEKS R1 R0 K29 ["enableComponentStackLocations"]
  LOADB R1 1
  SETTABLEKS R1 R0 K30 ["enableNewReconciler"]
  LOADB R1 1
  SETTABLEKS R1 R0 K31 ["skipUnmountedBoundaries"]
  LOADB R1 1
  SETTABLEKS R1 R0 K32 ["disableInputAttributeSyncing"]
  LOADB R1 0
  SETTABLEKS R1 R0 K33 ["warnAboutStringRefs"]
  LOADB R1 0
  SETTABLEKS R1 R0 K34 ["disableLegacyContext"]
  LOADB R1 0
  SETTABLEKS R1 R0 K35 ["disableTextareaChildren"]
  LOADB R1 0
  SETTABLEKS R1 R0 K36 ["disableModulePatternComponents"]
  LOADB R1 0
  SETTABLEKS R1 R0 K37 ["warnUnstableRenderSubtreeIntoContainer"]
  LOADB R1 1
  SETTABLEKS R1 R0 K38 ["enableLegacyFBSupport"]
  LOADB R1 0
  SETTABLEKS R1 R0 K39 ["deferRenderPhaseUpdateToNextBatch"]
  LOADB R1 1
  SETTABLEKS R1 R0 K40 ["decoupleUpdatePriorityFromScheduler"]
  LOADB R1 0
  SETTABLEKS R1 R0 K41 ["enableDiscreteEventFlushingChange"]
  LOADB R1 0
  SETTABLEKS R1 R0 K42 ["enableEagerRootListeners"]
  LOADB R1 0
  SETTABLEKS R1 R0 K43 ["enableDoubleInvokingEffects"]
  RETURN R0 1
