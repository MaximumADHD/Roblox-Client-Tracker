PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Compaction"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K4 ["streaming"]
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
       11 DUPTABLE                         R4 K4 [{["role"] = "assistant"}]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 5
       14 DUPTABLE                         R5 K7 [{"messageId", "content"}]
       15 SETTABLEKS                       R3 R5 K5 ["messageId"]
       17 DUPTABLE                         R6 K11 [{"type", "summary", "streaming"}]
       18 GETUPVAL                         R7 6
       19 GETTABLEKS                       R7 R7 K12 ["Type"]
       21 SETTABLEKS                       R7 R6 K8 ["type"]
       23 GETUPVAL                         R7 7
       24 LOADK                            R9 K13 ["Compaction"]
       25 LOADK                            R10 K14 ["InProgress"]
       26 NAMECALL                         R7 R7 K15 ["getText"]
       28 CALL                             R7 3 1
       29 SETTABLEKS                       R7 R6 K9 ["summary"]
       31 NEWTABLE                         R7 0 0
       33 SETTABLEKS                       R7 R6 K10 ["streaming"]
       35 SETTABLEKS                       R6 R5 K6 ["content"]
       37 CALL                             R4 1 1
       38 NEWTABLE                         R5 0 0
       40 NEWTABLE                         R6 0 3
       42 GETUPVAL                         R9 8
       43 GETTABLEKS                       R9 R9 K16 ["CLAUDE_API_KEY"]
       45 GETUPVAL                         R10 8
       46 GETTABLEKS                       R10 R10 K17 ["GEMINI_API_KEY"]
       48 GETUPVAL                         R11 8
       49 GETTABLEKS                       R11 R11 K18 ["OPENAI_API_KEY"]
       51 SETLIST                          R6 R9 3 [1]
       53 LOADNIL                          R7
       54 LOADNIL                          R8
       55 FORGPREP                         R6
       56 GETUPVAL                         R11 9
       57 GETTABLEKS                       R11 R11 K19 ["getSetting"]
       59 MOVE                             R12 R10
       60 CALL                             R11 1 1
       61 JUMPIFNOT                        R11 ; [+3]
       62 JUMPIFEQKS                       R11 K20 [""] ; [+2]
       64 SETTABLE                         R11 R5 R10
       65 FORGLOOP                         R6 2 ; [-10]
       67 GETUPVAL                         R6 10
       68 GETTABLEKS                       R6 R6 K21 ["compact"]
       70 GETTABLEKS                       R7 R0 K22 ["messages"]
       72 DUPTABLE                         R8 K29 [{"requestLLM", "threadId", "compactedStore", "selectedModel", "selectedProvider", "apiKeys", "uiMessageCount"}]
       73 GETUPVAL                         R9 11
       74 SETTABLEKS                       R9 R8 K23 ["requestLLM"]
       76 GETUPVAL                         R9 3
       77 SETTABLEKS                       R9 R8 K24 ["threadId"]
       79 SETTABLEKS                       R2 R8 K25 ["compactedStore"]
       81 GETUPVAL                         R9 12
       82 GETTABLEKS                       R9 R9 K26 ["selectedModel"]
       84 SETTABLEKS                       R9 R8 K26 ["selectedModel"]
       86 GETUPVAL                         R9 12
       87 GETTABLEKS                       R9 R9 K27 ["selectedProvider"]
       89 SETTABLEKS                       R9 R8 K27 ["selectedProvider"]
       91 SETTABLEKS                       R5 R8 K28 ["apiKeys"]
       93 SETTABLEKS                       R1 R8 K0 ["uiMessageCount"]
       95 CALL                             R6 2 0
       96 JUMPIFNOT                        R4 ; [+11]
       97 GETUPVAL                         R6 13
       98 DUPTABLE                         R7 K32 [{"messageId", "contentId", "transformFn"}]
       99 SETTABLEKS                       R3 R7 K5 ["messageId"]
      101 SETTABLEKS                       R4 R7 K30 ["contentId"]
      103 DUPCLOSURE                       R8 K33 [PROTO_0]
      104 CAPTURE                          UPVAL U7
      105 SETTABLEKS                       R8 R7 K31 ["transformFn"]
      107 CALL                             R6 1 0
      108 GETUPVAL                         R6 14
      109 LOADB                            R7 0
      110 CALL                             R6 1 0
      111 RETURN                           R0 0

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
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Engine"]
       16 GETTABLEKS                       R2 R2 K9 ["CompactedStore"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Components"]
       22 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       24 GETTABLEKS                       R4 R4 K12 ["LLMProviderSelectionContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K6 ["Parent"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Components"]
       38 GETTABLEKS                       R6 R6 K14 ["ContentWidgets"]
       40 GETTABLEKS                       R6 R6 K15 ["SummarizedContentWidget"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K16 ["Resources"]
       47 GETTABLEKS                       R7 R7 K17 ["Localization"]
       49 GETTABLEKS                       R7 R7 K18 ["Translator"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K19 ["Types"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R1 K8 ["Engine"]
       59 GETTABLEKS                       R8 R8 K20 ["compactThread"]
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K21 ["Util"]
       65 GETTABLEKS                       R10 R10 K22 ["readThread"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K23 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K24 ["useAddContent"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       79 GETTABLEKS                       R12 R12 K25 ["useAddMessage"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       86 GETTABLEKS                       R13 R13 K26 ["useEditContent"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K23 ["Hooks"]
       93 GETTABLEKS                       R14 R14 K27 ["useGetThread"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K23 ["Hooks"]
      100 GETTABLEKS                       R15 R15 K28 ["useLLMRequest"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R16 R0 K23 ["Hooks"]
      107 GETTABLEKS                       R16 R16 K29 ["useSettingsContext"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K5 [require]
      112 GETTABLEKS                       R17 R0 K23 ["Hooks"]
      114 GETTABLEKS                       R17 R17 K30 ["useThreadId"]
      116 CALL                             R16 1 1
      117 DUPCLOSURE                       R17 K31 [PROTO_4]
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R8
      133 RETURN                           R17 1
