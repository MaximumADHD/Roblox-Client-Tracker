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
       32 CALL                             R0 0 1
       33 JUMPIFNOT                        R0 ; [+4]
       34 GETUPVAL                         R0 6
       35 JUMPIFNOT                        R0 ; [+2]
       36 GETUPVAL                         R0 6
       37 CALL                             R0 0 0
       38 GETUPVAL                         R1 7
       39 GETTABLEKS                       R0 R1 K2 ["set"]
       41 GETUPVAL                         R2 7
       42 GETTABLEKS                       R1 R2 K3 ["new"]
       44 CALL                             R1 0 -1
       45 CALL                             R0 -1 0
       46 GETUPVAL                         R1 8
       47 GETTABLEKS                       R0 R1 K4 ["setMcpClientIdentifier"]
       49 GETUPVAL                         R1 9
       50 CALL                             R0 1 0
       51 RETURN                           R0 0

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
       25 LOADK                            R6 K7 ["Claude"]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R7 R8 K5 ["requestHandler"]
       29 CALL                             R4 3 1
       30 SETTABLEKS                       R4 R3 K6 ["createRequestHandler"]
       32 GETUPVAL                         R3 4
       33 GETUPVAL                         R4 2
       34 MOVE                             R5 R1
       35 LOADK                            R6 K8 ["Gemini"]
       36 GETUPVAL                         R8 4
       37 GETTABLEKS                       R7 R8 K5 ["requestHandler"]
       39 CALL                             R4 3 1
       40 SETTABLEKS                       R4 R3 K6 ["createRequestHandler"]
       42 GETUPVAL                         R3 5
       43 GETUPVAL                         R4 2
       44 MOVE                             R5 R1
       45 LOADK                            R6 K9 ["OpenAI"]
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R7 R8 K5 ["requestHandler"]
       49 CALL                             R4 3 1
       50 SETTABLEKS                       R4 R3 K6 ["createRequestHandler"]
       52 GETTABLEKS                       R3 R0 K10 ["guestRequestHandlers"]
       54 JUMPIFNOT                        R3 ; [+15]
       55 GETTABLEKS                       R3 R0 K10 ["guestRequestHandlers"]
       57 LOADNIL                          R4
       58 LOADNIL                          R5
       59 FORGPREP                         R3
       60 GETUPVAL                         R8 2
       61 MOVE                             R9 R1
       62 MOVE                             R10 R6
       63 GETTABLEKS                       R11 R7 K5 ["requestHandler"]
       65 CALL                             R8 3 1
       66 SETTABLEKS                       R8 R7 K6 ["createRequestHandler"]
       68 FORGLOOP                         R3 2 ; [-9]
       70 LOADNIL                          R3
       71 GETUPVAL                         R4 6
       72 CALL                             R4 0 1
       73 JUMPIFNOT                        R4 ; [+9]
       74 NAMECALL                         R4 R1 K11 ["IsGuest"]
       76 CALL                             R4 1 1
       77 JUMPIFNOT                        R4 ; [+5]
       78 GETUPVAL                         R5 7
       79 GETTABLEKS                       R4 R5 K12 ["registerDefaultWidgets"]
       81 CALL                             R4 0 1
       82 MOVE                             R3 R4
       83 GETTABLEKS                       R4 R0 K13 ["EnvironmentOverride"]
       85 JUMPIF                           R4 ; [+4]
       86 GETUPVAL                         R5 8
       87 GETTABLEKS                       R4 R5 K14 ["new"]
       89 CALL                             R4 0 1
       90 GETUPVAL                         R6 8
       91 GETTABLEKS                       R5 R6 K15 ["set"]
       93 MOVE                             R6 R4
       94 CALL                             R5 1 0
       95 GETUPVAL                         R5 9
       96 CALL                             R5 0 1
       97 JUMPIFNOT                        R5 ; [+7]
       98 GETUPVAL                         R6 10
       99 GETTABLEKS                       R5 R6 K16 ["setup"]
      101 MOVE                             R6 R4
      102 GETUPVAL                         R7 11
      103 CALL                             R7 0 -1
      104 CALL                             R5 -1 0
      105 NEWCLOSURE                       R5 P0
      106 CAPTURE                          UPVAL U1
      107 CAPTURE                          UPVAL U3
      108 CAPTURE                          UPVAL U4
      109 CAPTURE                          UPVAL U5
      110 CAPTURE                          VAL R0
      111 CAPTURE                          UPVAL U6
      112 CAPTURE                          REF R3
      113 CAPTURE                          UPVAL U8
      114 CAPTURE                          UPVAL U0
      115 CAPTURE                          VAL R2
      116 CLOSEUPVALS                      R3
      117 RETURN                           R5 1

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
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R14 R0 K25 ["Flags"]
      106 GETTABLEKS                       R13 R14 K26 ["FFlagAssistantJsonEncoder"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R15 R0 K25 ["Flags"]
      113 GETTABLEKS                       R14 R15 K27 ["FFlagAssistantJsonEncoderUseHiddenMetatable"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R16 R0 K25 ["Flags"]
      120 GETTABLEKS                       R15 R16 K28 ["FFlagAssistantRegisterWidgetsThroughTools"]
      122 CALL                             R14 1 1
      123 DUPCLOSURE                       R15 K29 [PROTO_1]
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R13
      136 RETURN                           R15 1
