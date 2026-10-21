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
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_3:
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
       19 JUMP                             ; [+82]
       20 GETTABLEKS                       R2 R0 K3 ["type"]
       22 JUMPIFNOTEQKS                    R2 K8 ["thinking"] ; [+9]
       24 DUPTABLE                         R2 K12 [{["type"], ["thinking"] = "", ["signature"] = "", ["expanded"] = False}]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K7 ["Type"]
       28 SETTABLEKS                       R3 R2 K3 ["type"]
       30 MOVE                             R1 R2
       31 JUMP                             ; [+70]
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
       74 JUMP                             ; [+27]
       75 DUPTABLE                         R4 K20 [{["type"], ["expanded"] = False}]
       76 GETUPVAL                         R5 4
       77 GETTABLEKS                       R5 R5 K7 ["Type"]
       79 SETTABLEKS                       R5 R4 K3 ["type"]
       81 MOVE                             R1 R4
       82 JUMP                             ; [+19]
       83 GETTABLEKS                       R2 R0 K3 ["type"]
       85 JUMPIFNOTEQKS                    R2 K21 ["compaction_status"] ; [+16]
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
      102 GETUPVAL                         R2 8
      103 GETTABLEKS                       R2 R2 K27 ["assign"]
      105 MOVE                             R3 R1
      106 DUPTABLE                         R4 K29 [{"streaming"}]
      107 NEWTABLE                         R5 0 0
      109 SETTABLEKS                       R5 R4 K28 ["streaming"]
      111 CALL                             R2 2 1
      112 GETUPVAL                         R3 9
      113 DUPTABLE                         R4 K32 [{"messageId", "content"}]
      114 GETUPVAL                         R5 0
      115 SETTABLEKS                       R5 R4 K30 ["messageId"]
      117 SETTABLEKS                       R2 R4 K31 ["content"]
      119 CALL                             R3 1 1
      120 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["text"]
        3 SETTABLEKS                       R1 R0 K0 ["text"]
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["thinking"]
        3 SETTABLEKS                       R1 R0 K0 ["thinking"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["signature"]
        8 SETTABLEKS                       R1 R0 K1 ["signature"]
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Compaction"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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
       52 DUPCLOSURE                       R5 K11 [PROTO_6]
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

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["streaming"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["streaming"]
        5 GETTABLEKS                       R1 R1 K1 ["toolUse"]
        7 JUMPIF                           R1 ; [+3]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["streaming"]
       11 DUPTABLE                         R1 K4 [{["rawTransformValues"] = True}]
       12 RETURN                           R1 1

PROTO_10:
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
       14 DUPCLOSURE                       R3 K7 [PROTO_9]
       15 SETTABLEKS                       R3 R2 K5 ["transformFn"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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
       21 JUMPIF                           R2 ; [+44]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K4 ["logToolEnded"]
       25 DUPTABLE                         R6 K15 [{"messageGuid", "toolId", "toolName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "isSlashCommand", "assistantMode", "toolResultContent"}]
       26 SETTABLEKS                       R3 R6 K5 ["messageGuid"]
       28 GETTABLEKS                       R7 R1 K3 ["id"]
       30 SETTABLEKS                       R7 R6 K6 ["toolId"]
       32 GETTABLEKS                       R7 R1 K16 ["name"]
       34 SETTABLEKS                       R7 R6 K7 ["toolName"]
       36 GETTABLEKS                       R7 R1 K8 ["startTime"]
       38 SETTABLEKS                       R7 R6 K8 ["startTime"]
       40 GETTABLEKS                       R7 R1 K9 ["startTimeAfterConfirmation"]
       42 SETTABLEKS                       R7 R6 K9 ["startTimeAfterConfirmation"]
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R7 R7 K17 ["getTimestampMilliseconds"]
       47 CALL                             R7 0 1
       48 SETTABLEKS                       R7 R6 K10 ["endTime"]
       50 GETTABLEKS                       R7 R1 K11 ["isError"]
       52 SETTABLEKS                       R7 R6 K11 ["isError"]
       54 SETTABLEKS                       R4 R6 K12 ["isSlashCommand"]
       56 GETUPVAL                         R7 4
       57 GETTABLEKS                       R7 R7 K13 ["assistantMode"]
       59 SETTABLEKS                       R7 R6 K13 ["assistantMode"]
       61 GETTABLEKS                       R7 R1 K18 ["content"]
       63 SETTABLEKS                       R7 R6 K14 ["toolResultContent"]
       65 CALL                             R5 1 0
       66 GETUPVAL                         R5 5
       67 GETTABLEKS                       R5 R5 K19 ["get"]
       69 GETTABLEKS                       R6 R1 K16 ["name"]
       71 CALL                             R5 1 1
       72 JUMPIFNOT                        R5 ; [+6]
       73 GETUPVAL                         R6 6
       74 GETTABLEKS                       R6 R6 K20 ["getAutoExpand"]
       76 MOVE                             R7 R5
       77 CALL                             R6 1 1
       78 JUMP                             ; [+1]
       79 LOADNIL                          R6
       80 GETUPVAL                         R7 7
       81 DUPTABLE                         R8 K24 [{"messageId", "contentId", "transformFn"}]
       82 GETUPVAL                         R9 0
       83 SETTABLEKS                       R9 R8 K21 ["messageId"]
       85 SETTABLEKS                       R0 R8 K22 ["contentId"]
       87 NEWCLOSURE                       R9 P0
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R6
       90 SETTABLEKS                       R9 R8 K23 ["transformFn"]
       92 CALL                             R7 1 0
       93 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["toolUse"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["streaming"]
        6 RETURN                           R0 0

PROTO_14:
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
       15 JUMPIFNOT                        R2 ; [+30]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K4 ["logToolStarted"]
       19 DUPTABLE                         R4 K12 [{"messageGuid", "sessionId", "toolId", "toolName", "isSlashCommand", "assistantMode", "input"}]
       20 GETUPVAL                         R5 0
       21 SETTABLEKS                       R5 R4 K5 ["messageGuid"]
       23 GETUPVAL                         R5 3
       24 SETTABLEKS                       R5 R4 K6 ["sessionId"]
       26 GETTABLEKS                       R5 R1 K3 ["id"]
       28 SETTABLEKS                       R5 R4 K7 ["toolId"]
       30 GETTABLEKS                       R5 R1 K13 ["name"]
       32 SETTABLEKS                       R5 R4 K8 ["toolName"]
       34 SETTABLEKS                       R2 R4 K9 ["isSlashCommand"]
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R5 R5 K10 ["assistantMode"]
       39 SETTABLEKS                       R5 R4 K10 ["assistantMode"]
       41 GETTABLEKS                       R5 R1 K11 ["input"]
       43 SETTABLEKS                       R5 R4 K11 ["input"]
       45 CALL                             R3 1 0
       46 GETUPVAL                         R3 5
       47 DUPTABLE                         R4 K17 [{"messageId", "contentId", "transformFn"}]
       48 GETUPVAL                         R5 0
       49 SETTABLEKS                       R5 R4 K14 ["messageId"]
       51 SETTABLEKS                       R0 R4 K15 ["contentId"]
       53 NEWCLOSURE                       R5 P0
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R5 R4 K16 ["transformFn"]
       57 CALL                             R3 1 0
       58 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 RETURN                           R0 0

PROTO_23:
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
      100 DUPCLOSURE                       R10 K30 [PROTO_18]
      101 SETTABLEKS                       R10 R9 K28 ["transformFn"]
      103 CALL                             R8 1 0
      104 GETUPVAL                         R8 1
      105 GETTABLEKS                       R8 R8 K31 ["unlock"]
      107 CALL                             R8 0 0
      108 LOADB                            R8 1
      109 RETURN                           R8 1
      110 GETUPVAL                         R7 7
      111 GETTABLEKS                       R7 R7 K32 ["logToolConfirmationShown"]
      113 DUPTABLE                         R8 K35 [{"messageGuid", "toolName", "warningMessage"}]
      114 SETTABLEKS                       R6 R8 K33 ["messageGuid"]
      116 SETTABLEKS                       R0 R8 K34 ["toolName"]
      118 SETTABLEKS                       R5 R8 K12 ["warningMessage"]
      120 CALL                             R7 1 0
      121 DUPTABLE                         R7 K40 [{"type", "toolName", "toolInput", "warningMessage", "onConfirm", "onReject", "onAlwaysAccept"}]
      122 GETUPVAL                         R8 11
      123 GETTABLEKS                       R8 R8 K21 ["Type"]
      125 SETTABLEKS                       R8 R7 K16 ["type"]
      127 SETTABLEKS                       R0 R7 K34 ["toolName"]
      129 SETTABLEKS                       R1 R7 K36 ["toolInput"]
      131 SETTABLEKS                       R5 R7 K12 ["warningMessage"]
      133 NEWCLOSURE                       R8 P4
      134 CAPTURE                          UPVAL U7
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R4
      137 SETTABLEKS                       R8 R7 K37 ["onConfirm"]
      139 NEWCLOSURE                       R8 P5
      140 CAPTURE                          UPVAL U7
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R4
      143 SETTABLEKS                       R8 R7 K38 ["onReject"]
      145 NEWCLOSURE                       R8 P6
      146 CAPTURE                          UPVAL U7
      147 CAPTURE                          VAL R6
      148 CAPTURE                          UPVAL U2
      149 CAPTURE                          VAL R0
      150 CAPTURE                          VAL R4
      151 SETTABLEKS                       R8 R7 K39 ["onAlwaysAccept"]
      153 GETUPVAL                         R8 9
      154 DUPTABLE                         R9 K24 [{"messageId", "content"}]
      155 GETUPVAL                         R10 0
      156 SETTABLEKS                       R10 R9 K22 ["messageId"]
      158 SETTABLEKS                       R7 R9 K23 ["content"]
      160 CALL                             R8 1 1
      161 MOVE                             R3 R8
      162 GETIMPORT                        R8 K26 [coroutine.yield]
      164 CALL                             R8 0 1
      165 GETUPVAL                         R9 10
      166 DUPTABLE                         R10 K29 [{"messageId", "contentId", "transformFn"}]
      167 GETUPVAL                         R11 0
      168 SETTABLEKS                       R11 R10 K22 ["messageId"]
      170 SETTABLEKS                       R3 R10 K27 ["contentId"]
      172 DUPCLOSURE                       R11 K41 [PROTO_22]
      173 SETTABLEKS                       R11 R10 K28 ["transformFn"]
      175 CALL                             R9 1 0
      176 GETUPVAL                         R9 1
      177 GETTABLEKS                       R9 R9 K31 ["unlock"]
      179 CALL                             R9 0 0
      180 RETURN                           R8 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getToolCallOptions"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resetPrompt"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_26:
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
       18 LOADNIL                          R5
       19 GETTABLEKS                       R6 R0 K4 ["sessionId"]
       21 NEWTABLE                         R7 0 0
       23 NEWCLOSURE                       R8 P2
       24 CAPTURE                          REF R5
       25 NEWCLOSURE                       R9 P3
       26 CAPTURE                          REF R5
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          VAL R3
       36 NEWCLOSURE                       R10 P4
       37 CAPTURE                          REF R5
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U8
       43 NEWCLOSURE                       R11 P5
       44 CAPTURE                          REF R5
       45 CAPTURE                          VAL R2
       46 NEWCLOSURE                       R12 P6
       47 CAPTURE                          REF R5
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R4
       50 CAPTURE                          UPVAL U9
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R2
       55 NEWCLOSURE                       R13 P7
       56 CAPTURE                          REF R5
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R2
       62 GETUPVAL                         R14 10
       63 GETTABLEKS                       R14 R14 K5 ["createMutex"]
       65 CALL                             R14 0 1
       66 NEWCLOSURE                       R15 P8
       67 CAPTURE                          REF R5
       68 CAPTURE                          VAL R14
       69 CAPTURE                          UPVAL U11
       70 CAPTURE                          UPVAL U12
       71 CAPTURE                          UPVAL U13
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          UPVAL U14
       74 CAPTURE                          VAL R4
       75 CAPTURE                          UPVAL U15
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R2
       78 CAPTURE                          UPVAL U16
       79 DUPCLOSURE                       R16 K6 [PROTO_24]
       80 CAPTURE                          UPVAL U11
       81 DUPCLOSURE                       R17 K7 [PROTO_25]
       82 CAPTURE                          UPVAL U15
       83 DUPTABLE                         R18 K17 [{"onNewMessage", "onContentStart", "onContentDelta", "onContentFinished", "onToolResult", "onPreExecuteToolUse", "checkToolConfirmationRequestAsync", "getToolCallOptions", "onPromptEnd"}]
       84 SETTABLEKS                       R8 R18 K8 ["onNewMessage"]
       86 SETTABLEKS                       R9 R18 K9 ["onContentStart"]
       88 SETTABLEKS                       R10 R18 K10 ["onContentDelta"]
       90 SETTABLEKS                       R11 R18 K11 ["onContentFinished"]
       92 SETTABLEKS                       R12 R18 K12 ["onToolResult"]
       94 SETTABLEKS                       R13 R18 K13 ["onPreExecuteToolUse"]
       96 SETTABLEKS                       R15 R18 K14 ["checkToolConfirmationRequestAsync"]
       98 SETTABLEKS                       R16 R18 K15 ["getToolCallOptions"]
      100 SETTABLEKS                       R17 R18 K16 ["onPromptEnd"]
      102 CLOSEUPVALS                      R5
      103 RETURN                           R18 1

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
       64 GETTABLEKS                       R9 R0 K6 ["Parent"]
       66 GETTABLEKS                       R9 R9 K20 ["ModelContextProtocol"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K8 ["Util"]
       73 GETTABLEKS                       R10 R10 K21 ["MultiEditAcceptanceState"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K18 ["Components"]
       80 GETTABLEKS                       R11 R11 K9 ["ContentWidgets"]
       82 GETTABLEKS                       R11 R11 K22 ["ScriptChangeConfirmationContentWidget"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K18 ["Components"]
       89 GETTABLEKS                       R12 R12 K9 ["ContentWidgets"]
       91 GETTABLEKS                       R12 R12 K23 ["SummarizedContentWidget"]
       93 CALL                             R11 1 1
       94 GETTABLEKS                       R12 R1 K24 ["Engine"]
       96 GETTABLEKS                       R12 R12 K25 ["TaskCollector"]
       98 GETIMPORT                        R13 K5 [require]
      100 GETTABLEKS                       R14 R0 K18 ["Components"]
      102 GETTABLEKS                       R14 R14 K9 ["ContentWidgets"]
      104 GETTABLEKS                       R14 R14 K26 ["TextContentWidget"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K5 [require]
      109 GETTABLEKS                       R15 R0 K18 ["Components"]
      111 GETTABLEKS                       R15 R15 K9 ["ContentWidgets"]
      113 GETTABLEKS                       R15 R15 K27 ["ThinkingContentWidget"]
      115 CALL                             R14 1 1
      116 GETTABLEKS                       R15 R1 K24 ["Engine"]
      118 GETTABLEKS                       R15 R15 K28 ["Time"]
      120 GETIMPORT                        R16 K5 [require]
      122 GETTABLEKS                       R17 R0 K18 ["Components"]
      124 GETTABLEKS                       R17 R17 K9 ["ContentWidgets"]
      126 GETTABLEKS                       R17 R17 K29 ["ToolConfirmationContentWidget"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R18 R0 K8 ["Util"]
      133 GETTABLEKS                       R18 R18 K9 ["ContentWidgets"]
      135 GETTABLEKS                       R18 R18 K30 ["ToolWidgetMappingRegistry"]
      137 CALL                             R17 1 1
      138 GETIMPORT                        R18 K5 [require]
      140 GETTABLEKS                       R19 R0 K31 ["Resources"]
      142 GETTABLEKS                       R19 R19 K32 ["Localization"]
      144 GETTABLEKS                       R19 R19 K33 ["Translator"]
      146 CALL                             R18 1 1
      147 GETIMPORT                        R19 K5 [require]
      149 GETTABLEKS                       R20 R0 K34 ["Types"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K5 [require]
      154 GETTABLEKS                       R21 R0 K18 ["Components"]
      156 GETTABLEKS                       R21 R21 K35 ["UIToolRegistry"]
      158 CALL                             R20 1 1
      159 GETIMPORT                        R21 K5 [require]
      161 GETTABLEKS                       R22 R0 K36 ["Hooks"]
      163 GETTABLEKS                       R22 R22 K37 ["useAddContent"]
      165 CALL                             R21 1 1
      166 GETIMPORT                        R22 K5 [require]
      168 GETTABLEKS                       R23 R0 K36 ["Hooks"]
      170 GETTABLEKS                       R23 R23 K38 ["useEditContent"]
      172 CALL                             R22 1 1
      173 NEWTABLE                         R23 1 0
      175 DUPCLOSURE                       R24 K39 [PROTO_26]
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R18
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R15
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R4
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R16
      193 SETTABLEKS                       R24 R23 K40 ["new"]
      195 RETURN                           R23 1
