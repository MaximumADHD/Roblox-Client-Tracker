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
       98 GETUPVAL                         R1 2
       99 GETTABLEKS                       R1 R1 K35 ["assertNever"]
      101 MOVE                             R2 R0
      102 CALL                             R1 1 -1
      103 RETURN                           R1 -1

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
       18 JUMPIFEQKS                       R0 K8 ["input_token_limit_error"] ; [+19]
       20 JUMPIFEQKS                       R0 K9 ["safety_filter"] ; [+17]
       22 JUMPIFEQKS                       R0 K10 ["quota_exceeded"] ; [+15]
       24 JUMPIFEQKS                       R0 K11 ["too_many_request"] ; [+13]
       26 JUMPIFEQKS                       R0 K12 ["request_failed"] ; [+11]
       28 JUMPIFEQKS                       R0 K13 ["client_error"] ; [+9]
       30 JUMPIFEQKS                       R0 K14 ["external_connection_general_error"] ; [+7]
       32 JUMPIFEQKS                       R0 K15 ["external_connection_quota_exceeded_error"] ; [+5]
       34 JUMPIFEQKS                       R0 K16 ["external_connection_unauthorized_error"] ; [+3]
       36 JUMPIFNOTEQKS                    R0 K17 ["invalid_tool_call_json"] ; [+3]
       38 LOADB                            R1 0
       39 RETURN                           R1 1
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K18 ["assertNever"]
       43 MOVE                             R2 R0
       44 CALL                             R1 1 -1
       45 RETURN                           R1 -1

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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["errorType"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["messageId"]
        5 SETTABLEKS                       R2 R1 K0 ["messageId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sendMessage"]
        3 DUPTABLE                         R1 K3 [{["text"] = "Continue"}]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["showApiKeys"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["errorType"]
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 DUPTABLE                         R0 K4 [{"Text", "OnClick", "Disabled"}]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K5 ["Continue"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["errorType"]
        3 LOADB                            R0 1
        4 JUMPIFEQKS                       R1 K1 ["external_connection_general_error"] ; [+11]
        6 LOADB                            R0 1
        7 JUMPIFEQKS                       R1 K2 ["external_connection_quota_exceeded_error"] ; [+8]
        9 LOADB                            R0 1
       10 JUMPIFEQKS                       R1 K3 ["external_connection_unauthorized_error"] ; [+5]
       12 JUMPIFEQKS                       R1 K4 ["quota_exceeded"] ; [+2]
       14 LOADB                            R0 0 +1
       15 LOADB                            R0 1
       16 JUMPIF                           R0 ; [+2]
       17 LOADNIL                          R0
       18 RETURN                           R0 1
       19 DUPTABLE                         R0 K9 [{["Text"], ["OnClick"], ["Disabled"] = False}]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K10 ["EditApiKeys"]
       23 SETTABLEKS                       R1 R0 K5 ["Text"]
       25 NEWCLOSURE                       R1 P0
       26 CAPTURE                          UPVAL U2
       27 SETTABLEKS                       R1 R0 K6 ["OnClick"]
       29 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["inputEnabled"]
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 3
       12 CALL                             R4 0 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R7 0 2
       21 GETTABLEKS                       R8 R0 K4 ["errorType"]
       23 GETUPVAL                         R9 5
       24 GETTABLEKS                       R9 R9 K5 ["locale"]
       26 SETLIST                          R7 R8 2 [1]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       32 DUPCLOSURE                       R7 K6 [PROTO_5]
       33 CAPTURE                          UPVAL U5
       34 NEWTABLE                         R8 0 1
       36 GETUPVAL                         R9 5
       37 GETTABLEKS                       R9 R9 K5 ["locale"]
       39 SETLIST                          R8 R9 1 [1]
       41 CALL                             R6 2 1
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       45 NEWCLOSURE                       R8 P2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R0
       48 NEWTABLE                         R9 0 2
       50 GETTABLEKS                       R10 R0 K8 ["messageId"]
       52 MOVE                             R11 R3
       53 SETLIST                          R9 R10 2 [1]
       55 CALL                             R7 2 1
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       59 NEWCLOSURE                       R9 P3
       60 CAPTURE                          VAL R0
       61 NEWTABLE                         R10 0 1
       63 GETTABLEKS                       R11 R0 K9 ["sendMessage"]
       65 SETLIST                          R10 R11 1 [1]
       67 CALL                             R8 2 1
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       71 NEWCLOSURE                       R10 P4
       72 CAPTURE                          VAL R4
       73 NEWTABLE                         R11 0 1
       75 GETTABLEKS                       R12 R4 K10 ["showApiKeys"]
       77 SETLIST                          R11 R12 1 [1]
       79 CALL                             R9 2 1
       80 GETUPVAL                         R10 0
       81 GETTABLEKS                       R10 R10 K3 ["useMemo"]
       83 NEWCLOSURE                       R11 P5
       84 CAPTURE                          UPVAL U6
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R2
       89 NEWTABLE                         R12 0 3
       91 MOVE                             R13 R2
       92 MOVE                             R14 R8
       93 GETTABLEKS                       R15 R6 K11 ["Continue"]
       95 SETLIST                          R12 R13 3 [1]
       97 CALL                             R10 2 1
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R11 R11 K3 ["useMemo"]
      101 NEWCLOSURE                       R12 P6
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R9
      105 NEWTABLE                         R13 0 3
      107 GETTABLEKS                       R14 R0 K4 ["errorType"]
      109 MOVE                             R15 R9
      110 GETTABLEKS                       R16 R6 K12 ["EditApiKeys"]
      112 SETLIST                          R13 R14 3 [1]
      114 CALL                             R11 2 1
      115 GETUPVAL                         R12 7
      116 CALL                             R12 0 1
      117 GETUPVAL                         R13 8
      118 GETUPVAL                         R14 9
      119 DUPTABLE                         R15 K16 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
      120 GETTABLEKS                       R16 R0 K15 ["LayoutOrder"]
      122 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
      124 DUPTABLE                         R16 K19 [{"AlertContent", "DialogWidget"}]
      125 GETUPVAL                         R17 8
      126 GETUPVAL                         R18 10
      127 DUPTABLE                         R19 K24 [{"LayoutOrder", "Text", "ButtonContent", "SecondaryButtonContent", "OnClose"}]
      128 MOVE                             R20 R12
      129 CALL                             R20 0 1
      130 SETTABLEKS                       R20 R19 K15 ["LayoutOrder"]
      132 SETTABLEKS                       R5 R19 K20 ["Text"]
      134 SETTABLEKS                       R10 R19 K21 ["ButtonContent"]
      136 SETTABLEKS                       R11 R19 K22 ["SecondaryButtonContent"]
      138 SETTABLEKS                       R7 R19 K23 ["OnClose"]
      140 CALL                             R17 2 1
      141 SETTABLEKS                       R17 R16 K17 ["AlertContent"]
      143 GETTABLEKS                       R19 R0 K4 ["errorType"]
      145 LOADB                            R18 1
      146 JUMPIFEQKS                       R19 K25 ["external_connection_general_error"] ; [+11]
      148 LOADB                            R18 1
      149 JUMPIFEQKS                       R19 K26 ["external_connection_quota_exceeded_error"] ; [+8]
      151 LOADB                            R18 1
      152 JUMPIFEQKS                       R19 K27 ["external_connection_unauthorized_error"] ; [+5]
      154 JUMPIFEQKS                       R19 K28 ["quota_exceeded"] ; [+2]
      156 LOADB                            R18 0 +1
      157 LOADB                            R18 1
      158 JUMPIFNOT                        R18 ; [+3]
      159 GETTABLEKS                       R17 R4 K29 ["root"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R17
      163 SETTABLEKS                       R17 R16 K18 ["DialogWidget"]
      165 CALL                             R13 3 -1
      166 RETURN                           R13 -1

PROTO_14:
        0 DUPTABLE                         R1 K2 [{"errorType", "sourceMessageGuid"}]
        1 GETTABLEKS                       R2 R0 K0 ["errorType"]
        3 SETTABLEKS                       R2 R1 K0 ["errorType"]
        5 GETTABLEKS                       R2 R0 K1 ["sourceMessageGuid"]
        7 SETTABLEKS                       R2 R1 K1 ["sourceMessageGuid"]
        9 RETURN                           R1 1

PROTO_15:
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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K12 ["InputStateContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K9 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Util"]
       53 GETTABLEKS                       R8 R8 K16 ["Serializer"]
       55 GETTABLEKS                       R8 R8 K17 ["SerializerTypes"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Resources"]
       62 GETTABLEKS                       R9 R9 K19 ["Localization"]
       64 GETTABLEKS                       R9 R9 K20 ["Translator"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K21 ["Types"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K22 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K23 ["useRemoveMessage"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K22 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K24 ["useSettingsDialog"]
       85 CALL                             R11 1 1
       86 GETTABLEKS                       R12 R3 K25 ["View"]
       88 GETTABLEKS                       R13 R6 K26 ["createNextOrder"]
       90 GETTABLEKS                       R14 R5 K27 ["createElement"]
       92 DUPCLOSURE                       R15 K28 [PROTO_0]
       93 CAPTURE                          VAL R8
       94 DUPCLOSURE                       R16 K29 [PROTO_1]
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R9
       98 DUPCLOSURE                       R17 K30 [PROTO_2]
       99 CAPTURE                          VAL R9
      100 DUPCLOSURE                       R18 K31 [PROTO_3]
      101 DUPCLOSURE                       R19 K32 [PROTO_13]
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R16
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R1
      113 DUPTABLE                         R20 K35 [{"toMeta", "fromMeta"}]
      114 DUPCLOSURE                       R21 K36 [PROTO_14]
      115 SETTABLEKS                       R21 R20 K33 ["toMeta"]
      117 DUPCLOSURE                       R21 K37 [PROTO_15]
      118 CAPTURE                          VAL R9
      119 SETTABLEKS                       R21 R20 K34 ["fromMeta"]
      121 DUPTABLE                         R21 K42 [{["Type"] = "Error", ["ContentWidget"], ["Serialization"]}]
      122 GETTABLEKS                       R22 R5 K43 ["memo"]
      124 MOVE                             R23 R19
      125 CALL                             R22 1 1
      126 SETTABLEKS                       R22 R21 K40 ["ContentWidget"]
      128 SETTABLEKS                       R20 R21 K41 ["Serialization"]
      130 RETURN                           R21 1
