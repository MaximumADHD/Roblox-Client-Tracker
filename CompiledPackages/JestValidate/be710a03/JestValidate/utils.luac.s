PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["new"]
        3 CALL                             R4 0 1
        4 GETUPVAL                         R5 1
        5 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        7 GETIMPORT                        R3 K2 [setmetatable]
        9 CALL                             R3 2 1
       10 JUMPIFEQKNIL                     R2 ; [+11]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["toJSBoolean"]
       15 MOVE                             R5 R2
       16 CALL                             R4 1 1
       17 JUMPIFNOT                        R4 ; [+4]
       18 LOADK                            R4 K4 ["\n\n"]
       19 MOVE                             R5 R2
       20 CONCAT                           R2 R4 R5
       21 JUMP                             ; [+1]
       22 LOADK                            R2 K5 ["\n"]
       23 LOADK                            R4 K6 [""]
       24 SETTABLEKS                       R4 R3 K7 ["name"]
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R4 R5 K8 ["red"]
       29 GETUPVAL                         R11 3
       30 GETTABLEKS                       R10 R11 K9 ["bold"]
       32 MOVE                             R11 R0
       33 CALL                             R10 1 1
       34 MOVE                             R6 R10
       35 LOADK                            R7 K10 [":\n\n"]
       36 MOVE                             R8 R1
       37 MOVE                             R9 R2
       38 CONCAT                           R5 R6 R9
       39 CALL                             R4 1 1
       40 SETTABLEKS                       R4 R3 K11 ["message"]
       42 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Boolean"]
       14 GETTABLEKS                       R3 R1 K7 ["Error"]
       16 NEWTABLE                         R4 1 0
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K8 ["ChalkLua"]
       22 CALL                             R5 1 1
       23 NEWTABLE                         R7 2 0
       25 DUPTABLE                         R8 K10 [{"__index"}]
       26 SETTABLEKS                       R3 R8 K9 ["__index"]
       28 FASTCALL2                        SETMETATABLE R7 R8 ; [+3]
       30 GETIMPORT                        R6 K12 [setmetatable]
       32 CALL                             R6 2 1
       33 SETTABLEKS                       R6 R6 K9 ["__index"]
       35 DUPCLOSURE                       R7 K13 [PROTO_0]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R5
       40 SETTABLEKS                       R7 R6 K14 ["new"]
       42 SETTABLEKS                       R6 R4 K15 ["ValidationError"]
       44 RETURN                           R4 1
