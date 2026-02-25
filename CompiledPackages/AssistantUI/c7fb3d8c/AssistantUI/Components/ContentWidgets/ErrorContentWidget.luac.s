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
        6 LOADK                            R2 K1 ["QuotaErrorAPIKey"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 1
       10 LOADK                            R2 K2 ["QuotaErrorTwo"]
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
       55 JUMPIFNOTEQKS                    R0 K18 ["client_error"] ; [+5]
       57 GETUPVAL                         R1 1
       58 LOADK                            R2 K19 ["ClientError"]
       59 CALL                             R1 1 -1
       60 RETURN                           R1 -1
       61 JUMPIFNOTEQKS                    R0 K20 ["token_limit"] ; [+5]
       63 GETUPVAL                         R1 1
       64 LOADK                            R2 K21 ["TokenLimit"]
       65 CALL                             R1 1 -1
       66 RETURN                           R1 -1
       67 JUMPIFNOTEQKS                    R0 K22 ["safety_filter"] ; [+5]
       69 GETUPVAL                         R1 1
       70 LOADK                            R2 K23 ["SafetyFilter"]
       71 CALL                             R1 1 -1
       72 RETURN                           R1 -1
       73 JUMPIFNOTEQKS                    R0 K24 ["max_tool_calls"] ; [+10]
       75 GETUPVAL                         R1 1
       76 LOADK                            R2 K25 ["MaxToolCalls"]
       77 DUPTABLE                         R3 K27 [{"count"}]
       78 GETUPVAL                         R4 2
       79 CALL                             R4 0 1
       80 SETTABLEKS                       R4 R3 K26 ["count"]
       82 CALL                             R1 2 -1
       83 RETURN                           R1 -1
       84 JUMPIFNOTEQKS                    R0 K28 ["input_disabled"] ; [+5]
       86 GETUPVAL                         R1 1
       87 LOADK                            R2 K29 ["ExternalError"]
       88 CALL                             R1 1 -1
       89 RETURN                           R1 -1
       90 JUMPIFNOTEQKS                    R0 K30 ["external_connection_unauthorized_error"] ; [+13]
       92 GETUPVAL                         R2 0
       93 CALL                             R2 0 1
       94 FASTCALL2K                       ASSERT R2 K31 ; [+4]
       96 LOADK                            R3 K31 ["External connection unauthorized error should only be used when flag is on"]
       97 GETIMPORT                        R1 K33 [assert]
       99 CALL                             R1 2 0
      100 GETUPVAL                         R1 1
      101 LOADK                            R2 K34 ["ExternalAPIError"]
      102 CALL                             R1 1 -1
      103 RETURN                           R1 -1
      104 GETUPVAL                         R2 3
      105 GETTABLEKS                       R1 R2 K35 ["assertNever"]
      107 MOVE                             R2 R0
      108 CALL                             R1 1 -1
      109 RETURN                           R1 -1

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
       18 JUMPIFEQKS                       R0 K8 ["safety_filter"] ; [+15]
       20 JUMPIFEQKS                       R0 K9 ["quota_exceeded"] ; [+13]
       22 JUMPIFEQKS                       R0 K10 ["too_many_request"] ; [+11]
       24 JUMPIFEQKS                       R0 K11 ["request_failed"] ; [+9]
       26 JUMPIFEQKS                       R0 K12 ["client_error"] ; [+7]
       28 JUMPIFEQKS                       R0 K13 ["external_connection_general_error"] ; [+5]
       30 JUMPIFEQKS                       R0 K14 ["external_connection_quota_exceeded_error"] ; [+3]
       32 JUMPIFNOTEQKS                    R0 K15 ["external_connection_unauthorized_error"] ; [+3]
       34 LOADB                            R1 0
       35 RETURN                           R1 1
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R1 R2 K16 ["assertNever"]
       39 MOVE                             R2 R0
       40 CALL                             R1 1 -1
       41 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["errorType"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 DUPTABLE                         R0 K3 [{"Title", "Continue", "EditApiKeys"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["ErrorMessage"]
        3 LOADK                            R4 K0 ["Title"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["ErrorMessage"]
       11 LOADK                            R4 K1 ["Continue"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Continue"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K6 ["SettingsDialog"]
       19 LOADK                            R4 K2 ["EditApiKeys"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["EditApiKeys"]
       25 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"messageId"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["messageId"]
        5 SETTABLEKS                       R2 R1 K0 ["messageId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["sendMessage"]
        3 DUPTABLE                         R1 K2 [{"text"}]
        4 LOADK                            R2 K3 ["Continue"]
        5 SETTABLEKS                       R2 R1 K1 ["text"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["showApiKeys"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["errorType"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 DUPTABLE                         R0 K4 [{"Text", "OnClick", "Disabled"}]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K5 ["Continue"]
       12 SETTABLEKS                       R1 R0 K1 ["Text"]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          UPVAL U3
       16 SETTABLEKS                       R1 R0 K2 ["OnClick"]
       18 GETUPVAL                         R2 4
       19 NOT                              R1 R2
       20 SETTABLEKS                       R1 R0 K3 ["Disabled"]
       22 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["errorType"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R0 0
        7 JUMP                             ; [+13]
        8 LOADB                            R0 1
        9 JUMPIFEQKS                       R1 K1 ["external_connection_general_error"] ; [+11]
       11 LOADB                            R0 1
       12 JUMPIFEQKS                       R1 K2 ["external_connection_quota_exceeded_error"] ; [+8]
       14 LOADB                            R0 1
       15 JUMPIFEQKS                       R1 K3 ["external_connection_unauthorized_error"] ; [+5]
       17 JUMPIFEQKS                       R1 K4 ["quota_exceeded"] ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 JUMPIF                           R0 ; [+2]
       22 LOADNIL                          R0
       23 RETURN                           R0 1
       24 DUPTABLE                         R0 K8 [{"Text", "OnClick", "Disabled"}]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K9 ["EditApiKeys"]
       28 SETTABLEKS                       R1 R0 K5 ["Text"]
       30 NEWCLOSURE                       R1 P0
       31 CAPTURE                          UPVAL U3
       32 SETTABLEKS                       R1 R0 K6 ["OnClick"]
       34 LOADB                            R1 0
       35 SETTABLEKS                       R1 R0 K7 ["Disabled"]
       37 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["inputEnabled"]
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 GETUPVAL                         R5 3
       12 CALL                             R5 0 1
       13 JUMPIFNOT                        R5 ; [+3]
       14 GETUPVAL                         R4 4
       15 CALL                             R4 0 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R4
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K3 ["useMemo"]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R7 0 2
       26 GETTABLEKS                       R8 R0 K4 ["errorType"]
       28 GETUPVAL                         R10 6
       29 GETTABLEKS                       R9 R10 K5 ["locale"]
       31 SETLIST                          R7 R8 2 [1]
       33 CALL                             R5 2 1
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K3 ["useMemo"]
       37 DUPCLOSURE                       R7 K6 [PROTO_5]
       38 CAPTURE                          UPVAL U6
       39 NEWTABLE                         R8 0 1
       41 GETUPVAL                         R10 6
       42 GETTABLEKS                       R9 R10 K5 ["locale"]
       44 SETLIST                          R8 R9 1 [1]
       46 CALL                             R6 2 1
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R7 R8 K7 ["useCallback"]
       50 NEWCLOSURE                       R8 P2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R9 0 2
       55 GETTABLEKS                       R10 R0 K8 ["messageId"]
       57 MOVE                             R11 R3
       58 SETLIST                          R9 R10 2 [1]
       60 CALL                             R7 2 1
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R8 R9 K7 ["useCallback"]
       64 NEWCLOSURE                       R9 P3
       65 CAPTURE                          VAL R0
       66 NEWTABLE                         R10 0 1
       68 GETTABLEKS                       R11 R0 K9 ["sendMessage"]
       70 SETLIST                          R10 R11 1 [1]
       72 CALL                             R8 2 1
       73 GETUPVAL                         R10 3
       74 CALL                             R10 0 1
       75 JUMPIFNOT                        R10 ; [+13]
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R9 R10 K7 ["useCallback"]
       79 NEWCLOSURE                       R10 P4
       80 CAPTURE                          VAL R4
       81 NEWTABLE                         R11 0 1
       83 GETTABLEKS                       R12 R4 K10 ["showApiKeys"]
       85 SETLIST                          R11 R12 1 [1]
       87 CALL                             R9 2 1
       88 JUMP                             ; [+1]
       89 LOADNIL                          R9
       90 GETUPVAL                         R11 0
       91 GETTABLEKS                       R10 R11 K3 ["useMemo"]
       93 NEWCLOSURE                       R11 P5
       94 CAPTURE                          UPVAL U7
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R2
       99 NEWTABLE                         R12 0 3
      101 MOVE                             R13 R2
      102 MOVE                             R14 R8
      103 GETTABLEKS                       R15 R6 K11 ["Continue"]
      105 SETLIST                          R12 R13 3 [1]
      107 CALL                             R10 2 1
      108 GETUPVAL                         R12 0
      109 GETTABLEKS                       R11 R12 K3 ["useMemo"]
      111 NEWCLOSURE                       R12 P6
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U3
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R9
      116 NEWTABLE                         R13 0 3
      118 GETTABLEKS                       R14 R0 K4 ["errorType"]
      120 MOVE                             R15 R9
      121 GETTABLEKS                       R16 R6 K12 ["EditApiKeys"]
      123 SETLIST                          R13 R14 3 [1]
      125 CALL                             R11 2 1
      126 GETUPVAL                         R12 8
      127 CALL                             R12 0 1
      128 GETUPVAL                         R13 9
      129 GETUPVAL                         R14 10
      130 DUPTABLE                         R15 K15 [{"tag", "LayoutOrder"}]
      131 LOADK                            R16 K16 ["auto-xy"]
      132 SETTABLEKS                       R16 R15 K13 ["tag"]
      134 GETTABLEKS                       R16 R0 K14 ["LayoutOrder"]
      136 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
      138 DUPTABLE                         R16 K19 [{"AlertContent", "DialogWidget"}]
      139 GETUPVAL                         R17 9
      140 GETUPVAL                         R18 11
      141 DUPTABLE                         R19 K24 [{"LayoutOrder", "Text", "ButtonContent", "SecondaryButtonContent", "OnClose"}]
      142 MOVE                             R20 R12
      143 CALL                             R20 0 1
      144 SETTABLEKS                       R20 R19 K14 ["LayoutOrder"]
      146 SETTABLEKS                       R5 R19 K20 ["Text"]
      148 SETTABLEKS                       R10 R19 K21 ["ButtonContent"]
      150 SETTABLEKS                       R11 R19 K22 ["SecondaryButtonContent"]
      152 SETTABLEKS                       R7 R19 K23 ["OnClose"]
      154 CALL                             R17 2 1
      155 SETTABLEKS                       R17 R16 K17 ["AlertContent"]
      157 GETTABLEKS                       R19 R0 K4 ["errorType"]
      159 GETUPVAL                         R20 3
      160 CALL                             R20 0 1
      161 JUMPIF                           R20 ; [+2]
      162 LOADB                            R18 0
      163 JUMP                             ; [+13]
      164 LOADB                            R18 1
      165 JUMPIFEQKS                       R19 K25 ["external_connection_general_error"] ; [+11]
      167 LOADB                            R18 1
      168 JUMPIFEQKS                       R19 K26 ["external_connection_quota_exceeded_error"] ; [+8]
      170 LOADB                            R18 1
      171 JUMPIFEQKS                       R19 K27 ["external_connection_unauthorized_error"] ; [+5]
      173 JUMPIFEQKS                       R19 K28 ["quota_exceeded"] ; [+2]
      175 LOADB                            R18 0 +1
      176 LOADB                            R18 1
      177 JUMPIFNOT                        R18 ; [+3]
      178 GETTABLEKS                       R17 R4 K29 ["root"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R17
      182 SETTABLEKS                       R17 R16 K18 ["DialogWidget"]
      184 CALL                             R13 3 -1
      185 RETURN                           R13 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"type", "errorType", "sourceMessageGuid"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["errorType"]
       15 SETTABLEKS                       R2 R1 K4 ["errorType"]
       17 GETTABLEKS                       R2 R0 K5 ["sourceMessageGuid"]
       19 SETTABLEKS                       R2 R1 K5 ["sourceMessageGuid"]
       21 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"type", "errorType", "sourceMessageGuid"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETTABLEKS                       R2 R0 K4 ["errorType"]
       15 SETTABLEKS                       R2 R1 K4 ["errorType"]
       17 GETTABLEKS                       R2 R0 K5 ["sourceMessageGuid"]
       19 SETTABLEKS                       R2 R1 K5 ["sourceMessageGuid"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["AlertContent"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["ContentWidgetRegistry"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K6 ["Components"]
       32 GETTABLEKS                       R6 R7 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R6 K13 ["InputStateContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K10 ["Parent"]
       41 GETTABLEKS                       R6 R7 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K10 ["Parent"]
       48 GETTABLEKS                       R7 R8 K15 ["ReactUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K16 ["Resources"]
       55 GETTABLEKS                       R9 R10 K17 ["Localization"]
       57 GETTABLEKS                       R8 R9 K18 ["Translator"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K19 ["Types"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K20 ["Hooks"]
       69 GETTABLEKS                       R10 R11 K21 ["useRemoveMessage"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K20 ["Hooks"]
       76 GETTABLEKS                       R11 R12 K22 ["useSettingsDialog"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K23 ["Flags"]
       83 GETTABLEKS                       R12 R13 K24 ["FFlagAssistantPersistConversations"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R14 R0 K23 ["Flags"]
       90 GETTABLEKS                       R13 R14 K25 ["FFlagAssistantRegisterWidgetsThroughTools"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R15 R0 K23 ["Flags"]
       97 GETTABLEKS                       R14 R15 K26 ["FFlagMCPAssistantExternalAPIKey"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R16 R0 K23 ["Flags"]
      104 GETTABLEKS                       R15 R16 K27 ["FIntMCPAssistantMaxToolCalls"]
      106 CALL                             R14 1 1
      107 GETTABLEKS                       R15 R3 K28 ["View"]
      109 GETTABLEKS                       R16 R6 K29 ["createNextOrder"]
      111 GETTABLEKS                       R17 R5 K30 ["createElement"]
      113 DUPCLOSURE                       R18 K31 [PROTO_0]
      114 CAPTURE                          VAL R7
      115 DUPCLOSURE                       R19 K32 [PROTO_1]
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R8
      120 DUPCLOSURE                       R20 K33 [PROTO_2]
      121 CAPTURE                          VAL R8
      122 DUPCLOSURE                       R21 K34 [PROTO_3]
      123 CAPTURE                          VAL R13
      124 DUPCLOSURE                       R22 K35 [PROTO_13]
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R1
      137 DUPCLOSURE                       R23 K36 [PROTO_14]
      138 CAPTURE                          VAL R11
      139 DUPCLOSURE                       R24 K37 [PROTO_15]
      140 CAPTURE                          VAL R11
      141 DUPTABLE                         R25 K41 [{"Type", "ContentWidget", "Serialization"}]
      142 LOADK                            R26 K42 ["Error"]
      143 SETTABLEKS                       R26 R25 K38 ["Type"]
      145 GETTABLEKS                       R26 R5 K43 ["memo"]
      147 MOVE                             R27 R22
      148 CALL                             R26 1 1
      149 SETTABLEKS                       R26 R25 K39 ["ContentWidget"]
      151 DUPTABLE                         R26 K46 [{"serialize", "deserialize"}]
      152 SETTABLEKS                       R23 R26 K44 ["serialize"]
      154 SETTABLEKS                       R24 R26 K45 ["deserialize"]
      156 SETTABLEKS                       R26 R25 K40 ["Serialization"]
      158 MOVE                             R26 R12
      159 CALL                             R26 0 1
      160 JUMPIF                           R26 ; [+7]
      161 GETTABLEKS                       R26 R2 K47 ["registerWidget_DEPRECATED"]
      163 GETTABLEKS                       R27 R25 K38 ["Type"]
      165 GETTABLEKS                       R28 R25 K39 ["ContentWidget"]
      167 CALL                             R26 2 0
      168 RETURN                           R25 1
