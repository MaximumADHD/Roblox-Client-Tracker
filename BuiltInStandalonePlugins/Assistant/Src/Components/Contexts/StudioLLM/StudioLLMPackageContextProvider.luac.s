PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 SETTABLEKS                       R1 R0 K1 ["current"]
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["createRequestHandler"]
       10 GETIMPORT                        R3 K3 [game]
       12 GETUPVAL                         R4 4
       13 CALL                             R2 2 -1
       14 CALL                             R0 -1 -1
       15 RETURN                           R0 -1
       16 GETUPVAL                         R0 3
       17 GETTABLEKS                       R0 R0 K1 ["createRequestHandler"]
       19 GETIMPORT                        R1 K3 [game]
       21 GETUPVAL                         R2 4
       22 CALL                             R0 2 -1
       23 RETURN                           R0 -1

PROTO_3:
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

PROTO_4:
        0 DUPTABLE                         R0 K7 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K8 ["FFlagAssistantCreditMetering"]
        4 JUMPIFNOT                        R2 ; [+12]
        5 GETUPVAL                         R1 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K9 ["createRequestHandler"]
       11 GETIMPORT                        R4 K11 [game]
       13 GETUPVAL                         R5 4
       14 CALL                             R3 2 -1
       15 CALL                             R1 -1 1
       16 JUMP                             ; [+7]
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R1 R1 K9 ["createRequestHandler"]
       20 GETIMPORT                        R2 K11 [game]
       22 GETUPVAL                         R3 4
       23 CALL                             R1 2 1
       24 SETTABLEKS                       R1 R0 K0 ["requestHandler"]
       26 GETUPVAL                         R1 5
       27 GETTABLEKS                       R1 R1 K1 ["processEvent"]
       29 SETTABLEKS                       R1 R0 K1 ["processEvent"]
       31 GETUPVAL                         R1 5
       32 GETTABLEKS                       R1 R1 K2 ["createLLMSession"]
       34 SETTABLEKS                       R1 R0 K2 ["createLLMSession"]
       36 GETUPVAL                         R1 5
       37 GETTABLEKS                       R1 R1 K3 ["cancelSession"]
       39 SETTABLEKS                       R1 R0 K3 ["cancelSession"]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K12 ["FFlagAssistantUseNewOpenAPIClients"]
       44 JUMPIFNOT                        R2 ; [+4]
       45 GETUPVAL                         R1 6
       46 GETTABLEKS                       R1 R1 K4 ["formatTools"]
       48 JUMP                             ; [+3]
       49 GETUPVAL                         R1 7
       50 GETTABLEKS                       R1 R1 K4 ["formatTools"]
       52 SETTABLEKS                       R1 R0 K4 ["formatTools"]
       54 GETUPVAL                         R1 8
       55 GETTABLEKS                       R1 R1 K13 ["getSystemMessage"]
       57 CALL                             R1 0 1
       58 SETTABLEKS                       R1 R0 K5 ["systemMessage"]
       60 GETUPVAL                         R1 9
       61 SETTABLEKS                       R1 R0 K6 ["systemRemindersGetter"]
       63 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useGetSystemReminders"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["useContext"]
       14 GETUPVAL                         R4 3
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["useRef"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K5 ["useEffect"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R7 0 1
       30 MOVE                             R8 R3
       31 SETLIST                          R7 R8 1 [1]
       33 CALL                             R5 2 0
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R1
       40 GETUPVAL                         R6 4
       41 GETTABLEKS                       R6 R6 K6 ["FFlagAssistantSupportSlashCommandCancellation"]
       43 JUMPIFNOT                        R6 ; [+45]
       44 GETUPVAL                         R6 2
       45 GETTABLEKS                       R6 R6 K7 ["useMemo"]
       47 DUPCLOSURE                       R7 K8 [PROTO_3]
       48 CAPTURE                          UPVAL U7
       49 NEWTABLE                         R8 0 0
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       55 NEWCLOSURE                       R8 P3
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          UPVAL U9
       64 CAPTURE                          UPVAL U10
       65 CAPTURE                          VAL R2
       66 NEWTABLE                         R9 0 3
       68 MOVE                             R10 R6
       69 MOVE                             R11 R1
       70 MOVE                             R12 R2
       71 SETLIST                          R9 R10 3 [1]
       73 CALL                             R7 2 1
       74 GETUPVAL                         R8 11
       75 GETUPVAL                         R9 7
       76 GETTABLEKS                       R9 R9 K9 ["Components"]
       78 GETTABLEKS                       R9 R9 K10 ["Contexts"]
       80 GETTABLEKS                       R9 R9 K11 ["LLMPackageContextProvider"]
       82 DUPTABLE                         R10 K13 [{"studioProvider"}]
       83 SETTABLEKS                       R7 R10 K12 ["studioProvider"]
       85 GETTABLEKS                       R11 R0 K14 ["children"]
       87 CALL                             R8 3 -1
       88 RETURN                           R8 -1
       89 GETUPVAL                         R6 7
       90 GETTABLEKS                       R6 R6 K9 ["Components"]
       92 GETTABLEKS                       R6 R6 K15 ["DefaultLLMProvider"]
       94 GETTABLEKS                       R6 R6 K16 ["LLMProcessEvent"]
       96 GETTABLEKS                       R6 R6 K17 ["createProcessEventHandler"]
       98 CALL                             R6 0 3
       99 GETUPVAL                         R9 11
      100 GETUPVAL                         R10 7
      101 GETTABLEKS                       R10 R10 K9 ["Components"]
      103 GETTABLEKS                       R10 R10 K10 ["Contexts"]
      105 GETTABLEKS                       R10 R10 K11 ["LLMPackageContextProvider"]
      107 DUPTABLE                         R11 K13 [{"studioProvider"}]
      108 DUPTABLE                         R12 K25 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
      109 GETUPVAL                         R14 4
      110 GETTABLEKS                       R14 R14 K26 ["FFlagAssistantCreditMetering"]
      112 JUMPIFNOT                        R14 ; [+12]
      113 GETUPVAL                         R13 5
      114 NEWCLOSURE                       R14 P4
      115 CAPTURE                          VAL R4
      116 GETUPVAL                         R15 6
      117 GETTABLEKS                       R15 R15 K27 ["createRequestHandler"]
      119 GETIMPORT                        R16 K29 [game]
      121 MOVE                             R17 R1
      122 CALL                             R15 2 -1
      123 CALL                             R13 -1 1
      124 JUMP                             ; [+7]
      125 GETUPVAL                         R13 6
      126 GETTABLEKS                       R13 R13 K27 ["createRequestHandler"]
      128 GETIMPORT                        R14 K29 [game]
      130 MOVE                             R15 R1
      131 CALL                             R13 2 1
      132 SETTABLEKS                       R13 R12 K18 ["requestHandler"]
      134 SETTABLEKS                       R6 R12 K19 ["processEvent"]
      136 SETTABLEKS                       R7 R12 K20 ["createLLMSession"]
      138 SETTABLEKS                       R8 R12 K21 ["cancelSession"]
      140 GETUPVAL                         R14 4
      141 GETTABLEKS                       R14 R14 K30 ["FFlagAssistantUseNewOpenAPIClients"]
      143 JUMPIFNOT                        R14 ; [+4]
      144 GETUPVAL                         R13 8
      145 GETTABLEKS                       R13 R13 K22 ["formatTools"]
      147 JUMP                             ; [+3]
      148 GETUPVAL                         R13 9
      149 GETTABLEKS                       R13 R13 K22 ["formatTools"]
      151 SETTABLEKS                       R13 R12 K22 ["formatTools"]
      153 GETUPVAL                         R13 10
      154 GETTABLEKS                       R13 R13 K31 ["getSystemMessage"]
      156 CALL                             R13 0 1
      157 SETTABLEKS                       R13 R12 K23 ["systemMessage"]
      159 SETTABLEKS                       R2 R12 K24 ["systemRemindersGetter"]
      161 SETTABLEKS                       R12 R11 K12 ["studioProvider"]
      163 GETTABLEKS                       R12 R0 K14 ["children"]
      165 CALL                             R9 3 -1
      166 RETURN                           R9 -1

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
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R5 K18 ["wrapWithCreditMetering"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R2 K19 ["ContextServices"]
       65 GETTABLEKS                       R11 R10 K20 ["Plugin"]
       67 GETTABLEKS                       R12 R1 K12 ["Components"]
       69 GETTABLEKS                       R12 R12 K21 ["Claude"]
       71 GETTABLEKS                       R12 R12 K22 ["ClaudeLLMToolFormat"]
       73 GETTABLEKS                       R13 R1 K12 ["Components"]
       75 GETTABLEKS                       R13 R13 K13 ["Contexts"]
       77 GETTABLEKS                       R13 R13 K23 ["CreditMeteringContext"]
       79 GETTABLEKS                       R14 R1 K12 ["Components"]
       81 GETTABLEKS                       R14 R14 K24 ["DefaultLLMProvider"]
       83 GETTABLEKS                       R14 R14 K25 ["LLMToolFormat"]
       85 GETTABLEKS                       R15 R3 K26 ["createElement"]
       87 GETTABLEKS                       R17 R4 K27 ["FFlagAssistantCreditMetering"]
       89 JUMPIFNOT                        R17 ; [+4]
       90 JUMPIFNOT                        R13 ; [+3]
       91 GETTABLEKS                       R16 R13 K28 ["Context"]
       93 JUMP                             ; [+4]
       94 GETTABLEKS                       R16 R3 K29 ["createContext"]
       96 LOADNIL                          R17
       97 CALL                             R16 1 1
       98 DUPCLOSURE                       R17 K30 [PROTO_5]
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R16
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R15
      111 RETURN                           R17 1
