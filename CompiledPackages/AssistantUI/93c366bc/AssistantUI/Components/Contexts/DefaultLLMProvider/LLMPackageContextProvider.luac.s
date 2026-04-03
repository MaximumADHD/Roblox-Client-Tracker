PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedProvider"]
        3 JUMPIFEQKS                       R0 K1 ["Claude"] ; [+11]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["selectedProvider"]
        8 JUMPIFEQKS                       R0 K2 ["Gemini"] ; [+6]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["selectedProvider"]
       13 JUMPIFNOTEQKS                    R0 K3 ["OpenAI"] ; [+4]
       15 NEWTABLE                         R0 0 0
       17 RETURN                           R0 1
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R0 R1 K4 ["studioProvider"]
       21 JUMPIF                           R0 ; [+2]
       22 NEWTABLE                         R0 0 0
       24 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createProcessEventHandler"]
        3 CALL                             R0 0 3
        4 DUPTABLE                         R3 K4 [{"processEvent", "createLLMSession", "cancelSession"}]
        5 SETTABLEKS                       R0 R3 K1 ["processEvent"]
        7 SETTABLEKS                       R1 R3 K2 ["createLLMSession"]
        9 SETTABLEKS                       R2 R3 K3 ["cancelSession"]
       11 RETURN                           R3 1

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+14]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["current"]
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
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["current"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 2
       15 GETTABLEKS                       R5 R1 K3 ["selectedProvider"]
       17 GETTABLEKS                       R6 R0 K4 ["studioProvider"]
       19 SETLIST                          R4 R5 2 [1]
       21 CALL                             R2 2 1
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 GETTABLEKS                       R6 R1 K3 ["selectedProvider"]
       27 JUMPIFNOTEQKS                    R6 K5 ["Claude"] ; [+15]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R6 R7 K6 ["createRequestHandler"]
       32 CALL                             R6 0 1
       33 MOVE                             R3 R6
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R4 R6 K7 ["formatTools"]
       37 GETUPVAL                         R7 4
       38 GETTABLEKS                       R6 R7 K8 ["getSystemMessage"]
       40 CALL                             R6 0 1
       41 MOVE                             R5 R6
       42 JUMP                             ; [+47]
       43 GETTABLEKS                       R6 R1 K3 ["selectedProvider"]
       45 JUMPIFNOTEQKS                    R6 K9 ["Gemini"] ; [+15]
       47 GETUPVAL                         R7 5
       48 GETTABLEKS                       R6 R7 K6 ["createRequestHandler"]
       50 CALL                             R6 0 1
       51 MOVE                             R3 R6
       52 GETUPVAL                         R6 6
       53 GETTABLEKS                       R4 R6 K7 ["formatTools"]
       55 GETUPVAL                         R7 7
       56 GETTABLEKS                       R6 R7 K8 ["getSystemMessage"]
       58 CALL                             R6 0 1
       59 MOVE                             R5 R6
       60 JUMP                             ; [+29]
       61 GETTABLEKS                       R6 R1 K3 ["selectedProvider"]
       63 JUMPIFNOTEQKS                    R6 K10 ["OpenAI"] ; [+15]
       65 GETUPVAL                         R7 8
       66 GETTABLEKS                       R6 R7 K6 ["createRequestHandler"]
       68 CALL                             R6 0 1
       69 MOVE                             R3 R6
       70 GETUPVAL                         R6 9
       71 GETTABLEKS                       R4 R6 K7 ["formatTools"]
       73 GETUPVAL                         R7 10
       74 GETTABLEKS                       R6 R7 K8 ["getSystemMessage"]
       76 CALL                             R6 0 1
       77 MOVE                             R5 R6
       78 JUMP                             ; [+11]
       79 GETUPVAL                         R6 11
       80 GETTABLEKS                       R3 R6 K11 ["requestHandler"]
       82 GETUPVAL                         R6 12
       83 GETTABLEKS                       R4 R6 K7 ["formatTools"]
       85 GETUPVAL                         R7 13
       86 GETTABLEKS                       R6 R7 K8 ["getSystemMessage"]
       88 CALL                             R6 0 1
       89 MOVE                             R5 R6
       90 GETTABLEKS                       R7 R0 K4 ["studioProvider"]
       92 JUMPIFNOT                        R7 ; [+5]
       93 GETTABLEKS                       R7 R0 K4 ["studioProvider"]
       95 GETTABLEKS                       R6 R7 K12 ["systemRemindersGetter"]
       97 JUMPIF                           R6 ; [+1]
       98 LOADNIL                          R6
       99 LOADNIL                          R7
      100 GETUPVAL                         R8 14
      101 CALL                             R8 0 1
      102 JUMPIFNOT                        R8 ; [+86]
      103 GETUPVAL                         R9 0
      104 GETTABLEKS                       R8 R9 K2 ["useMemo"]
      106 DUPCLOSURE                       R9 K13 [PROTO_1]
      107 CAPTURE                          UPVAL U15
      108 NEWTABLE                         R10 0 0
      110 CALL                             R8 2 1
      111 GETTABLEKS                       R9 R2 K14 ["processEvent"]
      113 JUMPIF                           R9 ; [+2]
      114 GETTABLEKS                       R9 R8 K14 ["processEvent"]
      116 GETTABLEKS                       R10 R2 K15 ["createLLMSession"]
      118 JUMPIF                           R10 ; [+2]
      119 GETTABLEKS                       R10 R8 K15 ["createLLMSession"]
      121 GETTABLEKS                       R11 R2 K16 ["cancelSession"]
      123 JUMPIF                           R11 ; [+2]
      124 GETTABLEKS                       R11 R8 K16 ["cancelSession"]
      126 GETUPVAL                         R13 0
      127 GETTABLEKS                       R12 R13 K17 ["useRef"]
      129 LOADNIL                          R13
      130 CALL                             R12 1 1
      131 GETUPVAL                         R14 0
      132 GETTABLEKS                       R13 R14 K18 ["useCallback"]
      134 NEWCLOSURE                       R14 P2
      135 CAPTURE                          VAL R12
      136 NEWTABLE                         R15 0 0
      138 CALL                             R13 2 1
      139 GETUPVAL                         R15 0
      140 GETTABLEKS                       R14 R15 K18 ["useCallback"]
      142 NEWCLOSURE                       R15 P3
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R12
      145 NEWTABLE                         R16 0 1
      147 MOVE                             R17 R11
      148 SETLIST                          R16 R17 1 [1]
      150 CALL                             R14 2 1
      151 GETTABLEKS                       R16 R2 K11 ["requestHandler"]
      153 OR                               R15 R16 R3
      154 GETTABLEKS                       R17 R2 K7 ["formatTools"]
      156 OR                               R16 R17 R4
      157 GETTABLEKS                       R18 R2 K19 ["systemMessage"]
      159 OR                               R17 R18 R5
      160 GETTABLEKS                       R19 R2 K12 ["systemRemindersGetter"]
      162 OR                               R18 R19 R6
      163 GETUPVAL                         R20 0
      164 GETTABLEKS                       R19 R20 K2 ["useMemo"]
      166 NEWCLOSURE                       R20 P4
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R17
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R18
      175 NEWTABLE                         R21 0 7
      177 MOVE                             R22 R15
      178 MOVE                             R23 R9
      179 MOVE                             R24 R10
      180 MOVE                             R25 R14
      181 MOVE                             R26 R16
      182 MOVE                             R27 R17
      183 MOVE                             R28 R13
      184 SETLIST                          R21 R22 7 [1]
      186 CALL                             R19 2 1
      187 MOVE                             R7 R19
      188 JUMP                             ; [+43]
      189 GETTABLEKS                       R8 R2 K14 ["processEvent"]
      191 GETTABLEKS                       R9 R2 K15 ["createLLMSession"]
      193 GETTABLEKS                       R10 R2 K16 ["cancelSession"]
      195 JUMPIFNOT                        R8 ; [+1]
      196 JUMPIF                           R9 ; [+7]
      197 GETUPVAL                         R12 15
      198 GETTABLEKS                       R11 R12 K20 ["createProcessEventHandler"]
      200 CALL                             R11 0 3
      201 MOVE                             R8 R11
      202 MOVE                             R9 R12
      203 MOVE                             R10 R13
      204 DUPTABLE                         R11 K21 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage", "systemRemindersGetter"}]
      205 GETTABLEKS                       R13 R2 K11 ["requestHandler"]
      207 OR                               R12 R13 R3
      208 SETTABLEKS                       R12 R11 K11 ["requestHandler"]
      210 SETTABLEKS                       R8 R11 K14 ["processEvent"]
      212 SETTABLEKS                       R9 R11 K15 ["createLLMSession"]
      214 SETTABLEKS                       R10 R11 K16 ["cancelSession"]
      216 GETTABLEKS                       R13 R2 K7 ["formatTools"]
      218 OR                               R12 R13 R4
      219 SETTABLEKS                       R12 R11 K7 ["formatTools"]
      221 GETTABLEKS                       R13 R2 K19 ["systemMessage"]
      223 OR                               R12 R13 R5
      224 SETTABLEKS                       R12 R11 K19 ["systemMessage"]
      226 GETTABLEKS                       R13 R2 K12 ["systemRemindersGetter"]
      228 OR                               R12 R13 R6
      229 SETTABLEKS                       R12 R11 K12 ["systemRemindersGetter"]
      231 MOVE                             R7 R11
      232 GETUPVAL                         R8 16
      233 GETUPVAL                         R10 17
      234 GETTABLEKS                       R9 R10 K22 ["Provider"]
      236 DUPTABLE                         R10 K24 [{"value"}]
      237 SETTABLEKS                       R7 R10 K23 ["value"]
      239 GETTABLEKS                       R11 R0 K25 ["children"]
      241 CALL                             R8 3 -1
      242 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Components"]
       11 GETTABLEKS                       R4 R5 K7 ["Contexts"]
       13 GETTABLEKS                       R3 R4 K8 ["DefaultLLMProvider"]
       15 GETTABLEKS                       R2 R3 K9 ["LLMFormattedToolTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Components"]
       22 GETTABLEKS                       R5 R6 K7 ["Contexts"]
       24 GETTABLEKS                       R4 R5 K8 ["DefaultLLMProvider"]
       26 GETTABLEKS                       R3 R4 K10 ["LLMProcessEvent"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R6 R0 K6 ["Components"]
       33 GETTABLEKS                       R5 R6 K7 ["Contexts"]
       35 GETTABLEKS                       R4 R5 K11 ["LLMProviderSelectionContext"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R8 R0 K6 ["Components"]
       42 GETTABLEKS                       R7 R8 K7 ["Contexts"]
       44 GETTABLEKS                       R6 R7 K8 ["DefaultLLMProvider"]
       46 GETTABLEKS                       R5 R6 K12 ["LLMRequest"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K5 [require]
       51 GETTABLEKS                       R9 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R9 K7 ["Contexts"]
       55 GETTABLEKS                       R7 R8 K8 ["DefaultLLMProvider"]
       57 GETTABLEKS                       R6 R7 K13 ["LLMSystemMessage"]
       59 CALL                             R5 1 1
       60 GETIMPORT                        R6 K5 [require]
       62 GETTABLEKS                       R10 R0 K6 ["Components"]
       64 GETTABLEKS                       R9 R10 K7 ["Contexts"]
       66 GETTABLEKS                       R8 R9 K8 ["DefaultLLMProvider"]
       68 GETTABLEKS                       R7 R8 K14 ["LLMToolFormat"]
       70 CALL                             R6 1 1
       71 GETIMPORT                        R7 K5 [require]
       73 GETTABLEKS                       R9 R0 K15 ["Parent"]
       75 GETTABLEKS                       R8 R9 K16 ["React"]
       77 CALL                             R7 1 1
       78 GETIMPORT                        R8 K5 [require]
       80 GETTABLEKS                       R9 R0 K17 ["Types"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K5 [require]
       85 GETTABLEKS                       R11 R0 K18 ["Flags"]
       87 GETTABLEKS                       R10 R11 K19 ["FFlagAssistantSupportSlashCommandCancellation"]
       89 CALL                             R9 1 1
       90 GETTABLEKS                       R12 R0 K6 ["Components"]
       92 GETTABLEKS                       R11 R12 K7 ["Contexts"]
       94 GETTABLEKS                       R10 R11 K20 ["Claude"]
       96 GETIMPORT                        R11 K5 [require]
       98 GETTABLEKS                       R12 R10 K21 ["ClaudeLLMRequest"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K5 [require]
      103 GETTABLEKS                       R13 R10 K22 ["ClaudeLLMSystemMessage"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K5 [require]
      108 GETTABLEKS                       R14 R10 K23 ["ClaudeLLMToolFormat"]
      110 CALL                             R13 1 1
      111 GETTABLEKS                       R16 R0 K6 ["Components"]
      113 GETTABLEKS                       R15 R16 K7 ["Contexts"]
      115 GETTABLEKS                       R14 R15 K24 ["Gemini"]
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R16 R14 K25 ["GeminiLLMRequest"]
      121 CALL                             R15 1 1
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R17 R14 K26 ["GeminiLLMSystemMessage"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K5 [require]
      129 GETTABLEKS                       R18 R14 K27 ["GeminiLLMToolFormat"]
      131 CALL                             R17 1 1
      132 GETTABLEKS                       R20 R0 K6 ["Components"]
      134 GETTABLEKS                       R19 R20 K7 ["Contexts"]
      136 GETTABLEKS                       R18 R19 K28 ["OpenAI"]
      138 GETIMPORT                        R19 K5 [require]
      140 GETTABLEKS                       R20 R18 K29 ["OpenAILLMRequest"]
      142 CALL                             R19 1 1
      143 GETIMPORT                        R20 K5 [require]
      145 GETTABLEKS                       R21 R18 K30 ["OpenAILLMSystemMessage"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K5 [require]
      150 GETTABLEKS                       R22 R18 K31 ["OpenAILLMToolFormat"]
      152 CALL                             R21 1 1
      153 GETTABLEKS                       R22 R7 K32 ["createElement"]
      155 NEWTABLE                         R23 0 0
      157 GETTABLEKS                       R24 R7 K33 ["createContext"]
      159 MOVE                             R25 R23
      160 CALL                             R24 1 1
      161 DUPCLOSURE                       R25 K34 [PROTO_5]
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R21
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R22
      179 CAPTURE                          VAL R24
      180 DUPTABLE                         R26 K37 [{"Context", "Provider"}]
      181 SETTABLEKS                       R24 R26 K35 ["Context"]
      183 SETTABLEKS                       R25 R26 K36 ["Provider"]
      185 RETURN                           R26 1
