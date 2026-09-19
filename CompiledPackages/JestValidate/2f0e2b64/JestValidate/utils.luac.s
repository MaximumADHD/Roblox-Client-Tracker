PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 LOADK                            R5 K1 ["\n\n"]
        6 MOVE                             R6 R2
        7 CONCAT                           R4 R5 R6
        8 JUMP                             ; [+1]
        9 LOADK                            R4 K2 ["\n"]
       10 LOADK                            R5 K3 [""]
       11 SETTABLEKS                       R5 R3 K4 ["name"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K5 ["red"]
       16 GETUPVAL                         R11 1
       17 GETTABLEKS                       R11 R11 K6 ["bold"]
       19 MOVE                             R12 R0
       20 CALL                             R11 1 1
       21 MOVE                             R7 R11
       22 LOADK                            R8 K7 [":\n\n"]
       23 MOVE                             R9 R1
       24 MOVE                             R10 R4
       25 CONCAT                           R6 R7 R10
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R5 R3 K8 ["message"]
       29 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["JestTypes"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Error"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["ChalkLua"]
       18 CALL                             R3 1 1
       19 NEWTABLE                         R5 2 0
       21 DUPTABLE                         R6 K9 [{"__index"}]
       22 SETTABLEKS                       R2 R6 K8 ["__index"]
       24 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       26 GETIMPORT                        R4 K11 [setmetatable]
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R4 K8 ["__index"]
       31 DUPCLOSURE                       R5 K12 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R5 R4 K13 ["new"]
       36 DUPTABLE                         R5 K15 [{"ValidationError"}]
       37 SETTABLEKS                       R4 R5 K14 ["ValidationError"]
       39 RETURN                           R5 1
