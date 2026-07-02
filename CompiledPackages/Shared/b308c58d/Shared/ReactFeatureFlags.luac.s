MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["SafeFlags"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["createGetFFlag"]
       14 LOADK                            R4 K7 ["ReactEnableSchedulingProfiler"]
       15 CALL                             R3 1 1
       16 NEWTABLE                         R4 64 0
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R4 K8 ["enableFilterEmptyStringAttributesDOM"]
       21 LOADB                            R5 0
       22 SETTABLEKS                       R5 R4 K9 ["enableDebugTracing"]
       24 MOVE                             R5 R3
       25 CALL                             R5 0 1
       26 JUMPIF                           R5 ; [+9]
       27 GETIMPORT                        R5 K11 [_G]
       29 GETTABLEKS                       R5 R5 K12 ["__PROFILE__"]
       31 JUMPIFNOT                        R5 ; [+4]
       32 GETIMPORT                        R5 K11 [_G]
       34 GETTABLEKS                       R5 R5 K13 ["__EXPERIMENTAL__"]
       36 SETTABLEKS                       R5 R4 K14 ["enableSchedulingProfiler"]
       38 GETIMPORT                        R5 K11 [_G]
       40 GETTABLEKS                       R5 R5 K15 ["__DEV__"]
       42 SETTABLEKS                       R5 R4 K16 ["debugRenderPhaseSideEffectsForStrictMode"]
       44 GETIMPORT                        R5 K11 [_G]
       46 GETTABLEKS                       R5 R5 K15 ["__DEV__"]
       48 SETTABLEKS                       R5 R4 K17 ["replayFailedUnitOfWorkWithInvokeGuardedCallback"]
       50 LOADB                            R5 1
       51 SETTABLEKS                       R5 R4 K18 ["warnAboutDeprecatedLifecycles"]
       53 GETIMPORT                        R5 K11 [_G]
       55 GETTABLEKS                       R5 R5 K12 ["__PROFILE__"]
       57 SETTABLEKS                       R5 R4 K19 ["enableProfilerTimer"]
       59 GETIMPORT                        R5 K11 [_G]
       61 GETTABLEKS                       R5 R5 K12 ["__PROFILE__"]
       63 SETTABLEKS                       R5 R4 K20 ["enableProfilerCommitHooks"]
       65 GETIMPORT                        R5 K11 [_G]
       67 GETTABLEKS                       R5 R5 K12 ["__PROFILE__"]
       69 SETTABLEKS                       R5 R4 K21 ["enableSchedulerTracing"]
       71 GETIMPORT                        R5 K11 [_G]
       73 GETTABLEKS                       R5 R5 K13 ["__EXPERIMENTAL__"]
       75 SETTABLEKS                       R5 R4 K22 ["enableSuspenseServerRenderer"]
       77 GETIMPORT                        R5 K11 [_G]
       79 GETTABLEKS                       R5 R5 K13 ["__EXPERIMENTAL__"]
       81 SETTABLEKS                       R5 R4 K23 ["enableSelectiveHydration"]
       83 GETIMPORT                        R5 K11 [_G]
       85 GETTABLEKS                       R5 R5 K13 ["__EXPERIMENTAL__"]
       87 SETTABLEKS                       R5 R4 K24 ["enableBlocksAPI"]
       89 GETIMPORT                        R5 K11 [_G]
       91 GETTABLEKS                       R5 R5 K13 ["__EXPERIMENTAL__"]
       93 SETTABLEKS                       R5 R4 K25 ["enableLazyElements"]
       95 LOADB                            R5 0
       96 SETTABLEKS                       R5 R4 K26 ["enableSchedulerDebugging"]
       98 LOADB                            R5 0
       99 SETTABLEKS                       R5 R4 K27 ["disableJavaScriptURLs"]
      101 LOADB                            R5 0
      102 SETTABLEKS                       R5 R4 K28 ["enableFundamentalAPI"]
      104 LOADB                            R5 0
      105 SETTABLEKS                       R5 R4 K29 ["enableScopeAPI"]
      107 LOADB                            R5 0
      108 SETTABLEKS                       R5 R4 K30 ["enableCreateEventHandleAPI"]
      110 LOADB                            R5 0
      111 SETTABLEKS                       R5 R4 K31 ["warnAboutUnmockedScheduler"]
      113 LOADB                            R5 0
      114 SETTABLEKS                       R5 R4 K32 ["enableSuspenseCallback"]
      116 LOADB                            R5 0
      117 SETTABLEKS                       R5 R4 K33 ["warnAboutDefaultPropsOnFunctionComponents"]
      119 LOADB                            R5 0
      120 SETTABLEKS                       R5 R4 K34 ["disableSchedulerTimeoutBasedOnReactExpirationTime"]
      122 LOADB                            R5 0
      123 SETTABLEKS                       R5 R4 K35 ["enableTrustedTypesIntegration"]
      125 LOADB                            R5 1
      126 SETTABLEKS                       R5 R4 K36 ["warnAboutSpreadingKeyToJSX"]
      128 LOADB                            R5 1
      129 SETTABLEKS                       R5 R4 K37 ["enableComponentStackLocations"]
      131 LOADB                            R5 1
      132 SETTABLEKS                       R5 R4 K38 ["enableNewReconciler"]
      134 LOADB                            R5 1
      135 SETTABLEKS                       R5 R4 K39 ["skipUnmountedBoundaries"]
      137 LOADB                            R5 1
      138 SETTABLEKS                       R5 R4 K40 ["disableInputAttributeSyncing"]
      140 LOADB                            R5 0
      141 SETTABLEKS                       R5 R4 K41 ["warnAboutStringRefs"]
      143 LOADB                            R5 0
      144 SETTABLEKS                       R5 R4 K42 ["disableLegacyContext"]
      146 LOADB                            R5 0
      147 SETTABLEKS                       R5 R4 K43 ["disableTextareaChildren"]
      149 LOADB                            R5 0
      150 SETTABLEKS                       R5 R4 K44 ["disableModulePatternComponents"]
      152 LOADB                            R5 0
      153 SETTABLEKS                       R5 R4 K45 ["warnUnstableRenderSubtreeIntoContainer"]
      155 LOADB                            R5 1
      156 SETTABLEKS                       R5 R4 K46 ["enableLegacyFBSupport"]
      158 LOADB                            R5 0
      159 SETTABLEKS                       R5 R4 K47 ["deferRenderPhaseUpdateToNextBatch"]
      161 LOADB                            R5 1
      162 SETTABLEKS                       R5 R4 K48 ["decoupleUpdatePriorityFromScheduler"]
      164 LOADB                            R5 0
      165 SETTABLEKS                       R5 R4 K49 ["enableDiscreteEventFlushingChange"]
      167 LOADB                            R5 0
      168 SETTABLEKS                       R5 R4 K50 ["enableEagerRootListeners"]
      170 LOADB                            R5 0
      171 SETTABLEKS                       R5 R4 K51 ["enableDoubleInvokingEffects"]
      173 RETURN                           R4 1
