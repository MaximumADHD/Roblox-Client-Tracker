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
       26 GETTABLEKS                       R1 R2 K4 ["formatTools"]
       28 SETTABLEKS                       R1 R0 K4 ["formatTools"]
       30 GETUPVAL                         R2 4
       31 GETTABLEKS                       R1 R2 K11 ["getSystemMessage"]
       33 CALL                             R1 0 1
       34 SETTABLEKS                       R1 R0 K5 ["systemMessage"]
       36 GETUPVAL                         R2 5
       37 CALL                             R2 0 1
       38 JUMPIFNOT                        R2 ; [+4]
       39 GETUPVAL                         R2 6
       40 GETTABLEKS                       R1 R2 K12 ["getSystemReminders"]
       42 JUMPIF                           R1 ; [+1]
       43 LOADNIL                          R1
       44 SETTABLEKS                       R1 R0 K6 ["systemRemindersGetter"]
       46 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+41]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       13 DUPCLOSURE                       R3 K3 [PROTO_0]
       14 CAPTURE                          UPVAL U3
       15 NEWTABLE                         R4 0 0
       17 CALL                             R2 2 1
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 NEWTABLE                         R5 0 2
       31 MOVE                             R6 R2
       32 MOVE                             R7 R1
       33 SETLIST                          R5 R6 2 [1]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R4 9
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R7 R8 K4 ["Components"]
       40 GETTABLEKS                       R6 R7 K5 ["Contexts"]
       42 GETTABLEKS                       R5 R6 K6 ["LLMPackageContextProvider"]
       44 DUPTABLE                         R6 K8 [{"studioProvider"}]
       45 SETTABLEKS                       R3 R6 K7 ["studioProvider"]
       47 GETTABLEKS                       R7 R0 K9 ["children"]
       49 CALL                             R4 3 -1
       50 RETURN                           R4 -1
       51 GETUPVAL                         R6 3
       52 GETTABLEKS                       R5 R6 K4 ["Components"]
       54 GETTABLEKS                       R4 R5 K10 ["DefaultLLMProvider"]
       56 GETTABLEKS                       R3 R4 K11 ["LLMProcessEvent"]
       58 GETTABLEKS                       R2 R3 K12 ["createProcessEventHandler"]
       60 CALL                             R2 0 3
       61 GETUPVAL                         R5 9
       62 GETUPVAL                         R9 3
       63 GETTABLEKS                       R8 R9 K4 ["Components"]
       65 GETTABLEKS                       R7 R8 K5 ["Contexts"]
       67 GETTABLEKS                       R6 R7 K6 ["LLMPackageContextProvider"]
       69 DUPTABLE                         R7 K8 [{"studioProvider"}]
       70 DUPTABLE                         R8 K20 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
       71 GETUPVAL                         R10 4
       72 GETTABLEKS                       R9 R10 K21 ["createRequestHandler"]
       74 GETIMPORT                        R10 K23 [game]
       76 MOVE                             R11 R1
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K13 ["requestHandler"]
       80 SETTABLEKS                       R2 R8 K14 ["processEvent"]
       82 SETTABLEKS                       R3 R8 K15 ["createLLMSession"]
       84 SETTABLEKS                       R4 R8 K16 ["cancelSession"]
       86 GETUPVAL                         R10 5
       87 GETTABLEKS                       R9 R10 K17 ["formatTools"]
       89 SETTABLEKS                       R9 R8 K17 ["formatTools"]
       91 GETUPVAL                         R10 6
       92 GETTABLEKS                       R9 R10 K24 ["getSystemMessage"]
       94 CALL                             R9 0 1
       95 SETTABLEKS                       R9 R8 K18 ["systemMessage"]
       97 GETUPVAL                         R10 7
       98 CALL                             R10 0 1
       99 JUMPIFNOT                        R10 ; [+4]
      100 GETUPVAL                         R10 8
      101 GETTABLEKS                       R9 R10 K25 ["getSystemReminders"]
      103 JUMPIF                           R9 ; [+1]
      104 LOADNIL                          R9
      105 SETTABLEKS                       R9 R8 K19 ["systemRemindersGetter"]
      107 SETTABLEKS                       R8 R7 K7 ["studioProvider"]
      109 GETTABLEKS                       R8 R0 K9 ["children"]
      111 CALL                             R5 3 -1
      112 RETURN                           R5 -1

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
       40 GETTABLEKS                       R9 R0 K14 ["Src"]
       42 GETTABLEKS                       R8 R9 K15 ["Components"]
       44 GETTABLEKS                       R7 R8 K16 ["Contexts"]
       46 GETTABLEKS                       R6 R7 K17 ["StudioLLM"]
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R6 K18 ["StudioLLMRequest"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R6 K19 ["StudioLLMSystemMessage"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R6 K20 ["StudioLLMSystemReminder"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R2 K21 ["ContextServices"]
       65 GETTABLEKS                       R11 R10 K22 ["Plugin"]
       67 GETTABLEKS                       R14 R1 K15 ["Components"]
       69 GETTABLEKS                       R13 R14 K23 ["Claude"]
       71 GETTABLEKS                       R12 R13 K24 ["ClaudeLLMToolFormat"]
       73 GETTABLEKS                       R13 R3 K25 ["createElement"]
       75 DUPCLOSURE                       R14 K26 [PROTO_2]
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R13
       86 RETURN                           R14 1
