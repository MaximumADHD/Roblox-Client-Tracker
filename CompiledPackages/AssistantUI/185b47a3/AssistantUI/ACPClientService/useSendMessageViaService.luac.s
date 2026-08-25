PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantCreditMeteringTelemetry"]
        7 JUMPIFNOT                        R1 ; [+1]
        8 JUMPIF                           R0 ; [+3]
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 RETURN                           R1 2
       12 GETTABLEKS                       R2 R0 K2 ["additionalUsageEnabled"]
       14 JUMPIFEQKB                       R2 TRUE ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 GETTABLEKS                       R3 R0 K3 ["dailyLimitSet"]
       20 JUMPIFEQKB                       R3 TRUE ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 RETURN                           R1 2

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["buildFramedSystemReminders"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

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
       14 DUPTABLE                         R2 K9 [{["errorType"] = "client_error", ["acpSessionId"]}]
       15 GETUPVAL                         R3 1
       16 JUMPIFNOT                        R3 ; [+3]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K8 ["acpSessionId"]
       20 SETTABLEKS                       R3 R2 K8 ["acpSessionId"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shouldEnableInputAfterTurn"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 DUPTABLE                         R3 K10 [{"threadId", "sessionId", "selectedModel", "assistantMode", "text", "images", "logUserMessageSent", "logAssistantMessageSent", "logRequestJourney", "showError"}]
        6 GETUPVAL                         R4 1
        7 SETTABLEKS                       R4 R3 K0 ["threadId"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K1 ["sessionId"]
       12 SETTABLEKS                       R4 R3 K1 ["sessionId"]
       14 GETUPVAL                         R4 3
       15 SETTABLEKS                       R4 R3 K2 ["selectedModel"]
       17 GETUPVAL                         R4 4
       18 SETTABLEKS                       R4 R3 K3 ["assistantMode"]
       20 GETUPVAL                         R4 5
       21 GETTABLEKS                       R4 R4 K4 ["text"]
       23 SETTABLEKS                       R4 R3 K4 ["text"]
       25 GETUPVAL                         R4 5
       26 GETTABLEKS                       R4 R4 K5 ["images"]
       28 SETTABLEKS                       R4 R3 K5 ["images"]
       30 GETUPVAL                         R4 6
       31 GETTABLEKS                       R4 R4 K11 ["get"]
       33 CALL                             R4 0 1
       34 GETTABLEKS                       R4 R4 K12 ["EventLogger"]
       36 GETTABLEKS                       R4 R4 K6 ["logUserMessageSent"]
       38 SETTABLEKS                       R4 R3 K6 ["logUserMessageSent"]
       40 GETUPVAL                         R4 7
       41 SETTABLEKS                       R4 R3 K7 ["logAssistantMessageSent"]
       43 GETUPVAL                         R4 8
       44 SETTABLEKS                       R4 R3 K8 ["logRequestJourney"]
       46 GETUPVAL                         R4 9
       47 SETTABLEKS                       R4 R3 K9 ["showError"]
       49 GETUPVAL                         R4 10
       50 GETTABLEKS                       R4 R4 K13 ["FFlagAssistantCreditMeteringTelemetry"]
       52 JUMPIFNOT                        R4 ; [+6]
       53 GETUPVAL                         R4 11
       54 SETTABLEKS                       R4 R3 K14 ["additionalUsageEnabled"]
       56 GETUPVAL                         R4 12
       57 SETTABLEKS                       R4 R3 K15 ["dailyLimitSet"]
       59 GETUPVAL                         R4 13
       60 GETTABLEKS                       R4 R4 K16 ["create"]
       62 MOVE                             R5 R3
       63 CALL                             R4 1 1
       64 GETUPVAL                         R5 14
       65 DUPTABLE                         R6 K32 [{"service", "sessionMonitor", "threadId", "acpSessionId", "setAcpSessionId", "addContent", "editContent", "apiKeys", "selectedModel", "selectedProvider", "assistantMode", "conversationSessionId", "onUserMessageAccepted", "onAssistantMessageFinished", "logRequestJourney", "showError", "resolveAllowedTools", "registerPromptController", "unregisterPromptController", "getSystemReminders"}]
       66 GETUPVAL                         R7 15
       67 SETTABLEKS                       R7 R6 K17 ["service"]
       69 GETUPVAL                         R7 16
       70 GETUPVAL                         R8 1
       71 CALL                             R7 1 1
       72 SETTABLEKS                       R7 R6 K18 ["sessionMonitor"]
       74 GETUPVAL                         R7 1
       75 SETTABLEKS                       R7 R6 K0 ["threadId"]
       77 GETUPVAL                         R7 17
       78 JUMPIFNOT                        R7 ; [+3]
       79 GETUPVAL                         R7 17
       80 GETTABLEKS                       R7 R7 K19 ["acpSessionId"]
       82 SETTABLEKS                       R7 R6 K19 ["acpSessionId"]
       84 NEWCLOSURE                       R7 P0
       85 CAPTURE                          UPVAL U18
       86 CAPTURE                          UPVAL U1
       87 SETTABLEKS                       R7 R6 K20 ["setAcpSessionId"]
       89 GETUPVAL                         R7 19
       90 SETTABLEKS                       R7 R6 K21 ["addContent"]
       92 GETUPVAL                         R7 20
       93 SETTABLEKS                       R7 R6 K22 ["editContent"]
       95 GETUPVAL                         R7 21
       96 GETUPVAL                         R8 22
       97 CALL                             R7 1 1
       98 SETTABLEKS                       R7 R6 K23 ["apiKeys"]
      100 GETUPVAL                         R7 3
      101 SETTABLEKS                       R7 R6 K2 ["selectedModel"]
      103 GETUPVAL                         R7 23
      104 SETTABLEKS                       R7 R6 K24 ["selectedProvider"]
      106 GETUPVAL                         R7 4
      107 SETTABLEKS                       R7 R6 K3 ["assistantMode"]
      109 GETUPVAL                         R7 2
      110 GETTABLEKS                       R7 R7 K1 ["sessionId"]
      112 SETTABLEKS                       R7 R6 K25 ["conversationSessionId"]
      114 GETTABLEKS                       R7 R4 K26 ["onUserMessageAccepted"]
      116 SETTABLEKS                       R7 R6 K26 ["onUserMessageAccepted"]
      118 GETTABLEKS                       R7 R4 K27 ["onAssistantMessageFinished"]
      120 SETTABLEKS                       R7 R6 K27 ["onAssistantMessageFinished"]
      122 GETTABLEKS                       R7 R4 K8 ["logRequestJourney"]
      124 SETTABLEKS                       R7 R6 K8 ["logRequestJourney"]
      126 GETTABLEKS                       R7 R4 K9 ["showError"]
      128 SETTABLEKS                       R7 R6 K9 ["showError"]
      130 GETUPVAL                         R7 24
      131 SETTABLEKS                       R7 R6 K28 ["resolveAllowedTools"]
      133 GETUPVAL                         R7 25
      134 SETTABLEKS                       R7 R6 K29 ["registerPromptController"]
      136 GETUPVAL                         R7 26
      137 SETTABLEKS                       R7 R6 K30 ["unregisterPromptController"]
      139 GETUPVAL                         R8 10
      140 GETTABLEKS                       R8 R8 K33 ["FFlagAssistantFixPlanModeInAcp"]
      142 JUMPIFNOT                        R8 ; [+6]
      143 GETUPVAL                         R8 27
      144 JUMPIFNOT                        R8 ; [+4]
      145 NEWCLOSURE                       R7 P1
      146 CAPTURE                          UPVAL U28
      147 CAPTURE                          UPVAL U27
      148 JUMP                             ; [+1]
      149 LOADNIL                          R7
      150 SETTABLEKS                       R7 R6 K31 ["getSystemReminders"]
      152 DUPTABLE                         R7 K39 [{"text", "retry", "previousMessageId", "images", "hidden", "userMessageAlreadyRendered", "additionalPromptText"}]
      153 JUMPIFNOT                        R2 ; [+2]
      154 LOADK                            R8 K40 [""]
      155 JUMP                             ; [+3]
      156 GETUPVAL                         R8 5
      157 GETTABLEKS                       R8 R8 K4 ["text"]
      159 SETTABLEKS                       R8 R7 K4 ["text"]
      161 GETUPVAL                         R8 5
      162 GETTABLEKS                       R8 R8 K34 ["retry"]
      164 SETTABLEKS                       R8 R7 K34 ["retry"]
      166 GETUPVAL                         R8 5
      167 GETTABLEKS                       R8 R8 K35 ["previousMessageId"]
      169 SETTABLEKS                       R8 R7 K35 ["previousMessageId"]
      171 JUMPIFNOT                        R2 ; [+2]
      172 LOADNIL                          R8
      173 JUMP                             ; [+3]
      174 GETUPVAL                         R8 5
      175 GETTABLEKS                       R8 R8 K5 ["images"]
      177 SETTABLEKS                       R8 R7 K5 ["images"]
      179 GETUPVAL                         R8 5
      180 GETTABLEKS                       R8 R8 K36 ["hidden"]
      182 SETTABLEKS                       R8 R7 K36 ["hidden"]
      184 GETUPVAL                         R8 29
      185 CALL                             R8 0 1
      186 SETTABLEKS                       R8 R7 K37 ["userMessageAlreadyRendered"]
      188 JUMPIFNOT                        R2 ; [+5]
      189 GETUPVAL                         R8 28
      190 GETTABLEKS                       R8 R8 K41 ["buildSkillContinuationReminder"]
      192 CALL                             R8 0 1
      193 JUMP                             ; [+5]
      194 GETUPVAL                         R8 28
      195 GETTABLEKS                       R8 R8 K42 ["buildSkillResultContext"]
      197 MOVE                             R9 R1
      198 CALL                             R8 1 1
      199 SETTABLEKS                       R8 R7 K38 ["additionalPromptText"]
      201 CALL                             R5 2 1
      202 GETTABLEKS                       R6 R5 K43 ["promise"]
      204 NEWCLOSURE                       R8 P2
      205 CAPTURE                          UPVAL U9
      206 CAPTURE                          UPVAL U17
      207 NAMECALL                         R6 R6 K44 ["catch"]
      209 CALL                             R6 2 1
      210 NEWCLOSURE                       R8 P3
      211 CAPTURE                          VAL R4
      212 CAPTURE                          UPVAL U30
      213 NAMECALL                         R6 R6 K45 ["finally"]
      215 CALL                             R6 2 0
      216 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPTABLE                         R3 K2 [{[1] = True}]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+14]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETIMPORT                        R1 K1 [warn]
        6 LOADK                            R3 K2 ["Input is disabled: %*"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K3 ["reasonDisabled"]
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 MOVE                             R2 R3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 2
       17 JUMPIF                           R1 ; [+5]
       18 GETIMPORT                        R1 K1 [warn]
       20 LOADK                            R2 K5 ["ACPClientService not available with AssistantHarnessSplit on"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 3
       24 JUMPIF                           R1 ; [+5]
       25 GETIMPORT                        R1 K1 [warn]
       27 LOADK                            R2 K6 ["AcpSessionMonitorContext not available with FFlagAssistantHarnessSplit on"]
       28 CALL                             R1 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R1 4
       31 LOADB                            R2 0
       32 CALL                             R1 1 0
       33 LOADB                            R2 1
       34 GETTABLEKS                       R3 R0 K7 ["previousMessageId"]
       36 JUMPIFNOTEQKNIL                  R3 ; [+4]
       38 GETTABLEKS                       R3 R0 K8 ["retry"]
       40 NOT                              R2 R3
       41 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       43 LOADK                            R3 K9 ["previousMessageId must be provided for retry messages"]
       44 GETIMPORT                        R1 K11 [assert]
       46 CALL                             R1 2 0
       47 GETUPVAL                         R1 5
       48 GETTABLEKS                       R1 R1 K12 ["createSlashCommandUserMessageRenderer"]
       50 MOVE                             R2 R0
       51 GETUPVAL                         R3 6
       52 GETUPVAL                         R4 7
       53 CALL                             R1 3 2
       54 NEWCLOSURE                       R3 P0
       55 CAPTURE                          UPVAL U8
       56 CAPTURE                          UPVAL U9
       57 CAPTURE                          UPVAL U10
       58 CAPTURE                          UPVAL U11
       59 CAPTURE                          UPVAL U12
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U13
       62 CAPTURE                          UPVAL U14
       63 CAPTURE                          UPVAL U15
       64 CAPTURE                          UPVAL U16
       65 CAPTURE                          UPVAL U17
       66 CAPTURE                          UPVAL U18
       67 CAPTURE                          UPVAL U19
       68 CAPTURE                          UPVAL U20
       69 CAPTURE                          UPVAL U21
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          UPVAL U22
       73 CAPTURE                          UPVAL U23
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          UPVAL U24
       76 CAPTURE                          UPVAL U25
       77 CAPTURE                          UPVAL U26
       78 CAPTURE                          UPVAL U27
       79 CAPTURE                          UPVAL U28
       80 CAPTURE                          UPVAL U29
       81 CAPTURE                          UPVAL U30
       82 CAPTURE                          UPVAL U31
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          VAL R2
       85 CAPTURE                          UPVAL U4
       86 GETUPVAL                         R4 32
       87 DUPTABLE                         R5 K18 [{"prompt", "images", "setInputEnabled", "onSlashCommandRecognized", "onContinueWithLLMWithResult"}]
       88 GETTABLEKS                       R6 R0 K19 ["text"]
       90 SETTABLEKS                       R6 R5 K13 ["prompt"]
       92 GETTABLEKS                       R6 R0 K14 ["images"]
       94 SETTABLEKS                       R6 R5 K14 ["images"]
       96 NEWCLOSURE                       R6 P1
       97 CAPTURE                          UPVAL U4
       98 SETTABLEKS                       R6 R5 K15 ["setInputEnabled"]
      100 SETTABLEKS                       R1 R5 K16 ["onSlashCommandRecognized"]
      102 SETTABLEKS                       R3 R5 K17 ["onContinueWithLLMWithResult"]
      104 CALL                             R4 1 1
      105 JUMPIFNOT                        R4 ; [+1]
      106 RETURN                           R0 0
      107 GETTABLEKS                       R5 R0 K8 ["retry"]
      109 JUMPIF                           R5 ; [+2]
      110 MOVE                             R5 R1
      111 CALL                             R5 0 0
      112 MOVE                             R5 R3
      113 CALL                             R5 0 0
      114 RETURN                           R0 0

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
       27 GETTABLEKS                       R14 R14 K0 ["useContext"]
       29 GETUPVAL                         R15 14
       30 GETTABLEKS                       R15 R15 K1 ["Context"]
       32 CALL                             R14 1 1
       33 GETUPVAL                         R15 13
       34 GETTABLEKS                       R15 R15 K0 ["useContext"]
       36 GETUPVAL                         R16 15
       37 GETTABLEKS                       R16 R16 K1 ["Context"]
       39 CALL                             R15 1 1
       40 GETUPVAL                         R16 13
       41 GETTABLEKS                       R16 R16 K0 ["useContext"]
       43 GETUPVAL                         R17 16
       44 GETTABLEKS                       R17 R17 K1 ["Context"]
       46 CALL                             R16 1 1
       47 GETUPVAL                         R17 13
       48 GETTABLEKS                       R17 R17 K0 ["useContext"]
       50 GETUPVAL                         R18 17
       51 GETTABLEKS                       R18 R18 K1 ["Context"]
       53 CALL                             R17 1 1
       54 GETUPVAL                         R18 13
       55 GETTABLEKS                       R18 R18 K0 ["useContext"]
       57 GETUPVAL                         R19 18
       58 GETTABLEKS                       R19 R19 K1 ["Context"]
       60 CALL                             R18 1 1
       61 GETTABLEKS                       R21 R18 K2 ["quotaSummary"]
       63 JUMPIFNOT                        R21 ; [+4]
       64 GETTABLEKS                       R21 R18 K2 ["quotaSummary"]
       66 GETTABLEKS                       R21 R21 K3 ["limitSettings"]
       68 GETUPVAL                         R22 19
       69 GETTABLEKS                       R22 R22 K4 ["FFlagAssistantCreditMetering"]
       71 JUMPIFNOT                        R22 ; [+5]
       72 GETUPVAL                         R22 19
       73 GETTABLEKS                       R22 R22 K5 ["FFlagAssistantCreditMeteringTelemetry"]
       75 JUMPIFNOT                        R22 ; [+1]
       76 JUMPIF                           R21 ; [+3]
       77 LOADNIL                          R19
       78 LOADNIL                          R20
       79 JUMP                             ; [+12]
       80 GETTABLEKS                       R22 R21 K6 ["additionalUsageEnabled"]
       82 JUMPIFEQKB                       R22 TRUE ; [+2]
       84 LOADB                            R19 0 +1
       85 LOADB                            R19 1
       86 GETTABLEKS                       R22 R21 K7 ["dailyLimitSet"]
       88 JUMPIFEQKB                       R22 TRUE ; [+2]
       90 LOADB                            R20 0 +1
       91 LOADB                            R20 1
       92 GETUPVAL                         R21 13
       93 GETTABLEKS                       R21 R21 K0 ["useContext"]
       95 GETUPVAL                         R22 20
       96 GETTABLEKS                       R22 R22 K1 ["Context"]
       98 CALL                             R21 1 1
       99 GETUPVAL                         R22 13
      100 GETTABLEKS                       R22 R22 K0 ["useContext"]
      102 GETUPVAL                         R23 21
      103 GETTABLEKS                       R23 R23 K1 ["Context"]
      105 CALL                             R22 1 1
      106 GETTABLEKS                       R23 R13 K8 ["getSetting"]
      108 GETTABLEKS                       R24 R14 K9 ["selectedModel"]
      110 GETTABLEKS                       R25 R14 K10 ["selectedProvider"]
      112 GETTABLEKS                       R26 R15 K11 ["inputEnabled"]
      114 GETTABLEKS                       R27 R15 K12 ["reasonDisabled"]
      116 GETTABLEKS                       R28 R16 K13 ["service"]
      118 GETTABLEKS                       R29 R16 K14 ["resolveAllowedTools"]
      120 GETTABLEKS                       R30 R17 K15 ["getSessionMonitor"]
      122 GETTABLEKS                       R31 R0 K16 ["setInputEnabled"]
      124 GETTABLEKS                       R32 R21 K17 ["registerPromptController"]
      126 GETTABLEKS                       R33 R21 K18 ["unregisterPromptController"]
      128 GETUPVAL                         R34 13
      129 GETTABLEKS                       R34 R34 K19 ["useCallback"]
      131 NEWCLOSURE                       R35 P0
      132 CAPTURE                          VAL R26
      133 CAPTURE                          VAL R27
      134 CAPTURE                          VAL R28
      135 CAPTURE                          VAL R30
      136 CAPTURE                          VAL R31
      137 CAPTURE                          UPVAL U22
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R2
      140 CAPTURE                          UPVAL U23
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R22
      143 CAPTURE                          VAL R24
      144 CAPTURE                          VAL R9
      145 CAPTURE                          UPVAL U24
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R5
      149 CAPTURE                          UPVAL U19
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R20
      152 CAPTURE                          UPVAL U25
      153 CAPTURE                          UPVAL U26
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R3
      157 CAPTURE                          UPVAL U27
      158 CAPTURE                          VAL R23
      159 CAPTURE                          VAL R25
      160 CAPTURE                          VAL R29
      161 CAPTURE                          VAL R32
      162 CAPTURE                          VAL R33
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R4
      165 NEWTABLE                         R36 0 26
      167 MOVE                             R37 R2
      168 MOVE                             R38 R1
      169 MOVE                             R39 R19
      170 MOVE                             R40 R9
      171 MOVE                             R41 R7
      172 MOVE                             R42 R20
      173 MOVE                             R43 R3
      174 MOVE                             R44 R8
      175 MOVE                             R45 R30
      176 MOVE                             R46 R23
      177 MOVE                             R47 R26
      178 MOVE                             R48 R11
      179 MOVE                             R49 R12
      180 MOVE                             R50 R27
      181 MOVE                             R51 R32
      182 MOVE                             R52 R29
      183 SETLIST                          R36 R37 16 [1]
      185 MOVE                             R37 R4
      186 MOVE                             R38 R24
      187 MOVE                             R39 R25
      188 MOVE                             R40 R28
      189 GETTABLEKS                       R41 R22 K20 ["sessionId"]
      191 MOVE                             R42 R31
      192 MOVE                             R43 R5
      193 MOVE                             R44 R10
      194 MOVE                             R45 R6
      195 MOVE                             R46 R33
      196 SETLIST                          R36 R37 10 [17]
      198 CALL                             R34 2 -1
      199 RETURN                           R34 -1

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
       51 GETTABLEKS                       R7 R5 K15 ["getIsSlashCommandViaAcp"]
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
      153 GETTABLEKS                       R21 R21 K30 ["useCurrentThread"]
      155 CALL                             R20 1 1
      156 GETIMPORT                        R21 K5 [require]
      158 GETTABLEKS                       R22 R0 K26 ["Hooks"]
      160 GETTABLEKS                       R22 R22 K31 ["useEditContent"]
      162 CALL                             R21 1 1
      163 GETIMPORT                        R22 K5 [require]
      165 GETTABLEKS                       R23 R0 K26 ["Hooks"]
      167 GETTABLEKS                       R23 R23 K32 ["useEditThread"]
      169 CALL                             R22 1 1
      170 GETIMPORT                        R23 K5 [require]
      172 GETTABLEKS                       R24 R0 K26 ["Hooks"]
      174 GETTABLEKS                       R24 R24 K33 ["useLLMSystemReminderGetter"]
      176 CALL                             R23 1 1
      177 GETIMPORT                        R24 K5 [require]
      179 GETTABLEKS                       R25 R0 K26 ["Hooks"]
      181 GETTABLEKS                       R25 R25 K34 ["useLogAssistantMessageSent"]
      183 CALL                             R24 1 1
      184 GETIMPORT                        R25 K5 [require]
      186 GETTABLEKS                       R26 R0 K26 ["Hooks"]
      188 GETTABLEKS                       R26 R26 K35 ["useLogRequestJourney"]
      190 CALL                             R25 1 1
      191 GETIMPORT                        R26 K5 [require]
      193 GETTABLEKS                       R27 R0 K26 ["Hooks"]
      195 GETTABLEKS                       R27 R27 K36 ["useRunSlashCommand"]
      197 CALL                             R26 1 1
      198 GETIMPORT                        R27 K5 [require]
      200 GETTABLEKS                       R28 R0 K26 ["Hooks"]
      202 GETTABLEKS                       R28 R28 K37 ["useSettingsContext"]
      204 CALL                             R27 1 1
      205 GETIMPORT                        R28 K5 [require]
      207 GETTABLEKS                       R29 R0 K26 ["Hooks"]
      209 GETTABLEKS                       R29 R29 K38 ["useShowError"]
      211 CALL                             R28 1 1
      212 GETIMPORT                        R29 K5 [require]
      214 GETTABLEKS                       R30 R0 K26 ["Hooks"]
      216 GETTABLEKS                       R30 R30 K39 ["useThreadId"]
      218 CALL                             R29 1 1
      219 NEWTABLE                         R30 0 3
      221 GETTABLEKS                       R31 R13 K40 ["CLAUDE_API_KEY"]
      223 GETTABLEKS                       R32 R13 K41 ["GEMINI_API_KEY"]
      225 GETTABLEKS                       R33 R13 K42 ["OPENAI_API_KEY"]
      227 SETLIST                          R30 R31 3 [1]
      229 DUPCLOSURE                       R31 K43 [PROTO_0]
      230 CAPTURE                          VAL R6
      231 DUPCLOSURE                       R32 K44 [PROTO_1]
      232 CAPTURE                          VAL R30
      233 DUPCLOSURE                       R33 K45 [PROTO_10]
      234 CAPTURE                          VAL R18
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R21
      237 CAPTURE                          VAL R26
      238 CAPTURE                          VAL R28
      239 CAPTURE                          VAL R29
      240 CAPTURE                          VAL R20
      241 CAPTURE                          VAL R22
      242 CAPTURE                          VAL R19
      243 CAPTURE                          VAL R23
      244 CAPTURE                          VAL R24
      245 CAPTURE                          VAL R25
      246 CAPTURE                          VAL R27
      247 CAPTURE                          VAL R11
      248 CAPTURE                          VAL R9
      249 CAPTURE                          VAL R8
      250 CAPTURE                          VAL R1
      251 CAPTURE                          VAL R2
      252 CAPTURE                          VAL R3
      253 CAPTURE                          VAL R6
      254 CAPTURE                          VAL R10
      255 CAPTURE                          VAL R12
      256 CAPTURE                          VAL R16
      257 CAPTURE                          VAL R7
      258 CAPTURE                          VAL R4
      259 CAPTURE                          VAL R14
      260 CAPTURE                          VAL R15
      261 CAPTURE                          VAL R32
      262 RETURN                           R33 1
