PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["stackTraceLimit"]
        3 JUMPIFEQKNIL                     R2 ; [+21]
        5 JUMPIFEQKN                       R2 K1 [0] ; [+19]
        7 GETUPVAL                         R4 0
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R8 R8 K2 ["toJSBoolean"]
       11 MOVE                             R9 R3
       12 CALL                             R8 1 1
       13 JUMPIFNOT                        R8 ; [+2]
       14 MOVE                             R7 R3
       15 JUMPIF                           R7 ; [+1]
       16 LOADN                            R7 10
       17 FASTCALL2                        MATH_MAX R2 R7 ; [+4]
       19 MOVE                             R6 R2
       20 GETIMPORT                        R5 K5 [math.max]
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K0 ["stackTraceLimit"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K6 ["new"]
       28 MOVE                             R6 R0
       29 CALL                             R5 1 1
       30 GETUPVAL                         R6 2
       31 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       33 GETIMPORT                        R4 K8 [setmetatable]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K2 ["toJSBoolean"]
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R6 R7 K9 ["captureStackTrace"]
       42 CALL                             R5 1 1
       43 JUMPIFNOT                        R5 ; [+6]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R5 R6 K9 ["captureStackTrace"]
       47 MOVE                             R6 R4
       48 MOVE                             R7 R1
       49 CALL                             R5 2 0
       50 GETUPVAL                         R5 0
       51 SETTABLEKS                       R3 R5 K0 ["stackTraceLimit"]
       53 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Boolean"]
       14 GETTABLEKS                       R4 R2 K7 ["Error"]
       16 NEWTABLE                         R5 1 0
       18 NEWTABLE                         R7 2 0
       20 DUPTABLE                         R8 K9 [{"__index"}]
       21 SETTABLEKS                       R4 R8 K8 ["__index"]
       23 FASTCALL2                        SETMETATABLE R7 R8 ; [+3]
       25 GETIMPORT                        R6 K11 [setmetatable]
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R6 K8 ["__index"]
       30 DUPCLOSURE                       R7 K12 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R6
       34 SETTABLEKS                       R7 R6 K13 ["new"]
       36 SETTABLEKS                       R6 R5 K14 ["default"]
       38 RETURN                           R5 1
