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
       11 DUPTABLE                         R2 K5 [{"sessionId", "threadId", "acpSessionId", "assistantMode"}]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K6 ["current"]
       15 GETTABLEKS                       R3 R3 K1 ["sessionId"]
       17 SETTABLEKS                       R3 R2 K1 ["sessionId"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K6 ["current"]
       22 GETTABLEKS                       R3 R3 K2 ["threadId"]
       24 SETTABLEKS                       R3 R2 K2 ["threadId"]
       26 SETTABLEKS                       R0 R2 K3 ["acpSessionId"]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K6 ["current"]
       31 GETTABLEKS                       R3 R3 K4 ["assistantMode"]
       33 SETTABLEKS                       R3 R2 K4 ["assistantMode"]
       35 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        6 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["listTools"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolveAllowedTools"]
        3 DUPTABLE                         R3 K3 [{"assistantMode", "useInternalToolDefinitions"}]
        4 SETTABLEKS                       R0 R3 K1 ["assistantMode"]
        6 SETTABLEKS                       R1 R3 K2 ["useInternalToolDefinitions"]
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["remoteDeps"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["FFlagDebugLogAssistantUI"]
       14 JUMPIFNOT                        R1 ; [+31]
       15 GETIMPORT                        R1 K4 [print]
       17 LOADK                            R3 K5 ["[Remote ACP] service select useRemoteService=%* flag=%* hasRemoteDeps=%*"]
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R6 R0
       20 GETIMPORT                        R5 K7 [tostring]
       22 CALL                             R5 1 1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K0 ["FFlagAssistantUseRemoteService"]
       26 FASTCALL1                        TOSTRING R7 ; [+2]
       27 GETIMPORT                        R6 K7 [tostring]
       29 CALL                             R6 1 1
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K1 ["remoteDeps"]
       33 JUMPIFNOTEQKNIL                  R9 ; [+2]
       35 LOADB                            R8 0 +1
       36 LOADB                            R8 1
       37 FASTCALL1                        TOSTRING R8 ; [+2]
       38 GETIMPORT                        R7 K7 [tostring]
       40 CALL                             R7 1 1
       41 NAMECALL                         R3 R3 K8 ["format"]
       43 CALL                             R3 4 1
       44 MOVE                             R2 R3
       45 CALL                             R1 1 0
       46 JUMPIFNOT                        R0 ; [+3]
       47 NEWTABLE                         R1 0 0
       49 JUMP                             ; [+5]
       50 GETUPVAL                         R1 2
       51 GETTABLEKS                       R1 R1 K9 ["listTools"]
       53 DUPTABLE                         R2 K14 [{["useInternalToolDefinitions"] = False, ["includeDisabledTools"] = True}]
       54 CALL                             R1 1 1
       55 GETUPVAL                         R2 3
       56 JUMPIFNOT                        R2 ; [+9]
       57 GETUPVAL                         R2 0
       58 GETTABLEKS                       R2 R2 K2 ["FFlagDebugLogAssistantUI"]
       60 JUMPIFNOT                        R2 ; [+4]
       61 GETIMPORT                        R2 K4 [print]
       63 LOADK                            R3 K15 ["[Remote ACP] abort service create; effect disposed"]
       64 CALL                             R2 1 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R2 4
       67 MOVE                             R3 R0
       68 GETUPVAL                         R4 1
       69 GETTABLEKS                       R4 R4 K1 ["remoteDeps"]
       71 DUPTABLE                         R5 K19 [{"turn", "toolCatalog", "persistence"}]
       72 GETUPVAL                         R6 5
       73 GETUPVAL                         R7 6
       74 CALL                             R6 1 1
       75 SETTABLEKS                       R6 R5 K16 ["turn"]
       77 SETTABLEKS                       R1 R5 K17 ["toolCatalog"]
       79 GETUPVAL                         R6 1
       80 GETTABLEKS                       R6 R6 K18 ["persistence"]
       82 SETTABLEKS                       R6 R5 K18 ["persistence"]
       84 CALL                             R2 3 1
       85 GETUPVAL                         R3 7
       86 GETTABLEKS                       R3 R3 K20 ["new"]
       88 GETTABLEKS                       R4 R2 K21 ["client"]
       90 GETUPVAL                         R5 8
       91 GETTABLEKS                       R5 R5 K22 ["get"]
       93 CALL                             R5 0 1
       94 GETTABLEKS                       R5 R5 K23 ["EventLogger"]
       96 GETUPVAL                         R6 6
       97 GETTABLEKS                       R6 R6 K24 ["getToolCallMeta"]
       99 CALL                             R3 3 1
      100 SETUPVAL                         R3 9
      101 GETUPVAL                         R6 10
      102 GETUPVAL                         R7 6
      103 CALL                             R6 1 -1
      104 NAMECALL                         R4 R3 K25 ["setClientToolHandler"]
      106 CALL                             R4 -1 0
      107 NEWCLOSURE                       R6 P0
      108 CAPTURE                          UPVAL U2
      109 NAMECALL                         R4 R3 K26 ["setListTools"]
      111 CALL                             R4 2 0
      112 DUPTABLE                         R4 K30 [{"bundle", "service", "resolveAllowedTools"}]
      113 SETTABLEKS                       R2 R4 K27 ["bundle"]
      115 SETTABLEKS                       R3 R4 K28 ["service"]
      117 NEWCLOSURE                       R5 P1
      118 CAPTURE                          UPVAL U2
      119 SETTABLEKS                       R5 R4 K29 ["resolveAllowedTools"]
      121 SETUPVAL                         R4 11
      122 GETUPVAL                         R4 0
      123 GETTABLEKS                       R4 R4 K2 ["FFlagDebugLogAssistantUI"]
      125 JUMPIFNOT                        R4 ; [+4]
      126 GETIMPORT                        R4 K4 [print]
      128 LOADK                            R5 K31 ["[Remote ACP] ACPClientService ready"]
      129 CALL                             R4 1 0
      130 GETUPVAL                         R4 12
      131 GETUPVAL                         R5 11
      132 CALL                             R4 1 0
      133 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R4
       33 CAPTURE                          REF R0
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          REF R2
       40 CAPTURE                          UPVAL U9
       41 CAPTURE                          REF R1
       42 CAPTURE                          UPVAL U0
       43 CALL                             R5 1 0
       44 NEWCLOSURE                       R5 P5
       45 CAPTURE                          REF R0
       46 CAPTURE                          REF R1
       47 CLOSEUPVALS                      R0
       48 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["service"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["updateSessionInfo"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 3
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 4
       10 GETTABLEKS                       R0 R0 K0 ["current"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U0
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 3
       16 NAMECALL                         R0 R0 K1 ["sync"]
       18 CALL                             R0 4 0
       19 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 5
       11 GETTABLEKS                       R6 R6 K0 ["useContext"]
       13 GETUPVAL                         R7 6
       14 GETTABLEKS                       R7 R7 K1 ["Context"]
       16 CALL                             R6 1 1
       17 GETUPVAL                         R7 5
       18 GETTABLEKS                       R7 R7 K0 ["useContext"]
       20 GETUPVAL                         R8 7
       21 GETTABLEKS                       R8 R8 K1 ["Context"]
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 5
       25 GETTABLEKS                       R8 R8 K2 ["useRef"]
       27 NEWTABLE                         R9 0 0
       29 CALL                             R8 1 1
       30 GETTABLEKS                       R9 R8 K3 ["current"]
       32 SETTABLEKS                       R1 R9 K4 ["requestLLM"]
       34 GETTABLEKS                       R9 R8 K3 ["current"]
       36 SETTABLEKS                       R2 R9 K5 ["withClient"]
       38 GETTABLEKS                       R9 R8 K3 ["current"]
       40 SETTABLEKS                       R3 R9 K6 ["threadId"]
       42 GETTABLEKS                       R9 R8 K3 ["current"]
       44 SETTABLEKS                       R5 R9 K7 ["assistantMode"]
       46 GETTABLEKS                       R9 R8 K3 ["current"]
       48 GETTABLEKS                       R10 R6 K8 ["sessionId"]
       50 SETTABLEKS                       R10 R9 K8 ["sessionId"]
       52 GETUPVAL                         R9 5
       53 GETTABLEKS                       R9 R9 K2 ["useRef"]
       55 GETUPVAL                         R10 8
       56 GETTABLEKS                       R10 R10 K9 ["new"]
       58 CALL                             R10 0 -1
       59 CALL                             R9 -1 1
       60 GETUPVAL                         R10 5
       61 GETTABLEKS                       R10 R10 K10 ["useState"]
       63 LOADNIL                          R11
       64 CALL                             R10 1 2
       65 GETUPVAL                         R12 5
       66 GETTABLEKS                       R12 R12 K11 ["useEffect"]
       68 NEWCLOSURE                       R13 P0
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R8
       71 CAPTURE                          UPVAL U9
       72 CAPTURE                          UPVAL U10
       73 CAPTURE                          UPVAL U11
       74 CAPTURE                          VAL R7
       75 CAPTURE                          UPVAL U12
       76 CAPTURE                          UPVAL U13
       77 CAPTURE                          UPVAL U14
       78 CAPTURE                          UPVAL U15
       79 NEWTABLE                         R14 0 3
       81 MOVE                             R15 R2
       82 GETTABLEKS                       R16 R7 K12 ["persistence"]
       84 GETTABLEKS                       R17 R7 K13 ["remoteDeps"]
       86 SETLIST                          R14 R15 3 [1]
       88 CALL                             R12 2 0
       89 MOVE                             R12 R4
       90 JUMPIFNOT                        R12 ; [+2]
       91 GETTABLEKS                       R12 R4 K14 ["acpSessionId"]
       93 MOVE                             R13 R4
       94 JUMPIFNOT                        R13 ; [+2]
       95 GETTABLEKS                       R13 R4 K15 ["title"]
       97 GETUPVAL                         R14 8
       98 GETTABLEKS                       R14 R14 K16 ["shouldSync"]
      100 GETUPVAL                         R15 11
      101 GETTABLEKS                       R15 R15 K17 ["FFlagAssistantHarnessSplit"]
      103 JUMPIFNOT                        R15 ; [+3]
      104 GETUPVAL                         R15 11
      105 GETTABLEKS                       R15 R15 K18 ["FFlagAssistantUseRemoteService"]
      107 GETTABLEKS                       R17 R7 K13 ["remoteDeps"]
      109 JUMPIFNOTEQKNIL                  R17 ; [+2]
      111 LOADB                            R16 0 +1
      112 LOADB                            R16 1
      113 MOVE                             R17 R4
      114 CALL                             R14 3 1
      115 GETUPVAL                         R15 5
      116 GETTABLEKS                       R15 R15 K11 ["useEffect"]
      118 NEWCLOSURE                       R16 P1
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R9
      124 NEWTABLE                         R17 0 4
      126 MOVE                             R18 R12
      127 MOVE                             R19 R10
      128 MOVE                             R20 R14
      129 MOVE                             R21 R13
      130 SETLIST                          R17 R18 4 [1]
      132 CALL                             R15 2 0
      133 GETUPVAL                         R15 5
      134 GETTABLEKS                       R15 R15 K19 ["useMemo"]
      136 NEWCLOSURE                       R16 P2
      137 CAPTURE                          VAL R10
      138 CAPTURE                          UPVAL U16
      139 NEWTABLE                         R17 0 1
      141 MOVE                             R18 R10
      142 SETLIST                          R17 R18 1 [1]
      144 CALL                             R15 2 1
      145 GETUPVAL                         R16 17
      146 GETUPVAL                         R17 18
      147 GETTABLEKS                       R17 R17 K20 ["Provider"]
      149 DUPTABLE                         R18 K22 [{"value"}]
      150 SETTABLEKS                       R15 R18 K21 ["value"]
      152 GETTABLEKS                       R19 R0 K23 ["children"]
      154 CALL                             R16 3 -1
      155 RETURN                           R16 -1

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
       28 GETTABLEKS                       R5 R0 K11 ["Flags"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K7 ["Parent"]
       35 GETTABLEKS                       R6 R6 K12 ["React"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K6 ["ACPClientService"]
       42 GETTABLEKS                       R7 R7 K13 ["RemoteSessionTitleSync"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K14 ["Components"]
       49 GETTABLEKS                       R8 R8 K15 ["Contexts"]
       51 GETTABLEKS                       R8 R8 K16 ["SessionIdContext"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K14 ["Components"]
       58 GETTABLEKS                       R9 R9 K15 ["Contexts"]
       60 GETTABLEKS                       R9 R9 K17 ["StudioHarnessDepsContext"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["ACPClientService"]
       67 GETTABLEKS                       R10 R10 K18 ["buildToolTransports"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["ACPClientService"]
       74 GETTABLEKS                       R11 R11 K19 ["buildTurnTransports"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["ACPClientService"]
       81 GETTABLEKS                       R12 R12 K20 ["createACPAgentServiceBundle"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["ACPClientService"]
       88 GETTABLEKS                       R13 R13 K21 ["createClientToolHandler"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K22 ["Hooks"]
       95 GETTABLEKS                       R14 R14 K23 ["useAssistantMode"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K22 ["Hooks"]
      102 GETTABLEKS                       R15 R15 K24 ["useCurrentThread"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K5 [require]
      107 GETTABLEKS                       R16 R0 K22 ["Hooks"]
      109 GETTABLEKS                       R16 R16 K25 ["useLLMRequest"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K5 [require]
      114 GETTABLEKS                       R17 R0 K22 ["Hooks"]
      116 GETTABLEKS                       R17 R17 K26 ["useThreadId"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K5 [require]
      121 GETTABLEKS                       R18 R0 K22 ["Hooks"]
      123 GETTABLEKS                       R18 R18 K27 ["useWithClient"]
      125 CALL                             R17 1 1
      126 GETTABLEKS                       R18 R5 K28 ["createElement"]
      128 DUPTABLE                         R19 K32 [{["service"] = , ["resolveAllowedTools"] = }]
      129 GETTABLEKS                       R20 R5 K33 ["createContext"]
      131 MOVE                             R21 R19
      132 CALL                             R20 1 1
      133 DUPCLOSURE                       R21 K34 [PROTO_12]
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R20
      153 DUPTABLE                         R22 K37 [{"Context", "Provider"}]
      154 SETTABLEKS                       R20 R22 K35 ["Context"]
      156 SETTABLEKS                       R21 R22 K36 ["Provider"]
      158 RETURN                           R22 1
