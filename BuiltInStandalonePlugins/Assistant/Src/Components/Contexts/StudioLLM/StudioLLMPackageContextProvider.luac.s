PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseLocalCas"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["createRequestHandler"]
        7 GETIMPORT                        R1 K3 [game]
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R3 3
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1
       13 GETUPVAL                         R0 4
       14 GETTABLEKS                       R0 R0 K1 ["createRequestHandler"]
       16 GETIMPORT                        R1 K3 [game]
       18 GETUPVAL                         R2 2
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Components"]
        3 GETTABLEKS                       R0 R0 K1 ["DefaultLLMProvider"]
        5 GETTABLEKS                       R0 R0 K2 ["LLMProcessEvent"]
        7 GETTABLEKS                       R0 R0 K3 ["createProcessEventHandler"]
        9 CALL                             R0 0 3
       10 DUPTABLE                         R3 K7 [{"processEvent", "createLLMSession", "cancelSession"}]
       11 SETTABLEKS                       R0 R3 K4 ["processEvent"]
       13 SETTABLEKS                       R1 R3 K5 ["createLLMSession"]
       15 SETTABLEKS                       R2 R3 K6 ["cancelSession"]
       17 RETURN                           R3 1

PROTO_2:
        0 DUPTABLE                         R0 K7 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K8 ["FFlagAssistantUseLocalCas"]
        4 JUMPIFNOT                        R2 ; [+9]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K9 ["createRequestHandler"]
        8 GETIMPORT                        R2 K11 [game]
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R4 3
       12 CALL                             R1 3 1
       13 JUMP                             ; [+7]
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K9 ["createRequestHandler"]
       17 GETIMPORT                        R2 K11 [game]
       19 GETUPVAL                         R3 2
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K0 ["requestHandler"]
       23 GETUPVAL                         R1 5
       24 GETTABLEKS                       R1 R1 K1 ["processEvent"]
       26 SETTABLEKS                       R1 R0 K1 ["processEvent"]
       28 GETUPVAL                         R1 5
       29 GETTABLEKS                       R1 R1 K2 ["createLLMSession"]
       31 SETTABLEKS                       R1 R0 K2 ["createLLMSession"]
       33 GETUPVAL                         R1 5
       34 GETTABLEKS                       R1 R1 K3 ["cancelSession"]
       36 SETTABLEKS                       R1 R0 K3 ["cancelSession"]
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K12 ["FFlagAssistantUseNewOpenAPIClients"]
       41 JUMPIFNOT                        R2 ; [+4]
       42 GETUPVAL                         R1 6
       43 GETTABLEKS                       R1 R1 K4 ["formatTools"]
       45 JUMP                             ; [+3]
       46 GETUPVAL                         R1 7
       47 GETTABLEKS                       R1 R1 K4 ["formatTools"]
       49 SETTABLEKS                       R1 R0 K4 ["formatTools"]
       51 GETUPVAL                         R1 8
       52 GETTABLEKS                       R1 R1 K13 ["getSystemMessage"]
       54 CALL                             R1 0 1
       55 SETTABLEKS                       R1 R0 K5 ["systemMessage"]
       57 GETUPVAL                         R1 9
       58 SETTABLEKS                       R1 R0 K6 ["systemRemindersGetter"]
       60 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["useGetSystemReminders"]
       12 CALL                             R3 0 1
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U5
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K3 ["FFlagAssistantSupportSlashCommandCancellation"]
       22 JUMPIFNOT                        R5 ; [+46]
       23 GETUPVAL                         R5 6
       24 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       26 DUPCLOSURE                       R6 K5 [PROTO_1]
       27 CAPTURE                          UPVAL U7
       28 NEWTABLE                         R7 0 0
       30 CALL                             R5 2 1
       31 GETUPVAL                         R6 6
       32 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       34 NEWCLOSURE                       R7 P2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R5
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          UPVAL U9
       43 CAPTURE                          UPVAL U10
       44 CAPTURE                          VAL R3
       45 NEWTABLE                         R8 0 4
       47 MOVE                             R9 R5
       48 MOVE                             R10 R1
       49 MOVE                             R11 R3
       50 MOVE                             R12 R2
       51 SETLIST                          R8 R9 4 [1]
       53 CALL                             R6 2 1
       54 GETUPVAL                         R7 11
       55 GETUPVAL                         R8 7
       56 GETTABLEKS                       R8 R8 K6 ["Components"]
       58 GETTABLEKS                       R8 R8 K7 ["Contexts"]
       60 GETTABLEKS                       R8 R8 K8 ["LLMPackageContextProvider"]
       62 DUPTABLE                         R9 K10 [{"studioProvider"}]
       63 SETTABLEKS                       R6 R9 K9 ["studioProvider"]
       65 GETTABLEKS                       R10 R0 K11 ["children"]
       67 CALL                             R7 3 -1
       68 RETURN                           R7 -1
       69 GETUPVAL                         R5 7
       70 GETTABLEKS                       R5 R5 K6 ["Components"]
       72 GETTABLEKS                       R5 R5 K12 ["DefaultLLMProvider"]
       74 GETTABLEKS                       R5 R5 K13 ["LLMProcessEvent"]
       76 GETTABLEKS                       R5 R5 K14 ["createProcessEventHandler"]
       78 CALL                             R5 0 3
       79 GETUPVAL                         R8 11
       80 GETUPVAL                         R9 7
       81 GETTABLEKS                       R9 R9 K6 ["Components"]
       83 GETTABLEKS                       R9 R9 K7 ["Contexts"]
       85 GETTABLEKS                       R9 R9 K8 ["LLMPackageContextProvider"]
       87 DUPTABLE                         R10 K10 [{"studioProvider"}]
       88 DUPTABLE                         R11 K22 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
       89 GETUPVAL                         R13 3
       90 GETTABLEKS                       R13 R13 K23 ["FFlagAssistantUseLocalCas"]
       92 JUMPIFNOT                        R13 ; [+9]
       93 GETUPVAL                         R12 4
       94 GETTABLEKS                       R12 R12 K24 ["createRequestHandler"]
       96 GETIMPORT                        R13 K26 [game]
       98 MOVE                             R14 R1
       99 MOVE                             R15 R2
      100 CALL                             R12 3 1
      101 JUMP                             ; [+7]
      102 GETUPVAL                         R12 5
      103 GETTABLEKS                       R12 R12 K24 ["createRequestHandler"]
      105 GETIMPORT                        R13 K26 [game]
      107 MOVE                             R14 R1
      108 CALL                             R12 2 1
      109 SETTABLEKS                       R12 R11 K15 ["requestHandler"]
      111 SETTABLEKS                       R5 R11 K16 ["processEvent"]
      113 SETTABLEKS                       R6 R11 K17 ["createLLMSession"]
      115 SETTABLEKS                       R7 R11 K18 ["cancelSession"]
      117 GETUPVAL                         R13 3
      118 GETTABLEKS                       R13 R13 K27 ["FFlagAssistantUseNewOpenAPIClients"]
      120 JUMPIFNOT                        R13 ; [+4]
      121 GETUPVAL                         R12 8
      122 GETTABLEKS                       R12 R12 K19 ["formatTools"]
      124 JUMP                             ; [+3]
      125 GETUPVAL                         R12 9
      126 GETTABLEKS                       R12 R12 K19 ["formatTools"]
      128 SETTABLEKS                       R12 R11 K19 ["formatTools"]
      130 GETUPVAL                         R12 10
      131 GETTABLEKS                       R12 R12 K28 ["getSystemMessage"]
      133 CALL                             R12 0 1
      134 SETTABLEKS                       R12 R11 K20 ["systemMessage"]
      136 SETTABLEKS                       R3 R11 K21 ["systemRemindersGetter"]
      138 SETTABLEKS                       R11 R10 K9 ["studioProvider"]
      140 GETTABLEKS                       R11 R0 K11 ["children"]
      142 CALL                             R8 3 -1
      143 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R0 K10 ["Src"]
       37 GETTABLEKS                       R5 R5 K12 ["Components"]
       39 GETTABLEKS                       R5 R5 K13 ["Contexts"]
       41 GETTABLEKS                       R5 R5 K14 ["StudioLLM"]
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R5 K15 ["StudioLLMCASRequest"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R5 K16 ["StudioLLMRequest"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R5 K17 ["StudioLLMSystemMessage"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R5 K18 ["StudioLLMSystemReminder"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R2 K19 ["ContextServices"]
       65 GETTABLEKS                       R11 R10 K20 ["Plugin"]
       67 GETTABLEKS                       R12 R1 K12 ["Components"]
       69 GETTABLEKS                       R12 R12 K21 ["Claude"]
       71 GETTABLEKS                       R12 R12 K22 ["ClaudeLLMToolFormat"]
       73 GETTABLEKS                       R13 R1 K12 ["Components"]
       75 GETTABLEKS                       R13 R13 K23 ["DefaultLLMProvider"]
       77 GETTABLEKS                       R13 R13 K24 ["LLMToolFormat"]
       79 GETTABLEKS                       R14 R1 K12 ["Components"]
       81 GETTABLEKS                       R14 R14 K25 ["Hooks"]
       83 GETTABLEKS                       R14 R14 K26 ["useWithClient"]
       85 GETTABLEKS                       R15 R3 K27 ["createElement"]
       87 DUPCLOSURE                       R16 K28 [PROTO_3]
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R15
      100 RETURN                           R16 1
