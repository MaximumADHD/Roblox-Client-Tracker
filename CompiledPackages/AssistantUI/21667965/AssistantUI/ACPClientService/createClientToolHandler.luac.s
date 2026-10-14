PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["user_requested_cancellation"]
        2 NAMECALL                         R0 R0 K1 ["Fire"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getToolCallMeta"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["getToolCallMeta"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["sessionId"]
       10 CALL                             R0 1 1
       11 JUMPIF                           R0 ; [+5]
       12 NEWTABLE                         R0 0 0
       14 JUMP                             ; [+2]
       15 NEWTABLE                         R0 0 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K2 ["getEventLogger"]
       20 JUMPIFNOT                        R2 ; [+5]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K2 ["getEventLogger"]
       24 CALL                             R1 0 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R1
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K3 ["toolCallId"]
       30 JUMPIF                           R2 ; [+3]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K4 ["referenceId"]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K5 ["messageId"]
       37 JUMPIF                           R3 ; [+3]
       38 MOVE                             R3 R2
       39 JUMPIF                           R3 ; [+1]
       40 LOADK                            R3 K6 [""]
       41 GETTABLEKS                       R4 R0 K1 ["sessionId"]
       43 JUMPIF                           R4 ; [+5]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R4 R4 K1 ["sessionId"]
       47 JUMPIF                           R4 ; [+1]
       48 LOADK                            R4 K6 [""]
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R5 R5 K7 ["getTimestampMilliseconds"]
       52 CALL                             R5 0 1
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R6 R6 K8 ["FFlagDebugLogAssistantUI"]
       56 JUMPIFNOT                        R6 ; [+42]
       57 GETIMPORT                        R6 K10 [print]
       59 LOADK                            R11 K11 ["[Tool Call] execute start: toolCallId=%* rawName=%* displayName=%* "]
       60 FASTCALL1                        TOSTRING R2 ; [+3]
       61 MOVE                             R14 R2
       62 GETIMPORT                        R13 K13 [tostring]
       64 CALL                             R13 1 1
       65 GETUPVAL                         R14 1
       66 GETTABLEKS                       R14 R14 K14 ["name"]
       68 GETUPVAL                         R15 4
       69 NAMECALL                         R11 R11 K15 ["format"]
       71 CALL                             R11 4 1
       72 MOVE                             R8 R11
       73 LOADK                            R11 K16 ["isStudioTool=%* messageId=%* "]
       74 GETUPVAL                         R13 5
       75 GETUPVAL                         R15 1
       76 GETTABLEKS                       R15 R15 K5 ["messageId"]
       78 FASTCALL1                        TOSTRING R15 ; [+2]
       79 GETIMPORT                        R14 K13 [tostring]
       81 CALL                             R14 1 1
       82 NAMECALL                         R11 R11 K15 ["format"]
       84 CALL                             R11 3 1
       85 MOVE                             R9 R11
       86 LOADK                            R10 K17 ["contentId=%*"]
       87 GETUPVAL                         R13 1
       88 GETTABLEKS                       R13 R13 K18 ["contentId"]
       90 FASTCALL1                        TOSTRING R13 ; [+2]
       91 GETIMPORT                        R12 K13 [tostring]
       93 CALL                             R12 1 1
       94 NAMECALL                         R10 R10 K15 ["format"]
       96 CALL                             R10 2 1
       97 CONCAT                           R7 R8 R10
       98 CALL                             R6 1 0
       99 GETUPVAL                         R7 1
      100 GETTABLEKS                       R7 R7 K19 ["isSlashCommand"]
      102 JUMPIFEQKB                       R7 TRUE ; [+2]
      104 LOADB                            R6 0 +1
      105 LOADB                            R6 1
      106 JUMPIFNOT                        R1 ; [+27]
      107 GETTABLEKS                       R7 R1 K20 ["logToolStarted"]
      109 DUPTABLE                         R8 K27 [{"messageGuid", "sessionId", "toolId", "toolName", "isStudioTool", "isSlashCommand", "assistantMode", "input"}]
      110 SETTABLEKS                       R3 R8 K21 ["messageGuid"]
      112 SETTABLEKS                       R4 R8 K1 ["sessionId"]
      114 SETTABLEKS                       R2 R8 K22 ["toolId"]
      116 GETUPVAL                         R9 4
      117 SETTABLEKS                       R9 R8 K23 ["toolName"]
      119 GETUPVAL                         R9 5
      120 SETTABLEKS                       R9 R8 K24 ["isStudioTool"]
      122 SETTABLEKS                       R6 R8 K19 ["isSlashCommand"]
      124 GETTABLEKS                       R9 R0 K25 ["assistantMode"]
      126 SETTABLEKS                       R9 R8 K25 ["assistantMode"]
      128 GETUPVAL                         R9 1
      129 GETTABLEKS                       R9 R9 K28 ["arguments"]
      131 SETTABLEKS                       R9 R8 K26 ["input"]
      133 CALL                             R7 1 0
      134 GETIMPORT                        R7 K30 [pcall]
      136 GETUPVAL                         R8 6
      137 GETTABLEKS                       R8 R8 K31 ["callTool"]
      139 GETUPVAL                         R9 4
      140 GETUPVAL                         R10 1
      141 GETTABLEKS                       R10 R10 K28 ["arguments"]
      143 GETUPVAL                         R11 7
      144 DUPTABLE                         R12 K33 [{"acpSessionId", "messageId", "contentId", "toolId"}]
      145 GETUPVAL                         R13 1
      146 GETTABLEKS                       R13 R13 K1 ["sessionId"]
      148 SETTABLEKS                       R13 R12 K32 ["acpSessionId"]
      150 GETUPVAL                         R13 1
      151 GETTABLEKS                       R13 R13 K5 ["messageId"]
      153 SETTABLEKS                       R13 R12 K5 ["messageId"]
      155 GETUPVAL                         R13 1
      156 GETTABLEKS                       R13 R13 K18 ["contentId"]
      158 SETTABLEKS                       R13 R12 K18 ["contentId"]
      160 SETTABLEKS                       R2 R12 K22 ["toolId"]
      162 CALL                             R7 5 2
      163 JUMPIFNOT                        R1 ; [+50]
      164 GETTABLEKS                       R9 R1 K34 ["logToolEnded"]
      166 DUPTABLE                         R10 K40 [{"messageGuid", "sessionId", "toolId", "toolName", "isStudioTool", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "isSlashCommand", "assistantMode", "toolResultContent"}]
      167 SETTABLEKS                       R3 R10 K21 ["messageGuid"]
      169 SETTABLEKS                       R4 R10 K1 ["sessionId"]
      171 ORK                              R11 R2 K6 [""]
      172 SETTABLEKS                       R11 R10 K22 ["toolId"]
      174 GETUPVAL                         R11 4
      175 SETTABLEKS                       R11 R10 K23 ["toolName"]
      177 GETUPVAL                         R11 5
      178 SETTABLEKS                       R11 R10 K24 ["isStudioTool"]
      180 SETTABLEKS                       R5 R10 K35 ["startTime"]
      182 SETTABLEKS                       R5 R10 K36 ["startTimeAfterConfirmation"]
      184 GETUPVAL                         R11 2
      185 GETTABLEKS                       R11 R11 K7 ["getTimestampMilliseconds"]
      187 CALL                             R11 0 1
      188 SETTABLEKS                       R11 R10 K37 ["endTime"]
      190 NOT                              R11 R7
      191 JUMPIF                           R11 ; [+6]
      192 GETTABLEKS                       R12 R8 K38 ["isError"]
      194 JUMPIFEQKB                       R12 TRUE ; [+2]
      196 LOADB                            R11 0 +1
      197 LOADB                            R11 1
      198 SETTABLEKS                       R11 R10 K38 ["isError"]
      200 SETTABLEKS                       R6 R10 K19 ["isSlashCommand"]
      202 GETTABLEKS                       R11 R0 K25 ["assistantMode"]
      204 SETTABLEKS                       R11 R10 K25 ["assistantMode"]
      206 JUMPIFNOT                        R7 ; [+3]
      207 GETTABLEKS                       R11 R8 K41 ["content"]
      209 JUMP                             ; [+1]
      210 LOADNIL                          R11
      211 SETTABLEKS                       R11 R10 K39 ["toolResultContent"]
      213 CALL                             R9 1 0
      214 JUMPIFNOT                        R7 ; [+35]
      215 GETUPVAL                         R9 3
      216 GETTABLEKS                       R9 R9 K8 ["FFlagDebugLogAssistantUI"]
      218 JUMPIFNOT                        R9 ; [+25]
      219 GETIMPORT                        R9 K10 [print]
      221 LOADK                            R13 K42 ["[Tool Call] execute success: toolCallId=%* displayName=%* "]
      222 FASTCALL1                        TOSTRING R2 ; [+3]
      223 MOVE                             R16 R2
      224 GETIMPORT                        R15 K13 [tostring]
      226 CALL                             R15 1 1
      227 GETUPVAL                         R16 4
      228 NAMECALL                         R13 R13 K15 ["format"]
      230 CALL                             R13 3 1
      231 MOVE                             R11 R13
      232 LOADK                            R12 K43 ["isError=%*"]
      233 GETTABLEKS                       R15 R8 K38 ["isError"]
      235 JUMPIFEQKB                       R15 TRUE ; [+2]
      237 LOADB                            R14 0 +1
      238 LOADB                            R14 1
      239 NAMECALL                         R12 R12 K15 ["format"]
      241 CALL                             R12 2 1
      242 CONCAT                           R10 R11 R12
      243 CALL                             R9 1 0
      244 GETUPVAL                         R9 8
      245 DUPTABLE                         R10 K45 [{"result"}]
      246 SETTABLEKS                       R8 R10 K44 ["result"]
      248 CALL                             R9 1 0
      249 RETURN                           R0 0
      250 GETUPVAL                         R9 3
      251 GETTABLEKS                       R9 R9 K8 ["FFlagDebugLogAssistantUI"]
      253 JUMPIFNOT                        R9 ; [+18]
      254 GETIMPORT                        R9 K10 [print]
      256 LOADK                            R10 K46 ["[Tool Call] execute error: toolCallId=%* displayName=%* error=%*"]
      257 FASTCALL1                        TOSTRING R2 ; [+3]
      258 MOVE                             R13 R2
      259 GETIMPORT                        R12 K13 [tostring]
      261 CALL                             R12 1 1
      262 GETUPVAL                         R13 4
      263 FASTCALL1                        TOSTRING R8 ; [+3]
      264 MOVE                             R15 R8
      265 GETIMPORT                        R14 K13 [tostring]
      267 CALL                             R14 1 1
      268 NAMECALL                         R10 R10 K15 ["format"]
      270 CALL                             R10 4 1
      271 CALL                             R9 1 0
      272 GETUPVAL                         R9 9
      273 FASTCALL1                        TOSTRING R8 ; [+3]
      274 MOVE                             R11 R8
      275 GETIMPORT                        R10 K13 [tostring]
      277 CALL                             R10 1 1
      278 CALL                             R9 1 0
      279 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isStudioTool"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["name"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["stripPrefix"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K1 ["name"]
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K3 ["getToolCallOptions"]
       17 MOVE                             R6 R4
       18 CALL                             R5 1 1
       19 JUMPIFNOT                        R5 ; [+6]
       20 GETIMPORT                        R6 K6 [table.clone]
       22 MOVE                             R7 R5
       23 CALL                             R6 1 1
       24 MOVE                             R5 R6
       25 JUMP                             ; [+2]
       26 NEWTABLE                         R5 0 0
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K7 ["new"]
       31 CALL                             R6 0 1
       32 SETTABLEKS                       R6 R5 K8 ["signal"]
       34 MOVE                             R7 R2
       35 NEWCLOSURE                       R8 P0
       36 CAPTURE                          VAL R6
       37 CALL                             R7 1 0
       38 GETIMPORT                        R7 K11 [task.spawn]
       40 NEWCLOSURE                       R8 P1
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          REF R5
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 CALL                             R7 1 0
       52 CLOSEUPVALS                      R5
       53 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 RETURN                           R2 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["ModelContextProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["Promise"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Parent"]
       37 GETTABLEKS                       R6 R6 K11 ["Signal"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K12 ["Types"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K13 ["ACPClientService"]
       49 GETTABLEKS                       R8 R8 K14 ["buildToolTransports"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R1 K15 ["ToolNaming"]
       54 GETTABLEKS                       R9 R1 K16 ["Engine"]
       56 GETTABLEKS                       R9 R9 K17 ["Time"]
       58 DUPCLOSURE                       R10 K18 [PROTO_4]
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R2
       65 RETURN                           R10 1
