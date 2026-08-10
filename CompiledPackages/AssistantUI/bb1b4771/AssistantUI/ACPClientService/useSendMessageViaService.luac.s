PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["acpSessionId"]
        3 MOVE                             R1 R0
        4 DUPTABLE                         R2 K3 [{["rawTransformValues"] = True}]
        5 RETURN                           R1 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["buildFramedSystemReminders"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shouldEnableInputAfterTurn"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R2 0
        4 CALL                             R2 0 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["create"]
        8 DUPTABLE                         R4 K11 [{"threadId", "sessionId", "selectedModel", "assistantMode", "text", "images", "logUserMessageSent", "logAssistantMessageSent", "logRequestJourney", "showError"}]
        9 GETUPVAL                         R5 2
       10 SETTABLEKS                       R5 R4 K1 ["threadId"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K2 ["sessionId"]
       15 SETTABLEKS                       R5 R4 K2 ["sessionId"]
       17 GETUPVAL                         R5 4
       18 SETTABLEKS                       R5 R4 K3 ["selectedModel"]
       20 GETUPVAL                         R5 5
       21 SETTABLEKS                       R5 R4 K4 ["assistantMode"]
       23 GETUPVAL                         R5 6
       24 GETTABLEKS                       R5 R5 K5 ["text"]
       26 SETTABLEKS                       R5 R4 K5 ["text"]
       28 GETUPVAL                         R5 6
       29 GETTABLEKS                       R5 R5 K6 ["images"]
       31 SETTABLEKS                       R5 R4 K6 ["images"]
       33 GETUPVAL                         R5 7
       34 GETTABLEKS                       R5 R5 K12 ["get"]
       36 CALL                             R5 0 1
       37 GETTABLEKS                       R5 R5 K13 ["EventLogger"]
       39 GETTABLEKS                       R5 R5 K7 ["logUserMessageSent"]
       41 SETTABLEKS                       R5 R4 K7 ["logUserMessageSent"]
       43 GETUPVAL                         R5 8
       44 SETTABLEKS                       R5 R4 K8 ["logAssistantMessageSent"]
       46 GETUPVAL                         R5 9
       47 SETTABLEKS                       R5 R4 K9 ["logRequestJourney"]
       49 GETUPVAL                         R5 10
       50 SETTABLEKS                       R5 R4 K10 ["showError"]
       52 CALL                             R3 1 1
       53 GETUPVAL                         R4 11
       54 DUPTABLE                         R5 K29 [{"service", "sessionMonitor", "threadId", "acpSessionId", "setAcpSessionId", "addContent", "editContent", "apiKeys", "selectedModel", "selectedProvider", "assistantMode", "conversationSessionId", "onUserMessageAccepted", "onAssistantMessageFinished", "logRequestJourney", "showError", "resolveAllowedTools", "registerPromptController", "unregisterPromptController", "getSystemReminders"}]
       55 GETUPVAL                         R6 12
       56 SETTABLEKS                       R6 R5 K14 ["service"]
       58 GETUPVAL                         R6 13
       59 GETUPVAL                         R7 2
       60 CALL                             R6 1 1
       61 SETTABLEKS                       R6 R5 K15 ["sessionMonitor"]
       63 GETUPVAL                         R6 2
       64 SETTABLEKS                       R6 R5 K1 ["threadId"]
       66 GETUPVAL                         R6 14
       67 JUMPIFNOT                        R6 ; [+3]
       68 GETUPVAL                         R6 14
       69 GETTABLEKS                       R6 R6 K16 ["acpSessionId"]
       71 SETTABLEKS                       R6 R5 K16 ["acpSessionId"]
       73 NEWCLOSURE                       R6 P0
       74 CAPTURE                          UPVAL U15
       75 CAPTURE                          UPVAL U2
       76 SETTABLEKS                       R6 R5 K17 ["setAcpSessionId"]
       78 GETUPVAL                         R6 16
       79 SETTABLEKS                       R6 R5 K18 ["addContent"]
       81 GETUPVAL                         R6 17
       82 SETTABLEKS                       R6 R5 K19 ["editContent"]
       84 GETUPVAL                         R6 18
       85 GETUPVAL                         R7 19
       86 CALL                             R6 1 1
       87 SETTABLEKS                       R6 R5 K20 ["apiKeys"]
       89 GETUPVAL                         R6 4
       90 SETTABLEKS                       R6 R5 K3 ["selectedModel"]
       92 GETUPVAL                         R6 20
       93 SETTABLEKS                       R6 R5 K21 ["selectedProvider"]
       95 GETUPVAL                         R6 5
       96 SETTABLEKS                       R6 R5 K4 ["assistantMode"]
       98 GETUPVAL                         R6 3
       99 GETTABLEKS                       R6 R6 K2 ["sessionId"]
      101 SETTABLEKS                       R6 R5 K22 ["conversationSessionId"]
      103 GETTABLEKS                       R6 R3 K23 ["onUserMessageAccepted"]
      105 SETTABLEKS                       R6 R5 K23 ["onUserMessageAccepted"]
      107 GETTABLEKS                       R6 R3 K24 ["onAssistantMessageFinished"]
      109 SETTABLEKS                       R6 R5 K24 ["onAssistantMessageFinished"]
      111 GETTABLEKS                       R6 R3 K9 ["logRequestJourney"]
      113 SETTABLEKS                       R6 R5 K9 ["logRequestJourney"]
      115 GETTABLEKS                       R6 R3 K10 ["showError"]
      117 SETTABLEKS                       R6 R5 K10 ["showError"]
      119 GETUPVAL                         R6 21
      120 SETTABLEKS                       R6 R5 K25 ["resolveAllowedTools"]
      122 GETUPVAL                         R6 22
      123 SETTABLEKS                       R6 R5 K26 ["registerPromptController"]
      125 GETUPVAL                         R6 23
      126 SETTABLEKS                       R6 R5 K27 ["unregisterPromptController"]
      128 GETUPVAL                         R7 24
      129 GETTABLEKS                       R7 R7 K30 ["FFlagAssistantFixPlanModeInAcp"]
      131 JUMPIFNOT                        R7 ; [+6]
      132 GETUPVAL                         R7 25
      133 JUMPIFNOT                        R7 ; [+4]
      134 NEWCLOSURE                       R6 P1
      135 CAPTURE                          UPVAL U26
      136 CAPTURE                          UPVAL U25
      137 JUMP                             ; [+1]
      138 LOADNIL                          R6
      139 SETTABLEKS                       R6 R5 K28 ["getSystemReminders"]
      141 DUPTABLE                         R6 K36 [{"text", "retry", "previousMessageId", "images", "hidden", "userMessageAlreadyRendered", "additionalPromptText"}]
      142 JUMPIFNOT                        R2 ; [+2]
      143 LOADK                            R7 K37 [""]
      144 JUMP                             ; [+3]
      145 GETUPVAL                         R7 6
      146 GETTABLEKS                       R7 R7 K5 ["text"]
      148 SETTABLEKS                       R7 R6 K5 ["text"]
      150 GETUPVAL                         R7 6
      151 GETTABLEKS                       R7 R7 K31 ["retry"]
      153 SETTABLEKS                       R7 R6 K31 ["retry"]
      155 GETUPVAL                         R7 6
      156 GETTABLEKS                       R7 R7 K32 ["previousMessageId"]
      158 SETTABLEKS                       R7 R6 K32 ["previousMessageId"]
      160 JUMPIFNOT                        R2 ; [+2]
      161 LOADNIL                          R7
      162 JUMP                             ; [+3]
      163 GETUPVAL                         R7 6
      164 GETTABLEKS                       R7 R7 K6 ["images"]
      166 SETTABLEKS                       R7 R6 K6 ["images"]
      168 GETUPVAL                         R7 6
      169 GETTABLEKS                       R7 R7 K33 ["hidden"]
      171 SETTABLEKS                       R7 R6 K33 ["hidden"]
      173 GETUPVAL                         R7 27
      174 CALL                             R7 0 1
      175 SETTABLEKS                       R7 R6 K34 ["userMessageAlreadyRendered"]
      177 JUMPIFNOT                        R2 ; [+5]
      178 GETUPVAL                         R7 26
      179 GETTABLEKS                       R7 R7 K38 ["buildSkillContinuationReminder"]
      181 CALL                             R7 0 1
      182 JUMP                             ; [+5]
      183 GETUPVAL                         R7 26
      184 GETTABLEKS                       R7 R7 K39 ["buildSkillResultContext"]
      186 MOVE                             R8 R1
      187 CALL                             R7 1 1
      188 SETTABLEKS                       R7 R6 K35 ["additionalPromptText"]
      190 CALL                             R4 2 1
      191 GETTABLEKS                       R5 R4 K40 ["promise"]
      193 NEWCLOSURE                       R7 P2
      194 CAPTURE                          UPVAL U10
      195 CAPTURE                          UPVAL U14
      196 NAMECALL                         R5 R5 K41 ["catch"]
      198 CALL                             R5 2 1
      199 NEWCLOSURE                       R7 P3
      200 CAPTURE                          VAL R3
      201 CAPTURE                          UPVAL U28
      202 NAMECALL                         R5 R5 K42 ["finally"]
      204 CALL                             R5 2 0
      205 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPTABLE                         R3 K2 [{[1] = True}]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_8:
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
       60 CAPTURE                          UPVAL U13
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U14
       63 CAPTURE                          UPVAL U15
       64 CAPTURE                          UPVAL U16
       65 CAPTURE                          UPVAL U17
       66 CAPTURE                          UPVAL U18
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U19
       70 CAPTURE                          UPVAL U20
       71 CAPTURE                          UPVAL U7
       72 CAPTURE                          UPVAL U21
       73 CAPTURE                          UPVAL U22
       74 CAPTURE                          UPVAL U23
       75 CAPTURE                          UPVAL U24
       76 CAPTURE                          UPVAL U25
       77 CAPTURE                          UPVAL U26
       78 CAPTURE                          UPVAL U27
       79 CAPTURE                          UPVAL U28
       80 CAPTURE                          UPVAL U29
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R2
       83 CAPTURE                          UPVAL U4
       84 GETUPVAL                         R4 30
       85 DUPTABLE                         R5 K18 [{"prompt", "images", "setInputEnabled", "onSlashCommandRecognized", "onContinueWithLLMWithResult"}]
       86 GETTABLEKS                       R6 R0 K19 ["text"]
       88 SETTABLEKS                       R6 R5 K13 ["prompt"]
       90 GETTABLEKS                       R6 R0 K14 ["images"]
       92 SETTABLEKS                       R6 R5 K14 ["images"]
       94 NEWCLOSURE                       R6 P1
       95 CAPTURE                          UPVAL U4
       96 SETTABLEKS                       R6 R5 K15 ["setInputEnabled"]
       98 SETTABLEKS                       R1 R5 K16 ["onSlashCommandRecognized"]
      100 SETTABLEKS                       R3 R5 K17 ["onContinueWithLLMWithResult"]
      102 CALL                             R4 1 1
      103 JUMPIFNOT                        R4 ; [+1]
      104 RETURN                           R0 0
      105 GETTABLEKS                       R5 R0 K8 ["retry"]
      107 JUMPIF                           R5 ; [+2]
      108 MOVE                             R5 R1
      109 CALL                             R5 0 0
      110 MOVE                             R5 R3
      111 CALL                             R5 0 0
      112 RETURN                           R0 0

PROTO_9:
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
       61 GETUPVAL                         R19 13
       62 GETTABLEKS                       R19 R19 K0 ["useContext"]
       64 GETUPVAL                         R20 19
       65 GETTABLEKS                       R20 R20 K1 ["Context"]
       67 CALL                             R19 1 1
       68 GETTABLEKS                       R20 R13 K2 ["getSetting"]
       70 GETTABLEKS                       R21 R14 K3 ["selectedModel"]
       72 GETTABLEKS                       R22 R14 K4 ["selectedProvider"]
       74 GETTABLEKS                       R23 R15 K5 ["inputEnabled"]
       76 GETTABLEKS                       R24 R15 K6 ["reasonDisabled"]
       78 GETTABLEKS                       R25 R16 K7 ["service"]
       80 GETTABLEKS                       R26 R16 K8 ["resolveAllowedTools"]
       82 GETTABLEKS                       R27 R17 K9 ["getSessionMonitor"]
       84 GETTABLEKS                       R28 R0 K10 ["setInputEnabled"]
       86 GETTABLEKS                       R29 R18 K11 ["registerPromptController"]
       88 GETTABLEKS                       R30 R18 K12 ["unregisterPromptController"]
       90 GETUPVAL                         R31 13
       91 GETTABLEKS                       R31 R31 K13 ["useCallback"]
       93 NEWCLOSURE                       R32 P0
       94 CAPTURE                          VAL R23
       95 CAPTURE                          VAL R24
       96 CAPTURE                          VAL R25
       97 CAPTURE                          VAL R27
       98 CAPTURE                          VAL R28
       99 CAPTURE                          UPVAL U20
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R2
      102 CAPTURE                          UPVAL U21
      103 CAPTURE                          UPVAL U22
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R19
      106 CAPTURE                          VAL R21
      107 CAPTURE                          VAL R9
      108 CAPTURE                          UPVAL U23
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R5
      112 CAPTURE                          UPVAL U24
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R3
      116 CAPTURE                          UPVAL U25
      117 CAPTURE                          VAL R20
      118 CAPTURE                          VAL R22
      119 CAPTURE                          VAL R26
      120 CAPTURE                          VAL R29
      121 CAPTURE                          VAL R30
      122 CAPTURE                          UPVAL U26
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R4
      125 NEWTABLE                         R33 0 24
      127 MOVE                             R34 R2
      128 MOVE                             R35 R1
      129 MOVE                             R36 R9
      130 MOVE                             R37 R7
      131 MOVE                             R38 R3
      132 MOVE                             R39 R8
      133 MOVE                             R40 R27
      134 MOVE                             R41 R20
      135 MOVE                             R42 R23
      136 MOVE                             R43 R11
      137 MOVE                             R44 R12
      138 MOVE                             R45 R24
      139 MOVE                             R46 R29
      140 MOVE                             R47 R26
      141 MOVE                             R48 R4
      142 MOVE                             R49 R21
      143 SETLIST                          R33 R34 16 [1]
      145 MOVE                             R34 R22
      146 MOVE                             R35 R25
      147 GETTABLEKS                       R36 R19 K14 ["sessionId"]
      149 MOVE                             R37 R28
      150 MOVE                             R38 R5
      151 MOVE                             R39 R10
      152 MOVE                             R40 R6
      153 MOVE                             R41 R30
      154 SETLIST                          R33 R34 8 [17]
      156 CALL                             R31 2 -1
      157 RETURN                           R31 -1

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
       27 GETTABLEKS                       R4 R0 K10 ["Guest"]
       29 GETTABLEKS                       R4 R4 K11 ["Environment"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["FlagUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Flags"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K14 ["getIsSlashCommandViaAcp"]
       44 GETIMPORT                        R7 K5 [require]
       46 GETTABLEKS                       R8 R0 K6 ["Components"]
       48 GETTABLEKS                       R8 R8 K7 ["Contexts"]
       50 GETTABLEKS                       R8 R8 K15 ["InputStateContext"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R0 K6 ["Components"]
       57 GETTABLEKS                       R9 R9 K7 ["Contexts"]
       59 GETTABLEKS                       R9 R9 K16 ["LLMProviderSelectionContext"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K5 [require]
       64 GETTABLEKS                       R10 R0 K6 ["Components"]
       66 GETTABLEKS                       R10 R10 K7 ["Contexts"]
       68 GETTABLEKS                       R10 R10 K17 ["OngoingAcpPromptContext"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K5 [require]
       73 GETTABLEKS                       R11 R0 K18 ["Parent"]
       75 GETTABLEKS                       R11 R11 K19 ["React"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K5 [require]
       80 GETTABLEKS                       R12 R0 K6 ["Components"]
       82 GETTABLEKS                       R12 R12 K7 ["Contexts"]
       84 GETTABLEKS                       R12 R12 K20 ["SessionIdContext"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K5 [require]
       89 GETTABLEKS                       R13 R0 K21 ["Types"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K5 [require]
       94 GETIMPORT                        R14 K1 [script]
       96 GETTABLEKS                       R14 R14 K18 ["Parent"]
       98 GETTABLEKS                       R14 R14 K22 ["createTelemetryCallbacks"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K5 [require]
      103 GETIMPORT                        R15 K1 [script]
      105 GETTABLEKS                       R15 R15 K18 ["Parent"]
      107 GETTABLEKS                       R15 R15 K23 ["sendMessage"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K5 [require]
      112 GETIMPORT                        R16 K1 [script]
      114 GETTABLEKS                       R16 R16 K18 ["Parent"]
      116 GETTABLEKS                       R16 R16 K24 ["sendMessageViaServiceHelpers"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K5 [require]
      121 GETTABLEKS                       R17 R0 K25 ["Hooks"]
      123 GETTABLEKS                       R17 R17 K26 ["useAddContent"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K5 [require]
      128 GETTABLEKS                       R18 R0 K25 ["Hooks"]
      130 GETTABLEKS                       R18 R18 K27 ["useAddMessage"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K5 [require]
      135 GETTABLEKS                       R19 R0 K25 ["Hooks"]
      137 GETTABLEKS                       R19 R19 K28 ["useAssistantMode"]
      139 CALL                             R18 1 1
      140 GETIMPORT                        R19 K5 [require]
      142 GETTABLEKS                       R20 R0 K25 ["Hooks"]
      144 GETTABLEKS                       R20 R20 K29 ["useCurrentThread"]
      146 CALL                             R19 1 1
      147 GETIMPORT                        R20 K5 [require]
      149 GETTABLEKS                       R21 R0 K25 ["Hooks"]
      151 GETTABLEKS                       R21 R21 K30 ["useEditContent"]
      153 CALL                             R20 1 1
      154 GETIMPORT                        R21 K5 [require]
      156 GETTABLEKS                       R22 R0 K25 ["Hooks"]
      158 GETTABLEKS                       R22 R22 K31 ["useEditThread"]
      160 CALL                             R21 1 1
      161 GETIMPORT                        R22 K5 [require]
      163 GETTABLEKS                       R23 R0 K25 ["Hooks"]
      165 GETTABLEKS                       R23 R23 K32 ["useLLMSystemReminderGetter"]
      167 CALL                             R22 1 1
      168 GETIMPORT                        R23 K5 [require]
      170 GETTABLEKS                       R24 R0 K25 ["Hooks"]
      172 GETTABLEKS                       R24 R24 K33 ["useLogAssistantMessageSent"]
      174 CALL                             R23 1 1
      175 GETIMPORT                        R24 K5 [require]
      177 GETTABLEKS                       R25 R0 K25 ["Hooks"]
      179 GETTABLEKS                       R25 R25 K34 ["useLogRequestJourney"]
      181 CALL                             R24 1 1
      182 GETIMPORT                        R25 K5 [require]
      184 GETTABLEKS                       R26 R0 K25 ["Hooks"]
      186 GETTABLEKS                       R26 R26 K35 ["useRunSlashCommand"]
      188 CALL                             R25 1 1
      189 GETIMPORT                        R26 K5 [require]
      191 GETTABLEKS                       R27 R0 K25 ["Hooks"]
      193 GETTABLEKS                       R27 R27 K36 ["useSettingsContext"]
      195 CALL                             R26 1 1
      196 GETIMPORT                        R27 K5 [require]
      198 GETTABLEKS                       R28 R0 K25 ["Hooks"]
      200 GETTABLEKS                       R28 R28 K37 ["useShowError"]
      202 CALL                             R27 1 1
      203 GETIMPORT                        R28 K5 [require]
      205 GETTABLEKS                       R29 R0 K25 ["Hooks"]
      207 GETTABLEKS                       R29 R29 K38 ["useThreadId"]
      209 CALL                             R28 1 1
      210 NEWTABLE                         R29 0 3
      212 GETTABLEKS                       R30 R12 K39 ["CLAUDE_API_KEY"]
      214 GETTABLEKS                       R31 R12 K40 ["GEMINI_API_KEY"]
      216 GETTABLEKS                       R32 R12 K41 ["OPENAI_API_KEY"]
      218 SETLIST                          R29 R30 3 [1]
      220 DUPCLOSURE                       R30 K42 [PROTO_0]
      221 CAPTURE                          VAL R29
      222 DUPCLOSURE                       R31 K43 [PROTO_9]
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R16
      225 CAPTURE                          VAL R20
      226 CAPTURE                          VAL R25
      227 CAPTURE                          VAL R27
      228 CAPTURE                          VAL R28
      229 CAPTURE                          VAL R19
      230 CAPTURE                          VAL R21
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R22
      233 CAPTURE                          VAL R23
      234 CAPTURE                          VAL R24
      235 CAPTURE                          VAL R26
      236 CAPTURE                          VAL R10
      237 CAPTURE                          VAL R8
      238 CAPTURE                          VAL R7
      239 CAPTURE                          VAL R1
      240 CAPTURE                          VAL R2
      241 CAPTURE                          VAL R9
      242 CAPTURE                          VAL R11
      243 CAPTURE                          VAL R15
      244 CAPTURE                          VAL R6
      245 CAPTURE                          VAL R13
      246 CAPTURE                          VAL R3
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R30
      249 CAPTURE                          VAL R5
      250 RETURN                           R31 1
