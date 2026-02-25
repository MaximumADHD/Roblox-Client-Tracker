PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["__DEV__"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["warn"]
        7 LOADK                            R3 K2 ["Attempted to access uninitialized state. Use setState to initialize state"]
        8 CALL                             R2 1 0
        9 LOADNIL                          R2
       10 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["__DEV__"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["error"]
        7 LOADK                            R3 K2 ["Attempted to directly mutate state. Use setState to assign new values to state."]
        8 CALL                             R2 1 0
        9 LOADNIL                          R2
       10 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R1 K0 ["<uninitialized component state>"]
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["console"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K4 ["Parent"]
       14 GETTABLEKS                       R1 R2 K4 ["Parent"]
       16 GETIMPORT                        R2 K1 [require]
       18 GETTABLEKS                       R3 R1 K6 ["ReactGlobals"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 0 0
       23 DUPTABLE                         R6 K11 [{"__index", "__newindex", "__tostring", "__metatable"}]
       24 DUPCLOSURE                       R7 K12 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R7 R6 K7 ["__index"]
       29 DUPCLOSURE                       R7 K13 [PROTO_1]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R7 R6 K8 ["__newindex"]
       34 DUPCLOSURE                       R7 K14 [PROTO_2]
       35 SETTABLEKS                       R7 R6 K9 ["__tostring"]
       37 LOADK                            R7 K15 ["UninitializedState"]
       38 SETTABLEKS                       R7 R6 K10 ["__metatable"]
       40 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K17 [setmetatable]
       45 CALL                             R4 2 0
       46 RETURN                           R3 1
