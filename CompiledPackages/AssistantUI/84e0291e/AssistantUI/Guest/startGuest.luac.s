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
       40 GETTABLEKS                       R0 R0 K3 ["FFlagAssistantUseNewDMNetworking"]
       42 JUMPIFNOT                        R0 ; [+5]
       43 GETUPVAL                         R0 8
       44 GETTABLEKS                       R0 R0 K4 ["destroy"]
       46 GETUPVAL                         R1 9
       47 CALL                             R0 1 0
       48 GETUPVAL                         R0 8
       49 GETTABLEKS                       R0 R0 K5 ["set"]
       51 GETUPVAL                         R1 8
       52 GETTABLEKS                       R1 R1 K6 ["new"]
       54 CALL                             R1 0 -1
       55 CALL                             R0 -1 0
       56 GETUPVAL                         R0 10
       57 GETTABLEKS                       R0 R0 K7 ["setMcpClientIdentifier"]
       59 GETUPVAL                         R1 11
       60 CALL                             R0 1 0
       61 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantUseNewDMNetworking"]
        5 JUMPIFNOT                        R3 ; [+40]
        6 GETTABLEKS                       R3 R0 K1 ["net"]
        8 JUMPIF                           R3 ; [+2]
        9 GETTABLEKS                       R3 R0 K2 ["llmNet"]
       11 FASTCALL2K                       ASSERT R3 K3 ; [+5]
       13 MOVE                             R5 R3
       14 LOADK                            R6 K3 ["Networking implementation is required to start the AssistantUI guest"]
       15 GETIMPORT                        R4 K5 [assert]
       17 CALL                             R4 2 0
       18 MOVE                             R2 R3
       19 GETTABLEKS                       R4 R0 K6 ["guestRequestHandlers"]
       21 JUMPIFNOT                        R4 ; [+37]
       22 GETTABLEKS                       R4 R0 K6 ["guestRequestHandlers"]
       24 LOADNIL                          R5
       25 LOADNIL                          R6
       26 FORGPREP                         R4
       27 GETIMPORT                        R11 K9 [table.find]
       29 GETUPVAL                         R12 1
       30 MOVE                             R13 R7
       31 CALL                             R11 2 1
       32 NOT                              R10 R11
       33 LOADK                            R11 K10 ["Guest request handler \"%*\" collides with a built-in LLM request handler"]
       34 MOVE                             R13 R7
       35 NAMECALL                         R11 R11 K11 ["format"]
       37 CALL                             R11 2 1
       38 FASTCALL2                        ASSERT R10 R11 ; [+3]
       40 GETIMPORT                        R9 K5 [assert]
       42 CALL                             R9 2 0
       43 FORGLOOP                         R4 1 ; [-17]
       45 JUMP                             ; [+13]
       46 GETTABLEKS                       R3 R0 K12 ["networkingOLD"]
       48 JUMPIF                           R3 ; [+2]
       49 GETTABLEKS                       R3 R0 K13 ["LLMRequestNetworkingOLD"]
       51 FASTCALL2K                       ASSERT R3 K3 ; [+5]
       53 MOVE                             R5 R3
       54 LOADK                            R6 K3 ["Networking implementation is required to start the AssistantUI guest"]
       55 GETIMPORT                        R4 K5 [assert]
       57 CALL                             R4 2 0
       58 MOVE                             R1 R3
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantUseNewDMNetworking"]
       62 JUMPIFNOT                        R4 ; [+4]
       63 GETTABLEKS                       R4 R0 K2 ["llmNet"]
       65 OR                               R3 R4 R2
       66 JUMP                             ; [+3]
       67 GETTABLEKS                       R4 R0 K13 ["LLMRequestNetworkingOLD"]
       69 OR                               R3 R4 R1
       70 GETUPVAL                         R4 2
       71 GETTABLEKS                       R4 R4 K14 ["getMcpClientIdentifier"]
       73 CALL                             R4 0 1
       74 GETUPVAL                         R5 2
       75 GETTABLEKS                       R5 R5 K15 ["setMcpClientIdentifier"]
       77 GETTABLEKS                       R6 R0 K16 ["clientIdentifier"]
       79 CALL                             R5 1 0
       80 GETTABLEKS                       R5 R0 K17 ["EnvironmentOverride"]
       82 JUMPIF                           R5 ; [+4]
       83 GETUPVAL                         R5 3
       84 GETTABLEKS                       R5 R5 K18 ["new"]
       86 CALL                             R5 0 1
       87 GETUPVAL                         R6 4
       88 GETUPVAL                         R7 5
       89 MOVE                             R8 R3
       90 LOADK                            R9 K19 ["Default"]
       91 GETUPVAL                         R10 4
       92 GETTABLEKS                       R10 R10 K20 ["requestHandler"]
       94 MOVE                             R11 R5
       95 CALL                             R7 4 1
       96 SETTABLEKS                       R7 R6 K21 ["createRequestHandler"]
       98 GETUPVAL                         R6 6
       99 GETUPVAL                         R7 5
      100 MOVE                             R8 R3
      101 GETUPVAL                         R9 2
      102 GETTABLEKS                       R9 R9 K22 ["LLMProviderTypes"]
      104 GETTABLEKS                       R9 R9 K23 ["Claude"]
      106 GETUPVAL                         R10 6
      107 GETTABLEKS                       R10 R10 K20 ["requestHandler"]
      109 MOVE                             R11 R5
      110 CALL                             R7 4 1
      111 SETTABLEKS                       R7 R6 K21 ["createRequestHandler"]
      113 GETUPVAL                         R6 7
      114 GETUPVAL                         R7 5
      115 MOVE                             R8 R3
      116 GETUPVAL                         R9 2
      117 GETTABLEKS                       R9 R9 K22 ["LLMProviderTypes"]
      119 GETTABLEKS                       R9 R9 K24 ["Gemini"]
      121 GETUPVAL                         R10 7
      122 GETTABLEKS                       R10 R10 K20 ["requestHandler"]
      124 MOVE                             R11 R5
      125 CALL                             R7 4 1
      126 SETTABLEKS                       R7 R6 K21 ["createRequestHandler"]
      128 GETUPVAL                         R6 8
      129 GETUPVAL                         R7 5
      130 MOVE                             R8 R3
      131 GETUPVAL                         R9 2
      132 GETTABLEKS                       R9 R9 K22 ["LLMProviderTypes"]
      134 GETTABLEKS                       R9 R9 K25 ["OpenAI"]
      136 GETUPVAL                         R10 8
      137 GETTABLEKS                       R10 R10 K20 ["requestHandler"]
      139 MOVE                             R11 R5
      140 CALL                             R7 4 1
      141 SETTABLEKS                       R7 R6 K21 ["createRequestHandler"]
      143 GETTABLEKS                       R6 R0 K6 ["guestRequestHandlers"]
      145 JUMPIFNOT                        R6 ; [+16]
      146 GETTABLEKS                       R6 R0 K6 ["guestRequestHandlers"]
      148 LOADNIL                          R7
      149 LOADNIL                          R8
      150 FORGPREP                         R6
      151 GETUPVAL                         R11 5
      152 MOVE                             R12 R3
      153 MOVE                             R13 R9
      154 GETTABLEKS                       R14 R10 K20 ["requestHandler"]
      156 MOVE                             R15 R5
      157 CALL                             R11 4 1
      158 SETTABLEKS                       R11 R10 K21 ["createRequestHandler"]
      160 FORGLOOP                         R6 2 ; [-10]
      162 GETUPVAL                         R6 3
      163 GETTABLEKS                       R6 R6 K26 ["set"]
      165 MOVE                             R7 R5
      166 CALL                             R6 1 0
      167 LOADNIL                          R6
      168 GETUPVAL                         R7 0
      169 GETTABLEKS                       R7 R7 K0 ["FFlagAssistantUseNewDMNetworking"]
      171 JUMPIFNOT                        R7 ; [+7]
      172 GETUPVAL                         R7 9
      173 GETTABLEKS                       R7 R7 K27 ["connectRemotes"]
      175 MOVE                             R8 R2
      176 MOVE                             R9 R5
      177 CALL                             R7 2 0
      178 JUMP                             ; [+10]
      179 GETUPVAL                         R7 10
      180 GETTABLEKS                       R7 R7 K28 ["createBridges"]
      182 DUPTABLE                         R8 K30 [{"networkingOLD", "environment"}]
      183 SETTABLEKS                       R1 R8 K12 ["networkingOLD"]
      185 SETTABLEKS                       R5 R8 K29 ["environment"]
      187 CALL                             R7 1 1
      188 MOVE                             R6 R7
      189 GETUPVAL                         R8 0
      190 GETTABLEKS                       R8 R8 K0 ["FFlagAssistantUseNewDMNetworking"]
      192 JUMPIFNOT                        R8 ; [+4]
      193 GETTABLEKS                       R7 R5 K31 ["hasUI"]
      195 CALL                             R7 0 1
      196 JUMP                             ; [+3]
      197 NAMECALL                         R7 R1 K32 ["IsGuest"]
      199 CALL                             R7 1 1
      200 JUMPIFNOT                        R7 ; [+4]
      201 GETUPVAL                         R8 11
      202 CALL                             R8 0 0
      203 GETUPVAL                         R8 12
      204 CALL                             R8 0 0
      205 GETUPVAL                         R8 13
      206 GETTABLEKS                       R8 R8 K33 ["setup"]
      208 MOVE                             R9 R5
      209 CALL                             R8 1 0
      210 NEWCLOSURE                       R8 P0
      211 CAPTURE                          UPVAL U4
      212 CAPTURE                          UPVAL U6
      213 CAPTURE                          UPVAL U7
      214 CAPTURE                          UPVAL U8
      215 CAPTURE                          VAL R0
      216 CAPTURE                          UPVAL U14
      217 CAPTURE                          UPVAL U15
      218 CAPTURE                          UPVAL U0
      219 CAPTURE                          UPVAL U3
      220 CAPTURE                          VAL R5
      221 CAPTURE                          UPVAL U2
      222 CAPTURE                          VAL R4
      223 DUPTABLE                         R9 K35 [{"bridges"}]
      224 SETTABLEKS                       R6 R9 K34 ["bridges"]
      226 RETURN                           R8 2

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
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Parent"]
       50 GETTABLEKS                       R7 R7 K17 ["DMNetworkingOLD"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R1 K18 ["Engine"]
       55 GETTABLEKS                       R7 R7 K19 ["LLMRequest"]
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K20 ["Guest"]
       61 GETTABLEKS                       R9 R9 K21 ["Environment"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R10 R0 K22 ["Flags"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R0 K9 ["Components"]
       73 GETTABLEKS                       R11 R11 K10 ["Contexts"]
       75 GETTABLEKS                       R11 R11 K23 ["Gemini"]
       77 GETTABLEKS                       R11 R11 K24 ["GeminiLLMRequest"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K5 [require]
       82 GETTABLEKS                       R12 R0 K20 ["Guest"]
       84 GETTABLEKS                       R12 R12 K25 ["JsonEnvironment"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K5 [require]
       89 GETTABLEKS                       R13 R0 K9 ["Components"]
       91 GETTABLEKS                       R13 R13 K10 ["Contexts"]
       93 GETTABLEKS                       R13 R13 K26 ["OpenAI"]
       95 GETTABLEKS                       R13 R13 K27 ["OpenAILLMRequest"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K5 [require]
      100 GETTABLEKS                       R14 R0 K28 ["Remotes"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K5 [require]
      105 GETTABLEKS                       R15 R0 K13 ["Util"]
      107 GETTABLEKS                       R15 R15 K14 ["ContentWidgets"]
      109 GETTABLEKS                       R15 R15 K29 ["ToolWidgetMappingRegistry"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K5 [require]
      114 GETTABLEKS                       R16 R0 K30 ["Types"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K5 [require]
      119 GETTABLEKS                       R17 R0 K13 ["Util"]
      121 GETTABLEKS                       R17 R17 K14 ["ContentWidgets"]
      123 GETTABLEKS                       R17 R17 K31 ["registerContentWidgets"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K5 [require]
      128 GETTABLEKS                       R18 R0 K13 ["Util"]
      130 GETTABLEKS                       R18 R18 K14 ["ContentWidgets"]
      132 GETTABLEKS                       R18 R18 K32 ["registerToolWidgetMappings"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K5 [require]
      137 GETTABLEKS                       R19 R0 K13 ["Util"]
      139 GETTABLEKS                       R19 R19 K33 ["withLLMRequestNetworkWrapper"]
      141 CALL                             R18 1 1
      142 NEWTABLE                         R19 0 4
      144 LOADK                            R20 K34 ["Default"]
      145 GETTABLEKS                       R21 R15 K35 ["LLMProviderTypes"]
      147 GETTABLEKS                       R21 R21 K11 ["Claude"]
      149 GETTABLEKS                       R22 R15 K35 ["LLMProviderTypes"]
      151 GETTABLEKS                       R22 R22 K23 ["Gemini"]
      153 GETTABLEKS                       R23 R15 K35 ["LLMProviderTypes"]
      155 GETTABLEKS                       R23 R23 K26 ["OpenAI"]
      157 SETLIST                          R19 R20 4 [1]
      159 DUPCLOSURE                       R20 K36 [PROTO_1]
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R17
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R14
      176 RETURN                           R20 1
