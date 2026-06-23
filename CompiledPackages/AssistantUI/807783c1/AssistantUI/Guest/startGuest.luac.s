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
      107 LOADNIL                          R5
      108 LOADNIL                          R6
      109 GETUPVAL                         R7 7
      110 CALL                             R7 0 1
      111 JUMPIFNOT                        R7 ; [+19]
      112 GETUPVAL                         R7 8
      113 GETTABLEKS                       R7 R7 K19 ["createBridges"]
      115 DUPTABLE                         R8 K21 [{"networking", "environment"}]
      116 SETTABLEKS                       R1 R8 K0 ["networking"]
      118 SETTABLEKS                       R4 R8 K20 ["environment"]
      120 CALL                             R7 1 1
      121 MOVE                             R5 R7
      122 NAMECALL                         R7 R1 K22 ["IsGuest"]
      124 CALL                             R7 1 1
      125 JUMPIFNOT                        R7 ; [+14]
      126 GETUPVAL                         R7 9
      127 CALL                             R7 0 0
      128 GETUPVAL                         R7 10
      129 CALL                             R7 0 0
      130 JUMP                             ; [+9]
      131 NAMECALL                         R7 R2 K22 ["IsGuest"]
      133 CALL                             R7 1 1
      134 JUMPIFNOT                        R7 ; [+5]
      135 GETUPVAL                         R7 11
      136 GETTABLEKS                       R7 R7 K23 ["registerDefaultWidgets"]
      138 CALL                             R7 0 1
      139 MOVE                             R6 R7
      140 GETUPVAL                         R7 12
      141 GETTABLEKS                       R7 R7 K24 ["setup"]
      143 MOVE                             R8 R4
      144 CALL                             R7 1 0
      145 NEWCLOSURE                       R7 P0
      146 CAPTURE                          UPVAL U1
      147 CAPTURE                          UPVAL U3
      148 CAPTURE                          UPVAL U4
      149 CAPTURE                          UPVAL U5
      150 CAPTURE                          VAL R0
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          UPVAL U13
      153 CAPTURE                          UPVAL U14
      154 CAPTURE                          REF R6
      155 CAPTURE                          UPVAL U6
      156 CAPTURE                          UPVAL U0
      157 CAPTURE                          VAL R3
      158 DUPTABLE                         R8 K26 [{"bridges"}]
      159 SETTABLEKS                       R5 R8 K25 ["bridges"]
      161 CLOSEUPVALS                      R6
      162 RETURN                           R7 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bridges"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["Claude"]
       20 GETTABLEKS                       R3 R3 K10 ["ClaudeLLMRequest"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["ContentWidgets"]
       29 GETTABLEKS                       R4 R4 K13 ["ContentWidgetRegistry"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Util"]
       36 GETTABLEKS                       R5 R5 K14 ["DEPRECATED_ContentWidgetRegistry"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K15 ["Parent"]
       43 GETTABLEKS                       R6 R6 K16 ["DMNetworking"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K7 ["Components"]
       50 GETTABLEKS                       R7 R7 K8 ["Contexts"]
       52 GETTABLEKS                       R7 R7 K17 ["DefaultLLMProvider"]
       54 GETTABLEKS                       R7 R7 K18 ["LLMRequest"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K19 ["Guest"]
       61 GETTABLEKS                       R8 R8 K20 ["Environment"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K7 ["Components"]
       68 GETTABLEKS                       R9 R9 K8 ["Contexts"]
       70 GETTABLEKS                       R9 R9 K21 ["Gemini"]
       72 GETTABLEKS                       R9 R9 K22 ["GeminiLLMRequest"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K19 ["Guest"]
       79 GETTABLEKS                       R10 R10 K23 ["JsonEnvironment"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K7 ["Components"]
       86 GETTABLEKS                       R11 R11 K8 ["Contexts"]
       88 GETTABLEKS                       R11 R11 K17 ["DefaultLLMProvider"]
       90 GETTABLEKS                       R11 R11 K18 ["LLMRequest"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K7 ["Components"]
       97 GETTABLEKS                       R12 R12 K8 ["Contexts"]
       99 GETTABLEKS                       R12 R12 K24 ["OpenAI"]
      101 GETTABLEKS                       R12 R12 K25 ["OpenAILLMRequest"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R13 R0 K11 ["Util"]
      108 GETTABLEKS                       R13 R13 K12 ["ContentWidgets"]
      110 GETTABLEKS                       R13 R13 K26 ["ToolWidgetMappingRegistry"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R14 R0 K27 ["Types"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R15 R0 K11 ["Util"]
      122 GETTABLEKS                       R15 R15 K12 ["ContentWidgets"]
      124 GETTABLEKS                       R15 R15 K28 ["registerContentWidgets"]
      126 CALL                             R14 1 1
      127 GETIMPORT                        R15 K5 [require]
      129 GETTABLEKS                       R16 R0 K11 ["Util"]
      131 GETTABLEKS                       R16 R16 K12 ["ContentWidgets"]
      133 GETTABLEKS                       R16 R16 K29 ["registerToolWidgetMappings"]
      135 CALL                             R15 1 1
      136 GETIMPORT                        R16 K5 [require]
      138 GETTABLEKS                       R17 R0 K11 ["Util"]
      140 GETTABLEKS                       R17 R17 K30 ["withLLMRequestNetworkWrapper"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K5 [require]
      145 GETTABLEKS                       R18 R0 K31 ["Flags"]
      147 GETTABLEKS                       R18 R18 K32 ["FFlagAssistantSplitToolsAndWidgets"]
      149 CALL                             R17 1 1
      150 DUPCLOSURE                       R18 K33 [PROTO_1]
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R12
      166 RETURN                           R18 1
