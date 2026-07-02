PROTO_0:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["warn"]
        8 LOADK                            R3 K4 ["Attempted to access unitialized state. Use setState to initialize state"]
        9 CALL                             R2 1 0
       10 LOADNIL                          R2
       11 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["error"]
        8 LOADK                            R3 K4 ["Attempted to directly mutate state. Use setState to assign new values to state."]
        9 CALL                             R2 1 0
       10 LOADNIL                          R2
       11 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R1 K0 ["<uninitialized component state>"]
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["console"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 0 0
       12 DUPTABLE                         R4 K11 [{["__index"], ["__newindex"], ["__tostring"], ["__metatable"] = "UninitializedState"}]
       13 DUPCLOSURE                       R5 K12 [PROTO_0]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R5 R4 K6 ["__index"]
       17 DUPCLOSURE                       R5 K13 [PROTO_1]
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R5 R4 K7 ["__newindex"]
       21 DUPCLOSURE                       R5 K14 [PROTO_2]
       22 SETTABLEKS                       R5 R4 K8 ["__tostring"]
       24 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       26 MOVE                             R3 R1
       27 GETIMPORT                        R2 K16 [setmetatable]
       29 CALL                             R2 2 0
       30 RETURN                           R1 1
