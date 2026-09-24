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
       40 GETTABLEKS                       R0 R0 K3 ["set"]
       42 GETUPVAL                         R1 7
       43 GETTABLEKS                       R1 R1 K4 ["new"]
       45 CALL                             R1 0 -1
       46 CALL                             R0 -1 0
       47 GETUPVAL                         R0 8
       48 GETTABLEKS                       R0 R0 K5 ["setMcpClientIdentifier"]
       50 GETUPVAL                         R1 9
       51 CALL                             R0 1 0
       52 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 JUMPIF                           R1 ; [+2]
        3 GETTABLEKS                       R1 R0 K1 ["LLMRequestNetworking"]
        5 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        7 MOVE                             R3 R1
        8 LOADK                            R4 K2 ["Networking implementation is required to start the AssistantUI guest"]
        9 GETIMPORT                        R2 K4 [assert]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R3 R0 K1 ["LLMRequestNetworking"]
       14 OR                               R2 R3 R1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["getMcpClientIdentifier"]
       18 CALL                             R3 0 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K6 ["setMcpClientIdentifier"]
       22 GETTABLEKS                       R5 R0 K7 ["clientIdentifier"]
       24 CALL                             R4 1 0
       25 GETUPVAL                         R4 1
       26 GETUPVAL                         R5 2
       27 MOVE                             R6 R2
       28 LOADK                            R7 K8 ["Default"]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K9 ["requestHandler"]
       32 CALL                             R5 3 1
       33 SETTABLEKS                       R5 R4 K10 ["createRequestHandler"]
       35 GETUPVAL                         R4 3
       36 GETUPVAL                         R5 2
       37 MOVE                             R6 R2
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K11 ["LLMProviderTypes"]
       41 GETTABLEKS                       R7 R7 K12 ["Claude"]
       43 GETUPVAL                         R8 3
       44 GETTABLEKS                       R8 R8 K9 ["requestHandler"]
       46 CALL                             R5 3 1
       47 SETTABLEKS                       R5 R4 K10 ["createRequestHandler"]
       49 GETUPVAL                         R4 4
       50 GETUPVAL                         R5 2
       51 MOVE                             R6 R2
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K11 ["LLMProviderTypes"]
       55 GETTABLEKS                       R7 R7 K13 ["Gemini"]
       57 GETUPVAL                         R8 4
       58 GETTABLEKS                       R8 R8 K9 ["requestHandler"]
       60 CALL                             R5 3 1
       61 SETTABLEKS                       R5 R4 K10 ["createRequestHandler"]
       63 GETUPVAL                         R4 5
       64 GETUPVAL                         R5 2
       65 MOVE                             R6 R2
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R7 R7 K11 ["LLMProviderTypes"]
       69 GETTABLEKS                       R7 R7 K14 ["OpenAI"]
       71 GETUPVAL                         R8 5
       72 GETTABLEKS                       R8 R8 K9 ["requestHandler"]
       74 CALL                             R5 3 1
       75 SETTABLEKS                       R5 R4 K10 ["createRequestHandler"]
       77 GETTABLEKS                       R4 R0 K15 ["guestRequestHandlers"]
       79 JUMPIFNOT                        R4 ; [+15]
       80 GETTABLEKS                       R4 R0 K15 ["guestRequestHandlers"]
       82 LOADNIL                          R5
       83 LOADNIL                          R6
       84 FORGPREP                         R4
       85 GETUPVAL                         R9 2
       86 MOVE                             R10 R2
       87 MOVE                             R11 R7
       88 GETTABLEKS                       R12 R8 K9 ["requestHandler"]
       90 CALL                             R9 3 1
       91 SETTABLEKS                       R9 R8 K10 ["createRequestHandler"]
       93 FORGLOOP                         R4 2 ; [-9]
       95 GETTABLEKS                       R4 R0 K16 ["EnvironmentOverride"]
       97 JUMPIF                           R4 ; [+4]
       98 GETUPVAL                         R4 6
       99 GETTABLEKS                       R4 R4 K17 ["new"]
      101 CALL                             R4 0 1
      102 GETUPVAL                         R5 6
      103 GETTABLEKS                       R5 R5 K18 ["set"]
      105 MOVE                             R6 R4
      106 CALL                             R5 1 0
      107 GETUPVAL                         R5 7
      108 GETTABLEKS                       R5 R5 K19 ["createBridges"]
      110 DUPTABLE                         R6 K21 [{"networking", "environment"}]
      111 SETTABLEKS                       R1 R6 K0 ["networking"]
      113 SETTABLEKS                       R4 R6 K20 ["environment"]
      115 CALL                             R5 1 1
      116 NAMECALL                         R6 R1 K22 ["IsGuest"]
      118 CALL                             R6 1 1
      119 JUMPIFNOT                        R6 ; [+4]
      120 GETUPVAL                         R6 8
      121 CALL                             R6 0 0
      122 GETUPVAL                         R6 9
      123 CALL                             R6 0 0
      124 GETUPVAL                         R6 10
      125 GETTABLEKS                       R6 R6 K23 ["setup"]
      127 MOVE                             R7 R4
      128 CALL                             R6 1 0
      129 NEWCLOSURE                       R6 P0
      130 CAPTURE                          UPVAL U1
      131 CAPTURE                          UPVAL U3
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          UPVAL U5
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U11
      136 CAPTURE                          UPVAL U12
      137 CAPTURE                          UPVAL U6
      138 CAPTURE                          UPVAL U0
      139 CAPTURE                          VAL R3
      140 DUPTABLE                         R7 K25 [{"bridges"}]
      141 SETTABLEKS                       R5 R7 K24 ["bridges"]
      143 RETURN                           R6 2

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
       16 GETTABLEKS                       R3 R0 K8 ["Bridges"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K11 ["Claude"]
       27 GETTABLEKS                       R4 R4 K12 ["ClaudeLLMRequest"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Util"]
       34 GETTABLEKS                       R5 R5 K14 ["ContentWidgets"]
       36 GETTABLEKS                       R5 R5 K15 ["ContentWidgetRegistry"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K16 ["DMNetworking"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K17 ["Engine"]
       48 GETTABLEKS                       R6 R6 K18 ["LLMRequest"]
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K19 ["Guest"]
       54 GETTABLEKS                       R8 R8 K20 ["Environment"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K9 ["Components"]
       61 GETTABLEKS                       R9 R9 K10 ["Contexts"]
       63 GETTABLEKS                       R9 R9 K21 ["Gemini"]
       65 GETTABLEKS                       R9 R9 K22 ["GeminiLLMRequest"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K19 ["Guest"]
       72 GETTABLEKS                       R10 R10 K23 ["JsonEnvironment"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R11 R0 K9 ["Components"]
       79 GETTABLEKS                       R11 R11 K10 ["Contexts"]
       81 GETTABLEKS                       R11 R11 K24 ["OpenAI"]
       83 GETTABLEKS                       R11 R11 K25 ["OpenAILLMRequest"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R0 K13 ["Util"]
       90 GETTABLEKS                       R12 R12 K14 ["ContentWidgets"]
       92 GETTABLEKS                       R12 R12 K26 ["ToolWidgetMappingRegistry"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R13 R0 K27 ["Types"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K5 [require]
      102 GETTABLEKS                       R14 R0 K13 ["Util"]
      104 GETTABLEKS                       R14 R14 K14 ["ContentWidgets"]
      106 GETTABLEKS                       R14 R14 K28 ["registerContentWidgets"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K5 [require]
      111 GETTABLEKS                       R15 R0 K13 ["Util"]
      113 GETTABLEKS                       R15 R15 K14 ["ContentWidgets"]
      115 GETTABLEKS                       R15 R15 K29 ["registerToolWidgetMappings"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K5 [require]
      120 GETTABLEKS                       R16 R0 K13 ["Util"]
      122 GETTABLEKS                       R16 R16 K30 ["withLLMRequestNetworkWrapper"]
      124 CALL                             R15 1 1
      125 DUPCLOSURE                       R16 K31 [PROTO_1]
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R11
      139 RETURN                           R16 1
