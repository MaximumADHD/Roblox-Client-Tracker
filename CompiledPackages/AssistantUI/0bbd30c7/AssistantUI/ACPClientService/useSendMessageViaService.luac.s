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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["create"]
        3 DUPTABLE                         R3 K11 [{"threadId", "sessionId", "selectedModel", "assistantMode", "text", "images", "logUserMessageSent", "logAssistantMessageSent", "logRequestJourney", "showError"}]
        4 GETUPVAL                         R4 1
        5 SETTABLEKS                       R4 R3 K1 ["threadId"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["sessionId"]
       10 SETTABLEKS                       R4 R3 K2 ["sessionId"]
       12 GETUPVAL                         R4 3
       13 SETTABLEKS                       R4 R3 K3 ["selectedModel"]
       15 GETUPVAL                         R4 4
       16 SETTABLEKS                       R4 R3 K4 ["assistantMode"]
       18 GETUPVAL                         R4 5
       19 GETTABLEKS                       R4 R4 K5 ["text"]
       21 SETTABLEKS                       R4 R3 K5 ["text"]
       23 GETUPVAL                         R4 5
       24 GETTABLEKS                       R4 R4 K6 ["images"]
       26 SETTABLEKS                       R4 R3 K6 ["images"]
       28 GETUPVAL                         R4 6
       29 GETTABLEKS                       R4 R4 K12 ["get"]
       31 CALL                             R4 0 1
       32 GETTABLEKS                       R4 R4 K13 ["EventLogger"]
       34 GETTABLEKS                       R4 R4 K7 ["logUserMessageSent"]
       36 SETTABLEKS                       R4 R3 K7 ["logUserMessageSent"]
       38 GETUPVAL                         R4 7
       39 SETTABLEKS                       R4 R3 K8 ["logAssistantMessageSent"]
       41 GETUPVAL                         R4 8
       42 SETTABLEKS                       R4 R3 K9 ["logRequestJourney"]
       44 GETUPVAL                         R4 9
       45 SETTABLEKS                       R4 R3 K10 ["showError"]
       47 CALL                             R2 1 1
       48 GETUPVAL                         R3 10
       49 DUPTABLE                         R4 K29 [{"service", "threadId", "acpSessionId", "setAcpSessionId", "addMessage", "addContent", "editContent", "apiKeys", "selectedModel", "selectedProvider", "assistantMode", "conversationSessionId", "onUserMessageAccepted", "onAssistantMessageFinished", "logRequestJourney", "showError", "resolveAllowedTools", "registerPromptController", "unregisterPromptController", "getSystemReminders"}]
       50 GETUPVAL                         R5 11
       51 SETTABLEKS                       R5 R4 K14 ["service"]
       53 GETUPVAL                         R5 1
       54 SETTABLEKS                       R5 R4 K1 ["threadId"]
       56 GETUPVAL                         R5 12
       57 JUMPIFNOT                        R5 ; [+3]
       58 GETUPVAL                         R5 12
       59 GETTABLEKS                       R5 R5 K15 ["acpSessionId"]
       61 SETTABLEKS                       R5 R4 K15 ["acpSessionId"]
       63 NEWCLOSURE                       R5 P0
       64 CAPTURE                          UPVAL U13
       65 CAPTURE                          UPVAL U1
       66 SETTABLEKS                       R5 R4 K16 ["setAcpSessionId"]
       68 GETUPVAL                         R5 14
       69 SETTABLEKS                       R5 R4 K17 ["addMessage"]
       71 GETUPVAL                         R5 15
       72 SETTABLEKS                       R5 R4 K18 ["addContent"]
       74 GETUPVAL                         R5 16
       75 SETTABLEKS                       R5 R4 K19 ["editContent"]
       77 GETUPVAL                         R5 17
       78 GETUPVAL                         R6 18
       79 CALL                             R5 1 1
       80 SETTABLEKS                       R5 R4 K20 ["apiKeys"]
       82 GETUPVAL                         R5 3
       83 SETTABLEKS                       R5 R4 K3 ["selectedModel"]
       85 GETUPVAL                         R5 19
       86 SETTABLEKS                       R5 R4 K21 ["selectedProvider"]
       88 GETUPVAL                         R5 4
       89 SETTABLEKS                       R5 R4 K4 ["assistantMode"]
       91 GETUPVAL                         R5 2
       92 GETTABLEKS                       R5 R5 K2 ["sessionId"]
       94 SETTABLEKS                       R5 R4 K22 ["conversationSessionId"]
       96 GETTABLEKS                       R5 R2 K23 ["onUserMessageAccepted"]
       98 SETTABLEKS                       R5 R4 K23 ["onUserMessageAccepted"]
      100 GETTABLEKS                       R5 R2 K24 ["onAssistantMessageFinished"]
      102 SETTABLEKS                       R5 R4 K24 ["onAssistantMessageFinished"]
      104 GETTABLEKS                       R5 R2 K9 ["logRequestJourney"]
      106 SETTABLEKS                       R5 R4 K9 ["logRequestJourney"]
      108 GETTABLEKS                       R5 R2 K10 ["showError"]
      110 SETTABLEKS                       R5 R4 K10 ["showError"]
      112 GETUPVAL                         R5 20
      113 SETTABLEKS                       R5 R4 K25 ["resolveAllowedTools"]
      115 GETUPVAL                         R5 21
      116 SETTABLEKS                       R5 R4 K26 ["registerPromptController"]
      118 GETUPVAL                         R5 22
      119 SETTABLEKS                       R5 R4 K27 ["unregisterPromptController"]
      121 GETUPVAL                         R6 23
      122 GETTABLEKS                       R6 R6 K30 ["FFlagAssistantFixPlanModeInAcp"]
      124 JUMPIFNOT                        R6 ; [+6]
      125 GETUPVAL                         R6 24
      126 JUMPIFNOT                        R6 ; [+4]
      127 NEWCLOSURE                       R5 P1
      128 CAPTURE                          UPVAL U25
      129 CAPTURE                          UPVAL U24
      130 JUMP                             ; [+1]
      131 LOADNIL                          R5
      132 SETTABLEKS                       R5 R4 K28 ["getSystemReminders"]
      134 DUPTABLE                         R5 K36 [{"text", "retry", "previousMessageId", "images", "hidden", "userMessageAlreadyRendered", "additionalPromptText"}]
      135 GETUPVAL                         R6 5
      136 GETTABLEKS                       R6 R6 K5 ["text"]
      138 SETTABLEKS                       R6 R5 K5 ["text"]
      140 GETUPVAL                         R6 5
      141 GETTABLEKS                       R6 R6 K31 ["retry"]
      143 SETTABLEKS                       R6 R5 K31 ["retry"]
      145 GETUPVAL                         R6 5
      146 GETTABLEKS                       R6 R6 K32 ["previousMessageId"]
      148 SETTABLEKS                       R6 R5 K32 ["previousMessageId"]
      150 GETUPVAL                         R6 5
      151 GETTABLEKS                       R6 R6 K6 ["images"]
      153 SETTABLEKS                       R6 R5 K6 ["images"]
      155 GETUPVAL                         R6 5
      156 GETTABLEKS                       R6 R6 K33 ["hidden"]
      158 SETTABLEKS                       R6 R5 K33 ["hidden"]
      160 GETUPVAL                         R6 26
      161 CALL                             R6 0 1
      162 SETTABLEKS                       R6 R5 K34 ["userMessageAlreadyRendered"]
      164 GETUPVAL                         R6 25
      165 GETTABLEKS                       R6 R6 K37 ["buildSkillResultContext"]
      167 MOVE                             R7 R1
      168 CALL                             R6 1 1
      169 SETTABLEKS                       R6 R5 K35 ["additionalPromptText"]
      171 CALL                             R3 2 1
      172 GETTABLEKS                       R4 R3 K38 ["promise"]
      174 NEWCLOSURE                       R6 P2
      175 CAPTURE                          UPVAL U9
      176 CAPTURE                          UPVAL U12
      177 NAMECALL                         R4 R4 K39 ["catch"]
      179 CALL                             R4 2 1
      180 NEWCLOSURE                       R6 P3
      181 CAPTURE                          VAL R2
      182 CAPTURE                          UPVAL U27
      183 NAMECALL                         R4 R4 K40 ["finally"]
      185 CALL                             R4 2 0
      186 RETURN                           R0 0

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
       24 LOADB                            R2 0
       25 CALL                             R1 1 0
       26 LOADB                            R2 1
       27 GETTABLEKS                       R3 R0 K6 ["previousMessageId"]
       29 JUMPIFNOTEQKNIL                  R3 ; [+4]
       31 GETTABLEKS                       R3 R0 K7 ["retry"]
       33 NOT                              R2 R3
       34 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       36 LOADK                            R3 K8 ["previousMessageId must be provided for retry messages"]
       37 GETIMPORT                        R1 K10 [assert]
       39 CALL                             R1 2 0
       40 GETUPVAL                         R1 4
       41 GETTABLEKS                       R1 R1 K11 ["createSlashCommandUserMessageRenderer"]
       43 MOVE                             R2 R0
       44 GETUPVAL                         R3 5
       45 GETUPVAL                         R4 6
       46 CALL                             R1 3 2
       47 NEWCLOSURE                       R3 P0
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          UPVAL U9
       51 CAPTURE                          UPVAL U10
       52 CAPTURE                          UPVAL U11
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U12
       55 CAPTURE                          UPVAL U13
       56 CAPTURE                          UPVAL U14
       57 CAPTURE                          UPVAL U15
       58 CAPTURE                          UPVAL U16
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U17
       61 CAPTURE                          UPVAL U18
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          UPVAL U6
       64 CAPTURE                          UPVAL U19
       65 CAPTURE                          UPVAL U20
       66 CAPTURE                          UPVAL U21
       67 CAPTURE                          UPVAL U22
       68 CAPTURE                          UPVAL U23
       69 CAPTURE                          UPVAL U24
       70 CAPTURE                          UPVAL U25
       71 CAPTURE                          UPVAL U26
       72 CAPTURE                          UPVAL U27
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          VAL R2
       75 CAPTURE                          UPVAL U3
       76 GETUPVAL                         R4 28
       77 DUPTABLE                         R5 K17 [{"prompt", "images", "setInputEnabled", "onSlashCommandRecognized", "onContinueWithLLMWithResult"}]
       78 GETTABLEKS                       R6 R0 K18 ["text"]
       80 SETTABLEKS                       R6 R5 K12 ["prompt"]
       82 GETTABLEKS                       R6 R0 K13 ["images"]
       84 SETTABLEKS                       R6 R5 K13 ["images"]
       86 NEWCLOSURE                       R6 P1
       87 CAPTURE                          UPVAL U3
       88 SETTABLEKS                       R6 R5 K14 ["setInputEnabled"]
       90 SETTABLEKS                       R1 R5 K15 ["onSlashCommandRecognized"]
       92 SETTABLEKS                       R3 R5 K16 ["onContinueWithLLMWithResult"]
       94 CALL                             R4 1 1
       95 JUMPIFNOT                        R4 ; [+1]
       96 RETURN                           R0 0
       97 MOVE                             R5 R3
       98 CALL                             R5 0 0
       99 RETURN                           R0 0

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
       61 GETTABLEKS                       R19 R13 K2 ["getSetting"]
       63 GETTABLEKS                       R20 R14 K3 ["selectedModel"]
       65 GETTABLEKS                       R21 R14 K4 ["selectedProvider"]
       67 GETTABLEKS                       R22 R15 K5 ["inputEnabled"]
       69 GETTABLEKS                       R23 R15 K6 ["reasonDisabled"]
       71 GETTABLEKS                       R24 R16 K7 ["service"]
       73 GETTABLEKS                       R25 R16 K8 ["resolveAllowedTools"]
       75 GETTABLEKS                       R26 R0 K9 ["setInputEnabled"]
       77 GETTABLEKS                       R27 R17 K10 ["registerPromptController"]
       79 GETTABLEKS                       R28 R17 K11 ["unregisterPromptController"]
       81 GETUPVAL                         R29 13
       82 GETTABLEKS                       R29 R29 K12 ["useCallback"]
       84 NEWCLOSURE                       R30 P0
       85 CAPTURE                          VAL R22
       86 CAPTURE                          VAL R23
       87 CAPTURE                          VAL R24
       88 CAPTURE                          VAL R26
       89 CAPTURE                          UPVAL U19
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R2
       92 CAPTURE                          UPVAL U20
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R18
       95 CAPTURE                          VAL R20
       96 CAPTURE                          VAL R9
       97 CAPTURE                          UPVAL U21
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R5
      101 CAPTURE                          UPVAL U22
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R3
      105 CAPTURE                          UPVAL U23
      106 CAPTURE                          VAL R19
      107 CAPTURE                          VAL R21
      108 CAPTURE                          VAL R25
      109 CAPTURE                          VAL R27
      110 CAPTURE                          VAL R28
      111 CAPTURE                          UPVAL U24
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R4
      114 NEWTABLE                         R31 0 23
      116 MOVE                             R32 R2
      117 MOVE                             R33 R1
      118 MOVE                             R34 R9
      119 MOVE                             R35 R7
      120 MOVE                             R36 R3
      121 MOVE                             R37 R8
      122 MOVE                             R38 R19
      123 MOVE                             R39 R22
      124 MOVE                             R40 R11
      125 MOVE                             R41 R12
      126 MOVE                             R42 R23
      127 MOVE                             R43 R27
      128 MOVE                             R44 R25
      129 MOVE                             R45 R4
      130 MOVE                             R46 R20
      131 MOVE                             R47 R21
      132 SETLIST                          R31 R32 16 [1]
      134 MOVE                             R32 R24
      135 GETTABLEKS                       R33 R18 K13 ["sessionId"]
      137 MOVE                             R34 R26
      138 MOVE                             R35 R5
      139 MOVE                             R36 R10
      140 MOVE                             R37 R6
      141 MOVE                             R38 R28
      142 SETLIST                          R31 R32 7 [17]
      144 CALL                             R29 2 -1
      145 RETURN                           R29 -1

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
       18 GETTABLEKS                       R3 R0 K9 ["Guest"]
       20 GETTABLEKS                       R3 R3 K10 ["Environment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K12 ["InputStateContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Components"]
       41 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       43 GETTABLEKS                       R6 R6 K13 ["LLMProviderSelectionContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Components"]
       50 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       52 GETTABLEKS                       R7 R7 K14 ["OngoingAcpPromptContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K15 ["Parent"]
       59 GETTABLEKS                       R8 R8 K16 ["React"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Components"]
       66 GETTABLEKS                       R9 R9 K7 ["Contexts"]
       68 GETTABLEKS                       R9 R9 K17 ["SessionIdContext"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K18 ["Types"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETIMPORT                        R11 K1 [script]
       80 GETTABLEKS                       R11 R11 K15 ["Parent"]
       82 GETTABLEKS                       R11 R11 K19 ["createTelemetryCallbacks"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETIMPORT                        R12 K1 [script]
       89 GETTABLEKS                       R12 R12 K15 ["Parent"]
       91 GETTABLEKS                       R12 R12 K20 ["sendMessage"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETIMPORT                        R13 K1 [script]
       98 GETTABLEKS                       R13 R13 K15 ["Parent"]
      100 GETTABLEKS                       R13 R13 K21 ["sendMessageViaServiceHelpers"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K22 ["Hooks"]
      107 GETTABLEKS                       R14 R14 K23 ["useAddContent"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K22 ["Hooks"]
      114 GETTABLEKS                       R15 R15 K24 ["useAddMessage"]
      116 CALL                             R14 1 1
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R0 K22 ["Hooks"]
      121 GETTABLEKS                       R16 R16 K25 ["useAssistantMode"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K5 [require]
      126 GETTABLEKS                       R17 R0 K22 ["Hooks"]
      128 GETTABLEKS                       R17 R17 K26 ["useCurrentThread"]
      130 CALL                             R16 1 1
      131 GETIMPORT                        R17 K5 [require]
      133 GETTABLEKS                       R18 R0 K22 ["Hooks"]
      135 GETTABLEKS                       R18 R18 K27 ["useEditContent"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K5 [require]
      140 GETTABLEKS                       R19 R0 K22 ["Hooks"]
      142 GETTABLEKS                       R19 R19 K28 ["useEditThread"]
      144 CALL                             R18 1 1
      145 GETIMPORT                        R19 K5 [require]
      147 GETTABLEKS                       R20 R0 K22 ["Hooks"]
      149 GETTABLEKS                       R20 R20 K29 ["useLLMSystemReminderGetter"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K5 [require]
      154 GETTABLEKS                       R21 R0 K22 ["Hooks"]
      156 GETTABLEKS                       R21 R21 K30 ["useLogAssistantMessageSent"]
      158 CALL                             R20 1 1
      159 GETIMPORT                        R21 K5 [require]
      161 GETTABLEKS                       R22 R0 K22 ["Hooks"]
      163 GETTABLEKS                       R22 R22 K31 ["useLogRequestJourney"]
      165 CALL                             R21 1 1
      166 GETIMPORT                        R22 K5 [require]
      168 GETTABLEKS                       R23 R0 K22 ["Hooks"]
      170 GETTABLEKS                       R23 R23 K32 ["useRunSlashCommand"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K5 [require]
      175 GETTABLEKS                       R24 R0 K22 ["Hooks"]
      177 GETTABLEKS                       R24 R24 K33 ["useSettingsContext"]
      179 CALL                             R23 1 1
      180 GETIMPORT                        R24 K5 [require]
      182 GETTABLEKS                       R25 R0 K22 ["Hooks"]
      184 GETTABLEKS                       R25 R25 K34 ["useShowError"]
      186 CALL                             R24 1 1
      187 GETIMPORT                        R25 K5 [require]
      189 GETTABLEKS                       R26 R0 K22 ["Hooks"]
      191 GETTABLEKS                       R26 R26 K35 ["useThreadId"]
      193 CALL                             R25 1 1
      194 NEWTABLE                         R26 0 3
      196 GETTABLEKS                       R27 R9 K36 ["CLAUDE_API_KEY"]
      198 GETTABLEKS                       R28 R9 K37 ["GEMINI_API_KEY"]
      200 GETTABLEKS                       R29 R9 K38 ["OPENAI_API_KEY"]
      202 SETLIST                          R26 R27 3 [1]
      204 DUPCLOSURE                       R27 K39 [PROTO_0]
      205 CAPTURE                          VAL R26
      206 DUPCLOSURE                       R28 K40 [PROTO_9]
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R22
      211 CAPTURE                          VAL R24
      212 CAPTURE                          VAL R25
      213 CAPTURE                          VAL R16
      214 CAPTURE                          VAL R18
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R23
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R5
      222 CAPTURE                          VAL R4
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R6
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R12
      227 CAPTURE                          VAL R10
      228 CAPTURE                          VAL R2
      229 CAPTURE                          VAL R11
      230 CAPTURE                          VAL R27
      231 CAPTURE                          VAL R3
      232 RETURN                           R28 1
