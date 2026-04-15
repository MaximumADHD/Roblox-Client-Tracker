PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["error"]
        3 GETUPVAL                         R2 1
        4 LOADK                            R3 K1 [" is only available in tests, not in production"]
        5 CONCAT                           R1 R2 R3
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETUPVAL                         R0 0
        6 RETURN                           R0 1
        7 DUPTABLE                         R0 K4 [{"setExtraStackFrame"}]
        8 DUPCLOSURE                       R1 K5 [PROTO_2]
        9 SETTABLEKS                       R1 R0 K3 ["setExtraStackFrame"]
       11 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R1 R2 K6 ["console"]
       14 DUPCLOSURE                       R2 K7 [PROTO_1]
       15 CAPTURE                          VAL R1
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R4 R5 K8 ["ReactCurrentDispatcher"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R5 R6 K9 ["ReactCurrentBatchConfig"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R6 R7 K10 ["ReactCurrentOwner"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETIMPORT                        R8 K1 [script]
       41 GETTABLEKS                       R7 R8 K11 ["ReactDebugCurrentFrame"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K4 [require]
       46 GETIMPORT                        R9 K1 [script]
       48 GETTABLEKS                       R8 R9 K12 ["IsSomeRendererActing"]
       50 CALL                             R7 1 1
       51 DUPTABLE                         R8 K13 [{"ReactCurrentDispatcher", "ReactCurrentBatchConfig", "ReactCurrentOwner", "IsSomeRendererActing", "ReactDebugCurrentFrame"}]
       52 SETTABLEKS                       R3 R8 K8 ["ReactCurrentDispatcher"]
       54 SETTABLEKS                       R4 R8 K9 ["ReactCurrentBatchConfig"]
       56 SETTABLEKS                       R5 R8 K10 ["ReactCurrentOwner"]
       58 SETTABLEKS                       R7 R8 K12 ["IsSomeRendererActing"]
       60 GETIMPORT                        R11 K15 [_G]
       62 GETTABLEKS                       R10 R11 K16 ["__DEV__"]
       64 JUMPIFNOT                        R10 ; [+2]
       65 MOVE                             R9 R6
       66 JUMP                             ; [+4]
       67 DUPTABLE                         R9 K18 [{"setExtraStackFrame"}]
       68 DUPCLOSURE                       R10 K19 [PROTO_2]
       69 SETTABLEKS                       R10 R9 K17 ["setExtraStackFrame"]
       71 SETTABLEKS                       R9 R8 K11 ["ReactDebugCurrentFrame"]
       73 RETURN                           R8 1
