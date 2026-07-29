PROTO_0:
        0 LOADB                            R2 0
        1 LOADK                            R4 K0 ["Expected never type, got: %* with value: %*, %*"]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R7 R0
        4 GETIMPORT                        R6 K2 [typeof]
        6 CALL                             R6 1 1
        7 MOVE                             R7 R0
        8 GETIMPORT                        R8 K5 [debug.traceback]
       10 CALL                             R8 0 1
       11 NAMECALL                         R4 R4 K6 ["format"]
       13 CALL                             R4 4 1
       14 MOVE                             R3 R4
       15 FASTCALL2                        ASSERT R2 R3 ; [+3]
       17 GETIMPORT                        R1 K8 [assert]
       19 CALL                             R1 2 0
       20 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 SETTABLEKS                       R3 R2 K9 ["assertNever"]
       19 DUPTABLE                         R3 K22 [{["User"] = "user", ["System"] = "system", ["Assistant"] = "assistant", ["Model"] = "model", ["Function"] = "function", ["Tool"] = "tool"}]
       20 SETTABLEKS                       R3 R2 K23 ["ROLE"]
       22 DUPTABLE                         R3 K36 [{["QuotaExceeded"] = "quota_exceeded", ["Timeout"] = "timeout", ["RequestFailed"] = "request_failed", ["ClientError"] = "client_error", ["InputDisabled"] = "input_disabled", ["TooManyRequest"] = "too_many_request"}]
       23 SETTABLEKS                       R3 R2 K37 ["ClientErrorLiteral"]
       25 DUPTABLE                         R3 K40 [{["Agent"] = "Agent", ["Plan"] = "Plan"}]
       26 SETTABLEKS                       R3 R2 K41 ["AssistantMode"]
       28 RETURN                           R2 1
