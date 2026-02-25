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
       98 GETIMPORT                        R5 K30 [_G]
      100 GETTABLEKS                       R4 R5 K31 ["__DEV__"]
      102 JUMPIFNOT                        R4 ; [+20]
      103 GETUPVAL                         R4 11
      104 JUMPIFNOTEQ                      R1 R4 ; [+5]
      106 LOADK                            R4 K32 ["createBlockingRoot()"]
      107 SETTABLEKS                       R4 R3 K33 ["_debugRootType"]
      109 RETURN                           R3 1
      110 GETUPVAL                         R4 12
      111 JUMPIFNOTEQ                      R1 R4 ; [+5]
      113 LOADK                            R4 K34 ["createRoot()"]
      114 SETTABLEKS                       R4 R3 K33 ["_debugRootType"]
      116 RETURN                           R3 1
      117 GETUPVAL                         R4 13
      118 JUMPIFNOTEQ                      R1 R4 ; [+4]
      120 LOADK                            R4 K35 ["createLegacyRoot()"]
      121 SETTABLEKS                       R4 R3 K33 ["_debugRootType"]
      123 RETURN                           R3 1

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
       14 GETTABLEKS                       R3 R1 K7 ["Map"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETIMPORT                        R7 K1 [script]
       20 GETTABLEKS                       R6 R7 K2 ["Parent"]
       22 GETTABLEKS                       R5 R6 K8 ["ReactInternalTypes"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K4 [require]
       27 GETIMPORT                        R8 K1 [script]
       29 GETTABLEKS                       R7 R8 K2 ["Parent"]
       31 GETTABLEKS                       R6 R7 K9 ["ReactRootTags"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K4 [require]
       36 GETIMPORT                        R9 K1 [script]
       38 GETTABLEKS                       R8 R9 K2 ["Parent"]
       40 GETTABLEKS                       R7 R8 K10 ["ReactFiberHostConfig"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R6 K11 ["noTimeout"]
       45 GETTABLEKS                       R8 R6 K12 ["supportsHydration"]
       47 GETIMPORT                        R9 K4 [require]
       49 GETIMPORT                        R12 K1 [script]
       51 GETTABLEKS                       R11 R12 K2 ["Parent"]
       53 GETTABLEKS                       R10 R11 K13 ["ReactFiber.new"]
       55 CALL                             R9 1 1
       56 GETTABLEKS                       R10 R9 K14 ["createHostRootFiber"]
       58 GETIMPORT                        R11 K4 [require]
       60 GETIMPORT                        R14 K1 [script]
       62 GETTABLEKS                       R13 R14 K2 ["Parent"]
       64 GETTABLEKS                       R12 R13 K15 ["ReactFiberLane"]
       66 CALL                             R11 1 1
       67 GETTABLEKS                       R12 R11 K16 ["NoLanes"]
       69 GETTABLEKS                       R13 R11 K17 ["NoLanePriority"]
       71 GETTABLEKS                       R14 R11 K18 ["NoTimestamp"]
       73 GETTABLEKS                       R15 R11 K19 ["createLaneMap"]
       75 GETIMPORT                        R17 K4 [require]
       77 GETTABLEKS                       R18 R0 K20 ["Shared"]
       79 CALL                             R17 1 1
       80 GETTABLEKS                       R16 R17 K21 ["ReactFeatureFlags"]
       82 GETTABLEKS                       R17 R16 K22 ["enableSchedulerTracing"]
       84 GETTABLEKS                       R18 R16 K23 ["enableSuspenseCallback"]
       86 GETIMPORT                        R20 K4 [require]
       88 GETTABLEKS                       R21 R0 K24 ["Scheduler"]
       90 CALL                             R20 1 1
       91 GETTABLEKS                       R19 R20 K25 ["tracing"]
       93 GETTABLEKS                       R20 R19 K26 ["unstable_getThreadID"]
       95 GETIMPORT                        R21 K4 [require]
       97 GETIMPORT                        R24 K1 [script]
       99 GETTABLEKS                       R23 R24 K2 ["Parent"]
      101 GETTABLEKS                       R22 R23 K27 ["ReactUpdateQueue.new"]
      103 CALL                             R21 1 1
      104 GETTABLEKS                       R22 R21 K28 ["initializeUpdateQueue"]
      106 GETTABLEKS                       R23 R5 K29 ["LegacyRoot"]
      108 GETTABLEKS                       R24 R5 K30 ["BlockingRoot"]
      110 GETTABLEKS                       R25 R5 K31 ["ConcurrentRoot"]
      112 NEWTABLE                         R26 1 0
      114 DUPCLOSURE                       R27 K32 [PROTO_0]
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R20
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R18
      126 CAPTURE                          VAL R24
      127 CAPTURE                          VAL R25
      128 CAPTURE                          VAL R23
      129 DUPCLOSURE                       R28 K33 [PROTO_1]
      130 CAPTURE                          VAL R27
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R22
      134 SETTABLEKS                       R28 R26 K34 ["createFiberRoot"]
      136 RETURN                           R26 1
