PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Components"]
        3 GETTABLEKS                       R2 R3 K1 ["DefaultLLMProvider"]
        5 GETTABLEKS                       R1 R2 K2 ["LLMProcessEvent"]
        7 GETTABLEKS                       R0 R1 K3 ["createProcessEventHandler"]
        9 CALL                             R0 0 3
       10 DUPTABLE                         R3 K7 [{"processEvent", "createLLMSession", "cancelSession"}]
       11 SETTABLEKS                       R0 R3 K4 ["processEvent"]
       13 SETTABLEKS                       R1 R3 K5 ["createLLMSession"]
       15 SETTABLEKS                       R2 R3 K6 ["cancelSession"]
       17 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R0 K7 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K8 ["createRequestHandler"]
        4 GETIMPORT                        R2 K10 [game]
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K0 ["requestHandler"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K1 ["processEvent"]
       13 SETTABLEKS                       R1 R0 K1 ["processEvent"]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K2 ["createLLMSession"]
       18 SETTABLEKS                       R1 R0 K2 ["createLLMSession"]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R1 R2 K3 ["cancelSession"]
       23 SETTABLEKS                       R1 R0 K3 ["cancelSession"]
       25 GETUPVAL                         R2 3
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+4]
       28 GETUPVAL                         R2 4
       29 GETTABLEKS                       R1 R2 K4 ["formatTools"]
       31 JUMP                             ; [+3]
       32 GETUPVAL                         R2 5
       33 GETTABLEKS                       R1 R2 K4 ["formatTools"]
       35 SETTABLEKS                       R1 R0 K4 ["formatTools"]
       37 GETUPVAL                         R2 6
       38 GETTABLEKS                       R1 R2 K11 ["getSystemMessage"]
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
        7 LOADNIL                          R2
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+6]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K2 ["useGetSystemReminders"]
       14 CALL                             R3 0 1
       15 MOVE                             R2 R3
       16 JUMP                             ; [+12]
       17 GETUPVAL                         R4 3
       18 CALL                             R4 0 1
       19 JUMPIF                           R4 ; [+3]
       20 GETUPVAL                         R4 4
       21 CALL                             R4 0 1
       22 JUMPIFNOT                        R4 ; [+4]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R3 R4 K3 ["getSystemReminders"]
       26 JUMPIF                           R3 ; [+1]
       27 LOADNIL                          R3
       28 MOVE                             R2 R3
       29 GETUPVAL                         R3 5
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+44]
       32 GETUPVAL                         R4 6
       33 GETTABLEKS                       R3 R4 K4 ["useMemo"]
       35 DUPCLOSURE                       R4 K5 [PROTO_0]
       36 CAPTURE                          UPVAL U7
       37 NEWTABLE                         R5 0 0
       39 CALL                             R3 2 1
       40 GETUPVAL                         R5 6
       41 GETTABLEKS                       R4 R5 K4 ["useMemo"]
       43 NEWCLOSURE                       R5 P1
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U9
       48 CAPTURE                          UPVAL U10
       49 CAPTURE                          UPVAL U11
       50 CAPTURE                          UPVAL U12
       51 CAPTURE                          REF R2
       52 NEWTABLE                         R6 0 3
       54 MOVE                             R7 R3
       55 MOVE                             R8 R1
       56 MOVE                             R9 R2
       57 SETLIST                          R6 R7 3 [1]
       59 CALL                             R4 2 1
       60 GETUPVAL                         R5 13
       61 GETUPVAL                         R9 7
       62 GETTABLEKS                       R8 R9 K6 ["Components"]
       64 GETTABLEKS                       R7 R8 K7 ["Contexts"]
       66 GETTABLEKS                       R6 R7 K8 ["LLMPackageContextProvider"]
       68 DUPTABLE                         R7 K10 [{"studioProvider"}]
       69 SETTABLEKS                       R4 R7 K9 ["studioProvider"]
       71 GETTABLEKS                       R8 R0 K11 ["children"]
       73 CALL                             R5 3 -1
       74 CLOSEUPVALS                      R2
       75 RETURN                           R5 -1
       76 GETUPVAL                         R7 7
       77 GETTABLEKS                       R6 R7 K6 ["Components"]
       79 GETTABLEKS                       R5 R6 K12 ["DefaultLLMProvider"]
       81 GETTABLEKS                       R4 R5 K13 ["LLMProcessEvent"]
       83 GETTABLEKS                       R3 R4 K14 ["createProcessEventHandler"]
       85 CALL                             R3 0 3
       86 GETUPVAL                         R6 13
       87 GETUPVAL                         R10 7
       88 GETTABLEKS                       R9 R10 K6 ["Components"]
       90 GETTABLEKS                       R8 R9 K7 ["Contexts"]
       92 GETTABLEKS                       R7 R8 K8 ["LLMPackageContextProvider"]
       94 DUPTABLE                         R8 K10 [{"studioProvider"}]
       95 DUPTABLE                         R9 K22 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
       96 GETUPVAL                         R11 8
       97 GETTABLEKS                       R10 R11 K23 ["createRequestHandler"]
       99 GETIMPORT                        R11 K25 [game]
      101 MOVE                             R12 R1
      102 CALL                             R10 2 1
      103 SETTABLEKS                       R10 R9 K15 ["requestHandler"]
      105 SETTABLEKS                       R3 R9 K16 ["processEvent"]
      107 SETTABLEKS                       R4 R9 K17 ["createLLMSession"]
      109 SETTABLEKS                       R5 R9 K18 ["cancelSession"]
      111 GETUPVAL                         R11 9
      112 CALL                             R11 0 1
      113 JUMPIFNOT                        R11 ; [+4]
      114 GETUPVAL                         R11 10
      115 GETTABLEKS                       R10 R11 K19 ["formatTools"]
      117 JUMP                             ; [+3]
      118 GETUPVAL                         R11 11
      119 GETTABLEKS                       R10 R11 K19 ["formatTools"]
      121 SETTABLEKS                       R10 R9 K19 ["formatTools"]
      123 GETUPVAL                         R11 12
      124 GETTABLEKS                       R10 R11 K26 ["getSystemMessage"]
      126 CALL                             R10 0 1
      127 SETTABLEKS                       R10 R9 K20 ["systemMessage"]
      129 SETTABLEKS                       R2 R9 K21 ["systemRemindersGetter"]
      131 SETTABLEKS                       R9 R8 K9 ["studioProvider"]
      133 GETTABLEKS                       R9 R0 K11 ["children"]
      135 CALL                             R6 3 -1
      136 CLOSEUPVALS                      R2
      137 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R6 R1 K10 ["Flags"]
       30 GETTABLEKS                       R5 R6 K11 ["Shared"]
       32 GETTABLEKS                       R4 R5 K12 ["FFlagAssistantSupportSlashCommandCancellation"]
       34 GETTABLEKS                       R7 R1 K10 ["Flags"]
       36 GETTABLEKS                       R6 R7 K11 ["Shared"]
       38 GETTABLEKS                       R5 R6 K13 ["FFlagAssistantTestModeSystemReminder"]
       40 GETTABLEKS                       R8 R1 K10 ["Flags"]
       42 GETTABLEKS                       R7 R8 K11 ["Shared"]
       44 GETTABLEKS                       R6 R7 K14 ["FFlagAssistantAgentModeSystemReminder"]
       46 GETTABLEKS                       R9 R1 K10 ["Flags"]
       48 GETTABLEKS                       R8 R9 K11 ["Shared"]
       50 GETTABLEKS                       R7 R8 K15 ["FFlagAssistantSystemReminderRefactor"]
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R11 R0 K16 ["Src"]
       56 GETTABLEKS                       R10 R11 K10 ["Flags"]
       58 GETTABLEKS                       R9 R10 K17 ["FFlagAssistantUseNewOpenAPIClients"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R12 R0 K16 ["Src"]
       63 GETTABLEKS                       R11 R12 K18 ["Components"]
       65 GETTABLEKS                       R10 R11 K19 ["Contexts"]
       67 GETTABLEKS                       R9 R10 K20 ["StudioLLM"]
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R9 K21 ["StudioLLMRequest"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K5 [require]
       76 GETTABLEKS                       R12 R9 K22 ["StudioLLMSystemMessage"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K5 [require]
       81 GETTABLEKS                       R13 R9 K23 ["StudioLLMSystemReminder"]
       83 CALL                             R12 1 1
       84 GETTABLEKS                       R13 R2 K24 ["ContextServices"]
       86 GETTABLEKS                       R14 R13 K25 ["Plugin"]
       88 GETTABLEKS                       R17 R1 K18 ["Components"]
       90 GETTABLEKS                       R16 R17 K26 ["Claude"]
       92 GETTABLEKS                       R15 R16 K27 ["ClaudeLLMToolFormat"]
       94 GETTABLEKS                       R18 R1 K18 ["Components"]
       96 GETTABLEKS                       R17 R18 K28 ["DefaultLLMProvider"]
       98 GETTABLEKS                       R16 R17 K29 ["LLMToolFormat"]
      100 GETTABLEKS                       R17 R3 K30 ["createElement"]
      102 DUPCLOSURE                       R18 K31 [PROTO_2]
      103 CAPTURE                          VAL R14
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R17
      117 RETURN                           R18 1
