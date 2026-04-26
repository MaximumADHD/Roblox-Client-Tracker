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
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R0 R1 K1 ["guestRequestHandlers"]
       19 JUMPIFNOT                        R0 ; [+11]
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R0 R3 K1 ["guestRequestHandlers"]
       23 LOADNIL                          R1
       24 LOADNIL                          R2
       25 FORGPREP                         R0
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K0 ["createRequestHandler"]
       29 FORGLOOP                         R0 2 ; [-4]
       31 GETUPVAL                         R0 5
       32 JUMPIFNOT                        R0 ; [+2]
       33 GETUPVAL                         R0 5
       34 CALL                             R0 0 0
       35 GETUPVAL                         R1 6
       36 GETTABLEKS                       R0 R1 K2 ["set"]
       38 GETUPVAL                         R2 6
       39 GETTABLEKS                       R1 R2 K3 ["new"]
       41 CALL                             R1 0 -1
       42 CALL                             R0 -1 0
       43 GETUPVAL                         R1 7
       44 GETTABLEKS                       R0 R1 K4 ["setMcpClientIdentifier"]
       46 GETUPVAL                         R1 8
       47 CALL                             R0 1 0
       48 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["LLMRequestNetworking"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["getMcpClientIdentifier"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["setMcpClientIdentifier"]
        9 GETTABLEKS                       R4 R0 K3 ["clientIdentifier"]
       11 CALL                             R3 1 0
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R1
       15 LOADK                            R6 K4 ["Default"]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R7 R8 K5 ["requestHandler"]
       19 CALL                             R4 3 1
       20 SETTABLEKS                       R4 R3 K6 ["createRequestHandler"]
       22 GETUPVAL                         R3 3
       23 GETUPVAL                         R4 2
       24 MOVE                             R5 R1
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R7 R8 K7 ["LLMProviderTypes"]
       28 GETTABLEKS                       R6 R7 K8 ["Claude"]
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R7 R8 K5 ["requestHandler"]
       33 CALL                             R4 3 1
       34 SETTABLEKS                       R4 R3 K6 ["createRequestHandler"]
       36 GETUPVAL                         R3 4
       37 GETUPVAL                         R4 2
       38 MOVE                             R5 R1
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R7 R8 K7 ["LLMProviderTypes"]
       42 GETTABLEKS                       R6 R7 K9 ["Gemini"]
       44 GETUPVAL                         R8 4
       45 GETTABLEKS                       R7 R8 K5 ["requestHandler"]
       47 CALL                             R4 3 1
       48 SETTABLEKS                       R4 R3 K6 ["createRequestHandler"]
       50 GETUPVAL                         R3 5
       51 GETUPVAL                         R4 2
       52 MOVE                             R5 R1
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R7 R8 K7 ["LLMProviderTypes"]
       56 GETTABLEKS                       R6 R7 K10 ["OpenAI"]
       58 GETUPVAL                         R8 5
       59 GETTABLEKS                       R7 R8 K5 ["requestHandler"]
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
       86 JUMPIFNOT                        R4 ; [+5]
       87 GETUPVAL                         R5 6
       88 GETTABLEKS                       R4 R5 K13 ["registerDefaultWidgets"]
       90 CALL                             R4 0 1
       91 MOVE                             R3 R4
       92 GETTABLEKS                       R4 R0 K14 ["EnvironmentOverride"]
       94 JUMPIF                           R4 ; [+4]
       95 GETUPVAL                         R5 7
       96 GETTABLEKS                       R4 R5 K15 ["new"]
       98 CALL                             R4 0 1
       99 GETUPVAL                         R6 7
      100 GETTABLEKS                       R5 R6 K16 ["set"]
      102 MOVE                             R6 R4
      103 CALL                             R5 1 0
      104 GETUPVAL                         R6 8
      105 GETTABLEKS                       R5 R6 K17 ["setup"]
      107 MOVE                             R6 R4
      108 CALL                             R5 1 0
      109 NEWCLOSURE                       R5 P0
      110 CAPTURE                          UPVAL U1
      111 CAPTURE                          UPVAL U3
      112 CAPTURE                          UPVAL U4
      113 CAPTURE                          UPVAL U5
      114 CAPTURE                          VAL R0
      115 CAPTURE                          REF R3
      116 CAPTURE                          UPVAL U7
      117 CAPTURE                          UPVAL U0
      118 CAPTURE                          VAL R2
      119 CLOSEUPVALS                      R3
      120 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Components"]
       11 GETTABLEKS                       R4 R5 K7 ["Contexts"]
       13 GETTABLEKS                       R3 R4 K8 ["Claude"]
       15 GETTABLEKS                       R2 R3 K9 ["ClaudeLLMRequest"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Util"]
       22 GETTABLEKS                       R3 R4 K11 ["ContentWidgetRegistry"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Parent"]
       29 GETTABLEKS                       R4 R5 K13 ["DMNetworking"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K6 ["Components"]
       36 GETTABLEKS                       R7 R8 K7 ["Contexts"]
       38 GETTABLEKS                       R6 R7 K14 ["DefaultLLMProvider"]
       40 GETTABLEKS                       R5 R6 K15 ["LLMRequest"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K16 ["Guest"]
       47 GETTABLEKS                       R6 R7 K17 ["Environment"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R10 R0 K6 ["Components"]
       54 GETTABLEKS                       R9 R10 K7 ["Contexts"]
       56 GETTABLEKS                       R8 R9 K18 ["Gemini"]
       58 GETTABLEKS                       R7 R8 K19 ["GeminiLLMRequest"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R9 R0 K16 ["Guest"]
       65 GETTABLEKS                       R8 R9 K20 ["JsonEnvironment"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R12 R0 K6 ["Components"]
       72 GETTABLEKS                       R11 R12 K7 ["Contexts"]
       74 GETTABLEKS                       R10 R11 K14 ["DefaultLLMProvider"]
       76 GETTABLEKS                       R9 R10 K15 ["LLMRequest"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R13 R0 K6 ["Components"]
       83 GETTABLEKS                       R12 R13 K7 ["Contexts"]
       85 GETTABLEKS                       R11 R12 K21 ["OpenAI"]
       87 GETTABLEKS                       R10 R11 K22 ["OpenAILLMRequest"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R11 R0 K23 ["Types"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R13 R0 K10 ["Util"]
       99 GETTABLEKS                       R12 R13 K24 ["withLLMRequestNetworkWrapper"]
      101 CALL                             R11 1 1
      102 DUPCLOSURE                       R12 K25 [PROTO_1]
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R7
      112 RETURN                           R12 1
