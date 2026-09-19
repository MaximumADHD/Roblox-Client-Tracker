PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectedProvider"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["LLMProviderTypes"]
        6 GETTABLEKS                       R1 R1 K2 ["Claude"]
        8 JUMPIFEQ                         R0 R1 ; [+21]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["selectedProvider"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K1 ["LLMProviderTypes"]
       16 GETTABLEKS                       R1 R1 K3 ["Gemini"]
       18 JUMPIFEQ                         R0 R1 ; [+11]
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["selectedProvider"]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K1 ["LLMProviderTypes"]
       26 GETTABLEKS                       R1 R1 K4 ["OpenAI"]
       28 JUMPIFNOTEQ                      R0 R1 ; [+4]
       30 NEWTABLE                         R0 0 0
       32 RETURN                           R0 1
       33 GETUPVAL                         R0 2
       34 GETTABLEKS                       R0 R0 K5 ["studioProvider"]
       36 JUMPIF                           R0 ; [+2]
       37 NEWTABLE                         R0 0 0
       39 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R4 0 2
       16 GETTABLEKS                       R5 R1 K3 ["selectedProvider"]
       18 GETTABLEKS                       R6 R0 K4 ["studioProvider"]
       20 SETLIST                          R4 R5 2 [1]
       22 CALL                             R2 2 1
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K5 ["get"]
       29 CALL                             R6 0 1
       30 GETTABLEKS                       R6 R6 K6 ["getSystemPrompt"]
       32 CALL                             R6 0 1
       33 GETTABLEKS                       R7 R1 K3 ["selectedProvider"]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R8 R8 K7 ["LLMProviderTypes"]
       38 GETTABLEKS                       R8 R8 K8 ["Claude"]
       40 JUMPIFNOTEQ                      R7 R8 ; [+17]
       42 GETUPVAL                         R7 4
       43 GETTABLEKS                       R7 R7 K9 ["createRequestHandler"]
       45 CALL                             R7 0 1
       46 MOVE                             R3 R7
       47 GETUPVAL                         R7 5
       48 GETTABLEKS                       R4 R7 K10 ["formatTools"]
       50 MOVE                             R7 R6
       51 JUMPIF                           R7 ; [+4]
       52 GETUPVAL                         R7 6
       53 GETTABLEKS                       R7 R7 K11 ["getSystemMessage"]
       55 CALL                             R7 0 1
       56 MOVE                             R5 R7
       57 JUMP                             ; [+61]
       58 GETTABLEKS                       R7 R1 K3 ["selectedProvider"]
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R8 R8 K7 ["LLMProviderTypes"]
       63 GETTABLEKS                       R8 R8 K12 ["Gemini"]
       65 JUMPIFNOTEQ                      R7 R8 ; [+17]
       67 GETUPVAL                         R7 7
       68 GETTABLEKS                       R7 R7 K9 ["createRequestHandler"]
       70 CALL                             R7 0 1
       71 MOVE                             R3 R7
       72 GETUPVAL                         R7 8
       73 GETTABLEKS                       R4 R7 K10 ["formatTools"]
       75 MOVE                             R7 R6
       76 JUMPIF                           R7 ; [+4]
       77 GETUPVAL                         R7 9
       78 GETTABLEKS                       R7 R7 K11 ["getSystemMessage"]
       80 CALL                             R7 0 1
       81 MOVE                             R5 R7
       82 JUMP                             ; [+36]
       83 GETTABLEKS                       R7 R1 K3 ["selectedProvider"]
       85 GETUPVAL                         R8 2
       86 GETTABLEKS                       R8 R8 K7 ["LLMProviderTypes"]
       88 GETTABLEKS                       R8 R8 K13 ["OpenAI"]
       90 JUMPIFNOTEQ                      R7 R8 ; [+17]
       92 GETUPVAL                         R7 10
       93 GETTABLEKS                       R7 R7 K9 ["createRequestHandler"]
       95 CALL                             R7 0 1
       96 MOVE                             R3 R7
       97 GETUPVAL                         R7 11
       98 GETTABLEKS                       R4 R7 K10 ["formatTools"]
      100 MOVE                             R7 R6
      101 JUMPIF                           R7 ; [+4]
      102 GETUPVAL                         R7 12
      103 GETTABLEKS                       R7 R7 K11 ["getSystemMessage"]
      105 CALL                             R7 0 1
      106 MOVE                             R5 R7
      107 JUMP                             ; [+11]
      108 GETUPVAL                         R7 13
      109 GETTABLEKS                       R3 R7 K14 ["requestHandler"]
      111 GETUPVAL                         R7 14
      112 GETTABLEKS                       R4 R7 K10 ["formatTools"]
      114 GETUPVAL                         R7 15
      115 GETTABLEKS                       R7 R7 K11 ["getSystemMessage"]
      117 CALL                             R7 0 1
      118 MOVE                             R5 R7
      119 GETTABLEKS                       R8 R0 K4 ["studioProvider"]
      121 JUMPIFNOT                        R8 ; [+5]
      122 GETTABLEKS                       R7 R0 K4 ["studioProvider"]
      124 GETTABLEKS                       R7 R7 K15 ["systemRemindersGetter"]
      126 JUMPIF                           R7 ; [+1]
      127 LOADNIL                          R7
      128 GETUPVAL                         R8 0
      129 GETTABLEKS                       R8 R8 K16 ["useRef"]
      131 LOADNIL                          R9
      132 CALL                             R8 1 1
      133 GETUPVAL                         R10 16
      134 GETTABLEKS                       R10 R10 K17 ["FFlagAssistantSlashCommandStepBackNavigation"]
      136 JUMPIFNOT                        R10 ; [+9]
      137 GETUPVAL                         R9 0
      138 GETTABLEKS                       R9 R9 K18 ["useCallback"]
      140 NEWCLOSURE                       R10 P1
      141 CAPTURE                          VAL R8
      142 NEWTABLE                         R11 0 0
      144 CALL                             R9 2 1
      145 JUMP                             ; [+1]
      146 LOADNIL                          R9
      147 LOADNIL                          R10
      148 GETTABLEKS                       R11 R2 K19 ["processEvent"]
      150 GETTABLEKS                       R12 R2 K20 ["createLLMSession"]
      152 GETTABLEKS                       R13 R2 K21 ["cancelSession"]
      154 JUMPIFNOT                        R11 ; [+1]
      155 JUMPIF                           R12 ; [+7]
      156 GETUPVAL                         R14 17
      157 GETTABLEKS                       R14 R14 K22 ["createProcessEventHandler"]
      159 CALL                             R14 0 3
      160 MOVE                             R11 R14
      161 MOVE                             R12 R15
      162 MOVE                             R13 R16
      163 DUPTABLE                         R14 K25 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "setSlashCommandStepInfo", "systemRemindersGetter"}]
      164 GETTABLEKS                       R16 R2 K14 ["requestHandler"]
      166 OR                               R15 R16 R3
      167 SETTABLEKS                       R15 R14 K14 ["requestHandler"]
      169 SETTABLEKS                       R11 R14 K19 ["processEvent"]
      171 SETTABLEKS                       R12 R14 K20 ["createLLMSession"]
      173 SETTABLEKS                       R13 R14 K21 ["cancelSession"]
      175 GETTABLEKS                       R16 R2 K10 ["formatTools"]
      177 OR                               R15 R16 R4
      178 SETTABLEKS                       R15 R14 K10 ["formatTools"]
      180 GETTABLEKS                       R16 R2 K23 ["systemMessage"]
      182 OR                               R15 R16 R5
      183 SETTABLEKS                       R15 R14 K23 ["systemMessage"]
      185 SETTABLEKS                       R9 R14 K24 ["setSlashCommandStepInfo"]
      187 GETTABLEKS                       R16 R2 K15 ["systemRemindersGetter"]
      189 OR                               R15 R16 R7
      190 SETTABLEKS                       R15 R14 K15 ["systemRemindersGetter"]
      192 MOVE                             R10 R14
      193 GETUPVAL                         R14 18
      194 GETUPVAL                         R15 19
      195 GETTABLEKS                       R15 R15 K26 ["Provider"]
      197 DUPTABLE                         R16 K28 [{"value"}]
      198 SETTABLEKS                       R10 R16 K27 ["value"]
      200 GETTABLEKS                       R17 R0 K29 ["children"]
      202 CALL                             R14 3 -1
      203 RETURN                           R14 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R1 K11 ["Engine"]
       28 GETTABLEKS                       R4 R4 K12 ["LLMProcessEvent"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Components"]
       34 GETTABLEKS                       R6 R6 K14 ["Contexts"]
       36 GETTABLEKS                       R6 R6 K15 ["LLMProviderSelectionContext"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R1 K11 ["Engine"]
       41 GETTABLEKS                       R6 R6 K16 ["LLMRequest"]
       43 GETTABLEKS                       R7 R1 K11 ["Engine"]
       45 GETTABLEKS                       R7 R7 K17 ["Providers"]
       47 GETTABLEKS                       R7 R7 K18 ["LLMSystemMessage"]
       49 GETTABLEKS                       R8 R1 K11 ["Engine"]
       51 GETTABLEKS                       R8 R8 K17 ["Providers"]
       53 GETTABLEKS                       R8 R8 K19 ["LLMToolFormat"]
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K6 ["Parent"]
       59 GETTABLEKS                       R10 R10 K20 ["ModelContextProtocol"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K5 [require]
       64 GETTABLEKS                       R11 R0 K6 ["Parent"]
       66 GETTABLEKS                       R11 R11 K21 ["React"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R12 R0 K22 ["Types"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R13 R0 K13 ["Components"]
       78 GETTABLEKS                       R13 R13 K23 ["UIToolRegistry"]
       80 CALL                             R12 1 1
       81 GETTABLEKS                       R13 R0 K13 ["Components"]
       83 GETTABLEKS                       R13 R13 K14 ["Contexts"]
       85 GETTABLEKS                       R13 R13 K24 ["Claude"]
       87 GETIMPORT                        R14 K5 [require]
       89 GETTABLEKS                       R15 R13 K25 ["ClaudeLLMRequest"]
       91 CALL                             R14 1 1
       92 GETTABLEKS                       R15 R1 K11 ["Engine"]
       94 GETTABLEKS                       R15 R15 K17 ["Providers"]
       96 GETTABLEKS                       R15 R15 K26 ["ClaudeLLMSystemMessage"]
       98 GETTABLEKS                       R16 R1 K11 ["Engine"]
      100 GETTABLEKS                       R16 R16 K17 ["Providers"]
      102 GETTABLEKS                       R16 R16 K27 ["ClaudeLLMToolFormat"]
      104 GETTABLEKS                       R17 R0 K13 ["Components"]
      106 GETTABLEKS                       R17 R17 K14 ["Contexts"]
      108 GETTABLEKS                       R17 R17 K28 ["Gemini"]
      110 GETIMPORT                        R18 K5 [require]
      112 GETTABLEKS                       R19 R17 K29 ["GeminiLLMRequest"]
      114 CALL                             R18 1 1
      115 GETTABLEKS                       R19 R1 K11 ["Engine"]
      117 GETTABLEKS                       R19 R19 K17 ["Providers"]
      119 GETTABLEKS                       R19 R19 K30 ["GeminiLLMSystemMessage"]
      121 GETTABLEKS                       R20 R1 K11 ["Engine"]
      123 GETTABLEKS                       R20 R20 K17 ["Providers"]
      125 GETTABLEKS                       R20 R20 K31 ["GeminiLLMToolFormat"]
      127 GETTABLEKS                       R21 R0 K13 ["Components"]
      129 GETTABLEKS                       R21 R21 K14 ["Contexts"]
      131 GETTABLEKS                       R21 R21 K32 ["OpenAI"]
      133 GETIMPORT                        R22 K5 [require]
      135 GETTABLEKS                       R23 R21 K33 ["OpenAILLMRequest"]
      137 CALL                             R22 1 1
      138 GETTABLEKS                       R23 R1 K11 ["Engine"]
      140 GETTABLEKS                       R23 R23 K17 ["Providers"]
      142 GETTABLEKS                       R23 R23 K34 ["OpenAILLMSystemMessage"]
      144 GETTABLEKS                       R24 R1 K11 ["Engine"]
      146 GETTABLEKS                       R24 R24 K17 ["Providers"]
      148 GETTABLEKS                       R24 R24 K35 ["OpenAILLMToolFormat"]
      150 GETTABLEKS                       R25 R10 K36 ["createElement"]
      152 NEWTABLE                         R26 0 0
      154 GETTABLEKS                       R27 R10 K37 ["createContext"]
      156 MOVE                             R28 R26
      157 CALL                             R27 1 1
      158 DUPCLOSURE                       R28 K38 [PROTO_2]
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R22
      170 CAPTURE                          VAL R24
      171 CAPTURE                          VAL R23
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R25
      178 CAPTURE                          VAL R27
      179 DUPTABLE                         R29 K41 [{"Context", "Provider"}]
      180 SETTABLEKS                       R27 R29 K39 ["Context"]
      182 SETTABLEKS                       R28 R29 K40 ["Provider"]
      184 RETURN                           R29 1
