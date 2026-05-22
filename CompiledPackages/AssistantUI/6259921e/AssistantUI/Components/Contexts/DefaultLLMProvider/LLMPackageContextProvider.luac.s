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
      117 CALL                             R8 0 1
      118 JUMPIFNOT                        R8 ; [+87]
      119 GETUPVAL                         R8 0
      120 GETTABLEKS                       R8 R8 K2 ["useMemo"]
      122 DUPCLOSURE                       R9 K14 [PROTO_1]
      123 CAPTURE                          UPVAL U16
      124 NEWTABLE                         R10 0 0
      126 CALL                             R8 2 1
      127 GETTABLEKS                       R9 R2 K15 ["processEvent"]
      129 JUMPIF                           R9 ; [+2]
      130 GETTABLEKS                       R9 R8 K15 ["processEvent"]
      132 GETTABLEKS                       R10 R2 K16 ["createLLMSession"]
      134 JUMPIF                           R10 ; [+2]
      135 GETTABLEKS                       R10 R8 K16 ["createLLMSession"]
      137 GETTABLEKS                       R11 R2 K17 ["cancelSession"]
      139 JUMPIF                           R11 ; [+2]
      140 GETTABLEKS                       R11 R8 K17 ["cancelSession"]
      142 GETUPVAL                         R12 0
      143 GETTABLEKS                       R12 R12 K18 ["useRef"]
      145 LOADNIL                          R13
      146 CALL                             R12 1 1
      147 GETUPVAL                         R13 0
      148 GETTABLEKS                       R13 R13 K19 ["useCallback"]
      150 NEWCLOSURE                       R14 P2
      151 CAPTURE                          VAL R12
      152 NEWTABLE                         R15 0 0
      154 CALL                             R13 2 1
      155 GETUPVAL                         R14 0
      156 GETTABLEKS                       R14 R14 K19 ["useCallback"]
      158 NEWCLOSURE                       R15 P3
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R12
      161 NEWTABLE                         R16 0 1
      163 MOVE                             R17 R11
      164 SETLIST                          R16 R17 1 [1]
      166 CALL                             R14 2 1
      167 GETTABLEKS                       R16 R2 K12 ["requestHandler"]
      169 OR                               R15 R16 R3
      170 GETTABLEKS                       R17 R2 K8 ["formatTools"]
      172 OR                               R16 R17 R4
      173 GETTABLEKS                       R18 R2 K20 ["systemMessage"]
      175 OR                               R17 R18 R5
      176 GETTABLEKS                       R19 R2 K13 ["systemRemindersGetter"]
      178 OR                               R18 R19 R6
      179 GETUPVAL                         R19 0
      180 GETTABLEKS                       R19 R19 K2 ["useMemo"]
      182 NEWCLOSURE                       R20 P4
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R14
      187 CAPTURE                          VAL R16
      188 CAPTURE                          VAL R17
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R18
      191 NEWTABLE                         R21 0 8
      193 MOVE                             R22 R15
      194 MOVE                             R23 R9
      195 MOVE                             R24 R10
      196 MOVE                             R25 R14
      197 MOVE                             R26 R16
      198 MOVE                             R27 R17
      199 MOVE                             R28 R13
      200 MOVE                             R29 R18
      201 SETLIST                          R21 R22 8 [1]
      203 CALL                             R19 2 1
      204 MOVE                             R7 R19
      205 JUMP                             ; [+43]
      206 GETTABLEKS                       R8 R2 K15 ["processEvent"]
      208 GETTABLEKS                       R9 R2 K16 ["createLLMSession"]
      210 GETTABLEKS                       R10 R2 K17 ["cancelSession"]
      212 JUMPIFNOT                        R8 ; [+1]
      213 JUMPIF                           R9 ; [+7]
      214 GETUPVAL                         R11 16
      215 GETTABLEKS                       R11 R11 K21 ["createProcessEventHandler"]
      217 CALL                             R11 0 3
      218 MOVE                             R8 R11
      219 MOVE                             R9 R12
      220 MOVE                             R10 R13
      221 DUPTABLE                         R11 K22 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
      222 GETTABLEKS                       R13 R2 K12 ["requestHandler"]
      224 OR                               R12 R13 R3
      225 SETTABLEKS                       R12 R11 K12 ["requestHandler"]
      227 SETTABLEKS                       R8 R11 K15 ["processEvent"]
      229 SETTABLEKS                       R9 R11 K16 ["createLLMSession"]
      231 SETTABLEKS                       R10 R11 K17 ["cancelSession"]
      233 GETTABLEKS                       R13 R2 K8 ["formatTools"]
      235 OR                               R12 R13 R4
      236 SETTABLEKS                       R12 R11 K8 ["formatTools"]
      238 GETTABLEKS                       R13 R2 K20 ["systemMessage"]
      240 OR                               R12 R13 R5
      241 SETTABLEKS                       R12 R11 K20 ["systemMessage"]
      243 GETTABLEKS                       R13 R2 K13 ["systemRemindersGetter"]
      245 OR                               R12 R13 R6
      246 SETTABLEKS                       R12 R11 K13 ["systemRemindersGetter"]
      248 MOVE                             R7 R11
      249 GETUPVAL                         R8 17
      250 GETUPVAL                         R9 18
      251 GETTABLEKS                       R9 R9 K23 ["Provider"]
      253 DUPTABLE                         R10 K25 [{"value"}]
      254 SETTABLEKS                       R7 R10 K24 ["value"]
      256 GETTABLEKS                       R11 R0 K26 ["children"]
      258 CALL                             R8 3 -1
      259 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["DefaultLLMProvider"]
       15 GETTABLEKS                       R2 R2 K9 ["LLMFormattedToolTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Components"]
       22 GETTABLEKS                       R3 R3 K7 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K8 ["DefaultLLMProvider"]
       26 GETTABLEKS                       R3 R3 K10 ["LLMProcessEvent"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Components"]
       33 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       35 GETTABLEKS                       R4 R4 K11 ["LLMProviderSelectionContext"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Components"]
       42 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       44 GETTABLEKS                       R5 R5 K8 ["DefaultLLMProvider"]
       46 GETTABLEKS                       R5 R5 K12 ["LLMRequest"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K5 [require]
       51 GETTABLEKS                       R6 R0 K6 ["Components"]
       53 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       55 GETTABLEKS                       R6 R6 K8 ["DefaultLLMProvider"]
       57 GETTABLEKS                       R6 R6 K13 ["LLMSystemMessage"]
       59 CALL                             R5 1 1
       60 GETIMPORT                        R6 K5 [require]
       62 GETTABLEKS                       R7 R0 K6 ["Components"]
       64 GETTABLEKS                       R7 R7 K7 ["Contexts"]
       66 GETTABLEKS                       R7 R7 K8 ["DefaultLLMProvider"]
       68 GETTABLEKS                       R7 R7 K14 ["LLMToolFormat"]
       70 CALL                             R6 1 1
       71 GETIMPORT                        R7 K5 [require]
       73 GETTABLEKS                       R8 R0 K15 ["Parent"]
       75 GETTABLEKS                       R8 R8 K16 ["ModelContextProtocol"]
       77 CALL                             R7 1 1
       78 GETIMPORT                        R8 K5 [require]
       80 GETTABLEKS                       R9 R0 K15 ["Parent"]
       82 GETTABLEKS                       R9 R9 K17 ["React"]
       84 CALL                             R8 1 1
       85 GETIMPORT                        R9 K5 [require]
       87 GETTABLEKS                       R10 R0 K18 ["Types"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R11 R0 K19 ["Flags"]
       94 GETTABLEKS                       R11 R11 K20 ["FFlagAssistantSupportSlashCommandCancellation"]
       96 CALL                             R10 1 1
       97 GETTABLEKS                       R11 R0 K6 ["Components"]
       99 GETTABLEKS                       R11 R11 K7 ["Contexts"]
      101 GETTABLEKS                       R11 R11 K21 ["Claude"]
      103 GETIMPORT                        R12 K5 [require]
      105 GETTABLEKS                       R13 R11 K22 ["ClaudeLLMRequest"]
      107 CALL                             R12 1 1
      108 GETIMPORT                        R13 K5 [require]
      110 GETTABLEKS                       R14 R11 K23 ["ClaudeLLMSystemMessage"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K5 [require]
      115 GETTABLEKS                       R15 R11 K24 ["ClaudeLLMToolFormat"]
      117 CALL                             R14 1 1
      118 GETTABLEKS                       R15 R0 K6 ["Components"]
      120 GETTABLEKS                       R15 R15 K7 ["Contexts"]
      122 GETTABLEKS                       R15 R15 K25 ["Gemini"]
      124 GETIMPORT                        R16 K5 [require]
      126 GETTABLEKS                       R17 R15 K26 ["GeminiLLMRequest"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R18 R15 K27 ["GeminiLLMSystemMessage"]
      133 CALL                             R17 1 1
      134 GETIMPORT                        R18 K5 [require]
      136 GETTABLEKS                       R19 R15 K28 ["GeminiLLMToolFormat"]
      138 CALL                             R18 1 1
      139 GETTABLEKS                       R19 R0 K6 ["Components"]
      141 GETTABLEKS                       R19 R19 K7 ["Contexts"]
      143 GETTABLEKS                       R19 R19 K29 ["OpenAI"]
      145 GETIMPORT                        R20 K5 [require]
      147 GETTABLEKS                       R21 R19 K30 ["OpenAILLMRequest"]
      149 CALL                             R20 1 1
      150 GETIMPORT                        R21 K5 [require]
      152 GETTABLEKS                       R22 R19 K31 ["OpenAILLMSystemMessage"]
      154 CALL                             R21 1 1
      155 GETIMPORT                        R22 K5 [require]
      157 GETTABLEKS                       R23 R19 K32 ["OpenAILLMToolFormat"]
      159 CALL                             R22 1 1
      160 GETTABLEKS                       R23 R8 K33 ["createElement"]
      162 NEWTABLE                         R24 0 0
      164 GETTABLEKS                       R25 R8 K34 ["createContext"]
      166 MOVE                             R26 R24
      167 CALL                             R25 1 1
      168 DUPCLOSURE                       R26 K35 [PROTO_5]
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R22
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R10
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R23
      187 CAPTURE                          VAL R25
      188 DUPTABLE                         R27 K38 [{"Context", "Provider"}]
      189 SETTABLEKS                       R25 R27 K36 ["Context"]
      191 SETTABLEKS                       R26 R27 K37 ["Provider"]
      193 RETURN                           R27 1
