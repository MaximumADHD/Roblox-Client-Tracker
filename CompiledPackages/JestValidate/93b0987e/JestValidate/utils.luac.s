PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 JUMPIFEQKNIL                     R2 ; [+11]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["toJSBoolean"]
        9 MOVE                             R5 R2
       10 CALL                             R4 1 1
       11 JUMPIFNOT                        R4 ; [+4]
       12 LOADK                            R4 K2 ["\n\n"]
       13 MOVE                             R5 R2
       14 CONCAT                           R2 R4 R5
       15 JUMP                             ; [+1]
       16 LOADK                            R2 K3 ["\n"]
       17 LOADK                            R4 K4 [""]
       18 SETTABLEKS                       R4 R3 K5 ["name"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K6 ["red"]
       23 GETUPVAL                         R10 2
       24 GETTABLEKS                       R10 R10 K7 ["bold"]
       26 MOVE                             R11 R0
       27 CALL                             R10 1 1
       28 MOVE                             R6 R10
       29 LOADK                            R7 K8 [":\n\n"]
       30 MOVE                             R8 R1
       31 MOVE                             R9 R2
       32 CONCAT                           R5 R6 R9
       33 CALL                             R4 1 1
       34 SETTABLEKS                       R4 R3 K9 ["message"]
       36 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R5
       39 SETTABLEKS                       R7 R6 K14 ["new"]
       41 SETTABLEKS                       R6 R4 K15 ["ValidationError"]
       43 RETURN                           R4 1
