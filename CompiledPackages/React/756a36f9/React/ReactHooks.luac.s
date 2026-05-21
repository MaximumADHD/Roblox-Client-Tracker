PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["__DEV__"]
        6 JUMPIFNOT                        R1 ; [+7]
        7 JUMPIFNOTEQKNIL                  R0 ; [+6]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["error"]
       12 LOADK                            R2 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       13 CALL                             R1 1 0
       14 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["current"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["__DEV__"]
        7 JUMPIFNOT                        R4 ; [+7]
        8 JUMPIFNOTEQKNIL                  R3 ; [+6]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["error"]
       13 LOADK                            R5 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       14 CALL                             R4 1 0
       15 MOVE                             R2 R3
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K1 ["__DEV__"]
       19 JUMPIFNOT                        R3 ; [+53]
       20 JUMPIFEQKNIL                     R1 ; [+27]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K2 ["error"]
       25 LOADK                            R4 K4 ["useContext() second argument is reserved for future use in React. Passing it is not supported. You passed: %s.%s"]
       26 MOVE                             R5 R1
       27 FASTCALL1                        TYPEOF R1 ; [+3]
       28 MOVE                             R8 R1
       29 GETIMPORT                        R7 K6 [typeof]
       31 CALL                             R7 1 1
       32 JUMPIFNOTEQKS                    R7 K7 ["number"] ; [+13]
       34 GETUPVAL                         R7 3
       35 GETTABLEKS                       R7 R7 K8 ["isArray"]
       37 NEWTABLE                         R8 0 0
       39 GETVARARGS                       R9 -1
       40 SETLIST                          R8 R9 -1 [1]
       42 CALL                             R7 1 1
       43 JUMPIFNOT                        R7 ; [+2]
       44 LOADK                            R6 K9 ["\n\nDid you call Array.map(useContext)? Calling Hooks inside a loop is not supported. Learn more at https://reactjs.org/link/rules-of-hooks"]
       45 JUMP                             ; [+1]
       46 LOADK                            R6 K10 [""]
       47 CALL                             R3 3 0
       48 GETTABLEKS                       R3 R0 K11 ["_context"]
       50 JUMPIFEQKNIL                     R3 ; [+22]
       52 GETTABLEKS                       R3 R0 K11 ["_context"]
       54 GETTABLEKS                       R4 R3 K12 ["Consumer"]
       56 JUMPIFNOTEQ                      R4 R0 ; [+7]
       58 GETUPVAL                         R4 2
       59 GETTABLEKS                       R4 R4 K2 ["error"]
       61 LOADK                            R5 K13 ["Calling useContext(Context.Consumer) is not supported, may cause bugs, and will be removed in a future major release. Did you mean to call useContext(Context) instead?"]
       62 CALL                             R4 1 0
       63 JUMP                             ; [+9]
       64 GETTABLEKS                       R4 R3 K14 ["Provider"]
       66 JUMPIFNOTEQ                      R4 R0 ; [+6]
       68 GETUPVAL                         R4 2
       69 GETTABLEKS                       R4 R4 K2 ["error"]
       71 LOADK                            R5 K15 ["Calling useContext(Context.Provider) is not supported. Did you mean to call useContext(Context) instead?"]
       72 CALL                             R4 1 0
       73 GETTABLEKS                       R3 R2 K16 ["useContext"]
       75 MOVE                             R4 R0
       76 MOVE                             R5 R1
       77 CALL                             R3 2 -1
       78 RETURN                           R3 -1

PROTO_2:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["__DEV__"]
        7 JUMPIFNOT                        R3 ; [+7]
        8 JUMPIFNOTEQKNIL                  R2 ; [+6]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["error"]
       13 LOADK                            R4 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       14 CALL                             R3 1 0
       15 MOVE                             R1 R2
       16 GETTABLEKS                       R2 R1 K4 ["useState"]
       18 MOVE                             R3 R0
       19 GETVARARGS                       R4 -1
       20 CALL                             R2 -1 -1
       21 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["current"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["__DEV__"]
        6 JUMPIFNOT                        R5 ; [+7]
        7 JUMPIFNOTEQKNIL                  R4 ; [+6]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["error"]
       12 LOADK                            R6 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       13 CALL                             R5 1 0
       14 MOVE                             R3 R4
       15 GETTABLEKS                       R4 R3 K4 ["useReducer"]
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 MOVE                             R7 R2
       20 CALL                             R4 3 -1
       21 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["__DEV__"]
        6 JUMPIFNOT                        R3 ; [+7]
        7 JUMPIFNOTEQKNIL                  R2 ; [+6]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["error"]
       12 LOADK                            R4 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       13 CALL                             R3 1 0
       14 MOVE                             R1 R2
       15 GETTABLEKS                       R2 R1 K4 ["useRef"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["__DEV__"]
        6 JUMPIFNOT                        R3 ; [+7]
        7 JUMPIFNOTEQKNIL                  R2 ; [+6]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["error"]
       12 LOADK                            R4 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       13 CALL                             R3 1 0
       14 MOVE                             R1 R2
       15 GETTABLEKS                       R2 R1 K4 ["useBinding"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["__DEV__"]
        6 JUMPIFNOT                        R4 ; [+7]
        7 JUMPIFNOTEQKNIL                  R3 ; [+6]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["error"]
       12 LOADK                            R5 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       13 CALL                             R4 1 0
       14 MOVE                             R2 R3
       15 GETTABLEKS                       R3 R2 K4 ["useEffect"]
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["__DEV__"]
        6 JUMPIFNOT                        R4 ; [+7]
        7 JUMPIFNOTEQKNIL                  R3 ; [+6]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["error"]
       12 LOADK                            R5 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       13 CALL                             R4 1 0
       14 MOVE                             R2 R3
       15 GETTABLEKS                       R3 R2 K4 ["useLayoutEffect"]
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["__DEV__"]
        6 JUMPIFNOT                        R4 ; [+7]
        7 JUMPIFNOTEQKNIL                  R3 ; [+6]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["error"]
       12 LOADK                            R5 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       13 CALL                             R4 1 0
       14 MOVE                             R2 R3
       15 GETTABLEKS                       R3 R2 K4 ["useCallback"]
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["__DEV__"]
        6 JUMPIFNOT                        R4 ; [+7]
        7 JUMPIFNOTEQKNIL                  R3 ; [+6]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["error"]
       12 LOADK                            R5 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       13 CALL                             R4 1 0
       14 MOVE                             R2 R3
       15 GETTABLEKS                       R3 R2 K4 ["useMemo"]
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["current"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["__DEV__"]
        6 JUMPIFNOT                        R5 ; [+7]
        7 JUMPIFNOTEQKNIL                  R4 ; [+6]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["error"]
       12 LOADK                            R6 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       13 CALL                             R5 1 0
       14 MOVE                             R3 R4
       15 GETTABLEKS                       R4 R3 K4 ["useImperativeHandle"]
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 MOVE                             R7 R2
       20 CALL                             R4 3 -1
       21 RETURN                           R4 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["__DEV__"]
        3 JUMPIFNOT                        R2 ; [+21]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["current"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["__DEV__"]
       10 JUMPIFNOT                        R4 ; [+7]
       11 JUMPIFNOTEQKNIL                  R3 ; [+6]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K2 ["error"]
       16 LOADK                            R5 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       17 CALL                             R4 1 0
       18 MOVE                             R2 R3
       19 GETTABLEKS                       R3 R2 K4 ["useDebugValue"]
       21 MOVE                             R4 R0
       22 MOVE                             R5 R1
       23 CALL                             R3 2 -1
       24 RETURN                           R3 -1
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["__DEV__"]
        6 JUMPIFNOT                        R2 ; [+7]
        7 JUMPIFNOTEQKNIL                  R1 ; [+6]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["error"]
       12 LOADK                            R3 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       13 CALL                             R2 1 0
       14 MOVE                             R0 R1
       15 GETTABLEKS                       R1 R0 K4 ["useOpaqueIdentifier"]
       17 CALL                             R1 0 -1
       18 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["current"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["__DEV__"]
        6 JUMPIFNOT                        R5 ; [+7]
        7 JUMPIFNOTEQKNIL                  R4 ; [+6]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["error"]
       12 LOADK                            R6 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
       13 CALL                             R5 1 0
       14 MOVE                             R3 R4
       15 GETTABLEKS                       R4 R3 K4 ["useMutableSource"]
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 MOVE                             R7 R2
       20 CALL                             R4 3 -1
       21 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["Array"]
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R0 K8 ["Shared"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R4 R4 K9 ["console"]
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R0 K8 ["Shared"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K4 [require]
       33 GETTABLEKS                       R7 R0 K8 ["Shared"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K4 [require]
       38 GETTABLEKS                       R8 R0 K8 ["Shared"]
       40 CALL                             R7 1 1
       41 GETTABLEKS                       R7 R7 K10 ["ReactSharedInternals"]
       43 GETTABLEKS                       R7 R7 K11 ["ReactCurrentDispatcher"]
       45 DUPCLOSURE                       R8 K12 [PROTO_0]
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R9 16 0
       51 DUPCLOSURE                       R10 K13 [PROTO_1]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R10 R9 K14 ["useContext"]
       58 DUPCLOSURE                       R11 K15 [PROTO_2]
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R4
       62 SETTABLEKS                       R11 R9 K16 ["useState"]
       64 DUPCLOSURE                       R12 K17 [PROTO_3]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R12 R9 K18 ["useReducer"]
       70 DUPCLOSURE                       R13 K19 [PROTO_4]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R4
       74 SETTABLEKS                       R13 R9 K20 ["useRef"]
       76 DUPCLOSURE                       R14 K21 [PROTO_5]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R14 R9 K22 ["useBinding"]
       82 DUPCLOSURE                       R15 K23 [PROTO_6]
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R4
       86 SETTABLEKS                       R15 R9 K24 ["useEffect"]
       88 DUPCLOSURE                       R16 K25 [PROTO_7]
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R16 R9 K26 ["useLayoutEffect"]
       94 DUPCLOSURE                       R17 K27 [PROTO_8]
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R4
       98 SETTABLEKS                       R17 R9 K28 ["useCallback"]
      100 DUPCLOSURE                       R18 K29 [PROTO_9]
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R4
      104 SETTABLEKS                       R18 R9 K30 ["useMemo"]
      106 DUPCLOSURE                       R19 K31 [PROTO_10]
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R4
      110 SETTABLEKS                       R19 R9 K32 ["useImperativeHandle"]
      112 DUPCLOSURE                       R20 K33 [PROTO_11]
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R4
      116 SETTABLEKS                       R20 R9 K34 ["useDebugValue"]
      118 NEWTABLE                         R21 0 0
      120 SETTABLEKS                       R21 R9 K35 ["emptyObject"]
      122 DUPCLOSURE                       R21 K36 [PROTO_12]
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R4
      126 SETTABLEKS                       R21 R9 K37 ["useOpaqueIdentifier"]
      128 DUPCLOSURE                       R21 K38 [PROTO_13]
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R4
      132 SETTABLEKS                       R21 R9 K39 ["useMutableSource"]
      134 RETURN                           R9 1
