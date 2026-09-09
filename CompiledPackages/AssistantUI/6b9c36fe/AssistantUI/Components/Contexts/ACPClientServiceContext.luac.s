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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["remoteDeps"]
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K1 ["FFlagDebugLogAssistantUI"]
       13 JUMPIFNOT                        R1 ; [+30]
       14 GETIMPORT                        R1 K3 [print]
       16 LOADK                            R3 K4 ["[Remote ACP] service select useRemoteService=%* flag=%* hasRemoteDeps=%*"]
       17 FASTCALL1                        TOSTRING R0 ; [+3]
       18 MOVE                             R6 R0
       19 GETIMPORT                        R5 K6 [tostring]
       21 CALL                             R5 1 1
       22 GETUPVAL                         R7 0
       23 CALL                             R7 0 -1
       24 FASTCALL                         TOSTRING ; [+2]
       25 GETIMPORT                        R6 K6 [tostring]
       27 CALL                             R6 -1 1
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R9 R9 K0 ["remoteDeps"]
       31 JUMPIFNOTEQKNIL                  R9 ; [+2]
       33 LOADB                            R8 0 +1
       34 LOADB                            R8 1
       35 FASTCALL1                        TOSTRING R8 ; [+2]
       36 GETIMPORT                        R7 K6 [tostring]
       38 CALL                             R7 1 1
       39 NAMECALL                         R3 R3 K7 ["format"]
       41 CALL                             R3 4 1
       42 MOVE                             R2 R3
       43 CALL                             R1 1 0
       44 JUMPIFNOT                        R0 ; [+3]
       45 NEWTABLE                         R1 0 0
       47 JUMP                             ; [+5]
       48 GETUPVAL                         R1 3
       49 GETTABLEKS                       R1 R1 K8 ["listTools"]
       51 DUPTABLE                         R2 K13 [{["useInternalToolDefinitions"] = False, ["includeDisabledTools"] = True}]
       52 CALL                             R1 1 1
       53 GETUPVAL                         R2 4
       54 JUMPIFNOT                        R2 ; [+9]
       55 GETUPVAL                         R2 2
       56 GETTABLEKS                       R2 R2 K1 ["FFlagDebugLogAssistantUI"]
       58 JUMPIFNOT                        R2 ; [+4]
       59 GETIMPORT                        R2 K3 [print]
       61 LOADK                            R3 K14 ["[Remote ACP] abort service create; effect disposed"]
       62 CALL                             R2 1 0
       63 RETURN                           R0 0
       64 GETUPVAL                         R2 5
       65 MOVE                             R3 R0
       66 GETUPVAL                         R4 1
       67 GETTABLEKS                       R4 R4 K0 ["remoteDeps"]
       69 DUPTABLE                         R5 K18 [{"turn", "toolCatalog", "persistence"}]
       70 GETUPVAL                         R6 6
       71 GETUPVAL                         R7 7
       72 CALL                             R6 1 1
       73 SETTABLEKS                       R6 R5 K15 ["turn"]
       75 SETTABLEKS                       R1 R5 K16 ["toolCatalog"]
       77 GETUPVAL                         R6 1
       78 GETTABLEKS                       R6 R6 K17 ["persistence"]
       80 SETTABLEKS                       R6 R5 K17 ["persistence"]
       82 CALL                             R2 3 1
       83 GETUPVAL                         R3 8
       84 GETTABLEKS                       R3 R3 K19 ["new"]
       86 GETTABLEKS                       R4 R2 K20 ["client"]
       88 GETUPVAL                         R5 9
       89 GETTABLEKS                       R5 R5 K21 ["get"]
       91 CALL                             R5 0 1
       92 GETTABLEKS                       R5 R5 K22 ["EventLogger"]
       94 GETUPVAL                         R6 7
       95 GETTABLEKS                       R6 R6 K23 ["getToolCallMeta"]
       97 CALL                             R3 3 1
       98 SETUPVAL                         R3 10
       99 GETUPVAL                         R6 11
      100 GETUPVAL                         R7 7
      101 CALL                             R6 1 -1
      102 NAMECALL                         R4 R3 K24 ["setClientToolHandler"]
      104 CALL                             R4 -1 0
      105 NEWCLOSURE                       R6 P0
      106 CAPTURE                          UPVAL U3
      107 NAMECALL                         R4 R3 K25 ["setListTools"]
      109 CALL                             R4 2 0
      110 DUPTABLE                         R4 K29 [{"bundle", "service", "resolveAllowedTools"}]
      111 SETTABLEKS                       R2 R4 K26 ["bundle"]
      113 SETTABLEKS                       R3 R4 K27 ["service"]
      115 NEWCLOSURE                       R5 P1
      116 CAPTURE                          UPVAL U3
      117 SETTABLEKS                       R5 R4 K28 ["resolveAllowedTools"]
      119 SETUPVAL                         R4 12
      120 GETUPVAL                         R4 2
      121 GETTABLEKS                       R4 R4 K1 ["FFlagDebugLogAssistantUI"]
      123 JUMPIFNOT                        R4 ; [+4]
      124 GETIMPORT                        R4 K3 [print]
      126 LOADK                            R5 K30 ["[Remote ACP] ACPClientService ready"]
      127 CALL                             R4 1 0
      128 GETUPVAL                         R4 13
      129 GETUPVAL                         R5 12
      130 CALL                             R4 1 0
      131 RETURN                           R0 0

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
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R4
       34 CAPTURE                          REF R0
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U9
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          REF R2
       41 CAPTURE                          UPVAL U10
       42 CAPTURE                          REF R1
       43 CAPTURE                          UPVAL U0
       44 CALL                             R5 1 0
       45 NEWCLOSURE                       R5 P5
       46 CAPTURE                          REF R0
       47 CAPTURE                          REF R1
       48 CLOSEUPVALS                      R0
       49 RETURN                           R5 1

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
       79 CAPTURE                          UPVAL U16
       80 NEWTABLE                         R14 0 3
       82 MOVE                             R15 R2
       83 GETTABLEKS                       R16 R7 K12 ["persistence"]
       85 GETTABLEKS                       R17 R7 K13 ["remoteDeps"]
       87 SETLIST                          R14 R15 3 [1]
       89 CALL                             R12 2 0
       90 MOVE                             R12 R4
       91 JUMPIFNOT                        R12 ; [+2]
       92 GETTABLEKS                       R12 R4 K14 ["acpSessionId"]
       94 MOVE                             R13 R4
       95 JUMPIFNOT                        R13 ; [+2]
       96 GETTABLEKS                       R13 R4 K15 ["title"]
       98 GETUPVAL                         R14 8
       99 GETTABLEKS                       R14 R14 K16 ["shouldSync"]
      101 GETUPVAL                         R15 11
      102 CALL                             R15 0 1
      103 GETTABLEKS                       R17 R7 K13 ["remoteDeps"]
      105 JUMPIFNOTEQKNIL                  R17 ; [+2]
      107 LOADB                            R16 0 +1
      108 LOADB                            R16 1
      109 MOVE                             R17 R4
      110 CALL                             R14 3 1
      111 GETUPVAL                         R15 5
      112 GETTABLEKS                       R15 R15 K11 ["useEffect"]
      114 NEWCLOSURE                       R16 P1
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R9
      120 NEWTABLE                         R17 0 4
      122 MOVE                             R18 R12
      123 MOVE                             R19 R10
      124 MOVE                             R20 R14
      125 MOVE                             R21 R13
      126 SETLIST                          R17 R18 4 [1]
      128 CALL                             R15 2 0
      129 GETUPVAL                         R15 5
      130 GETTABLEKS                       R15 R15 K17 ["useMemo"]
      132 NEWCLOSURE                       R16 P2
      133 CAPTURE                          VAL R10
      134 CAPTURE                          UPVAL U17
      135 NEWTABLE                         R17 0 1
      137 MOVE                             R18 R10
      138 SETLIST                          R17 R18 1 [1]
      140 CALL                             R15 2 1
      141 GETUPVAL                         R16 18
      142 GETUPVAL                         R17 19
      143 GETTABLEKS                       R17 R17 K18 ["Provider"]
      145 DUPTABLE                         R18 K20 [{"value"}]
      146 SETTABLEKS                       R15 R18 K19 ["value"]
      148 GETTABLEKS                       R19 R0 K21 ["children"]
      150 CALL                             R16 3 -1
      151 RETURN                           R16 -1

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
       93 GETTABLEKS                       R14 R0 K22 ["FlagUtils"]
       95 GETTABLEKS                       R14 R14 K23 ["getIsAssistantUseRemoteService"]
       97 CALL                             R13 1 1
       98 GETTABLEKS                       R13 R13 K24 ["get"]
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K25 ["Hooks"]
      104 GETTABLEKS                       R15 R15 K26 ["useAssistantMode"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K25 ["Hooks"]
      111 GETTABLEKS                       R16 R16 K27 ["useCurrentThread"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K25 ["Hooks"]
      118 GETTABLEKS                       R17 R17 K28 ["useLLMRequest"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K5 [require]
      123 GETTABLEKS                       R18 R0 K25 ["Hooks"]
      125 GETTABLEKS                       R18 R18 K29 ["useThreadId"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K5 [require]
      130 GETTABLEKS                       R19 R0 K25 ["Hooks"]
      132 GETTABLEKS                       R19 R19 K30 ["useWithClient"]
      134 CALL                             R18 1 1
      135 GETTABLEKS                       R19 R5 K31 ["createElement"]
      137 DUPTABLE                         R20 K35 [{["service"] = , ["resolveAllowedTools"] = }]
      138 GETTABLEKS                       R21 R5 K36 ["createContext"]
      140 MOVE                             R22 R20
      141 CALL                             R21 1 1
      142 DUPCLOSURE                       R22 K37 [PROTO_12]
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R21
      163 DUPTABLE                         R23 K40 [{"Context", "Provider"}]
      164 SETTABLEKS                       R21 R23 K38 ["Context"]
      166 SETTABLEKS                       R22 R23 K39 ["Provider"]
      168 RETURN                           R23 1
