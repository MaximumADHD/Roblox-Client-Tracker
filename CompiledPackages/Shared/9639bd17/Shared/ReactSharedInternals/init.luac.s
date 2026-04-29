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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["LuauPolyfill"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R2 R3 K7 ["console"]
       19 DUPCLOSURE                       R3 K8 [PROTO_1]
       20 CAPTURE                          VAL R2
       21 GETIMPORT                        R4 K4 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R5 R6 K9 ["ReactCurrentDispatcher"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K4 [require]
       30 GETIMPORT                        R7 K1 [script]
       32 GETTABLEKS                       R6 R7 K10 ["ReactCurrentBatchConfig"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K4 [require]
       37 GETIMPORT                        R8 K1 [script]
       39 GETTABLEKS                       R7 R8 K11 ["ReactCurrentOwner"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K4 [require]
       44 GETIMPORT                        R9 K1 [script]
       46 GETTABLEKS                       R8 R9 K12 ["ReactDebugCurrentFrame"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K4 [require]
       51 GETIMPORT                        R10 K1 [script]
       53 GETTABLEKS                       R9 R10 K13 ["IsSomeRendererActing"]
       55 CALL                             R8 1 1
       56 DUPTABLE                         R9 K14 [{"ReactCurrentDispatcher", "ReactCurrentBatchConfig", "ReactCurrentOwner", "IsSomeRendererActing", "ReactDebugCurrentFrame"}]
       57 SETTABLEKS                       R4 R9 K9 ["ReactCurrentDispatcher"]
       59 SETTABLEKS                       R5 R9 K10 ["ReactCurrentBatchConfig"]
       61 SETTABLEKS                       R6 R9 K11 ["ReactCurrentOwner"]
       63 SETTABLEKS                       R8 R9 K13 ["IsSomeRendererActing"]
       65 GETTABLEKS                       R11 R1 K15 ["__DEV__"]
       67 JUMPIFNOT                        R11 ; [+2]
       68 MOVE                             R10 R7
       69 JUMP                             ; [+4]
       70 DUPTABLE                         R10 K17 [{"setExtraStackFrame"}]
       71 DUPCLOSURE                       R11 K18 [PROTO_2]
       72 SETTABLEKS                       R11 R10 K16 ["setExtraStackFrame"]
       74 SETTABLEKS                       R10 R9 K12 ["ReactDebugCurrentFrame"]
       76 RETURN                           R9 1
