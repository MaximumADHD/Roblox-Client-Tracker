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
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["luau-polyfill"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETTABLEKS R1 R0 K7 ["Set"]
  GETTABLEKS R2 R0 K8 ["Map"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K9 ["ReactInternalTypes"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  LOADK R7 K10 ["ReactRootTags"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  LOADK R8 K11 ["ReactFiberHostConfig"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETTABLEKS R6 R5 K12 ["noTimeout"]
  GETTABLEKS R7 R5 K13 ["supportsHydration"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K4 ["Parent"]
  LOADK R11 K14 ["ReactFiber.new"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  GETTABLEKS R9 R8 K15 ["createHostRootFiber"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K4 ["Parent"]
  LOADK R13 K16 ["ReactFiberLane"]
  NAMECALL R11 R11 K6 ["WaitForChild"]
  CALL R11 2 -1
  CALL R10 -1 1
  GETTABLEKS R11 R10 K17 ["NoLanes"]
  GETTABLEKS R12 R10 K18 ["NoLanePriority"]
  GETTABLEKS R13 R10 K19 ["NoTimestamp"]
  GETTABLEKS R14 R10 K20 ["createLaneMap"]
  GETIMPORT R16 K1 [require]
  GETIMPORT R19 K3 [script]
  GETTABLEKS R18 R19 K4 ["Parent"]
  GETTABLEKS R17 R18 K4 ["Parent"]
  LOADK R19 K21 ["shared"]
  NAMECALL R17 R17 K6 ["WaitForChild"]
  CALL R17 2 -1
  CALL R16 -1 1
  GETTABLEKS R15 R16 K22 ["ReactFeatureFlags"]
  GETTABLEKS R16 R15 K23 ["enableSchedulerTracing"]
  GETTABLEKS R17 R15 K24 ["enableSuspenseCallback"]
  GETIMPORT R19 K1 [require]
  GETIMPORT R22 K3 [script]
  GETTABLEKS R21 R22 K4 ["Parent"]
  GETTABLEKS R20 R21 K4 ["Parent"]
  LOADK R22 K25 ["scheduler"]
  NAMECALL R20 R20 K6 ["WaitForChild"]
  CALL R20 2 -1
  CALL R19 -1 1
  GETTABLEKS R18 R19 K26 ["tracing"]
  GETTABLEKS R19 R18 K27 ["unstable_getThreadID"]
  GETIMPORT R20 K1 [require]
  GETIMPORT R22 K3 [script]
  GETTABLEKS R21 R22 K4 ["Parent"]
  LOADK R23 K28 ["ReactUpdateQueue.new"]
  NAMECALL R21 R21 K6 ["WaitForChild"]
  CALL R21 2 -1
  CALL R20 -1 1
  GETTABLEKS R21 R20 K29 ["initializeUpdateQueue"]
  GETTABLEKS R22 R4 K30 ["LegacyRoot"]
  GETTABLEKS R23 R4 K31 ["BlockingRoot"]
  GETTABLEKS R24 R4 K32 ["ConcurrentRoot"]
  NEWTABLE R25 1 0
  DUPCLOSURE R26 K33 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R16
  CAPTURE VAL R19
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R22
  DUPCLOSURE R27 K34 [PROTO_1]
  CAPTURE VAL R26
  CAPTURE VAL R17
  CAPTURE VAL R9
  CAPTURE VAL R21
  SETTABLEKS R27 R25 K35 ["createFiberRoot"]
  RETURN R25 1
