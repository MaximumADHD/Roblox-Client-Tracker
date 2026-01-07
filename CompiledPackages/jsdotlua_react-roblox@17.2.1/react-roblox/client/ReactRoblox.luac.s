PROTO_0:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 1
  LOADK R5 K0 ["Target container is not a Roblox Instance."]
  CALL R3 2 0
  GETUPVAL R3 2
  MOVE R4 R0
  MOVE R5 R1
  LOADNIL R6
  MOVE R7 R2
  CALL R3 4 -1
  RETURN R3 -1

PROTO_1:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["ReactRoblox.act is only available in testing environments, not production. Enable the `__ROACT_17_MOCK_SCHEDULER__` global in your test configuration in order to use `act`."]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["shared"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K7 ["ReactRobloxHostTypes.roblox"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  LOADNIL R2
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K8 ["ReactRobloxRoot"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  MOVE R2 R3
  GETTABLEKS R3 R2 K9 ["createRoot"]
  GETTABLEKS R4 R2 K10 ["createBlockingRoot"]
  GETTABLEKS R5 R2 K11 ["createLegacyRoot"]
  GETTABLEKS R6 R2 K12 ["isValidContainer"]
  GETIMPORT R7 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K4 ["Parent"]
  GETTABLEKS R8 R9 K4 ["Parent"]
  LOADK R10 K13 ["ReactReconciler.roblox"]
  NAMECALL R8 R8 K6 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  GETTABLEKS R8 R7 K14 ["batchedUpdates"]
  GETTABLEKS R9 R7 K15 ["flushSync"]
  GETTABLEKS R10 R7 K16 ["injectIntoDevTools"]
  GETTABLEKS R11 R7 K17 ["flushPassiveEffects"]
  GETTABLEKS R12 R7 K18 ["IsThisRendererActing"]
  GETTABLEKS R13 R7 K19 ["createPortal"]
  GETIMPORT R15 K1 [require]
  GETIMPORT R19 K3 [script]
  GETTABLEKS R18 R19 K4 ["Parent"]
  GETTABLEKS R17 R18 K4 ["Parent"]
  GETTABLEKS R16 R17 K4 ["Parent"]
  LOADK R18 K5 ["shared"]
  NAMECALL R16 R16 K6 ["WaitForChild"]
  CALL R16 2 -1
  CALL R15 -1 1
  GETTABLEKS R14 R15 K20 ["ReactVersion"]
  GETIMPORT R16 K1 [require]
  GETIMPORT R20 K3 [script]
  GETTABLEKS R19 R20 K4 ["Parent"]
  GETTABLEKS R18 R19 K4 ["Parent"]
  GETTABLEKS R17 R18 K4 ["Parent"]
  LOADK R19 K5 ["shared"]
  NAMECALL R17 R17 K6 ["WaitForChild"]
  CALL R17 2 -1
  CALL R16 -1 1
  GETTABLEKS R15 R16 K21 ["invariant"]
  GETIMPORT R17 K1 [require]
  GETIMPORT R21 K3 [script]
  GETTABLEKS R20 R21 K4 ["Parent"]
  GETTABLEKS R19 R20 K4 ["Parent"]
  GETTABLEKS R18 R19 K4 ["Parent"]
  LOADK R20 K5 ["shared"]
  NAMECALL R18 R18 K6 ["WaitForChild"]
  CALL R18 2 -1
  CALL R17 -1 1
  GETTABLEKS R16 R17 K22 ["ReactFeatureFlags"]
  GETTABLEKS R17 R16 K23 ["enableNewReconciler"]
  GETIMPORT R18 K1 [require]
  GETIMPORT R20 K3 [script]
  GETTABLEKS R19 R20 K4 ["Parent"]
  LOADK R21 K24 ["ReactRobloxComponentTree"]
  NAMECALL R19 R19 K6 ["WaitForChild"]
  CALL R19 2 -1
  CALL R18 -1 1
  GETTABLEKS R19 R18 K25 ["getInstanceFromNode"]
  GETTABLEKS R20 R18 K26 ["getNodeFromInstance"]
  GETTABLEKS R21 R18 K27 ["getFiberCurrentPropsFromNode"]
  GETTABLEKS R22 R18 K28 ["getClosestInstanceFromNode"]
  GETIMPORT R24 K1 [require]
  GETIMPORT R28 K3 [script]
  GETTABLEKS R27 R28 K4 ["Parent"]
  GETTABLEKS R26 R27 K4 ["Parent"]
  GETTABLEKS R25 R26 K4 ["Parent"]
  LOADK R27 K5 ["shared"]
  NAMECALL R25 R25 K6 ["WaitForChild"]
  CALL R25 2 -1
  CALL R24 -1 1
  GETTABLEKS R23 R24 K29 ["Event"]
  GETIMPORT R25 K1 [require]
  GETIMPORT R29 K3 [script]
  GETTABLEKS R28 R29 K4 ["Parent"]
  GETTABLEKS R27 R28 K4 ["Parent"]
  GETTABLEKS R26 R27 K4 ["Parent"]
  LOADK R28 K5 ["shared"]
  NAMECALL R26 R26 K6 ["WaitForChild"]
  CALL R26 2 -1
  CALL R25 -1 1
  GETTABLEKS R24 R25 K30 ["Change"]
  GETIMPORT R26 K1 [require]
  GETIMPORT R30 K3 [script]
  GETTABLEKS R29 R30 K4 ["Parent"]
  GETTABLEKS R28 R29 K4 ["Parent"]
  GETTABLEKS R27 R28 K4 ["Parent"]
  LOADK R29 K5 ["shared"]
  NAMECALL R27 R27 K6 ["WaitForChild"]
  CALL R27 2 -1
  CALL R26 -1 1
  GETTABLEKS R25 R26 K31 ["Tag"]
  DUPCLOSURE R26 K32 [PROTO_0]
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R13
  DUPTABLE R27 K34 [{"Events"}]
  DUPTABLE R28 K35 [{"getInstanceFromNode", "getNodeFromInstance", "getFiberCurrentPropsFromNode", "flushPassiveEffects", "IsThisRendererActing"}]
  SETTABLEKS R19 R28 K25 ["getInstanceFromNode"]
  SETTABLEKS R20 R28 K26 ["getNodeFromInstance"]
  SETTABLEKS R21 R28 K27 ["getFiberCurrentPropsFromNode"]
  SETTABLEKS R11 R28 K17 ["flushPassiveEffects"]
  SETTABLEKS R12 R28 K18 ["IsThisRendererActing"]
  SETTABLEKS R28 R27 K33 ["Events"]
  DUPTABLE R28 K41 [{"createPortal", "unstable_batchedUpdates", "flushSync", "__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED", "version", "createRoot", "createBlockingRoot", "createLegacyRoot", "Event", "Change", "Tag", "unstable_isNewReconciler", "act"}]
  SETTABLEKS R26 R28 K19 ["createPortal"]
  SETTABLEKS R8 R28 K36 ["unstable_batchedUpdates"]
  SETTABLEKS R9 R28 K15 ["flushSync"]
  SETTABLEKS R27 R28 K37 ["__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED"]
  SETTABLEKS R14 R28 K38 ["version"]
  SETTABLEKS R3 R28 K9 ["createRoot"]
  SETTABLEKS R4 R28 K10 ["createBlockingRoot"]
  SETTABLEKS R5 R28 K11 ["createLegacyRoot"]
  SETTABLEKS R23 R28 K29 ["Event"]
  SETTABLEKS R24 R28 K30 ["Change"]
  SETTABLEKS R25 R28 K31 ["Tag"]
  SETTABLEKS R17 R28 K39 ["unstable_isNewReconciler"]
  DUPCLOSURE R29 K42 [PROTO_1]
  SETTABLEKS R29 R28 K40 ["act"]
  GETIMPORT R30 K44 [_G]
  GETTABLEKS R29 R30 K45 ["__ROACT_17_MOCK_SCHEDULER__"]
  JUMPIFNOT R29 [+4]
  GETTABLEKS R29 R7 K40 ["act"]
  SETTABLEKS R29 R28 K40 ["act"]
  MOVE R29 R10
  DUPTABLE R30 K49 [{"findFiberByHostInstance", "bundleType", "version", "rendererPackageName"}]
  SETTABLEKS R22 R30 K46 ["findFiberByHostInstance"]
  GETIMPORT R33 K44 [_G]
  GETTABLEKS R32 R33 K50 ["__DEV__"]
  JUMPIFNOT R32 [+2]
  LOADN R31 1
  JUMP [+1]
  LOADN R31 0
  SETTABLEKS R31 R30 K47 ["bundleType"]
  SETTABLEKS R14 R30 K38 ["version"]
  LOADK R31 K51 ["ReactRoblox"]
  SETTABLEKS R31 R30 K48 ["rendererPackageName"]
  CALL R29 1 1
  GETIMPORT R31 K44 [_G]
  GETTABLEKS R30 R31 K50 ["__DEV__"]
  JUMPIFNOT R30 [0]
  GETTABLEKS R30 R7 K52 ["robloxReactProfiling"]
  SETTABLEKS R30 R28 K52 ["robloxReactProfiling"]
  RETURN R28 1
