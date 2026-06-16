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
       32 CALL                             R0 0 1
       33 JUMPIFNOT                        R0 ; [+9]
       34 GETUPVAL                         R0 6
       35 GETTABLEKS                       R0 R0 K2 ["clear"]
       37 CALL                             R0 0 0
       38 GETUPVAL                         R0 7
       39 GETTABLEKS                       R0 R0 K2 ["clear"]
       41 CALL                             R0 0 0
       42 JUMP                             ; [+4]
       43 GETUPVAL                         R0 8
       44 JUMPIFNOT                        R0 ; [+2]
       45 GETUPVAL                         R0 8
       46 CALL                             R0 0 0
       47 GETUPVAL                         R0 9
       48 GETTABLEKS                       R0 R0 K3 ["set"]
       50 GETUPVAL                         R1 9
       51 GETTABLEKS                       R1 R1 K4 ["new"]
       53 CALL                             R1 0 -1
       54 CALL                             R0 -1 0
       55 GETUPVAL                         R0 10
       56 GETTABLEKS                       R0 R0 K5 ["setMcpClientIdentifier"]
       58 GETUPVAL                         R1 11
       59 CALL                             R0 1 0
       60 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["LLMRequestNetworking"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["getMcpClientIdentifier"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["setMcpClientIdentifier"]
        9 GETTABLEKS                       R4 R0 K3 ["clientIdentifier"]
       11 CALL                             R3 1 0
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R1
       15 LOADK                            R6 K4 ["Default"]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R7 R7 K5 ["requestHandler"]
       19 CALL                             R4 3 1
       20 SETTABLEKS                       R4 R3 K6 ["createRequestHandler"]
       22 GETUPVAL                         R3 3
       23 GETUPVAL                         R4 2
       24 MOVE                             R5 R1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K7 ["LLMProviderTypes"]
       28 GETTABLEKS                       R6 R6 K8 ["Claude"]
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R7 R7 K5 ["requestHandler"]
       33 CALL                             R4 3 1
       34 SETTABLEKS                       R4 R3 K6 ["createRequestHandler"]
       36 GETUPVAL                         R3 4
       37 GETUPVAL                         R4 2
       38 MOVE                             R5 R1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K7 ["LLMProviderTypes"]
       42 GETTABLEKS                       R6 R6 K9 ["Gemini"]
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R7 R7 K5 ["requestHandler"]
       47 CALL                             R4 3 1
       48 SETTABLEKS                       R4 R3 K6 ["createRequestHandler"]
       50 GETUPVAL                         R3 5
       51 GETUPVAL                         R4 2
       52 MOVE                             R5 R1
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K7 ["LLMProviderTypes"]
       56 GETTABLEKS                       R6 R6 K10 ["OpenAI"]
       58 GETUPVAL                         R7 5
       59 GETTABLEKS                       R7 R7 K5 ["requestHandler"]
       61 CALL                             R4 3 1
       62 SETTABLEKS                       R4 R3 K6 ["createRequestHandler"]
       64 GETTABLEKS                       R3 R0 K11 ["guestRequestHandlers"]
       66 JUMPIFNOT                        R3 ; [+15]
       67 GETTABLEKS                       R3 R0 K11 ["guestRequestHandlers"]
       69 LOADNIL                          R4
       70 LOADNIL                          R5
       71 FORGPREP                         R3
       72 GETUPVAL                         R8 2
       73 MOVE                             R9 R1
       74 MOVE                             R10 R6
       75 GETTABLEKS                       R11 R7 K5 ["requestHandler"]
       77 CALL                             R8 3 1
       78 SETTABLEKS                       R8 R7 K6 ["createRequestHandler"]
       80 FORGLOOP                         R3 2 ; [-9]
       82 LOADNIL                          R3
       83 NAMECALL                         R4 R1 K12 ["IsGuest"]
       85 CALL                             R4 1 1
       86 JUMPIFNOT                        R4 ; [+13]
       87 GETUPVAL                         R4 6
       88 CALL                             R4 0 1
       89 JUMPIFNOT                        R4 ; [+5]
       90 GETUPVAL                         R4 7
       91 CALL                             R4 0 0
       92 GETUPVAL                         R4 8
       93 CALL                             R4 0 0
       94 JUMP                             ; [+5]
       95 GETUPVAL                         R4 9
       96 GETTABLEKS                       R4 R4 K13 ["registerDefaultWidgets"]
       98 CALL                             R4 0 1
       99 MOVE                             R3 R4
      100 GETTABLEKS                       R4 R0 K14 ["EnvironmentOverride"]
      102 JUMPIF                           R4 ; [+4]
      103 GETUPVAL                         R4 10
      104 GETTABLEKS                       R4 R4 K15 ["new"]
      106 CALL                             R4 0 1
      107 GETUPVAL                         R5 10
      108 GETTABLEKS                       R5 R5 K16 ["set"]
      110 MOVE                             R6 R4
      111 CALL                             R5 1 0
      112 GETUPVAL                         R5 11
      113 GETTABLEKS                       R5 R5 K17 ["setup"]
      115 MOVE                             R6 R4
      116 CALL                             R5 1 0
      117 NEWCLOSURE                       R5 P0
      118 CAPTURE                          UPVAL U1
      119 CAPTURE                          UPVAL U3
      120 CAPTURE                          UPVAL U4
      121 CAPTURE                          UPVAL U5
      122 CAPTURE                          VAL R0
      123 CAPTURE                          UPVAL U6
      124 CAPTURE                          UPVAL U12
      125 CAPTURE                          UPVAL U13
      126 CAPTURE                          REF R3
      127 CAPTURE                          UPVAL U10
      128 CAPTURE                          UPVAL U0
      129 CAPTURE                          VAL R2
      130 CLOSEUPVALS                      R3
      131 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["Claude"]
       15 GETTABLEKS                       R2 R2 K9 ["ClaudeLLMRequest"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Util"]
       22 GETTABLEKS                       R3 R3 K11 ["ContentWidgets"]
       24 GETTABLEKS                       R3 R3 K12 ["ContentWidgetRegistry"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Util"]
       31 GETTABLEKS                       R4 R4 K13 ["DEPRECATED_ContentWidgetRegistry"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K14 ["Parent"]
       38 GETTABLEKS                       R5 R5 K15 ["DMNetworking"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Components"]
       45 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       47 GETTABLEKS                       R6 R6 K16 ["DefaultLLMProvider"]
       49 GETTABLEKS                       R6 R6 K17 ["LLMRequest"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K18 ["Guest"]
       56 GETTABLEKS                       R7 R7 K19 ["Environment"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Components"]
       63 GETTABLEKS                       R8 R8 K7 ["Contexts"]
       65 GETTABLEKS                       R8 R8 K20 ["Gemini"]
       67 GETTABLEKS                       R8 R8 K21 ["GeminiLLMRequest"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K18 ["Guest"]
       74 GETTABLEKS                       R9 R9 K22 ["JsonEnvironment"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K6 ["Components"]
       81 GETTABLEKS                       R10 R10 K7 ["Contexts"]
       83 GETTABLEKS                       R10 R10 K16 ["DefaultLLMProvider"]
       85 GETTABLEKS                       R10 R10 K17 ["LLMRequest"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K6 ["Components"]
       92 GETTABLEKS                       R11 R11 K7 ["Contexts"]
       94 GETTABLEKS                       R11 R11 K23 ["OpenAI"]
       96 GETTABLEKS                       R11 R11 K24 ["OpenAILLMRequest"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R12 R0 K10 ["Util"]
      103 GETTABLEKS                       R12 R12 K11 ["ContentWidgets"]
      105 GETTABLEKS                       R12 R12 K25 ["ToolWidgetMappingRegistry"]
      107 CALL                             R11 1 1
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R13 R0 K26 ["Types"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R14 R0 K10 ["Util"]
      117 GETTABLEKS                       R14 R14 K11 ["ContentWidgets"]
      119 GETTABLEKS                       R14 R14 K27 ["registerContentWidgets"]
      121 CALL                             R13 1 1
      122 GETIMPORT                        R14 K5 [require]
      124 GETTABLEKS                       R15 R0 K10 ["Util"]
      126 GETTABLEKS                       R15 R15 K11 ["ContentWidgets"]
      128 GETTABLEKS                       R15 R15 K28 ["registerToolWidgetMappings"]
      130 CALL                             R14 1 1
      131 GETIMPORT                        R15 K5 [require]
      133 GETTABLEKS                       R16 R0 K10 ["Util"]
      135 GETTABLEKS                       R16 R16 K29 ["withLLMRequestNetworkWrapper"]
      137 CALL                             R15 1 1
      138 GETIMPORT                        R16 K5 [require]
      140 GETTABLEKS                       R17 R0 K30 ["Flags"]
      142 GETTABLEKS                       R17 R17 K31 ["FFlagAssistantSplitToolsAndWidgets"]
      144 CALL                             R16 1 1
      145 DUPCLOSURE                       R17 K32 [PROTO_1]
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R16
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R11
      160 RETURN                           R17 1
