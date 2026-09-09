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
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["acpSessionId"]
        3 MOVE                             R1 R0
        4 DUPTABLE                         R2 K3 [{["rawTransformValues"] = True}]
        5 RETURN                           R1 2

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["useSendMessageViaService: %*"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R6 R0
        5 GETIMPORT                        R5 K4 [tostring]
        7 CALL                             R5 1 1
        8 NAMECALL                         R3 R3 K5 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 0
       14 DUPTABLE                         R2 K10 [{["errorType"] = "client_error", ["acpSessionId"], ["threadId"]}]
       15 GETUPVAL                         R3 1
       16 JUMPIFNOT                        R3 ; [+3]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K8 ["acpSessionId"]
       20 SETTABLEKS                       R3 R2 K8 ["acpSessionId"]
       22 GETUPVAL                         R3 2
       23 SETTABLEKS                       R3 R2 K9 ["threadId"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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
       67 DUPTABLE                         R6 K32 [{"service", "sessionMonitor", "threadId", "acpSessionId", "setAcpSessionId", "addContent", "editContent", "apiKeys", "selectedModel", "selectedProvider", "assistantMode", "conversationSessionId", "onUserMessageAccepted", "onAssistantMessageFinished", "logRequestJourney", "showError", "resolveAllowedTools", "registerPromptController", "unregisterPromptController", "getSystemReminders"}]
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
      128 GETTABLEKS                       R7 R4 K9 ["showError"]
      130 SETTABLEKS                       R7 R6 K9 ["showError"]
      132 GETUPVAL                         R7 24
      133 SETTABLEKS                       R7 R6 K28 ["resolveAllowedTools"]
      135 GETUPVAL                         R7 25
      136 SETTABLEKS                       R7 R6 K29 ["registerPromptController"]
      138 GETUPVAL                         R7 26
      139 SETTABLEKS                       R7 R6 K30 ["unregisterPromptController"]
      141 GETUPVAL                         R8 27
      142 JUMPIFNOT                        R8 ; [+4]
      143 NEWCLOSURE                       R7 P1
      144 CAPTURE                          UPVAL U28
      145 CAPTURE                          UPVAL U27
      146 JUMP                             ; [+1]
      147 LOADNIL                          R7
      148 SETTABLEKS                       R7 R6 K31 ["getSystemReminders"]
      150 DUPTABLE                         R7 K38 [{"text", "retry", "previousMessageId", "images", "hidden", "userMessageAlreadyRendered", "additionalPromptText"}]
      151 JUMPIFNOT                        R2 ; [+2]
      152 LOADK                            R8 K39 [""]
      153 JUMP                             ; [+3]
      154 GETUPVAL                         R8 4
      155 GETTABLEKS                       R8 R8 K4 ["text"]
      157 SETTABLEKS                       R8 R7 K4 ["text"]
      159 GETUPVAL                         R8 4
      160 GETTABLEKS                       R8 R8 K33 ["retry"]
      162 SETTABLEKS                       R8 R7 K33 ["retry"]
      164 GETUPVAL                         R8 4
      165 GETTABLEKS                       R8 R8 K34 ["previousMessageId"]
      167 SETTABLEKS                       R8 R7 K34 ["previousMessageId"]
      169 JUMPIFNOT                        R2 ; [+2]
      170 LOADNIL                          R8
      171 JUMP                             ; [+3]
      172 GETUPVAL                         R8 4
      173 GETTABLEKS                       R8 R8 K5 ["images"]
      175 SETTABLEKS                       R8 R7 K5 ["images"]
      177 GETUPVAL                         R8 4
      178 GETTABLEKS                       R8 R8 K35 ["hidden"]
      180 SETTABLEKS                       R8 R7 K35 ["hidden"]
      182 GETUPVAL                         R8 29
      183 CALL                             R8 0 1
      184 SETTABLEKS                       R8 R7 K36 ["userMessageAlreadyRendered"]
      186 JUMPIFNOT                        R2 ; [+5]
      187 GETUPVAL                         R8 28
      188 GETTABLEKS                       R8 R8 K40 ["buildSkillContinuationReminder"]
      190 CALL                             R8 0 1
      191 JUMP                             ; [+5]
      192 GETUPVAL                         R8 28
      193 GETTABLEKS                       R8 R8 K41 ["buildSkillResultContext"]
      195 MOVE                             R9 R1
      196 CALL                             R8 1 1
      197 SETTABLEKS                       R8 R7 K37 ["additionalPromptText"]
      199 CALL                             R5 2 1
      200 GETTABLEKS                       R6 R5 K42 ["promise"]
      202 NEWCLOSURE                       R8 P2
      203 CAPTURE                          UPVAL U8
      204 CAPTURE                          UPVAL U17
      205 CAPTURE                          UPVAL U0
      206 NAMECALL                         R6 R6 K43 ["catch"]
      208 CALL                             R6 2 1
      209 NEWCLOSURE                       R8 P3
      210 CAPTURE                          VAL R4
      211 CAPTURE                          UPVAL U30
      212 CAPTURE                          UPVAL U0
      213 NAMECALL                         R6 R6 K44 ["finally"]
      215 CALL                             R6 2 0
      216 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPTABLE                         R3 K2 [{"focus", "threadId"}]
        3 GETUPVAL                         R4 1
        4 SETTABLEKS                       R4 R3 K0 ["focus"]
        6 GETUPVAL                         R4 2
        7 SETTABLEKS                       R4 R3 K1 ["threadId"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_9:
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
       35 JUMPIF                           R4 ; [+12]
       36 JUMPIFNOT                        R5 ; [+10]
       37 GETIMPORT                        R6 K5 [warn]
       39 LOADK                            R8 K6 ["Input is disabled: %*"]
       40 GETTABLEKS                       R10 R5 K3 ["reasonDisabled"]
       42 NAMECALL                         R8 R8 K7 ["format"]
       44 CALL                             R8 2 1
       45 MOVE                             R7 R8
       46 CALL                             R6 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R6 6
       49 JUMPIF                           R6 ; [+5]
       50 GETIMPORT                        R6 K5 [warn]
       52 LOADK                            R7 K8 ["ACPClientService not available with AssistantHarnessSplit on"]
       53 CALL                             R6 1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R6 7
       56 JUMPIF                           R6 ; [+5]
       57 GETIMPORT                        R6 K5 [warn]
       59 LOADK                            R7 K9 ["AcpSessionMonitorContext not available with FFlagAssistantHarnessSplit on"]
       60 CALL                             R6 1 0
       61 RETURN                           R0 0
       62 GETUPVAL                         R6 8
       63 LOADB                            R7 0
       64 DUPTABLE                         R8 K10 [{"threadId"}]
       65 SETTABLEKS                       R1 R8 K0 ["threadId"]
       67 CALL                             R6 2 0
       68 LOADB                            R7 1
       69 GETTABLEKS                       R8 R0 K11 ["previousMessageId"]
       71 JUMPIFNOTEQKNIL                  R8 ; [+4]
       73 GETTABLEKS                       R8 R0 K12 ["retry"]
       75 NOT                              R7 R8
       76 FASTCALL2K                       ASSERT R7 K13 ; [+4]
       78 LOADK                            R8 K13 ["previousMessageId must be provided for retry messages"]
       79 GETIMPORT                        R6 K15 [assert]
       81 CALL                             R6 2 0
       82 GETUPVAL                         R6 9
       83 GETTABLEKS                       R6 R6 K16 ["createSlashCommandUserMessageRenderer"]
       85 MOVE                             R7 R0
       86 GETUPVAL                         R8 10
       87 GETUPVAL                         R9 11
       88 MOVE                             R10 R1
       89 CALL                             R6 4 2
       90 NEWCLOSURE                       R8 P0
       91 CAPTURE                          VAL R1
       92 CAPTURE                          UPVAL U12
       93 CAPTURE                          UPVAL U13
       94 CAPTURE                          UPVAL U14
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U15
       97 CAPTURE                          UPVAL U16
       98 CAPTURE                          UPVAL U17
       99 CAPTURE                          UPVAL U18
      100 CAPTURE                          UPVAL U19
      101 CAPTURE                          UPVAL U20
      102 CAPTURE                          UPVAL U21
      103 CAPTURE                          UPVAL U22
      104 CAPTURE                          UPVAL U23
      105 CAPTURE                          UPVAL U24
      106 CAPTURE                          UPVAL U6
      107 CAPTURE                          UPVAL U7
      108 CAPTURE                          VAL R3
      109 CAPTURE                          UPVAL U25
      110 CAPTURE                          UPVAL U11
      111 CAPTURE                          UPVAL U26
      112 CAPTURE                          UPVAL U27
      113 CAPTURE                          UPVAL U28
      114 CAPTURE                          UPVAL U29
      115 CAPTURE                          UPVAL U30
      116 CAPTURE                          UPVAL U31
      117 CAPTURE                          UPVAL U32
      118 CAPTURE                          UPVAL U33
      119 CAPTURE                          UPVAL U9
      120 CAPTURE                          VAL R7
      121 CAPTURE                          UPVAL U8
      122 GETUPVAL                         R9 34
      123 DUPTABLE                         R10 K22 [{"prompt", "images", "threadId", "setInputEnabled", "onSlashCommandRecognized", "onContinueWithLLMWithResult"}]
      124 GETTABLEKS                       R11 R0 K23 ["text"]
      126 SETTABLEKS                       R11 R10 K17 ["prompt"]
      128 GETTABLEKS                       R11 R0 K18 ["images"]
      130 SETTABLEKS                       R11 R10 K18 ["images"]
      132 SETTABLEKS                       R1 R10 K0 ["threadId"]
      134 NEWCLOSURE                       R11 P1
      135 CAPTURE                          UPVAL U8
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R1
      138 SETTABLEKS                       R11 R10 K19 ["setInputEnabled"]
      140 SETTABLEKS                       R6 R10 K20 ["onSlashCommandRecognized"]
      142 SETTABLEKS                       R8 R10 K21 ["onContinueWithLLMWithResult"]
      144 CALL                             R9 1 1
      145 JUMPIFNOT                        R9 ; [+1]
      146 RETURN                           R0 0
      147 GETTABLEKS                       R10 R0 K12 ["retry"]
      149 JUMPIF                           R10 ; [+2]
      150 MOVE                             R10 R6
      151 CALL                             R10 0 0
      152 MOVE                             R10 R8
      153 CALL                             R10 0 0
      154 RETURN                           R0 0

PROTO_10:
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
      165 CAPTURE                          VAL R31
      166 CAPTURE                          VAL R34
      167 CAPTURE                          VAL R35
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R4
      170 NEWTABLE                         R38 0 28
      172 MOVE                             R39 R2
      173 MOVE                             R40 R1
      174 MOVE                             R41 R20
      175 MOVE                             R42 R29
      176 MOVE                             R43 R10
      177 MOVE                             R44 R8
      178 MOVE                             R45 R7
      179 MOVE                             R46 R21
      180 MOVE                             R47 R3
      181 MOVE                             R48 R9
      182 MOVE                             R49 R32
      183 MOVE                             R50 R24
      184 MOVE                             R51 R27
      185 MOVE                             R52 R12
      186 MOVE                             R53 R13
      187 MOVE                             R54 R28
      188 SETLIST                          R38 R39 16 [1]
      190 MOVE                             R39 R34
      191 MOVE                             R40 R31
      192 MOVE                             R41 R4
      193 MOVE                             R42 R25
      194 MOVE                             R43 R26
      195 MOVE                             R44 R30
      196 GETTABLEKS                       R45 R23 K20 ["sessionId"]
      198 MOVE                             R46 R33
      199 MOVE                             R47 R5
      200 MOVE                             R48 R11
      201 MOVE                             R49 R6
      202 MOVE                             R50 R35
      203 SETLIST                          R38 R39 12 [17]
      205 CALL                             R36 2 -1
      206 RETURN                           R36 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ACPClientServiceContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K7 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K9 ["AcpSessionMonitorContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Components"]
       29 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K10 ["CreditMeteringContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K11 ["Guest"]
       38 GETTABLEKS                       R5 R5 K12 ["Environment"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K13 ["FlagUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Flags"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R5 K15 ["getIsCreditMeteringEnabled"]
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R0 K6 ["Components"]
       57 GETTABLEKS                       R9 R9 K7 ["Contexts"]
       59 GETTABLEKS                       R9 R9 K16 ["InputStateContext"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K5 [require]
       64 GETTABLEKS                       R10 R0 K6 ["Components"]
       66 GETTABLEKS                       R10 R10 K7 ["Contexts"]
       68 GETTABLEKS                       R10 R10 K17 ["LLMProviderSelectionContext"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K5 [require]
       73 GETTABLEKS                       R11 R0 K6 ["Components"]
       75 GETTABLEKS                       R11 R11 K7 ["Contexts"]
       77 GETTABLEKS                       R11 R11 K18 ["OngoingAcpPromptContext"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K5 [require]
       82 GETTABLEKS                       R12 R0 K19 ["Parent"]
       84 GETTABLEKS                       R12 R12 K20 ["React"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K5 [require]
       89 GETTABLEKS                       R13 R0 K6 ["Components"]
       91 GETTABLEKS                       R13 R13 K7 ["Contexts"]
       93 GETTABLEKS                       R13 R13 K21 ["SessionIdContext"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K5 [require]
       98 GETTABLEKS                       R14 R0 K22 ["Types"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K5 [require]
      103 GETIMPORT                        R15 K1 [script]
      105 GETTABLEKS                       R15 R15 K19 ["Parent"]
      107 GETTABLEKS                       R15 R15 K23 ["createTelemetryCallbacks"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K5 [require]
      112 GETIMPORT                        R16 K1 [script]
      114 GETTABLEKS                       R16 R16 K19 ["Parent"]
      116 GETTABLEKS                       R16 R16 K24 ["sendMessage"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K5 [require]
      121 GETIMPORT                        R17 K1 [script]
      123 GETTABLEKS                       R17 R17 K19 ["Parent"]
      125 GETTABLEKS                       R17 R17 K25 ["sendMessageViaServiceHelpers"]
      127 CALL                             R16 1 1
      128 GETIMPORT                        R17 K5 [require]
      130 GETTABLEKS                       R18 R0 K26 ["Hooks"]
      132 GETTABLEKS                       R18 R18 K27 ["useAddContent"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K5 [require]
      137 GETTABLEKS                       R19 R0 K26 ["Hooks"]
      139 GETTABLEKS                       R19 R19 K28 ["useAddMessage"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K5 [require]
      144 GETTABLEKS                       R20 R0 K26 ["Hooks"]
      146 GETTABLEKS                       R20 R20 K29 ["useAssistantMode"]
      148 CALL                             R19 1 1
      149 GETIMPORT                        R20 K5 [require]
      151 GETTABLEKS                       R21 R0 K26 ["Hooks"]
      153 GETTABLEKS                       R21 R21 K30 ["useConversation"]
      155 CALL                             R20 1 1
      156 GETIMPORT                        R21 K5 [require]
      158 GETTABLEKS                       R22 R0 K26 ["Hooks"]
      160 GETTABLEKS                       R22 R22 K31 ["useCurrentThread"]
      162 CALL                             R21 1 1
      163 GETIMPORT                        R22 K5 [require]
      165 GETTABLEKS                       R23 R0 K26 ["Hooks"]
      167 GETTABLEKS                       R23 R23 K32 ["useEditContent"]
      169 CALL                             R22 1 1
      170 GETIMPORT                        R23 K5 [require]
      172 GETTABLEKS                       R24 R0 K26 ["Hooks"]
      174 GETTABLEKS                       R24 R24 K33 ["useEditThread"]
      176 CALL                             R23 1 1
      177 GETIMPORT                        R24 K5 [require]
      179 GETTABLEKS                       R25 R0 K26 ["Hooks"]
      181 GETTABLEKS                       R25 R25 K34 ["useLLMSystemReminderGetter"]
      183 CALL                             R24 1 1
      184 GETIMPORT                        R25 K5 [require]
      186 GETTABLEKS                       R26 R0 K26 ["Hooks"]
      188 GETTABLEKS                       R26 R26 K35 ["useLogAssistantMessageSent"]
      190 CALL                             R25 1 1
      191 GETIMPORT                        R26 K5 [require]
      193 GETTABLEKS                       R27 R0 K26 ["Hooks"]
      195 GETTABLEKS                       R27 R27 K36 ["useLogRequestJourney"]
      197 CALL                             R26 1 1
      198 GETIMPORT                        R27 K5 [require]
      200 GETTABLEKS                       R28 R0 K26 ["Hooks"]
      202 GETTABLEKS                       R28 R28 K37 ["useRunSlashCommand"]
      204 CALL                             R27 1 1
      205 GETIMPORT                        R28 K5 [require]
      207 GETTABLEKS                       R29 R0 K26 ["Hooks"]
      209 GETTABLEKS                       R29 R29 K38 ["useSettingsContext"]
      211 CALL                             R28 1 1
      212 GETIMPORT                        R29 K5 [require]
      214 GETTABLEKS                       R30 R0 K26 ["Hooks"]
      216 GETTABLEKS                       R30 R30 K39 ["useShowError"]
      218 CALL                             R29 1 1
      219 GETIMPORT                        R30 K5 [require]
      221 GETTABLEKS                       R31 R0 K26 ["Hooks"]
      223 GETTABLEKS                       R31 R31 K40 ["useThreadId"]
      225 CALL                             R30 1 1
      226 NEWTABLE                         R31 0 3
      228 GETTABLEKS                       R32 R13 K41 ["CLAUDE_API_KEY"]
      230 GETTABLEKS                       R33 R13 K42 ["GEMINI_API_KEY"]
      232 GETTABLEKS                       R34 R13 K43 ["OPENAI_API_KEY"]
      234 SETLIST                          R31 R32 3 [1]
      236 DUPCLOSURE                       R32 K44 [PROTO_0]
      237 CAPTURE                          VAL R7
      238 CAPTURE                          VAL R6
      239 DUPCLOSURE                       R33 K45 [PROTO_1]
      240 CAPTURE                          VAL R31
      241 DUPCLOSURE                       R34 K46 [PROTO_10]
      242 CAPTURE                          VAL R18
      243 CAPTURE                          VAL R17
      244 CAPTURE                          VAL R22
      245 CAPTURE                          VAL R27
      246 CAPTURE                          VAL R29
      247 CAPTURE                          VAL R30
      248 CAPTURE                          VAL R21
      249 CAPTURE                          VAL R20
      250 CAPTURE                          VAL R23
      251 CAPTURE                          VAL R19
      252 CAPTURE                          VAL R24
      253 CAPTURE                          VAL R25
      254 CAPTURE                          VAL R26
      255 CAPTURE                          VAL R28
      256 CAPTURE                          VAL R11
      257 CAPTURE                          VAL R9
      258 CAPTURE                          VAL R8
      259 CAPTURE                          VAL R1
      260 CAPTURE                          VAL R2
      261 CAPTURE                          VAL R3
      262 CAPTURE                          VAL R7
      263 CAPTURE                          VAL R6
      264 CAPTURE                          VAL R10
      265 CAPTURE                          VAL R12
      266 CAPTURE                          VAL R16
      267 CAPTURE                          VAL R4
      268 CAPTURE                          VAL R14
      269 CAPTURE                          VAL R15
      270 CAPTURE                          VAL R33
      271 RETURN                           R34 1
