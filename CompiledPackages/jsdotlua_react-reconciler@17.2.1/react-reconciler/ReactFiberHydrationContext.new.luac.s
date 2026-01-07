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
  LOADK R4 K3 ["UNIMPLEMENTED ERROR: "]
  LOADK R5 K4 ["deleteHydratableInstance"]
  CONCAT R3 R4 R5
  CALL R2 1 0
  GETIMPORT R2 K6 [error]
  LOADK R4 K7 ["FIXME (roblox): "]
  LOADK R5 K4 ["deleteHydratableInstance"]
  LOADK R6 K8 [" is unimplemented"]
  CONCAT R3 R4 R6
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
  LOADK R4 K3 ["UNIMPLEMENTED ERROR: "]
  LOADK R5 K4 ["insertNonHydratedInstance"]
  CONCAT R3 R4 R5
  CALL R2 1 0
  GETIMPORT R2 K6 [error]
  LOADK R4 K7 ["FIXME (roblox): "]
  LOADK R5 K4 ["insertNonHydratedInstance"]
  LOADK R6 K8 [" is unimplemented"]
  CONCAT R3 R4 R6
  LOADN R4 2
  CALL R2 2 0
  GETTABLEKS R4 R1 K9 ["flags"]
  GETUPVAL R6 0
  FASTCALL1 BIT32_BNOT R6 [+2]
  GETIMPORT R5 K12 [bit32.bnot]
  CALL R5 1 1
  FASTCALL2 BIT32_BAND R4 R5 [+3]
  GETIMPORT R3 K14 [bit32.band]
  CALL R3 2 1
  GETUPVAL R4 1
  FASTCALL2 BIT32_BOR R3 R4 [+3]
  GETIMPORT R2 K16 [bit32.bor]
  CALL R2 2 1
  SETTABLEKS R2 R1 K9 ["flags"]
  GETIMPORT R3 K18 [_G]
  GETTABLEKS R2 R3 K19 ["__DEV__"]
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
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K5 ["shared"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETTABLEKS R0 R1 K7 ["console"]
  DUPCLOSURE R1 K8 [PROTO_0]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  LOADK R5 K9 ["ReactInternalTypes"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K10 ["ReactFiberHostConfig"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  LOADK R7 K11 ["ReactFiberSuspenseComponent.new"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  LOADK R8 K12 ["ReactWorkTags"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETTABLEKS R6 R5 K13 ["HostComponent"]
  GETTABLEKS R7 R5 K14 ["HostText"]
  GETTABLEKS R8 R5 K15 ["HostRoot"]
  GETTABLEKS R9 R5 K16 ["SuspenseComponent"]
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K4 ["Parent"]
  LOADK R13 K17 ["ReactFiberFlags"]
  NAMECALL R11 R11 K6 ["WaitForChild"]
  CALL R11 2 -1
  CALL R10 -1 1
  GETTABLEKS R11 R10 K18 ["Placement"]
  GETTABLEKS R12 R10 K19 ["Hydrating"]
  GETIMPORT R14 K1 [require]
  GETIMPORT R17 K3 [script]
  GETTABLEKS R16 R17 K4 ["Parent"]
  GETTABLEKS R15 R16 K4 ["Parent"]
  LOADK R17 K5 ["shared"]
  NAMECALL R15 R15 K6 ["WaitForChild"]
  CALL R15 2 -1
  CALL R14 -1 1
  GETTABLEKS R13 R14 K20 ["invariant"]
  GETIMPORT R14 K1 [require]
  GETIMPORT R16 K3 [script]
  GETTABLEKS R15 R16 K4 ["Parent"]
  LOADK R17 K21 ["ReactFiber.new"]
  NAMECALL R15 R15 K6 ["WaitForChild"]
  CALL R15 2 -1
  CALL R14 -1 1
  GETTABLEKS R15 R14 K22 ["createFiberFromDehydratedFragment"]
  GETTABLEKS R16 R3 K23 ["supportsHydration"]
  GETTABLEKS R17 R3 K24 ["getNextHydratableSibling"]
  GETTABLEKS R18 R3 K25 ["getFirstHydratableChild"]
  GETTABLEKS R19 R3 K26 ["canHydrateInstance"]
  GETTABLEKS R20 R3 K27 ["canHydrateTextInstance"]
  GETTABLEKS R21 R3 K28 ["canHydrateSuspenseInstance"]
  GETTABLEKS R22 R3 K29 ["hydrateInstance"]
  GETTABLEKS R23 R3 K30 ["hydrateTextInstance"]
  GETTABLEKS R24 R3 K31 ["hydrateSuspenseInstance"]
  GETTABLEKS R25 R3 K32 ["getNextHydratableInstanceAfterSuspenseInstance"]
  GETTABLEKS R26 R3 K33 ["didNotMatchHydratedContainerTextInstance"]
  GETTABLEKS R27 R3 K34 ["didNotMatchHydratedTextInstance"]
  GETTABLEKS R28 R3 K35 ["shouldSetTextContent"]
  GETIMPORT R31 K1 [require]
  GETIMPORT R34 K3 [script]
  GETTABLEKS R33 R34 K4 ["Parent"]
  GETTABLEKS R32 R33 K4 ["Parent"]
  LOADK R34 K5 ["shared"]
  NAMECALL R32 R32 K6 ["WaitForChild"]
  CALL R32 2 -1
  CALL R31 -1 1
  GETTABLEKS R30 R31 K36 ["ReactFeatureFlags"]
  GETTABLEKS R29 R30 K37 ["enableSuspenseServerRenderer"]
  GETIMPORT R31 K1 [require]
  GETIMPORT R33 K3 [script]
  GETTABLEKS R32 R33 K4 ["Parent"]
  LOADK R34 K38 ["ReactFiberLane"]
  NAMECALL R32 R32 K6 ["WaitForChild"]
  CALL R32 2 -1
  CALL R31 -1 1
  GETTABLEKS R30 R31 K39 ["OffscreenLane"]
  LOADNIL R31
  LOADNIL R32
  LOADB R33 0
  NEWCLOSURE R34 P1
  CAPTURE REF R33
  CAPTURE VAL R0
  SETGLOBAL R34 K40 ["warnIfHydrating"]
  NEWCLOSURE R34 P2
  CAPTURE VAL R16
  CAPTURE REF R32
  CAPTURE VAL R18
  CAPTURE REF R31
  CAPTURE REF R33
  SETGLOBAL R34 K41 ["enterHydrationState"]
  NEWCLOSURE R34 P3
  CAPTURE VAL R16
  CAPTURE REF R32
  CAPTURE VAL R17
  CAPTURE REF R33
  SETGLOBAL R34 K42 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
  DUPCLOSURE R34 K43 [PROTO_4]
  SETGLOBAL R34 K44 ["deleteHydratableInstance"]
  DUPCLOSURE R34 K45 [PROTO_5]
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETGLOBAL R34 K46 ["insertNonHydratedInstance"]
  DUPCLOSURE R34 K47 [PROTO_6]
  CAPTURE VAL R6
  CAPTURE VAL R19
  CAPTURE VAL R7
  CAPTURE VAL R20
  CAPTURE VAL R9
  CAPTURE VAL R29
  CAPTURE VAL R21
  CAPTURE VAL R30
  CAPTURE VAL R15
  SETGLOBAL R34 K48 ["tryHydrate"]
  NEWCLOSURE R34 P7
  CAPTURE REF R33
  CAPTURE REF R32
  CAPTURE REF R31
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETGLOBAL R34 K49 ["tryToClaimNextHydratableInstance"]
  DUPCLOSURE R34 K50 [PROTO_8]
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R22
  SETGLOBAL R34 K51 ["prepareToHydrateHostInstance"]
  NEWCLOSURE R34 P9
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R23
  CAPTURE REF R31
  CAPTURE VAL R8
  CAPTURE VAL R26
  CAPTURE VAL R6
  CAPTURE VAL R27
  SETGLOBAL R34 K52 ["prepareToHydrateHostTextInstance"]
  DUPCLOSURE R34 K53 [PROTO_10]
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R24
  SETGLOBAL R34 K54 ["prepareToHydrateHostSuspenseInstance"]
  DUPCLOSURE R34 K55 [PROTO_11]
  CAPTURE VAL R16
  CAPTURE VAL R13
  CAPTURE VAL R25
  SETGLOBAL R34 K56 ["skipPastDehydratedSuspenseInstance"]
  NEWCLOSURE R34 P12
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE REF R31
  SETGLOBAL R34 K57 ["popToNextHostParent"]
  NEWCLOSURE R34 P13
  CAPTURE VAL R16
  CAPTURE REF R31
  CAPTURE REF R33
  CAPTURE VAL R6
  CAPTURE VAL R28
  CAPTURE REF R32
  CAPTURE VAL R17
  CAPTURE VAL R9
  SETGLOBAL R34 K58 ["popHydrationState"]
  NEWCLOSURE R34 P14
  CAPTURE VAL R16
  CAPTURE REF R31
  CAPTURE REF R32
  CAPTURE REF R33
  SETGLOBAL R34 K59 ["resetHydrationState"]
  NEWCLOSURE R34 P15
  CAPTURE REF R33
  SETGLOBAL R34 K60 ["getIsHydrating"]
  DUPTABLE R34 K61 [{"warnIfHydrating", "enterHydrationState", "getIsHydrating", "reenterHydrationStateFromDehydratedSuspenseInstance", "resetHydrationState", "tryToClaimNextHydratableInstance", "prepareToHydrateHostInstance", "prepareToHydrateHostTextInstance", "prepareToHydrateHostSuspenseInstance", "popHydrationState"}]
  GETGLOBAL R35 K40 ["warnIfHydrating"]
  SETTABLEKS R35 R34 K40 ["warnIfHydrating"]
  GETGLOBAL R35 K41 ["enterHydrationState"]
  SETTABLEKS R35 R34 K41 ["enterHydrationState"]
  GETGLOBAL R35 K60 ["getIsHydrating"]
  SETTABLEKS R35 R34 K60 ["getIsHydrating"]
  GETGLOBAL R35 K42 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
  SETTABLEKS R35 R34 K42 ["reenterHydrationStateFromDehydratedSuspenseInstance"]
  GETGLOBAL R35 K59 ["resetHydrationState"]
  SETTABLEKS R35 R34 K59 ["resetHydrationState"]
  GETGLOBAL R35 K49 ["tryToClaimNextHydratableInstance"]
  SETTABLEKS R35 R34 K49 ["tryToClaimNextHydratableInstance"]
  GETGLOBAL R35 K51 ["prepareToHydrateHostInstance"]
  SETTABLEKS R35 R34 K51 ["prepareToHydrateHostInstance"]
  GETGLOBAL R35 K52 ["prepareToHydrateHostTextInstance"]
  SETTABLEKS R35 R34 K52 ["prepareToHydrateHostTextInstance"]
  GETGLOBAL R35 K54 ["prepareToHydrateHostSuspenseInstance"]
  SETTABLEKS R35 R34 K54 ["prepareToHydrateHostSuspenseInstance"]
  GETGLOBAL R35 K58 ["popHydrationState"]
  SETTABLEKS R35 R34 K58 ["popHydrationState"]
  CLOSEUPVALS R31
  RETURN R34 1
