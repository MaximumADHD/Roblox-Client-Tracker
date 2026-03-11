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
       22 GETTABLEKS                       R3 R2 K5 ["processEvent"]
       24 GETTABLEKS                       R4 R2 K6 ["createLLMSession"]
       26 GETTABLEKS                       R5 R2 K7 ["cancelSession"]
       28 JUMPIFNOT                        R3 ; [+1]
       29 JUMPIF                           R4 ; [+7]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R6 R7 K8 ["createProcessEventHandler"]
       33 CALL                             R6 0 3
       34 MOVE                             R3 R6
       35 MOVE                             R4 R7
       36 MOVE                             R5 R8
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 GETTABLEKS                       R9 R1 K3 ["selectedProvider"]
       42 JUMPIFNOTEQKS                    R9 K9 ["Claude"] ; [+15]
       44 GETUPVAL                         R10 3
       45 GETTABLEKS                       R9 R10 K10 ["createRequestHandler"]
       47 CALL                             R9 0 1
       48 MOVE                             R6 R9
       49 GETUPVAL                         R9 4
       50 GETTABLEKS                       R7 R9 K11 ["formatTools"]
       52 GETUPVAL                         R10 5
       53 GETTABLEKS                       R9 R10 K12 ["getSystemMessage"]
       55 CALL                             R9 0 1
       56 MOVE                             R8 R9
       57 JUMP                             ; [+49]
       58 GETTABLEKS                       R9 R1 K3 ["selectedProvider"]
       60 JUMPIFNOTEQKS                    R9 K13 ["Gemini"] ; [+15]
       62 GETUPVAL                         R10 6
       63 GETTABLEKS                       R9 R10 K10 ["createRequestHandler"]
       65 CALL                             R9 0 1
       66 MOVE                             R6 R9
       67 GETUPVAL                         R9 7
       68 GETTABLEKS                       R7 R9 K11 ["formatTools"]
       70 GETUPVAL                         R10 8
       71 GETTABLEKS                       R9 R10 K12 ["getSystemMessage"]
       73 CALL                             R9 0 1
       74 MOVE                             R8 R9
       75 JUMP                             ; [+31]
       76 GETTABLEKS                       R9 R1 K3 ["selectedProvider"]
       78 JUMPIFNOTEQKS                    R9 K14 ["OpenAI"] ; [+15]
       80 GETUPVAL                         R10 9
       81 GETTABLEKS                       R9 R10 K10 ["createRequestHandler"]
       83 CALL                             R9 0 1
       84 MOVE                             R6 R9
       85 GETUPVAL                         R9 10
       86 GETTABLEKS                       R7 R9 K11 ["formatTools"]
       88 GETUPVAL                         R10 11
       89 GETTABLEKS                       R9 R10 K12 ["getSystemMessage"]
       91 CALL                             R9 0 1
       92 MOVE                             R8 R9
       93 JUMP                             ; [+13]
       94 GETUPVAL                         R10 12
       95 GETTABLEKS                       R9 R10 K10 ["createRequestHandler"]
       97 CALL                             R9 0 1
       98 MOVE                             R6 R9
       99 GETUPVAL                         R9 13
      100 GETTABLEKS                       R7 R9 K11 ["formatTools"]
      102 GETUPVAL                         R10 14
      103 GETTABLEKS                       R9 R10 K12 ["getSystemMessage"]
      105 CALL                             R9 0 1
      106 MOVE                             R8 R9
      107 DUPTABLE                         R9 K17 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage"}]
      108 GETTABLEKS                       R11 R2 K15 ["requestHandler"]
      110 OR                               R10 R11 R6
      111 SETTABLEKS                       R10 R9 K15 ["requestHandler"]
      113 SETTABLEKS                       R3 R9 K5 ["processEvent"]
      115 SETTABLEKS                       R4 R9 K6 ["createLLMSession"]
      117 SETTABLEKS                       R5 R9 K7 ["cancelSession"]
      119 GETTABLEKS                       R11 R2 K11 ["formatTools"]
      121 OR                               R10 R11 R7
      122 SETTABLEKS                       R10 R9 K11 ["formatTools"]
      124 GETTABLEKS                       R11 R2 K16 ["systemMessage"]
      126 OR                               R10 R11 R8
      127 SETTABLEKS                       R10 R9 K16 ["systemMessage"]
      129 GETUPVAL                         R10 15
      130 GETUPVAL                         R12 16
      131 GETTABLEKS                       R11 R12 K18 ["Provider"]
      133 DUPTABLE                         R12 K20 [{"value"}]
      134 SETTABLEKS                       R9 R12 K19 ["value"]
      136 GETTABLEKS                       R13 R0 K21 ["children"]
      138 CALL                             R10 3 -1
      139 RETURN                           R10 -1

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
       83 GETTABLEKS                       R11 R0 K6 ["Components"]
       85 GETTABLEKS                       R10 R11 K7 ["Contexts"]
       87 GETTABLEKS                       R9 R10 K18 ["Claude"]
       89 GETIMPORT                        R10 K5 [require]
       91 GETTABLEKS                       R11 R9 K19 ["ClaudeLLMRequest"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K5 [require]
       96 GETTABLEKS                       R12 R9 K20 ["ClaudeLLMSystemMessage"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K5 [require]
      101 GETTABLEKS                       R13 R9 K21 ["ClaudeLLMToolFormat"]
      103 CALL                             R12 1 1
      104 GETTABLEKS                       R15 R0 K6 ["Components"]
      106 GETTABLEKS                       R14 R15 K7 ["Contexts"]
      108 GETTABLEKS                       R13 R14 K22 ["Gemini"]
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R13 K23 ["GeminiLLMRequest"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R13 K24 ["GeminiLLMSystemMessage"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K5 [require]
      122 GETTABLEKS                       R17 R13 K25 ["GeminiLLMToolFormat"]
      124 CALL                             R16 1 1
      125 GETTABLEKS                       R19 R0 K6 ["Components"]
      127 GETTABLEKS                       R18 R19 K7 ["Contexts"]
      129 GETTABLEKS                       R17 R18 K26 ["OpenAI"]
      131 GETIMPORT                        R18 K5 [require]
      133 GETTABLEKS                       R19 R17 K27 ["OpenAILLMRequest"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K5 [require]
      138 GETTABLEKS                       R20 R17 K28 ["OpenAILLMSystemMessage"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K5 [require]
      143 GETTABLEKS                       R21 R17 K29 ["OpenAILLMToolFormat"]
      145 CALL                             R20 1 1
      146 GETTABLEKS                       R21 R7 K30 ["createElement"]
      148 NEWTABLE                         R22 0 0
      150 GETTABLEKS                       R23 R7 K31 ["createContext"]
      152 MOVE                             R24 R22
      153 CALL                             R23 1 1
      154 DUPCLOSURE                       R24 K32 [PROTO_1]
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R23
      172 DUPTABLE                         R25 K35 [{"Context", "Provider"}]
      173 SETTABLEKS                       R23 R25 K33 ["Context"]
      175 SETTABLEKS                       R24 R25 K34 ["Provider"]
      177 RETURN                           R25 1
