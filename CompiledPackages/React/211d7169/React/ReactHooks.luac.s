PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETIMPORT                        R1 K2 [_G]
        5 GETTABLEKS                       R1 R1 K3 ["__DEV__"]
        7 JUMPIFNOT                        R1 ; [+7]
        8 JUMPIFNOTEQKNIL                  R0 ; [+6]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K4 ["error"]
       13 LOADK                            R2 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       14 CALL                             R1 1 0
       15 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["current"]
        4 GETIMPORT                        R4 K2 [_G]
        6 GETTABLEKS                       R4 R4 K3 ["__DEV__"]
        8 JUMPIFNOT                        R4 ; [+7]
        9 JUMPIFNOTEQKNIL                  R3 ; [+6]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K4 ["error"]
       14 LOADK                            R5 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       15 CALL                             R4 1 0
       16 MOVE                             R2 R3
       17 GETIMPORT                        R3 K2 [_G]
       19 GETTABLEKS                       R3 R3 K3 ["__DEV__"]
       21 JUMPIFNOT                        R3 ; [+53]
       22 JUMPIFEQKNIL                     R1 ; [+27]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K4 ["error"]
       27 LOADK                            R4 K6 ["useContext() second argument is reserved for future use in React. Passing it is not supported. You passed: %s.%s"]
       28 MOVE                             R5 R1
       29 FASTCALL1                        TYPEOF R1 ; [+3]
       30 MOVE                             R8 R1
       31 GETIMPORT                        R7 K8 [typeof]
       33 CALL                             R7 1 1
       34 JUMPIFNOTEQKS                    R7 K9 ["number"] ; [+13]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K10 ["isArray"]
       39 NEWTABLE                         R8 0 0
       41 GETVARARGS                       R9 -1
       42 SETLIST                          R8 R9 -1 [1]
       44 CALL                             R7 1 1
       45 JUMPIFNOT                        R7 ; [+2]
       46 LOADK                            R6 K11 ["\n\nDid you call Array.map(useContext)? Calling Hooks inside a loop is not supported. Learn more at https://reactjs.org/link/rules-of-hooks"]
       47 JUMP                             ; [+1]
       48 LOADK                            R6 K12 [""]
       49 CALL                             R3 3 0
       50 GETTABLEKS                       R3 R0 K13 ["_context"]
       52 JUMPIFEQKNIL                     R3 ; [+22]
       54 GETTABLEKS                       R3 R0 K13 ["_context"]
       56 GETTABLEKS                       R4 R3 K14 ["Consumer"]
       58 JUMPIFNOTEQ                      R4 R0 ; [+7]
       60 GETUPVAL                         R4 1
       61 GETTABLEKS                       R4 R4 K4 ["error"]
       63 LOADK                            R5 K15 ["Calling useContext(Context.Consumer) is not supported, may cause bugs, and will be removed in a future major release. Did you mean to call useContext(Context) instead?"]
       64 CALL                             R4 1 0
       65 JUMP                             ; [+9]
       66 GETTABLEKS                       R4 R3 K16 ["Provider"]
       68 JUMPIFNOTEQ                      R4 R0 ; [+6]
       70 GETUPVAL                         R4 1
       71 GETTABLEKS                       R4 R4 K4 ["error"]
       73 LOADK                            R5 K17 ["Calling useContext(Context.Provider) is not supported. Did you mean to call useContext(Context) instead?"]
       74 CALL                             R4 1 0
       75 GETTABLEKS                       R3 R2 K18 ["useContext"]
       77 MOVE                             R4 R0
       78 MOVE                             R5 R1
       79 CALL                             R3 2 -1
       80 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETIMPORT                        R3 K2 [_G]
        5 GETTABLEKS                       R3 R3 K3 ["__DEV__"]
        7 JUMPIFNOT                        R3 ; [+7]
        8 JUMPIFNOTEQKNIL                  R2 ; [+6]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["error"]
       13 LOADK                            R4 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       14 CALL                             R3 1 0
       15 MOVE                             R1 R2
       16 GETTABLEKS                       R2 R1 K6 ["useState"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["current"]
        3 GETIMPORT                        R5 K2 [_G]
        5 GETTABLEKS                       R5 R5 K3 ["__DEV__"]
        7 JUMPIFNOT                        R5 ; [+7]
        8 JUMPIFNOTEQKNIL                  R4 ; [+6]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K4 ["error"]
       13 LOADK                            R6 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       14 CALL                             R5 1 0
       15 MOVE                             R3 R4
       16 GETTABLEKS                       R4 R3 K6 ["useReducer"]
       18 MOVE                             R5 R0
       19 MOVE                             R6 R1
       20 MOVE                             R7 R2
       21 CALL                             R4 3 -1
       22 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETIMPORT                        R3 K2 [_G]
        5 GETTABLEKS                       R3 R3 K3 ["__DEV__"]
        7 JUMPIFNOT                        R3 ; [+7]
        8 JUMPIFNOTEQKNIL                  R2 ; [+6]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["error"]
       13 LOADK                            R4 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       14 CALL                             R3 1 0
       15 MOVE                             R1 R2
       16 GETTABLEKS                       R2 R1 K6 ["useRef"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETIMPORT                        R4 K2 [_G]
        5 GETTABLEKS                       R4 R4 K3 ["__DEV__"]
        7 JUMPIFNOT                        R4 ; [+7]
        8 JUMPIFNOTEQKNIL                  R3 ; [+6]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["error"]
       13 LOADK                            R5 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       14 CALL                             R4 1 0
       15 MOVE                             R2 R3
       16 GETTABLEKS                       R3 R2 K6 ["useEffect"]
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETIMPORT                        R4 K2 [_G]
        5 GETTABLEKS                       R4 R4 K3 ["__DEV__"]
        7 JUMPIFNOT                        R4 ; [+7]
        8 JUMPIFNOTEQKNIL                  R3 ; [+6]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["error"]
       13 LOADK                            R5 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       14 CALL                             R4 1 0
       15 MOVE                             R2 R3
       16 GETTABLEKS                       R3 R2 K6 ["useLayoutEffect"]
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETIMPORT                        R4 K2 [_G]
        5 GETTABLEKS                       R4 R4 K3 ["__DEV__"]
        7 JUMPIFNOT                        R4 ; [+7]
        8 JUMPIFNOTEQKNIL                  R3 ; [+6]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["error"]
       13 LOADK                            R5 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       14 CALL                             R4 1 0
       15 MOVE                             R2 R3
       16 GETTABLEKS                       R3 R2 K6 ["useCallback"]
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETIMPORT                        R4 K2 [_G]
        5 GETTABLEKS                       R4 R4 K3 ["__DEV__"]
        7 JUMPIFNOT                        R4 ; [+7]
        8 JUMPIFNOTEQKNIL                  R3 ; [+6]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["error"]
       13 LOADK                            R5 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       14 CALL                             R4 1 0
       15 MOVE                             R2 R3
       16 GETTABLEKS                       R3 R2 K6 ["useMemo"]
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["current"]
        3 GETIMPORT                        R5 K2 [_G]
        5 GETTABLEKS                       R5 R5 K3 ["__DEV__"]
        7 JUMPIFNOT                        R5 ; [+7]
        8 JUMPIFNOTEQKNIL                  R4 ; [+6]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K4 ["error"]
       13 LOADK                            R6 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       14 CALL                             R5 1 0
       15 MOVE                             R3 R4
       16 GETTABLEKS                       R4 R3 K6 ["useImperativeHandle"]
       18 MOVE                             R5 R0
       19 MOVE                             R6 R1
       20 MOVE                             R7 R2
       21 CALL                             R4 3 -1
       22 RETURN                           R4 -1

PROTO_10:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+22]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K3 ["current"]
        8 GETIMPORT                        R4 K1 [_G]
       10 GETTABLEKS                       R4 R4 K2 ["__DEV__"]
       12 JUMPIFNOT                        R4 ; [+7]
       13 JUMPIFNOTEQKNIL                  R3 ; [+6]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K4 ["error"]
       18 LOADK                            R5 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       19 CALL                             R4 1 0
       20 MOVE                             R2 R3
       21 GETTABLEKS                       R3 R2 K6 ["useDebugValue"]
       23 MOVE                             R4 R0
       24 MOVE                             R5 R1
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1
       27 LOADNIL                          R2
       28 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETIMPORT                        R2 K2 [_G]
        5 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
        7 JUMPIFNOT                        R2 ; [+7]
        8 JUMPIFNOTEQKNIL                  R1 ; [+6]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["error"]
       13 LOADK                            R3 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       14 CALL                             R2 1 0
       15 MOVE                             R0 R1
       16 GETTABLEKS                       R1 R0 K6 ["useOpaqueIdentifier"]
       18 CALL                             R1 0 -1
       19 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["current"]
        3 GETIMPORT                        R5 K2 [_G]
        5 GETTABLEKS                       R5 R5 K3 ["__DEV__"]
        7 JUMPIFNOT                        R5 ; [+7]
        8 JUMPIFNOTEQKNIL                  R4 ; [+6]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K4 ["error"]
       13 LOADK                            R6 K5 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       14 CALL                             R5 1 0
       15 MOVE                             R3 R4
       16 GETTABLEKS                       R4 R3 K6 ["useMutableSource"]
       18 MOVE                             R5 R0
       19 MOVE                             R6 R1
       20 MOVE                             R7 R2
       21 CALL                             R4 3 -1
       22 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Shared"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K8 ["console"]
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R0 K7 ["Shared"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R0 K7 ["Shared"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K4 [require]
       33 GETTABLEKS                       R7 R0 K7 ["Shared"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R6 R6 K9 ["ReactSharedInternals"]
       38 GETTABLEKS                       R6 R6 K10 ["ReactCurrentDispatcher"]
       40 DUPCLOSURE                       R7 K11 [PROTO_0]
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R3
       43 NEWTABLE                         R8 16 0
       45 DUPCLOSURE                       R9 K12 [PROTO_1]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R9 R8 K13 ["useContext"]
       51 DUPCLOSURE                       R9 K14 [PROTO_2]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 SETTABLEKS                       R9 R8 K15 ["useState"]
       56 DUPCLOSURE                       R9 K16 [PROTO_3]
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R9 R8 K17 ["useReducer"]
       61 DUPCLOSURE                       R9 K18 [PROTO_4]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R9 R8 K19 ["useRef"]
       66 DUPCLOSURE                       R9 K20 [PROTO_5]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R9 R8 K21 ["useEffect"]
       71 DUPCLOSURE                       R9 K22 [PROTO_6]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R9 R8 K23 ["useLayoutEffect"]
       76 DUPCLOSURE                       R9 K24 [PROTO_7]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R9 R8 K25 ["useCallback"]
       81 DUPCLOSURE                       R9 K26 [PROTO_8]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R3
       84 SETTABLEKS                       R9 R8 K27 ["useMemo"]
       86 DUPCLOSURE                       R9 K28 [PROTO_9]
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R9 R8 K29 ["useImperativeHandle"]
       91 DUPCLOSURE                       R9 K30 [PROTO_10]
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R3
       94 SETTABLEKS                       R9 R8 K31 ["useDebugValue"]
       96 NEWTABLE                         R9 0 0
       98 SETTABLEKS                       R9 R8 K32 ["emptyObject"]
      100 DUPCLOSURE                       R9 K33 [PROTO_11]
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R3
      103 SETTABLEKS                       R9 R8 K34 ["useOpaqueIdentifier"]
      105 DUPCLOSURE                       R9 K35 [PROTO_12]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R3
      108 SETTABLEKS                       R9 R8 K36 ["useMutableSource"]
      110 RETURN                           R8 1
