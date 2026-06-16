PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Compaction"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 LOADB                            R1 0
        9 SETTABLEKS                       R1 R0 K4 ["generating"]
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETTABLEKS                       R1 R0 K0 ["uiMessageCount"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["get"]
        8 GETUPVAL                         R3 3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 4
       11 DUPTABLE                         R4 K3 [{"role"}]
       12 LOADK                            R5 K4 ["assistant"]
       13 SETTABLEKS                       R5 R4 K2 ["role"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 5
       17 DUPTABLE                         R5 K7 [{"messageId", "content"}]
       18 SETTABLEKS                       R3 R5 K5 ["messageId"]
       20 DUPTABLE                         R6 K11 [{"type", "summary", "generating"}]
       21 GETUPVAL                         R7 6
       22 GETTABLEKS                       R7 R7 K12 ["Type"]
       24 SETTABLEKS                       R7 R6 K8 ["type"]
       26 GETUPVAL                         R7 7
       27 LOADK                            R9 K13 ["Compaction"]
       28 LOADK                            R10 K14 ["InProgress"]
       29 NAMECALL                         R7 R7 K15 ["getText"]
       31 CALL                             R7 3 1
       32 SETTABLEKS                       R7 R6 K9 ["summary"]
       34 LOADB                            R7 1
       35 SETTABLEKS                       R7 R6 K10 ["generating"]
       37 SETTABLEKS                       R6 R5 K6 ["content"]
       39 CALL                             R4 1 1
       40 NEWTABLE                         R5 0 0
       42 NEWTABLE                         R6 0 3
       44 GETUPVAL                         R9 8
       45 GETTABLEKS                       R9 R9 K16 ["CLAUDE_API_KEY"]
       47 GETUPVAL                         R10 8
       48 GETTABLEKS                       R10 R10 K17 ["GEMINI_API_KEY"]
       50 GETUPVAL                         R11 8
       51 GETTABLEKS                       R11 R11 K18 ["OPENAI_API_KEY"]
       53 SETLIST                          R6 R9 3 [1]
       55 LOADNIL                          R7
       56 LOADNIL                          R8
       57 FORGPREP                         R6
       58 GETUPVAL                         R11 9
       59 GETTABLEKS                       R11 R11 K19 ["getSetting"]
       61 MOVE                             R12 R10
       62 CALL                             R11 1 1
       63 JUMPIFNOT                        R11 ; [+3]
       64 JUMPIFEQKS                       R11 K20 [""] ; [+2]
       66 SETTABLE                         R11 R5 R10
       67 FORGLOOP                         R6 2 ; [-10]
       69 GETUPVAL                         R6 10
       70 GETTABLEKS                       R6 R6 K21 ["compact"]
       72 GETTABLEKS                       R7 R0 K22 ["messages"]
       74 DUPTABLE                         R8 K29 [{"requestLLM", "threadId", "compactedStore", "selectedModel", "selectedProvider", "apiKeys", "uiMessageCount"}]
       75 GETUPVAL                         R9 11
       76 SETTABLEKS                       R9 R8 K23 ["requestLLM"]
       78 GETUPVAL                         R9 3
       79 SETTABLEKS                       R9 R8 K24 ["threadId"]
       81 SETTABLEKS                       R2 R8 K25 ["compactedStore"]
       83 GETUPVAL                         R9 12
       84 GETTABLEKS                       R9 R9 K26 ["selectedModel"]
       86 SETTABLEKS                       R9 R8 K26 ["selectedModel"]
       88 GETUPVAL                         R9 12
       89 GETTABLEKS                       R9 R9 K27 ["selectedProvider"]
       91 SETTABLEKS                       R9 R8 K27 ["selectedProvider"]
       93 SETTABLEKS                       R5 R8 K28 ["apiKeys"]
       95 SETTABLEKS                       R1 R8 K0 ["uiMessageCount"]
       97 CALL                             R6 2 0
       98 JUMPIFNOT                        R4 ; [+11]
       99 GETUPVAL                         R6 13
      100 DUPTABLE                         R7 K32 [{"messageId", "contentId", "transformFn"}]
      101 SETTABLEKS                       R3 R7 K5 ["messageId"]
      103 SETTABLEKS                       R4 R7 K30 ["contentId"]
      105 DUPCLOSURE                       R8 K33 [PROTO_0]
      106 CAPTURE                          UPVAL U7
      107 SETTABLEKS                       R8 R7 K31 ["transformFn"]
      109 CALL                             R6 1 0
      110 GETUPVAL                         R6 14
      111 LOADB                            R7 0
      112 CALL                             R6 1 0
      113 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U11
       17 CAPTURE                          UPVAL U12
       18 CAPTURE                          UPVAL U13
       19 CAPTURE                          UPVAL U14
       20 CAPTURE                          UPVAL U15
       21 CAPTURE                          UPVAL U1
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 4
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 5
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 6
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 7
       15 GETTABLEKS                       R7 R7 K0 ["useContext"]
       17 GETUPVAL                         R8 8
       18 GETTABLEKS                       R8 R8 K1 ["Context"]
       20 CALL                             R7 1 1
       21 GETUPVAL                         R8 7
       22 GETTABLEKS                       R8 R8 K2 ["useState"]
       24 LOADB                            R9 0
       25 CALL                             R8 1 2
       26 GETUPVAL                         R10 7
       27 GETTABLEKS                       R10 R10 K3 ["useCallback"]
       29 NEWCLOSURE                       R11 P0
       30 CAPTURE                          VAL R8
       31 CAPTURE                          VAL R9
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U9
       34 CAPTURE                          UPVAL U10
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U11
       39 CAPTURE                          UPVAL U12
       40 CAPTURE                          UPVAL U13
       41 CAPTURE                          VAL R6
       42 CAPTURE                          UPVAL U14
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R2
       46 NEWTABLE                         R12 0 9
       48 MOVE                             R13 R8
       49 MOVE                             R14 R5
       50 MOVE                             R15 R4
       51 MOVE                             R16 R3
       52 MOVE                             R17 R0
       53 MOVE                             R18 R1
       54 MOVE                             R19 R2
       55 MOVE                             R20 R6
       56 MOVE                             R21 R7
       57 SETLIST                          R12 R13 9 [1]
       59 CALL                             R10 2 1
       60 MOVE                             R11 R10
       61 MOVE                             R12 R8
       62 RETURN                           R11 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Compaction"]
       13 GETTABLEKS                       R2 R2 K8 ["CompactedStore"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K11 ["LLMProviderSelectionContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Parent"]
       29 GETTABLEKS                       R4 R4 K13 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Components"]
       36 GETTABLEKS                       R5 R5 K14 ["ContentWidgets"]
       38 GETTABLEKS                       R5 R5 K15 ["SummarizedContentWidget"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K16 ["Resources"]
       45 GETTABLEKS                       R6 R6 K17 ["Localization"]
       47 GETTABLEKS                       R6 R6 K18 ["Translator"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K19 ["Types"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Util"]
       59 GETTABLEKS                       R8 R8 K7 ["Compaction"]
       61 GETTABLEKS                       R8 R8 K20 ["compactThread"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K6 ["Util"]
       68 GETTABLEKS                       R9 R9 K21 ["readThread"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K22 ["Hooks"]
       75 GETTABLEKS                       R10 R10 K23 ["useAddContent"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K22 ["Hooks"]
       82 GETTABLEKS                       R11 R11 K24 ["useAddMessage"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K22 ["Hooks"]
       89 GETTABLEKS                       R12 R12 K25 ["useEditContent"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K22 ["Hooks"]
       96 GETTABLEKS                       R13 R13 K26 ["useGetThread"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K22 ["Hooks"]
      103 GETTABLEKS                       R14 R14 K27 ["useLLMRequest"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R15 R0 K22 ["Hooks"]
      110 GETTABLEKS                       R15 R15 K28 ["useSettingsContext"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K5 [require]
      115 GETTABLEKS                       R16 R0 K22 ["Hooks"]
      117 GETTABLEKS                       R16 R16 K29 ["useThreadId"]
      119 CALL                             R15 1 1
      120 DUPCLOSURE                       R16 K30 [PROTO_4]
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R7
      136 RETURN                           R16 1
