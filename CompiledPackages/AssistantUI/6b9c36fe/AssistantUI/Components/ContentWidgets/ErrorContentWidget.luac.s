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
        0 JUMPIFNOTEQKS                    R0 K0 ["quota_exceeded"] ; [+12]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K1 ["QuotaErrorTwo"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 1
       10 LOADK                            R2 K2 ["QuotaErrorAPIKey"]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 JUMPIFNOTEQKS                    R0 K3 ["too_many_request"] ; [+5]
       15 GETUPVAL                         R1 1
       16 LOADK                            R2 K4 ["TooManyRequest"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1
       19 JUMPIFNOTEQKS                    R0 K5 ["request_failed"] ; [+5]
       21 GETUPVAL                         R1 1
       22 LOADK                            R2 K6 ["ConnectionLostOne"]
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1
       25 JUMPIFNOTEQKS                    R0 K7 ["timeout"] ; [+5]
       27 GETUPVAL                         R1 1
       28 LOADK                            R2 K8 ["Timeout"]
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1
       31 JUMPIFNOTEQKS                    R0 K9 ["rate_limit_error"] ; [+5]
       33 GETUPVAL                         R1 1
       34 LOADK                            R2 K10 ["ServersAtMaxCapacity"]
       35 CALL                             R1 1 -1
       36 RETURN                           R1 -1
       37 JUMPIFNOTEQKS                    R0 K11 ["external_connection_quota_exceeded_error"] ; [+5]
       39 GETUPVAL                         R1 1
       40 LOADK                            R2 K12 ["ExternalQuotaExceeded"]
       41 CALL                             R1 1 -1
       42 RETURN                           R1 -1
       43 JUMPIFEQKS                       R0 K13 ["api_connection_error"] ; [+7]
       45 JUMPIFEQKS                       R0 K14 ["api_status_error"] ; [+5]
       47 JUMPIFEQKS                       R0 K15 ["generic_error"] ; [+3]
       49 JUMPIFNOTEQKS                    R0 K16 ["external_connection_general_error"] ; [+5]
       51 GETUPVAL                         R1 1
       52 LOADK                            R2 K17 ["GeneralError"]
       53 CALL                             R1 1 -1
       54 RETURN                           R1 -1
       55 JUMPIFNOTEQKS                    R0 K18 ["input_token_limit_error"] ; [+5]
       57 GETUPVAL                         R1 1
       58 LOADK                            R2 K19 ["InputTokenLimit"]
       59 CALL                             R1 1 -1
       60 RETURN                           R1 -1
       61 JUMPIFEQKS                       R0 K20 ["client_error"] ; [+3]
       63 JUMPIFNOTEQKS                    R0 K21 ["invalid_tool_call_json"] ; [+5]
       65 GETUPVAL                         R1 1
       66 LOADK                            R2 K22 ["ClientError"]
       67 CALL                             R1 1 -1
       68 RETURN                           R1 -1
       69 JUMPIFNOTEQKS                    R0 K23 ["token_limit"] ; [+5]
       71 GETUPVAL                         R1 1
       72 LOADK                            R2 K24 ["TokenLimit"]
       73 CALL                             R1 1 -1
       74 RETURN                           R1 -1
       75 JUMPIFNOTEQKS                    R0 K25 ["safety_filter"] ; [+5]
       77 GETUPVAL                         R1 1
       78 LOADK                            R2 K26 ["SafetyFilter"]
       79 CALL                             R1 1 -1
       80 RETURN                           R1 -1
       81 JUMPIFNOTEQKS                    R0 K27 ["max_tool_calls"] ; [+11]
       83 GETUPVAL                         R1 1
       84 LOADK                            R2 K28 ["MaxToolCalls"]
       85 DUPTABLE                         R3 K30 [{"count"}]
       86 GETUPVAL                         R4 2
       87 GETTABLEKS                       R4 R4 K31 ["FIntMCPAssistantMaxToolCalls"]
       89 SETTABLEKS                       R4 R3 K29 ["count"]
       91 CALL                             R1 2 -1
       92 RETURN                           R1 -1
       93 JUMPIFNOTEQKS                    R0 K32 ["input_disabled"] ; [+5]
       95 GETUPVAL                         R1 1
       96 LOADK                            R2 K33 ["ExternalError"]
       97 CALL                             R1 1 -1
       98 RETURN                           R1 -1
       99 JUMPIFNOTEQKS                    R0 K34 ["external_connection_unauthorized_error"] ; [+5]
      101 GETUPVAL                         R1 1
      102 LOADK                            R2 K35 ["ExternalAPIError"]
      103 CALL                             R1 1 -1
      104 RETURN                           R1 -1
      105 JUMPIFNOTEQKS                    R0 K36 ["free_trial_exhausted"] ; [+5]
      107 GETUPVAL                         R1 1
      108 LOADK                            R2 K37 ["FreeTrialExhausted"]
      109 CALL                             R1 1 -1
      110 RETURN                           R1 -1
      111 JUMPIFNOTEQKS                    R0 K38 ["daily_limit_reached"] ; [+5]
      113 GETUPVAL                         R1 1
      114 LOADK                            R2 K39 ["DailyLimitReached"]
      115 CALL                             R1 1 -1
      116 RETURN                           R1 -1
      117 JUMPIFNOTEQKS                    R0 K40 ["insufficient_robux_balance"] ; [+5]
      119 GETUPVAL                         R1 1
      120 LOADK                            R2 K41 ["InsufficientRobuxBalance"]
      121 CALL                             R1 1 -1
      122 RETURN                           R1 -1
      123 GETUPVAL                         R1 3
      124 GETTABLEKS                       R1 R1 K42 ["assertNever"]
      126 MOVE                             R2 R0
      127 CALL                             R1 1 -1
      128 RETURN                           R1 -1

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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 LOADB                            R1 1
        6 JUMPIFEQKS                       R0 K0 ["external_connection_general_error"] ; [+11]
        8 LOADB                            R1 1
        9 JUMPIFEQKS                       R0 K1 ["external_connection_quota_exceeded_error"] ; [+8]
       11 LOADB                            R1 1
       12 JUMPIFEQKS                       R0 K2 ["external_connection_unauthorized_error"] ; [+5]
       14 JUMPIFEQKS                       R0 K3 ["quota_exceeded"] ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

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
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+7]
       28 GETUPVAL                         R1 0
       29 LOADK                            R3 K9 ["CreditMetering"]
       30 LOADK                            R4 K3 ["GoToSettings"]
       31 NAMECALL                         R1 R1 K7 ["getText"]
       33 CALL                             R1 3 1
       34 JUMPIF                           R1 ; [+1]
       35 LOADK                            R1 K10 [""]
       36 SETTABLEKS                       R1 R0 K3 ["GoToSettings"]
       38 GETUPVAL                         R2 1
       39 CALL                             R2 0 1
       40 JUMPIFNOT                        R2 ; [+11]
       41 GETUPVAL                         R2 2
       42 GETTABLEKS                       R2 R2 K11 ["FFlagAssistantCreditMeteringAdditionalUsage"]
       44 JUMPIFNOT                        R2 ; [+7]
       45 GETUPVAL                         R1 0
       46 LOADK                            R3 K9 ["CreditMetering"]
       47 LOADK                            R4 K4 ["BuyRobux"]
       48 NAMECALL                         R1 R1 K7 ["getText"]
       50 CALL                             R1 3 1
       51 JUMPIF                           R1 ; [+1]
       52 LOADK                            R1 K10 [""]
       53 SETTABLEKS                       R1 R0 K4 ["BuyRobux"]
       55 RETURN                           R0 1

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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+28]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["errorType"]
        6 JUMPIFEQKS                       R1 K1 ["free_trial_exhausted"] ; [+3]
        8 JUMPIFNOTEQKS                    R1 K2 ["daily_limit_reached"] ; [+3]
       10 LOADB                            R0 1
       11 JUMP                             ; [+7]
       12 LOADB                            R0 0
       13 JUMPIFNOTEQKS                    R1 K3 ["insufficient_robux_balance"] ; [+5]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K4 ["FFlagAssistantCreditMeteringAdditionalUsage"]
       18 NOT                              R0 R2
       19 JUMPIFNOT                        R0 ; [+11]
       20 DUPTABLE                         R0 K9 [{["Text"], ["OnClick"], ["Disabled"] = False}]
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K10 ["GoToSettings"]
       24 SETTABLEKS                       R1 R0 K5 ["Text"]
       26 NEWCLOSURE                       R1 P0
       27 CAPTURE                          UPVAL U4
       28 SETTABLEKS                       R1 R0 K6 ["OnClick"]
       30 RETURN                           R0 1
       31 GETUPVAL                         R0 5
       32 GETUPVAL                         R1 1
       33 GETTABLEKS                       R1 R1 K0 ["errorType"]
       35 CALL                             R0 1 1
       36 JUMPIF                           R0 ; [+2]
       37 LOADNIL                          R0
       38 RETURN                           R0 1
       39 DUPTABLE                         R0 K11 [{"Text", "OnClick", "Disabled"}]
       40 GETUPVAL                         R1 3
       41 GETTABLEKS                       R1 R1 K12 ["Continue"]
       43 SETTABLEKS                       R1 R0 K5 ["Text"]
       45 NEWCLOSURE                       R1 P1
       46 CAPTURE                          UPVAL U6
       47 SETTABLEKS                       R1 R0 K6 ["OnClick"]
       49 GETUPVAL                         R2 7
       50 NOT                              R1 R2
       51 SETTABLEKS                       R1 R0 K7 ["Disabled"]
       53 RETURN                           R0 1

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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+27]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
        6 JUMPIFNOT                        R0 ; [+23]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["errorType"]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMeteringAdditionalUsage"]
       13 JUMPIFNOT                        R0 ; [+4]
       14 JUMPIFEQKS                       R1 K2 ["insufficient_robux_balance"] ; [+2]
       16 LOADB                            R0 0 +1
       17 LOADB                            R0 1
       18 JUMPIFNOT                        R0 ; [+11]
       19 DUPTABLE                         R0 K7 [{["Text"], ["OnClick"], ["Disabled"] = False}]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K8 ["BuyRobux"]
       23 SETTABLEKS                       R1 R0 K3 ["Text"]
       25 NEWCLOSURE                       R1 P0
       26 CAPTURE                          UPVAL U4
       27 SETTABLEKS                       R1 R0 K4 ["OnClick"]
       29 RETURN                           R0 1
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K1 ["errorType"]
       33 GETUPVAL                         R2 5
       34 CALL                             R2 0 1
       35 JUMPIFNOT                        R2 ; [+2]
       36 LOADB                            R0 0
       37 JUMP                             ; [+13]
       38 LOADB                            R0 1
       39 JUMPIFEQKS                       R1 K9 ["external_connection_general_error"] ; [+11]
       41 LOADB                            R0 1
       42 JUMPIFEQKS                       R1 K10 ["external_connection_quota_exceeded_error"] ; [+8]
       44 LOADB                            R0 1
       45 JUMPIFEQKS                       R1 K11 ["external_connection_unauthorized_error"] ; [+5]
       47 JUMPIFEQKS                       R1 K12 ["quota_exceeded"] ; [+2]
       49 LOADB                            R0 0 +1
       50 LOADB                            R0 1
       51 JUMPIF                           R0 ; [+2]
       52 LOADNIL                          R0
       53 RETURN                           R0 1
       54 DUPTABLE                         R0 K7 [{["Text"], ["OnClick"], ["Disabled"] = False}]
       55 GETUPVAL                         R1 3
       56 GETTABLEKS                       R1 R1 K13 ["EditApiKeys"]
       58 SETTABLEKS                       R1 R0 K3 ["Text"]
       60 NEWCLOSURE                       R1 P1
       61 CAPTURE                          UPVAL U6
       62 SETTABLEKS                       R1 R0 K4 ["OnClick"]
       64 RETURN                           R0 1

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
       42 CAPTURE                          UPVAL U8
       43 NEWTABLE                         R9 0 1
       45 GETUPVAL                         R10 6
       46 GETTABLEKS                       R10 R10 K5 ["locale"]
       48 SETLIST                          R9 R10 1 [1]
       50 CALL                             R7 2 1
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       54 NEWCLOSURE                       R9 P2
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R10 0 2
       59 GETTABLEKS                       R11 R0 K8 ["messageId"]
       61 MOVE                             R12 R4
       62 SETLIST                          R10 R11 2 [1]
       64 CALL                             R8 2 1
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       68 NEWCLOSURE                       R10 P3
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R11 0 1
       72 GETTABLEKS                       R12 R0 K9 ["sendMessage"]
       74 SETLIST                          R11 R12 1 [1]
       76 CALL                             R9 2 1
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       80 NEWCLOSURE                       R11 P4
       81 CAPTURE                          VAL R5
       82 NEWTABLE                         R12 0 1
       84 GETTABLEKS                       R13 R5 K10 ["showApiKeys"]
       86 SETLIST                          R12 R13 1 [1]
       88 CALL                             R10 2 1
       89 GETUPVAL                         R11 0
       90 GETTABLEKS                       R11 R11 K7 ["useCallback"]
       92 NEWCLOSURE                       R12 P5
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R3
       95 NEWTABLE                         R13 0 2
       97 GETTABLEKS                       R14 R5 K11 ["showUsage"]
       99 GETTABLEKS                       R15 R3 K12 ["openBuyRobux"]
      101 SETLIST                          R13 R14 2 [1]
      103 CALL                             R11 2 1
      104 GETUPVAL                         R12 0
      105 GETTABLEKS                       R12 R12 K7 ["useCallback"]
      107 NEWCLOSURE                       R13 P6
      108 CAPTURE                          VAL R5
      109 NEWTABLE                         R14 0 1
      111 GETTABLEKS                       R15 R5 K11 ["showUsage"]
      113 SETLIST                          R14 R15 1 [1]
      115 CALL                             R12 2 1
      116 GETUPVAL                         R13 0
      117 GETTABLEKS                       R13 R13 K3 ["useMemo"]
      119 NEWCLOSURE                       R14 P7
      120 CAPTURE                          UPVAL U7
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U8
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R12
      125 CAPTURE                          UPVAL U9
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R2
      128 NEWTABLE                         R15 0 6
      130 MOVE                             R16 R2
      131 MOVE                             R17 R9
      132 MOVE                             R18 R12
      133 GETTABLEKS                       R19 R0 K4 ["errorType"]
      135 GETTABLEKS                       R20 R7 K13 ["Continue"]
      137 GETTABLEKS                       R21 R7 K14 ["GoToSettings"]
      139 SETLIST                          R15 R16 6 [1]
      141 CALL                             R13 2 1
      142 GETUPVAL                         R14 0
      143 GETTABLEKS                       R14 R14 K3 ["useMemo"]
      145 NEWCLOSURE                       R15 P8
      146 CAPTURE                          UPVAL U7
      147 CAPTURE                          UPVAL U8
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R11
      151 CAPTURE                          UPVAL U10
      152 CAPTURE                          VAL R10
      153 NEWTABLE                         R16 0 5
      155 GETTABLEKS                       R17 R0 K4 ["errorType"]
      157 MOVE                             R18 R10
      158 MOVE                             R19 R11
      159 GETTABLEKS                       R20 R7 K15 ["EditApiKeys"]
      161 GETTABLEKS                       R21 R7 K16 ["BuyRobux"]
      163 SETLIST                          R16 R17 5 [1]
      165 CALL                             R14 2 1
      166 GETUPVAL                         R15 11
      167 CALL                             R15 0 1
      168 GETUPVAL                         R16 12
      169 GETUPVAL                         R17 13
      170 DUPTABLE                         R18 K20 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
      171 GETTABLEKS                       R19 R0 K19 ["LayoutOrder"]
      173 SETTABLEKS                       R19 R18 K19 ["LayoutOrder"]
      175 DUPTABLE                         R19 K23 [{"AlertContent", "DialogWidget"}]
      176 GETUPVAL                         R20 12
      177 GETUPVAL                         R21 14
      178 DUPTABLE                         R22 K28 [{"LayoutOrder", "Text", "ButtonContent", "SecondaryButtonContent", "OnClose"}]
      179 MOVE                             R23 R15
      180 CALL                             R23 0 1
      181 SETTABLEKS                       R23 R22 K19 ["LayoutOrder"]
      183 SETTABLEKS                       R6 R22 K24 ["Text"]
      185 SETTABLEKS                       R13 R22 K25 ["ButtonContent"]
      187 SETTABLEKS                       R14 R22 K26 ["SecondaryButtonContent"]
      189 SETTABLEKS                       R8 R22 K27 ["OnClose"]
      191 CALL                             R20 2 1
      192 SETTABLEKS                       R20 R19 K21 ["AlertContent"]
      194 GETTABLEKS                       R22 R0 K4 ["errorType"]
      196 GETUPVAL                         R23 10
      197 CALL                             R23 0 1
      198 JUMPIFNOT                        R23 ; [+2]
      199 LOADB                            R21 0
      200 JUMP                             ; [+13]
      201 LOADB                            R21 1
      202 JUMPIFEQKS                       R22 K29 ["external_connection_general_error"] ; [+11]
      204 LOADB                            R21 1
      205 JUMPIFEQKS                       R22 K30 ["external_connection_quota_exceeded_error"] ; [+8]
      207 LOADB                            R21 1
      208 JUMPIFEQKS                       R22 K31 ["external_connection_unauthorized_error"] ; [+5]
      210 JUMPIFEQKS                       R22 K32 ["quota_exceeded"] ; [+2]
      212 LOADB                            R21 0 +1
      213 LOADB                            R21 1
      214 JUMPIF                           R21 ; [+30]
      215 GETUPVAL                         R21 7
      216 CALL                             R21 0 1
      217 JUMPIFNOT                        R21 ; [+30]
      218 GETTABLEKS                       R22 R0 K4 ["errorType"]
      220 JUMPIFEQKS                       R22 K33 ["free_trial_exhausted"] ; [+3]
      222 JUMPIFNOTEQKS                    R22 K34 ["daily_limit_reached"] ; [+3]
      224 LOADB                            R21 1
      225 JUMP                             ; [+7]
      226 LOADB                            R21 0
      227 JUMPIFNOTEQKS                    R22 K35 ["insufficient_robux_balance"] ; [+5]
      229 GETUPVAL                         R23 8
      230 GETTABLEKS                       R23 R23 K36 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      232 NOT                              R21 R23
      233 JUMPIF                           R21 ; [+11]
      234 GETTABLEKS                       R22 R0 K4 ["errorType"]
      236 GETUPVAL                         R21 8
      237 GETTABLEKS                       R21 R21 K36 ["FFlagAssistantCreditMeteringAdditionalUsage"]
      239 JUMPIFNOT                        R21 ; [+4]
      240 JUMPIFEQKS                       R22 K35 ["insufficient_robux_balance"] ; [+2]
      242 LOADB                            R21 0 +1
      243 LOADB                            R21 1
      244 JUMPIFNOT                        R21 ; [+3]
      245 GETTABLEKS                       R20 R5 K37 ["root"]
      247 JUMP                             ; [+1]
      248 LOADNIL                          R20
      249 SETTABLEKS                       R20 R19 K22 ["DialogWidget"]
      251 CALL                             R16 3 -1
      252 RETURN                           R16 -1

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
       83 GETTABLEKS                       R12 R0 K23 ["FlagUtils"]
       85 GETTABLEKS                       R12 R12 K24 ["getIsAssistantUseRemoteService"]
       87 CALL                             R11 1 1
       88 GETTABLEKS                       R11 R11 K25 ["get"]
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K23 ["FlagUtils"]
       94 GETTABLEKS                       R13 R13 K26 ["getIsCreditMeteringEnabled"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K27 ["Hooks"]
      101 GETTABLEKS                       R14 R14 K28 ["useRemoveMessage"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K27 ["Hooks"]
      108 GETTABLEKS                       R15 R15 K29 ["useSettingsDialog"]
      110 CALL                             R14 1 1
      111 GETTABLEKS                       R15 R4 K30 ["View"]
      113 GETTABLEKS                       R16 R7 K31 ["createNextOrder"]
      115 GETTABLEKS                       R17 R6 K32 ["createElement"]
      117 DUPCLOSURE                       R18 K33 [PROTO_0]
      118 CAPTURE                          VAL R9
      119 DUPCLOSURE                       R19 K34 [PROTO_1]
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R10
      124 DUPCLOSURE                       R20 K35 [PROTO_2]
      125 CAPTURE                          VAL R10
      126 DUPCLOSURE                       R21 K36 [PROTO_3]
      127 CAPTURE                          VAL R11
      128 DUPCLOSURE                       R22 K37 [PROTO_4]
      129 CAPTURE                          VAL R3
      130 DUPCLOSURE                       R23 K38 [PROTO_5]
      131 CAPTURE                          VAL R3
      132 DUPCLOSURE                       R24 K39 [PROTO_19]
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R20
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R1
      148 DUPTABLE                         R25 K42 [{"toMeta", "fromMeta"}]
      149 DUPCLOSURE                       R26 K43 [PROTO_20]
      150 SETTABLEKS                       R26 R25 K40 ["toMeta"]
      152 DUPCLOSURE                       R26 K44 [PROTO_21]
      153 CAPTURE                          VAL R10
      154 SETTABLEKS                       R26 R25 K41 ["fromMeta"]
      156 DUPTABLE                         R26 K49 [{["Type"] = "Error", ["ContentWidget"], ["Serialization"]}]
      157 GETTABLEKS                       R27 R6 K50 ["memo"]
      159 MOVE                             R28 R24
      160 CALL                             R27 1 1
      161 SETTABLEKS                       R27 R26 K47 ["ContentWidget"]
      163 SETTABLEKS                       R25 R26 K48 ["Serialization"]
      165 RETURN                           R26 1
