PROTO_0:
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

PROTO_1:
        0 DUPTABLE                         R0 K7 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K8 ["createRequestHandler"]
        4 GETIMPORT                        R2 K10 [game]
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K0 ["requestHandler"]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K1 ["processEvent"]
       13 SETTABLEKS                       R1 R0 K1 ["processEvent"]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K2 ["createLLMSession"]
       18 SETTABLEKS                       R1 R0 K2 ["createLLMSession"]
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R1 K3 ["cancelSession"]
       23 SETTABLEKS                       R1 R0 K3 ["cancelSession"]
       25 GETUPVAL                         R2 3
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+4]
       28 GETUPVAL                         R1 4
       29 GETTABLEKS                       R1 R1 K4 ["formatTools"]
       31 JUMP                             ; [+3]
       32 GETUPVAL                         R1 5
       33 GETTABLEKS                       R1 R1 K4 ["formatTools"]
       35 SETTABLEKS                       R1 R0 K4 ["formatTools"]
       37 GETUPVAL                         R1 6
       38 GETTABLEKS                       R1 R1 K11 ["getSystemMessage"]
       40 CALL                             R1 0 1
       41 SETTABLEKS                       R1 R0 K5 ["systemMessage"]
       43 GETUPVAL                         R1 7
       44 SETTABLEKS                       R1 R0 K6 ["systemRemindersGetter"]
       46 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useGetSystemReminders"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+43]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       17 DUPCLOSURE                       R4 K4 [PROTO_0]
       18 CAPTURE                          UPVAL U4
       19 NEWTABLE                         R5 0 0
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R6 0 3
       36 MOVE                             R7 R3
       37 MOVE                             R8 R1
       38 MOVE                             R9 R2
       39 SETLIST                          R6 R7 3 [1]
       41 CALL                             R4 2 1
       42 GETUPVAL                         R5 10
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R6 R6 K5 ["Components"]
       46 GETTABLEKS                       R6 R6 K6 ["Contexts"]
       48 GETTABLEKS                       R6 R6 K7 ["LLMPackageContextProvider"]
       50 DUPTABLE                         R7 K9 [{"studioProvider"}]
       51 SETTABLEKS                       R4 R7 K8 ["studioProvider"]
       53 GETTABLEKS                       R8 R0 K10 ["children"]
       55 CALL                             R5 3 -1
       56 RETURN                           R5 -1
       57 GETUPVAL                         R3 4
       58 GETTABLEKS                       R3 R3 K5 ["Components"]
       60 GETTABLEKS                       R3 R3 K11 ["DefaultLLMProvider"]
       62 GETTABLEKS                       R3 R3 K12 ["LLMProcessEvent"]
       64 GETTABLEKS                       R3 R3 K13 ["createProcessEventHandler"]
       66 CALL                             R3 0 3
       67 GETUPVAL                         R6 10
       68 GETUPVAL                         R7 4
       69 GETTABLEKS                       R7 R7 K5 ["Components"]
       71 GETTABLEKS                       R7 R7 K6 ["Contexts"]
       73 GETTABLEKS                       R7 R7 K7 ["LLMPackageContextProvider"]
       75 DUPTABLE                         R8 K9 [{"studioProvider"}]
       76 DUPTABLE                         R9 K21 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
       77 GETUPVAL                         R10 5
       78 GETTABLEKS                       R10 R10 K22 ["createRequestHandler"]
       80 GETIMPORT                        R11 K24 [game]
       82 MOVE                             R12 R1
       83 CALL                             R10 2 1
       84 SETTABLEKS                       R10 R9 K14 ["requestHandler"]
       86 SETTABLEKS                       R3 R9 K15 ["processEvent"]
       88 SETTABLEKS                       R4 R9 K16 ["createLLMSession"]
       90 SETTABLEKS                       R5 R9 K17 ["cancelSession"]
       92 GETUPVAL                         R11 6
       93 CALL                             R11 0 1
       94 JUMPIFNOT                        R11 ; [+4]
       95 GETUPVAL                         R10 7
       96 GETTABLEKS                       R10 R10 K18 ["formatTools"]
       98 JUMP                             ; [+3]
       99 GETUPVAL                         R10 8
      100 GETTABLEKS                       R10 R10 K18 ["formatTools"]
      102 SETTABLEKS                       R10 R9 K18 ["formatTools"]
      104 GETUPVAL                         R10 9
      105 GETTABLEKS                       R10 R10 K25 ["getSystemMessage"]
      107 CALL                             R10 0 1
      108 SETTABLEKS                       R10 R9 K19 ["systemMessage"]
      110 SETTABLEKS                       R2 R9 K20 ["systemRemindersGetter"]
      112 SETTABLEKS                       R9 R8 K8 ["studioProvider"]
      114 GETTABLEKS                       R9 R0 K10 ["children"]
      116 CALL                             R6 3 -1
      117 RETURN                           R6 -1

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
       28 GETTABLEKS                       R4 R1 K10 ["Flags"]
       30 GETTABLEKS                       R4 R4 K11 ["Shared"]
       32 GETTABLEKS                       R4 R4 K12 ["FFlagAssistantSupportSlashCommandCancellation"]
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K13 ["Src"]
       38 GETTABLEKS                       R6 R6 K10 ["Flags"]
       40 GETTABLEKS                       R6 R6 K14 ["FFlagAssistantUseNewOpenAPIClients"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R0 K13 ["Src"]
       45 GETTABLEKS                       R6 R6 K15 ["Components"]
       47 GETTABLEKS                       R6 R6 K16 ["Contexts"]
       49 GETTABLEKS                       R6 R6 K17 ["StudioLLM"]
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R6 K18 ["StudioLLMRequest"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R6 K19 ["StudioLLMSystemMessage"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R6 K20 ["StudioLLMSystemReminder"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R10 R2 K21 ["ContextServices"]
       68 GETTABLEKS                       R11 R10 K22 ["Plugin"]
       70 GETTABLEKS                       R12 R1 K15 ["Components"]
       72 GETTABLEKS                       R12 R12 K23 ["Claude"]
       74 GETTABLEKS                       R12 R12 K24 ["ClaudeLLMToolFormat"]
       76 GETTABLEKS                       R13 R1 K15 ["Components"]
       78 GETTABLEKS                       R13 R13 K25 ["DefaultLLMProvider"]
       80 GETTABLEKS                       R13 R13 K26 ["LLMToolFormat"]
       82 GETTABLEKS                       R14 R3 K27 ["createElement"]
       84 DUPCLOSURE                       R15 K28 [PROTO_2]
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R14
       96 RETURN                           R15 1
