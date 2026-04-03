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
       76 JUMPIFNOT                        R4 ; [+16]
       77 GETUPVAL                         R4 7
       78 CALL                             R4 0 1
       79 SETTABLEKS                       R4 R3 K24 ["interactionThreadID"]
       81 GETUPVAL                         R5 8
       82 GETTABLEKS                       R4 R5 K25 ["new"]
       84 CALL                             R4 0 1
       85 SETTABLEKS                       R4 R3 K26 ["memoizedInteractions"]
       87 GETUPVAL                         R5 9
       88 GETTABLEKS                       R4 R5 K25 ["new"]
       90 CALL                             R4 0 1
       91 SETTABLEKS                       R4 R3 K27 ["pendingInteractionMap"]
       93 GETUPVAL                         R4 10
       94 JUMPIFNOT                        R4 ; [+3]
       95 LOADNIL                          R4
       96 SETTABLEKS                       R4 R3 K28 ["hydrationCallbacks"]
       98 GETUPVAL                         R5 11
       99 GETTABLEKS                       R4 R5 K29 ["__DEV__"]
      101 JUMPIFNOT                        R4 ; [+20]
      102 GETUPVAL                         R4 12
      103 JUMPIFNOTEQ                      R1 R4 ; [+5]
      105 LOADK                            R4 K30 ["createBlockingRoot()"]
      106 SETTABLEKS                       R4 R3 K31 ["_debugRootType"]
      108 RETURN                           R3 1
      109 GETUPVAL                         R4 13
      110 JUMPIFNOTEQ                      R1 R4 ; [+5]
      112 LOADK                            R4 K32 ["createRoot()"]
      113 SETTABLEKS                       R4 R3 K31 ["_debugRootType"]
      115 RETURN                           R3 1
      116 GETUPVAL                         R4 14
      117 JUMPIFNOTEQ                      R1 R4 ; [+4]
      119 LOADK                            R4 K33 ["createLegacyRoot()"]
      120 SETTABLEKS                       R4 R3 K31 ["_debugRootType"]
      122 RETURN                           R3 1

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
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["Set"]
       19 GETTABLEKS                       R4 R2 K8 ["Map"]
       21 GETIMPORT                        R5 K4 [require]
       23 GETIMPORT                        R8 K1 [script]
       25 GETTABLEKS                       R7 R8 K2 ["Parent"]
       27 GETTABLEKS                       R6 R7 K9 ["ReactInternalTypes"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K4 [require]
       32 GETIMPORT                        R9 K1 [script]
       34 GETTABLEKS                       R8 R9 K2 ["Parent"]
       36 GETTABLEKS                       R7 R8 K10 ["ReactRootTags"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K4 [require]
       41 GETIMPORT                        R10 K1 [script]
       43 GETTABLEKS                       R9 R10 K2 ["Parent"]
       45 GETTABLEKS                       R8 R9 K11 ["ReactFiberHostConfig"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R7 K12 ["noTimeout"]
       50 GETTABLEKS                       R9 R7 K13 ["supportsHydration"]
       52 GETIMPORT                        R10 K4 [require]
       54 GETIMPORT                        R13 K1 [script]
       56 GETTABLEKS                       R12 R13 K2 ["Parent"]
       58 GETTABLEKS                       R11 R12 K14 ["ReactFiber.new"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R11 R10 K15 ["createHostRootFiber"]
       63 GETIMPORT                        R12 K4 [require]
       65 GETIMPORT                        R15 K1 [script]
       67 GETTABLEKS                       R14 R15 K2 ["Parent"]
       69 GETTABLEKS                       R13 R14 K16 ["ReactFiberLane"]
       71 CALL                             R12 1 1
       72 GETTABLEKS                       R13 R12 K17 ["NoLanes"]
       74 GETTABLEKS                       R14 R12 K18 ["NoLanePriority"]
       76 GETTABLEKS                       R15 R12 K19 ["NoTimestamp"]
       78 GETTABLEKS                       R16 R12 K20 ["createLaneMap"]
       80 GETIMPORT                        R18 K4 [require]
       82 GETTABLEKS                       R19 R0 K21 ["Shared"]
       84 CALL                             R18 1 1
       85 GETTABLEKS                       R17 R18 K22 ["ReactFeatureFlags"]
       87 GETTABLEKS                       R18 R17 K23 ["enableSchedulerTracing"]
       89 GETTABLEKS                       R19 R17 K24 ["enableSuspenseCallback"]
       91 GETIMPORT                        R21 K4 [require]
       93 GETTABLEKS                       R22 R0 K25 ["Scheduler"]
       95 CALL                             R21 1 1
       96 GETTABLEKS                       R20 R21 K26 ["tracing"]
       98 GETTABLEKS                       R21 R20 K27 ["unstable_getThreadID"]
      100 GETIMPORT                        R22 K4 [require]
      102 GETIMPORT                        R25 K1 [script]
      104 GETTABLEKS                       R24 R25 K2 ["Parent"]
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
