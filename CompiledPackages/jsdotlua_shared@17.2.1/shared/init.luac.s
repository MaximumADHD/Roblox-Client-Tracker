MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["luau-polyfill"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R2 K3 [script]
  LOADK R4 K7 ["ReactTypes"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R3 K3 [script]
  LOADK R5 K8 ["flowtypes.roblox"]
  NAMECALL R3 R3 K6 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R4 K3 [script]
  LOADK R6 K9 ["ReactElementType"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R5 K3 [script]
  LOADK R7 K10 ["ReactFiberHostConfig"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R6 K3 [script]
  LOADK R8 K11 ["ReactSharedInternals"]
  NAMECALL R6 R6 K6 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R7 K3 [script]
  LOADK R9 K12 ["ErrorHandling.roblox"]
  NAMECALL R7 R7 K6 ["WaitForChild"]
  CALL R7 2 -1
  CALL R6 -1 1
  DUPTABLE R7 K41 [{"checkPropTypes", "console", "ConsolePatchingDev", "consoleWithStackDev", "enqueueTask", "ExecutionEnvironment", "formatProdErrorMessage", "getComponentName", "invariant", "invokeGuardedCallbackImpl", "isValidElementType", "objectIs", "ReactComponentStackFrame", "ReactElementType", "ReactErrorUtils", "ReactFeatureFlags", "ReactInstanceMap", "ReactSharedInternals", "ReactFiberHostConfig", "ReactSymbols", "ReactVersion", "shallowEqual", "UninitializedState", "ReactTypes", "describeError", "errorToString", "parseReactError", "Symbol", "Type", "Change", "Event", "Tag"}]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K13 ["checkPropTypes"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K13 ["checkPropTypes"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K14 ["console"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K14 ["console"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K42 ["ConsolePatchingDev.roblox"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K15 ["ConsolePatchingDev"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K16 ["consoleWithStackDev"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K16 ["consoleWithStackDev"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K43 ["enqueueTask.roblox"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K17 ["enqueueTask"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K18 ["ExecutionEnvironment"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K18 ["ExecutionEnvironment"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K19 ["formatProdErrorMessage"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K19 ["formatProdErrorMessage"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K20 ["getComponentName"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K20 ["getComponentName"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K21 ["invariant"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K21 ["invariant"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K22 ["invokeGuardedCallbackImpl"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K22 ["invokeGuardedCallbackImpl"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K23 ["isValidElementType"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K23 ["isValidElementType"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K24 ["objectIs"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K24 ["objectIs"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K25 ["ReactComponentStackFrame"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K25 ["ReactComponentStackFrame"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K9 ["ReactElementType"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K9 ["ReactElementType"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K26 ["ReactErrorUtils"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K26 ["ReactErrorUtils"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K27 ["ReactFeatureFlags"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K27 ["ReactFeatureFlags"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K28 ["ReactInstanceMap"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K28 ["ReactInstanceMap"]
  SETTABLEKS R5 R7 K11 ["ReactSharedInternals"]
  SETTABLEKS R4 R7 K10 ["ReactFiberHostConfig"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K29 ["ReactSymbols"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K29 ["ReactSymbols"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K30 ["ReactVersion"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K30 ["ReactVersion"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K31 ["shallowEqual"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K31 ["shallowEqual"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K44 ["UninitializedState.roblox"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K32 ["UninitializedState"]
  SETTABLEKS R1 R7 K7 ["ReactTypes"]
  GETTABLEKS R8 R6 K33 ["describeError"]
  SETTABLEKS R8 R7 K33 ["describeError"]
  GETTABLEKS R8 R6 K34 ["errorToString"]
  SETTABLEKS R8 R7 K34 ["errorToString"]
  GETTABLEKS R8 R6 K35 ["parseReactError"]
  SETTABLEKS R8 R7 K35 ["parseReactError"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K45 ["Symbol.roblox"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K36 ["Symbol"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K46 ["Type.roblox"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K37 ["Type"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K47 ["PropMarkers"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 1
  LOADK R11 K38 ["Change"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K38 ["Change"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K47 ["PropMarkers"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 1
  LOADK R11 K39 ["Event"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K39 ["Event"]
  GETIMPORT R8 K1 [require]
  GETIMPORT R9 K3 [script]
  LOADK R11 K47 ["PropMarkers"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 1
  LOADK R11 K40 ["Tag"]
  NAMECALL R9 R9 K6 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K40 ["Tag"]
  RETURN R7 1
