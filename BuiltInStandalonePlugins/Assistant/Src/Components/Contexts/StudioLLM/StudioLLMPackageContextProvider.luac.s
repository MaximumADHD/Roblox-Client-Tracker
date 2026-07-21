PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseLocalCas"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["createRequestHandler"]
        7 GETIMPORT                        R1 K3 [game]
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K1 ["createRequestHandler"]
       15 GETIMPORT                        R1 K3 [game]
       17 GETUPVAL                         R2 2
       18 CALL                             R0 2 -1
       19 RETURN                           R0 -1

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
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K9 ["createRequestHandler"]
        8 GETIMPORT                        R2 K11 [game]
       10 GETUPVAL                         R3 2
       11 CALL                             R1 2 1
       12 JUMP                             ; [+7]
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K9 ["createRequestHandler"]
       16 GETIMPORT                        R2 K11 [game]
       18 GETUPVAL                         R3 2
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K0 ["requestHandler"]
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R1 R1 K1 ["processEvent"]
       25 SETTABLEKS                       R1 R0 K1 ["processEvent"]
       27 GETUPVAL                         R1 4
       28 GETTABLEKS                       R1 R1 K2 ["createLLMSession"]
       30 SETTABLEKS                       R1 R0 K2 ["createLLMSession"]
       32 GETUPVAL                         R1 4
       33 GETTABLEKS                       R1 R1 K3 ["cancelSession"]
       35 SETTABLEKS                       R1 R0 K3 ["cancelSession"]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K12 ["FFlagAssistantUseNewOpenAPIClients"]
       40 JUMPIFNOT                        R2 ; [+4]
       41 GETUPVAL                         R1 5
       42 GETTABLEKS                       R1 R1 K4 ["formatTools"]
       44 JUMP                             ; [+3]
       45 GETUPVAL                         R1 6
       46 GETTABLEKS                       R1 R1 K4 ["formatTools"]
       48 SETTABLEKS                       R1 R0 K4 ["formatTools"]
       50 GETUPVAL                         R1 7
       51 GETTABLEKS                       R1 R1 K13 ["getSystemMessage"]
       53 CALL                             R1 0 1
       54 SETTABLEKS                       R1 R0 K5 ["systemMessage"]
       56 GETUPVAL                         R1 8
       57 SETTABLEKS                       R1 R0 K6 ["systemRemindersGetter"]
       59 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useGetSystemReminders"]
       10 CALL                             R2 0 1
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U4
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K3 ["FFlagAssistantSupportSlashCommandCancellation"]
       19 JUMPIFNOT                        R4 ; [+44]
       20 GETUPVAL                         R4 5
       21 GETTABLEKS                       R4 R4 K4 ["useMemo"]
       23 DUPCLOSURE                       R5 K5 [PROTO_1]
       24 CAPTURE                          UPVAL U6
       25 NEWTABLE                         R6 0 0
       27 CALL                             R4 2 1
       28 GETUPVAL                         R5 5
       29 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       31 NEWCLOSURE                       R6 P2
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          UPVAL U8
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R7 0 3
       43 MOVE                             R8 R4
       44 MOVE                             R9 R1
       45 MOVE                             R10 R2
       46 SETLIST                          R7 R8 3 [1]
       48 CALL                             R5 2 1
       49 GETUPVAL                         R6 10
       50 GETUPVAL                         R7 6
       51 GETTABLEKS                       R7 R7 K6 ["Components"]
       53 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       55 GETTABLEKS                       R7 R7 K8 ["LLMPackageContextProvider"]
       57 DUPTABLE                         R8 K10 [{"studioProvider"}]
       58 SETTABLEKS                       R5 R8 K9 ["studioProvider"]
       60 GETTABLEKS                       R9 R0 K11 ["children"]
       62 CALL                             R6 3 -1
       63 RETURN                           R6 -1
       64 GETUPVAL                         R4 6
       65 GETTABLEKS                       R4 R4 K6 ["Components"]
       67 GETTABLEKS                       R4 R4 K12 ["DefaultLLMProvider"]
       69 GETTABLEKS                       R4 R4 K13 ["LLMProcessEvent"]
       71 GETTABLEKS                       R4 R4 K14 ["createProcessEventHandler"]
       73 CALL                             R4 0 3
       74 GETUPVAL                         R7 10
       75 GETUPVAL                         R8 6
       76 GETTABLEKS                       R8 R8 K6 ["Components"]
       78 GETTABLEKS                       R8 R8 K7 ["Contexts"]
       80 GETTABLEKS                       R8 R8 K8 ["LLMPackageContextProvider"]
       82 DUPTABLE                         R9 K10 [{"studioProvider"}]
       83 DUPTABLE                         R10 K22 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
       84 GETUPVAL                         R12 2
       85 GETTABLEKS                       R12 R12 K23 ["FFlagAssistantUseLocalCas"]
       87 JUMPIFNOT                        R12 ; [+8]
       88 GETUPVAL                         R11 3
       89 GETTABLEKS                       R11 R11 K24 ["createRequestHandler"]
       91 GETIMPORT                        R12 K26 [game]
       93 MOVE                             R13 R1
       94 CALL                             R11 2 1
       95 JUMP                             ; [+7]
       96 GETUPVAL                         R11 4
       97 GETTABLEKS                       R11 R11 K24 ["createRequestHandler"]
       99 GETIMPORT                        R12 K26 [game]
      101 MOVE                             R13 R1
      102 CALL                             R11 2 1
      103 SETTABLEKS                       R11 R10 K15 ["requestHandler"]
      105 SETTABLEKS                       R4 R10 K16 ["processEvent"]
      107 SETTABLEKS                       R5 R10 K17 ["createLLMSession"]
      109 SETTABLEKS                       R6 R10 K18 ["cancelSession"]
      111 GETUPVAL                         R12 2
      112 GETTABLEKS                       R12 R12 K27 ["FFlagAssistantUseNewOpenAPIClients"]
      114 JUMPIFNOT                        R12 ; [+4]
      115 GETUPVAL                         R11 7
      116 GETTABLEKS                       R11 R11 K19 ["formatTools"]
      118 JUMP                             ; [+3]
      119 GETUPVAL                         R11 8
      120 GETTABLEKS                       R11 R11 K19 ["formatTools"]
      122 SETTABLEKS                       R11 R10 K19 ["formatTools"]
      124 GETUPVAL                         R11 9
      125 GETTABLEKS                       R11 R11 K28 ["getSystemMessage"]
      127 CALL                             R11 0 1
      128 SETTABLEKS                       R11 R10 K20 ["systemMessage"]
      130 SETTABLEKS                       R2 R10 K21 ["systemRemindersGetter"]
      132 SETTABLEKS                       R10 R9 K9 ["studioProvider"]
      134 GETTABLEKS                       R10 R0 K11 ["children"]
      136 CALL                             R7 3 -1
      137 RETURN                           R7 -1

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
       79 GETTABLEKS                       R14 R3 K25 ["createElement"]
       81 DUPCLOSURE                       R15 K26 [PROTO_3]
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R14
       93 RETURN                           R15 1
