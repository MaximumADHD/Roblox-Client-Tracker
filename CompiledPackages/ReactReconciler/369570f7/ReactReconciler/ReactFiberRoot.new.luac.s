PROTO_0:
        0 DUPTABLE                         R3 K23 [{[1], ["containerInfo"], ["pendingChildren"] = , ["current"] = , ["pingCache"] = , ["finishedWork"] = , ["timeoutHandle"], ["context"] = , ["pendingContext"] = , ["hydrate"], ["callbackNode"] = , ["callbackPriority"], ["eventTimes"], ["expirationTimes"], ["pendingLanes"], ["suspendedLanes"], ["pingedLanes"], ["expiredLanes"], ["mutableReadLanes"], ["finishedLanes"], ["entangledLanes"], ["entanglements"]}]
        1 SETTABLEKS                       R1 R3 K0 ["tag"]
        3 SETTABLEKS                       R0 R3 K1 ["containerInfo"]
        5 GETUPVAL                         R4 0
        6 SETTABLEKS                       R4 R3 K7 ["timeoutHandle"]
        8 SETTABLEKS                       R2 R3 K10 ["hydrate"]
       10 GETUPVAL                         R4 1
       11 SETTABLEKS                       R4 R3 K12 ["callbackPriority"]
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R5 3
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K13 ["eventTimes"]
       18 GETUPVAL                         R4 2
       19 GETUPVAL                         R5 4
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K14 ["expirationTimes"]
       23 GETUPVAL                         R4 3
       24 SETTABLEKS                       R4 R3 K15 ["pendingLanes"]
       26 GETUPVAL                         R4 3
       27 SETTABLEKS                       R4 R3 K16 ["suspendedLanes"]
       29 GETUPVAL                         R4 3
       30 SETTABLEKS                       R4 R3 K17 ["pingedLanes"]
       32 GETUPVAL                         R4 3
       33 SETTABLEKS                       R4 R3 K18 ["expiredLanes"]
       35 GETUPVAL                         R4 3
       36 SETTABLEKS                       R4 R3 K19 ["mutableReadLanes"]
       38 GETUPVAL                         R4 3
       39 SETTABLEKS                       R4 R3 K20 ["finishedLanes"]
       41 GETUPVAL                         R4 3
       42 SETTABLEKS                       R4 R3 K21 ["entangledLanes"]
       44 GETUPVAL                         R4 2
       45 GETUPVAL                         R5 3
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K22 ["entanglements"]
       49 GETUPVAL                         R4 5
       50 JUMPIFNOT                        R4 ; [+3]
       51 LOADNIL                          R4
       52 SETTABLEKS                       R4 R3 K24 ["mutableSourceEagerHydrationData"]
       54 GETUPVAL                         R4 6
       55 JUMPIFNOT                        R4 ; [+16]
       56 GETUPVAL                         R4 7
       57 CALL                             R4 0 1
       58 SETTABLEKS                       R4 R3 K25 ["interactionThreadID"]
       60 GETUPVAL                         R4 8
       61 GETTABLEKS                       R4 R4 K26 ["new"]
       63 CALL                             R4 0 1
       64 SETTABLEKS                       R4 R3 K27 ["memoizedInteractions"]
       66 GETUPVAL                         R4 9
       67 GETTABLEKS                       R4 R4 K26 ["new"]
       69 CALL                             R4 0 1
       70 SETTABLEKS                       R4 R3 K28 ["pendingInteractionMap"]
       72 GETUPVAL                         R4 10
       73 JUMPIFNOT                        R4 ; [+3]
       74 LOADNIL                          R4
       75 SETTABLEKS                       R4 R3 K29 ["hydrationCallbacks"]
       77 GETUPVAL                         R4 11
       78 GETTABLEKS                       R4 R4 K30 ["__DEV__"]
       80 JUMPIFNOT                        R4 ; [+20]
       81 GETUPVAL                         R4 12
       82 JUMPIFNOTEQ                      R1 R4 ; [+5]
       84 LOADK                            R4 K31 ["createBlockingRoot()"]
       85 SETTABLEKS                       R4 R3 K32 ["_debugRootType"]
       87 RETURN                           R3 1
       88 GETUPVAL                         R4 13
       89 JUMPIFNOTEQ                      R1 R4 ; [+5]
       91 LOADK                            R4 K33 ["createRoot()"]
       92 SETTABLEKS                       R4 R3 K32 ["_debugRootType"]
       94 RETURN                           R3 1
       95 GETUPVAL                         R4 14
       96 JUMPIFNOTEQ                      R1 R4 ; [+4]
       98 LOADK                            R4 K34 ["createLegacyRoot()"]
       99 SETTABLEKS                       R4 R3 K32 ["_debugRootType"]
      101 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 CALL                             R4 3 1
        5 GETUPVAL                         R5 1
        6 JUMPIFNOT                        R5 ; [+2]
        7 SETTABLEKS                       R3 R4 K0 ["hydrationCallbacks"]
        9 GETUPVAL                         R5 2
       10 MOVE                             R6 R1
       11 CALL                             R5 1 1
       12 SETTABLEKS                       R5 R4 K1 ["current"]
       14 SETTABLEKS                       R4 R5 K2 ["stateNode"]
       16 GETUPVAL                         R6 3
       17 MOVE                             R7 R5
       18 CALL                             R6 1 0
       19 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["Set"]
       19 GETTABLEKS                       R4 R2 K8 ["Map"]
       21 GETIMPORT                        R5 K4 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R6 R6 K2 ["Parent"]
       27 GETTABLEKS                       R6 R6 K9 ["ReactInternalTypes"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K4 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R7 R7 K2 ["Parent"]
       36 GETTABLEKS                       R7 R7 K10 ["ReactRootTags"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K4 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R8 R8 K2 ["Parent"]
       45 GETTABLEKS                       R8 R8 K11 ["ReactFiberHostConfig"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R7 K12 ["noTimeout"]
       50 GETTABLEKS                       R9 R7 K13 ["supportsHydration"]
       52 GETIMPORT                        R10 K4 [require]
       54 GETIMPORT                        R12 K1 [script]
       56 GETTABLEKS                       R12 R12 K2 ["Parent"]
       58 GETTABLEKS                       R11 R12 K14 ["ReactFiber.new"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R11 R10 K15 ["createHostRootFiber"]
       63 GETIMPORT                        R12 K4 [require]
       65 GETIMPORT                        R13 K1 [script]
       67 GETTABLEKS                       R13 R13 K2 ["Parent"]
       69 GETTABLEKS                       R13 R13 K16 ["ReactFiberLane"]
       71 CALL                             R12 1 1
       72 GETTABLEKS                       R13 R12 K17 ["NoLanes"]
       74 GETTABLEKS                       R14 R12 K18 ["NoLanePriority"]
       76 GETTABLEKS                       R15 R12 K19 ["NoTimestamp"]
       78 GETTABLEKS                       R16 R12 K20 ["createLaneMap"]
       80 GETIMPORT                        R17 K4 [require]
       82 GETTABLEKS                       R18 R0 K21 ["Shared"]
       84 CALL                             R17 1 1
       85 GETTABLEKS                       R17 R17 K22 ["ReactFeatureFlags"]
       87 GETTABLEKS                       R18 R17 K23 ["enableSchedulerTracing"]
       89 GETTABLEKS                       R19 R17 K24 ["enableSuspenseCallback"]
       91 GETIMPORT                        R20 K4 [require]
       93 GETTABLEKS                       R21 R0 K25 ["Scheduler"]
       95 CALL                             R20 1 1
       96 GETTABLEKS                       R20 R20 K26 ["tracing"]
       98 GETTABLEKS                       R21 R20 K27 ["unstable_getThreadID"]
      100 GETIMPORT                        R22 K4 [require]
      102 GETIMPORT                        R24 K1 [script]
      104 GETTABLEKS                       R24 R24 K2 ["Parent"]
      106 GETTABLEKS                       R23 R24 K28 ["ReactUpdateQueue.new"]
      108 CALL                             R22 1 1
      109 GETTABLEKS                       R23 R22 K29 ["initializeUpdateQueue"]
      111 GETTABLEKS                       R24 R6 K30 ["LegacyRoot"]
      113 GETTABLEKS                       R25 R6 K31 ["BlockingRoot"]
      115 GETTABLEKS                       R26 R6 K32 ["ConcurrentRoot"]
      117 NEWTABLE                         R27 1 0
      119 DUPCLOSURE                       R28 K33 [PROTO_0]
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R21
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R25
      133 CAPTURE                          VAL R26
      134 CAPTURE                          VAL R24
      135 DUPCLOSURE                       R29 K34 [PROTO_1]
      136 CAPTURE                          VAL R28
      137 CAPTURE                          VAL R19
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R23
      140 SETTABLEKS                       R29 R27 K35 ["createFiberRoot"]
      142 RETURN                           R27 1
