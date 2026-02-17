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
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["__DEV__"]
  JUMPIFNOT R0 [+7]
  GETUPVAL R0 1
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["error"]
  LOADK R1 K2 ["We should not be hydrating here. This is a bug in React. Please file a bug."]
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
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K15 ["__DEV__"]
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
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["__DEV__"]
  JUMPIFNOT R4 [+37]
  JUMPIFNOT R3 [+36]
  GETUPVAL R4 4
  JUMPIFEQKNIL R4 [+34]
  GETTABLEKS R5 R4 K4 ["tag"]
  GETUPVAL R6 5
  JUMPIFNOTEQ R5 R6 [+11]
  GETTABLEKS R6 R4 K1 ["stateNode"]
  GETTABLEKS R5 R6 K5 ["containerInfo"]
  GETUPVAL R6 6
  MOVE R7 R5
  MOVE R8 R1
  MOVE R9 R2
  CALL R6 3 0
  RETURN R3 1
  GETTABLEKS R5 R4 K4 ["tag"]
  GETUPVAL R6 7
  JUMPIFNOTEQ R5 R6 [+14]
  GETTABLEKS R5 R4 K6 ["type"]
  GETTABLEKS R6 R4 K2 ["memoizedProps"]
  GETTABLEKS R7 R4 K1 ["stateNode"]
  GETUPVAL R8 8
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
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["ReactGlobals"]
  CALL R1 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K6 ["Shared"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["console"]
  DUPCLOSURE R3 K8 [PROTO_0]
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K9 ["ReactInternalTypes"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K10 ["ReactFiberHostConfig"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K11 ["ReactFiberSuspenseComponent.new"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K2 ["Parent"]
  GETTABLEKS R8 R9 K12 ["ReactWorkTags"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K13 ["HostComponent"]
  GETTABLEKS R9 R7 K14 ["HostText"]
  GETTABLEKS R10 R7 K15 ["HostRoot"]
  GETTABLEKS R11 R7 K16 ["SuspenseComponent"]
  GETIMPORT R12 K4 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K2 ["Parent"]
  GETTABLEKS R13 R14 K17 ["ReactFiberFlags"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K18 ["Placement"]
  GETTABLEKS R14 R12 K19 ["Hydrating"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R0 K6 ["Shared"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K20 ["invariant"]
  GETIMPORT R16 K4 [require]
  GETIMPORT R19 K1 [script]
  GETTABLEKS R18 R19 K2 ["Parent"]
  GETTABLEKS R17 R18 K21 ["ReactFiber.new"]
  CALL R16 1 1
  GETTABLEKS R17 R16 K22 ["createFiberFromDehydratedFragment"]
  GETTABLEKS R18 R5 K23 ["supportsHydration"]
  GETTABLEKS R19 R5 K24 ["getNextHydratableSibling"]
  GETTABLEKS R20 R5 K25 ["getFirstHydratableChild"]
  GETTABLEKS R21 R5 K26 ["canHydrateInstance"]
  GETTABLEKS R22 R5 K27 ["canHydrateTextInstance"]
  GETTABLEKS R23 R5 K28 ["canHydrateSuspenseInstance"]
  GETTABLEKS R24 R5 K29 ["hydrateInstance"]
  GETTABLEKS R25 R5 K30 ["hydrateTextInstance"]
  GETTABLEKS R26 R5 K31 ["hydrateSuspenseInstance"]
  GETTABLEKS R27 R5 K32 ["getNextHydratableInstanceAfterSuspenseInstance"]
  GETTABLEKS R28 R5 K33 ["didNotMatchHydratedContainerTextInstance"]
  GETTABLEKS R29 R5 K34 ["didNotMatchHydratedTextInstance"]
  GETTABLEKS R30 R5 K35 ["shouldSetTextContent"]
  GETIMPORT R33 K4 [require]
  GETTABLEKS R34 R0 K6 ["Shared"]
  CALL R33 1 1
  GETTABLEKS R32 R33 K36 ["ReactFeatureFlags"]
  GETTABLEKS R31 R32 K37 ["enableSuspenseServerRenderer"]
  GETIMPORT R33 K4 [require]
  GETIMPORT R36 K1 [script]
  GETTABLEKS R35 R36 K2 ["Parent"]
  GETTABLEKS R34 R35 K38 ["ReactFiberLane"]
  CALL R33 1 1
  GETTABLEKS R32 R33 K39 ["OffscreenLane"]
  LOADNIL R33
  LOADNIL R34
  LOADB R35 0
  NEWCLOSURE R36 P1
  CAPTURE VAL R1
  CAPTURE REF R35
  CAPTURE VAL R2
  SETGLOBAL R36 K40 ["warnIfHydrating"]
  NEWCLOSURE R36 P2
  CAPTURE VAL R18
  CAPTURE REF R34
  CAPTURE VAL R20
  CAPTURE REF R33
  CAPTURE REF R35
  SETGLOBAL R36 K41 ["enterHydrationState"]
  NEWCLOSURE R36 P3
  CAPTURE VAL R18
  CAPTURE REF R34
  CAPTURE VAL R19
  CAPTURE REF R35
  SETGLOBAL R36 K42 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
  DUPCLOSURE R36 K43 [PROTO_4]
  SETGLOBAL R36 K44 ["deleteHydratableInstance"]
  DUPCLOSURE R36 K45 [PROTO_5]
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R1
  SETGLOBAL R36 K46 ["insertNonHydratedInstance"]
  DUPCLOSURE R36 K47 [PROTO_6]
  CAPTURE VAL R8
  CAPTURE VAL R21
  CAPTURE VAL R9
  CAPTURE VAL R22
  CAPTURE VAL R11
  CAPTURE VAL R31
  CAPTURE VAL R23
  CAPTURE VAL R32
  CAPTURE VAL R17
  SETGLOBAL R36 K48 ["tryHydrate"]
  NEWCLOSURE R36 P7
  CAPTURE REF R35
  CAPTURE REF R34
  CAPTURE REF R33
  CAPTURE VAL R19
  CAPTURE VAL R20
  SETGLOBAL R36 K49 ["tryToClaimNextHydratableInstance"]
  DUPCLOSURE R36 K50 [PROTO_8]
  CAPTURE VAL R18
  CAPTURE VAL R15
  CAPTURE VAL R24
  SETGLOBAL R36 K51 ["prepareToHydrateHostInstance"]
  NEWCLOSURE R36 P9
  CAPTURE VAL R18
  CAPTURE VAL R15
  CAPTURE VAL R25
  CAPTURE VAL R1
  CAPTURE REF R33
  CAPTURE VAL R10
  CAPTURE VAL R28
  CAPTURE VAL R8
  CAPTURE VAL R29
  SETGLOBAL R36 K52 ["prepareToHydrateHostTextInstance"]
  DUPCLOSURE R36 K53 [PROTO_10]
  CAPTURE VAL R18
  CAPTURE VAL R15
  CAPTURE VAL R26
  SETGLOBAL R36 K54 ["prepareToHydrateHostSuspenseInstance"]
  DUPCLOSURE R36 K55 [PROTO_11]
  CAPTURE VAL R18
  CAPTURE VAL R15
  CAPTURE VAL R27
  SETGLOBAL R36 K56 ["skipPastDehydratedSuspenseInstance"]
  NEWCLOSURE R36 P12
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE REF R33
  SETGLOBAL R36 K57 ["popToNextHostParent"]
  NEWCLOSURE R36 P13
  CAPTURE VAL R18
  CAPTURE REF R33
  CAPTURE REF R35
  CAPTURE VAL R8
  CAPTURE VAL R30
  CAPTURE REF R34
  CAPTURE VAL R19
  CAPTURE VAL R11
  SETGLOBAL R36 K58 ["popHydrationState"]
  NEWCLOSURE R36 P14
  CAPTURE VAL R18
  CAPTURE REF R33
  CAPTURE REF R34
  CAPTURE REF R35
  SETGLOBAL R36 K59 ["resetHydrationState"]
  NEWCLOSURE R36 P15
  CAPTURE REF R35
  SETGLOBAL R36 K60 ["getIsHydrating"]
  DUPTABLE R36 K61 [{"warnIfHydrating", "enterHydrationState", "getIsHydrating", "reenterHydrationStateFromDehydratedSuspenseInstance", "resetHydrationState", "tryToClaimNextHydratableInstance", "prepareToHydrateHostInstance", "prepareToHydrateHostTextInstance", "prepareToHydrateHostSuspenseInstance", "popHydrationState"}]
  GETGLOBAL R37 K40 ["warnIfHydrating"]
  SETTABLEKS R37 R36 K40 ["warnIfHydrating"]
  GETGLOBAL R37 K41 ["enterHydrationState"]
  SETTABLEKS R37 R36 K41 ["enterHydrationState"]
  GETGLOBAL R37 K60 ["getIsHydrating"]
  SETTABLEKS R37 R36 K60 ["getIsHydrating"]
  GETGLOBAL R37 K42 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
  SETTABLEKS R37 R36 K42 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
  GETGLOBAL R37 K59 ["resetHydrationState"]
  SETTABLEKS R37 R36 K59 ["resetHydrationState"]
  GETGLOBAL R37 K49 ["tryToClaimNextHydratableInstance"]
  SETTABLEKS R37 R36 K49 ["tryToClaimNextHydratableInstance"]
  GETGLOBAL R37 K51 ["prepareToHydrateHostInstance"]
  SETTABLEKS R37 R36 K51 ["prepareToHydrateHostInstance"]
  GETGLOBAL R37 K52 ["prepareToHydrateHostTextInstance"]
  SETTABLEKS R37 R36 K52 ["prepareToHydrateHostTextInstance"]
  GETGLOBAL R37 K54 ["prepareToHydrateHostSuspenseInstance"]
  SETTABLEKS R37 R36 K54 ["prepareToHydrateHostSuspenseInstance"]
  GETGLOBAL R37 K58 ["popHydrationState"]
  SETTABLEKS R37 R36 K58 ["popHydrationState"]
  CLOSEUPVALS R33
  RETURN R36 1
