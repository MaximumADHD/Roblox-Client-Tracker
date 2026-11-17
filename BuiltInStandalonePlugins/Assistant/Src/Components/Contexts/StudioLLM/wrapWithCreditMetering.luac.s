PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["isFirstMessage"]
        2 JUMPIF                           R2 ; [+5]
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 MOVE                             R3 R2
       11 JUMPIFNOT                        R3 ; [+2]
       12 GETTABLEKS                       R3 R2 K1 ["blockReason"]
       14 JUMPIFNOT                        R2 ; [+13]
       15 JUMPIFNOT                        R3 ; [+12]
       16 GETTABLEKS                       R4 R2 K2 ["refreshQuotaSummary"]
       18 LOADK                            R5 K3 ["prompt blocked"]
       19 CALL                             R4 1 0
       20 MOVE                             R4 R1
       21 DUPTABLE                         R5 K6 [{["type"] = "error", ["error"]}]
       22 GETUPVAL                         R7 2
       23 GETTABLE                         R6 R7 R3
       24 SETTABLEKS                       R6 R5 K5 ["error"]
       26 CALL                             R4 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R4 0
       29 MOVE                             R5 R0
       30 MOVE                             R6 R1
       31 CALL                             R4 2 0
       32 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K14 [{["FreeTrialExhausted"] = "free_trial_exhausted", ["DailyLimitReached"] = "daily_limit_reached", ["InsufficientRobuxBalance"] = "insufficient_robux_balance"}]
       15 DUPCLOSURE                       R3 K15 [PROTO_1]
       16 CAPTURE                          VAL R2
       17 RETURN                           R3 1
