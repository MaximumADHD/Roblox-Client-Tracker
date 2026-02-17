PROTO_0:
  DUPTABLE R3 K22 [{"tag", "containerInfo", "pendingChildren", "current", "pingCache", "finishedWork", "timeoutHandle", "context", "pendingContext", "hydrate", "callbackNode", "callbackPriority", "eventTimes", "expirationTimes", "pendingLanes", "suspendedLanes", "pingedLanes", "expiredLanes", "mutableReadLanes", "finishedLanes", "entangledLanes", "entanglements"}]
  SETTABLEKS R1 R3 K0 ["tag"]
  SETTABLEKS R0 R3 K1 ["containerInfo"]
  LOADNIL R4
  SETTABLEKS R4 R3 K2 ["pendingChildren"]
  LOADNIL R4
  SETTABLEKS R4 R3 K3 ["current"]
  LOADNIL R4
  SETTABLEKS R4 R3 K4 ["pingCache"]
  LOADNIL R4
  SETTABLEKS R4 R3 K5 ["finishedWork"]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K6 ["timeoutHandle"]
  LOADNIL R4
  SETTABLEKS R4 R3 K7 ["context"]
  LOADNIL R4
  SETTABLEKS R4 R3 K8 ["pendingContext"]
  SETTABLEKS R2 R3 K9 ["hydrate"]
  LOADNIL R4
  SETTABLEKS R4 R3 K10 ["callbackNode"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K11 ["callbackPriority"]
  GETUPVAL R4 2
  GETUPVAL R5 3
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["eventTimes"]
  GETUPVAL R4 2
  GETUPVAL R5 4
  CALL R4 1 1
  SETTABLEKS R4 R3 K13 ["expirationTimes"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K14 ["pendingLanes"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K15 ["suspendedLanes"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K16 ["pingedLanes"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K17 ["expiredLanes"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K18 ["mutableReadLanes"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K19 ["finishedLanes"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K20 ["entangledLanes"]
  GETUPVAL R4 2
  GETUPVAL R5 3
  CALL R4 1 1
  SETTABLEKS R4 R3 K21 ["entanglements"]
  GETUPVAL R4 5
  JUMPIFNOT R4 [+3]
  LOADNIL R4
  SETTABLEKS R4 R3 K23 ["mutableSourceEagerHydrationData"]
  GETUPVAL R4 6
  JUMPIFNOT R4 [+16]
  GETUPVAL R4 7
  CALL R4 0 1
  SETTABLEKS R4 R3 K24 ["interactionThreadID"]
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K25 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K26 ["memoizedInteractions"]
  GETUPVAL R5 9
  GETTABLEKS R4 R5 K25 ["new"]
  CALL R4 0 1
  SETTABLEKS R4 R3 K27 ["pendingInteractionMap"]
  GETUPVAL R4 10
  JUMPIFNOT R4 [+3]
  LOADNIL R4
  SETTABLEKS R4 R3 K28 ["hydrationCallbacks"]
  GETUPVAL R5 11
  GETTABLEKS R4 R5 K29 ["__DEV__"]
  JUMPIFNOT R4 [+20]
  GETUPVAL R4 12
  JUMPIFNOTEQ R1 R4 [+5]
  LOADK R4 K30 ["createBlockingRoot()"]
  SETTABLEKS R4 R3 K31 ["_debugRootType"]
  RETURN R3 1
  GETUPVAL R4 13
  JUMPIFNOTEQ R1 R4 [+5]
  LOADK R4 K32 ["createRoot()"]
  SETTABLEKS R4 R3 K31 ["_debugRootType"]
  RETURN R3 1
  GETUPVAL R4 14
  JUMPIFNOTEQ R1 R4 [+4]
  LOADK R4 K33 ["createLegacyRoot()"]
  SETTABLEKS R4 R3 K31 ["_debugRootType"]
  RETURN R3 1

PROTO_1:
  GETUPVAL R4 0
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 1
  GETUPVAL R5 1
  JUMPIFNOT R5 [+2]
  SETTABLEKS R3 R4 K0 ["hydrationCallbacks"]
  GETUPVAL R5 2
  MOVE R6 R1
  CALL R5 1 1
  SETTABLEKS R5 R4 K1 ["current"]
  SETTABLEKS R4 R5 K2 ["stateNode"]
  GETUPVAL R6 3
  MOVE R7 R5
  CALL R6 1 0
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["ReactGlobals"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K6 ["LuauPolyfill"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K7 ["Set"]
  GETTABLEKS R4 R2 K8 ["Map"]
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K9 ["ReactInternalTypes"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K10 ["ReactRootTags"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K2 ["Parent"]
  GETTABLEKS R8 R9 K11 ["ReactFiberHostConfig"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K12 ["noTimeout"]
  GETTABLEKS R9 R7 K13 ["supportsHydration"]
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K14 ["ReactFiber.new"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K15 ["createHostRootFiber"]
  GETIMPORT R12 K4 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K2 ["Parent"]
  GETTABLEKS R13 R14 K16 ["ReactFiberLane"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K17 ["NoLanes"]
  GETTABLEKS R14 R12 K18 ["NoLanePriority"]
  GETTABLEKS R15 R12 K19 ["NoTimestamp"]
  GETTABLEKS R16 R12 K20 ["createLaneMap"]
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R0 K21 ["Shared"]
  CALL R18 1 1
  GETTABLEKS R17 R18 K22 ["ReactFeatureFlags"]
  GETTABLEKS R18 R17 K23 ["enableSchedulerTracing"]
  GETTABLEKS R19 R17 K24 ["enableSuspenseCallback"]
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R0 K25 ["Scheduler"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K26 ["tracing"]
  GETTABLEKS R21 R20 K27 ["unstable_getThreadID"]
  GETIMPORT R22 K4 [require]
  GETIMPORT R25 K1 [script]
  GETTABLEKS R24 R25 K2 ["Parent"]
  GETTABLEKS R23 R24 K28 ["ReactUpdateQueue.new"]
  CALL R22 1 1
  GETTABLEKS R23 R22 K29 ["initializeUpdateQueue"]
  GETTABLEKS R24 R6 K30 ["LegacyRoot"]
  GETTABLEKS R25 R6 K31 ["BlockingRoot"]
  GETTABLEKS R26 R6 K32 ["ConcurrentRoot"]
  NEWTABLE R27 1 0
  DUPCLOSURE R28 K33 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R18
  CAPTURE VAL R21
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R19
  CAPTURE VAL R1
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R24
  DUPCLOSURE R29 K34 [PROTO_1]
  CAPTURE VAL R28
  CAPTURE VAL R19
  CAPTURE VAL R11
  CAPTURE VAL R23
  SETTABLEKS R29 R27 K35 ["createFiberRoot"]
  RETURN R27 1
