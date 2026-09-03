PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["ErrorMessage"]
        3 MOVE                             R4 R0
        4 GETVARARGS                       R5 -1
        5 NAMECALL                         R1 R1 K1 ["getText"]
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["quota_exceeded"] ; [+13]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantUseRemoteService"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R1 1
        7 LOADK                            R2 K2 ["QuotaErrorTwo"]
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 GETUPVAL                         R1 1
       11 LOADK                            R2 K3 ["QuotaErrorAPIKey"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 JUMPIFNOTEQKS                    R0 K4 ["too_many_request"] ; [+5]
       16 GETUPVAL                         R1 1
       17 LOADK                            R2 K5 ["TooManyRequest"]
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1
       20 JUMPIFNOTEQKS                    R0 K6 ["request_failed"] ; [+5]
       22 GETUPVAL                         R1 1
       23 LOADK                            R2 K7 ["ConnectionLostOne"]
       24 CALL                             R1 1 -1
       25 RETURN                           R1 -1
       26 JUMPIFNOTEQKS                    R0 K8 ["timeout"] ; [+5]
       28 GETUPVAL                         R1 1
       29 LOADK                            R2 K9 ["Timeout"]
       30 CALL                             R1 1 -1
       31 RETURN                           R1 -1
       32 JUMPIFNOTEQKS                    R0 K10 ["rate_limit_error"] ; [+5]
       34 GETUPVAL                         R1 1
       35 LOADK                            R2 K11 ["ServersAtMaxCapacity"]
       36 CALL                             R1 1 -1
       37 RETURN                           R1 -1
       38 JUMPIFNOTEQKS                    R0 K12 ["external_connection_quota_exceeded_error"] ; [+5]
       40 GETUPVAL                         R1 1
       41 LOADK                            R2 K13 ["ExternalQuotaExceeded"]
       42 CALL                             R1 1 -1
       43 RETURN                           R1 -1
       44 JUMPIFEQKS                       R0 K14 ["api_connection_error"] ; [+7]
       46 JUMPIFEQKS                       R0 K15 ["api_status_error"] ; [+5]
       48 JUMPIFEQKS                       R0 K16 ["generic_error"] ; [+3]
       50 JUMPIFNOTEQKS                    R0 K17 ["external_connection_general_error"] ; [+5]
       52 GETUPVAL                         R1 1
       53 LOADK                            R2 K18 ["GeneralError"]
       54 CALL                             R1 1 -1
       55 RETURN                           R1 -1
       56 JUMPIFNOTEQKS                    R0 K19 ["input_token_limit_error"] ; [+5]
       58 GETUPVAL                         R1 1
       59 LOADK                            R2 K20 ["InputTokenLimit"]
       60 CALL                             R1 1 -1
       61 RETURN                           R1 -1
       62 JUMPIFEQKS                       R0 K21 ["client_error"] ; [+3]
       64 JUMPIFNOTEQKS                    R0 K22 ["invalid_tool_call_json"] ; [+5]
       66 GETUPVAL                         R1 1
       67 LOADK                            R2 K23 ["ClientError"]
       68 CALL                             R1 1 -1
       69 RETURN                           R1 -1
       70 JUMPIFNOTEQKS                    R0 K24 ["token_limit"] ; [+5]
       72 GETUPVAL                         R1 1
       73 LOADK                            R2 K25 ["TokenLimit"]
       74 CALL                             R1 1 -1
       75 RETURN                           R1 -1
       76 JUMPIFNOTEQKS                    R0 K26 ["safety_filter"] ; [+5]
       78 GETUPVAL                         R1 1
       79 LOADK                            R2 K27 ["SafetyFilter"]
       80 CALL                             R1 1 -1
       81 RETURN                           R1 -1
       82 JUMPIFNOTEQKS                    R0 K28 ["max_tool_calls"] ; [+11]
       84 GETUPVAL                         R1 1
       85 LOADK                            R2 K29 ["MaxToolCalls"]
       86 DUPTABLE                         R3 K31 [{"count"}]
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R4 R4 K32 ["FIntMCPAssistantMaxToolCalls"]
       90 SETTABLEKS                       R4 R3 K30 ["count"]
       92 CALL                             R1 2 -1
       93 RETURN                           R1 -1
       94 JUMPIFNOTEQKS                    R0 K33 ["input_disabled"] ; [+5]
       96 GETUPVAL                         R1 1
       97 LOADK                            R2 K34 ["ExternalError"]
       98 CALL                             R1 1 -1
       99 RETURN                           R1 -1
      100 JUMPIFNOTEQKS                    R0 K35 ["external_connection_unauthorized_error"] ; [+5]
      102 GETUPVAL                         R1 1
      103 LOADK                            R2 K36 ["ExternalAPIError"]
      104 CALL                             R1 1 -1
      105 RETURN                           R1 -1
      106 JUMPIFNOTEQKS                    R0 K37 ["free_trial_exhausted"] ; [+5]
      108 GETUPVAL                         R1 1
      109 LOADK                            R2 K38 ["FreeTrialExhausted"]
      110 CALL                             R1 1 -1
      111 RETURN                           R1 -1
      112 JUMPIFNOTEQKS                    R0 K39 ["daily_limit_reached"] ; [+5]
      114 GETUPVAL                         R1 1
      115 LOADK                            R2 K40 ["DailyLimitReached"]
      116 CALL                             R1 1 -1
      117 RETURN                           R1 -1
      118 JUMPIFNOTEQKS                    R0 K41 ["insufficient_robux_balance"] ; [+5]
      120 GETUPVAL                         R1 1
      121 LOADK                            R2 K42 ["InsufficientRobuxBalance"]
      122 CALL                             R1 1 -1
      123 RETURN                           R1 -1
      124 GETUPVAL                         R1 2
      125 GETTABLEKS                       R1 R1 K43 ["assertNever"]
      127 MOVE                             R2 R0
      128 CALL                             R1 1 -1
      129 RETURN                           R1 -1

PROTO_2:
        0 JUMPIFEQKS                       R0 K0 ["token_limit"] ; [+15]
        2 JUMPIFEQKS                       R0 K1 ["max_tool_calls"] ; [+13]
        4 JUMPIFEQKS                       R0 K2 ["timeout"] ; [+11]
        6 JUMPIFEQKS                       R0 K3 ["api_connection_error"] ; [+9]
        8 JUMPIFEQKS                       R0 K4 ["api_status_error"] ; [+7]
       10 JUMPIFEQKS                       R0 K5 ["generic_error"] ; [+5]
       12 JUMPIFEQKS                       R0 K6 ["rate_limit_error"] ; [+3]
       14 JUMPIFNOTEQKS                    R0 K7 ["input_disabled"] ; [+3]
       16 LOADB                            R1 1
       17 RETURN                           R1 1
       18 JUMPIFEQKS                       R0 K8 ["input_token_limit_error"] ; [+25]
       20 JUMPIFEQKS                       R0 K9 ["safety_filter"] ; [+23]
       22 JUMPIFEQKS                       R0 K10 ["quota_exceeded"] ; [+21]
       24 JUMPIFEQKS                       R0 K11 ["too_many_request"] ; [+19]
       26 JUMPIFEQKS                       R0 K12 ["request_failed"] ; [+17]
       28 JUMPIFEQKS                       R0 K13 ["client_error"] ; [+15]
       30 JUMPIFEQKS                       R0 K14 ["external_connection_general_error"] ; [+13]
       32 JUMPIFEQKS                       R0 K15 ["external_connection_quota_exceeded_error"] ; [+11]
       34 JUMPIFEQKS                       R0 K16 ["external_connection_unauthorized_error"] ; [+9]
       36 JUMPIFEQKS                       R0 K17 ["invalid_tool_call_json"] ; [+7]
       38 JUMPIFEQKS                       R0 K18 ["free_trial_exhausted"] ; [+5]
       40 JUMPIFEQKS                       R0 K19 ["daily_limit_reached"] ; [+3]
       42 JUMPIFNOTEQKS                    R0 K20 ["insufficient_robux_balance"] ; [+3]
       44 LOADB                            R1 0
       45 RETURN                           R1 1
       46 GETUPVAL                         R1 0
       47 GETTABLEKS                       R1 R1 K21 ["assertNever"]
       49 MOVE                             R2 R0
       50 CALL                             R1 1 -1
       51 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 LOADB                            R1 1
        7 JUMPIFEQKS                       R0 K1 ["external_connection_general_error"] ; [+11]
        9 LOADB                            R1 1
       10 JUMPIFEQKS                       R0 K2 ["external_connection_quota_exceeded_error"] ; [+8]
       12 LOADB                            R1 1
       13 JUMPIFEQKS                       R0 K3 ["external_connection_unauthorized_error"] ; [+5]
       15 JUMPIFEQKS                       R0 K4 ["quota_exceeded"] ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_4:
        0 JUMPIFEQKS                       R0 K0 ["free_trial_exhausted"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["daily_limit_reached"] ; [+3]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 JUMPIFNOTEQKS                    R0 K2 ["insufficient_robux_balance"] ; [+5]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["FFlagAssistantCreditMeteringAdditionalUsage"]
       12 NOT                              R1 R2
       13 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 JUMPIFEQKS                       R0 K1 ["insufficient_robux_balance"] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["errorType"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 DUPTABLE                         R0 K5 [{"Title", "Continue", "EditApiKeys", "GoToSettings", "BuyRobux"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K6 ["ErrorMessage"]
        3 LOADK                            R4 K0 ["Title"]
        4 NAMECALL                         R1 R1 K7 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["ErrorMessage"]
       11 LOADK                            R4 K1 ["Continue"]
       12 NAMECALL                         R1 R1 K7 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Continue"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K8 ["SettingsDialog"]
       19 LOADK                            R4 K2 ["EditApiKeys"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["EditApiKeys"]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K9 ["FFlagAssistantCreditMetering"]
       28 JUMPIFNOT                        R2 ; [+7]
       29 GETUPVAL                         R1 0
       30 LOADK                            R3 K10 ["CreditMetering"]
       31 LOADK                            R4 K3 ["GoToSettings"]
       32 NAMECALL                         R1 R1 K7 ["getText"]
       34 CALL                             R1 3 1
       35 JUMPIF                           R1 ; [+1]
       36 LOADK                            R1 K11 [""]
       37 SETTABLEKS                       R1 R0 K3 ["GoToSettings"]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K9 ["FFlagAssistantCreditMetering"]
       42 JUMPIFNOT                        R2 ; [+11]
       43 GETUPVAL                         R2 1
       44 GETTABLEKS                       R2 R2 K12 ["FFlagAssistantCreditMeteringAdditionalUsage"]
       46 JUMPIFNOT                        R2 ; [+7]
       47 GETUPVAL                         R1 0
       48 LOADK                            R3 K10 ["CreditMetering"]
       49 LOADK                            R4 K4 ["BuyRobux"]
       50 NAMECALL                         R1 R1 K7 ["getText"]
       52 CALL                             R1 3 1
       53 JUMPIF                           R1 ; [+1]
       54 LOADK                            R1 K11 [""]
       55 SETTABLEKS                       R1 R0 K4 ["BuyRobux"]
       57 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"messageId"}]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["messageId"]
        5 SETTABLEKS                       R2 R1 K0 ["messageId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendMessage"]
        3 DUPTABLE                         R1 K3 [{["text"] = "Continue"}]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showApiKeys"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showUsage"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["openBuyRobux"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showUsage"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R0 ; [+28]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["errorType"]
        7 JUMPIFEQKS                       R1 K2 ["free_trial_exhausted"] ; [+3]
        9 JUMPIFNOTEQKS                    R1 K3 ["daily_limit_reached"] ; [+3]
       11 LOADB                            R0 1
       12 JUMP                             ; [+7]
       13 LOADB                            R0 0
       14 JUMPIFNOTEQKS                    R1 K4 ["insufficient_robux_balance"] ; [+5]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K5 ["FFlagAssistantCreditMeteringAdditionalUsage"]
       19 NOT                              R0 R2
       20 JUMPIFNOT                        R0 ; [+11]
       21 DUPTABLE                         R0 K10 [{["Text"], ["OnClick"], ["Disabled"] = False}]
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K11 ["GoToSettings"]
       25 SETTABLEKS                       R1 R0 K6 ["Text"]
       27 NEWCLOSURE                       R1 P0
       28 CAPTURE                          UPVAL U3
       29 SETTABLEKS                       R1 R0 K7 ["OnClick"]
       31 RETURN                           R0 1
       32 GETUPVAL                         R0 4
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K1 ["errorType"]
       36 CALL                             R0 1 1
       37 JUMPIF                           R0 ; [+2]
       38 LOADNIL                          R0
       39 RETURN                           R0 1
       40 DUPTABLE                         R0 K12 [{"Text", "OnClick", "Disabled"}]
       41 GETUPVAL                         R1 2
       42 GETTABLEKS                       R1 R1 K13 ["Continue"]
       44 SETTABLEKS                       R1 R0 K6 ["Text"]
       46 NEWCLOSURE                       R1 P1
       47 CAPTURE                          UPVAL U5
       48 SETTABLEKS                       R1 R0 K7 ["OnClick"]
       50 GETUPVAL                         R2 6
       51 NOT                              R1 R2
       52 SETTABLEKS                       R1 R0 K8 ["Disabled"]
       54 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R0 ; [+27]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        7 JUMPIFNOT                        R0 ; [+23]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["errorType"]
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantCreditMeteringAdditionalUsage"]
       14 JUMPIFNOT                        R0 ; [+4]
       15 JUMPIFEQKS                       R1 K3 ["insufficient_robux_balance"] ; [+2]
       17 LOADB                            R0 0 +1
       18 LOADB                            R0 1
       19 JUMPIFNOT                        R0 ; [+11]
       20 DUPTABLE                         R0 K8 [{["Text"], ["OnClick"], ["Disabled"] = False}]
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K9 ["BuyRobux"]
       24 SETTABLEKS                       R1 R0 K4 ["Text"]
       26 NEWCLOSURE                       R1 P0
       27 CAPTURE                          UPVAL U3
       28 SETTABLEKS                       R1 R0 K5 ["OnClick"]
       30 RETURN                           R0 1
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R1 R1 K2 ["errorType"]
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K10 ["FFlagAssistantUseRemoteService"]
       37 JUMPIFNOT                        R2 ; [+2]
       38 LOADB                            R0 0
       39 JUMP                             ; [+13]
       40 LOADB                            R0 1
       41 JUMPIFEQKS                       R1 K11 ["external_connection_general_error"] ; [+11]
       43 LOADB                            R0 1
       44 JUMPIFEQKS                       R1 K12 ["external_connection_quota_exceeded_error"] ; [+8]
       46 LOADB                            R0 1
       47 JUMPIFEQKS                       R1 K13 ["external_connection_unauthorized_error"] ; [+5]
       49 JUMPIFEQKS                       R1 K14 ["quota_exceeded"] ; [+2]
       51 LOADB                            R0 0 +1
       52 LOADB                            R0 1
       53 JUMPIF                           R0 ; [+2]
       54 LOADNIL                          R0
       55 RETURN                           R0 1
       56 DUPTABLE                         R0 K8 [{["Text"], ["OnClick"], ["Disabled"] = False}]
       57 GETUPVAL                         R1 2
       58 GETTABLEKS                       R1 R1 K15 ["EditApiKeys"]
       60 SETTABLEKS                       R1 R0 K4 ["Text"]
       62 NEWCLOSURE                       R1 P1
       63 CAPTURE                          UPVAL U4
       64 SETTABLEKS                       R1 R0 K5 ["OnClick"]
       66 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["inputEnabled"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["useContext"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K1 ["Context"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 3
       17 CALL                             R4 0 1
       18 GETUPVAL                         R5 4
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R8 0 2
       28 GETTABLEKS                       R9 R0 K4 ["errorType"]
       30 GETUPVAL                         R10 6
       31 GETTABLEKS                       R10 R10 K5 ["locale"]
       33 SETLIST                          R8 R9 2 [1]
       35 CALL                             R6 2 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K3 ["useMemo"]
       39 DUPCLOSURE                       R8 K6 [PROTO_7]
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U7
       42 NEWTABLE                         R9 0 1
       44 GETUPVAL                         R10 6
       45 GETTABLEKS                       R10 R10 K5 ["locale"]
       47 SETLIST                          R9 R10 1 [1]
       49 CALL                             R7 2 1
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       53 NEWCLOSURE                       R9 P2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R0
       56 NEWTABLE                         R10 0 2
       58 GETTABLEKS                       R11 R0 K8 ["messageId"]
       60 MOVE                             R12 R4
       61 SETLIST                          R10 R11 2 [1]
       63 CALL                             R8 2 1
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       67 NEWCLOSURE                       R10 P3
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R11 0 1
       71 GETTABLEKS                       R12 R0 K9 ["sendMessage"]
       73 SETLIST                          R11 R12 1 [1]
       75 CALL                             R9 2 1
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       79 NEWCLOSURE                       R11 P4
       80 CAPTURE                          VAL R5
       81 NEWTABLE                         R12 0 1
       83 GETTABLEKS                       R13 R5 K10 ["showApiKeys"]
       85 SETLIST                          R12 R13 1 [1]
       87 CALL                             R10 2 1
       88 GETUPVAL                         R11 0
       89 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       91 NEWCLOSURE                       R12 P5
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R3
       94 NEWTABLE                         R13 0 2
       96 GETTABLEKS                       R14 R5 K11 ["showUsage"]
       98 GETTABLEKS                       R15 R3 K12 ["openBuyRobux"]
      100 SETLIST                          R13 R14 2 [1]
      102 CALL                             R11 2 1
      103 GETUPVAL                         R12 0
      104 GETTABLEKS                       R12 R12 K7 ["useCallback"]
      106 NEWCLOSURE                       R13 P6
      107 CAPTURE                          VAL R5
      108 NEWTABLE                         R14 0 1
      110 GETTABLEKS                       R15 R5 K11 ["showUsage"]
      112 SETLIST                          R14 R15 1 [1]
      114 CALL                             R12 2 1
      115 GETUPVAL                         R13 0
      116 GETTABLEKS                       R13 R13 K3 ["useMemo"]
      118 NEWCLOSURE                       R14 P7
      119 CAPTURE                          UPVAL U7
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R12
      123 CAPTURE                          UPVAL U8
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R2
      126 NEWTABLE                         R15 0 6
      128 MOVE                             R16 R2
      129 MOVE                             R17 R9
      130 MOVE                             R18 R12
      131 GETTABLEKS                       R19 R0 K4 ["errorType"]
      133 GETTABLEKS                       R20 R7 K13 ["Continue"]
      135 GETTABLEKS                       R21 R7 K14 ["GoToSettings"]
      137 SETLIST                          R15 R16 6 [1]
      139 CALL                             R13 2 1
      140 GETUPVAL                         R14 0
      141 GETTABLEKS                       R14 R14 K3 ["useMemo"]
      143 NEWCLOSURE                       R15 P8
      144 CAPTURE                          UPVAL U7
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R10
      149 NEWTABLE                         R16 0 5
      151 GETTABLEKS                       R17 R0 K4 ["errorType"]
      153 MOVE                             R18 R10
      154 MOVE                             R19 R11
      155 GETTABLEKS                       R20 R7 K15 ["EditApiKeys"]
      157 GETTABLEKS                       R21 R7 K16 ["BuyRobux"]
      159 SETLIST                          R16 R17 5 [1]
      161 CALL                             R14 2 1
      162 GETUPVAL                         R15 9
      163 CALL                             R15 0 1
      164 GETUPVAL                         R16 10
      165 GETUPVAL                         R17 11
      166 DUPTABLE                         R18 K20 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
      167 GETTABLEKS                       R19 R0 K19 ["LayoutOrder"]
      169 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      171 DUPTABLE                         R19 K23 [{"AlertContent", "DialogWidget"}]
      172 GETUPVAL                         R20 10
      173 GETUPVAL                         R21 12
      174 DUPTABLE                         R22 K28 [{"LayoutOrder", "Text", "ButtonContent", "SecondaryButtonContent", "OnClose"}]
      175 MOVE                             R23 R15
      176 CALL                             R23 0 1
      177 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      179 SETTABLEKS                       R6 R22 K24 ["Text"]
      181 SETTABLEKS                       R13 R22 K25 ["ButtonContent"]
      183 SETTABLEKS                       R14 R22 K26 ["SecondaryButtonContent"]
      185 SETTABLEKS                       R8 R22 K27 ["OnClose"]
      187 CALL                             R20 2 1
      188 SETTABLEKS                       R20 R19 K21 ["AlertContent"]
      190 GETTABLEKS                       R22 R0 K4 ["errorType"]
      192 GETUPVAL                         R23 7
      193 GETTABLEKS                       R23 R23 K29 ["FFlagAssistantUseRemoteService"]
      195 JUMPIFNOT                        R23 ; [+2]
      196 LOADB                            R21 0
      197 JUMP                             ; [+13]
      198 LOADB                            R21 1
      199 JUMPIFEQKS                       R22 K30 ["external_connection_general_error"] ; [+11]
      201 LOADB                            R21 1
      202 JUMPIFEQKS                       R22 K31 ["external_connection_quota_exceeded_error"] ; [+8]
      204 LOADB                            R21 1
      205 JUMPIFEQKS                       R22 K32 ["external_connection_unauthorized_error"] ; [+5]
      207 JUMPIFEQKS                       R22 K33 ["quota_exceeded"] ; [+2]
      209 LOADB                            R21 0 +1
      210 LOADB                            R21 1
      211 JUMPIF                           R21 ; [+31]
      212 GETUPVAL                         R21 7
      213 GETTABLEKS                       R21 R21 K34 ["FFlagAssistantCreditMetering"]
      215 JUMPIFNOT                        R21 ; [+30]
      216 GETTABLEKS                       R22 R0 K4 ["errorType"]
      218 JUMPIFEQKS                       R22 K35 ["free_trial_exhausted"] ; [+3]
      220 JUMPIFNOTEQKS                    R22 K36 ["daily_limit_reached"] ; [+3]
      222 LOADB                            R21 1
      223 JUMP                             ; [+7]
      224 LOADB                            R21 0
      225 JUMPIFNOTEQKS                    R22 K37 ["insufficient_robux_balance"] ; [+5]
      227 GETUPVAL                         R23 7
      228 GETTABLEKS                       R23 R23 K38 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      230 NOT                              R21 R23
      231 JUMPIF                           R21 ; [+11]
      232 GETTABLEKS                       R22 R0 K4 ["errorType"]
      234 GETUPVAL                         R21 7
      235 GETTABLEKS                       R21 R21 K38 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      237 JUMPIFNOT                        R21 ; [+4]
      238 JUMPIFEQKS                       R22 K37 ["insufficient_robux_balance"] ; [+2]
      240 LOADB                            R21 0 +1
      241 LOADB                            R21 1
      242 JUMPIFNOT                        R21 ; [+3]
      243 GETTABLEKS                       R20 R5 K39 ["root"]
      245 JUMP                             ; [+1]
      246 LOADNIL                          R20
      247 SETTABLEKS                       R20 R19 K22 ["DialogWidget"]
      249 CALL                             R16 3 -1
      250 RETURN                           R16 -1

PROTO_20:
        0 DUPTABLE                         R1 K2 [{"errorType", "sourceMessageGuid"}]
        1 GETTABLEKS                       R2 R0 K0 ["errorType"]
        3 SETTABLEKS                       R2 R1 K0 ["errorType"]
        5 GETTABLEKS                       R2 R0 K1 ["sourceMessageGuid"]
        7 SETTABLEKS                       R2 R1 K1 ["sourceMessageGuid"]
        9 RETURN                           R1 1

PROTO_21:
        0 DUPTABLE                         R2 K4 [{[1] = "Error", ["errorType"], ["sourceMessageGuid"]}]
        1 GETTABLEKS                       R3 R0 K2 ["errorType"]
        3 JUMPIF                           R3 ; [+5]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K5 ["ClientErrorLiteral"]
        7 GETTABLEKS                       R3 R3 K6 ["ClientError"]
        9 SETTABLEKS                       R3 R2 K2 ["errorType"]
       11 GETTABLEKS                       R3 R0 K3 ["sourceMessageGuid"]
       13 SETTABLEKS                       R3 R2 K3 ["sourceMessageGuid"]
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["AlertContent"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K9 ["CreditMeteringContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R6 K8 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K13 ["InputStateContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Parent"]
       48 GETTABLEKS                       R7 R7 K14 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K11 ["Parent"]
       55 GETTABLEKS                       R8 R8 K15 ["ReactUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K16 ["Util"]
       62 GETTABLEKS                       R9 R9 K17 ["Serializer"]
       64 GETTABLEKS                       R9 R9 K18 ["SerializerTypes"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K19 ["Resources"]
       71 GETTABLEKS                       R10 R10 K20 ["Localization"]
       73 GETTABLEKS                       R10 R10 K21 ["Translator"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K22 ["Types"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       85 GETTABLEKS                       R12 R12 K24 ["useRemoveMessage"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       92 GETTABLEKS                       R13 R13 K25 ["useSettingsDialog"]
       94 CALL                             R12 1 1
       95 GETTABLEKS                       R13 R4 K26 ["View"]
       97 GETTABLEKS                       R14 R7 K27 ["createNextOrder"]
       99 GETTABLEKS                       R15 R6 K28 ["createElement"]
      101 DUPCLOSURE                       R16 K29 [PROTO_0]
      102 CAPTURE                          VAL R9
      103 DUPCLOSURE                       R17 K30 [PROTO_1]
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R10
      107 DUPCLOSURE                       R18 K31 [PROTO_2]
      108 CAPTURE                          VAL R10
      109 DUPCLOSURE                       R19 K32 [PROTO_3]
      110 CAPTURE                          VAL R3
      111 DUPCLOSURE                       R20 K33 [PROTO_4]
      112 CAPTURE                          VAL R3
      113 DUPCLOSURE                       R21 K34 [PROTO_5]
      114 CAPTURE                          VAL R3
      115 DUPCLOSURE                       R22 K35 [PROTO_19]
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R1
      129 DUPTABLE                         R23 K38 [{"toMeta", "fromMeta"}]
      130 DUPCLOSURE                       R24 K39 [PROTO_20]
      131 SETTABLEKS                       R24 R23 K36 ["toMeta"]
      133 DUPCLOSURE                       R24 K40 [PROTO_21]
      134 CAPTURE                          VAL R10
      135 SETTABLEKS                       R24 R23 K37 ["fromMeta"]
      137 DUPTABLE                         R24 K45 [{["Type"] = "Error", ["ContentWidget"], ["Serialization"]}]
      138 GETTABLEKS                       R25 R6 K46 ["memo"]
      140 MOVE                             R26 R22
      141 CALL                             R25 1 1
      142 SETTABLEKS                       R25 R24 K43 ["ContentWidget"]
      144 SETTABLEKS                       R23 R24 K44 ["Serialization"]
      146 RETURN                           R24 1
