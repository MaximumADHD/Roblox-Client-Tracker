PROTO_0:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["%q is not a valid member of BackBehavior"]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K4 [tostring]
        7 CALL                             R5 1 1
        8 NAMECALL                         R3 R3 K5 ["format"]
       10 CALL                             R3 2 1
       11 LOADN                            R4 2
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["NavigationSymbol"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 LOADK                            R2 K6 ["NONE"]
       12 CALL                             R1 1 1
       13 MOVE                             R2 R0
       14 LOADK                            R3 K7 ["INITIAL_ROUTE"]
       15 CALL                             R2 1 1
       16 MOVE                             R3 R0
       17 LOADK                            R4 K8 ["ORDER"]
       18 CALL                             R3 1 1
       19 MOVE                             R4 R0
       20 LOADK                            R5 K9 ["HISTORY"]
       21 CALL                             R4 1 1
       22 DUPTABLE                         R5 K14 [{"None", "InitialRoute", "Order", "History"}]
       23 SETTABLEKS                       R1 R5 K10 ["None"]
       25 SETTABLEKS                       R2 R5 K11 ["InitialRoute"]
       27 SETTABLEKS                       R3 R5 K12 ["Order"]
       29 SETTABLEKS                       R4 R5 K13 ["History"]
       31 DUPTABLE                         R8 K16 [{"__index"}]
       32 DUPCLOSURE                       R9 K17 [PROTO_0]
       33 SETTABLEKS                       R9 R8 K15 ["__index"]
       35 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       37 MOVE                             R7 R5
       38 GETIMPORT                        R6 K19 [setmetatable]
       40 CALL                             R6 2 0
       41 RETURN                           R5 1
