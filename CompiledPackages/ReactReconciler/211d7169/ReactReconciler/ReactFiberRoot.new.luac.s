PROTO_0:
        0 DUPTABLE                         R3 K22 [{"tag", "containerInfo", "pendingChildren", "current", "pingCache", "finishedWork", "timeoutHandle", "context", "pendingContext", "hydrate", "callbackNode", "callbackPriority", "eventTimes", "expirationTimes", "pendingLanes", "suspendedLanes", "pingedLanes", "expiredLanes", "mutableReadLanes", "finishedLanes", "entangledLanes", "entanglements"}]
        1 SETTABLEKS                       R1 R3 K0 ["tag"]
        3 SETTABLEKS                       R0 R3 K1 ["containerInfo"]
        5 LOADNIL                          R4
        6 SETTABLEKS                       R4 R3 K2 ["pendingChildren"]
        8 LOADNIL                          R4
        9 SETTABLEKS                       R4 R3 K3 ["current"]
       11 LOADNIL                          R4
       12 SETTABLEKS                       R4 R3 K4 ["pingCache"]
       14 LOADNIL                          R4
       15 SETTABLEKS                       R4 R3 K5 ["finishedWork"]
       17 GETUPVAL                         R4 0
       18 SETTABLEKS                       R4 R3 K6 ["timeoutHandle"]
       20 LOADNIL                          R4
       21 SETTABLEKS                       R4 R3 K7 ["context"]
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R3 K8 ["pendingContext"]
       26 SETTABLEKS                       R2 R3 K9 ["hydrate"]
       28 LOADNIL                          R4
       29 SETTABLEKS                       R4 R3 K10 ["callbackNode"]
       31 GETUPVAL                         R4 1
       32 SETTABLEKS                       R4 R3 K11 ["callbackPriority"]
       34 GETUPVAL                         R4 2
       35 GETUPVAL                         R5 3
       36 CALL                             R4 1 1
       37 SETTABLEKS                       R4 R3 K12 ["eventTimes"]
       39 GETUPVAL                         R4 2
       40 GETUPVAL                         R5 4
       41 CALL                             R4 1 1
       42 SETTABLEKS                       R4 R3 K13 ["expirationTimes"]
       44 GETUPVAL                         R4 3
       45 SETTABLEKS                       R4 R3 K14 ["pendingLanes"]
       47 GETUPVAL                         R4 3
       48 SETTABLEKS                       R4 R3 K15 ["suspendedLanes"]
       50 GETUPVAL                         R4 3
       51 SETTABLEKS                       R4 R3 K16 ["pingedLanes"]
       53 GETUPVAL                         R4 3
       54 SETTABLEKS                       R4 R3 K17 ["expiredLanes"]
       56 GETUPVAL                         R4 3
       57 SETTABLEKS                       R4 R3 K18 ["mutableReadLanes"]
       59 GETUPVAL                         R4 3
       60 SETTABLEKS                       R4 R3 K19 ["finishedLanes"]
       62 GETUPVAL                         R4 3
       63 SETTABLEKS                       R4 R3 K20 ["entangledLanes"]
       65 GETUPVAL                         R4 2
       66 GETUPVAL                         R5 3
       67 CALL                             R4 1 1
       68 SETTABLEKS                       R4 R3 K21 ["entanglements"]
       70 GETUPVAL                         R4 5
       71 JUMPIFNOT                        R4 ; [+3]
       72 LOADNIL                          R4
       73 SETTABLEKS                       R4 R3 K23 ["mutableSourceEagerHydrationData"]
       75 GETUPVAL                         R4 6
       76 JUMPIFNOT                        R4 ; [+14]
       77 GETUPVAL                         R4 7
       78 CALL                             R4 0 1
       79 SETTABLEKS                       R4 R3 K24 ["interactionThreadID"]
       81 GETUPVAL                         R5 8
       82 GETTABLEKS                       R4 R5 K25 ["new"]
       84 CALL                             R4 0 1
       85 SETTABLEKS                       R4 R3 K26 ["memoizedInteractions"]
       87 NEWTABLE                         R4 0 0
       89 SETTABLEKS                       R4 R3 K27 ["pendingInteractionMap"]
       91 GETUPVAL                         R4 9
       92 JUMPIFNOT                        R4 ; [+3]
       93 LOADNIL                          R4
       94 SETTABLEKS                       R4 R3 K28 ["hydrationCallbacks"]
       96 GETIMPORT                        R5 K30 [_G]
       98 GETTABLEKS                       R4 R5 K31 ["__DEV__"]
      100 JUMPIFNOT                        R4 ; [+20]
      101 GETUPVAL                         R4 10
      102 JUMPIFNOTEQ                      R1 R4 ; [+5]
      104 LOADK                            R4 K32 ["createBlockingRoot()"]
      105 SETTABLEKS                       R4 R3 K33 ["_debugRootType"]
      107 RETURN                           R3 1
      108 GETUPVAL                         R4 11
      109 JUMPIFNOTEQ                      R1 R4 ; [+5]
      111 LOADK                            R4 K34 ["createRoot()"]
      112 SETTABLEKS                       R4 R3 K33 ["_debugRootType"]
      114 RETURN                           R3 1
      115 GETUPVAL                         R4 12
      116 JUMPIFNOTEQ                      R1 R4 ; [+4]
      118 LOADK                            R4 K35 ["createLegacyRoot()"]
      119 SETTABLEKS                       R4 R3 K33 ["_debugRootType"]
      121 RETURN                           R3 1

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
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Set"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K2 ["Parent"]
       20 GETTABLEKS                       R4 R5 K7 ["ReactInternalTypes"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R6 R7 K2 ["Parent"]
       29 GETTABLEKS                       R5 R6 K8 ["ReactRootTags"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R7 R8 K2 ["Parent"]
       38 GETTABLEKS                       R6 R7 K9 ["ReactFiberHostConfig"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K10 ["noTimeout"]
       43 GETTABLEKS                       R7 R5 K11 ["supportsHydration"]
       45 GETIMPORT                        R8 K4 [require]
       47 GETIMPORT                        R11 K1 [script]
       49 GETTABLEKS                       R10 R11 K2 ["Parent"]
       51 GETTABLEKS                       R9 R10 K12 ["ReactFiber.new"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R8 K13 ["createHostRootFiber"]
       56 GETIMPORT                        R10 K4 [require]
       58 GETIMPORT                        R13 K1 [script]
       60 GETTABLEKS                       R12 R13 K2 ["Parent"]
       62 GETTABLEKS                       R11 R12 K14 ["ReactFiberLane"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R10 K15 ["NoLanes"]
       67 GETTABLEKS                       R12 R10 K16 ["NoLanePriority"]
       69 GETTABLEKS                       R13 R10 K17 ["NoTimestamp"]
       71 GETTABLEKS                       R14 R10 K18 ["createLaneMap"]
       73 GETIMPORT                        R16 K4 [require]
       75 GETTABLEKS                       R17 R0 K19 ["Shared"]
       77 CALL                             R16 1 1
       78 GETTABLEKS                       R15 R16 K20 ["ReactFeatureFlags"]
       80 GETTABLEKS                       R16 R15 K21 ["enableSchedulerTracing"]
       82 GETTABLEKS                       R17 R15 K22 ["enableSuspenseCallback"]
       84 GETIMPORT                        R19 K4 [require]
       86 GETTABLEKS                       R20 R0 K23 ["Scheduler"]
       88 CALL                             R19 1 1
       89 GETTABLEKS                       R18 R19 K24 ["tracing"]
       91 GETTABLEKS                       R19 R18 K25 ["unstable_getThreadID"]
       93 GETIMPORT                        R20 K4 [require]
       95 GETIMPORT                        R23 K1 [script]
       97 GETTABLEKS                       R22 R23 K2 ["Parent"]
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
