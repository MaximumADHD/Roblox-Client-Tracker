PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [setmetatable]
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R2 R0 K3 ["isWatchMode"]
       12 DUPTABLE                         R3 K5 [{"interrupted"}]
       13 LOADB                            R4 0
       14 SETTABLEKS                       R4 R3 K4 ["interrupted"]
       16 SETTABLEKS                       R3 R1 K6 ["state"]
       18 SETTABLEKS                       R2 R1 K7 ["_isWatchMode"]
       20 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["assign"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["state"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 LOADK                            R2 K2 ["change"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K1 ["state"]
       13 NAMECALL                         R0 R0 K3 ["emit"]
       15 CALL                             R0 3 1
       16 NAMECALL                         R0 R0 K4 ["expect"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 NAMECALL                         R2 R2 K1 ["andThen"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R2 K1 ["interrupted"]
        4 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_isWatchMode"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Object"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Promise"]
       18 CALL                             R3 1 1
       19 NEWTABLE                         R4 1 0
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Emittery"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R6 R5 K9 ["default"]
       28 NEWTABLE                         R8 8 0
       30 DUPTABLE                         R9 K11 [{"__index"}]
       31 SETTABLEKS                       R6 R9 K10 ["__index"]
       33 FASTCALL2                        SETMETATABLE R8 R9 ; [+3]
       35 GETIMPORT                        R7 K13 [setmetatable]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R7 K10 ["__index"]
       40 DUPCLOSURE                       R8 K14 [PROTO_0]
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R7
       43 SETTABLEKS                       R8 R7 K15 ["new"]
       45 DUPCLOSURE                       R8 K16 [PROTO_2]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R8 R7 K17 ["setState"]
       50 DUPCLOSURE                       R8 K18 [PROTO_3]
       51 SETTABLEKS                       R8 R7 K19 ["isInterrupted"]
       53 DUPCLOSURE                       R8 K20 [PROTO_4]
       54 SETTABLEKS                       R8 R7 K21 ["isWatchMode"]
       56 SETTABLEKS                       R7 R4 K9 ["default"]
       58 RETURN                           R4 1
