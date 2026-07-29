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
       40 GETTABLEKS                       R6 R6 K9 ["Types"]
       42 CALL                             R5 1 1
       43 DUPTABLE                         R6 K17 [{"Client", "PeerTransport", "Protocol", "Server", "Trace", "Types", "ErrorCode", "Method", "SessionUpdateKind", "StopReason", "PermissionOptionKinds", "PermissionOutcomes", "LATEST_PROTOCOL_VERSION"}]
       44 SETTABLEKS                       R0 R6 K4 ["Client"]
       46 SETTABLEKS                       R1 R6 K5 ["PeerTransport"]
       48 SETTABLEKS                       R2 R6 K6 ["Protocol"]
       50 SETTABLEKS                       R3 R6 K7 ["Server"]
       52 SETTABLEKS                       R4 R6 K8 ["Trace"]
       54 SETTABLEKS                       R5 R6 K9 ["Types"]
       56 GETTABLEKS                       R7 R5 K10 ["ErrorCode"]
       58 SETTABLEKS                       R7 R6 K10 ["ErrorCode"]
       60 GETTABLEKS                       R7 R5 K11 ["Method"]
       62 SETTABLEKS                       R7 R6 K11 ["Method"]
       64 GETTABLEKS                       R7 R5 K12 ["SessionUpdateKind"]
       66 SETTABLEKS                       R7 R6 K12 ["SessionUpdateKind"]
       68 GETTABLEKS                       R7 R5 K13 ["StopReason"]
       70 SETTABLEKS                       R7 R6 K13 ["StopReason"]
       72 GETTABLEKS                       R7 R5 K14 ["PermissionOptionKinds"]
       74 SETTABLEKS                       R7 R6 K14 ["PermissionOptionKinds"]
       76 GETTABLEKS                       R7 R5 K15 ["PermissionOutcomes"]
       78 SETTABLEKS                       R7 R6 K15 ["PermissionOutcomes"]
       80 GETTABLEKS                       R7 R5 K16 ["LATEST_PROTOCOL_VERSION"]
       82 SETTABLEKS                       R7 R6 K16 ["LATEST_PROTOCOL_VERSION"]
       84 RETURN                           R6 1
