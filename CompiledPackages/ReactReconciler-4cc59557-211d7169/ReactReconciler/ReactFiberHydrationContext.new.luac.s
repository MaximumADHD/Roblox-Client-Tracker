PROTO_0:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R1 1 0
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R1 1 0
  GETIMPORT R1 K1 [print]
  LOADK R3 K3 ["UNIMPLEMENTED ERROR: "]
  MOVE R4 R0
  CONCAT R2 R3 R4
  CALL R1 1 0
  GETIMPORT R1 K5 [error]
  LOADK R3 K6 ["FIXME (roblox): "]
  MOVE R4 R0
  LOADK R5 K7 [" is unimplemented"]
  CONCAT R2 R3 R5
  LOADN R3 2
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K1 [_G]
  GETTABLEKS R0 R1 K2 ["__DEV__"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["error"]
  LOADK R1 K4 ["We should not be hydrating here. This is a bug in React. Please file a bug."]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R2 R0 K0 ["stateNode"]
  GETTABLEKS R1 R2 K1 ["containerInfo"]
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 1
  SETUPVAL R2 1
  SETUPVAL R0 3
  LOADB R2 1
  SETUPVAL R2 4
  LOADB R2 1
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 1
  SETUPVAL R2 1
  GETGLOBAL R2 K0 ["popToNextHostParent"]
  MOVE R3 R0
  CALL R2 1 0
  LOADB R2 1
  SETUPVAL R2 3
  LOADB R2 1
  RETURN R2 1

PROTO_4:
  GETIMPORT R2 K1 [print]
  LOADK R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R2 1 0
  GETIMPORT R2 K1 [print]
  LOADK R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R2 1 0
  GETIMPORT R2 K1 [print]
  LOADK R3 K3 ["UNIMPLEMENTED ERROR: deleteHydratableInstance"]
  CALL R2 1 0
  GETIMPORT R2 K5 [error]
  LOADK R3 K6 ["FIXME (roblox): deleteHydratableInstance is unimplemented"]
  LOADN R4 2
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R2 K1 [print]
  LOADK R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R2 1 0
  GETIMPORT R2 K1 [print]
  LOADK R3 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
  CALL R2 1 0
  GETIMPORT R2 K1 [print]
  LOADK R3 K3 ["UNIMPLEMENTED ERROR: insertNonHydratedInstance"]
  CALL R2 1 0
  GETIMPORT R2 K5 [error]
  LOADK R3 K6 ["FIXME (roblox): insertNonHydratedInstance is unimplemented"]
  LOADN R4 2
  CALL R2 2 0
  GETTABLEKS R4 R1 K7 ["flags"]
  GETUPVAL R6 0
  FASTCALL1 BIT32_BNOT R6 [+2]
  GETIMPORT R5 K10 [bit32.bnot]
  CALL R5 1 1
  FASTCALL2 BIT32_BAND R4 R5 [+3]
  GETIMPORT R3 K12 [bit32.band]
  CALL R3 2 1
  GETUPVAL R4 1
  FASTCALL2 BIT32_BOR R3 R4 [+3]
  GETIMPORT R2 K14 [bit32.bor]
  CALL R2 2 1
  SETTABLEKS R2 R1 K7 ["flags"]
  GETIMPORT R3 K16 [_G]
  GETTABLEKS R2 R3 K17 ["__DEV__"]
  JUMPIFNOT R2 [0]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["tag"]
  GETUPVAL R3 0
  JUMPIFNOTEQ R2 R3 [+18]
  GETTABLEKS R2 R0 K1 ["type"]
  GETTABLEKS R3 R0 K2 ["pendingProps"]
  GETUPVAL R4 1
  MOVE R5 R1
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 1
  JUMPIFEQKNIL R4 [+5]
  SETTABLEKS R4 R0 K3 ["stateNode"]
  LOADB R5 1
  RETURN R5 1
  LOADB R5 0
  RETURN R5 1
  GETTABLEKS R2 R0 K0 ["tag"]
  GETUPVAL R3 2
  JUMPIFNOTEQ R2 R3 [+15]
  GETTABLEKS R2 R0 K2 ["pendingProps"]
  GETUPVAL R3 3
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 1
  JUMPIFEQKNIL R3 [+5]
  SETTABLEKS R3 R0 K3 ["stateNode"]
  LOADB R4 1
  RETURN R4 1
  LOADB R4 0
  RETURN R4 1
  GETTABLEKS R2 R0 K0 ["tag"]
  GETUPVAL R3 4
  JUMPIFNOTEQ R2 R3 [+27]
  GETUPVAL R2 5
  JUMPIFNOT R2 [+22]
  GETUPVAL R2 6
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFEQKNIL R2 [+18]
  DUPTABLE R3 K6 [{"dehydrated", "retryLane"}]
  SETTABLEKS R2 R3 K4 ["dehydrated"]
  GETUPVAL R4 7
  SETTABLEKS R4 R3 K5 ["retryLane"]
  SETTABLEKS R3 R0 K7 ["memoizedState"]
  GETUPVAL R4 8
  MOVE R5 R2
  CALL R4 1 1
  SETTABLEKS R0 R4 K8 ["return_"]
  SETTABLEKS R4 R0 K9 ["child"]
  LOADB R5 1
  RETURN R5 1
  LOADB R2 0
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_7:
  GETUPVAL R1 0
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  JUMPIF R1 [+9]
  GETGLOBAL R2 K0 ["insertNonHydratedInstance"]
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R2 2 0
  LOADB R2 0
  SETUPVAL R2 0
  SETUPVAL R0 2
  RETURN R0 0
  MOVE R2 R1
  GETGLOBAL R3 K1 ["tryHydrate"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  JUMPIF R3 [+25]
  GETUPVAL R3 3
  MOVE R4 R2
  CALL R3 1 1
  MOVE R1 R3
  JUMPIFNOT R1 [+6]
  GETGLOBAL R3 K1 ["tryHydrate"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  JUMPIF R3 [+9]
  GETGLOBAL R3 K0 ["insertNonHydratedInstance"]
  GETUPVAL R4 2
  MOVE R5 R0
  CALL R3 2 0
  LOADB R3 0
  SETUPVAL R3 0
  SETUPVAL R0 2
  RETURN R0 0
  GETGLOBAL R3 K2 ["deleteHydratableInstance"]
  GETUPVAL R4 2
  MOVE R5 R2
  CALL R3 2 0
  SETUPVAL R0 2
  GETUPVAL R3 4
  MOVE R4 R1
  CALL R3 1 1
  SETUPVAL R3 1
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  JUMPIF R3 [+4]
  GETUPVAL R3 1
  LOADB R4 0
  LOADK R5 K0 ["Expected prepareToHydrateHostInstance() to never be called. This error is likely caused by a bug in React. Please file an issue."]
  CALL R3 2 0
  GETTABLEKS R3 R0 K1 ["stateNode"]
  GETUPVAL R4 2
  MOVE R5 R3
  GETTABLEKS R6 R0 K2 ["type"]
  GETTABLEKS R7 R0 K3 ["memoizedProps"]
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R0
  CALL R4 6 1
  SETTABLEKS R4 R0 K4 ["updateQueue"]
  JUMPIFEQKNIL R4 [+3]
  LOADB R5 1
  RETURN R5 1
  LOADB R5 0
  RETURN R5 1

PROTO_9:
  GETUPVAL R1 0
  JUMPIF R1 [+4]
  GETUPVAL R1 1
  LOADB R2 0
  LOADK R3 K0 ["Expected prepareToHydrateHostTextInstance() to never be called. This error is likely caused by a bug in React. Please file an issue."]
  CALL R1 2 0
  GETTABLEKS R1 R0 K1 ["stateNode"]
  GETTABLEKS R2 R0 K2 ["memoizedProps"]
  GETUPVAL R3 2
  MOVE R4 R1
  MOVE R5 R2
  MOVE R6 R0
  CALL R3 3 1
  GETIMPORT R5 K4 [_G]
  GETTABLEKS R4 R5 K5 ["__DEV__"]
  JUMPIFNOT R4 [+37]
  JUMPIFNOT R3 [+36]
  GETUPVAL R4 3
  JUMPIFEQKNIL R4 [+34]
  GETTABLEKS R5 R4 K6 ["tag"]
  GETUPVAL R6 4
  JUMPIFNOTEQ R5 R6 [+11]
  GETTABLEKS R6 R4 K1 ["stateNode"]
  GETTABLEKS R5 R6 K7 ["containerInfo"]
  GETUPVAL R6 5
  MOVE R7 R5
  MOVE R8 R1
  MOVE R9 R2
  CALL R6 3 0
  RETURN R3 1
  GETTABLEKS R5 R4 K6 ["tag"]
  GETUPVAL R6 6
  JUMPIFNOTEQ R5 R6 [+14]
  GETTABLEKS R5 R4 K8 ["type"]
  GETTABLEKS R6 R4 K2 ["memoizedProps"]
  GETTABLEKS R7 R4 K1 ["stateNode"]
  GETUPVAL R8 7
  MOVE R9 R5
  MOVE R10 R6
  MOVE R11 R7
  MOVE R12 R1
  MOVE R13 R2
  CALL R8 5 0
  RETURN R3 1

PROTO_10:
  GETUPVAL R1 0
  JUMPIF R1 [+4]
  GETUPVAL R1 1
  LOADB R2 0
  LOADK R3 K0 ["Expected prepareToHydrateHostSuspenseInstance() to never be called. This error is likely caused by a bug in React. Please file an issue."]
  CALL R1 2 0
  GETTABLEKS R1 R0 K1 ["memoizedState"]
  LOADNIL R2
  JUMPIFEQKNIL R1 [+4]
  GETTABLEKS R2 R1 K2 ["dehydrated"]
  JUMP [+1]
  LOADNIL R2
  GETUPVAL R3 1
  MOVE R4 R2
  LOADK R5 K3 ["Expected to have a hydrated suspense instance. This error is likely caused by a bug in React. Please file an issue."]
  CALL R3 2 0
  GETUPVAL R3 2
  MOVE R4 R2
  MOVE R5 R0
  CALL R3 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  JUMPIF R1 [+4]
  GETUPVAL R1 1
  LOADB R2 0
  LOADK R3 K0 ["Expected skipPastDehydratedSuspenseInstance() to never be called. This error is likely caused by a bug in React. Please file an issue."]
  CALL R1 2 0
  GETTABLEKS R1 R0 K1 ["memoizedState"]
  LOADNIL R2
  JUMPIFEQKNIL R1 [+4]
  GETTABLEKS R2 R1 K2 ["dehydrated"]
  JUMP [+1]
  LOADNIL R2
  GETUPVAL R3 1
  MOVE R4 R2
  LOADK R5 K3 ["Expected to have a hydrated suspense instance. This error is likely caused by a bug in React. Please file an issue."]
  CALL R3 2 0
  GETUPVAL R3 2
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1

PROTO_12:
  GETTABLEKS R1 R0 K0 ["return_"]
  JUMPIFEQKNIL R1 [+19]
  GETTABLEKS R2 R1 K1 ["tag"]
  GETUPVAL R3 0
  JUMPIFEQ R2 R3 [+14]
  GETTABLEKS R2 R1 K1 ["tag"]
  GETUPVAL R3 1
  JUMPIFEQ R2 R3 [+9]
  GETTABLEKS R2 R1 K1 ["tag"]
  GETUPVAL R3 2
  JUMPIFEQ R2 R3 [+4]
  GETTABLEKS R1 R1 K0 ["return_"]
  JUMPBACK [-20]
  SETUPVAL R1 3
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  JUMPIF R1 [+2]
  LOADB R1 0
  RETURN R1 1
  GETUPVAL R1 1
  JUMPIFEQ R0 R1 [+3]
  LOADB R1 0
  RETURN R1 1
  GETUPVAL R1 2
  JUMPIF R1 [+8]
  GETGLOBAL R1 K0 ["popToNextHostParent"]
  MOVE R2 R0
  CALL R1 1 0
  LOADB R1 1
  SETUPVAL R1 2
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R1 R0 K1 ["type"]
  GETTABLEKS R2 R0 K2 ["tag"]
  GETUPVAL R3 3
  JUMPIFNOTEQ R2 R3 [+11]
  JUMPIFEQKS R1 K3 ["head"] [+21]
  JUMPIFEQKS R1 K4 ["body"] [+19]
  GETUPVAL R2 4
  MOVE R3 R1
  GETTABLEKS R4 R0 K5 ["memoizedProps"]
  CALL R2 2 1
  JUMPIF R2 [+12]
  GETUPVAL R2 5
  JUMPIFNOT R2 [+10]
  GETGLOBAL R3 K6 ["deleteHydratableInstance"]
  MOVE R4 R0
  MOVE R5 R2
  CALL R3 2 0
  GETUPVAL R3 6
  MOVE R4 R2
  CALL R3 1 1
  MOVE R2 R3
  JUMPBACK [-11]
  GETGLOBAL R2 K0 ["popToNextHostParent"]
  MOVE R3 R0
  CALL R2 1 0
  GETTABLEKS R2 R0 K2 ["tag"]
  GETUPVAL R3 7
  JUMPIFNOTEQ R2 R3 [+7]
  GETGLOBAL R2 K7 ["skipPastDehydratedSuspenseInstance"]
  MOVE R3 R0
  CALL R2 1 1
  SETUPVAL R2 5
  JUMP [+10]
  GETUPVAL R2 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R2 6
  GETTABLEKS R3 R0 K8 ["stateNode"]
  CALL R2 1 1
  SETUPVAL R2 5
  JUMP [+2]
  LOADNIL R2
  SETUPVAL R2 5
  LOADB R2 1
  RETURN R2 1

PROTO_14:
  GETUPVAL R0 0
  JUMPIF R0 [+1]
  RETURN R0 0
  LOADNIL R0
  SETUPVAL R0 1
  LOADNIL R0
  SETUPVAL R0 2
  LOADB R0 0
  SETUPVAL R0 3
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K5 ["Shared"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K6 ["console"]
  DUPCLOSURE R2 K7 [PROTO_0]
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K8 ["ReactInternalTypes"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K9 ["ReactFiberHostConfig"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K10 ["ReactFiberSuspenseComponent.new"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K11 ["ReactWorkTags"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K12 ["HostComponent"]
  GETTABLEKS R8 R6 K13 ["HostText"]
  GETTABLEKS R9 R6 K14 ["HostRoot"]
  GETTABLEKS R10 R6 K15 ["SuspenseComponent"]
  GETIMPORT R11 K4 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K16 ["ReactFiberFlags"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K17 ["Placement"]
  GETTABLEKS R13 R11 K18 ["Hydrating"]
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R0 K5 ["Shared"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K19 ["invariant"]
  GETIMPORT R15 K4 [require]
  GETIMPORT R18 K1 [script]
  GETTABLEKS R17 R18 K2 ["Parent"]
  GETTABLEKS R16 R17 K20 ["ReactFiber.new"]
  CALL R15 1 1
  GETTABLEKS R16 R15 K21 ["createFiberFromDehydratedFragment"]
  GETTABLEKS R17 R4 K22 ["supportsHydration"]
  GETTABLEKS R18 R4 K23 ["getNextHydratableSibling"]
  GETTABLEKS R19 R4 K24 ["getFirstHydratableChild"]
  GETTABLEKS R20 R4 K25 ["canHydrateInstance"]
  GETTABLEKS R21 R4 K26 ["canHydrateTextInstance"]
  GETTABLEKS R22 R4 K27 ["canHydrateSuspenseInstance"]
  GETTABLEKS R23 R4 K28 ["hydrateInstance"]
  GETTABLEKS R24 R4 K29 ["hydrateTextInstance"]
  GETTABLEKS R25 R4 K30 ["hydrateSuspenseInstance"]
  GETTABLEKS R26 R4 K31 ["getNextHydratableInstanceAfterSuspenseInstance"]
  GETTABLEKS R27 R4 K32 ["didNotMatchHydratedContainerTextInstance"]
  GETTABLEKS R28 R4 K33 ["didNotMatchHydratedTextInstance"]
  GETTABLEKS R29 R4 K34 ["shouldSetTextContent"]
  GETIMPORT R32 K4 [require]
  GETTABLEKS R33 R0 K5 ["Shared"]
  CALL R32 1 1
  GETTABLEKS R31 R32 K35 ["ReactFeatureFlags"]
  GETTABLEKS R30 R31 K36 ["enableSuspenseServerRenderer"]
  GETIMPORT R32 K4 [require]
  GETIMPORT R35 K1 [script]
  GETTABLEKS R34 R35 K2 ["Parent"]
  GETTABLEKS R33 R34 K37 ["ReactFiberLane"]
  CALL R32 1 1
  GETTABLEKS R31 R32 K38 ["OffscreenLane"]
  LOADNIL R32
  LOADNIL R33
  LOADB R34 0
  NEWCLOSURE R35 P1
  CAPTURE REF R34
  CAPTURE VAL R1
  SETGLOBAL R35 K39 ["warnIfHydrating"]
  NEWCLOSURE R35 P2
  CAPTURE VAL R17
  CAPTURE REF R33
  CAPTURE VAL R19
  CAPTURE REF R32
  CAPTURE REF R34
  SETGLOBAL R35 K40 ["enterHydrationState"]
  NEWCLOSURE R35 P3
  CAPTURE VAL R17
  CAPTURE REF R33
  CAPTURE VAL R18
  CAPTURE REF R34
  SETGLOBAL R35 K41 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
  DUPCLOSURE R35 K42 [PROTO_4]
  SETGLOBAL R35 K43 ["deleteHydratableInstance"]
  DUPCLOSURE R35 K44 [PROTO_5]
  CAPTURE VAL R13
  CAPTURE VAL R12
  SETGLOBAL R35 K45 ["insertNonHydratedInstance"]
  DUPCLOSURE R35 K46 [PROTO_6]
  CAPTURE VAL R7
  CAPTURE VAL R20
  CAPTURE VAL R8
  CAPTURE VAL R21
  CAPTURE VAL R10
  CAPTURE VAL R30
  CAPTURE VAL R22
  CAPTURE VAL R31
  CAPTURE VAL R16
  SETGLOBAL R35 K47 ["tryHydrate"]
  NEWCLOSURE R35 P7
  CAPTURE REF R34
  CAPTURE REF R33
  CAPTURE REF R32
  CAPTURE VAL R18
  CAPTURE VAL R19
  SETGLOBAL R35 K48 ["tryToClaimNextHydratableInstance"]
  DUPCLOSURE R35 K49 [PROTO_8]
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R23
  SETGLOBAL R35 K50 ["prepareToHydrateHostInstance"]
  NEWCLOSURE R35 P9
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R24
  CAPTURE REF R32
  CAPTURE VAL R9
  CAPTURE VAL R27
  CAPTURE VAL R7
  CAPTURE VAL R28
  SETGLOBAL R35 K51 ["prepareToHydrateHostTextInstance"]
  DUPCLOSURE R35 K52 [PROTO_10]
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R25
  SETGLOBAL R35 K53 ["prepareToHydrateHostSuspenseInstance"]
  DUPCLOSURE R35 K54 [PROTO_11]
  CAPTURE VAL R17
  CAPTURE VAL R14
  CAPTURE VAL R26
  SETGLOBAL R35 K55 ["skipPastDehydratedSuspenseInstance"]
  NEWCLOSURE R35 P12
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE REF R32
  SETGLOBAL R35 K56 ["popToNextHostParent"]
  NEWCLOSURE R35 P13
  CAPTURE VAL R17
  CAPTURE REF R32
  CAPTURE REF R34
  CAPTURE VAL R7
  CAPTURE VAL R29
  CAPTURE REF R33
  CAPTURE VAL R18
  CAPTURE VAL R10
  SETGLOBAL R35 K57 ["popHydrationState"]
  NEWCLOSURE R35 P14
  CAPTURE VAL R17
  CAPTURE REF R32
  CAPTURE REF R33
  CAPTURE REF R34
  SETGLOBAL R35 K58 ["resetHydrationState"]
  NEWCLOSURE R35 P15
  CAPTURE REF R34
  SETGLOBAL R35 K59 ["getIsHydrating"]
  DUPTABLE R35 K60 [{"warnIfHydrating", "enterHydrationState", "getIsHydrating", "reenterHydrationStateFromDehydratedSuspenseInstance", "resetHydrationState", "tryToClaimNextHydratableInstance", "prepareToHydrateHostInstance", "prepareToHydrateHostTextInstance", "prepareToHydrateHostSuspenseInstance", "popHydrationState"}]
  GETGLOBAL R36 K39 ["warnIfHydrating"]
  SETTABLEKS R36 R35 K39 ["warnIfHydrating"]
  GETGLOBAL R36 K40 ["enterHydrationState"]
  SETTABLEKS R36 R35 K40 ["enterHydrationState"]
  GETGLOBAL R36 K59 ["getIsHydrating"]
  SETTABLEKS R36 R35 K59 ["getIsHydrating"]
  GETGLOBAL R36 K41 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
  SETTABLEKS R36 R35 K41 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
  GETGLOBAL R36 K58 ["resetHydrationState"]
  SETTABLEKS R36 R35 K58 ["resetHydrationState"]
  GETGLOBAL R36 K48 ["tryToClaimNextHydratableInstance"]
  SETTABLEKS R36 R35 K48 ["tryToClaimNextHydratableInstance"]
  GETGLOBAL R36 K50 ["prepareToHydrateHostInstance"]
  SETTABLEKS R36 R35 K50 ["prepareToHydrateHostInstance"]
  GETGLOBAL R36 K51 ["prepareToHydrateHostTextInstance"]
  SETTABLEKS R36 R35 K51 ["prepareToHydrateHostTextInstance"]
  GETGLOBAL R36 K53 ["prepareToHydrateHostSuspenseInstance"]
  SETTABLEKS R36 R35 K53 ["prepareToHydrateHostSuspenseInstance"]
  GETGLOBAL R36 K57 ["popHydrationState"]
  SETTABLEKS R36 R35 K57 ["popHydrationState"]
  CLOSEUPVALS R32
  RETURN R35 1
