MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Client"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["PeerTransport"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["Protocol"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R4 K3 [script]
       26 GETTABLEKS                       R4 R4 K7 ["Server"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R5 K3 [script]
       33 GETTABLEKS                       R5 R5 K8 ["Trace"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R6 R6 K9 ["Transport"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R7 K3 [script]
       47 GETTABLEKS                       R7 R7 K10 ["Types"]
       49 CALL                             R6 1 1
       50 DUPTABLE                         R7 K19 [{"Client", "PeerTransport", "Protocol", "Server", "Trace", "Types", "makeTransport", "ErrorCode", "Method", "SessionUpdateKind", "StopReason", "PermissionOptionKinds", "PermissionOutcomes", "LATEST_PROTOCOL_VERSION"}]
       51 SETTABLEKS                       R0 R7 K4 ["Client"]
       53 SETTABLEKS                       R1 R7 K5 ["PeerTransport"]
       55 SETTABLEKS                       R2 R7 K6 ["Protocol"]
       57 SETTABLEKS                       R3 R7 K7 ["Server"]
       59 SETTABLEKS                       R4 R7 K8 ["Trace"]
       61 SETTABLEKS                       R6 R7 K10 ["Types"]
       63 GETTABLEKS                       R8 R5 K11 ["makeTransport"]
       65 SETTABLEKS                       R8 R7 K11 ["makeTransport"]
       67 GETTABLEKS                       R8 R6 K12 ["ErrorCode"]
       69 SETTABLEKS                       R8 R7 K12 ["ErrorCode"]
       71 GETTABLEKS                       R8 R6 K13 ["Method"]
       73 SETTABLEKS                       R8 R7 K13 ["Method"]
       75 GETTABLEKS                       R8 R6 K14 ["SessionUpdateKind"]
       77 SETTABLEKS                       R8 R7 K14 ["SessionUpdateKind"]
       79 GETTABLEKS                       R8 R6 K15 ["StopReason"]
       81 SETTABLEKS                       R8 R7 K15 ["StopReason"]
       83 GETTABLEKS                       R8 R6 K16 ["PermissionOptionKinds"]
       85 SETTABLEKS                       R8 R7 K16 ["PermissionOptionKinds"]
       87 GETTABLEKS                       R8 R6 K17 ["PermissionOutcomes"]
       89 SETTABLEKS                       R8 R7 K17 ["PermissionOutcomes"]
       91 GETTABLEKS                       R8 R6 K18 ["LATEST_PROTOCOL_VERSION"]
       93 SETTABLEKS                       R8 R7 K18 ["LATEST_PROTOCOL_VERSION"]
       95 RETURN                           R7 1
