PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["createRequestHandler"]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K0 ["createRequestHandler"]
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["createRequestHandler"]
       12 GETUPVAL                         R0 3
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K0 ["createRequestHandler"]
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K1 ["guestRequestHandlers"]
       19 JUMPIFNOT                        R0 ; [+11]
       20 GETUPVAL                         R0 4
       21 GETTABLEKS                       R0 R0 K1 ["guestRequestHandlers"]
       23 LOADNIL                          R1
       24 LOADNIL                          R2
       25 FORGPREP                         R0
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K0 ["createRequestHandler"]
       29 FORGLOOP                         R0 2 ; [-4]
       31 GETUPVAL                         R0 5
       32 GETTABLEKS                       R0 R0 K2 ["clear"]
       34 CALL                             R0 0 0
       35 GETUPVAL                         R0 6
       36 GETTABLEKS                       R0 R0 K2 ["clear"]
       38 CALL                             R0 0 0
       39 GETUPVAL                         R0 7
       40 GETTABLEKS                       R0 R0 K3 ["destroy"]
       42 GETUPVAL                         R1 8
       43 CALL                             R0 1 0
       44 GETUPVAL                         R0 7
       45 GETTABLEKS                       R0 R0 K4 ["set"]
       47 GETUPVAL                         R1 7
       48 GETTABLEKS                       R1 R1 K5 ["new"]
       50 CALL                             R1 0 -1
       51 CALL                             R0 -1 0
       52 GETUPVAL                         R0 9
       53 GETTABLEKS                       R0 R0 K6 ["setMcpClientIdentifier"]
       55 GETUPVAL                         R1 10
       56 CALL                             R0 1 0
       57 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R3 R0 K1 ["llmNet"]
        4 OR                               R2 R3 R1
        5 GETTABLEKS                       R3 R0 K2 ["guestRequestHandlers"]
        7 JUMPIFNOT                        R3 ; [+23]
        8 GETTABLEKS                       R3 R0 K2 ["guestRequestHandlers"]
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETIMPORT                        R10 K5 [table.find]
       15 GETUPVAL                         R11 0
       16 MOVE                             R12 R6
       17 CALL                             R10 2 1
       18 NOT                              R9 R10
       19 LOADK                            R10 K6 ["Guest request handler \"%*\" collides with a built-in LLM request handler"]
       20 MOVE                             R12 R6
       21 NAMECALL                         R10 R10 K7 ["format"]
       23 CALL                             R10 2 1
       24 FASTCALL2                        ASSERT R9 R10 ; [+3]
       26 GETIMPORT                        R8 K9 [assert]
       28 CALL                             R8 2 0
       29 FORGLOOP                         R3 1 ; [-17]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K10 ["getMcpClientIdentifier"]
       34 CALL                             R3 0 1
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K11 ["setMcpClientIdentifier"]
       38 GETTABLEKS                       R5 R0 K12 ["clientIdentifier"]
       40 CALL                             R4 1 0
       41 GETTABLEKS                       R4 R0 K13 ["EnvironmentOverride"]
       43 JUMPIF                           R4 ; [+4]
       44 GETUPVAL                         R4 2
       45 GETTABLEKS                       R4 R4 K14 ["new"]
       47 CALL                             R4 0 1
       48 GETUPVAL                         R5 3
       49 GETUPVAL                         R6 4
       50 MOVE                             R7 R2
       51 LOADK                            R8 K15 ["Default"]
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R9 R9 K16 ["requestHandler"]
       55 MOVE                             R10 R4
       56 CALL                             R6 4 1
       57 SETTABLEKS                       R6 R5 K17 ["createRequestHandler"]
       59 GETUPVAL                         R5 5
       60 GETUPVAL                         R6 4
       61 MOVE                             R7 R2
       62 GETUPVAL                         R8 1
       63 GETTABLEKS                       R8 R8 K18 ["LLMProviderTypes"]
       65 GETTABLEKS                       R8 R8 K19 ["Claude"]
       67 GETUPVAL                         R9 5
       68 GETTABLEKS                       R9 R9 K16 ["requestHandler"]
       70 MOVE                             R10 R4
       71 CALL                             R6 4 1
       72 SETTABLEKS                       R6 R5 K17 ["createRequestHandler"]
       74 GETUPVAL                         R5 6
       75 GETUPVAL                         R6 4
       76 MOVE                             R7 R2
       77 GETUPVAL                         R8 1
       78 GETTABLEKS                       R8 R8 K18 ["LLMProviderTypes"]
       80 GETTABLEKS                       R8 R8 K20 ["Gemini"]
       82 GETUPVAL                         R9 6
       83 GETTABLEKS                       R9 R9 K16 ["requestHandler"]
       85 MOVE                             R10 R4
       86 CALL                             R6 4 1
       87 SETTABLEKS                       R6 R5 K17 ["createRequestHandler"]
       89 GETUPVAL                         R5 7
       90 GETUPVAL                         R6 4
       91 MOVE                             R7 R2
       92 GETUPVAL                         R8 1
       93 GETTABLEKS                       R8 R8 K18 ["LLMProviderTypes"]
       95 GETTABLEKS                       R8 R8 K21 ["OpenAI"]
       97 GETUPVAL                         R9 7
       98 GETTABLEKS                       R9 R9 K16 ["requestHandler"]
      100 MOVE                             R10 R4
      101 CALL                             R6 4 1
      102 SETTABLEKS                       R6 R5 K17 ["createRequestHandler"]
      104 GETTABLEKS                       R5 R0 K2 ["guestRequestHandlers"]
      106 JUMPIFNOT                        R5 ; [+16]
      107 GETTABLEKS                       R5 R0 K2 ["guestRequestHandlers"]
      109 LOADNIL                          R6
      110 LOADNIL                          R7
      111 FORGPREP                         R5
      112 GETUPVAL                         R10 4
      113 MOVE                             R11 R2
      114 MOVE                             R12 R8
      115 GETTABLEKS                       R13 R9 K16 ["requestHandler"]
      117 MOVE                             R14 R4
      118 CALL                             R10 4 1
      119 SETTABLEKS                       R10 R9 K17 ["createRequestHandler"]
      121 FORGLOOP                         R5 2 ; [-10]
      123 GETUPVAL                         R5 2
      124 GETTABLEKS                       R5 R5 K22 ["set"]
      126 MOVE                             R6 R4
      127 CALL                             R5 1 0
      128 GETUPVAL                         R5 8
      129 GETTABLEKS                       R5 R5 K23 ["connectRemotes"]
      131 MOVE                             R6 R1
      132 MOVE                             R7 R4
      133 CALL                             R5 2 0
      134 GETTABLEKS                       R5 R4 K24 ["hasUI"]
      136 CALL                             R5 0 1
      137 JUMPIFNOT                        R5 ; [+4]
      138 GETUPVAL                         R6 9
      139 CALL                             R6 0 0
      140 GETUPVAL                         R6 10
      141 CALL                             R6 0 0
      142 GETUPVAL                         R6 11
      143 GETTABLEKS                       R6 R6 K25 ["setup"]
      145 MOVE                             R7 R4
      146 CALL                             R6 1 0
      147 NEWCLOSURE                       R6 P0
      148 CAPTURE                          UPVAL U3
      149 CAPTURE                          UPVAL U5
      150 CAPTURE                          UPVAL U6
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          VAL R0
      153 CAPTURE                          UPVAL U12
      154 CAPTURE                          UPVAL U13
      155 CAPTURE                          UPVAL U2
      156 CAPTURE                          VAL R4
      157 CAPTURE                          UPVAL U1
      158 CAPTURE                          VAL R3
      159 RETURN                           R6 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["Claude"]
       22 GETTABLEKS                       R3 R3 K11 ["ClaudeLLMRequest"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Util"]
       29 GETTABLEKS                       R4 R4 K13 ["ContentWidgets"]
       31 GETTABLEKS                       R4 R4 K14 ["ContentWidgetRegistry"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Parent"]
       38 GETTABLEKS                       R5 R5 K15 ["DMNetworking"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R1 K16 ["Engine"]
       43 GETTABLEKS                       R5 R5 K17 ["LLMRequest"]
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R0 K18 ["Guest"]
       49 GETTABLEKS                       R7 R7 K19 ["Environment"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K8 ["Components"]
       56 GETTABLEKS                       R8 R8 K9 ["Contexts"]
       58 GETTABLEKS                       R8 R8 K20 ["Gemini"]
       60 GETTABLEKS                       R8 R8 K21 ["GeminiLLMRequest"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R9 R0 K18 ["Guest"]
       67 GETTABLEKS                       R9 R9 K22 ["JsonEnvironment"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K8 ["Components"]
       74 GETTABLEKS                       R10 R10 K9 ["Contexts"]
       76 GETTABLEKS                       R10 R10 K23 ["OpenAI"]
       78 GETTABLEKS                       R10 R10 K24 ["OpenAILLMRequest"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K5 [require]
       83 GETTABLEKS                       R11 R0 K25 ["Remotes"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R0 K12 ["Util"]
       90 GETTABLEKS                       R12 R12 K13 ["ContentWidgets"]
       92 GETTABLEKS                       R12 R12 K26 ["ToolWidgetMappingRegistry"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R13 R0 K27 ["Types"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K5 [require]
      102 GETTABLEKS                       R14 R0 K12 ["Util"]
      104 GETTABLEKS                       R14 R14 K13 ["ContentWidgets"]
      106 GETTABLEKS                       R14 R14 K28 ["registerContentWidgets"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K5 [require]
      111 GETTABLEKS                       R15 R0 K12 ["Util"]
      113 GETTABLEKS                       R15 R15 K13 ["ContentWidgets"]
      115 GETTABLEKS                       R15 R15 K29 ["registerToolWidgetMappings"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K5 [require]
      120 GETTABLEKS                       R16 R0 K12 ["Util"]
      122 GETTABLEKS                       R16 R16 K30 ["withLLMRequestNetworkWrapper"]
      124 CALL                             R15 1 1
      125 NEWTABLE                         R16 0 4
      127 LOADK                            R17 K31 ["Default"]
      128 GETTABLEKS                       R18 R12 K32 ["LLMProviderTypes"]
      130 GETTABLEKS                       R18 R18 K10 ["Claude"]
      132 GETTABLEKS                       R19 R12 K32 ["LLMProviderTypes"]
      134 GETTABLEKS                       R19 R19 K20 ["Gemini"]
      136 GETTABLEKS                       R20 R12 K32 ["LLMProviderTypes"]
      138 GETTABLEKS                       R20 R20 K23 ["OpenAI"]
      140 SETLIST                          R16 R17 4 [1]
      142 DUPCLOSURE                       R17 K33 [PROTO_1]
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R11
      157 RETURN                           R17 1
