PROTO_0:
        0 DUPTABLE                         R3 K3 [{"threadId", "frameList", "debuggerStateToken"}]
        1 SETTABLEKS                       R0 R3 K0 ["threadId"]
        3 SETTABLEKS                       R1 R3 K1 ["frameList"]
        5 SETTABLEKS                       R2 R3 K2 ["debuggerStateToken"]
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Util"]
       20 GETTABLEKS                       R3 R2 K8 ["Action"]
       22 GETIMPORT                        R4 K4 [require]
       24 GETTABLEKS                       R5 R0 K9 ["Src"]
       26 GETTABLEKS                       R5 R5 K10 ["Models"]
       28 GETTABLEKS                       R5 R5 K11 ["Callstack"]
       30 GETTABLEKS                       R5 R5 K12 ["CallstackRow"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Src"]
       37 GETTABLEKS                       R6 R6 K10 ["Models"]
       39 GETTABLEKS                       R6 R6 K13 ["DebuggerStateToken"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K9 ["Src"]
       46 GETTABLEKS                       R7 R7 K14 ["Types"]
       48 CALL                             R6 1 1
       49 MOVE                             R7 R3
       50 GETIMPORT                        R8 K1 [script]
       52 GETTABLEKS                       R8 R8 K15 ["Name"]
       54 DUPCLOSURE                       R9 K16 [PROTO_0]
       55 CALL                             R7 2 -1
       56 RETURN                           R7 -1
