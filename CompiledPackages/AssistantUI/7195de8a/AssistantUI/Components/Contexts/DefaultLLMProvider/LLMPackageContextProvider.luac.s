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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createProcessEventHandler"]
        3 CALL                             R0 0 3
        4 DUPTABLE                         R3 K4 [{"processEvent", "createLLMSession", "cancelSession"}]
        5 SETTABLEKS                       R0 R3 K1 ["processEvent"]
        7 SETTABLEKS                       R1 R3 K2 ["createLLMSession"]
        9 SETTABLEKS                       R2 R3 K3 ["cancelSession"]
       11 RETURN                           R3 1

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+14]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["current"]
        5 JUMPIFEQKNIL                     R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       11 LOADK                            R3 K1 ["Cannot set slash command cancel: one is already active"]
       12 GETIMPORT                        R1 K3 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 SETTABLEKS                       R0 R1 K0 ["current"]
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R1 1
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K0 ["current"]
       12 MOVE                             R1 R0
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K8 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "setSlashCommandCancel", "systemRemindersGetter"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["requestHandler"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["processEvent"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["createLLMSession"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["cancelSession"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["formatTools"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["systemMessage"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["setSlashCommandCancel"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["systemRemindersGetter"]
       25 RETURN                           R0 1

PROTO_5:
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
      128 LOADNIL                          R8
      129 GETUPVAL                         R9 16
      130 GETTABLEKS                       R9 R9 K16 ["FFlagAssistantSupportSlashCommandCancellation"]
      132 JUMPIFNOT                        R9 ; [+87]
      133 GETUPVAL                         R9 0
      134 GETTABLEKS                       R9 R9 K2 ["useMemo"]
      136 DUPCLOSURE                       R10 K17 [PROTO_1]
      137 CAPTURE                          UPVAL U17
      138 NEWTABLE                         R11 0 0
      140 CALL                             R9 2 1
      141 GETTABLEKS                       R10 R2 K18 ["processEvent"]
      143 JUMPIF                           R10 ; [+2]
      144 GETTABLEKS                       R10 R9 K18 ["processEvent"]
      146 GETTABLEKS                       R11 R2 K19 ["createLLMSession"]
      148 JUMPIF                           R11 ; [+2]
      149 GETTABLEKS                       R11 R9 K19 ["createLLMSession"]
      151 GETTABLEKS                       R12 R2 K20 ["cancelSession"]
      153 JUMPIF                           R12 ; [+2]
      154 GETTABLEKS                       R12 R9 K20 ["cancelSession"]
      156 GETUPVAL                         R13 0
      157 GETTABLEKS                       R13 R13 K21 ["useRef"]
      159 LOADNIL                          R14
      160 CALL                             R13 1 1
      161 GETUPVAL                         R14 0
      162 GETTABLEKS                       R14 R14 K22 ["useCallback"]
      164 NEWCLOSURE                       R15 P2
      165 CAPTURE                          VAL R13
      166 NEWTABLE                         R16 0 0
      168 CALL                             R14 2 1
      169 GETUPVAL                         R15 0
      170 GETTABLEKS                       R15 R15 K22 ["useCallback"]
      172 NEWCLOSURE                       R16 P3
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R13
      175 NEWTABLE                         R17 0 1
      177 MOVE                             R18 R12
      178 SETLIST                          R17 R18 1 [1]
      180 CALL                             R15 2 1
      181 GETTABLEKS                       R17 R2 K14 ["requestHandler"]
      183 OR                               R16 R17 R3
      184 GETTABLEKS                       R18 R2 K10 ["formatTools"]
      186 OR                               R17 R18 R4
      187 GETTABLEKS                       R19 R2 K23 ["systemMessage"]
      189 OR                               R18 R19 R5
      190 GETTABLEKS                       R20 R2 K15 ["systemRemindersGetter"]
      192 OR                               R19 R20 R7
      193 GETUPVAL                         R20 0
      194 GETTABLEKS                       R20 R20 K2 ["useMemo"]
      196 NEWCLOSURE                       R21 P4
      197 CAPTURE                          VAL R16
      198 CAPTURE                          VAL R10
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R17
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R19
      205 NEWTABLE                         R22 0 8
      207 MOVE                             R23 R16
      208 MOVE                             R24 R10
      209 MOVE                             R25 R11
      210 MOVE                             R26 R15
      211 MOVE                             R27 R17
      212 MOVE                             R28 R18
      213 MOVE                             R29 R14
      214 MOVE                             R30 R19
      215 SETLIST                          R22 R23 8 [1]
      217 CALL                             R20 2 1
      218 MOVE                             R8 R20
      219 JUMP                             ; [+43]
      220 GETTABLEKS                       R9 R2 K18 ["processEvent"]
      222 GETTABLEKS                       R10 R2 K19 ["createLLMSession"]
      224 GETTABLEKS                       R11 R2 K20 ["cancelSession"]
      226 JUMPIFNOT                        R9 ; [+1]
      227 JUMPIF                           R10 ; [+7]
      228 GETUPVAL                         R12 17
      229 GETTABLEKS                       R12 R12 K24 ["createProcessEventHandler"]
      231 CALL                             R12 0 3
      232 MOVE                             R9 R12
      233 MOVE                             R10 R13
      234 MOVE                             R11 R14
      235 DUPTABLE                         R12 K25 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
      236 GETTABLEKS                       R14 R2 K14 ["requestHandler"]
      238 OR                               R13 R14 R3
      239 SETTABLEKS                       R13 R12 K14 ["requestHandler"]
      241 SETTABLEKS                       R9 R12 K18 ["processEvent"]
      243 SETTABLEKS                       R10 R12 K19 ["createLLMSession"]
      245 SETTABLEKS                       R11 R12 K20 ["cancelSession"]
      247 GETTABLEKS                       R14 R2 K10 ["formatTools"]
      249 OR                               R13 R14 R4
      250 SETTABLEKS                       R13 R12 K10 ["formatTools"]
      252 GETTABLEKS                       R14 R2 K23 ["systemMessage"]
      254 OR                               R13 R14 R5
      255 SETTABLEKS                       R13 R12 K23 ["systemMessage"]
      257 GETTABLEKS                       R14 R2 K15 ["systemRemindersGetter"]
      259 OR                               R13 R14 R7
      260 SETTABLEKS                       R13 R12 K15 ["systemRemindersGetter"]
      262 MOVE                             R8 R12
      263 GETUPVAL                         R9 18
      264 GETUPVAL                         R10 19
      265 GETTABLEKS                       R10 R10 K26 ["Provider"]
      267 DUPTABLE                         R11 K28 [{"value"}]
      268 SETTABLEKS                       R8 R11 K27 ["value"]
      270 GETTABLEKS                       R12 R0 K29 ["children"]
      272 CALL                             R9 3 -1
      273 RETURN                           R9 -1

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
       74 GETTABLEKS                       R12 R0 K13 ["Components"]
       76 GETTABLEKS                       R12 R12 K14 ["Contexts"]
       78 GETTABLEKS                       R12 R12 K23 ["Claude"]
       80 GETIMPORT                        R13 K5 [require]
       82 GETTABLEKS                       R14 R12 K24 ["ClaudeLLMRequest"]
       84 CALL                             R13 1 1
       85 GETTABLEKS                       R14 R1 K11 ["Engine"]
       87 GETTABLEKS                       R14 R14 K17 ["Providers"]
       89 GETTABLEKS                       R14 R14 K25 ["ClaudeLLMSystemMessage"]
       91 GETTABLEKS                       R15 R1 K11 ["Engine"]
       93 GETTABLEKS                       R15 R15 K17 ["Providers"]
       95 GETTABLEKS                       R15 R15 K26 ["ClaudeLLMToolFormat"]
       97 GETTABLEKS                       R16 R0 K13 ["Components"]
       99 GETTABLEKS                       R16 R16 K14 ["Contexts"]
      101 GETTABLEKS                       R16 R16 K27 ["Gemini"]
      103 GETIMPORT                        R17 K5 [require]
      105 GETTABLEKS                       R18 R16 K28 ["GeminiLLMRequest"]
      107 CALL                             R17 1 1
      108 GETTABLEKS                       R18 R1 K11 ["Engine"]
      110 GETTABLEKS                       R18 R18 K17 ["Providers"]
      112 GETTABLEKS                       R18 R18 K29 ["GeminiLLMSystemMessage"]
      114 GETTABLEKS                       R19 R1 K11 ["Engine"]
      116 GETTABLEKS                       R19 R19 K17 ["Providers"]
      118 GETTABLEKS                       R19 R19 K30 ["GeminiLLMToolFormat"]
      120 GETTABLEKS                       R20 R0 K13 ["Components"]
      122 GETTABLEKS                       R20 R20 K14 ["Contexts"]
      124 GETTABLEKS                       R20 R20 K31 ["OpenAI"]
      126 GETIMPORT                        R21 K5 [require]
      128 GETTABLEKS                       R22 R20 K32 ["OpenAILLMRequest"]
      130 CALL                             R21 1 1
      131 GETTABLEKS                       R22 R1 K11 ["Engine"]
      133 GETTABLEKS                       R22 R22 K17 ["Providers"]
      135 GETTABLEKS                       R22 R22 K33 ["OpenAILLMSystemMessage"]
      137 GETTABLEKS                       R23 R1 K11 ["Engine"]
      139 GETTABLEKS                       R23 R23 K17 ["Providers"]
      141 GETTABLEKS                       R23 R23 K34 ["OpenAILLMToolFormat"]
      143 GETTABLEKS                       R24 R10 K35 ["createElement"]
      145 NEWTABLE                         R25 0 0
      147 GETTABLEKS                       R26 R10 K36 ["createContext"]
      149 MOVE                             R27 R25
      150 CALL                             R26 1 1
      151 DUPCLOSURE                       R27 K37 [PROTO_5]
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R23
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R24
      171 CAPTURE                          VAL R26
      172 DUPTABLE                         R28 K40 [{"Context", "Provider"}]
      173 SETTABLEKS                       R26 R28 K38 ["Context"]
      175 SETTABLEKS                       R27 R28 K39 ["Provider"]
      177 RETURN                           R28 1
