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
        0 JUMPIFNOTEQKS                    R0 K0 ["quota_exceeded"] ; [+23]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K1 ["QuotaErrorTwo"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+8]
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K2 ["FFlagAssistantCreditMeteringLocalBackend"]
       15 JUMPIFNOT                        R1 ; [+4]
       16 GETUPVAL                         R1 1
       17 LOADK                            R2 K3 ["QuotaExceededAPIKeyCMS"]
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1
       20 GETUPVAL                         R1 1
       21 LOADK                            R2 K4 ["QuotaErrorAPIKey"]
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1
       24 JUMPIFNOTEQKS                    R0 K5 ["too_many_request"] ; [+5]
       26 GETUPVAL                         R1 1
       27 LOADK                            R2 K6 ["TooManyRequest"]
       28 CALL                             R1 1 -1
       29 RETURN                           R1 -1
       30 JUMPIFNOTEQKS                    R0 K7 ["request_failed"] ; [+5]
       32 GETUPVAL                         R1 1
       33 LOADK                            R2 K8 ["ConnectionLostOne"]
       34 CALL                             R1 1 -1
       35 RETURN                           R1 -1
       36 JUMPIFNOTEQKS                    R0 K9 ["timeout"] ; [+5]
       38 GETUPVAL                         R1 1
       39 LOADK                            R2 K10 ["Timeout"]
       40 CALL                             R1 1 -1
       41 RETURN                           R1 -1
       42 JUMPIFNOTEQKS                    R0 K11 ["rate_limit_error"] ; [+5]
       44 GETUPVAL                         R1 1
       45 LOADK                            R2 K12 ["ServersAtMaxCapacity"]
       46 CALL                             R1 1 -1
       47 RETURN                           R1 -1
       48 JUMPIFNOTEQKS                    R0 K13 ["external_connection_quota_exceeded_error"] ; [+5]
       50 GETUPVAL                         R1 1
       51 LOADK                            R2 K14 ["ExternalQuotaExceeded"]
       52 CALL                             R1 1 -1
       53 RETURN                           R1 -1
       54 JUMPIFEQKS                       R0 K15 ["api_connection_error"] ; [+7]
       56 JUMPIFEQKS                       R0 K16 ["api_status_error"] ; [+5]
       58 JUMPIFEQKS                       R0 K17 ["generic_error"] ; [+3]
       60 JUMPIFNOTEQKS                    R0 K18 ["external_connection_general_error"] ; [+5]
       62 GETUPVAL                         R1 1
       63 LOADK                            R2 K19 ["GeneralError"]
       64 CALL                             R1 1 -1
       65 RETURN                           R1 -1
       66 JUMPIFNOTEQKS                    R0 K20 ["input_token_limit_error"] ; [+5]
       68 GETUPVAL                         R1 1
       69 LOADK                            R2 K21 ["InputTokenLimit"]
       70 CALL                             R1 1 -1
       71 RETURN                           R1 -1
       72 JUMPIFEQKS                       R0 K22 ["client_error"] ; [+3]
       74 JUMPIFNOTEQKS                    R0 K23 ["invalid_tool_call_json"] ; [+5]
       76 GETUPVAL                         R1 1
       77 LOADK                            R2 K24 ["ClientError"]
       78 CALL                             R1 1 -1
       79 RETURN                           R1 -1
       80 JUMPIFNOTEQKS                    R0 K25 ["prompt_moderated"] ; [+8]
       82 GETUPVAL                         R1 4
       83 LOADK                            R3 K26 ["Common"]
       84 LOADK                            R4 K27 ["ErrorModerated"]
       85 NAMECALL                         R1 R1 K28 ["getText"]
       87 CALL                             R1 3 -1
       88 RETURN                           R1 -1
       89 JUMPIFNOTEQKS                    R0 K29 ["token_limit"] ; [+5]
       91 GETUPVAL                         R1 1
       92 LOADK                            R2 K30 ["TokenLimit"]
       93 CALL                             R1 1 -1
       94 RETURN                           R1 -1
       95 JUMPIFNOTEQKS                    R0 K31 ["safety_filter"] ; [+5]
       97 GETUPVAL                         R1 1
       98 LOADK                            R2 K32 ["SafetyFilter"]
       99 CALL                             R1 1 -1
      100 RETURN                           R1 -1
      101 JUMPIFNOTEQKS                    R0 K33 ["max_tool_calls"] ; [+11]
      103 GETUPVAL                         R1 1
      104 LOADK                            R2 K34 ["MaxToolCalls"]
      105 DUPTABLE                         R3 K36 [{"count"}]
      106 GETUPVAL                         R4 3
      107 GETTABLEKS                       R4 R4 K37 ["FIntMCPAssistantMaxToolCalls"]
      109 SETTABLEKS                       R4 R3 K35 ["count"]
      111 CALL                             R1 2 -1
      112 RETURN                           R1 -1
      113 JUMPIFNOTEQKS                    R0 K38 ["input_disabled"] ; [+5]
      115 GETUPVAL                         R1 1
      116 LOADK                            R2 K39 ["ExternalError"]
      117 CALL                             R1 1 -1
      118 RETURN                           R1 -1
      119 JUMPIFNOTEQKS                    R0 K40 ["external_connection_unauthorized_error"] ; [+5]
      121 GETUPVAL                         R1 1
      122 LOADK                            R2 K41 ["ExternalAPIError"]
      123 CALL                             R1 1 -1
      124 RETURN                           R1 -1
      125 JUMPIFNOTEQKS                    R0 K42 ["free_trial_exhausted"] ; [+5]
      127 GETUPVAL                         R1 1
      128 LOADK                            R2 K43 ["FreeTrialExhausted"]
      129 CALL                             R1 1 -1
      130 RETURN                           R1 -1
      131 JUMPIFNOTEQKS                    R0 K44 ["daily_limit_reached"] ; [+5]
      133 GETUPVAL                         R1 1
      134 LOADK                            R2 K45 ["DailyLimitReached"]
      135 CALL                             R1 1 -1
      136 RETURN                           R1 -1
      137 JUMPIFNOTEQKS                    R0 K46 ["insufficient_robux_balance"] ; [+5]
      139 GETUPVAL                         R1 1
      140 LOADK                            R2 K47 ["InsufficientRobuxBalance"]
      141 CALL                             R1 1 -1
      142 RETURN                           R1 -1
      143 GETUPVAL                         R1 5
      144 GETTABLEKS                       R1 R1 K48 ["assertNever"]
      146 MOVE                             R2 R0
      147 CALL                             R1 1 -1
      148 RETURN                           R1 -1

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
       18 JUMPIFEQKS                       R0 K8 ["input_token_limit_error"] ; [+27]
       20 JUMPIFEQKS                       R0 K9 ["safety_filter"] ; [+25]
       22 JUMPIFEQKS                       R0 K10 ["quota_exceeded"] ; [+23]
       24 JUMPIFEQKS                       R0 K11 ["too_many_request"] ; [+21]
       26 JUMPIFEQKS                       R0 K12 ["request_failed"] ; [+19]
       28 JUMPIFEQKS                       R0 K13 ["client_error"] ; [+17]
       30 JUMPIFEQKS                       R0 K14 ["prompt_moderated"] ; [+15]
       32 JUMPIFEQKS                       R0 K15 ["external_connection_general_error"] ; [+13]
       34 JUMPIFEQKS                       R0 K16 ["external_connection_quota_exceeded_error"] ; [+11]
       36 JUMPIFEQKS                       R0 K17 ["external_connection_unauthorized_error"] ; [+9]
       38 JUMPIFEQKS                       R0 K18 ["invalid_tool_call_json"] ; [+7]
       40 JUMPIFEQKS                       R0 K19 ["free_trial_exhausted"] ; [+5]
       42 JUMPIFEQKS                       R0 K20 ["daily_limit_reached"] ; [+3]
       44 JUMPIFNOTEQKS                    R0 K21 ["insufficient_robux_balance"] ; [+3]
       46 LOADB                            R1 0
       47 RETURN                           R1 1
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K22 ["assertNever"]
       51 MOVE                             R2 R0
       52 CALL                             R1 1 -1
       53 RETURN                           R1 -1

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
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R10
      126 DUPCLOSURE                       R20 K35 [PROTO_2]
      127 CAPTURE                          VAL R10
      128 DUPCLOSURE                       R21 K36 [PROTO_3]
      129 CAPTURE                          VAL R11
      130 DUPCLOSURE                       R22 K37 [PROTO_4]
      131 CAPTURE                          VAL R3
      132 DUPCLOSURE                       R23 K38 [PROTO_5]
      133 CAPTURE                          VAL R3
      134 DUPCLOSURE                       R24 K39 [PROTO_19]
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R1
      150 DUPTABLE                         R25 K42 [{"toMeta", "fromMeta"}]
      151 DUPCLOSURE                       R26 K43 [PROTO_20]
      152 SETTABLEKS                       R26 R25 K40 ["toMeta"]
      154 DUPCLOSURE                       R26 K44 [PROTO_21]
      155 CAPTURE                          VAL R10
      156 SETTABLEKS                       R26 R25 K41 ["fromMeta"]
      158 DUPTABLE                         R26 K49 [{["Type"] = "Error", ["ContentWidget"], ["Serialization"]}]
      159 GETTABLEKS                       R27 R6 K50 ["memo"]
      161 MOVE                             R28 R24
      162 CALL                             R27 1 1
      163 SETTABLEKS                       R27 R26 K47 ["ContentWidget"]
      165 SETTABLEKS                       R25 R26 K48 ["Serialization"]
      167 RETURN                           R26 1
