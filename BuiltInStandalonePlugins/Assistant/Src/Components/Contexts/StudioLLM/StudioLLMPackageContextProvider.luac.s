PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U2
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K0 ["createRequestHandler"]
        9 GETIMPORT                        R3 K2 [game]
       11 GETUPVAL                         R4 4
       12 CALL                             R2 2 -1
       13 CALL                             R0 -1 -1
       14 RETURN                           R0 -1
       15 GETUPVAL                         R0 3
       16 GETTABLEKS                       R0 R0 K0 ["createRequestHandler"]
       18 GETIMPORT                        R1 K2 [game]
       20 GETUPVAL                         R2 4
       21 CALL                             R0 2 -1
       22 RETURN                           R0 -1

PROTO_3:
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
       40 GETUPVAL                         R6 7
       41 GETTABLEKS                       R6 R6 K6 ["Components"]
       43 GETTABLEKS                       R6 R6 K7 ["DefaultLLMProvider"]
       45 GETTABLEKS                       R6 R6 K8 ["LLMProcessEvent"]
       47 GETTABLEKS                       R6 R6 K9 ["createProcessEventHandler"]
       49 CALL                             R6 0 3
       50 GETUPVAL                         R9 8
       51 GETUPVAL                         R10 7
       52 GETTABLEKS                       R10 R10 K6 ["Components"]
       54 GETTABLEKS                       R10 R10 K10 ["Contexts"]
       56 GETTABLEKS                       R10 R10 K11 ["LLMPackageContextProvider"]
       58 DUPTABLE                         R11 K13 [{"studioProvider"}]
       59 DUPTABLE                         R12 K21 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
       60 MOVE                             R13 R5
       61 CALL                             R13 0 1
       62 SETTABLEKS                       R13 R12 K14 ["requestHandler"]
       64 SETTABLEKS                       R6 R12 K15 ["processEvent"]
       66 SETTABLEKS                       R7 R12 K16 ["createLLMSession"]
       68 SETTABLEKS                       R8 R12 K17 ["cancelSession"]
       70 GETUPVAL                         R14 9
       71 GETTABLEKS                       R14 R14 K22 ["FFlagAssistantUseNewOpenAPIClients"]
       73 JUMPIFNOT                        R14 ; [+4]
       74 GETUPVAL                         R13 10
       75 GETTABLEKS                       R13 R13 K18 ["formatTools"]
       77 JUMP                             ; [+3]
       78 GETUPVAL                         R13 11
       79 GETTABLEKS                       R13 R13 K18 ["formatTools"]
       81 SETTABLEKS                       R13 R12 K18 ["formatTools"]
       83 GETUPVAL                         R13 12
       84 GETTABLEKS                       R13 R13 K23 ["getSystemMessage"]
       86 CALL                             R13 0 1
       87 SETTABLEKS                       R13 R12 K19 ["systemMessage"]
       89 SETTABLEKS                       R2 R12 K20 ["systemRemindersGetter"]
       91 SETTABLEKS                       R12 R11 K12 ["studioProvider"]
       93 GETTABLEKS                       R12 R0 K24 ["children"]
       95 CALL                             R9 3 -1
       96 RETURN                           R9 -1

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
       87 GETTABLEKS                       R16 R1 K27 ["FlagUtils"]
       89 GETTABLEKS                       R16 R16 K28 ["getIsCreditMeteringEnabled"]
       91 JUMPIFNOT                        R13 ; [+3]
       92 GETTABLEKS                       R17 R13 K29 ["Context"]
       94 JUMP                             ; [+4]
       95 GETTABLEKS                       R17 R3 K30 ["createContext"]
       97 LOADNIL                          R18
       98 CALL                             R17 1 1
       99 DUPCLOSURE                       R18 K31 [PROTO_3]
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R16
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R7
      113 RETURN                           R18 1
