MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       27 GETIMPORT                        R6 K11 [_G]
       29 GETTABLEKS                       R5 R6 K12 ["__PROFILE__"]
       31 JUMPIFNOT                        R5 ; [+4]
       32 GETIMPORT                        R6 K11 [_G]
       34 GETTABLEKS                       R5 R6 K13 ["__EXPERIMENTAL__"]
       36 SETTABLEKS                       R5 R4 K14 ["enableSchedulingProfiler"]
       38 GETIMPORT                        R6 K11 [_G]
       40 GETTABLEKS                       R5 R6 K15 ["__DEV__"]
       42 SETTABLEKS                       R5 R4 K16 ["debugRenderPhaseSideEffectsForStrictMode"]
       44 GETIMPORT                        R6 K11 [_G]
       46 GETTABLEKS                       R5 R6 K15 ["__DEV__"]
       48 SETTABLEKS                       R5 R4 K17 ["replayFailedUnitOfWorkWithInvokeGuardedCallback"]
       50 LOADB                            R5 1
       51 SETTABLEKS                       R5 R4 K18 ["warnAboutDeprecatedLifecycles"]
       53 GETIMPORT                        R6 K11 [_G]
       55 GETTABLEKS                       R5 R6 K12 ["__PROFILE__"]
       57 SETTABLEKS                       R5 R4 K19 ["enableProfilerTimer"]
       59 GETIMPORT                        R6 K11 [_G]
       61 GETTABLEKS                       R5 R6 K12 ["__PROFILE__"]
       63 SETTABLEKS                       R5 R4 K20 ["enableProfilerCommitHooks"]
       65 LOADB                            R5 0
       66 SETTABLEKS                       R5 R4 K21 ["enableSchedulerTracing"]
       68 GETIMPORT                        R6 K11 [_G]
       70 GETTABLEKS                       R5 R6 K13 ["__EXPERIMENTAL__"]
       72 SETTABLEKS                       R5 R4 K22 ["enableSuspenseServerRenderer"]
       74 GETIMPORT                        R6 K11 [_G]
       76 GETTABLEKS                       R5 R6 K13 ["__EXPERIMENTAL__"]
       78 SETTABLEKS                       R5 R4 K23 ["enableSelectiveHydration"]
       80 GETIMPORT                        R6 K11 [_G]
       82 GETTABLEKS                       R5 R6 K13 ["__EXPERIMENTAL__"]
       84 SETTABLEKS                       R5 R4 K24 ["enableBlocksAPI"]
       86 GETIMPORT                        R6 K11 [_G]
       88 GETTABLEKS                       R5 R6 K13 ["__EXPERIMENTAL__"]
       90 SETTABLEKS                       R5 R4 K25 ["enableLazyElements"]
       92 LOADB                            R5 0
       93 SETTABLEKS                       R5 R4 K26 ["enableSchedulerDebugging"]
       95 LOADB                            R5 0
       96 SETTABLEKS                       R5 R4 K27 ["disableJavaScriptURLs"]
       98 LOADB                            R5 0
       99 SETTABLEKS                       R5 R4 K28 ["enableFundamentalAPI"]
      101 LOADB                            R5 0
      102 SETTABLEKS                       R5 R4 K29 ["enableScopeAPI"]
      104 LOADB                            R5 0
      105 SETTABLEKS                       R5 R4 K30 ["enableCreateEventHandleAPI"]
      107 LOADB                            R5 0
      108 SETTABLEKS                       R5 R4 K31 ["warnAboutUnmockedScheduler"]
      110 LOADB                            R5 0
      111 SETTABLEKS                       R5 R4 K32 ["enableSuspenseCallback"]
      113 LOADB                            R5 0
      114 SETTABLEKS                       R5 R4 K33 ["warnAboutDefaultPropsOnFunctionComponents"]
      116 LOADB                            R5 0
      117 SETTABLEKS                       R5 R4 K34 ["disableSchedulerTimeoutBasedOnReactExpirationTime"]
      119 LOADB                            R5 0
      120 SETTABLEKS                       R5 R4 K35 ["enableTrustedTypesIntegration"]
      122 LOADB                            R5 1
      123 SETTABLEKS                       R5 R4 K36 ["warnAboutSpreadingKeyToJSX"]
      125 LOADB                            R5 1
      126 SETTABLEKS                       R5 R4 K37 ["enableComponentStackLocations"]
      128 LOADB                            R5 1
      129 SETTABLEKS                       R5 R4 K38 ["enableNewReconciler"]
      131 LOADB                            R5 1
      132 SETTABLEKS                       R5 R4 K39 ["skipUnmountedBoundaries"]
      134 LOADB                            R5 1
      135 SETTABLEKS                       R5 R4 K40 ["disableInputAttributeSyncing"]
      137 LOADB                            R5 0
      138 SETTABLEKS                       R5 R4 K41 ["warnAboutStringRefs"]
      140 LOADB                            R5 0
      141 SETTABLEKS                       R5 R4 K42 ["disableLegacyContext"]
      143 LOADB                            R5 0
      144 SETTABLEKS                       R5 R4 K43 ["disableTextareaChildren"]
      146 LOADB                            R5 0
      147 SETTABLEKS                       R5 R4 K44 ["disableModulePatternComponents"]
      149 LOADB                            R5 0
      150 SETTABLEKS                       R5 R4 K45 ["warnUnstableRenderSubtreeIntoContainer"]
      152 LOADB                            R5 1
      153 SETTABLEKS                       R5 R4 K46 ["enableLegacyFBSupport"]
      155 LOADB                            R5 0
      156 SETTABLEKS                       R5 R4 K47 ["deferRenderPhaseUpdateToNextBatch"]
      158 LOADB                            R5 1
      159 SETTABLEKS                       R5 R4 K48 ["decoupleUpdatePriorityFromScheduler"]
      161 LOADB                            R5 0
      162 SETTABLEKS                       R5 R4 K49 ["enableDiscreteEventFlushingChange"]
      164 LOADB                            R5 0
      165 SETTABLEKS                       R5 R4 K50 ["enableEagerRootListeners"]
      167 LOADB                            R5 0
      168 SETTABLEKS                       R5 R4 K51 ["enableDoubleInvokingEffects"]
      170 RETURN                           R4 1
