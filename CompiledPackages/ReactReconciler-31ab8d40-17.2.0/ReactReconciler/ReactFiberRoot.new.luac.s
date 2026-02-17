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
  GETIMPORT R5 K30 [_G]
  GETTABLEKS R4 R5 K31 ["__DEV__"]
  JUMPIFNOT R4 [+20]
  GETUPVAL R4 11
  JUMPIFNOTEQ R1 R4 [+5]
  LOADK R4 K32 ["createBlockingRoot()"]
  SETTABLEKS R4 R3 K33 ["_debugRootType"]
  RETURN R3 1
  GETUPVAL R4 12
  JUMPIFNOTEQ R1 R4 [+5]
  LOADK R4 K34 ["createRoot()"]
  SETTABLEKS R4 R3 K33 ["_debugRootType"]
  RETURN R3 1
  GETUPVAL R4 13
  JUMPIFNOTEQ R1 R4 [+4]
  LOADK R4 K35 ["createLegacyRoot()"]
  SETTABLEKS R4 R3 K33 ["_debugRootType"]
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
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["Set"]
  GETTABLEKS R3 R1 K7 ["Map"]
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K8 ["ReactInternalTypes"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K9 ["ReactRootTags"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K10 ["ReactFiberHostConfig"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K11 ["noTimeout"]
  GETTABLEKS R8 R6 K12 ["supportsHydration"]
  GETIMPORT R9 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K13 ["ReactFiber.new"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K14 ["createHostRootFiber"]
  GETIMPORT R11 K4 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K15 ["ReactFiberLane"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K16 ["NoLanes"]
  GETTABLEKS R13 R11 K17 ["NoLanePriority"]
  GETTABLEKS R14 R11 K18 ["NoTimestamp"]
  GETTABLEKS R15 R11 K19 ["createLaneMap"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R0 K20 ["Shared"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K21 ["ReactFeatureFlags"]
  GETTABLEKS R17 R16 K22 ["enableSchedulerTracing"]
  GETTABLEKS R18 R16 K23 ["enableSuspenseCallback"]
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R0 K24 ["Scheduler"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K25 ["tracing"]
  GETTABLEKS R20 R19 K26 ["unstable_getThreadID"]
  GETIMPORT R21 K4 [require]
  GETIMPORT R24 K1 [script]
  GETTABLEKS R23 R24 K2 ["Parent"]
  GETTABLEKS R22 R23 K27 ["ReactUpdateQueue.new"]
  CALL R21 1 1
  GETTABLEKS R22 R21 K28 ["initializeUpdateQueue"]
  GETTABLEKS R23 R5 K29 ["LegacyRoot"]
  GETTABLEKS R24 R5 K30 ["BlockingRoot"]
  GETTABLEKS R25 R5 K31 ["ConcurrentRoot"]
  NEWTABLE R26 1 0
  DUPCLOSURE R27 K32 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R20
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R18
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R23
  DUPCLOSURE R28 K33 [PROTO_1]
  CAPTURE VAL R27
  CAPTURE VAL R18
  CAPTURE VAL R10
  CAPTURE VAL R22
  SETTABLEKS R28 R26 K34 ["createFiberRoot"]
  RETURN R26 1
