PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Compaction"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K4 ["FFlagAssistantSplitToolsAndWidgets"]
       11 JUMPIFNOT                        R1 ; [+4]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K5 ["streaming"]
       15 RETURN                           R0 0
       16 LOADB                            R1 0
       17 SETTABLEKS                       R1 R0 K6 ["generating"]
       19 RETURN                           R0 0

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
       17 DUPTABLE                         R6 K12 [{"type", "summary", "generating", "streaming"}]
       18 GETUPVAL                         R7 6
       19 GETTABLEKS                       R7 R7 K13 ["Type"]
       21 SETTABLEKS                       R7 R6 K8 ["type"]
       23 GETUPVAL                         R7 7
       24 LOADK                            R9 K14 ["Compaction"]
       25 LOADK                            R10 K15 ["InProgress"]
       26 NAMECALL                         R7 R7 K16 ["getText"]
       28 CALL                             R7 3 1
       29 SETTABLEKS                       R7 R6 K9 ["summary"]
       31 GETUPVAL                         R8 8
       32 GETTABLEKS                       R8 R8 K17 ["FFlagAssistantSplitToolsAndWidgets"]
       34 JUMPIFNOT                        R8 ; [+2]
       35 LOADNIL                          R7
       36 JUMP                             ; [+1]
       37 LOADB                            R7 1
       38 SETTABLEKS                       R7 R6 K10 ["generating"]
       40 GETUPVAL                         R8 8
       41 GETTABLEKS                       R8 R8 K17 ["FFlagAssistantSplitToolsAndWidgets"]
       43 JUMPIFNOT                        R8 ; [+3]
       44 NEWTABLE                         R7 0 0
       46 JUMP                             ; [+1]
       47 LOADNIL                          R7
       48 SETTABLEKS                       R7 R6 K11 ["streaming"]
       50 SETTABLEKS                       R6 R5 K6 ["content"]
       52 CALL                             R4 1 1
       53 NEWTABLE                         R5 0 0
       55 NEWTABLE                         R6 0 3
       57 GETUPVAL                         R9 9
       58 GETTABLEKS                       R9 R9 K18 ["CLAUDE_API_KEY"]
       60 GETUPVAL                         R10 9
       61 GETTABLEKS                       R10 R10 K19 ["GEMINI_API_KEY"]
       63 GETUPVAL                         R11 9
       64 GETTABLEKS                       R11 R11 K20 ["OPENAI_API_KEY"]
       66 SETLIST                          R6 R9 3 [1]
       68 LOADNIL                          R7
       69 LOADNIL                          R8
       70 FORGPREP                         R6
       71 GETUPVAL                         R11 10
       72 GETTABLEKS                       R11 R11 K21 ["getSetting"]
       74 MOVE                             R12 R10
       75 CALL                             R11 1 1
       76 JUMPIFNOT                        R11 ; [+3]
       77 JUMPIFEQKS                       R11 K22 [""] ; [+2]
       79 SETTABLE                         R11 R5 R10
       80 FORGLOOP                         R6 2 ; [-10]
       82 GETUPVAL                         R6 11
       83 GETTABLEKS                       R6 R6 K23 ["compact"]
       85 GETTABLEKS                       R7 R0 K24 ["messages"]
       87 DUPTABLE                         R8 K31 [{"requestLLM", "threadId", "compactedStore", "selectedModel", "selectedProvider", "apiKeys", "uiMessageCount"}]
       88 GETUPVAL                         R9 12
       89 SETTABLEKS                       R9 R8 K25 ["requestLLM"]
       91 GETUPVAL                         R9 3
       92 SETTABLEKS                       R9 R8 K26 ["threadId"]
       94 SETTABLEKS                       R2 R8 K27 ["compactedStore"]
       96 GETUPVAL                         R9 13
       97 GETTABLEKS                       R9 R9 K28 ["selectedModel"]
       99 SETTABLEKS                       R9 R8 K28 ["selectedModel"]
      101 GETUPVAL                         R9 13
      102 GETTABLEKS                       R9 R9 K29 ["selectedProvider"]
      104 SETTABLEKS                       R9 R8 K29 ["selectedProvider"]
      106 SETTABLEKS                       R5 R8 K30 ["apiKeys"]
      108 SETTABLEKS                       R1 R8 K0 ["uiMessageCount"]
      110 CALL                             R6 2 0
      111 JUMPIFNOT                        R4 ; [+12]
      112 GETUPVAL                         R6 14
      113 DUPTABLE                         R7 K34 [{"messageId", "contentId", "transformFn"}]
      114 SETTABLEKS                       R3 R7 K5 ["messageId"]
      116 SETTABLEKS                       R4 R7 K32 ["contentId"]
      118 DUPCLOSURE                       R8 K35 [PROTO_0]
      119 CAPTURE                          UPVAL U7
      120 CAPTURE                          UPVAL U8
      121 SETTABLEKS                       R8 R7 K33 ["transformFn"]
      123 CALL                             R6 1 0
      124 GETUPVAL                         R6 15
      125 LOADB                            R7 0
      126 CALL                             R6 1 0
      127 RETURN                           R0 0

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
       18 CAPTURE                          UPVAL U14
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

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
       21 CAPTURE                          UPVAL U16
       22 CAPTURE                          UPVAL U1
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

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
       41 CAPTURE                          UPVAL U14
       42 CAPTURE                          VAL R6
       43 CAPTURE                          UPVAL U15
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R12 0 9
       49 MOVE                             R13 R8
       50 MOVE                             R14 R5
       51 MOVE                             R15 R4
       52 MOVE                             R16 R3
       53 MOVE                             R17 R0
       54 MOVE                             R18 R1
       55 MOVE                             R19 R2
       56 MOVE                             R20 R6
       57 MOVE                             R21 R7
       58 SETLIST                          R12 R13 9 [1]
       60 CALL                             R10 2 1
       61 MOVE                             R11 R10
       62 MOVE                             R12 R8
       63 RETURN                           R11 2

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
       18 GETTABLEKS                       R3 R0 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K12 ["LLMProviderSelectionContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Parent"]
       34 GETTABLEKS                       R5 R5 K14 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Components"]
       41 GETTABLEKS                       R6 R6 K15 ["ContentWidgets"]
       43 GETTABLEKS                       R6 R6 K16 ["SummarizedContentWidget"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K17 ["Resources"]
       50 GETTABLEKS                       R7 R7 K18 ["Localization"]
       52 GETTABLEKS                       R7 R7 K19 ["Translator"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K20 ["Types"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Util"]
       64 GETTABLEKS                       R9 R9 K7 ["Compaction"]
       66 GETTABLEKS                       R9 R9 K21 ["compactThread"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Util"]
       73 GETTABLEKS                       R10 R10 K22 ["readThread"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K23 ["Hooks"]
       80 GETTABLEKS                       R11 R11 K24 ["useAddContent"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       87 GETTABLEKS                       R12 R12 K25 ["useAddMessage"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       94 GETTABLEKS                       R13 R13 K26 ["useEditContent"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K23 ["Hooks"]
      101 GETTABLEKS                       R14 R14 K27 ["useGetThread"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K23 ["Hooks"]
      108 GETTABLEKS                       R15 R15 K28 ["useLLMRequest"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K23 ["Hooks"]
      115 GETTABLEKS                       R16 R16 K29 ["useSettingsContext"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K23 ["Hooks"]
      122 GETTABLEKS                       R17 R17 K30 ["useThreadId"]
      124 CALL                             R16 1 1
      125 DUPCLOSURE                       R17 K31 [PROTO_4]
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R8
      142 RETURN                           R17 1
