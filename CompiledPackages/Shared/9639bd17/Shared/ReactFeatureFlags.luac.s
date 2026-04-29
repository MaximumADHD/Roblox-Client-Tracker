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
       21 GETTABLEKS                       R5 R3 K7 ["createGetFFlag"]
       23 LOADK                            R6 K9 ["ReactCatchYieldingInDEV"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R6 R3 K7 ["createGetFFlag"]
       27 LOADK                            R7 K10 ["ReactFilterInternalStackFrames"]
       28 CALL                             R6 1 1
       29 NEWTABLE                         R7 32 0
       31 LOADB                            R8 0
       32 SETTABLEKS                       R8 R7 K11 ["enableDebugTracing"]
       34 MOVE                             R8 R4
       35 CALL                             R8 0 1
       36 JUMPIF                           R8 ; [+5]
       37 GETTABLEKS                       R8 R2 K12 ["__PROFILE__"]
       39 JUMPIFNOT                        R8 ; [+2]
       40 GETTABLEKS                       R8 R2 K13 ["__EXPERIMENTAL__"]
       42 SETTABLEKS                       R8 R7 K14 ["enableSchedulingProfiler"]
       44 GETTABLEKS                       R8 R2 K15 ["__DEV__"]
       46 JUMPIFNOT                        R8 ; [+2]
       47 MOVE                             R8 R5
       48 CALL                             R8 0 1
       49 SETTABLEKS                       R8 R7 K16 ["catchYieldingInDEV"]
       51 GETTABLEKS                       R8 R2 K15 ["__DEV__"]
       53 SETTABLEKS                       R8 R7 K17 ["debugRenderPhaseSideEffectsForStrictMode"]
       55 GETTABLEKS                       R8 R2 K15 ["__DEV__"]
       57 SETTABLEKS                       R8 R7 K18 ["replayFailedUnitOfWorkWithInvokeGuardedCallback"]
       59 LOADB                            R8 1
       60 SETTABLEKS                       R8 R7 K19 ["warnAboutDeprecatedLifecycles"]
       62 GETTABLEKS                       R8 R2 K12 ["__PROFILE__"]
       64 SETTABLEKS                       R8 R7 K20 ["enableProfilerTimer"]
       66 GETTABLEKS                       R8 R2 K12 ["__PROFILE__"]
       68 SETTABLEKS                       R8 R7 K21 ["enableProfilerCommitHooks"]
       70 GETTABLEKS                       R8 R2 K12 ["__PROFILE__"]
       72 SETTABLEKS                       R8 R7 K22 ["enableSchedulerTracing"]
       74 GETTABLEKS                       R8 R2 K13 ["__EXPERIMENTAL__"]
       76 SETTABLEKS                       R8 R7 K23 ["enableSuspenseServerRenderer"]
       78 GETTABLEKS                       R8 R2 K13 ["__EXPERIMENTAL__"]
       80 SETTABLEKS                       R8 R7 K24 ["enableBlocksAPI"]
       82 GETTABLEKS                       R8 R2 K13 ["__EXPERIMENTAL__"]
       84 SETTABLEKS                       R8 R7 K25 ["enableLazyElements"]
       86 LOADB                            R8 0
       87 SETTABLEKS                       R8 R7 K26 ["enableSchedulerDebugging"]
       89 LOADB                            R8 0
       90 SETTABLEKS                       R8 R7 K27 ["enableFundamentalAPI"]
       92 LOADB                            R8 0
       93 SETTABLEKS                       R8 R7 K28 ["enableScopeAPI"]
       95 LOADB                            R8 0
       96 SETTABLEKS                       R8 R7 K29 ["enableCreateEventHandleAPI"]
       98 LOADB                            R8 0
       99 SETTABLEKS                       R8 R7 K30 ["warnAboutUnmockedScheduler"]
      101 LOADB                            R8 0
      102 SETTABLEKS                       R8 R7 K31 ["enableSuspenseCallback"]
      104 LOADB                            R8 0
      105 SETTABLEKS                       R8 R7 K32 ["warnAboutDefaultPropsOnFunctionComponents"]
      107 LOADB                            R8 1
      108 SETTABLEKS                       R8 R7 K33 ["warnAboutSpreadingKeyToJSX"]
      110 LOADB                            R8 1
      111 SETTABLEKS                       R8 R7 K34 ["enableComponentStackLocations"]
      113 LOADB                            R8 1
      114 SETTABLEKS                       R8 R7 K35 ["enableNewReconciler"]
      116 LOADB                            R8 1
      117 SETTABLEKS                       R8 R7 K36 ["skipUnmountedBoundaries"]
      119 GETTABLEKS                       R8 R2 K15 ["__DEV__"]
      121 JUMPIFNOT                        R8 ; [+2]
      122 MOVE                             R8 R6
      123 CALL                             R8 0 1
      124 SETTABLEKS                       R8 R7 K37 ["filterInternalStackFrames"]
      126 LOADB                            R8 0
      127 SETTABLEKS                       R8 R7 K38 ["warnAboutStringRefs"]
      129 LOADB                            R8 0
      130 SETTABLEKS                       R8 R7 K39 ["disableLegacyContext"]
      132 LOADB                            R8 0
      133 SETTABLEKS                       R8 R7 K40 ["disableModulePatternComponents"]
      135 LOADB                            R8 0
      136 SETTABLEKS                       R8 R7 K41 ["warnUnstableRenderSubtreeIntoContainer"]
      138 LOADB                            R8 0
      139 SETTABLEKS                       R8 R7 K42 ["deferRenderPhaseUpdateToNextBatch"]
      141 LOADB                            R8 1
      142 SETTABLEKS                       R8 R7 K43 ["decoupleUpdatePriorityFromScheduler"]
      144 LOADB                            R8 0
      145 SETTABLEKS                       R8 R7 K44 ["enableEagerRootListeners"]
      147 LOADB                            R8 0
      148 SETTABLEKS                       R8 R7 K45 ["enableDoubleInvokingEffects"]
      150 RETURN                           R7 1
