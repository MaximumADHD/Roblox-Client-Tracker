PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  GETIMPORT R2 K2 [_G]
  GETTABLEKS R1 R2 K3 ["__DEV__"]
  JUMPIFNOT R1 [+7]
  JUMPIFNOTEQKNIL R0 [+6]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["error"]
  LOADK R2 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R1 1 0
  RETURN R0 1

PROTO_1:
  PREPVARARGS 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["current"]
  GETIMPORT R5 K2 [_G]
  GETTABLEKS R4 R5 K3 ["__DEV__"]
  JUMPIFNOT R4 [+7]
  JUMPIFNOTEQKNIL R3 [+6]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["error"]
  LOADK R5 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R4 1 0
  MOVE R2 R3
  GETIMPORT R4 K2 [_G]
  GETTABLEKS R3 R4 K3 ["__DEV__"]
  JUMPIFNOT R3 [+53]
  JUMPIFEQKNIL R1 [+27]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["error"]
  LOADK R4 K6 ["useContext() second argument is reserved for future use in React. Passing it is not supported. You passed: %s.%s"]
  MOVE R5 R1
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K8 [typeof]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K9 ["number"] [+13]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["isArray"]
  NEWTABLE R8 0 0
  GETVARARGS R9 -1
  SETLIST R8 R9 -1 [1]
  CALL R7 1 1
  JUMPIFNOT R7 [+2]
  LOADK R6 K11 ["

Did you call Array.map(useContext)? Calling Hooks inside a loop is not supported. Learn more at https://reactjs.org/link/rules-of-hooks"]
  JUMP [+1]
  LOADK R6 K12 [""]
  CALL R3 3 0
  GETTABLEKS R3 R0 K13 ["_context"]
  JUMPIFEQKNIL R3 [+22]
  GETTABLEKS R3 R0 K13 ["_context"]
  GETTABLEKS R4 R3 K14 ["Consumer"]
  JUMPIFNOTEQ R4 R0 [+7]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["error"]
  LOADK R5 K15 ["Calling useContext(Context.Consumer) is not supported, may cause bugs, and will be removed in a future major release. Did you mean to call useContext(Context) instead?"]
  CALL R4 1 0
  JUMP [+9]
  GETTABLEKS R4 R3 K16 ["Provider"]
  JUMPIFNOTEQ R4 R0 [+6]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["error"]
  LOADK R5 K17 ["Calling useContext(Context.Provider) is not supported. Did you mean to call useContext(Context) instead?"]
  CALL R4 1 0
  GETTABLEKS R3 R2 K18 ["useContext"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  PREPVARARGS 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  GETIMPORT R4 K2 [_G]
  GETTABLEKS R3 R4 K3 ["__DEV__"]
  JUMPIFNOT R3 [+7]
  JUMPIFNOTEQKNIL R2 [+6]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["error"]
  LOADK R4 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R3 1 0
  MOVE R1 R2
  GETTABLEKS R2 R1 K6 ["useState"]
  MOVE R3 R0
  GETVARARGS R4 -1
  CALL R2 -1 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["current"]
  GETIMPORT R6 K2 [_G]
  GETTABLEKS R5 R6 K3 ["__DEV__"]
  JUMPIFNOT R5 [+7]
  JUMPIFNOTEQKNIL R4 [+6]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["error"]
  LOADK R6 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R5 1 0
  MOVE R3 R4
  GETTABLEKS R4 R3 K6 ["useReducer"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  RETURN R4 -1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  GETIMPORT R4 K2 [_G]
  GETTABLEKS R3 R4 K3 ["__DEV__"]
  JUMPIFNOT R3 [+7]
  JUMPIFNOTEQKNIL R2 [+6]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["error"]
  LOADK R4 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R3 1 0
  MOVE R1 R2
  GETTABLEKS R2 R1 K6 ["useRef"]
  MOVE R3 R0
  CALL R2 1 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  GETIMPORT R4 K2 [_G]
  GETTABLEKS R3 R4 K3 ["__DEV__"]
  JUMPIFNOT R3 [+7]
  JUMPIFNOTEQKNIL R2 [+6]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["error"]
  LOADK R4 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R3 1 0
  MOVE R1 R2
  GETTABLEKS R2 R1 K6 ["useBinding"]
  MOVE R3 R0
  CALL R2 1 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["current"]
  GETIMPORT R5 K2 [_G]
  GETTABLEKS R4 R5 K3 ["__DEV__"]
  JUMPIFNOT R4 [+7]
  JUMPIFNOTEQKNIL R3 [+6]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["error"]
  LOADK R5 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R4 1 0
  MOVE R2 R3
  GETTABLEKS R3 R2 K6 ["useEffect"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  RETURN R3 -1

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["current"]
  GETIMPORT R5 K2 [_G]
  GETTABLEKS R4 R5 K3 ["__DEV__"]
  JUMPIFNOT R4 [+7]
  JUMPIFNOTEQKNIL R3 [+6]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["error"]
  LOADK R5 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R4 1 0
  MOVE R2 R3
  GETTABLEKS R3 R2 K6 ["useLayoutEffect"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  RETURN R3 -1

PROTO_8:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["current"]
  GETIMPORT R5 K2 [_G]
  GETTABLEKS R4 R5 K3 ["__DEV__"]
  JUMPIFNOT R4 [+7]
  JUMPIFNOTEQKNIL R3 [+6]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["error"]
  LOADK R5 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R4 1 0
  MOVE R2 R3
  GETTABLEKS R3 R2 K6 ["useCallback"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  RETURN R3 -1

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["current"]
  GETIMPORT R5 K2 [_G]
  GETTABLEKS R4 R5 K3 ["__DEV__"]
  JUMPIFNOT R4 [+7]
  JUMPIFNOTEQKNIL R3 [+6]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["error"]
  LOADK R5 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R4 1 0
  MOVE R2 R3
  GETTABLEKS R3 R2 K6 ["useMemo"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  RETURN R3 -1

PROTO_10:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["current"]
  GETIMPORT R6 K2 [_G]
  GETTABLEKS R5 R6 K3 ["__DEV__"]
  JUMPIFNOT R5 [+7]
  JUMPIFNOTEQKNIL R4 [+6]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["error"]
  LOADK R6 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R5 1 0
  MOVE R3 R4
  GETTABLEKS R4 R3 K6 ["useImperativeHandle"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  RETURN R4 -1

PROTO_11:
  GETIMPORT R3 K1 [_G]
  GETTABLEKS R2 R3 K2 ["__DEV__"]
  JUMPIFNOT R2 [+22]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["current"]
  GETIMPORT R5 K1 [_G]
  GETTABLEKS R4 R5 K2 ["__DEV__"]
  JUMPIFNOT R4 [+7]
  JUMPIFNOTEQKNIL R3 [+6]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["error"]
  LOADK R5 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R4 1 0
  MOVE R2 R3
  GETTABLEKS R3 R2 K6 ["useDebugValue"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  RETURN R3 -1
  LOADNIL R2
  RETURN R2 1

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETIMPORT R3 K2 [_G]
  GETTABLEKS R2 R3 K3 ["__DEV__"]
  JUMPIFNOT R2 [+7]
  JUMPIFNOTEQKNIL R1 [+6]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["error"]
  LOADK R3 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R2 1 0
  MOVE R0 R1
  GETTABLEKS R1 R0 K6 ["useOpaqueIdentifier"]
  CALL R1 0 -1
  RETURN R1 -1

PROTO_13:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["current"]
  GETIMPORT R6 K2 [_G]
  GETTABLEKS R5 R6 K3 ["__DEV__"]
  JUMPIFNOT R5 [+7]
  JUMPIFNOTEQKNIL R4 [+6]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["error"]
  LOADK R6 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:
1. You might have mismatching versions of React and the renderer (such as React DOM)
2. You might be breaking the Rules of Hooks
3. You might have more than one copy of React in the same app
See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
  CALL R5 1 0
  MOVE R3 R4
  GETTABLEKS R4 R3 K6 ["useMutableSource"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  RETURN R4 -1

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
  GETTABLEKS R1 R0 K7 ["Array"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K8 ["shared"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETTABLEKS R2 R3 K9 ["console"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  LOADK R6 K8 ["shared"]
  NAMECALL R4 R4 K6 ["WaitForChild"]
  CALL R4 2 -1
  CALL R3 -1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  LOADK R7 K8 ["shared"]
  NAMECALL R5 R5 K6 ["WaitForChild"]
  CALL R5 2 -1
  CALL R4 -1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K4 ["Parent"]
  GETTABLEKS R8 R9 K4 ["Parent"]
  LOADK R10 K8 ["shared"]
  NAMECALL R8 R8 K6 ["WaitForChild"]
  CALL R8 2 -1
  CALL R7 -1 1
  GETTABLEKS R6 R7 K10 ["ReactSharedInternals"]
  GETTABLEKS R5 R6 K11 ["ReactCurrentDispatcher"]
  DUPCLOSURE R6 K12 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  NEWTABLE R7 16 0
  DUPCLOSURE R8 K13 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K14 ["useContext"]
  DUPCLOSURE R9 K15 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R9 R7 K16 ["useState"]
  DUPCLOSURE R10 K17 [PROTO_3]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R10 R7 K18 ["useReducer"]
  DUPCLOSURE R11 K19 [PROTO_4]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R11 R7 K20 ["useRef"]
  DUPCLOSURE R12 K21 [PROTO_5]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R12 R7 K22 ["useBinding"]
  DUPCLOSURE R13 K23 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R13 R7 K24 ["useEffect"]
  DUPCLOSURE R14 K25 [PROTO_7]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R14 R7 K26 ["useLayoutEffect"]
  DUPCLOSURE R15 K27 [PROTO_8]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R15 R7 K28 ["useCallback"]
  DUPCLOSURE R16 K29 [PROTO_9]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R16 R7 K30 ["useMemo"]
  DUPCLOSURE R17 K31 [PROTO_10]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R17 R7 K32 ["useImperativeHandle"]
  DUPCLOSURE R18 K33 [PROTO_11]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R18 R7 K34 ["useDebugValue"]
  NEWTABLE R19 0 0
  SETTABLEKS R19 R7 K35 ["emptyObject"]
  DUPCLOSURE R19 K36 [PROTO_12]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R19 R7 K37 ["useOpaqueIdentifier"]
  DUPCLOSURE R19 K38 [PROTO_13]
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R19 R7 K39 ["useMutableSource"]
  RETURN R7 1
