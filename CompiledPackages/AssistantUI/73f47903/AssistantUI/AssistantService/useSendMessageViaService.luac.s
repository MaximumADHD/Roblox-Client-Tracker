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
        0 MOVE                             R3 R0
        1 DUPTABLE                         R4 K2 [{"role", "hidden"}]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K3 ["ROLE"]
        5 GETTABLEKS                       R5 R5 K4 ["User"]
        7 SETTABLEKS                       R5 R4 K0 ["role"]
        9 GETTABLEKS                       R6 R2 K1 ["hidden"]
       11 JUMPIFEQKB                       R6 TRUE ; [+2]
       13 LOADB                            R5 0 +1
       14 LOADB                            R5 1
       15 SETTABLEKS                       R5 R4 K1 ["hidden"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R2 K5 ["images"]
       20 JUMPIFNOT                        R4 ; [+23]
       21 GETTABLEKS                       R5 R2 K5 ["images"]
       23 LENGTH                           R4 R5
       24 LOADN                            R5 0
       25 JUMPIFNOTLT                      R5 R4 ; [+18]
       27 MOVE                             R4 R1
       28 DUPTABLE                         R5 K8 [{"messageId", "content"}]
       29 SETTABLEKS                       R3 R5 K6 ["messageId"]
       31 DUPTABLE                         R6 K13 [{["type"], ["imageContents"], ["expanded"] = False}]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R7 R7 K14 ["Type"]
       35 SETTABLEKS                       R7 R6 K9 ["type"]
       37 GETTABLEKS                       R7 R2 K5 ["images"]
       39 SETTABLEKS                       R7 R6 K10 ["imageContents"]
       41 SETTABLEKS                       R6 R5 K7 ["content"]
       43 CALL                             R4 1 0
       44 GETTABLEKS                       R5 R2 K15 ["text"]
       46 LENGTH                           R4 R5
       47 LOADN                            R5 0
       48 JUMPIFNOTLT                      R5 R4 ; [+18]
       50 MOVE                             R4 R1
       51 DUPTABLE                         R5 K8 [{"messageId", "content"}]
       52 SETTABLEKS                       R3 R5 K6 ["messageId"]
       54 DUPTABLE                         R6 K16 [{"type", "text"}]
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K14 ["Type"]
       58 SETTABLEKS                       R7 R6 K9 ["type"]
       60 GETTABLEKS                       R7 R2 K15 ["text"]
       62 SETTABLEKS                       R7 R6 K15 ["text"]
       64 SETTABLEKS                       R6 R5 K7 ["content"]
       66 CALL                             R4 1 0
       67 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setInputEnabled"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K7 [{"service", "threadId", "addMessage", "addContent", "editContent", "apiKeys", "selectedModel"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["service"]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["threadId"]
        8 GETUPVAL                         R3 3
        9 SETTABLEKS                       R3 R2 K2 ["addMessage"]
       11 GETUPVAL                         R3 4
       12 SETTABLEKS                       R3 R2 K3 ["addContent"]
       14 GETUPVAL                         R3 5
       15 SETTABLEKS                       R3 R2 K4 ["editContent"]
       17 GETUPVAL                         R3 6
       18 GETUPVAL                         R4 7
       19 GETTABLEKS                       R4 R4 K8 ["getSetting"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K5 ["apiKeys"]
       24 GETUPVAL                         R3 8
       25 GETTABLEKS                       R3 R3 K6 ["selectedModel"]
       27 SETTABLEKS                       R3 R2 K6 ["selectedModel"]
       29 DUPTABLE                         R3 K13 [{"text", "retry", "previousMessageId", "images"}]
       30 GETUPVAL                         R4 9
       31 GETTABLEKS                       R4 R4 K9 ["text"]
       33 SETTABLEKS                       R4 R3 K9 ["text"]
       35 GETUPVAL                         R4 9
       36 GETTABLEKS                       R4 R4 K10 ["retry"]
       38 SETTABLEKS                       R4 R3 K10 ["retry"]
       40 GETUPVAL                         R4 9
       41 GETTABLEKS                       R4 R4 K11 ["previousMessageId"]
       43 SETTABLEKS                       R4 R3 K11 ["previousMessageId"]
       45 GETUPVAL                         R4 9
       46 GETTABLEKS                       R4 R4 K12 ["images"]
       48 SETTABLEKS                       R4 R3 K12 ["images"]
       50 CALL                             R1 2 1
       51 NEWCLOSURE                       R3 P0
       52 CAPTURE                          UPVAL U10
       53 NAMECALL                         R1 R1 K14 ["catch"]
       55 CALL                             R1 2 1
       56 NEWCLOSURE                       R3 P1
       57 CAPTURE                          UPVAL U11
       58 NAMECALL                         R1 R1 K15 ["finally"]
       60 CALL                             R1 2 0
       61 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setInputEnabled"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{["focus"] = True}]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inputEnabled"]
        3 JUMPIF                           R1 ; [+18]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["reasonDisabled"]
        7 JUMPIFNOT                        R1 ; [+13]
        8 GETIMPORT                        R1 K3 [warn]
       10 LOADK                            R3 K4 ["Input is disabled: %*"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K1 ["reasonDisabled"]
       14 GETTABLEKS                       R5 R5 K1 ["reasonDisabled"]
       16 NAMECALL                         R3 R3 K5 ["format"]
       18 CALL                             R3 2 1
       19 MOVE                             R2 R3
       20 CALL                             R1 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K6 ["service"]
       25 JUMPIF                           R1 ; [+5]
       26 GETIMPORT                        R2 K3 [warn]
       28 LOADK                            R3 K7 ["AssistantService not available with FFlagAssistantHarnessSplit on"]
       29 CALL                             R2 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K8 ["setInputEnabled"]
       34 LOADB                            R3 0
       35 CALL                             R2 1 0
       36 LOADB                            R3 1
       37 GETTABLEKS                       R4 R0 K9 ["previousMessageId"]
       39 JUMPIFNOTEQKNIL                  R4 ; [+4]
       41 GETTABLEKS                       R4 R0 K10 ["retry"]
       43 NOT                              R3 R4
       44 FASTCALL2K                       ASSERT R3 K11 ; [+4]
       46 LOADK                            R4 K11 ["previousMessageId must be provided for retry messages"]
       47 GETIMPORT                        R2 K13 [assert]
       49 CALL                             R2 2 0
       50 GETTABLEKS                       R2 R0 K10 ["retry"]
       52 JUMPIF                           R2 ; [+5]
       53 GETUPVAL                         R2 3
       54 GETUPVAL                         R3 4
       55 GETUPVAL                         R4 5
       56 MOVE                             R5 R0
       57 CALL                             R2 3 0
       58 NEWCLOSURE                       R2 P0
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          VAL R1
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          UPVAL U8
       65 CAPTURE                          UPVAL U9
       66 CAPTURE                          UPVAL U10
       67 CAPTURE                          UPVAL U11
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U12
       70 CAPTURE                          UPVAL U2
       71 GETUPVAL                         R3 13
       72 DUPTABLE                         R4 K17 [{"prompt", "images", "setInputEnabled", "onContinueWithLLM"}]
       73 GETTABLEKS                       R5 R0 K18 ["text"]
       75 SETTABLEKS                       R5 R4 K14 ["prompt"]
       77 GETTABLEKS                       R5 R0 K15 ["images"]
       79 SETTABLEKS                       R5 R4 K15 ["images"]
       81 NEWCLOSURE                       R5 P1
       82 CAPTURE                          UPVAL U2
       83 SETTABLEKS                       R5 R4 K8 ["setInputEnabled"]
       85 SETTABLEKS                       R2 R4 K16 ["onContinueWithLLM"]
       87 CALL                             R3 1 1
       88 JUMPIFNOT                        R3 ; [+1]
       89 RETURN                           R0 0
       90 MOVE                             R4 R2
       91 CALL                             R4 0 0
       92 RETURN                           R0 0

PROTO_7:
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
       15 GETTABLEKS                       R8 R8 K0 ["useContext"]
       17 GETUPVAL                         R9 8
       18 GETTABLEKS                       R9 R9 K1 ["Context"]
       20 CALL                             R8 1 1
       21 GETUPVAL                         R9 7
       22 GETTABLEKS                       R9 R9 K0 ["useContext"]
       24 GETUPVAL                         R10 9
       25 GETTABLEKS                       R10 R10 K1 ["Context"]
       27 CALL                             R9 1 1
       28 GETUPVAL                         R10 7
       29 GETTABLEKS                       R10 R10 K0 ["useContext"]
       31 GETUPVAL                         R11 10
       32 GETTABLEKS                       R11 R11 K1 ["Context"]
       34 CALL                             R10 1 1
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          VAL R9
       37 CAPTURE                          VAL R10
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U11
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U12
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U13
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R4
       50 RETURN                           R11 1

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
       20 GETTABLEKS                       R3 R3 K9 ["ContentWidgets"]
       22 GETTABLEKS                       R3 R3 K10 ["ImageContentWidget"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Components"]
       29 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K11 ["InputStateContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Components"]
       38 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       40 GETTABLEKS                       R5 R5 K12 ["LLMProviderSelectionContext"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K13 ["Parent"]
       47 GETTABLEKS                       R6 R6 K14 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Components"]
       54 GETTABLEKS                       R7 R7 K9 ["ContentWidgets"]
       56 GETTABLEKS                       R7 R7 K15 ["TextContentWidget"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K16 ["Types"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETIMPORT                        R9 K1 [script]
       68 GETTABLEKS                       R9 R9 K13 ["Parent"]
       70 GETTABLEKS                       R9 R9 K17 ["sendMessage"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K18 ["Hooks"]
       77 GETTABLEKS                       R10 R10 K19 ["useAddContent"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       84 GETTABLEKS                       R11 R11 K20 ["useAddMessage"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K18 ["Hooks"]
       91 GETTABLEKS                       R12 R12 K21 ["useEditContent"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K18 ["Hooks"]
       98 GETTABLEKS                       R13 R13 K22 ["useRunSlashCommand"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K18 ["Hooks"]
      105 GETTABLEKS                       R14 R14 K23 ["useSettingsContext"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K18 ["Hooks"]
      112 GETTABLEKS                       R15 R15 K24 ["useShowError"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R0 K18 ["Hooks"]
      119 GETTABLEKS                       R16 R16 K25 ["useThreadId"]
      121 CALL                             R15 1 1
      122 NEWTABLE                         R16 0 3
      124 GETTABLEKS                       R17 R7 K26 ["CLAUDE_API_KEY"]
      126 GETTABLEKS                       R18 R7 K27 ["GEMINI_API_KEY"]
      128 GETTABLEKS                       R19 R7 K28 ["OPENAI_API_KEY"]
      130 SETLIST                          R16 R17 3 [1]
      132 DUPCLOSURE                       R17 K29 [PROTO_0]
      133 CAPTURE                          VAL R16
      134 DUPCLOSURE                       R18 K30 [PROTO_1]
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R6
      138 DUPCLOSURE                       R19 K31 [PROTO_7]
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R17
      153 RETURN                           R19 1
