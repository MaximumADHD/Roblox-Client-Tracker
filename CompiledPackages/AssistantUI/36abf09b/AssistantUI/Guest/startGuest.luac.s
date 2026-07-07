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
       32 GETTABLEKS                       R0 R0 K2 ["FFlagAssistantSplitToolsAndWidgets"]
       34 JUMPIFNOT                        R0 ; [+9]
       35 GETUPVAL                         R0 6
       36 GETTABLEKS                       R0 R0 K3 ["clear"]
       38 CALL                             R0 0 0
       39 GETUPVAL                         R0 7
       40 GETTABLEKS                       R0 R0 K3 ["clear"]
       42 CALL                             R0 0 0
       43 JUMP                             ; [+4]
       44 GETUPVAL                         R0 8
       45 JUMPIFNOT                        R0 ; [+2]
       46 GETUPVAL                         R0 8
       47 CALL                             R0 0 0
       48 GETUPVAL                         R0 9
       49 GETTABLEKS                       R0 R0 K4 ["set"]
       51 GETUPVAL                         R1 9
       52 GETTABLEKS                       R1 R1 K5 ["new"]
       54 CALL                             R1 0 -1
       55 CALL                             R0 -1 0
       56 GETUPVAL                         R0 10
       57 GETTABLEKS                       R0 R0 K6 ["setMcpClientIdentifier"]
       59 GETUPVAL                         R1 11
       60 CALL                             R0 1 0
       61 RETURN                           R0 0

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
      110 GETTABLEKS                       R7 R7 K19 ["FFlagAssistantSplitToolsAndWidgets"]
      112 JUMPIFNOT                        R7 ; [+19]
      113 GETUPVAL                         R7 8
      114 GETTABLEKS                       R7 R7 K20 ["createBridges"]
      116 DUPTABLE                         R8 K22 [{"networking", "environment"}]
      117 SETTABLEKS                       R1 R8 K0 ["networking"]
      119 SETTABLEKS                       R4 R8 K21 ["environment"]
      121 CALL                             R7 1 1
      122 MOVE                             R5 R7
      123 NAMECALL                         R7 R1 K23 ["IsGuest"]
      125 CALL                             R7 1 1
      126 JUMPIFNOT                        R7 ; [+14]
      127 GETUPVAL                         R7 9
      128 CALL                             R7 0 0
      129 GETUPVAL                         R7 10
      130 CALL                             R7 0 0
      131 JUMP                             ; [+9]
      132 NAMECALL                         R7 R2 K23 ["IsGuest"]
      134 CALL                             R7 1 1
      135 JUMPIFNOT                        R7 ; [+5]
      136 GETUPVAL                         R7 11
      137 GETTABLEKS                       R7 R7 K24 ["registerDefaultWidgets"]
      139 CALL                             R7 0 1
      140 MOVE                             R6 R7
      141 GETUPVAL                         R7 12
      142 GETTABLEKS                       R7 R7 K25 ["setup"]
      144 MOVE                             R8 R4
      145 CALL                             R7 1 0
      146 NEWCLOSURE                       R7 P0
      147 CAPTURE                          UPVAL U1
      148 CAPTURE                          UPVAL U3
      149 CAPTURE                          UPVAL U4
      150 CAPTURE                          UPVAL U5
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U7
      153 CAPTURE                          UPVAL U13
      154 CAPTURE                          UPVAL U14
      155 CAPTURE                          REF R6
      156 CAPTURE                          UPVAL U6
      157 CAPTURE                          UPVAL U0
      158 CAPTURE                          VAL R3
      159 DUPTABLE                         R8 K27 [{"bridges"}]
      160 SETTABLEKS                       R5 R8 K26 ["bridges"]
      162 CLOSEUPVALS                      R6
      163 RETURN                           R7 2

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
       66 GETTABLEKS                       R9 R0 K21 ["Flags"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K7 ["Components"]
       73 GETTABLEKS                       R10 R10 K8 ["Contexts"]
       75 GETTABLEKS                       R10 R10 K22 ["Gemini"]
       77 GETTABLEKS                       R10 R10 K23 ["GeminiLLMRequest"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K19 ["Guest"]
       84 GETTABLEKS                       R11 R11 K24 ["JsonEnvironment"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K7 ["Components"]
       91 GETTABLEKS                       R12 R12 K8 ["Contexts"]
       93 GETTABLEKS                       R12 R12 K17 ["DefaultLLMProvider"]
       95 GETTABLEKS                       R12 R12 K18 ["LLMRequest"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K7 ["Components"]
      102 GETTABLEKS                       R13 R13 K8 ["Contexts"]
      104 GETTABLEKS                       R13 R13 K25 ["OpenAI"]
      106 GETTABLEKS                       R13 R13 K26 ["OpenAILLMRequest"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R14 R0 K11 ["Util"]
      113 GETTABLEKS                       R14 R14 K12 ["ContentWidgets"]
      115 GETTABLEKS                       R14 R14 K27 ["ToolWidgetMappingRegistry"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R15 R0 K28 ["Types"]
      122 CALL                             R14 1 1
      123 GETIMPORT                        R15 K5 [require]
      125 GETTABLEKS                       R16 R0 K11 ["Util"]
      127 GETTABLEKS                       R16 R16 K12 ["ContentWidgets"]
      129 GETTABLEKS                       R16 R16 K29 ["registerContentWidgets"]
      131 CALL                             R15 1 1
      132 GETIMPORT                        R16 K5 [require]
      134 GETTABLEKS                       R17 R0 K11 ["Util"]
      136 GETTABLEKS                       R17 R17 K12 ["ContentWidgets"]
      138 GETTABLEKS                       R17 R17 K30 ["registerToolWidgetMappings"]
      140 CALL                             R16 1 1
      141 GETIMPORT                        R17 K5 [require]
      143 GETTABLEKS                       R18 R0 K11 ["Util"]
      145 GETTABLEKS                       R18 R18 K31 ["withLLMRequestNetworkWrapper"]
      147 CALL                             R17 1 1
      148 DUPCLOSURE                       R18 K32 [PROTO_1]
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R13
      164 RETURN                           R18 1
