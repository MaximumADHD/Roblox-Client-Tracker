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
       53 JUMPIFNOT                        R1 ; [+25]
       54 GETTABLEKS                       R6 R1 K8 ["logToolStarted"]
       56 DUPTABLE                         R7 K17 [{["messageGuid"], ["sessionId"], ["toolId"], ["toolName"], ["isStudioTool"], ["isSlashCommand"] = False, ["assistantMode"], ["input"]}]
       57 SETTABLEKS                       R3 R7 K9 ["messageGuid"]
       59 SETTABLEKS                       R4 R7 K1 ["sessionId"]
       61 SETTABLEKS                       R2 R7 K10 ["toolId"]
       63 GETUPVAL                         R8 3
       64 SETTABLEKS                       R8 R7 K11 ["toolName"]
       66 GETUPVAL                         R8 4
       67 SETTABLEKS                       R8 R7 K12 ["isStudioTool"]
       69 GETTABLEKS                       R8 R0 K15 ["assistantMode"]
       71 SETTABLEKS                       R8 R7 K15 ["assistantMode"]
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K18 ["arguments"]
       76 SETTABLEKS                       R8 R7 K16 ["input"]
       78 CALL                             R6 1 0
       79 GETIMPORT                        R6 K20 [pcall]
       81 GETUPVAL                         R7 5
       82 GETTABLEKS                       R7 R7 K21 ["callTool"]
       84 GETUPVAL                         R8 3
       85 GETUPVAL                         R9 1
       86 GETTABLEKS                       R9 R9 K18 ["arguments"]
       88 GETUPVAL                         R10 6
       89 DUPTABLE                         R11 K24 [{"acpSessionId", "messageId", "contentId", "toolId"}]
       90 GETUPVAL                         R12 1
       91 GETTABLEKS                       R12 R12 K1 ["sessionId"]
       93 SETTABLEKS                       R12 R11 K22 ["acpSessionId"]
       95 GETUPVAL                         R12 1
       96 GETTABLEKS                       R12 R12 K5 ["messageId"]
       98 SETTABLEKS                       R12 R11 K5 ["messageId"]
      100 GETUPVAL                         R12 1
      101 GETTABLEKS                       R12 R12 K23 ["contentId"]
      103 SETTABLEKS                       R12 R11 K23 ["contentId"]
      105 SETTABLEKS                       R2 R11 K10 ["toolId"]
      107 CALL                             R6 5 2
      108 JUMPIFNOT                        R1 ; [+48]
      109 GETTABLEKS                       R8 R1 K25 ["logToolEnded"]
      111 DUPTABLE                         R9 K31 [{["messageGuid"], ["sessionId"], ["toolId"], ["toolName"], ["isStudioTool"], ["startTime"], ["startTimeAfterConfirmation"], ["endTime"], ["isError"], ["isSlashCommand"] = False, ["assistantMode"], ["toolResultContent"]}]
      112 SETTABLEKS                       R3 R9 K9 ["messageGuid"]
      114 SETTABLEKS                       R4 R9 K1 ["sessionId"]
      116 ORK                              R10 R2 K6 [""]
      117 SETTABLEKS                       R10 R9 K10 ["toolId"]
      119 GETUPVAL                         R10 3
      120 SETTABLEKS                       R10 R9 K11 ["toolName"]
      122 GETUPVAL                         R10 4
      123 SETTABLEKS                       R10 R9 K12 ["isStudioTool"]
      125 SETTABLEKS                       R5 R9 K26 ["startTime"]
      127 SETTABLEKS                       R5 R9 K27 ["startTimeAfterConfirmation"]
      129 GETUPVAL                         R10 2
      130 GETTABLEKS                       R10 R10 K7 ["getTimestampMilliseconds"]
      132 CALL                             R10 0 1
      133 SETTABLEKS                       R10 R9 K28 ["endTime"]
      135 NOT                              R10 R6
      136 JUMPIF                           R10 ; [+6]
      137 GETTABLEKS                       R11 R7 K29 ["isError"]
      139 JUMPIFEQKB                       R11 TRUE ; [+2]
      141 LOADB                            R10 0 +1
      142 LOADB                            R10 1
      143 SETTABLEKS                       R10 R9 K29 ["isError"]
      145 GETTABLEKS                       R10 R0 K15 ["assistantMode"]
      147 SETTABLEKS                       R10 R9 K15 ["assistantMode"]
      149 JUMPIFNOT                        R6 ; [+3]
      150 GETTABLEKS                       R10 R7 K32 ["content"]
      152 JUMP                             ; [+1]
      153 LOADNIL                          R10
      154 SETTABLEKS                       R10 R9 K30 ["toolResultContent"]
      156 CALL                             R8 1 0
      157 JUMPIFNOT                        R6 ; [+6]
      158 GETUPVAL                         R8 7
      159 DUPTABLE                         R9 K34 [{"result"}]
      160 SETTABLEKS                       R7 R9 K33 ["result"]
      162 CALL                             R8 1 0
      163 RETURN                           R0 0
      164 GETUPVAL                         R8 8
      165 FASTCALL1                        TOSTRING R7 ; [+3]
      166 MOVE                             R10 R7
      167 GETIMPORT                        R9 K36 [tostring]
      169 CALL                             R9 1 1
      170 CALL                             R8 1 0
      171 RETURN                           R0 0

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
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          REF R5
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R1
       50 CALL                             R7 1 0
       51 CLOSEUPVALS                      R5
       52 RETURN                           R0 0

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
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1

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
       10 RETURN                           R2 1

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
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Promise"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["Signal"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K12 ["ACPClientService"]
       44 GETTABLEKS                       R7 R7 K13 ["buildToolTransports"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R1 K14 ["ToolNaming"]
       49 GETTABLEKS                       R8 R1 K15 ["Engine"]
       51 GETTABLEKS                       R8 R8 K16 ["Time"]
       53 DUPCLOSURE                       R9 K17 [PROTO_4]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R8
       59 RETURN                           R9 1
