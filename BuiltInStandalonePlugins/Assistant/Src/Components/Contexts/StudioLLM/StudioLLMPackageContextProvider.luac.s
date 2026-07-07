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
       26 GETTABLEKS                       R2 R2 K11 ["FFlagAssistantUseNewOpenAPIClients"]
       28 JUMPIFNOT                        R2 ; [+4]
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R1 R1 K4 ["formatTools"]
       32 JUMP                             ; [+3]
       33 GETUPVAL                         R1 5
       34 GETTABLEKS                       R1 R1 K4 ["formatTools"]
       36 SETTABLEKS                       R1 R0 K4 ["formatTools"]
       38 GETUPVAL                         R1 6
       39 GETTABLEKS                       R1 R1 K12 ["getSystemMessage"]
       41 CALL                             R1 0 1
       42 SETTABLEKS                       R1 R0 K5 ["systemMessage"]
       44 GETUPVAL                         R1 7
       45 SETTABLEKS                       R1 R0 K6 ["systemRemindersGetter"]
       47 RETURN                           R0 1

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
       12 GETTABLEKS                       R3 R3 K3 ["FFlagAssistantSupportSlashCommandCancellation"]
       14 JUMPIFNOT                        R3 ; [+43]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K4 ["useMemo"]
       18 DUPCLOSURE                       R4 K5 [PROTO_0]
       19 CAPTURE                          UPVAL U4
       20 NEWTABLE                         R5 0 0
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K4 ["useMemo"]
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          UPVAL U8
       34 CAPTURE                          VAL R2
       35 NEWTABLE                         R6 0 3
       37 MOVE                             R7 R3
       38 MOVE                             R8 R1
       39 MOVE                             R9 R2
       40 SETLIST                          R6 R7 3 [1]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 9
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K6 ["Components"]
       47 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       49 GETTABLEKS                       R6 R6 K8 ["LLMPackageContextProvider"]
       51 DUPTABLE                         R7 K10 [{"studioProvider"}]
       52 SETTABLEKS                       R4 R7 K9 ["studioProvider"]
       54 GETTABLEKS                       R8 R0 K11 ["children"]
       56 CALL                             R5 3 -1
       57 RETURN                           R5 -1
       58 GETUPVAL                         R3 4
       59 GETTABLEKS                       R3 R3 K6 ["Components"]
       61 GETTABLEKS                       R3 R3 K12 ["DefaultLLMProvider"]
       63 GETTABLEKS                       R3 R3 K13 ["LLMProcessEvent"]
       65 GETTABLEKS                       R3 R3 K14 ["createProcessEventHandler"]
       67 CALL                             R3 0 3
       68 GETUPVAL                         R6 9
       69 GETUPVAL                         R7 4
       70 GETTABLEKS                       R7 R7 K6 ["Components"]
       72 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       74 GETTABLEKS                       R7 R7 K8 ["LLMPackageContextProvider"]
       76 DUPTABLE                         R8 K10 [{"studioProvider"}]
       77 DUPTABLE                         R9 K22 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
       78 GETUPVAL                         R10 5
       79 GETTABLEKS                       R10 R10 K23 ["createRequestHandler"]
       81 GETIMPORT                        R11 K25 [game]
       83 MOVE                             R12 R1
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K15 ["requestHandler"]
       87 SETTABLEKS                       R3 R9 K16 ["processEvent"]
       89 SETTABLEKS                       R4 R9 K17 ["createLLMSession"]
       91 SETTABLEKS                       R5 R9 K18 ["cancelSession"]
       93 GETUPVAL                         R11 2
       94 GETTABLEKS                       R11 R11 K26 ["FFlagAssistantUseNewOpenAPIClients"]
       96 JUMPIFNOT                        R11 ; [+4]
       97 GETUPVAL                         R10 6
       98 GETTABLEKS                       R10 R10 K19 ["formatTools"]
      100 JUMP                             ; [+3]
      101 GETUPVAL                         R10 7
      102 GETTABLEKS                       R10 R10 K19 ["formatTools"]
      104 SETTABLEKS                       R10 R9 K19 ["formatTools"]
      106 GETUPVAL                         R10 8
      107 GETTABLEKS                       R10 R10 K27 ["getSystemMessage"]
      109 CALL                             R10 0 1
      110 SETTABLEKS                       R10 R9 K20 ["systemMessage"]
      112 SETTABLEKS                       R2 R9 K21 ["systemRemindersGetter"]
      114 SETTABLEKS                       R9 R8 K9 ["studioProvider"]
      116 GETTABLEKS                       R9 R0 K11 ["children"]
      118 CALL                             R6 3 -1
      119 RETURN                           R6 -1

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
       45 GETTABLEKS                       R7 R5 K15 ["StudioLLMRequest"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R5 K16 ["StudioLLMSystemMessage"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R5 K17 ["StudioLLMSystemReminder"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R2 K18 ["ContextServices"]
       60 GETTABLEKS                       R10 R9 K19 ["Plugin"]
       62 GETTABLEKS                       R11 R1 K12 ["Components"]
       64 GETTABLEKS                       R11 R11 K20 ["Claude"]
       66 GETTABLEKS                       R11 R11 K21 ["ClaudeLLMToolFormat"]
       68 GETTABLEKS                       R12 R1 K12 ["Components"]
       70 GETTABLEKS                       R12 R12 K22 ["DefaultLLMProvider"]
       72 GETTABLEKS                       R12 R12 K23 ["LLMToolFormat"]
       74 GETTABLEKS                       R13 R3 K24 ["createElement"]
       76 DUPCLOSURE                       R14 K25 [PROTO_2]
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R13
       87 RETURN                           R14 1
