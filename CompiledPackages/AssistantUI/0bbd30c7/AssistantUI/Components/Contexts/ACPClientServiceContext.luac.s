PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["requestLLM"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["withClient"]
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R1 0
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K0 ["getSessionToolCallMeta"]
        6 CALL                             R1 2 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFNOT                        R1 ; [+1]
       10 RETURN                           R1 1
       11 DUPTABLE                         R2 K4 [{"sessionId", "threadId", "assistantMode"}]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K5 ["current"]
       15 GETTABLEKS                       R3 R3 K1 ["sessionId"]
       17 SETTABLEKS                       R3 R2 K1 ["sessionId"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K5 ["current"]
       22 GETTABLEKS                       R3 R3 K2 ["threadId"]
       24 SETTABLEKS                       R3 R2 K2 ["threadId"]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K5 ["current"]
       29 GETTABLEKS                       R3 R3 K3 ["assistantMode"]
       31 SETTABLEKS                       R3 R2 K3 ["assistantMode"]
       33 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        6 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolveAllowedTools"]
        3 DUPTABLE                         R3 K3 [{"assistantMode", "useInternalToolDefinitions"}]
        4 SETTABLEKS                       R0 R3 K1 ["assistantMode"]
        6 SETTABLEKS                       R1 R3 K2 ["useInternalToolDefinitions"]
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["listTools"]
        3 DUPTABLE                         R1 K5 [{["useInternalToolDefinitions"] = False, ["includeDisabledTools"] = True}]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K6 ["new"]
       11 DUPTABLE                         R2 K10 [{"turn", "toolCatalog", "persistence"}]
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 4
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K7 ["turn"]
       17 SETTABLEKS                       R0 R2 K8 ["toolCatalog"]
       19 GETUPVAL                         R3 5
       20 GETTABLEKS                       R3 R3 K9 ["persistence"]
       22 SETTABLEKS                       R3 R2 K9 ["persistence"]
       24 CALL                             R1 1 1
       25 GETUPVAL                         R2 6
       26 GETTABLEKS                       R2 R2 K6 ["new"]
       28 GETTABLEKS                       R3 R1 K11 ["client"]
       30 GETUPVAL                         R4 7
       31 GETTABLEKS                       R4 R4 K12 ["get"]
       33 CALL                             R4 0 1
       34 GETTABLEKS                       R4 R4 K13 ["EventLogger"]
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R5 R5 K14 ["getToolCallMeta"]
       39 CALL                             R2 3 1
       40 SETUPVAL                         R2 8
       41 GETUPVAL                         R5 9
       42 GETUPVAL                         R6 4
       43 CALL                             R5 1 -1
       44 NAMECALL                         R3 R2 K15 ["setClientToolHandler"]
       46 CALL                             R3 -1 0
       47 DUPTABLE                         R3 K19 [{"bundle", "service", "resolveAllowedTools"}]
       48 SETTABLEKS                       R1 R3 K16 ["bundle"]
       50 SETTABLEKS                       R2 R3 K17 ["service"]
       52 NEWCLOSURE                       R4 P0
       53 CAPTURE                          UPVAL U0
       54 SETTABLEKS                       R4 R3 K18 ["resolveAllowedTools"]
       56 SETUPVAL                         R3 10
       57 GETUPVAL                         R3 11
       58 GETUPVAL                         R4 10
       59 CALL                             R3 1 0
       60 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["bundle"]
        7 GETTABLEKS                       R0 R0 K1 ["dispose"]
        9 CALL                             R0 0 0
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 1
       12 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 0
        4 LOADNIL                          R4
        5 CALL                             R3 1 0
        6 DUPTABLE                         R3 K4 [{"getRequestLLM", "getWithClient", "getToolCallMeta", "getEventLogger"}]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R4 R3 K0 ["getRequestLLM"]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R4 R3 K1 ["getWithClient"]
       15 NEWCLOSURE                       R4 P2
       16 CAPTURE                          REF R2
       17 CAPTURE                          UPVAL U1
       18 SETTABLEKS                       R4 R3 K2 ["getToolCallMeta"]
       20 DUPCLOSURE                       R4 K5 [PROTO_3]
       21 CAPTURE                          UPVAL U2
       22 SETTABLEKS                       R4 R3 K3 ["getEventLogger"]
       24 GETUPVAL                         R4 3
       25 MOVE                             R5 R3
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K8 [task.spawn]
       29 NEWCLOSURE                       R6 P4
       30 CAPTURE                          VAL R4
       31 CAPTURE                          REF R0
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          REF R2
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          REF R1
       41 CAPTURE                          UPVAL U0
       42 CALL                             R5 1 0
       43 NEWCLOSURE                       R5 P5
       44 CAPTURE                          REF R0
       45 CAPTURE                          REF R1
       46 CLOSEUPVALS                      R0
       47 RETURN                           R5 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 DUPTABLE                         R0 K2 [{"service", "resolveAllowedTools"}]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["service"]
        6 SETTABLEKS                       R1 R0 K0 ["service"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["resolveAllowedTools"]
       11 SETTABLEKS                       R1 R0 K1 ["resolveAllowedTools"]
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 1
       15 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 GETTABLEKS                       R5 R5 K0 ["useContext"]
       11 GETUPVAL                         R6 5
       12 GETTABLEKS                       R6 R6 K1 ["Context"]
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 4
       16 GETTABLEKS                       R6 R6 K0 ["useContext"]
       18 GETUPVAL                         R7 6
       19 GETTABLEKS                       R7 R7 K1 ["Context"]
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 4
       23 GETTABLEKS                       R7 R7 K2 ["useRef"]
       25 NEWTABLE                         R8 0 0
       27 CALL                             R7 1 1
       28 GETTABLEKS                       R8 R7 K3 ["current"]
       30 SETTABLEKS                       R1 R8 K4 ["requestLLM"]
       32 GETTABLEKS                       R8 R7 K3 ["current"]
       34 SETTABLEKS                       R2 R8 K5 ["withClient"]
       36 GETTABLEKS                       R8 R7 K3 ["current"]
       38 SETTABLEKS                       R3 R8 K6 ["threadId"]
       40 GETTABLEKS                       R8 R7 K3 ["current"]
       42 SETTABLEKS                       R4 R8 K7 ["assistantMode"]
       44 GETTABLEKS                       R8 R7 K3 ["current"]
       46 GETTABLEKS                       R9 R5 K8 ["sessionId"]
       48 SETTABLEKS                       R9 R8 K8 ["sessionId"]
       50 GETUPVAL                         R8 4
       51 GETTABLEKS                       R8 R8 K9 ["useState"]
       53 LOADNIL                          R9
       54 CALL                             R8 1 2
       55 GETUPVAL                         R10 4
       56 GETTABLEKS                       R10 R10 K10 ["useEffect"]
       58 NEWCLOSURE                       R11 P0
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R7
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          UPVAL U9
       64 CAPTURE                          UPVAL U10
       65 CAPTURE                          VAL R6
       66 CAPTURE                          UPVAL U11
       67 CAPTURE                          UPVAL U12
       68 NEWTABLE                         R12 0 2
       70 MOVE                             R13 R2
       71 GETTABLEKS                       R14 R6 K11 ["persistence"]
       73 SETLIST                          R12 R13 2 [1]
       75 CALL                             R10 2 0
       76 GETUPVAL                         R10 4
       77 GETTABLEKS                       R10 R10 K12 ["useMemo"]
       79 NEWCLOSURE                       R11 P1
       80 CAPTURE                          VAL R8
       81 CAPTURE                          UPVAL U13
       82 NEWTABLE                         R12 0 1
       84 MOVE                             R13 R8
       85 SETLIST                          R12 R13 1 [1]
       87 CALL                             R10 2 1
       88 GETUPVAL                         R11 14
       89 GETUPVAL                         R12 15
       90 GETTABLEKS                       R12 R12 K13 ["Provider"]
       92 DUPTABLE                         R13 K15 [{"value"}]
       93 SETTABLEKS                       R10 R13 K14 ["value"]
       95 GETTABLEKS                       R14 R0 K16 ["children"]
       97 CALL                             R11 3 -1
       98 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["ACPClientService"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["AssistantHarness"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Guest"]
       23 GETTABLEKS                       R4 R4 K10 ["Environment"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Components"]
       37 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K14 ["SessionIdContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Components"]
       46 GETTABLEKS                       R7 R7 K13 ["Contexts"]
       48 GETTABLEKS                       R7 R7 K15 ["StudioHarnessDepsContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["ACPClientService"]
       55 GETTABLEKS                       R8 R8 K16 ["buildToolTransports"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["ACPClientService"]
       62 GETTABLEKS                       R9 R9 K17 ["buildTurnTransports"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K6 ["ACPClientService"]
       69 GETTABLEKS                       R10 R10 K18 ["createClientToolHandler"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K19 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K20 ["useAssistantMode"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K21 ["useLLMRequest"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K19 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K22 ["useThreadId"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K19 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K23 ["useWithClient"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R2 K24 ["LocalACPAgentService"]
      102 GETTABLEKS                       R15 R4 K25 ["createElement"]
      104 DUPTABLE                         R16 K29 [{["service"] = , ["resolveAllowedTools"] = }]
      105 GETTABLEKS                       R17 R4 K30 ["createContext"]
      107 MOVE                             R18 R16
      108 CALL                             R17 1 1
      109 DUPCLOSURE                       R18 K31 [PROTO_9]
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R17
      126 DUPTABLE                         R19 K34 [{"Context", "Provider"}]
      127 SETTABLEKS                       R17 R19 K32 ["Context"]
      129 SETTABLEKS                       R18 R19 K33 ["Provider"]
      131 RETURN                           R19 1
