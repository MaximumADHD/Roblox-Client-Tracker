PROTO_0:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["getClientForStaticTool"]
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["getMcpClientIdentifier"]
        7 CALL                             R4 0 1
        8 JUMPIFEQ                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["FFlagAssistantSlashToolNameAndError"]
       15 JUMPIFNOT                        R3 ; [+8]
       16 MOVE                             R3 R2
       17 JUMPIF                           R3 ; [+5]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K3 ["hasTool"]
       21 MOVE                             R4 R1
       22 CALL                             R3 1 1
       23 MOVE                             R2 R3
       24 JUMPIFNOT                        R2 ; [+6]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K4 ["addPrefix"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 1
       30 RETURN                           R3 1
       31 MOVE                             R3 R1
       32 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["acpSessionId"]
        3 MOVE                             R1 R0
        4 DUPTABLE                         R2 K3 [{["rawTransformValues"] = True}]
        5 RETURN                           R1 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onComplete"]
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETIMPORT                        R1 K2 [pcall]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["onComplete"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 JUMPIF                           R1 ; [+4]
       12 GETIMPORT                        R2 K4 [warn]
       14 LOADK                            R3 K5 ["Error handling tool call completion"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 JUMPIFEQKS                       R0 K0 ["cancelled"] ; [+6]
        2 GETIMPORT                        R1 K2 [warn]
        4 LOADK                            R2 K3 ["Error running tool call via ACP:"]
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K4 ["onComplete"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K4 ["onComplete"]
       14 LOADNIL                          R2
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["service"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["getSessionMonitor"]
        6 JUMPIFNOT                        R2 ; [+1]
        7 JUMPIF                           R3 ; [+12]
        8 GETIMPORT                        R4 K3 [warn]
       10 LOADK                            R5 K4 ["ACP service unavailable for tool call dispatch"]
       11 CALL                             R4 1 0
       12 GETTABLEKS                       R4 R1 K5 ["onComplete"]
       14 JUMPIFNOT                        R4 ; [+4]
       15 GETTABLEKS                       R4 R1 K5 ["onComplete"]
       17 LOADNIL                          R5
       18 CALL                             R4 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R4 R1 K6 ["client"]
       22 GETTABLEKS                       R6 R0 K7 ["name"]
       24 MOVE                             R10 R6
       25 NAMECALL                         R8 R4 K8 ["getClientForStaticTool"]
       27 CALL                             R8 2 1
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R9 R9 K9 ["getMcpClientIdentifier"]
       31 CALL                             R9 0 1
       32 JUMPIFEQ                         R8 R9 ; [+2]
       34 LOADB                            R7 0 +1
       35 LOADB                            R7 1
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R8 R8 K10 ["FFlagAssistantSlashToolNameAndError"]
       39 JUMPIFNOT                        R8 ; [+8]
       40 MOVE                             R8 R7
       41 JUMPIF                           R8 ; [+5]
       42 GETUPVAL                         R8 4
       43 GETTABLEKS                       R8 R8 K11 ["hasTool"]
       45 MOVE                             R9 R6
       46 CALL                             R8 1 1
       47 MOVE                             R7 R8
       48 JUMPIFNOT                        R7 ; [+7]
       49 GETUPVAL                         R8 5
       50 GETTABLEKS                       R8 R8 K12 ["addPrefix"]
       52 MOVE                             R9 R6
       53 CALL                             R8 1 1
       54 MOVE                             R5 R8
       55 JUMP                             ; [+1]
       56 MOVE                             R5 R6
       57 GETTABLEKS                       R6 R1 K13 ["threadId"]
       59 JUMPIF                           R6 ; [+1]
       60 GETUPVAL                         R6 6
       61 GETUPVAL                         R8 6
       62 JUMPIFNOTEQ                      R6 R8 ; [+3]
       64 GETUPVAL                         R7 7
       65 JUMP                             ; [+4]
       66 GETUPVAL                         R8 8
       67 GETTABLEKS                       R8 R8 K14 ["threads"]
       69 GETTABLE                         R7 R8 R6
       70 GETUPVAL                         R8 9
       71 DUPTABLE                         R9 K26 [{"service", "sessionMonitor", "threadId", "acpSessionId", "setAcpSessionId", "addContent", "editContent", "assistantMode", "conversationSessionId", "assistantMessageId", "registerPromptController", "unregisterPromptController", "showError"}]
       72 SETTABLEKS                       R2 R9 K0 ["service"]
       74 MOVE                             R10 R3
       75 MOVE                             R11 R6
       76 CALL                             R10 1 1
       77 SETTABLEKS                       R10 R9 K15 ["sessionMonitor"]
       79 SETTABLEKS                       R6 R9 K13 ["threadId"]
       81 JUMPIFNOT                        R7 ; [+3]
       82 GETTABLEKS                       R10 R7 K16 ["acpSessionId"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R10
       86 SETTABLEKS                       R10 R9 K16 ["acpSessionId"]
       88 NEWCLOSURE                       R10 P0
       89 CAPTURE                          UPVAL U10
       90 CAPTURE                          VAL R6
       91 SETTABLEKS                       R10 R9 K17 ["setAcpSessionId"]
       93 GETUPVAL                         R10 11
       94 SETTABLEKS                       R10 R9 K18 ["addContent"]
       96 GETUPVAL                         R10 12
       97 SETTABLEKS                       R10 R9 K19 ["editContent"]
       99 GETUPVAL                         R10 13
      100 SETTABLEKS                       R10 R9 K20 ["assistantMode"]
      102 GETUPVAL                         R10 14
      103 SETTABLEKS                       R10 R9 K21 ["conversationSessionId"]
      105 GETTABLEKS                       R10 R1 K27 ["messageId"]
      107 SETTABLEKS                       R10 R9 K22 ["assistantMessageId"]
      109 GETUPVAL                         R10 15
      110 GETTABLEKS                       R10 R10 K23 ["registerPromptController"]
      112 SETTABLEKS                       R10 R9 K23 ["registerPromptController"]
      114 GETUPVAL                         R10 15
      115 GETTABLEKS                       R10 R10 K24 ["unregisterPromptController"]
      117 SETTABLEKS                       R10 R9 K24 ["unregisterPromptController"]
      119 GETTABLEKS                       R10 R1 K25 ["showError"]
      121 SETTABLEKS                       R10 R9 K25 ["showError"]
      123 DUPTABLE                         R10 K32 [{"agentToolName", "arguments", "userPromptText", "images"}]
      124 SETTABLEKS                       R5 R10 K28 ["agentToolName"]
      126 GETTABLEKS                       R11 R0 K29 ["arguments"]
      128 SETTABLEKS                       R11 R10 K29 ["arguments"]
      130 GETTABLEKS                       R11 R1 K30 ["userPromptText"]
      132 SETTABLEKS                       R11 R10 K30 ["userPromptText"]
      134 GETTABLEKS                       R11 R1 K31 ["images"]
      136 SETTABLEKS                       R11 R10 K31 ["images"]
      138 CALL                             R8 2 1
      139 GETTABLEKS                       R9 R8 K33 ["promise"]
      141 NEWCLOSURE                       R11 P1
      142 CAPTURE                          VAL R1
      143 NAMECALL                         R9 R9 K34 ["andThen"]
      145 CALL                             R9 2 1
      146 NEWCLOSURE                       R11 P2
      147 CAPTURE                          VAL R1
      148 NAMECALL                         R9 R9 K35 ["catch"]
      150 CALL                             R9 2 0
      151 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+9]
        2 LOADB                            R1 1
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 1
        6 DUPTABLE                         R3 K1 [{"threadId"}]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K0 ["threadId"]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 3
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETUPVAL                         R1 3
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R2 R1
        1 GETTABLEKS                       R3 R1 K0 ["blockInput"]
        3 JUMPIFNOT                        R3 ; [+24]
        4 GETTABLEKS                       R3 R1 K1 ["threadId"]
        6 GETUPVAL                         R4 0
        7 LOADB                            R5 0
        8 DUPTABLE                         R6 K2 [{"threadId"}]
        9 SETTABLEKS                       R3 R6 K1 ["threadId"]
       11 CALL                             R4 2 0
       12 LOADB                            R4 0
       13 GETTABLEKS                       R5 R1 K3 ["onComplete"]
       15 GETIMPORT                        R6 K6 [table.clone]
       17 MOVE                             R7 R1
       18 CALL                             R6 1 1
       19 MOVE                             R2 R6
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          REF R4
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R5
       25 SETTABLEKS                       R6 R2 K3 ["onComplete"]
       27 CLOSEUPVALS                      R4
       28 GETUPVAL                         R3 1
       29 MOVE                             R4 R0
       30 MOVE                             R5 R2
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 4
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 5
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 6
       13 CALL                             R6 0 1
       14 GETUPVAL                         R7 7
       15 GETTABLEKS                       R7 R7 K0 ["useContext"]
       17 GETUPVAL                         R8 8
       18 GETTABLEKS                       R8 R8 K1 ["Context"]
       20 CALL                             R7 1 1
       21 GETTABLEKS                       R8 R7 K2 ["sessionId"]
       23 GETUPVAL                         R9 7
       24 GETTABLEKS                       R9 R9 K0 ["useContext"]
       26 GETUPVAL                         R10 9
       27 GETTABLEKS                       R10 R10 K1 ["Context"]
       29 CALL                             R9 1 1
       30 GETUPVAL                         R10 7
       31 GETTABLEKS                       R10 R10 K0 ["useContext"]
       33 GETUPVAL                         R11 10
       34 GETTABLEKS                       R11 R11 K1 ["Context"]
       36 CALL                             R10 1 1
       37 GETUPVAL                         R11 7
       38 GETTABLEKS                       R11 R11 K0 ["useContext"]
       40 GETUPVAL                         R12 11
       41 GETTABLEKS                       R12 R12 K1 ["Context"]
       43 CALL                             R11 1 1
       44 GETUPVAL                         R12 7
       45 GETTABLEKS                       R12 R12 K0 ["useContext"]
       47 GETUPVAL                         R13 12
       48 GETTABLEKS                       R13 R13 K1 ["Context"]
       50 CALL                             R12 1 1
       51 GETUPVAL                         R13 13
       52 MOVE                             R14 R12
       53 CALL                             R13 1 1
       54 NEWCLOSURE                       R14 P0
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R10
       57 CAPTURE                          UPVAL U14
       58 CAPTURE                          UPVAL U15
       59 CAPTURE                          UPVAL U16
       60 CAPTURE                          UPVAL U17
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R6
       64 CAPTURE                          UPVAL U18
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R11
       71 NEWCLOSURE                       R15 P1
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R14
       74 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ACPClientServiceContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K7 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K9 ["AcpSessionMonitorContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Parent"]
       29 GETTABLEKS                       R4 R4 K11 ["AssistantHarness"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Flags"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Components"]
       41 GETTABLEKS                       R6 R6 K7 ["Contexts"]
       43 GETTABLEKS                       R6 R6 K13 ["InputStateContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Parent"]
       50 GETTABLEKS                       R7 R7 K14 ["ModelContextProtocol"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Components"]
       57 GETTABLEKS                       R8 R8 K7 ["Contexts"]
       59 GETTABLEKS                       R8 R8 K15 ["OngoingAcpPromptContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K10 ["Parent"]
       66 GETTABLEKS                       R9 R9 K16 ["React"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Components"]
       73 GETTABLEKS                       R10 R10 K7 ["Contexts"]
       75 GETTABLEKS                       R10 R10 K17 ["SessionIdContext"]
       77 CALL                             R9 1 1
       78 GETTABLEKS                       R10 R3 K18 ["ToolNaming"]
       80 GETIMPORT                        R11 K5 [require]
       82 GETTABLEKS                       R12 R0 K19 ["Types"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K5 [require]
       87 GETTABLEKS                       R13 R0 K6 ["Components"]
       89 GETTABLEKS                       R13 R13 K20 ["UIToolRegistry"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K5 [require]
       94 GETTABLEKS                       R14 R0 K21 ["Util"]
       96 GETTABLEKS                       R14 R14 K22 ["getToggleGenerationInputFunc"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R15 R0 K23 ["ACPClientService"]
      103 GETTABLEKS                       R15 R15 K24 ["runSlashCommandViaService"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K5 [require]
      108 GETTABLEKS                       R16 R0 K25 ["Hooks"]
      110 GETTABLEKS                       R16 R16 K26 ["useAddContent"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K5 [require]
      115 GETTABLEKS                       R17 R0 K25 ["Hooks"]
      117 GETTABLEKS                       R17 R17 K27 ["useAssistantMode"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K5 [require]
      122 GETTABLEKS                       R18 R0 K25 ["Hooks"]
      124 GETTABLEKS                       R18 R18 K28 ["useConversation"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K5 [require]
      129 GETTABLEKS                       R19 R0 K25 ["Hooks"]
      131 GETTABLEKS                       R19 R19 K29 ["useCurrentThread"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K5 [require]
      136 GETTABLEKS                       R20 R0 K25 ["Hooks"]
      138 GETTABLEKS                       R20 R20 K30 ["useEditContent"]
      140 CALL                             R19 1 1
      141 GETIMPORT                        R20 K5 [require]
      143 GETTABLEKS                       R21 R0 K25 ["Hooks"]
      145 GETTABLEKS                       R21 R21 K31 ["useEditThread"]
      147 CALL                             R20 1 1
      148 GETIMPORT                        R21 K5 [require]
      150 GETTABLEKS                       R22 R0 K25 ["Hooks"]
      152 GETTABLEKS                       R22 R22 K32 ["useThreadId"]
      154 CALL                             R21 1 1
      155 GETTABLEKS                       R22 R6 K33 ["ToolRegistry"]
      157 DUPCLOSURE                       R23 K34 [PROTO_0]
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R10
      162 DUPCLOSURE                       R24 K35 [PROTO_8]
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R21
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R22
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R14
      182 RETURN                           R24 1
