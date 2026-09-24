PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["callback"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        7 LOADK                            R4 K1 ["createEventHandlers must be a function"]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 MOVE                             R2 R1
       12 JUMPIF                           R2 ; [+1]
       13 GETUPVAL                         R2 1
       14 MOVE                             R1 R2
       15 DUPTABLE                         R2 K5 [{"eventHandlers"}]
       16 MOVE                             R3 R0
       17 MOVE                             R4 R1
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K4 ["eventHandlers"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K6 ["map"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K7 ["string"]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K0 ["callback"]
       30 CALL                             R4 2 1
       31 GETTABLEKS                       R5 R2 K4 ["eventHandlers"]
       33 CALL                             R4 1 1
       34 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       36 LOADK                            R5 K8 ["createEventHandlers must return a table mapping strings to functions"]
       37 GETIMPORT                        R3 K3 [assert]
       39 CALL                             R3 2 0
       40 GETUPVAL                         R5 2
       41 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       43 MOVE                             R4 R2
       44 GETIMPORT                        R3 K10 [setmetatable]
       46 CALL                             R3 2 0
       47 RETURN                           R2 1

PROTO_1:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["string"]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["event must be a string"]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R0 K4 ["getHandler"]
       15 CALL                             R2 2 1
       16 LOADK                            R6 K5 ["No event handler is registered for "]
       17 MOVE                             R7 R1
       18 CONCAT                           R5 R6 R7
       19 FASTCALL2                        ASSERT R2 R5 ; [+4]
       21 MOVE                             R4 R2
       22 GETIMPORT                        R3 K3 [assert]
       24 CALL                             R3 2 0
       25 MOVE                             R3 R2
       26 MOVE                             R4 R1
       27 GETVARARGS                       R5 -1
       28 CALL                             R3 -1 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["eventHandlers"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 DUPCLOSURE                       R0 K0 [PROTO_4]
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPCLOSURE                       R1 K1 [PROTO_3]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K2 [PROTO_5]
        8 SETTABLEKS                       R1 R0 K3 ["getHandler"]
       10 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RbxAnalyticsService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K6 ["UI"]
       19 GETTABLEKS                       R3 R3 K11 ["ContextServices"]
       21 GETTABLEKS                       R3 R3 K12 ["ContextItem"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K10 [require]
       26 GETTABLEKS                       R4 R1 K13 ["Util"]
       28 GETTABLEKS                       R4 R4 K14 ["Typecheck"]
       30 GETTABLEKS                       R4 R4 K15 ["t"]
       32 CALL                             R3 1 1
       33 LOADK                            R6 K16 ["Analytics"]
       34 NAMECALL                         R4 R2 K17 ["extend"]
       36 CALL                             R4 2 1
       37 DUPCLOSURE                       R5 K18 [PROTO_0]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R4
       41 SETTABLEKS                       R5 R4 K19 ["new"]
       43 DUPCLOSURE                       R5 K20 [PROTO_1]
       44 CAPTURE                          VAL R3
       45 SETTABLEKS                       R5 R4 K21 ["report"]
       47 DUPCLOSURE                       R5 K22 [PROTO_2]
       48 SETTABLEKS                       R5 R4 K23 ["getHandler"]
       50 DUPCLOSURE                       R5 K24 [PROTO_6]
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R5 R4 K25 ["mock"]
       54 RETURN                           R4 1
