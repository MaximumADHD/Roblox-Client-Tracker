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
       26 GETTABLEKS                       R6 R1 K3 ["selectedProvider"]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K5 ["LLMProviderTypes"]
       31 GETTABLEKS                       R7 R7 K6 ["Claude"]
       33 JUMPIFNOTEQ                      R6 R7 ; [+15]
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K7 ["createRequestHandler"]
       38 CALL                             R6 0 1
       39 MOVE                             R3 R6
       40 GETUPVAL                         R6 4
       41 GETTABLEKS                       R4 R6 K8 ["formatTools"]
       43 GETUPVAL                         R6 5
       44 GETTABLEKS                       R6 R6 K9 ["getSystemMessage"]
       46 CALL                             R6 0 1
       47 MOVE                             R5 R6
       48 JUMP                             ; [+57]
       49 GETTABLEKS                       R6 R1 K3 ["selectedProvider"]
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R7 R7 K5 ["LLMProviderTypes"]
       54 GETTABLEKS                       R7 R7 K10 ["Gemini"]
       56 JUMPIFNOTEQ                      R6 R7 ; [+15]
       58 GETUPVAL                         R6 6
       59 GETTABLEKS                       R6 R6 K7 ["createRequestHandler"]
       61 CALL                             R6 0 1
       62 MOVE                             R3 R6
       63 GETUPVAL                         R6 7
       64 GETTABLEKS                       R4 R6 K8 ["formatTools"]
       66 GETUPVAL                         R6 8
       67 GETTABLEKS                       R6 R6 K9 ["getSystemMessage"]
       69 CALL                             R6 0 1
       70 MOVE                             R5 R6
       71 JUMP                             ; [+34]
       72 GETTABLEKS                       R6 R1 K3 ["selectedProvider"]
       74 GETUPVAL                         R7 2
       75 GETTABLEKS                       R7 R7 K5 ["LLMProviderTypes"]
       77 GETTABLEKS                       R7 R7 K11 ["OpenAI"]
       79 JUMPIFNOTEQ                      R6 R7 ; [+15]
       81 GETUPVAL                         R6 9
       82 GETTABLEKS                       R6 R6 K7 ["createRequestHandler"]
       84 CALL                             R6 0 1
       85 MOVE                             R3 R6
       86 GETUPVAL                         R6 10
       87 GETTABLEKS                       R4 R6 K8 ["formatTools"]
       89 GETUPVAL                         R6 11
       90 GETTABLEKS                       R6 R6 K9 ["getSystemMessage"]
       92 CALL                             R6 0 1
       93 MOVE                             R5 R6
       94 JUMP                             ; [+11]
       95 GETUPVAL                         R6 12
       96 GETTABLEKS                       R3 R6 K12 ["requestHandler"]
       98 GETUPVAL                         R6 13
       99 GETTABLEKS                       R4 R6 K8 ["formatTools"]
      101 GETUPVAL                         R6 14
      102 GETTABLEKS                       R6 R6 K9 ["getSystemMessage"]
      104 CALL                             R6 0 1
      105 MOVE                             R5 R6
      106 GETTABLEKS                       R7 R0 K4 ["studioProvider"]
      108 JUMPIFNOT                        R7 ; [+5]
      109 GETTABLEKS                       R6 R0 K4 ["studioProvider"]
      111 GETTABLEKS                       R6 R6 K13 ["systemRemindersGetter"]
      113 JUMPIF                           R6 ; [+1]
      114 LOADNIL                          R6
      115 LOADNIL                          R7
      116 GETUPVAL                         R8 15
      117 GETTABLEKS                       R8 R8 K14 ["FFlagAssistantSupportSlashCommandCancellation"]
      119 JUMPIFNOT                        R8 ; [+87]
      120 GETUPVAL                         R8 0
      121 GETTABLEKS                       R8 R8 K2 ["useMemo"]
      123 DUPCLOSURE                       R9 K15 [PROTO_1]
      124 CAPTURE                          UPVAL U16
      125 NEWTABLE                         R10 0 0
      127 CALL                             R8 2 1
      128 GETTABLEKS                       R9 R2 K16 ["processEvent"]
      130 JUMPIF                           R9 ; [+2]
      131 GETTABLEKS                       R9 R8 K16 ["processEvent"]
      133 GETTABLEKS                       R10 R2 K17 ["createLLMSession"]
      135 JUMPIF                           R10 ; [+2]
      136 GETTABLEKS                       R10 R8 K17 ["createLLMSession"]
      138 GETTABLEKS                       R11 R2 K18 ["cancelSession"]
      140 JUMPIF                           R11 ; [+2]
      141 GETTABLEKS                       R11 R8 K18 ["cancelSession"]
      143 GETUPVAL                         R12 0
      144 GETTABLEKS                       R12 R12 K19 ["useRef"]
      146 LOADNIL                          R13
      147 CALL                             R12 1 1
      148 GETUPVAL                         R13 0
      149 GETTABLEKS                       R13 R13 K20 ["useCallback"]
      151 NEWCLOSURE                       R14 P2
      152 CAPTURE                          VAL R12
      153 NEWTABLE                         R15 0 0
      155 CALL                             R13 2 1
      156 GETUPVAL                         R14 0
      157 GETTABLEKS                       R14 R14 K20 ["useCallback"]
      159 NEWCLOSURE                       R15 P3
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R12
      162 NEWTABLE                         R16 0 1
      164 MOVE                             R17 R11
      165 SETLIST                          R16 R17 1 [1]
      167 CALL                             R14 2 1
      168 GETTABLEKS                       R16 R2 K12 ["requestHandler"]
      170 OR                               R15 R16 R3
      171 GETTABLEKS                       R17 R2 K8 ["formatTools"]
      173 OR                               R16 R17 R4
      174 GETTABLEKS                       R18 R2 K21 ["systemMessage"]
      176 OR                               R17 R18 R5
      177 GETTABLEKS                       R19 R2 K13 ["systemRemindersGetter"]
      179 OR                               R18 R19 R6
      180 GETUPVAL                         R19 0
      181 GETTABLEKS                       R19 R19 K2 ["useMemo"]
      183 NEWCLOSURE                       R20 P4
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R18
      192 NEWTABLE                         R21 0 8
      194 MOVE                             R22 R15
      195 MOVE                             R23 R9
      196 MOVE                             R24 R10
      197 MOVE                             R25 R14
      198 MOVE                             R26 R16
      199 MOVE                             R27 R17
      200 MOVE                             R28 R13
      201 MOVE                             R29 R18
      202 SETLIST                          R21 R22 8 [1]
      204 CALL                             R19 2 1
      205 MOVE                             R7 R19
      206 JUMP                             ; [+43]
      207 GETTABLEKS                       R8 R2 K16 ["processEvent"]
      209 GETTABLEKS                       R9 R2 K17 ["createLLMSession"]
      211 GETTABLEKS                       R10 R2 K18 ["cancelSession"]
      213 JUMPIFNOT                        R8 ; [+1]
      214 JUMPIF                           R9 ; [+7]
      215 GETUPVAL                         R11 16
      216 GETTABLEKS                       R11 R11 K22 ["createProcessEventHandler"]
      218 CALL                             R11 0 3
      219 MOVE                             R8 R11
      220 MOVE                             R9 R12
      221 MOVE                             R10 R13
      222 DUPTABLE                         R11 K23 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
      223 GETTABLEKS                       R13 R2 K12 ["requestHandler"]
      225 OR                               R12 R13 R3
      226 SETTABLEKS                       R12 R11 K12 ["requestHandler"]
      228 SETTABLEKS                       R8 R11 K16 ["processEvent"]
      230 SETTABLEKS                       R9 R11 K17 ["createLLMSession"]
      232 SETTABLEKS                       R10 R11 K18 ["cancelSession"]
      234 GETTABLEKS                       R13 R2 K8 ["formatTools"]
      236 OR                               R12 R13 R4
      237 SETTABLEKS                       R12 R11 K8 ["formatTools"]
      239 GETTABLEKS                       R13 R2 K21 ["systemMessage"]
      241 OR                               R12 R13 R5
      242 SETTABLEKS                       R12 R11 K21 ["systemMessage"]
      244 GETTABLEKS                       R13 R2 K13 ["systemRemindersGetter"]
      246 OR                               R12 R13 R6
      247 SETTABLEKS                       R12 R11 K13 ["systemRemindersGetter"]
      249 MOVE                             R7 R11
      250 GETUPVAL                         R8 17
      251 GETUPVAL                         R9 18
      252 GETTABLEKS                       R9 R9 K24 ["Provider"]
      254 DUPTABLE                         R10 K26 [{"value"}]
      255 SETTABLEKS                       R7 R10 K25 ["value"]
      257 GETTABLEKS                       R11 R0 K27 ["children"]
      259 CALL                             R8 3 -1
      260 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["DefaultLLMProvider"]
       20 GETTABLEKS                       R3 R3 K10 ["LLMFormattedToolTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Components"]
       27 GETTABLEKS                       R4 R4 K8 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K9 ["DefaultLLMProvider"]
       31 GETTABLEKS                       R4 R4 K11 ["LLMProcessEvent"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Components"]
       38 GETTABLEKS                       R5 R5 K8 ["Contexts"]
       40 GETTABLEKS                       R5 R5 K12 ["LLMProviderSelectionContext"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K7 ["Components"]
       47 GETTABLEKS                       R6 R6 K8 ["Contexts"]
       49 GETTABLEKS                       R6 R6 K9 ["DefaultLLMProvider"]
       51 GETTABLEKS                       R6 R6 K13 ["LLMRequest"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K7 ["Components"]
       58 GETTABLEKS                       R7 R7 K8 ["Contexts"]
       60 GETTABLEKS                       R7 R7 K9 ["DefaultLLMProvider"]
       62 GETTABLEKS                       R7 R7 K14 ["LLMSystemMessage"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K7 ["Components"]
       69 GETTABLEKS                       R8 R8 K8 ["Contexts"]
       71 GETTABLEKS                       R8 R8 K9 ["DefaultLLMProvider"]
       73 GETTABLEKS                       R8 R8 K15 ["LLMToolFormat"]
       75 CALL                             R7 1 1
       76 GETIMPORT                        R8 K5 [require]
       78 GETTABLEKS                       R9 R0 K16 ["Parent"]
       80 GETTABLEKS                       R9 R9 K17 ["ModelContextProtocol"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K5 [require]
       85 GETTABLEKS                       R10 R0 K16 ["Parent"]
       87 GETTABLEKS                       R10 R10 K18 ["React"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R11 R0 K19 ["Types"]
       94 CALL                             R10 1 1
       95 GETTABLEKS                       R11 R0 K7 ["Components"]
       97 GETTABLEKS                       R11 R11 K8 ["Contexts"]
       99 GETTABLEKS                       R11 R11 K20 ["Claude"]
      101 GETIMPORT                        R12 K5 [require]
      103 GETTABLEKS                       R13 R11 K21 ["ClaudeLLMRequest"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K5 [require]
      108 GETTABLEKS                       R14 R11 K22 ["ClaudeLLMSystemMessage"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K5 [require]
      113 GETTABLEKS                       R15 R11 K23 ["ClaudeLLMToolFormat"]
      115 CALL                             R14 1 1
      116 GETTABLEKS                       R15 R0 K7 ["Components"]
      118 GETTABLEKS                       R15 R15 K8 ["Contexts"]
      120 GETTABLEKS                       R15 R15 K24 ["Gemini"]
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R17 R15 K25 ["GeminiLLMRequest"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K5 [require]
      129 GETTABLEKS                       R18 R15 K26 ["GeminiLLMSystemMessage"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R15 K27 ["GeminiLLMToolFormat"]
      136 CALL                             R18 1 1
      137 GETTABLEKS                       R19 R0 K7 ["Components"]
      139 GETTABLEKS                       R19 R19 K8 ["Contexts"]
      141 GETTABLEKS                       R19 R19 K28 ["OpenAI"]
      143 GETIMPORT                        R20 K5 [require]
      145 GETTABLEKS                       R21 R19 K29 ["OpenAILLMRequest"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K5 [require]
      150 GETTABLEKS                       R22 R19 K30 ["OpenAILLMSystemMessage"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K5 [require]
      155 GETTABLEKS                       R23 R19 K31 ["OpenAILLMToolFormat"]
      157 CALL                             R22 1 1
      158 GETTABLEKS                       R23 R9 K32 ["createElement"]
      160 NEWTABLE                         R24 0 0
      162 GETTABLEKS                       R25 R9 K33 ["createContext"]
      164 MOVE                             R26 R24
      165 CALL                             R25 1 1
      166 DUPCLOSURE                       R26 K34 [PROTO_5]
      167 CAPTURE                          VAL R9
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R21
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R7
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R23
      185 CAPTURE                          VAL R25
      186 DUPTABLE                         R27 K37 [{"Context", "Provider"}]
      187 SETTABLEKS                       R25 R27 K35 ["Context"]
      189 SETTABLEKS                       R26 R27 K36 ["Provider"]
      191 RETURN                           R27 1
