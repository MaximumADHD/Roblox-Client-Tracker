MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 64 0
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["enableFilterEmptyStringAttributesDOM"]
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K1 ["enableDebugTracing"]
        9 GETIMPORT                        R1 K3 [_G]
       11 GETTABLEKS                       R1 R1 K4 ["__PROFILE__"]
       13 JUMPIFNOT                        R1 ; [+4]
       14 GETIMPORT                        R1 K3 [_G]
       16 GETTABLEKS                       R1 R1 K5 ["__EXPERIMENTAL__"]
       18 SETTABLEKS                       R1 R0 K6 ["enableSchedulingProfiler"]
       20 GETIMPORT                        R1 K3 [_G]
       22 GETTABLEKS                       R1 R1 K7 ["__DEV__"]
       24 SETTABLEKS                       R1 R0 K8 ["debugRenderPhaseSideEffectsForStrictMode"]
       26 GETIMPORT                        R1 K3 [_G]
       28 GETTABLEKS                       R1 R1 K7 ["__DEV__"]
       30 SETTABLEKS                       R1 R0 K9 ["replayFailedUnitOfWorkWithInvokeGuardedCallback"]
       32 LOADB                            R1 1
       33 SETTABLEKS                       R1 R0 K10 ["warnAboutDeprecatedLifecycles"]
       35 GETIMPORT                        R1 K3 [_G]
       37 GETTABLEKS                       R1 R1 K4 ["__PROFILE__"]
       39 SETTABLEKS                       R1 R0 K11 ["enableProfilerTimer"]
       41 LOADB                            R1 0
       42 SETTABLEKS                       R1 R0 K12 ["enableProfilerCommitHooks"]
       44 GETIMPORT                        R1 K3 [_G]
       46 GETTABLEKS                       R1 R1 K4 ["__PROFILE__"]
       48 SETTABLEKS                       R1 R0 K13 ["enableSchedulerTracing"]
       50 GETIMPORT                        R1 K3 [_G]
       52 GETTABLEKS                       R1 R1 K5 ["__EXPERIMENTAL__"]
       54 SETTABLEKS                       R1 R0 K14 ["enableSuspenseServerRenderer"]
       56 GETIMPORT                        R1 K3 [_G]
       58 GETTABLEKS                       R1 R1 K5 ["__EXPERIMENTAL__"]
       60 SETTABLEKS                       R1 R0 K15 ["enableSelectiveHydration"]
       62 GETIMPORT                        R1 K3 [_G]
       64 GETTABLEKS                       R1 R1 K5 ["__EXPERIMENTAL__"]
       66 SETTABLEKS                       R1 R0 K16 ["enableBlocksAPI"]
       68 GETIMPORT                        R1 K3 [_G]
       70 GETTABLEKS                       R1 R1 K5 ["__EXPERIMENTAL__"]
       72 SETTABLEKS                       R1 R0 K17 ["enableLazyElements"]
       74 LOADB                            R1 0
       75 SETTABLEKS                       R1 R0 K18 ["enableSchedulerDebugging"]
       77 LOADB                            R1 0
       78 SETTABLEKS                       R1 R0 K19 ["disableJavaScriptURLs"]
       80 LOADB                            R1 0
       81 SETTABLEKS                       R1 R0 K20 ["enableFundamentalAPI"]
       83 LOADB                            R1 0
       84 SETTABLEKS                       R1 R0 K21 ["enableScopeAPI"]
       86 LOADB                            R1 0
       87 SETTABLEKS                       R1 R0 K22 ["enableCreateEventHandleAPI"]
       89 LOADB                            R1 0
       90 SETTABLEKS                       R1 R0 K23 ["warnAboutUnmockedScheduler"]
       92 LOADB                            R1 0
       93 SETTABLEKS                       R1 R0 K24 ["enableSuspenseCallback"]
       95 LOADB                            R1 0
       96 SETTABLEKS                       R1 R0 K25 ["warnAboutDefaultPropsOnFunctionComponents"]
       98 LOADB                            R1 0
       99 SETTABLEKS                       R1 R0 K26 ["disableSchedulerTimeoutBasedOnReactExpirationTime"]
      101 LOADB                            R1 0
      102 SETTABLEKS                       R1 R0 K27 ["enableTrustedTypesIntegration"]
      104 LOADB                            R1 1
      105 SETTABLEKS                       R1 R0 K28 ["warnAboutSpreadingKeyToJSX"]
      107 LOADB                            R1 1
      108 SETTABLEKS                       R1 R0 K29 ["enableComponentStackLocations"]
      110 LOADB                            R1 1
      111 SETTABLEKS                       R1 R0 K30 ["enableNewReconciler"]
      113 LOADB                            R1 1
      114 SETTABLEKS                       R1 R0 K31 ["skipUnmountedBoundaries"]
      116 LOADB                            R1 1
      117 SETTABLEKS                       R1 R0 K32 ["disableInputAttributeSyncing"]
      119 LOADB                            R1 0
      120 SETTABLEKS                       R1 R0 K33 ["warnAboutStringRefs"]
      122 LOADB                            R1 0
      123 SETTABLEKS                       R1 R0 K34 ["disableLegacyContext"]
      125 LOADB                            R1 0
      126 SETTABLEKS                       R1 R0 K35 ["disableTextareaChildren"]
      128 LOADB                            R1 0
      129 SETTABLEKS                       R1 R0 K36 ["disableModulePatternComponents"]
      131 LOADB                            R1 0
      132 SETTABLEKS                       R1 R0 K37 ["warnUnstableRenderSubtreeIntoContainer"]
      134 LOADB                            R1 1
      135 SETTABLEKS                       R1 R0 K38 ["enableLegacyFBSupport"]
      137 LOADB                            R1 0
      138 SETTABLEKS                       R1 R0 K39 ["deferRenderPhaseUpdateToNextBatch"]
      140 LOADB                            R1 1
      141 SETTABLEKS                       R1 R0 K40 ["decoupleUpdatePriorityFromScheduler"]
      143 LOADB                            R1 0
      144 SETTABLEKS                       R1 R0 K41 ["enableDiscreteEventFlushingChange"]
      146 LOADB                            R1 0
      147 SETTABLEKS                       R1 R0 K42 ["enableEagerRootListeners"]
      149 LOADB                            R1 0
      150 SETTABLEKS                       R1 R0 K43 ["enableDoubleInvokingEffects"]
      152 RETURN                           R0 1
