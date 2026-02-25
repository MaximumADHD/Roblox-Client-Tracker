PROTO_0:
        0 DUPTABLE                         R3 K3 [{"debuggerStateToken", "threadId", "frameNumber"}]
        1 SETTABLEKS                       R0 R3 K0 ["debuggerStateToken"]
        3 SETTABLEKS                       R1 R3 K1 ["threadId"]
        5 SETTABLEKS                       R2 R3 K2 ["frameNumber"]
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["DebuggerStateToken"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 DUPTABLE                         R2 K8 [{"ctor"}]
       12 SETTABLEKS                       R1 R2 K7 ["ctor"]
       14 RETURN                           R2 1
