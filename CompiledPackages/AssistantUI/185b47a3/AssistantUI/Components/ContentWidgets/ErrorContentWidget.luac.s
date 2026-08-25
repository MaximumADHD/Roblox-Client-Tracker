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
        0 JUMPIFNOTEQKS                    R0 K0 ["quota_exceeded"] ; [+5]
        2 GETUPVAL                         R1 0
        3 LOADK                            R2 K1 ["QuotaErrorAPIKey"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1
        6 JUMPIFNOTEQKS                    R0 K2 ["too_many_request"] ; [+5]
        8 GETUPVAL                         R1 0
        9 LOADK                            R2 K3 ["TooManyRequest"]
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1
       12 JUMPIFNOTEQKS                    R0 K4 ["request_failed"] ; [+5]
       14 GETUPVAL                         R1 0
       15 LOADK                            R2 K5 ["ConnectionLostOne"]
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1
       18 JUMPIFNOTEQKS                    R0 K6 ["timeout"] ; [+5]
       20 GETUPVAL                         R1 0
       21 LOADK                            R2 K7 ["Timeout"]
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1
       24 JUMPIFNOTEQKS                    R0 K8 ["rate_limit_error"] ; [+5]
       26 GETUPVAL                         R1 0
       27 LOADK                            R2 K9 ["ServersAtMaxCapacity"]
       28 CALL                             R1 1 -1
       29 RETURN                           R1 -1
       30 JUMPIFNOTEQKS                    R0 K10 ["external_connection_quota_exceeded_error"] ; [+5]
       32 GETUPVAL                         R1 0
       33 LOADK                            R2 K11 ["ExternalQuotaExceeded"]
       34 CALL                             R1 1 -1
       35 RETURN                           R1 -1
       36 JUMPIFEQKS                       R0 K12 ["api_connection_error"] ; [+7]
       38 JUMPIFEQKS                       R0 K13 ["api_status_error"] ; [+5]
       40 JUMPIFEQKS                       R0 K14 ["generic_error"] ; [+3]
       42 JUMPIFNOTEQKS                    R0 K15 ["external_connection_general_error"] ; [+5]
       44 GETUPVAL                         R1 0
       45 LOADK                            R2 K16 ["GeneralError"]
       46 CALL                             R1 1 -1
       47 RETURN                           R1 -1
       48 JUMPIFNOTEQKS                    R0 K17 ["input_token_limit_error"] ; [+5]
       50 GETUPVAL                         R1 0
       51 LOADK                            R2 K18 ["InputTokenLimit"]
       52 CALL                             R1 1 -1
       53 RETURN                           R1 -1
       54 JUMPIFEQKS                       R0 K19 ["client_error"] ; [+3]
       56 JUMPIFNOTEQKS                    R0 K20 ["invalid_tool_call_json"] ; [+5]
       58 GETUPVAL                         R1 0
       59 LOADK                            R2 K21 ["ClientError"]
       60 CALL                             R1 1 -1
       61 RETURN                           R1 -1
       62 JUMPIFNOTEQKS                    R0 K22 ["token_limit"] ; [+5]
       64 GETUPVAL                         R1 0
       65 LOADK                            R2 K23 ["TokenLimit"]
       66 CALL                             R1 1 -1
       67 RETURN                           R1 -1
       68 JUMPIFNOTEQKS                    R0 K24 ["safety_filter"] ; [+5]
       70 GETUPVAL                         R1 0
       71 LOADK                            R2 K25 ["SafetyFilter"]
       72 CALL                             R1 1 -1
       73 RETURN                           R1 -1
       74 JUMPIFNOTEQKS                    R0 K26 ["max_tool_calls"] ; [+11]
       76 GETUPVAL                         R1 0
       77 LOADK                            R2 K27 ["MaxToolCalls"]
       78 DUPTABLE                         R3 K29 [{"count"}]
       79 GETUPVAL                         R4 1
       80 GETTABLEKS                       R4 R4 K30 ["FIntMCPAssistantMaxToolCalls"]
       82 SETTABLEKS                       R4 R3 K28 ["count"]
       84 CALL                             R1 2 -1
       85 RETURN                           R1 -1
       86 JUMPIFNOTEQKS                    R0 K31 ["input_disabled"] ; [+5]
       88 GETUPVAL                         R1 0
       89 LOADK                            R2 K32 ["ExternalError"]
       90 CALL                             R1 1 -1
       91 RETURN                           R1 -1
       92 JUMPIFNOTEQKS                    R0 K33 ["external_connection_unauthorized_error"] ; [+5]
       94 GETUPVAL                         R1 0
       95 LOADK                            R2 K34 ["ExternalAPIError"]
       96 CALL                             R1 1 -1
       97 RETURN                           R1 -1
       98 JUMPIFNOTEQKS                    R0 K35 ["free_trial_exhausted"] ; [+5]
      100 GETUPVAL                         R1 0
      101 LOADK                            R2 K36 ["FreeTrialExhausted"]
      102 CALL                             R1 1 -1
      103 RETURN                           R1 -1
      104 JUMPIFNOTEQKS                    R0 K37 ["daily_limit_reached"] ; [+5]
      106 GETUPVAL                         R1 0
      107 LOADK                            R2 K38 ["DailyLimitReached"]
      108 CALL                             R1 1 -1
      109 RETURN                           R1 -1
      110 JUMPIFNOTEQKS                    R0 K39 ["insufficient_robux_balance"] ; [+5]
      112 GETUPVAL                         R1 0
      113 LOADK                            R2 K40 ["InsufficientRobuxBalance"]
      114 CALL                             R1 1 -1
      115 RETURN                           R1 -1
      116 GETUPVAL                         R1 2
      117 GETTABLEKS                       R1 R1 K41 ["assertNever"]
      119 MOVE                             R2 R0
      120 CALL                             R1 1 -1
      121 RETURN                           R1 -1

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
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 ["external_connection_general_error"] ; [+11]
        3 LOADB                            R1 1
        4 JUMPIFEQKS                       R0 K1 ["external_connection_quota_exceeded_error"] ; [+8]
        6 LOADB                            R1 1
        7 JUMPIFEQKS                       R0 K2 ["external_connection_unauthorized_error"] ; [+5]
        9 JUMPIFEQKS                       R0 K3 ["quota_exceeded"] ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_4:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 ["free_trial_exhausted"] ; [+5]
        3 JUMPIFEQKS                       R0 K1 ["daily_limit_reached"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_5:
        0 JUMPIFEQKS                       R0 K0 ["insufficient_robux_balance"] ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

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
       42 JUMPIFNOT                        R2 ; [+7]
       43 GETUPVAL                         R1 0
       44 LOADK                            R3 K10 ["CreditMetering"]
       45 LOADK                            R4 K4 ["BuyRobux"]
       46 NAMECALL                         R1 R1 K7 ["getText"]
       48 CALL                             R1 3 1
       49 JUMPIF                           R1 ; [+1]
       50 LOADK                            R1 K11 [""]
       51 SETTABLEKS                       R1 R0 K4 ["BuyRobux"]
       53 RETURN                           R0 1

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
        3 JUMPIFNOT                        R0 ; [+22]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["errorType"]
        7 LOADB                            R0 1
        8 JUMPIFEQKS                       R1 K2 ["free_trial_exhausted"] ; [+5]
       10 JUMPIFEQKS                       R1 K3 ["daily_limit_reached"] ; [+2]
       12 LOADB                            R0 0 +1
       13 LOADB                            R0 1
       14 JUMPIFNOT                        R0 ; [+11]
       15 DUPTABLE                         R0 K8 [{["Text"], ["OnClick"], ["Disabled"] = False}]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K9 ["GoToSettings"]
       19 SETTABLEKS                       R1 R0 K4 ["Text"]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          UPVAL U3
       23 SETTABLEKS                       R1 R0 K5 ["OnClick"]
       25 RETURN                           R0 1
       26 GETUPVAL                         R0 4
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K1 ["errorType"]
       30 CALL                             R0 1 1
       31 JUMPIF                           R0 ; [+2]
       32 LOADNIL                          R0
       33 RETURN                           R0 1
       34 DUPTABLE                         R0 K10 [{"Text", "OnClick", "Disabled"}]
       35 GETUPVAL                         R1 2
       36 GETTABLEKS                       R1 R1 K11 ["Continue"]
       38 SETTABLEKS                       R1 R0 K4 ["Text"]
       40 NEWCLOSURE                       R1 P1
       41 CAPTURE                          UPVAL U5
       42 SETTABLEKS                       R1 R0 K5 ["OnClick"]
       44 GETUPVAL                         R2 6
       45 NOT                              R1 R2
       46 SETTABLEKS                       R1 R0 K6 ["Disabled"]
       48 RETURN                           R0 1

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
        3 JUMPIFNOT                        R0 ; [+19]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["errorType"]
        7 JUMPIFEQKS                       R1 K2 ["insufficient_robux_balance"] ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 JUMPIFNOT                        R0 ; [+11]
       12 DUPTABLE                         R0 K7 [{["Text"], ["OnClick"], ["Disabled"] = False}]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K8 ["BuyRobux"]
       16 SETTABLEKS                       R1 R0 K3 ["Text"]
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          UPVAL U3
       20 SETTABLEKS                       R1 R0 K4 ["OnClick"]
       22 RETURN                           R0 1
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K1 ["errorType"]
       26 LOADB                            R0 1
       27 JUMPIFEQKS                       R1 K9 ["external_connection_general_error"] ; [+11]
       29 LOADB                            R0 1
       30 JUMPIFEQKS                       R1 K10 ["external_connection_quota_exceeded_error"] ; [+8]
       32 LOADB                            R0 1
       33 JUMPIFEQKS                       R1 K11 ["external_connection_unauthorized_error"] ; [+5]
       35 JUMPIFEQKS                       R1 K12 ["quota_exceeded"] ; [+2]
       37 LOADB                            R0 0 +1
       38 LOADB                            R0 1
       39 JUMPIF                           R0 ; [+2]
       40 LOADNIL                          R0
       41 RETURN                           R0 1
       42 DUPTABLE                         R0 K7 [{["Text"], ["OnClick"], ["Disabled"] = False}]
       43 GETUPVAL                         R1 2
       44 GETTABLEKS                       R1 R1 K13 ["EditApiKeys"]
       46 SETTABLEKS                       R1 R0 K3 ["Text"]
       48 NEWCLOSURE                       R1 P1
       49 CAPTURE                          UPVAL U4
       50 SETTABLEKS                       R1 R0 K4 ["OnClick"]
       52 RETURN                           R0 1

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
      192 LOADB                            R21 1
      193 JUMPIFEQKS                       R22 K29 ["external_connection_general_error"] ; [+11]
      195 LOADB                            R21 1
      196 JUMPIFEQKS                       R22 K30 ["external_connection_quota_exceeded_error"] ; [+8]
      198 LOADB                            R21 1
      199 JUMPIFEQKS                       R22 K31 ["external_connection_unauthorized_error"] ; [+5]
      201 JUMPIFEQKS                       R22 K32 ["quota_exceeded"] ; [+2]
      203 LOADB                            R21 0 +1
      204 LOADB                            R21 1
      205 JUMPIF                           R21 ; [+21]
      206 GETUPVAL                         R21 7
      207 GETTABLEKS                       R21 R21 K33 ["FFlagAssistantCreditMetering"]
      209 JUMPIFNOT                        R21 ; [+20]
      210 GETTABLEKS                       R22 R0 K4 ["errorType"]
      212 LOADB                            R21 1
      213 JUMPIFEQKS                       R22 K34 ["free_trial_exhausted"] ; [+5]
      215 JUMPIFEQKS                       R22 K35 ["daily_limit_reached"] ; [+2]
      217 LOADB                            R21 0 +1
      218 LOADB                            R21 1
      219 JUMPIF                           R21 ; [+7]
      220 GETTABLEKS                       R22 R0 K4 ["errorType"]
      222 JUMPIFEQKS                       R22 K36 ["insufficient_robux_balance"] ; [+2]
      224 LOADB                            R21 0 +1
      225 LOADB                            R21 1
      226 JUMPIFNOT                        R21 ; [+3]
      227 GETTABLEKS                       R20 R5 K37 ["root"]
      229 JUMP                             ; [+1]
      230 LOADNIL                          R20
      231 SETTABLEKS                       R20 R19 K22 ["DialogWidget"]
      233 CALL                             R16 3 -1
      234 RETURN                           R16 -1

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
      104 CAPTURE                          VAL R16
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R10
      107 DUPCLOSURE                       R18 K31 [PROTO_2]
      108 CAPTURE                          VAL R10
      109 DUPCLOSURE                       R19 K32 [PROTO_3]
      110 DUPCLOSURE                       R20 K33 [PROTO_4]
      111 DUPCLOSURE                       R21 K34 [PROTO_5]
      112 DUPCLOSURE                       R22 K35 [PROTO_19]
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R13
      125 CAPTURE                          VAL R1
      126 DUPTABLE                         R23 K38 [{"toMeta", "fromMeta"}]
      127 DUPCLOSURE                       R24 K39 [PROTO_20]
      128 SETTABLEKS                       R24 R23 K36 ["toMeta"]
      130 DUPCLOSURE                       R24 K40 [PROTO_21]
      131 CAPTURE                          VAL R10
      132 SETTABLEKS                       R24 R23 K37 ["fromMeta"]
      134 DUPTABLE                         R24 K45 [{["Type"] = "Error", ["ContentWidget"], ["Serialization"]}]
      135 GETTABLEKS                       R25 R6 K46 ["memo"]
      137 MOVE                             R26 R22
      138 CALL                             R25 1 1
      139 SETTABLEKS                       R25 R24 K43 ["ContentWidget"]
      141 SETTABLEKS                       R23 R24 K44 ["Serialization"]
      143 RETURN                           R24 1
