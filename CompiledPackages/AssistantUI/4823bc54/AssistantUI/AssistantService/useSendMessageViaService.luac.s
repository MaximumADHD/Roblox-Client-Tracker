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
       14 DUPTABLE                         R2 K8 [{["errorType"] = "client_error"}]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K13 [{"service", "threadId", "acpSessionId", "setAcpSessionId", "addMessage", "addContent", "editContent", "apiKeys", "selectedModel", "selectedProvider", "assistantMode", "registerPromptController", "unregisterPromptController"}]
        2 GETUPVAL                         R4 1
        3 SETTABLEKS                       R4 R3 K0 ["service"]
        5 GETUPVAL                         R4 2
        6 SETTABLEKS                       R4 R3 K1 ["threadId"]
        8 GETUPVAL                         R4 3
        9 JUMPIFNOT                        R4 ; [+3]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["acpSessionId"]
       13 SETTABLEKS                       R4 R3 K2 ["acpSessionId"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R4 R3 K3 ["setAcpSessionId"]
       20 GETUPVAL                         R4 5
       21 SETTABLEKS                       R4 R3 K4 ["addMessage"]
       23 GETUPVAL                         R4 6
       24 SETTABLEKS                       R4 R3 K5 ["addContent"]
       26 GETUPVAL                         R4 7
       27 SETTABLEKS                       R4 R3 K6 ["editContent"]
       29 GETUPVAL                         R4 8
       30 GETUPVAL                         R5 9
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K7 ["apiKeys"]
       34 GETUPVAL                         R4 10
       35 SETTABLEKS                       R4 R3 K8 ["selectedModel"]
       37 GETUPVAL                         R4 11
       38 SETTABLEKS                       R4 R3 K9 ["selectedProvider"]
       40 GETUPVAL                         R4 12
       41 SETTABLEKS                       R4 R3 K10 ["assistantMode"]
       43 GETUPVAL                         R4 13
       44 SETTABLEKS                       R4 R3 K11 ["registerPromptController"]
       46 GETUPVAL                         R4 14
       47 SETTABLEKS                       R4 R3 K12 ["unregisterPromptController"]
       49 DUPTABLE                         R4 K21 [{"text", "retry", "previousMessageId", "images", "hidden", "userMessageAlreadyRendered", "additionalPromptText"}]
       50 GETUPVAL                         R5 15
       51 GETTABLEKS                       R5 R5 K14 ["text"]
       53 SETTABLEKS                       R5 R4 K14 ["text"]
       55 GETUPVAL                         R5 15
       56 GETTABLEKS                       R5 R5 K15 ["retry"]
       58 SETTABLEKS                       R5 R4 K15 ["retry"]
       60 GETUPVAL                         R5 15
       61 GETTABLEKS                       R5 R5 K16 ["previousMessageId"]
       63 SETTABLEKS                       R5 R4 K16 ["previousMessageId"]
       65 GETUPVAL                         R5 15
       66 GETTABLEKS                       R5 R5 K17 ["images"]
       68 SETTABLEKS                       R5 R4 K17 ["images"]
       70 GETUPVAL                         R5 15
       71 GETTABLEKS                       R5 R5 K18 ["hidden"]
       73 SETTABLEKS                       R5 R4 K18 ["hidden"]
       75 GETUPVAL                         R5 16
       76 CALL                             R5 0 1
       77 SETTABLEKS                       R5 R4 K19 ["userMessageAlreadyRendered"]
       79 GETUPVAL                         R5 17
       80 GETTABLEKS                       R5 R5 K22 ["buildSkillResultContext"]
       82 MOVE                             R6 R1
       83 CALL                             R5 1 1
       84 SETTABLEKS                       R5 R4 K20 ["additionalPromptText"]
       86 CALL                             R2 2 1
       87 GETTABLEKS                       R3 R2 K23 ["promise"]
       89 NEWCLOSURE                       R5 P1
       90 CAPTURE                          UPVAL U18
       91 NAMECALL                         R3 R3 K24 ["catch"]
       93 CALL                             R3 2 1
       94 NEWCLOSURE                       R5 P2
       95 CAPTURE                          UPVAL U19
       96 NAMECALL                         R3 R3 K25 ["finally"]
       98 CALL                             R3 2 0
       99 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPTABLE                         R3 K2 [{[1] = True}]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_7:
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
       20 LOADK                            R2 K5 ["AssistantService not available with FFlagAssistantHarnessSplit on"]
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
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          UPVAL U9
       52 CAPTURE                          UPVAL U10
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          UPVAL U11
       56 CAPTURE                          UPVAL U12
       57 CAPTURE                          UPVAL U13
       58 CAPTURE                          UPVAL U14
       59 CAPTURE                          UPVAL U15
       60 CAPTURE                          UPVAL U16
       61 CAPTURE                          UPVAL U17
       62 CAPTURE                          UPVAL U18
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          UPVAL U19
       67 CAPTURE                          UPVAL U3
       68 GETUPVAL                         R4 20
       69 DUPTABLE                         R5 K17 [{"prompt", "images", "setInputEnabled", "onSlashCommandRecognized", "onContinueWithLLMWithResult"}]
       70 GETTABLEKS                       R6 R0 K18 ["text"]
       72 SETTABLEKS                       R6 R5 K12 ["prompt"]
       74 GETTABLEKS                       R6 R0 K13 ["images"]
       76 SETTABLEKS                       R6 R5 K13 ["images"]
       78 NEWCLOSURE                       R6 P1
       79 CAPTURE                          UPVAL U3
       80 SETTABLEKS                       R6 R5 K14 ["setInputEnabled"]
       82 SETTABLEKS                       R1 R5 K15 ["onSlashCommandRecognized"]
       84 SETTABLEKS                       R3 R5 K16 ["onContinueWithLLMWithResult"]
       86 CALL                             R4 1 1
       87 JUMPIFNOT                        R4 ; [+1]
       88 RETURN                           R0 0
       89 MOVE                             R5 R3
       90 CALL                             R5 0 0
       91 RETURN                           R0 0

PROTO_8:
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
       21 GETTABLEKS                       R11 R11 K0 ["useContext"]
       23 GETUPVAL                         R12 11
       24 GETTABLEKS                       R12 R12 K1 ["Context"]
       26 CALL                             R11 1 1
       27 GETUPVAL                         R12 10
       28 GETTABLEKS                       R12 R12 K0 ["useContext"]
       30 GETUPVAL                         R13 12
       31 GETTABLEKS                       R13 R13 K1 ["Context"]
       33 CALL                             R12 1 1
       34 GETUPVAL                         R13 10
       35 GETTABLEKS                       R13 R13 K0 ["useContext"]
       37 GETUPVAL                         R14 13
       38 GETTABLEKS                       R14 R14 K1 ["Context"]
       40 CALL                             R13 1 1
       41 GETUPVAL                         R14 10
       42 GETTABLEKS                       R14 R14 K0 ["useContext"]
       44 GETUPVAL                         R15 14
       45 GETTABLEKS                       R15 R15 K1 ["Context"]
       47 CALL                             R14 1 1
       48 GETTABLEKS                       R15 R10 K2 ["getSetting"]
       50 GETTABLEKS                       R16 R11 K3 ["selectedModel"]
       52 GETTABLEKS                       R17 R11 K4 ["selectedProvider"]
       54 GETTABLEKS                       R18 R12 K5 ["inputEnabled"]
       56 GETTABLEKS                       R19 R12 K6 ["reasonDisabled"]
       58 GETTABLEKS                       R20 R13 K7 ["service"]
       60 GETTABLEKS                       R21 R0 K8 ["setInputEnabled"]
       62 GETTABLEKS                       R22 R14 K9 ["registerPromptController"]
       64 GETTABLEKS                       R23 R14 K10 ["unregisterPromptController"]
       66 GETUPVAL                         R24 10
       67 GETTABLEKS                       R24 R24 K11 ["useCallback"]
       69 NEWCLOSURE                       R25 P0
       70 CAPTURE                          VAL R18
       71 CAPTURE                          VAL R19
       72 CAPTURE                          VAL R20
       73 CAPTURE                          VAL R21
       74 CAPTURE                          UPVAL U15
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R2
       77 CAPTURE                          UPVAL U16
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R3
       82 CAPTURE                          UPVAL U17
       83 CAPTURE                          VAL R15
       84 CAPTURE                          VAL R16
       85 CAPTURE                          VAL R17
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R22
       88 CAPTURE                          VAL R23
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R4
       91 NEWTABLE                         R26 0 18
       93 MOVE                             R27 R2
       94 MOVE                             R28 R1
       95 MOVE                             R29 R9
       96 MOVE                             R30 R7
       97 MOVE                             R31 R3
       98 MOVE                             R32 R8
       99 MOVE                             R33 R15
      100 MOVE                             R34 R18
      101 MOVE                             R35 R19
      102 MOVE                             R36 R22
      103 MOVE                             R37 R4
      104 MOVE                             R38 R16
      105 MOVE                             R39 R17
      106 MOVE                             R40 R20
      107 MOVE                             R41 R21
      108 MOVE                             R42 R5
      109 SETLIST                          R26 R27 16 [1]
      111 MOVE                             R27 R6
      112 MOVE                             R28 R23
      113 SETLIST                          R26 R27 2 [17]
      115 CALL                             R24 2 -1
      116 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["AssistantServiceContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K7 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K9 ["InputStateContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Components"]
       29 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K10 ["LLMProviderSelectionContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Components"]
       38 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       40 GETTABLEKS                       R5 R5 K11 ["OngoingAcpPromptContext"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K12 ["Parent"]
       47 GETTABLEKS                       R6 R6 K13 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K14 ["Types"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R8 K1 [script]
       59 GETTABLEKS                       R8 R8 K12 ["Parent"]
       61 GETTABLEKS                       R8 R8 K15 ["sendMessage"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETIMPORT                        R9 K1 [script]
       68 GETTABLEKS                       R9 R9 K12 ["Parent"]
       70 GETTABLEKS                       R9 R9 K16 ["sendMessageViaServiceHelpers"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       77 GETTABLEKS                       R10 R10 K18 ["useAddContent"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K17 ["Hooks"]
       84 GETTABLEKS                       R11 R11 K19 ["useAddMessage"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K17 ["Hooks"]
       91 GETTABLEKS                       R12 R12 K20 ["useAssistantMode"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K17 ["Hooks"]
       98 GETTABLEKS                       R13 R13 K21 ["useCurrentThread"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K17 ["Hooks"]
      105 GETTABLEKS                       R14 R14 K22 ["useEditContent"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K17 ["Hooks"]
      112 GETTABLEKS                       R15 R15 K23 ["useEditThread"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R0 K17 ["Hooks"]
      119 GETTABLEKS                       R16 R16 K24 ["useRunSlashCommand"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R17 R0 K17 ["Hooks"]
      126 GETTABLEKS                       R17 R17 K25 ["useSettingsContext"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R18 R0 K17 ["Hooks"]
      133 GETTABLEKS                       R18 R18 K26 ["useShowError"]
      135 CALL                             R17 1 1
      136 GETIMPORT                        R18 K5 [require]
      138 GETTABLEKS                       R19 R0 K17 ["Hooks"]
      140 GETTABLEKS                       R19 R19 K27 ["useThreadId"]
      142 CALL                             R18 1 1
      143 NEWTABLE                         R19 0 3
      145 GETTABLEKS                       R20 R6 K28 ["CLAUDE_API_KEY"]
      147 GETTABLEKS                       R21 R6 K29 ["GEMINI_API_KEY"]
      149 GETTABLEKS                       R22 R6 K30 ["OPENAI_API_KEY"]
      151 SETLIST                          R19 R20 3 [1]
      153 DUPCLOSURE                       R20 K31 [PROTO_0]
      154 CAPTURE                          VAL R19
      155 DUPCLOSURE                       R21 K32 [PROTO_8]
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R20
      174 RETURN                           R21 1
