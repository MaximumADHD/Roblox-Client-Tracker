PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMeteringTelemetry"]
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R0 ; [+3]
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 RETURN                           R1 2
       11 GETTABLEKS                       R2 R0 K1 ["additionalUsageEnabled"]
       13 JUMPIFEQKB                       R2 TRUE ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 GETTABLEKS                       R3 R0 K2 ["dailyLimitSet"]
       19 JUMPIFEQKB                       R3 TRUE ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R1 2

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R7 R0
        7 MOVE                             R8 R6
        8 CALL                             R7 1 1
        9 JUMPIFNOT                        R7 ; [+3]
       10 JUMPIFEQKS                       R7 K0 [""] ; [+2]
       12 SETTABLE                         R7 R1 R6
       13 FORGLOOP                         R2 2 ; [-8]
       15 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+21]
        7 GETIMPORT                        R1 K4 [pcall]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K5 ["JSONEncode"]
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R0
       14 CALL                             R1 3 2
       15 JUMPIFNOT                        R1 ; [+1]
       16 RETURN                           R2 1
       17 GETIMPORT                        R3 K4 [pcall]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K6 ["pretty"]
       22 MOVE                             R5 R0
       23 DUPTABLE                         R6 K9 [{["depth"] = 5}]
       24 CALL                             R3 3 2
       25 JUMPIFNOT                        R3 ; [+1]
       26 RETURN                           R4 1
       27 FASTCALL1                        TOSTRING R0 ; [+3]
       28 MOVE                             R2 R0
       29 GETIMPORT                        R1 K11 [tostring]
       31 CALL                             R1 1 1
       32 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantPromptModeratedError"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFEQKS                       R1 K3 ["table"] ; [+3]
       11 LOADK                            R1 K4 ["client_error"]
       12 RETURN                           R1 1
       13 GETTABLEKS                       R1 R0 K5 ["code"]
       15 JUMPIFNOTEQKN                    R1 K6 [-32001] ; [+3]
       17 LOADK                            R1 K7 ["prompt_moderated"]
       18 RETURN                           R1 1
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K8 ["FStringAssistantModerateErrorMsg"]
       22 JUMPIFEQKS                       R1 K9 [""] ; [+7]
       24 GETTABLEKS                       R2 R0 K10 ["message"]
       26 JUMPIFNOTEQ                      R2 R1 ; [+3]
       28 LOADK                            R2 K7 ["prompt_moderated"]
       29 RETURN                           R2 1
       30 LOADK                            R2 K4 ["client_error"]
       31 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["acpSessionId"]
        3 MOVE                             R1 R0
        4 DUPTABLE                         R2 K3 [{["rawTransformValues"] = True}]
        5 RETURN                           R1 2

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+15]
        3 MOVE                             R2 R0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 DUPTABLE                         R9 K1 [{"name"}]
        8 SETTABLEKS                       R6 R9 K0 ["name"]
       10 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       12 MOVE                             R8 R1
       13 GETIMPORT                        R7 K4 [table.insert]
       15 CALL                             R7 2 0
       16 FORGLOOP                         R2 2 ; [-10]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K5 ["buildFramedSystemReminders"]
       21 GETUPVAL                         R3 1
       22 MOVE                             R4 R1
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_7:
        0 LOADK                            R1 K0 ["useSendMessageViaService: prompt failed: %*"]
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 NAMECALL                         R1 R1 K1 ["format"]
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["FFlagDebugLogAssistantUI"]
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETIMPORT                        R2 K4 [warn]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 JUMP                             ; [+8]
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K5 ["get"]
       19 CALL                             R2 0 1
       20 GETTABLEKS                       R2 R2 K6 ["printToStudioLogAsync"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 3
       25 DUPTABLE                         R3 K11 [{"errorType", "messageGuid", "acpSessionId", "threadId"}]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K12 ["FFlagAssistantPromptModeratedError"]
       29 JUMPIFNOT                        R5 ; [+7]
       30 FASTCALL1                        TYPEOF R0 ; [+3]
       31 MOVE                             R6 R0
       32 GETIMPORT                        R5 K14 [typeof]
       34 CALL                             R5 1 1
       35 JUMPIFEQKS                       R5 K15 ["table"] ; [+3]
       37 LOADK                            R4 K16 ["client_error"]
       38 JUMP                             ; [+18]
       39 GETTABLEKS                       R5 R0 K17 ["code"]
       41 JUMPIFNOTEQKN                    R5 K18 [-32001] ; [+3]
       43 LOADK                            R4 K19 ["prompt_moderated"]
       44 JUMP                             ; [+12]
       45 GETUPVAL                         R5 1
       46 GETTABLEKS                       R5 R5 K20 ["FStringAssistantModerateErrorMsg"]
       48 JUMPIFEQKS                       R5 K21 [""] ; [+7]
       50 GETTABLEKS                       R6 R0 K22 ["message"]
       52 JUMPIFNOTEQ                      R6 R5 ; [+3]
       54 LOADK                            R4 K19 ["prompt_moderated"]
       55 JUMP                             ; [+1]
       56 LOADK                            R4 K16 ["client_error"]
       57 SETTABLEKS                       R4 R3 K7 ["errorType"]
       59 GETUPVAL                         R4 4
       60 GETTABLEKS                       R4 R4 K23 ["getRequestMessageId"]
       62 CALL                             R4 0 1
       63 SETTABLEKS                       R4 R3 K8 ["messageGuid"]
       65 GETUPVAL                         R4 5
       66 JUMPIFNOT                        R4 ; [+3]
       67 GETUPVAL                         R4 5
       68 GETTABLEKS                       R4 R4 K9 ["acpSessionId"]
       70 SETTABLEKS                       R4 R3 K9 ["acpSessionId"]
       72 GETUPVAL                         R4 6
       73 SETTABLEKS                       R4 R3 K10 ["threadId"]
       75 CALL                             R2 1 0
       76 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shouldEnableInputAfterTurn"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 DUPTABLE                         R2 K2 [{"threadId"}]
        8 GETUPVAL                         R3 2
        9 SETTABLEKS                       R3 R2 K1 ["threadId"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 DUPTABLE                         R3 K10 [{"threadId", "sessionId", "selectedModel", "assistantMode", "text", "images", "logUserMessageSent", "logAssistantMessageSent", "logRequestJourney", "showError"}]
        5 GETUPVAL                         R4 0
        6 SETTABLEKS                       R4 R3 K0 ["threadId"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["sessionId"]
       11 SETTABLEKS                       R4 R3 K1 ["sessionId"]
       13 GETUPVAL                         R4 2
       14 SETTABLEKS                       R4 R3 K2 ["selectedModel"]
       16 GETUPVAL                         R4 3
       17 SETTABLEKS                       R4 R3 K3 ["assistantMode"]
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K4 ["text"]
       22 SETTABLEKS                       R4 R3 K4 ["text"]
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R4 R4 K5 ["images"]
       27 SETTABLEKS                       R4 R3 K5 ["images"]
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R4 R4 K11 ["get"]
       32 CALL                             R4 0 1
       33 GETTABLEKS                       R4 R4 K12 ["EventLogger"]
       35 GETTABLEKS                       R4 R4 K6 ["logUserMessageSent"]
       37 SETTABLEKS                       R4 R3 K6 ["logUserMessageSent"]
       39 GETUPVAL                         R4 6
       40 SETTABLEKS                       R4 R3 K7 ["logAssistantMessageSent"]
       42 GETUPVAL                         R4 7
       43 SETTABLEKS                       R4 R3 K8 ["logRequestJourney"]
       45 GETUPVAL                         R4 8
       46 SETTABLEKS                       R4 R3 K9 ["showError"]
       48 GETUPVAL                         R4 9
       49 CALL                             R4 0 1
       50 JUMPIFNOT                        R4 ; [+10]
       51 GETUPVAL                         R4 10
       52 GETTABLEKS                       R4 R4 K13 ["FFlagAssistantCreditMeteringTelemetry"]
       54 JUMPIFNOT                        R4 ; [+6]
       55 GETUPVAL                         R4 11
       56 SETTABLEKS                       R4 R3 K14 ["additionalUsageEnabled"]
       58 GETUPVAL                         R4 12
       59 SETTABLEKS                       R4 R3 K15 ["dailyLimitSet"]
       61 GETUPVAL                         R4 13
       62 GETTABLEKS                       R4 R4 K16 ["create"]
       64 MOVE                             R5 R3
       65 CALL                             R4 1 1
       66 GETUPVAL                         R5 14
       67 DUPTABLE                         R6 K33 [{"service", "sessionMonitor", "threadId", "acpSessionId", "setAcpSessionId", "addContent", "editContent", "apiKeys", "selectedModel", "selectedProvider", "assistantMode", "conversationSessionId", "onUserMessageAccepted", "onAssistantMessageFinished", "logRequestJourney", "getPromptErrorType", "showError", "resolveAllowedTools", "registerPromptController", "unregisterPromptController", "getSystemReminders"}]
       68 GETUPVAL                         R7 15
       69 SETTABLEKS                       R7 R6 K17 ["service"]
       71 GETUPVAL                         R7 16
       72 GETUPVAL                         R8 0
       73 CALL                             R7 1 1
       74 SETTABLEKS                       R7 R6 K18 ["sessionMonitor"]
       76 GETUPVAL                         R7 0
       77 SETTABLEKS                       R7 R6 K0 ["threadId"]
       79 GETUPVAL                         R7 17
       80 JUMPIFNOT                        R7 ; [+3]
       81 GETUPVAL                         R7 17
       82 GETTABLEKS                       R7 R7 K19 ["acpSessionId"]
       84 SETTABLEKS                       R7 R6 K19 ["acpSessionId"]
       86 NEWCLOSURE                       R7 P0
       87 CAPTURE                          UPVAL U18
       88 CAPTURE                          UPVAL U0
       89 SETTABLEKS                       R7 R6 K20 ["setAcpSessionId"]
       91 GETUPVAL                         R7 19
       92 SETTABLEKS                       R7 R6 K21 ["addContent"]
       94 GETUPVAL                         R7 20
       95 SETTABLEKS                       R7 R6 K22 ["editContent"]
       97 GETUPVAL                         R7 21
       98 GETUPVAL                         R8 22
       99 CALL                             R7 1 1
      100 SETTABLEKS                       R7 R6 K23 ["apiKeys"]
      102 GETUPVAL                         R7 2
      103 SETTABLEKS                       R7 R6 K2 ["selectedModel"]
      105 GETUPVAL                         R7 23
      106 SETTABLEKS                       R7 R6 K24 ["selectedProvider"]
      108 GETUPVAL                         R7 3
      109 SETTABLEKS                       R7 R6 K3 ["assistantMode"]
      111 GETUPVAL                         R7 1
      112 GETTABLEKS                       R7 R7 K1 ["sessionId"]
      114 SETTABLEKS                       R7 R6 K25 ["conversationSessionId"]
      116 GETTABLEKS                       R7 R4 K26 ["onUserMessageAccepted"]
      118 SETTABLEKS                       R7 R6 K26 ["onUserMessageAccepted"]
      120 GETTABLEKS                       R7 R4 K27 ["onAssistantMessageFinished"]
      122 SETTABLEKS                       R7 R6 K27 ["onAssistantMessageFinished"]
      124 GETTABLEKS                       R7 R4 K8 ["logRequestJourney"]
      126 SETTABLEKS                       R7 R6 K8 ["logRequestJourney"]
      128 GETUPVAL                         R7 24
      129 SETTABLEKS                       R7 R6 K28 ["getPromptErrorType"]
      131 GETTABLEKS                       R7 R4 K9 ["showError"]
      133 SETTABLEKS                       R7 R6 K9 ["showError"]
      135 GETUPVAL                         R7 25
      136 SETTABLEKS                       R7 R6 K29 ["resolveAllowedTools"]
      138 GETUPVAL                         R7 26
      139 SETTABLEKS                       R7 R6 K30 ["registerPromptController"]
      141 GETUPVAL                         R7 27
      142 SETTABLEKS                       R7 R6 K31 ["unregisterPromptController"]
      144 GETUPVAL                         R8 28
      145 JUMPIFNOT                        R8 ; [+4]
      146 NEWCLOSURE                       R7 P1
      147 CAPTURE                          UPVAL U29
      148 CAPTURE                          UPVAL U28
      149 JUMP                             ; [+1]
      150 LOADNIL                          R7
      151 SETTABLEKS                       R7 R6 K32 ["getSystemReminders"]
      153 DUPTABLE                         R7 K39 [{"text", "retry", "previousMessageId", "images", "hidden", "userMessageAlreadyRendered", "additionalPromptText"}]
      154 JUMPIFNOT                        R2 ; [+2]
      155 LOADK                            R8 K40 [""]
      156 JUMP                             ; [+3]
      157 GETUPVAL                         R8 4
      158 GETTABLEKS                       R8 R8 K4 ["text"]
      160 SETTABLEKS                       R8 R7 K4 ["text"]
      162 GETUPVAL                         R8 4
      163 GETTABLEKS                       R8 R8 K34 ["retry"]
      165 SETTABLEKS                       R8 R7 K34 ["retry"]
      167 GETUPVAL                         R8 4
      168 GETTABLEKS                       R8 R8 K35 ["previousMessageId"]
      170 SETTABLEKS                       R8 R7 K35 ["previousMessageId"]
      172 JUMPIFNOT                        R2 ; [+2]
      173 LOADNIL                          R8
      174 JUMP                             ; [+3]
      175 GETUPVAL                         R8 4
      176 GETTABLEKS                       R8 R8 K5 ["images"]
      178 SETTABLEKS                       R8 R7 K5 ["images"]
      180 GETUPVAL                         R8 4
      181 GETTABLEKS                       R8 R8 K36 ["hidden"]
      183 SETTABLEKS                       R8 R7 K36 ["hidden"]
      185 GETUPVAL                         R8 30
      186 CALL                             R8 0 1
      187 SETTABLEKS                       R8 R7 K37 ["userMessageAlreadyRendered"]
      189 JUMPIFNOT                        R2 ; [+5]
      190 GETUPVAL                         R8 29
      191 GETTABLEKS                       R8 R8 K41 ["buildSkillContinuationReminder"]
      193 CALL                             R8 0 1
      194 JUMP                             ; [+5]
      195 GETUPVAL                         R8 29
      196 GETTABLEKS                       R8 R8 K42 ["buildSkillResultContext"]
      198 MOVE                             R9 R1
      199 CALL                             R8 1 1
      200 SETTABLEKS                       R8 R7 K38 ["additionalPromptText"]
      202 CALL                             R5 2 1
      203 GETTABLEKS                       R6 R5 K43 ["promise"]
      205 NEWCLOSURE                       R8 P2
      206 CAPTURE                          UPVAL U31
      207 CAPTURE                          UPVAL U10
      208 CAPTURE                          UPVAL U5
      209 CAPTURE                          UPVAL U8
      210 CAPTURE                          VAL R5
      211 CAPTURE                          UPVAL U17
      212 CAPTURE                          UPVAL U0
      213 NAMECALL                         R6 R6 K44 ["catch"]
      215 CALL                             R6 2 1
      216 NEWCLOSURE                       R8 P3
      217 CAPTURE                          VAL R4
      218 CAPTURE                          UPVAL U32
      219 CAPTURE                          UPVAL U0
      220 NAMECALL                         R6 R6 K45 ["finally"]
      222 CALL                             R6 2 0
      223 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPTABLE                         R3 K2 [{"focus", "threadId"}]
        3 GETUPVAL                         R4 1
        4 SETTABLEKS                       R4 R3 K0 ["focus"]
        6 GETUPVAL                         R4 2
        7 SETTABLEKS                       R4 R3 K1 ["threadId"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["threadId"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R3 0
        5 JUMPIFEQ                         R1 R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 GETUPVAL                         R3 1
       11 JUMP                             ; [+4]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K1 ["threads"]
       15 GETTABLE                         R3 R4 R1
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 JUMPIFNOT                        R2 ; [+3]
       19 GETUPVAL                         R4 3
       20 GETUPVAL                         R5 4
       21 JUMP                             ; [+13]
       22 GETUPVAL                         R7 5
       23 GETTABLE                         R6 R7 R1
       24 LOADB                            R7 1
       25 JUMPIFEQKNIL                     R6 ; [+3]
       27 GETTABLEKS                       R7 R6 K2 ["inputEnabled"]
       29 MOVE                             R4 R7
       30 MOVE                             R7 R6
       31 JUMPIFNOT                        R7 ; [+2]
       32 GETTABLEKS                       R7 R6 K3 ["reasonDisabled"]
       34 MOVE                             R5 R7
       35 JUMPIF                           R4 ; [+11]
       36 JUMPIFNOT                        R5 ; [+9]
       37 GETIMPORT                        R6 K5 [warn]
       39 LOADK                            R7 K6 ["Input is disabled: %*"]
       40 GETTABLEKS                       R9 R5 K3 ["reasonDisabled"]
       42 NAMECALL                         R7 R7 K7 ["format"]
       44 CALL                             R7 2 1
       45 CALL                             R6 1 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R6 6
       48 JUMPIF                           R6 ; [+5]
       49 GETIMPORT                        R6 K5 [warn]
       51 LOADK                            R7 K8 ["ACPClientService not available with AssistantHarnessSplit on"]
       52 CALL                             R6 1 0
       53 RETURN                           R0 0
       54 GETUPVAL                         R6 7
       55 JUMPIF                           R6 ; [+5]
       56 GETIMPORT                        R6 K5 [warn]
       58 LOADK                            R7 K9 ["AcpSessionMonitorContext not available with FFlagAssistantHarnessSplit on"]
       59 CALL                             R6 1 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R6 8
       62 LOADB                            R7 0
       63 DUPTABLE                         R8 K10 [{"threadId"}]
       64 SETTABLEKS                       R1 R8 K0 ["threadId"]
       66 CALL                             R6 2 0
       67 LOADB                            R7 1
       68 GETTABLEKS                       R8 R0 K11 ["previousMessageId"]
       70 JUMPIFNOTEQKNIL                  R8 ; [+4]
       72 GETTABLEKS                       R8 R0 K12 ["retry"]
       74 NOT                              R7 R8
       75 FASTCALL2K                       ASSERT R7 K13 ; [+4]
       77 LOADK                            R8 K13 ["previousMessageId must be provided for retry messages"]
       78 GETIMPORT                        R6 K15 [assert]
       80 CALL                             R6 2 0
       81 GETUPVAL                         R6 9
       82 GETTABLEKS                       R6 R6 K16 ["createSlashCommandUserMessageRenderer"]
       84 MOVE                             R7 R0
       85 GETUPVAL                         R8 10
       86 GETUPVAL                         R9 11
       87 MOVE                             R10 R1
       88 CALL                             R6 4 2
       89 NEWCLOSURE                       R8 P0
       90 CAPTURE                          VAL R1
       91 CAPTURE                          UPVAL U12
       92 CAPTURE                          UPVAL U13
       93 CAPTURE                          UPVAL U14
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U15
       96 CAPTURE                          UPVAL U16
       97 CAPTURE                          UPVAL U17
       98 CAPTURE                          UPVAL U18
       99 CAPTURE                          UPVAL U19
      100 CAPTURE                          UPVAL U20
      101 CAPTURE                          UPVAL U21
      102 CAPTURE                          UPVAL U22
      103 CAPTURE                          UPVAL U23
      104 CAPTURE                          UPVAL U24
      105 CAPTURE                          UPVAL U6
      106 CAPTURE                          UPVAL U7
      107 CAPTURE                          VAL R3
      108 CAPTURE                          UPVAL U25
      109 CAPTURE                          UPVAL U11
      110 CAPTURE                          UPVAL U26
      111 CAPTURE                          UPVAL U27
      112 CAPTURE                          UPVAL U28
      113 CAPTURE                          UPVAL U29
      114 CAPTURE                          UPVAL U30
      115 CAPTURE                          UPVAL U31
      116 CAPTURE                          UPVAL U32
      117 CAPTURE                          UPVAL U33
      118 CAPTURE                          UPVAL U34
      119 CAPTURE                          UPVAL U9
      120 CAPTURE                          VAL R7
      121 CAPTURE                          UPVAL U35
      122 CAPTURE                          UPVAL U8
      123 GETUPVAL                         R9 36
      124 DUPTABLE                         R10 K22 [{"prompt", "images", "threadId", "setInputEnabled", "onSlashCommandRecognized", "onContinueWithLLMWithResult"}]
      125 GETTABLEKS                       R11 R0 K23 ["text"]
      127 SETTABLEKS                       R11 R10 K17 ["prompt"]
      129 GETTABLEKS                       R11 R0 K18 ["images"]
      131 SETTABLEKS                       R11 R10 K18 ["images"]
      133 SETTABLEKS                       R1 R10 K0 ["threadId"]
      135 NEWCLOSURE                       R11 P1
      136 CAPTURE                          UPVAL U8
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R1
      139 SETTABLEKS                       R11 R10 K19 ["setInputEnabled"]
      141 SETTABLEKS                       R6 R10 K20 ["onSlashCommandRecognized"]
      143 SETTABLEKS                       R8 R10 K21 ["onContinueWithLLMWithResult"]
      145 CALL                             R9 1 1
      146 JUMPIFNOT                        R9 ; [+1]
      147 RETURN                           R0 0
      148 GETTABLEKS                       R10 R0 K12 ["retry"]
      150 JUMPIF                           R10 ; [+2]
      151 MOVE                             R10 R6
      152 CALL                             R10 0 0
      153 MOVE                             R10 R8
      154 CALL                             R10 0 0
      155 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 5
       11 CALL                             R6 0 1
       12 GETUPVAL                         R7 6
       13 CALL                             R7 0 1
       14 GETUPVAL                         R8 7
       15 CALL                             R8 0 1
       16 GETUPVAL                         R9 8
       17 CALL                             R9 0 1
       18 GETUPVAL                         R10 9
       19 CALL                             R10 0 1
       20 GETUPVAL                         R11 10
       21 CALL                             R11 0 1
       22 GETUPVAL                         R12 11
       23 CALL                             R12 0 1
       24 GETUPVAL                         R13 12
       25 CALL                             R13 0 1
       26 GETUPVAL                         R14 13
       27 CALL                             R14 0 1
       28 GETUPVAL                         R15 14
       29 GETTABLEKS                       R15 R15 K0 ["useContext"]
       31 GETUPVAL                         R16 15
       32 GETTABLEKS                       R16 R16 K1 ["Context"]
       34 CALL                             R15 1 1
       35 GETUPVAL                         R16 14
       36 GETTABLEKS                       R16 R16 K0 ["useContext"]
       38 GETUPVAL                         R17 16
       39 GETTABLEKS                       R17 R17 K1 ["Context"]
       41 CALL                             R16 1 1
       42 GETUPVAL                         R17 14
       43 GETTABLEKS                       R17 R17 K0 ["useContext"]
       45 GETUPVAL                         R18 17
       46 GETTABLEKS                       R18 R18 K1 ["Context"]
       48 CALL                             R17 1 1
       49 GETUPVAL                         R18 14
       50 GETTABLEKS                       R18 R18 K0 ["useContext"]
       52 GETUPVAL                         R19 18
       53 GETTABLEKS                       R19 R19 K1 ["Context"]
       55 CALL                             R18 1 1
       56 GETUPVAL                         R19 14
       57 GETTABLEKS                       R19 R19 K0 ["useContext"]
       59 GETUPVAL                         R20 19
       60 GETTABLEKS                       R20 R20 K1 ["Context"]
       62 CALL                             R19 1 1
       63 GETTABLEKS                       R22 R19 K2 ["quotaSummary"]
       65 JUMPIFNOT                        R22 ; [+4]
       66 GETTABLEKS                       R22 R19 K2 ["quotaSummary"]
       68 GETTABLEKS                       R22 R22 K3 ["limitSettings"]
       70 GETUPVAL                         R23 20
       71 CALL                             R23 0 1
       72 JUMPIFNOT                        R23 ; [+5]
       73 GETUPVAL                         R23 21
       74 GETTABLEKS                       R23 R23 K4 ["FFlagAssistantCreditMeteringTelemetry"]
       76 JUMPIFNOT                        R23 ; [+1]
       77 JUMPIF                           R22 ; [+3]
       78 LOADNIL                          R20
       79 LOADNIL                          R21
       80 JUMP                             ; [+12]
       81 GETTABLEKS                       R23 R22 K5 ["additionalUsageEnabled"]
       83 JUMPIFEQKB                       R23 TRUE ; [+2]
       85 LOADB                            R20 0 +1
       86 LOADB                            R20 1
       87 GETTABLEKS                       R23 R22 K6 ["dailyLimitSet"]
       89 JUMPIFEQKB                       R23 TRUE ; [+2]
       91 LOADB                            R21 0 +1
       92 LOADB                            R21 1
       93 GETUPVAL                         R22 14
       94 GETTABLEKS                       R22 R22 K0 ["useContext"]
       96 GETUPVAL                         R23 22
       97 GETTABLEKS                       R23 R23 K1 ["Context"]
       99 CALL                             R22 1 1
      100 GETUPVAL                         R23 14
      101 GETTABLEKS                       R23 R23 K0 ["useContext"]
      103 GETUPVAL                         R24 23
      104 GETTABLEKS                       R24 R24 K1 ["Context"]
      106 CALL                             R23 1 1
      107 GETTABLEKS                       R24 R14 K7 ["getSetting"]
      109 GETTABLEKS                       R25 R15 K8 ["selectedModel"]
      111 GETTABLEKS                       R26 R15 K9 ["selectedProvider"]
      113 GETTABLEKS                       R27 R16 K10 ["inputEnabled"]
      115 GETTABLEKS                       R28 R16 K11 ["reasonDisabled"]
      117 GETTABLEKS                       R29 R16 K12 ["allThreadInputStates"]
      119 GETTABLEKS                       R30 R17 K13 ["service"]
      121 GETTABLEKS                       R31 R17 K14 ["resolveAllowedTools"]
      123 GETTABLEKS                       R32 R18 K15 ["getSessionMonitor"]
      125 GETTABLEKS                       R33 R0 K16 ["setInputEnabled"]
      127 GETTABLEKS                       R34 R22 K17 ["registerPromptController"]
      129 GETTABLEKS                       R35 R22 K18 ["unregisterPromptController"]
      131 GETUPVAL                         R36 14
      132 GETTABLEKS                       R36 R36 K19 ["useCallback"]
      134 NEWCLOSURE                       R37 P0
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R27
      139 CAPTURE                          VAL R28
      140 CAPTURE                          VAL R29
      141 CAPTURE                          VAL R30
      142 CAPTURE                          VAL R32
      143 CAPTURE                          VAL R33
      144 CAPTURE                          UPVAL U24
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R23
      148 CAPTURE                          VAL R25
      149 CAPTURE                          VAL R10
      150 CAPTURE                          UPVAL U25
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R5
      154 CAPTURE                          UPVAL U20
      155 CAPTURE                          UPVAL U21
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R21
      158 CAPTURE                          UPVAL U26
      159 CAPTURE                          UPVAL U27
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R3
      162 CAPTURE                          UPVAL U28
      163 CAPTURE                          VAL R24
      164 CAPTURE                          VAL R26
      165 CAPTURE                          UPVAL U29
      166 CAPTURE                          VAL R31
      167 CAPTURE                          VAL R34
      168 CAPTURE                          VAL R35
      169 CAPTURE                          VAL R11
      170 CAPTURE                          UPVAL U30
      171 CAPTURE                          VAL R4
      172 NEWTABLE                         R38 0 28
      174 MOVE                             R39 R2
      175 MOVE                             R40 R1
      176 MOVE                             R41 R20
      177 MOVE                             R42 R29
      178 MOVE                             R43 R10
      179 MOVE                             R44 R8
      180 MOVE                             R45 R7
      181 MOVE                             R46 R21
      182 MOVE                             R47 R3
      183 MOVE                             R48 R9
      184 MOVE                             R49 R32
      185 MOVE                             R50 R24
      186 MOVE                             R51 R27
      187 MOVE                             R52 R12
      188 MOVE                             R53 R13
      189 MOVE                             R54 R28
      190 SETLIST                          R38 R39 16 [1]
      192 MOVE                             R39 R34
      193 MOVE                             R40 R31
      194 MOVE                             R41 R4
      195 MOVE                             R42 R25
      196 MOVE                             R43 R26
      197 MOVE                             R44 R30
      198 GETTABLEKS                       R45 R23 K20 ["sessionId"]
      200 MOVE                             R46 R33
      201 MOVE                             R47 R5
      202 MOVE                             R48 R11
      203 MOVE                             R49 R6
      204 MOVE                             R50 R35
      205 SETLIST                          R38 R39 12 [17]
      207 CALL                             R36 2 -1
      208 RETURN                           R36 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["Contexts"]
       19 GETTABLEKS                       R3 R3 K12 ["ACPClientServiceContext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Components"]
       26 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       28 GETTABLEKS                       R4 R4 K13 ["AcpSessionMonitorContext"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K10 ["Components"]
       35 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       37 GETTABLEKS                       R5 R5 K14 ["CreditMeteringContext"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R0 K15 ["Parent"]
       44 GETTABLEKS                       R6 R6 K16 ["Dash"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R0 K17 ["Guest"]
       51 GETTABLEKS                       R7 R7 K18 ["Environment"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K19 ["FlagUtils"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K20 ["Flags"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R9 R7 K21 ["getIsCreditMeteringEnabled"]
       66 GETIMPORT                        R10 K9 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Components"]
       70 GETTABLEKS                       R11 R11 K11 ["Contexts"]
       72 GETTABLEKS                       R11 R11 K22 ["InputStateContext"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K9 [require]
       77 GETTABLEKS                       R12 R0 K10 ["Components"]
       79 GETTABLEKS                       R12 R12 K11 ["Contexts"]
       81 GETTABLEKS                       R12 R12 K23 ["LLMProviderSelectionContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K9 [require]
       86 GETTABLEKS                       R13 R0 K10 ["Components"]
       88 GETTABLEKS                       R13 R13 K11 ["Contexts"]
       90 GETTABLEKS                       R13 R13 K24 ["OngoingAcpPromptContext"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K9 [require]
       95 GETTABLEKS                       R14 R0 K15 ["Parent"]
       97 GETTABLEKS                       R14 R14 K25 ["React"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K9 [require]
      102 GETTABLEKS                       R15 R0 K10 ["Components"]
      104 GETTABLEKS                       R15 R15 K11 ["Contexts"]
      106 GETTABLEKS                       R15 R15 K26 ["SessionIdContext"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K9 [require]
      111 GETTABLEKS                       R16 R0 K27 ["Types"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K9 [require]
      116 GETIMPORT                        R17 K1 [script]
      118 GETTABLEKS                       R17 R17 K15 ["Parent"]
      120 GETTABLEKS                       R17 R17 K28 ["createTelemetryCallbacks"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K9 [require]
      125 GETIMPORT                        R18 K1 [script]
      127 GETTABLEKS                       R18 R18 K15 ["Parent"]
      129 GETTABLEKS                       R18 R18 K29 ["sendMessage"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K9 [require]
      134 GETIMPORT                        R19 K1 [script]
      136 GETTABLEKS                       R19 R19 K15 ["Parent"]
      138 GETTABLEKS                       R19 R19 K30 ["sendMessageViaServiceHelpers"]
      140 CALL                             R18 1 1
      141 GETIMPORT                        R19 K9 [require]
      143 GETTABLEKS                       R20 R0 K31 ["Hooks"]
      145 GETTABLEKS                       R20 R20 K32 ["useAddContent"]
      147 CALL                             R19 1 1
      148 GETIMPORT                        R20 K9 [require]
      150 GETTABLEKS                       R21 R0 K31 ["Hooks"]
      152 GETTABLEKS                       R21 R21 K33 ["useAddMessage"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K9 [require]
      157 GETTABLEKS                       R22 R0 K31 ["Hooks"]
      159 GETTABLEKS                       R22 R22 K34 ["useAssistantMode"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K9 [require]
      164 GETTABLEKS                       R23 R0 K31 ["Hooks"]
      166 GETTABLEKS                       R23 R23 K35 ["useConversation"]
      168 CALL                             R22 1 1
      169 GETIMPORT                        R23 K9 [require]
      171 GETTABLEKS                       R24 R0 K31 ["Hooks"]
      173 GETTABLEKS                       R24 R24 K36 ["useCurrentThread"]
      175 CALL                             R23 1 1
      176 GETIMPORT                        R24 K9 [require]
      178 GETTABLEKS                       R25 R0 K31 ["Hooks"]
      180 GETTABLEKS                       R25 R25 K37 ["useEditContent"]
      182 CALL                             R24 1 1
      183 GETIMPORT                        R25 K9 [require]
      185 GETTABLEKS                       R26 R0 K31 ["Hooks"]
      187 GETTABLEKS                       R26 R26 K38 ["useEditThread"]
      189 CALL                             R25 1 1
      190 GETIMPORT                        R26 K9 [require]
      192 GETTABLEKS                       R27 R0 K31 ["Hooks"]
      194 GETTABLEKS                       R27 R27 K39 ["useLLMSystemReminderGetter"]
      196 CALL                             R26 1 1
      197 GETIMPORT                        R27 K9 [require]
      199 GETTABLEKS                       R28 R0 K31 ["Hooks"]
      201 GETTABLEKS                       R28 R28 K40 ["useLogAssistantMessageSent"]
      203 CALL                             R27 1 1
      204 GETIMPORT                        R28 K9 [require]
      206 GETTABLEKS                       R29 R0 K31 ["Hooks"]
      208 GETTABLEKS                       R29 R29 K41 ["useLogRequestJourney"]
      210 CALL                             R28 1 1
      211 GETIMPORT                        R29 K9 [require]
      213 GETTABLEKS                       R30 R0 K31 ["Hooks"]
      215 GETTABLEKS                       R30 R30 K42 ["useRunSlashCommand"]
      217 CALL                             R29 1 1
      218 GETIMPORT                        R30 K9 [require]
      220 GETTABLEKS                       R31 R0 K31 ["Hooks"]
      222 GETTABLEKS                       R31 R31 K43 ["useSettingsContext"]
      224 CALL                             R30 1 1
      225 GETIMPORT                        R31 K9 [require]
      227 GETTABLEKS                       R32 R0 K31 ["Hooks"]
      229 GETTABLEKS                       R32 R32 K44 ["useShowError"]
      231 CALL                             R31 1 1
      232 GETIMPORT                        R32 K9 [require]
      234 GETTABLEKS                       R33 R0 K31 ["Hooks"]
      236 GETTABLEKS                       R33 R33 K45 ["useThreadId"]
      238 CALL                             R32 1 1
      239 NEWTABLE                         R33 0 3
      241 GETTABLEKS                       R34 R15 K46 ["CLAUDE_API_KEY"]
      243 GETTABLEKS                       R35 R15 K47 ["GEMINI_API_KEY"]
      245 GETTABLEKS                       R36 R15 K48 ["OPENAI_API_KEY"]
      247 SETLIST                          R33 R34 3 [1]
      249 DUPCLOSURE                       R34 K49 [PROTO_0]
      250 CAPTURE                          VAL R9
      251 CAPTURE                          VAL R8
      252 DUPCLOSURE                       R35 K50 [PROTO_1]
      253 CAPTURE                          VAL R33
      254 DUPCLOSURE                       R36 K51 [PROTO_2]
      255 CAPTURE                          VAL R1
      256 CAPTURE                          VAL R5
      257 DUPCLOSURE                       R37 K52 [PROTO_3]
      258 CAPTURE                          VAL R8
      259 DUPCLOSURE                       R38 K53 [PROTO_12]
      260 CAPTURE                          VAL R20
      261 CAPTURE                          VAL R19
      262 CAPTURE                          VAL R24
      263 CAPTURE                          VAL R29
      264 CAPTURE                          VAL R31
      265 CAPTURE                          VAL R32
      266 CAPTURE                          VAL R23
      267 CAPTURE                          VAL R22
      268 CAPTURE                          VAL R25
      269 CAPTURE                          VAL R21
      270 CAPTURE                          VAL R26
      271 CAPTURE                          VAL R27
      272 CAPTURE                          VAL R28
      273 CAPTURE                          VAL R30
      274 CAPTURE                          VAL R13
      275 CAPTURE                          VAL R11
      276 CAPTURE                          VAL R10
      277 CAPTURE                          VAL R2
      278 CAPTURE                          VAL R3
      279 CAPTURE                          VAL R4
      280 CAPTURE                          VAL R9
      281 CAPTURE                          VAL R8
      282 CAPTURE                          VAL R12
      283 CAPTURE                          VAL R14
      284 CAPTURE                          VAL R18
      285 CAPTURE                          VAL R6
      286 CAPTURE                          VAL R16
      287 CAPTURE                          VAL R17
      288 CAPTURE                          VAL R35
      289 CAPTURE                          VAL R37
      290 CAPTURE                          VAL R36
      291 RETURN                           R38 1
