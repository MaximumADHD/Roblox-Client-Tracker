PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["requestLLM"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["systemMessage"]
        5 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["withClient"]
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["formatTools"]
        5 RETURN                           R0 1

PROTO_4:
        0 DUPTABLE                         R0 K3 [{"sessionId", "threadId", "assistantMode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["current"]
        4 GETTABLEKS                       R1 R1 K0 ["sessionId"]
        6 SETTABLEKS                       R1 R0 K0 ["sessionId"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K4 ["current"]
       11 GETTABLEKS                       R1 R1 K1 ["threadId"]
       13 SETTABLEKS                       R1 R0 K1 ["threadId"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K4 ["current"]
       18 GETTABLEKS                       R1 R1 K2 ["assistantMode"]
       20 SETTABLEKS                       R1 R0 K2 ["assistantMode"]
       22 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bundle"]
        3 GETTABLEKS                       R0 R0 K1 ["dispose"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_7:
        0 DUPTABLE                         R0 K1 [{"service"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["service"]
        4 SETTABLEKS                       R1 R0 K0 ["service"]
        6 RETURN                           R0 1

PROTO_8:
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
       11 CALL                             R6 0 1
       12 GETUPVAL                         R7 6
       13 GETTABLEKS                       R7 R7 K0 ["useContext"]
       15 GETUPVAL                         R8 7
       16 GETTABLEKS                       R8 R8 K1 ["Context"]
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 6
       20 GETTABLEKS                       R8 R8 K0 ["useContext"]
       22 GETUPVAL                         R9 8
       23 GETTABLEKS                       R9 R9 K1 ["Context"]
       25 CALL                             R8 1 1
       26 GETUPVAL                         R9 6
       27 GETTABLEKS                       R9 R9 K2 ["useRef"]
       29 NEWTABLE                         R10 0 0
       31 CALL                             R9 1 1
       32 GETTABLEKS                       R10 R9 K3 ["current"]
       34 SETTABLEKS                       R1 R10 K4 ["requestLLM"]
       36 GETTABLEKS                       R10 R9 K3 ["current"]
       38 SETTABLEKS                       R2 R10 K5 ["systemMessage"]
       40 GETTABLEKS                       R10 R9 K3 ["current"]
       42 SETTABLEKS                       R3 R10 K6 ["withClient"]
       44 GETTABLEKS                       R10 R9 K3 ["current"]
       46 SETTABLEKS                       R4 R10 K7 ["formatTools"]
       48 GETTABLEKS                       R10 R9 K3 ["current"]
       50 SETTABLEKS                       R5 R10 K8 ["threadId"]
       52 GETTABLEKS                       R10 R9 K3 ["current"]
       54 SETTABLEKS                       R6 R10 K9 ["assistantMode"]
       56 GETTABLEKS                       R10 R9 K3 ["current"]
       58 GETTABLEKS                       R11 R7 K10 ["sessionId"]
       60 SETTABLEKS                       R11 R10 K10 ["sessionId"]
       62 GETUPVAL                         R10 6
       63 GETTABLEKS                       R10 R10 K2 ["useRef"]
       65 LOADNIL                          R11
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R10 K3 ["current"]
       69 JUMPIFNOTEQKNIL                  R11 ; [+55]
       71 DUPTABLE                         R11 K16 [{"getRequestLLM", "getSystemMessage", "getWithClient", "getFormatTools", "getToolCallMeta"}]
       72 NEWCLOSURE                       R12 P0
       73 CAPTURE                          VAL R9
       74 SETTABLEKS                       R12 R11 K11 ["getRequestLLM"]
       76 NEWCLOSURE                       R12 P1
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R12 R11 K12 ["getSystemMessage"]
       80 NEWCLOSURE                       R12 P2
       81 CAPTURE                          VAL R9
       82 SETTABLEKS                       R12 R11 K13 ["getWithClient"]
       84 NEWCLOSURE                       R12 P3
       85 CAPTURE                          VAL R9
       86 SETTABLEKS                       R12 R11 K14 ["getFormatTools"]
       88 NEWCLOSURE                       R12 P4
       89 CAPTURE                          VAL R9
       90 SETTABLEKS                       R12 R11 K15 ["getToolCallMeta"]
       92 GETUPVAL                         R12 9
       93 GETTABLEKS                       R12 R12 K17 ["new"]
       95 DUPTABLE                         R13 K20 [{"turn", "persistence"}]
       96 GETUPVAL                         R14 10
       97 MOVE                             R15 R11
       98 CALL                             R14 1 1
       99 SETTABLEKS                       R14 R13 K18 ["turn"]
      101 GETTABLEKS                       R14 R8 K19 ["persistence"]
      103 SETTABLEKS                       R14 R13 K19 ["persistence"]
      105 CALL                             R12 1 1
      106 GETUPVAL                         R13 11
      107 GETTABLEKS                       R13 R13 K17 ["new"]
      109 GETTABLEKS                       R14 R12 K21 ["client"]
      111 CALL                             R13 1 1
      112 GETUPVAL                         R16 12
      113 MOVE                             R17 R11
      114 CALL                             R16 1 -1
      115 NAMECALL                         R14 R13 K22 ["setClientToolHandler"]
      117 CALL                             R14 -1 0
      118 DUPTABLE                         R14 K25 [{"bundle", "service"}]
      119 SETTABLEKS                       R12 R14 K23 ["bundle"]
      121 SETTABLEKS                       R13 R14 K24 ["service"]
      123 SETTABLEKS                       R14 R10 K3 ["current"]
      125 GETTABLEKS                       R12 R10 K3 ["current"]
      127 FASTCALL2K                       ASSERT R12 K26 ; [+4]
      129 LOADK                            R13 K26 ["pairRef.current is nil"]
      130 GETIMPORT                        R11 K28 [assert]
      132 CALL                             R11 2 1
      133 GETUPVAL                         R12 6
      134 GETTABLEKS                       R12 R12 K29 ["useEffect"]
      136 NEWCLOSURE                       R13 P5
      137 CAPTURE                          VAL R11
      138 NEWTABLE                         R14 0 0
      140 CALL                             R12 2 0
      141 GETUPVAL                         R12 6
      142 GETTABLEKS                       R12 R12 K30 ["useMemo"]
      144 NEWCLOSURE                       R13 P6
      145 CAPTURE                          VAL R11
      146 NEWTABLE                         R14 0 1
      148 MOVE                             R15 R11
      149 SETLIST                          R14 R15 1 [1]
      151 CALL                             R12 2 1
      152 GETUPVAL                         R13 13
      153 GETUPVAL                         R14 14
      154 GETTABLEKS                       R14 R14 K31 ["Provider"]
      156 DUPTABLE                         R15 K33 [{"value"}]
      157 SETTABLEKS                       R12 R15 K32 ["value"]
      159 GETTABLEKS                       R16 R0 K34 ["children"]
      161 CALL                             R13 3 -1
      162 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["AssistantService"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K12 ["SessionIdContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Components"]
       39 GETTABLEKS                       R6 R6 K11 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K13 ["StudioHarnessDepsContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["AssistantService"]
       48 GETTABLEKS                       R7 R7 K14 ["buildTurnTransports"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["AssistantService"]
       55 GETTABLEKS                       R8 R8 K15 ["createClientToolHandler"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K16 ["Hooks"]
       62 GETTABLEKS                       R9 R9 K17 ["useAssistantMode"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K16 ["Hooks"]
       69 GETTABLEKS                       R10 R10 K18 ["useLLMRequest"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K16 ["Hooks"]
       76 GETTABLEKS                       R11 R11 K19 ["useLLMSystemMessage"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K16 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K20 ["useThreadId"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K16 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K21 ["useToolFormat"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K16 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K22 ["useWithClient"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R1 K23 ["LocalAssistantService"]
      102 GETTABLEKS                       R15 R3 K24 ["createElement"]
      104 DUPTABLE                         R16 K27 [{["service"] = }]
      105 GETTABLEKS                       R17 R3 K28 ["createContext"]
      107 MOVE                             R18 R16
      108 CALL                             R17 1 1
      109 DUPCLOSURE                       R18 K29 [PROTO_8]
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R17
      125 DUPTABLE                         R19 K32 [{"Context", "Provider"}]
      126 SETTABLEKS                       R17 R19 K30 ["Context"]
      128 SETTABLEKS                       R18 R19 K31 ["Provider"]
      130 RETURN                           R19 1
