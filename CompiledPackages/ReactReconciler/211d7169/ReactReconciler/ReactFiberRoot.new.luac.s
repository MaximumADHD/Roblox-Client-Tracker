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
       55 JUMPIFNOT                        R4 ; [+14]
       56 GETUPVAL                         R4 7
       57 CALL                             R4 0 1
       58 SETTABLEKS                       R4 R3 K25 ["interactionThreadID"]
       60 GETUPVAL                         R4 8
       61 GETTABLEKS                       R4 R4 K26 ["new"]
       63 CALL                             R4 0 1
       64 SETTABLEKS                       R4 R3 K27 ["memoizedInteractions"]
       66 NEWTABLE                         R4 0 0
       68 SETTABLEKS                       R4 R3 K28 ["pendingInteractionMap"]
       70 GETUPVAL                         R4 9
       71 JUMPIFNOT                        R4 ; [+3]
       72 LOADNIL                          R4
       73 SETTABLEKS                       R4 R3 K29 ["hydrationCallbacks"]
       75 GETIMPORT                        R4 K31 [_G]
       77 GETTABLEKS                       R4 R4 K32 ["__DEV__"]
       79 JUMPIFNOT                        R4 ; [+20]
       80 GETUPVAL                         R4 10
       81 JUMPIFNOTEQ                      R1 R4 ; [+5]
       83 LOADK                            R4 K33 ["createBlockingRoot()"]
       84 SETTABLEKS                       R4 R3 K34 ["_debugRootType"]
       86 RETURN                           R3 1
       87 GETUPVAL                         R4 11
       88 JUMPIFNOTEQ                      R1 R4 ; [+5]
       90 LOADK                            R4 K35 ["createRoot()"]
       91 SETTABLEKS                       R4 R3 K34 ["_debugRootType"]
       93 RETURN                           R3 1
       94 GETUPVAL                         R4 12
       95 JUMPIFNOTEQ                      R1 R4 ; [+4]
       97 LOADK                            R4 K36 ["createLegacyRoot()"]
       98 SETTABLEKS                       R4 R3 K34 ["_debugRootType"]
      100 RETURN                           R3 1

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
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Set"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K2 ["Parent"]
       20 GETTABLEKS                       R4 R4 K7 ["ReactInternalTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETIMPORT                        R5 K1 [script]
       27 GETTABLEKS                       R5 R5 K2 ["Parent"]
       29 GETTABLEKS                       R5 R5 K8 ["ReactRootTags"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K2 ["Parent"]
       38 GETTABLEKS                       R6 R6 K9 ["ReactFiberHostConfig"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K10 ["noTimeout"]
       43 GETTABLEKS                       R7 R5 K11 ["supportsHydration"]
       45 GETIMPORT                        R8 K4 [require]
       47 GETIMPORT                        R10 K1 [script]
       49 GETTABLEKS                       R10 R10 K2 ["Parent"]
       51 GETTABLEKS                       R9 R10 K12 ["ReactFiber.new"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R8 K13 ["createHostRootFiber"]
       56 GETIMPORT                        R10 K4 [require]
       58 GETIMPORT                        R11 K1 [script]
       60 GETTABLEKS                       R11 R11 K2 ["Parent"]
       62 GETTABLEKS                       R11 R11 K14 ["ReactFiberLane"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R10 K15 ["NoLanes"]
       67 GETTABLEKS                       R12 R10 K16 ["NoLanePriority"]
       69 GETTABLEKS                       R13 R10 K17 ["NoTimestamp"]
       71 GETTABLEKS                       R14 R10 K18 ["createLaneMap"]
       73 GETIMPORT                        R15 K4 [require]
       75 GETTABLEKS                       R16 R0 K19 ["Shared"]
       77 CALL                             R15 1 1
       78 GETTABLEKS                       R15 R15 K20 ["ReactFeatureFlags"]
       80 GETTABLEKS                       R16 R15 K21 ["enableSchedulerTracing"]
       82 GETTABLEKS                       R17 R15 K22 ["enableSuspenseCallback"]
       84 GETIMPORT                        R18 K4 [require]
       86 GETTABLEKS                       R19 R0 K23 ["Scheduler"]
       88 CALL                             R18 1 1
       89 GETTABLEKS                       R18 R18 K24 ["tracing"]
       91 GETTABLEKS                       R19 R18 K25 ["unstable_getThreadID"]
       93 GETIMPORT                        R20 K4 [require]
       95 GETIMPORT                        R22 K1 [script]
       97 GETTABLEKS                       R22 R22 K2 ["Parent"]
       99 GETTABLEKS                       R21 R22 K26 ["ReactUpdateQueue.new"]
      101 CALL                             R20 1 1
      102 GETTABLEKS                       R21 R20 K27 ["initializeUpdateQueue"]
      104 GETTABLEKS                       R22 R4 K28 ["LegacyRoot"]
      106 GETTABLEKS                       R23 R4 K29 ["BlockingRoot"]
      108 GETTABLEKS                       R24 R4 K30 ["ConcurrentRoot"]
      110 NEWTABLE                         R25 1 0
      112 DUPCLOSURE                       R26 K31 [PROTO_0]
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R19
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R23
      124 CAPTURE                          VAL R24
      125 CAPTURE                          VAL R22
      126 DUPCLOSURE                       R27 K32 [PROTO_1]
      127 CAPTURE                          VAL R26
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R21
      131 SETTABLEKS                       R27 R25 K33 ["createFiberRoot"]
      133 RETURN                           R25 1
