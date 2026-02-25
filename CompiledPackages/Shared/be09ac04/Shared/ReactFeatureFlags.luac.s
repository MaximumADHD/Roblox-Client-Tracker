MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["ReactGlobals"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["SafeFlags"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K7 ["createGetFFlag"]
       19 LOADK                            R5 K8 ["ReactEnableSchedulingProfiler"]
       20 CALL                             R4 1 1
       21 NEWTABLE                         R5 64 0
       23 LOADB                            R6 1
       24 SETTABLEKS                       R6 R5 K9 ["enableFilterEmptyStringAttributesDOM"]
       26 LOADB                            R6 0
       27 SETTABLEKS                       R6 R5 K10 ["enableDebugTracing"]
       29 MOVE                             R6 R4
       30 CALL                             R6 0 1
       31 JUMPIF                           R6 ; [+5]
       32 GETTABLEKS                       R6 R2 K11 ["__PROFILE__"]
       34 JUMPIFNOT                        R6 ; [+2]
       35 GETTABLEKS                       R6 R2 K12 ["__EXPERIMENTAL__"]
       37 SETTABLEKS                       R6 R5 K13 ["enableSchedulingProfiler"]
       39 GETTABLEKS                       R6 R2 K14 ["__DEV__"]
       41 SETTABLEKS                       R6 R5 K15 ["debugRenderPhaseSideEffectsForStrictMode"]
       43 GETTABLEKS                       R6 R2 K14 ["__DEV__"]
       45 SETTABLEKS                       R6 R5 K16 ["replayFailedUnitOfWorkWithInvokeGuardedCallback"]
       47 LOADB                            R6 1
       48 SETTABLEKS                       R6 R5 K17 ["warnAboutDeprecatedLifecycles"]
       50 GETTABLEKS                       R6 R2 K11 ["__PROFILE__"]
       52 SETTABLEKS                       R6 R5 K18 ["enableProfilerTimer"]
       54 GETTABLEKS                       R6 R2 K11 ["__PROFILE__"]
       56 SETTABLEKS                       R6 R5 K19 ["enableProfilerCommitHooks"]
       58 GETTABLEKS                       R6 R2 K11 ["__PROFILE__"]
       60 SETTABLEKS                       R6 R5 K20 ["enableSchedulerTracing"]
       62 GETTABLEKS                       R6 R2 K12 ["__EXPERIMENTAL__"]
       64 SETTABLEKS                       R6 R5 K21 ["enableSuspenseServerRenderer"]
       66 GETTABLEKS                       R6 R2 K12 ["__EXPERIMENTAL__"]
       68 SETTABLEKS                       R6 R5 K22 ["enableSelectiveHydration"]
       70 GETTABLEKS                       R6 R2 K12 ["__EXPERIMENTAL__"]
       72 SETTABLEKS                       R6 R5 K23 ["enableBlocksAPI"]
       74 GETTABLEKS                       R6 R2 K12 ["__EXPERIMENTAL__"]
       76 SETTABLEKS                       R6 R5 K24 ["enableLazyElements"]
       78 LOADB                            R6 0
       79 SETTABLEKS                       R6 R5 K25 ["enableSchedulerDebugging"]
       81 LOADB                            R6 0
       82 SETTABLEKS                       R6 R5 K26 ["disableJavaScriptURLs"]
       84 LOADB                            R6 0
       85 SETTABLEKS                       R6 R5 K27 ["enableFundamentalAPI"]
       87 LOADB                            R6 0
       88 SETTABLEKS                       R6 R5 K28 ["enableScopeAPI"]
       90 LOADB                            R6 0
       91 SETTABLEKS                       R6 R5 K29 ["enableCreateEventHandleAPI"]
       93 LOADB                            R6 0
       94 SETTABLEKS                       R6 R5 K30 ["warnAboutUnmockedScheduler"]
       96 LOADB                            R6 0
       97 SETTABLEKS                       R6 R5 K31 ["enableSuspenseCallback"]
       99 LOADB                            R6 0
      100 SETTABLEKS                       R6 R5 K32 ["warnAboutDefaultPropsOnFunctionComponents"]
      102 LOADB                            R6 0
      103 SETTABLEKS                       R6 R5 K33 ["disableSchedulerTimeoutBasedOnReactExpirationTime"]
      105 LOADB                            R6 0
      106 SETTABLEKS                       R6 R5 K34 ["enableTrustedTypesIntegration"]
      108 LOADB                            R6 1
      109 SETTABLEKS                       R6 R5 K35 ["warnAboutSpreadingKeyToJSX"]
      111 LOADB                            R6 1
      112 SETTABLEKS                       R6 R5 K36 ["enableComponentStackLocations"]
      114 LOADB                            R6 1
      115 SETTABLEKS                       R6 R5 K37 ["enableNewReconciler"]
      117 LOADB                            R6 1
      118 SETTABLEKS                       R6 R5 K38 ["skipUnmountedBoundaries"]
      120 LOADB                            R6 1
      121 SETTABLEKS                       R6 R5 K39 ["disableInputAttributeSyncing"]
      123 LOADB                            R6 0
      124 SETTABLEKS                       R6 R5 K40 ["warnAboutStringRefs"]
      126 LOADB                            R6 0
      127 SETTABLEKS                       R6 R5 K41 ["disableLegacyContext"]
      129 LOADB                            R6 0
      130 SETTABLEKS                       R6 R5 K42 ["disableTextareaChildren"]
      132 LOADB                            R6 0
      133 SETTABLEKS                       R6 R5 K43 ["disableModulePatternComponents"]
      135 LOADB                            R6 0
      136 SETTABLEKS                       R6 R5 K44 ["warnUnstableRenderSubtreeIntoContainer"]
      138 LOADB                            R6 1
      139 SETTABLEKS                       R6 R5 K45 ["enableLegacyFBSupport"]
      141 LOADB                            R6 0
      142 SETTABLEKS                       R6 R5 K46 ["deferRenderPhaseUpdateToNextBatch"]
      144 LOADB                            R6 1
      145 SETTABLEKS                       R6 R5 K47 ["decoupleUpdatePriorityFromScheduler"]
      147 LOADB                            R6 0
      148 SETTABLEKS                       R6 R5 K48 ["enableDiscreteEventFlushingChange"]
      150 LOADB                            R6 0
      151 SETTABLEKS                       R6 R5 K49 ["enableEagerRootListeners"]
      153 LOADB                            R6 0
      154 SETTABLEKS                       R6 R5 K50 ["enableDoubleInvokingEffects"]
      156 RETURN                           R5 1
