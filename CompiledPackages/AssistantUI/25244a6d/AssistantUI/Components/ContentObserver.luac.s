PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["threadId"]
        6 JUMPIF                           R2 ; [+1]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K3 ["threadId"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["editContent"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["threadId"]
        6 JUMPIF                           R2 ; [+1]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K3 ["threadId"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["addContent"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 -1
       15 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 1
        1 NAMECALL                         R1 R0 K0 ["getToolInfoByAlias"]
        3 CALL                             R1 2 1
        4 SETUPVAL                         R1 0
        5 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          REF R1
        4 CAPTURE                          VAL R0
        5 CALL                             R2 1 0
        6 JUMPIF                           R1 ; [+4]
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 CLOSEUPVALS                      R1
       10 RETURN                           R2 2
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K0 ["unpackServerIdentifier"]
       14 GETTABLEKS                       R3 R1 K1 ["serverIdentifier"]
       16 CALL                             R2 1 2
       17 GETTABLEKS                       R4 R1 K2 ["actualToolName"]
       19 MOVE                             R5 R3
       20 CLOSEUPVALS                      R1
       21 RETURN                           R4 2

PROTO_4:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 LOADNIL                          R1
        8 GETTABLEKS                       R2 R0 K3 ["type"]
       10 JUMPIFNOTEQKS                    R2 K4 ["text"] ; [+9]
       12 DUPTABLE                         R2 K6 [{["type"], ["text"] = ""}]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K7 ["Type"]
       16 SETTABLEKS                       R3 R2 K3 ["type"]
       18 MOVE                             R1 R2
       19 JUMP                             ; [+137]
       20 GETTABLEKS                       R2 R0 K3 ["type"]
       22 JUMPIFNOTEQKS                    R2 K8 ["thinking"] ; [+9]
       24 DUPTABLE                         R2 K12 [{["type"], ["thinking"] = "", ["signature"] = "", ["expanded"] = False}]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K7 ["Type"]
       28 SETTABLEKS                       R3 R2 K3 ["type"]
       30 MOVE                             R1 R2
       31 JUMP                             ; [+125]
       32 GETTABLEKS                       R2 R0 K3 ["type"]
       34 JUMPIFNOTEQKS                    R2 K13 ["tool_use"] ; [+48]
       36 GETTABLEKS                       R2 R0 K14 ["name"]
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K15 ["get"]
       41 MOVE                             R4 R2
       42 CALL                             R3 1 1
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R4 R4 K16 ["None"]
       46 JUMPIFNOTEQ                      R3 R4 ; [+3]
       48 LOADNIL                          R4
       49 RETURN                           R4 1
       50 JUMPIFNOT                        R3 ; [+24]
       51 GETUPVAL                         R4 4
       52 GETTABLEKS                       R4 R4 K7 ["Type"]
       54 JUMPIFEQ                         R3 R4 ; [+20]
       56 GETUPVAL                         R4 5
       57 GETTABLEKS                       R4 R4 K17 ["getAutoExpand"]
       59 MOVE                             R5 R3
       60 CALL                             R4 1 1
       61 DUPTABLE                         R5 K18 [{"type", "expanded"}]
       62 SETTABLEKS                       R3 R5 K3 ["type"]
       64 JUMPIFNOT                        R4 ; [+5]
       65 GETTABLEKS                       R7 R4 K19 ["expandWhileGenerating"]
       67 JUMPIFNOT                        R7 ; [+2]
       68 LOADB                            R6 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R6
       71 SETTABLEKS                       R6 R5 K10 ["expanded"]
       73 MOVE                             R1 R5
       74 JUMP                             ; [+82]
       75 DUPTABLE                         R4 K20 [{["type"], ["expanded"] = False}]
       76 GETUPVAL                         R5 4
       77 GETTABLEKS                       R5 R5 K7 ["Type"]
       79 SETTABLEKS                       R5 R4 K3 ["type"]
       81 MOVE                             R1 R4
       82 JUMP                             ; [+74]
       83 GETTABLEKS                       R2 R0 K3 ["type"]
       85 JUMPIFNOTEQKS                    R2 K21 ["compaction_status"] ; [+17]
       87 DUPTABLE                         R2 K23 [{"type", "summary"}]
       88 GETUPVAL                         R3 6
       89 GETTABLEKS                       R3 R3 K7 ["Type"]
       91 SETTABLEKS                       R3 R2 K3 ["type"]
       93 GETUPVAL                         R3 7
       94 LOADK                            R5 K24 ["Compaction"]
       95 LOADK                            R6 K25 ["InProgress"]
       96 NAMECALL                         R3 R3 K26 ["getText"]
       98 CALL                             R3 3 1
       99 SETTABLEKS                       R3 R2 K22 ["summary"]
      101 MOVE                             R1 R2
      102 JUMP                             ; [+54]
      103 GETTABLEKS                       R2 R0 K3 ["type"]
      105 JUMPIFNOTEQKS                    R2 K27 ["input_requested"] ; [+51]
      107 DUPTABLE                         R2 K38 [{["type"], ["expanded"] = False, ["status"], ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["onContinue"], ["onRevive"], ["canConfirm"], ["getDisabledReason"], ["imageSelection"]}]
      108 GETUPVAL                         R3 8
      109 GETTABLEKS                       R3 R3 K7 ["Type"]
      111 SETTABLEKS                       R3 R2 K3 ["type"]
      113 GETUPVAL                         R3 8
      114 GETTABLEKS                       R3 R3 K39 ["InputStatus"]
      116 GETTABLEKS                       R3 R3 K40 ["Required"]
      118 SETTABLEKS                       R3 R2 K28 ["status"]
      120 GETTABLEKS                       R3 R0 K29 ["title"]
      122 SETTABLEKS                       R3 R2 K29 ["title"]
      124 GETTABLEKS                       R3 R0 K30 ["description"]
      126 SETTABLEKS                       R3 R2 K30 ["description"]
      128 GETTABLEKS                       R3 R0 K31 ["confirmButtonText"]
      130 SETTABLEKS                       R3 R2 K31 ["confirmButtonText"]
      132 GETTABLEKS                       R3 R0 K32 ["propertyRows"]
      134 SETTABLEKS                       R3 R2 K32 ["propertyRows"]
      136 GETTABLEKS                       R3 R0 K33 ["onContinue"]
      138 SETTABLEKS                       R3 R2 K33 ["onContinue"]
      140 GETTABLEKS                       R3 R0 K34 ["onRevive"]
      142 SETTABLEKS                       R3 R2 K34 ["onRevive"]
      144 GETTABLEKS                       R3 R0 K35 ["canConfirm"]
      146 SETTABLEKS                       R3 R2 K35 ["canConfirm"]
      148 GETTABLEKS                       R3 R0 K36 ["getDisabledReason"]
      150 SETTABLEKS                       R3 R2 K36 ["getDisabledReason"]
      152 GETTABLEKS                       R3 R0 K37 ["imageSelection"]
      154 SETTABLEKS                       R3 R2 K37 ["imageSelection"]
      156 MOVE                             R1 R2
      157 GETUPVAL                         R2 9
      158 GETTABLEKS                       R2 R2 K41 ["assign"]
      160 MOVE                             R3 R1
      161 DUPTABLE                         R4 K43 [{"streaming"}]
      162 NEWTABLE                         R5 0 0
      164 SETTABLEKS                       R5 R4 K42 ["streaming"]
      166 CALL                             R2 2 1
      167 GETUPVAL                         R3 10
      168 DUPTABLE                         R4 K46 [{"messageId", "content"}]
      169 GETUPVAL                         R5 0
      170 SETTABLEKS                       R5 R4 K44 ["messageId"]
      172 SETTABLEKS                       R2 R4 K45 ["content"]
      174 CALL                             R3 1 1
      175 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["text"]
        3 SETTABLEKS                       R1 R0 K0 ["text"]
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["thinking"]
        3 SETTABLEKS                       R1 R0 K0 ["thinking"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["signature"]
        8 SETTABLEKS                       R1 R0 K1 ["signature"]
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Compaction"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["streaming"]
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["jsonDelta"]
       11 SETTABLEKS                       R2 R1 K5 ["toolUse"]
       13 SETTABLEKS                       R1 R0 K3 ["streaming"]
       15 DUPTABLE                         R2 K8 [{["rawTransformValues"] = True}]
       16 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        3 LOADK                            R5 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 GETTABLEKS                       R3 R1 K3 ["type"]
        9 JUMPIFNOTEQKS                    R3 K4 ["text_delta"] ; [+14]
       11 GETUPVAL                         R3 1
       12 DUPTABLE                         R4 K8 [{"messageId", "contentId", "transformFn"}]
       13 GETUPVAL                         R5 0
       14 SETTABLEKS                       R5 R4 K5 ["messageId"]
       16 SETTABLEKS                       R0 R4 K6 ["contentId"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R5 R4 K7 ["transformFn"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R3 R1 K3 ["type"]
       26 JUMPIFNOTEQKS                    R3 K9 ["thinking_delta"] ; [+14]
       28 GETUPVAL                         R3 1
       29 DUPTABLE                         R4 K8 [{"messageId", "contentId", "transformFn"}]
       30 GETUPVAL                         R5 0
       31 SETTABLEKS                       R5 R4 K5 ["messageId"]
       33 SETTABLEKS                       R0 R4 K6 ["contentId"]
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R5 R4 K7 ["transformFn"]
       39 CALL                             R3 1 0
       40 RETURN                           R0 0
       41 GETTABLEKS                       R3 R1 K3 ["type"]
       43 JUMPIFNOTEQKS                    R3 K10 ["summary_delta"] ; [+14]
       45 GETUPVAL                         R3 1
       46 DUPTABLE                         R4 K8 [{"messageId", "contentId", "transformFn"}]
       47 GETUPVAL                         R5 0
       48 SETTABLEKS                       R5 R4 K5 ["messageId"]
       50 SETTABLEKS                       R0 R4 K6 ["contentId"]
       52 DUPCLOSURE                       R5 K11 [PROTO_8]
       53 CAPTURE                          UPVAL U2
       54 SETTABLEKS                       R5 R4 K7 ["transformFn"]
       56 CALL                             R3 1 0
       57 RETURN                           R0 0
       58 GETTABLEKS                       R3 R1 K3 ["type"]
       60 JUMPIFNOTEQKS                    R3 K12 ["json_delta"] ; [+37]
       62 JUMPIF                           R2 ; [+1]
       63 RETURN                           R0 0
       64 GETTABLEKS                       R3 R2 K13 ["toolName"]
       66 FASTCALL2K                       ASSERT R3 K14 ; [+5]
       68 MOVE                             R5 R3
       69 LOADK                            R6 K14 ["Received delta for unknown tool?"]
       70 GETIMPORT                        R4 K2 [assert]
       72 CALL                             R4 2 0
       73 GETUPVAL                         R4 3
       74 GETTABLEKS                       R4 R4 K15 ["get"]
       76 MOVE                             R5 R3
       77 CALL                             R4 1 1
       78 JUMPIFNOT                        R4 ; [+25]
       79 GETUPVAL                         R5 4
       80 GETTABLEKS                       R5 R5 K16 ["needsStreamingToolUse"]
       82 MOVE                             R6 R4
       83 CALL                             R5 1 1
       84 JUMPIFNOT                        R5 ; [+19]
       85 GETUPVAL                         R5 1
       86 DUPTABLE                         R6 K8 [{"messageId", "contentId", "transformFn"}]
       87 GETUPVAL                         R7 0
       88 SETTABLEKS                       R7 R6 K5 ["messageId"]
       90 SETTABLEKS                       R0 R6 K6 ["contentId"]
       92 NEWCLOSURE                       R7 P3
       93 CAPTURE                          VAL R1
       94 SETTABLEKS                       R7 R6 K7 ["transformFn"]
       96 CALL                             R5 1 0
       97 RETURN                           R0 0
       98 GETUPVAL                         R3 5
       99 GETTABLEKS                       R3 R3 K17 ["assertNever"]
      101 GETTABLEKS                       R4 R1 K3 ["type"]
      103 CALL                             R3 1 0
      104 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["streaming"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["streaming"]
        5 GETTABLEKS                       R1 R1 K1 ["toolUse"]
        7 JUMPIF                           R1 ; [+3]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["streaming"]
       11 DUPTABLE                         R1 K4 [{["rawTransformValues"] = True}]
       12 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 DUPTABLE                         R2 K6 [{"messageId", "contentId", "transformFn"}]
        9 GETUPVAL                         R3 0
       10 SETTABLEKS                       R3 R2 K3 ["messageId"]
       12 SETTABLEKS                       R0 R2 K4 ["contentId"]
       14 DUPCLOSURE                       R3 K7 [PROTO_11]
       15 SETTABLEKS                       R3 R2 K5 ["transformFn"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["toolResult"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["collapseOnComplete"]
        8 JUMPIFNOT                        R1 ; [+3]
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["expanded"]
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R4 0
        1 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        3 LOADK                            R5 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R7 R1 K3 ["id"]
       11 GETTABLE                         R5 R6 R7
       12 JUMPIFEQKB                       R5 TRUE ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R6 R1 K3 ["id"]
       19 LOADNIL                          R7
       20 SETTABLE                         R7 R5 R6
       21 GETTABLEKS                       R5 R1 K4 ["name"]
       23 LOADNIL                          R6
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K5 ["FFlagAssistantToolExistenceRefactor"]
       27 JUMPIFNOT                        R7 ; [+25]
       28 GETTABLEKS                       R9 R1 K4 ["name"]
       30 LOADNIL                          R10
       31 GETUPVAL                         R11 3
       32 NEWCLOSURE                       R12 P0
       33 CAPTURE                          REF R10
       34 CAPTURE                          VAL R9
       35 CALL                             R11 1 0
       36 JUMPIF                           R10 ; [+4]
       37 MOVE                             R7 R9
       38 LOADNIL                          R8
       39 CLOSEUPVALS                      R10
       40 JUMP                             ; [+10]
       41 GETUPVAL                         R11 4
       42 GETTABLEKS                       R11 R11 K6 ["unpackServerIdentifier"]
       44 GETTABLEKS                       R12 R10 K7 ["serverIdentifier"]
       46 CALL                             R11 1 2
       47 GETTABLEKS                       R7 R10 K8 ["actualToolName"]
       49 MOVE                             R8 R12
       50 CLOSEUPVALS                      R10
       51 MOVE                             R5 R7
       52 MOVE                             R6 R8
       53 JUMPIF                           R2 ; [+44]
       54 GETUPVAL                         R7 5
       55 GETTABLEKS                       R7 R7 K9 ["logToolEnded"]
       57 DUPTABLE                         R8 K21 [{"messageGuid", "toolId", "toolName", "serverName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "isSlashCommand", "assistantMode", "toolResultContent"}]
       58 SETTABLEKS                       R3 R8 K10 ["messageGuid"]
       60 GETTABLEKS                       R9 R1 K3 ["id"]
       62 SETTABLEKS                       R9 R8 K11 ["toolId"]
       64 SETTABLEKS                       R5 R8 K12 ["toolName"]
       66 SETTABLEKS                       R6 R8 K13 ["serverName"]
       68 GETTABLEKS                       R9 R1 K14 ["startTime"]
       70 SETTABLEKS                       R9 R8 K14 ["startTime"]
       72 GETTABLEKS                       R9 R1 K15 ["startTimeAfterConfirmation"]
       74 SETTABLEKS                       R9 R8 K15 ["startTimeAfterConfirmation"]
       76 GETUPVAL                         R9 6
       77 GETTABLEKS                       R9 R9 K22 ["getTimestampMilliseconds"]
       79 CALL                             R9 0 1
       80 SETTABLEKS                       R9 R8 K16 ["endTime"]
       82 GETTABLEKS                       R9 R1 K17 ["isError"]
       84 SETTABLEKS                       R9 R8 K17 ["isError"]
       86 SETTABLEKS                       R4 R8 K18 ["isSlashCommand"]
       88 GETUPVAL                         R9 7
       89 GETTABLEKS                       R9 R9 K19 ["assistantMode"]
       91 SETTABLEKS                       R9 R8 K19 ["assistantMode"]
       93 GETTABLEKS                       R9 R1 K23 ["content"]
       95 SETTABLEKS                       R9 R8 K20 ["toolResultContent"]
       97 CALL                             R7 1 0
       98 GETUPVAL                         R7 8
       99 GETTABLEKS                       R7 R7 K24 ["get"]
      101 GETTABLEKS                       R8 R1 K4 ["name"]
      103 CALL                             R7 1 1
      104 JUMPIFNOT                        R7 ; [+6]
      105 GETUPVAL                         R8 9
      106 GETTABLEKS                       R8 R8 K25 ["getAutoExpand"]
      108 MOVE                             R9 R7
      109 CALL                             R8 1 1
      110 JUMP                             ; [+1]
      111 LOADNIL                          R8
      112 GETUPVAL                         R9 10
      113 DUPTABLE                         R10 K29 [{"messageId", "contentId", "transformFn"}]
      114 GETUPVAL                         R11 0
      115 SETTABLEKS                       R11 R10 K26 ["messageId"]
      117 SETTABLEKS                       R0 R10 K27 ["contentId"]
      119 NEWCLOSURE                       R11 P1
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R8
      122 SETTABLEKS                       R11 R10 K28 ["transformFn"]
      124 CALL                             R9 1 0
      125 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["toolUse"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["streaming"]
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R4 0
        1 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        3 LOADK                            R5 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R4 R1 K3 ["id"]
       10 JUMPIFEQKB                       R2 TRUE ; [+2]
       12 LOADB                            R5 0 +1
       13 LOADB                            R5 1
       14 SETTABLE                         R5 R3 R4
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["FFlagAssistantToolExistenceRefactor"]
       18 OR                               R3 R4 R2
       19 JUMPIFNOT                        R3 ; [+62]
       20 GETTABLEKS                       R4 R1 K5 ["name"]
       22 LOADNIL                          R5
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K4 ["FFlagAssistantToolExistenceRefactor"]
       26 JUMPIFNOT                        R6 ; [+25]
       27 GETTABLEKS                       R8 R1 K5 ["name"]
       29 LOADNIL                          R9
       30 GETUPVAL                         R10 3
       31 NEWCLOSURE                       R11 P0
       32 CAPTURE                          REF R9
       33 CAPTURE                          VAL R8
       34 CALL                             R10 1 0
       35 JUMPIF                           R9 ; [+4]
       36 MOVE                             R6 R8
       37 LOADNIL                          R7
       38 CLOSEUPVALS                      R9
       39 JUMP                             ; [+10]
       40 GETUPVAL                         R10 4
       41 GETTABLEKS                       R10 R10 K6 ["unpackServerIdentifier"]
       43 GETTABLEKS                       R11 R9 K7 ["serverIdentifier"]
       45 CALL                             R10 1 2
       46 GETTABLEKS                       R6 R9 K8 ["actualToolName"]
       48 MOVE                             R7 R11
       49 CLOSEUPVALS                      R9
       50 MOVE                             R4 R6
       51 MOVE                             R5 R7
       52 GETUPVAL                         R6 5
       53 GETTABLEKS                       R6 R6 K9 ["logToolStarted"]
       55 DUPTABLE                         R7 K18 [{"messageGuid", "sessionId", "toolId", "toolName", "serverName", "isSlashCommand", "assistantMode", "input"}]
       56 GETUPVAL                         R8 0
       57 SETTABLEKS                       R8 R7 K10 ["messageGuid"]
       59 GETUPVAL                         R8 6
       60 SETTABLEKS                       R8 R7 K11 ["sessionId"]
       62 GETTABLEKS                       R8 R1 K3 ["id"]
       64 SETTABLEKS                       R8 R7 K12 ["toolId"]
       66 SETTABLEKS                       R4 R7 K13 ["toolName"]
       68 SETTABLEKS                       R5 R7 K14 ["serverName"]
       70 SETTABLEKS                       R2 R7 K15 ["isSlashCommand"]
       72 GETUPVAL                         R8 7
       73 GETTABLEKS                       R8 R8 K16 ["assistantMode"]
       75 SETTABLEKS                       R8 R7 K16 ["assistantMode"]
       77 GETTABLEKS                       R8 R1 K17 ["input"]
       79 SETTABLEKS                       R8 R7 K17 ["input"]
       81 CALL                             R6 1 0
       82 GETUPVAL                         R4 8
       83 DUPTABLE                         R5 K22 [{"messageId", "contentId", "transformFn"}]
       84 GETUPVAL                         R6 0
       85 SETTABLEKS                       R6 R5 K19 ["messageId"]
       87 SETTABLEKS                       R0 R5 K20 ["contentId"]
       89 NEWCLOSURE                       R6 P1
       90 CAPTURE                          VAL R1
       91 SETTABLEKS                       R6 R5 K21 ["transformFn"]
       93 CALL                             R4 1 0
       94 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "review_each"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K5 ["setReviewEach"]
       11 CALL                             R0 0 0
       12 GETIMPORT                        R0 K8 [coroutine.status]
       14 GETUPVAL                         R1 3
       15 CALL                             R0 1 1
       16 JUMPIFNOTEQKS                    R0 K9 ["suspended"] ; [+5]
       18 GETIMPORT                        R0 K12 [task.spawn]
       20 GETUPVAL                         R1 3
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "accept_all_prompt"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K5 ["setAcceptAllPrompt"]
       11 CALL                             R0 0 0
       12 GETIMPORT                        R0 K8 [coroutine.status]
       14 GETUPVAL                         R1 3
       15 CALL                             R0 1 1
       16 JUMPIFNOTEQKS                    R0 K9 ["suspended"] ; [+5]
       18 GETIMPORT                        R0 K12 [task.spawn]
       20 GETUPVAL                         R1 3
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "accept_all_session"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K5 ["setAcceptAllSession"]
       11 CALL                             R0 0 0
       12 GETIMPORT                        R0 K8 [coroutine.status]
       14 GETUPVAL                         R1 3
       15 CALL                             R0 1 1
       16 JUMPIFNOTEQKS                    R0 K9 ["suspended"] ; [+5]
       18 GETIMPORT                        R0 K12 [task.spawn]
       20 GETUPVAL                         R1 3
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_20:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "accept"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K7 [coroutine.status]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 1
       12 JUMPIFNOTEQKS                    R0 K8 ["suspended"] ; [+6]
       14 GETIMPORT                        R0 K11 [task.spawn]
       16 GETUPVAL                         R1 2
       17 LOADB                            R2 1
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "reject"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K7 [coroutine.status]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 1
       12 JUMPIFNOTEQKS                    R0 K8 ["suspended"] ; [+6]
       14 GETIMPORT                        R0 K11 [task.spawn]
       16 GETUPVAL                         R1 2
       17 LOADB                            R2 0
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K4 [{["messageGuid"], ["result"] = "always_accept"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K5 ["setToolAlwaysAccepted"]
       11 GETUPVAL                         R1 3
       12 CALL                             R0 1 0
       13 GETIMPORT                        R0 K8 [coroutine.status]
       15 GETUPVAL                         R1 4
       16 CALL                             R0 1 1
       17 JUMPIFNOTEQKS                    R0 K9 ["suspended"] ; [+6]
       19 GETIMPORT                        R0 K12 [task.spawn]
       21 GETUPVAL                         R1 4
       22 LOADB                            R2 1
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_24:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["waitIfLocked"]
       10 CALL                             R2 0 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K4 ["getPreExecuteWarningResult"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K5 ["FFlagAssistantEval"]
       20 JUMPIFNOT                        R3 ; [+7]
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K6 ["getIsEvaluationRunning"]
       24 CALL                             R3 0 1
       25 JUMPIFNOT                        R3 ; [+2]
       26 LOADB                            R3 1
       27 RETURN                           R3 1
       28 JUMPIFNOT                        R2 ; [+3]
       29 GETTABLEKS                       R3 R2 K7 ["shouldConfirm"]
       31 JUMPIF                           R3 ; [+2]
       32 LOADB                            R3 1
       33 RETURN                           R3 1
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K8 ["lock"]
       37 CALL                             R3 0 0
       38 LOADNIL                          R3
       39 GETIMPORT                        R4 K11 [coroutine.running]
       41 CALL                             R4 0 1
       42 GETTABLEKS                       R5 R2 K12 ["warningMessage"]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R7 R2 K13 ["confirmationType"]
       47 GETUPVAL                         R8 5
       48 GETTABLEKS                       R8 R8 K14 ["ConfirmationType"]
       50 GETTABLEKS                       R8 R8 K15 ["ScriptChange"]
       52 JUMPIFNOTEQ                      R7 R8 ; [+57]
       54 DUPTABLE                         R7 K20 [{"type", "onReviewEach", "onAcceptAllPrompt", "onAcceptAllSession"}]
       55 GETUPVAL                         R8 6
       56 GETTABLEKS                       R8 R8 K21 ["Type"]
       58 SETTABLEKS                       R8 R7 K16 ["type"]
       60 NEWCLOSURE                       R8 P0
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R8 R7 K17 ["onReviewEach"]
       67 NEWCLOSURE                       R8 P1
       68 CAPTURE                          UPVAL U7
       69 CAPTURE                          VAL R6
       70 CAPTURE                          UPVAL U8
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R8 R7 K18 ["onAcceptAllPrompt"]
       74 NEWCLOSURE                       R8 P2
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          VAL R6
       77 CAPTURE                          UPVAL U8
       78 CAPTURE                          VAL R4
       79 SETTABLEKS                       R8 R7 K19 ["onAcceptAllSession"]
       81 GETUPVAL                         R8 9
       82 DUPTABLE                         R9 K24 [{"messageId", "content"}]
       83 GETUPVAL                         R10 0
       84 SETTABLEKS                       R10 R9 K22 ["messageId"]
       86 SETTABLEKS                       R7 R9 K23 ["content"]
       88 CALL                             R8 1 1
       89 MOVE                             R3 R8
       90 GETIMPORT                        R8 K26 [coroutine.yield]
       92 CALL                             R8 0 0
       93 GETUPVAL                         R8 10
       94 DUPTABLE                         R9 K29 [{"messageId", "contentId", "transformFn"}]
       95 GETUPVAL                         R10 0
       96 SETTABLEKS                       R10 R9 K22 ["messageId"]
       98 SETTABLEKS                       R3 R9 K27 ["contentId"]
      100 DUPCLOSURE                       R10 K30 [PROTO_20]
      101 SETTABLEKS                       R10 R9 K28 ["transformFn"]
      103 CALL                             R8 1 0
      104 GETUPVAL                         R8 1
      105 GETTABLEKS                       R8 R8 K31 ["unlock"]
      107 CALL                             R8 0 0
      108 LOADB                            R8 1
      109 RETURN                           R8 1
      110 MOVE                             R7 R0
      111 LOADNIL                          R8
      112 GETUPVAL                         R9 3
      113 GETTABLEKS                       R9 R9 K32 ["FFlagAssistantToolExistenceRefactor"]
      115 JUMPIFNOT                        R9 ; [+23]
      116 LOADNIL                          R11
      117 GETUPVAL                         R12 11
      118 NEWCLOSURE                       R13 P4
      119 CAPTURE                          REF R11
      120 CAPTURE                          VAL R0
      121 CALL                             R12 1 0
      122 JUMPIF                           R11 ; [+4]
      123 MOVE                             R9 R0
      124 LOADNIL                          R10
      125 CLOSEUPVALS                      R11
      126 JUMP                             ; [+10]
      127 GETUPVAL                         R12 12
      128 GETTABLEKS                       R12 R12 K33 ["unpackServerIdentifier"]
      130 GETTABLEKS                       R13 R11 K34 ["serverIdentifier"]
      132 CALL                             R12 1 2
      133 GETTABLEKS                       R9 R11 K35 ["actualToolName"]
      135 MOVE                             R10 R13
      136 CLOSEUPVALS                      R11
      137 MOVE                             R7 R9
      138 MOVE                             R8 R10
      139 GETUPVAL                         R9 7
      140 GETTABLEKS                       R9 R9 K36 ["logToolConfirmationShown"]
      142 DUPTABLE                         R10 K40 [{"messageGuid", "toolName", "serverName", "warningMessage"}]
      143 SETTABLEKS                       R6 R10 K37 ["messageGuid"]
      145 SETTABLEKS                       R7 R10 K38 ["toolName"]
      147 SETTABLEKS                       R8 R10 K39 ["serverName"]
      149 SETTABLEKS                       R5 R10 K12 ["warningMessage"]
      151 CALL                             R9 1 0
      152 DUPTABLE                         R9 K45 [{"type", "toolName", "toolInput", "warningMessage", "onConfirm", "onReject", "onAlwaysAccept"}]
      153 GETUPVAL                         R10 13
      154 GETTABLEKS                       R10 R10 K21 ["Type"]
      156 SETTABLEKS                       R10 R9 K16 ["type"]
      158 SETTABLEKS                       R0 R9 K38 ["toolName"]
      160 SETTABLEKS                       R1 R9 K41 ["toolInput"]
      162 SETTABLEKS                       R5 R9 K12 ["warningMessage"]
      164 NEWCLOSURE                       R10 P5
      165 CAPTURE                          UPVAL U7
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R4
      168 SETTABLEKS                       R10 R9 K42 ["onConfirm"]
      170 NEWCLOSURE                       R10 P6
      171 CAPTURE                          UPVAL U7
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R4
      174 SETTABLEKS                       R10 R9 K43 ["onReject"]
      176 NEWCLOSURE                       R10 P7
      177 CAPTURE                          UPVAL U7
      178 CAPTURE                          VAL R6
      179 CAPTURE                          UPVAL U2
      180 CAPTURE                          VAL R0
      181 CAPTURE                          VAL R4
      182 SETTABLEKS                       R10 R9 K44 ["onAlwaysAccept"]
      184 GETUPVAL                         R10 9
      185 DUPTABLE                         R11 K24 [{"messageId", "content"}]
      186 GETUPVAL                         R12 0
      187 SETTABLEKS                       R12 R11 K22 ["messageId"]
      189 SETTABLEKS                       R9 R11 K23 ["content"]
      191 CALL                             R10 1 1
      192 MOVE                             R3 R10
      193 GETIMPORT                        R10 K26 [coroutine.yield]
      195 CALL                             R10 0 1
      196 GETUPVAL                         R11 10
      197 DUPTABLE                         R12 K29 [{"messageId", "contentId", "transformFn"}]
      198 GETUPVAL                         R13 0
      199 SETTABLEKS                       R13 R12 K22 ["messageId"]
      201 SETTABLEKS                       R3 R12 K27 ["contentId"]
      203 DUPCLOSURE                       R13 K46 [PROTO_24]
      204 SETTABLEKS                       R13 R12 K28 ["transformFn"]
      206 CALL                             R11 1 0
      207 GETUPVAL                         R11 1
      208 GETTABLEKS                       R11 R11 K31 ["unlock"]
      210 CALL                             R11 0 0
      211 RETURN                           R10 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getToolCallOptions"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resetPrompt"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["threadId"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 JUMP                             ; [+2]
        7 GETTABLEKS                       R2 R0 K1 ["editContent"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R3 R0 K2 ["addContent"]
       16 GETTABLEKS                       R4 R0 K3 ["eventLogger"]
       18 GETTABLEKS                       R5 R0 K4 ["withClient"]
       20 LOADNIL                          R6
       21 GETTABLEKS                       R7 R0 K5 ["sessionId"]
       23 NEWTABLE                         R8 0 0
       25 NEWCLOSURE                       R9 P2
       26 CAPTURE                          VAL R5
       27 CAPTURE                          UPVAL U0
       28 NEWCLOSURE                       R10 P3
       29 CAPTURE                          REF R6
       30 NEWCLOSURE                       R11 P4
       31 CAPTURE                          REF R6
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U9
       41 CAPTURE                          VAL R3
       42 NEWCLOSURE                       R12 P5
       43 CAPTURE                          REF R6
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U10
       49 NEWCLOSURE                       R13 P6
       50 CAPTURE                          REF R6
       51 CAPTURE                          VAL R2
       52 NEWCLOSURE                       R14 P7
       53 CAPTURE                          REF R6
       54 CAPTURE                          VAL R8
       55 CAPTURE                          UPVAL U11
       56 CAPTURE                          VAL R5
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          VAL R4
       59 CAPTURE                          UPVAL U12
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          VAL R2
       64 NEWCLOSURE                       R15 P8
       65 CAPTURE                          REF R6
       66 CAPTURE                          VAL R8
       67 CAPTURE                          UPVAL U11
       68 CAPTURE                          VAL R5
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R2
       74 GETUPVAL                         R16 13
       75 GETTABLEKS                       R16 R16 K6 ["createMutex"]
       77 CALL                             R16 0 1
       78 NEWCLOSURE                       R17 P9
       79 CAPTURE                          REF R6
       80 CAPTURE                          VAL R16
       81 CAPTURE                          UPVAL U14
       82 CAPTURE                          UPVAL U11
       83 CAPTURE                          UPVAL U15
       84 CAPTURE                          UPVAL U10
       85 CAPTURE                          UPVAL U16
       86 CAPTURE                          VAL R4
       87 CAPTURE                          UPVAL U17
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R5
       91 CAPTURE                          UPVAL U0
       92 CAPTURE                          UPVAL U18
       93 DUPCLOSURE                       R18 K7 [PROTO_26]
       94 CAPTURE                          UPVAL U14
       95 DUPCLOSURE                       R19 K8 [PROTO_27]
       96 CAPTURE                          UPVAL U17
       97 DUPTABLE                         R20 K18 [{"onNewMessage", "onContentStart", "onContentDelta", "onContentFinished", "onToolResult", "onPreExecuteToolUse", "checkToolConfirmationRequestAsync", "getToolCallOptions", "onPromptEnd"}]
       98 SETTABLEKS                       R10 R20 K9 ["onNewMessage"]
      100 SETTABLEKS                       R11 R20 K10 ["onContentStart"]
      102 SETTABLEKS                       R12 R20 K11 ["onContentDelta"]
      104 SETTABLEKS                       R13 R20 K12 ["onContentFinished"]
      106 SETTABLEKS                       R14 R20 K13 ["onToolResult"]
      108 SETTABLEKS                       R15 R20 K14 ["onPreExecuteToolUse"]
      110 SETTABLEKS                       R17 R20 K15 ["checkToolConfirmationRequestAsync"]
      112 SETTABLEKS                       R18 R20 K16 ["getToolCallOptions"]
      114 SETTABLEKS                       R19 R20 K17 ["onPromptEnd"]
      116 CLOSEUPVALS                      R6
      117 RETURN                           R20 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R3 K10 ["ContentWidgetRegistry"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Dash"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["AssistantEval"]
       36 GETTABLEKS                       R5 R5 K13 ["EvalController"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Guest"]
       43 GETTABLEKS                       R6 R6 K15 ["Environment"]
       45 GETTABLEKS                       R6 R6 K16 ["EventLogger"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K17 ["Flags"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K18 ["Components"]
       57 GETTABLEKS                       R8 R8 K9 ["ContentWidgets"]
       59 GETTABLEKS                       R8 R8 K19 ["GenericToolContentWidget"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K18 ["Components"]
       66 GETTABLEKS                       R9 R9 K9 ["ContentWidgets"]
       68 GETTABLEKS                       R9 R9 K20 ["InputRequestedContentWidget"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K6 ["Parent"]
       75 GETTABLEKS                       R10 R10 K21 ["ModelContextProtocol"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K8 ["Util"]
       82 GETTABLEKS                       R11 R11 K22 ["MultiEditAcceptanceState"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K18 ["Components"]
       89 GETTABLEKS                       R12 R12 K9 ["ContentWidgets"]
       91 GETTABLEKS                       R12 R12 K23 ["ScriptChangeConfirmationContentWidget"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K18 ["Components"]
       98 GETTABLEKS                       R13 R13 K9 ["ContentWidgets"]
      100 GETTABLEKS                       R13 R13 K24 ["SummarizedContentWidget"]
      102 CALL                             R12 1 1
      103 GETTABLEKS                       R13 R1 K25 ["Engine"]
      105 GETTABLEKS                       R13 R13 K26 ["TaskCollector"]
      107 GETIMPORT                        R14 K5 [require]
      109 GETTABLEKS                       R15 R0 K18 ["Components"]
      111 GETTABLEKS                       R15 R15 K9 ["ContentWidgets"]
      113 GETTABLEKS                       R15 R15 K27 ["TextContentWidget"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K5 [require]
      118 GETTABLEKS                       R16 R0 K18 ["Components"]
      120 GETTABLEKS                       R16 R16 K9 ["ContentWidgets"]
      122 GETTABLEKS                       R16 R16 K28 ["ThinkingContentWidget"]
      124 CALL                             R15 1 1
      125 GETTABLEKS                       R16 R1 K25 ["Engine"]
      127 GETTABLEKS                       R16 R16 K29 ["Time"]
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R18 R0 K18 ["Components"]
      133 GETTABLEKS                       R18 R18 K9 ["ContentWidgets"]
      135 GETTABLEKS                       R18 R18 K30 ["ToolConfirmationContentWidget"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K5 [require]
      140 GETTABLEKS                       R19 R0 K8 ["Util"]
      142 GETTABLEKS                       R19 R19 K9 ["ContentWidgets"]
      144 GETTABLEKS                       R19 R19 K31 ["ToolWidgetMappingRegistry"]
      146 CALL                             R18 1 1
      147 GETIMPORT                        R19 K5 [require]
      149 GETTABLEKS                       R20 R0 K32 ["Resources"]
      151 GETTABLEKS                       R20 R20 K33 ["Localization"]
      153 GETTABLEKS                       R20 R20 K34 ["Translator"]
      155 CALL                             R19 1 1
      156 GETIMPORT                        R20 K5 [require]
      158 GETTABLEKS                       R21 R0 K35 ["Types"]
      160 CALL                             R20 1 1
      161 GETIMPORT                        R21 K5 [require]
      163 GETTABLEKS                       R22 R0 K18 ["Components"]
      165 GETTABLEKS                       R22 R22 K36 ["UIToolRegistry"]
      167 CALL                             R21 1 1
      168 GETIMPORT                        R22 K5 [require]
      170 GETTABLEKS                       R23 R0 K37 ["Hooks"]
      172 GETTABLEKS                       R23 R23 K38 ["useAddContent"]
      174 CALL                             R22 1 1
      175 GETIMPORT                        R23 K5 [require]
      177 GETTABLEKS                       R24 R0 K37 ["Hooks"]
      179 GETTABLEKS                       R24 R24 K39 ["useEditContent"]
      181 CALL                             R23 1 1
      182 GETTABLEKS                       R24 R9 K8 ["Util"]
      184 GETTABLEKS                       R24 R24 K40 ["MultiplexUtils"]
      186 NEWTABLE                         R25 1 0
      188 DUPCLOSURE                       R26 K41 [PROTO_28]
      189 CAPTURE                          VAL R24
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R7
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R3
      199 CAPTURE                          VAL R20
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R21
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R11
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R17
      208 SETTABLEKS                       R26 R25 K42 ["new"]
      210 RETURN                           R25 1
