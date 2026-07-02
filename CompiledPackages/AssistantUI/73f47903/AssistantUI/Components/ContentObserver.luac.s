PROTO_0:
        0 PREPVARARGS                      1
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 MOVE                             R1 R0
        5 GETVARARGS                       R2 -1
        6 CALL                             R1 -1 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R3 1
        1 NAMECALL                         R1 R0 K0 ["getToolInfoByAlias"]
        3 CALL                             R1 2 1
        4 SETUPVAL                         R1 0
        5 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 LOADNIL                          R1
        8 GETTABLEKS                       R2 R0 K3 ["type"]
       10 JUMPIFNOTEQKS                    R2 K4 ["text"] ; [+9]
       12 DUPTABLE                         R2 K8 [{["type"], ["text"] = "", ["generating"] = True}]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K9 ["Type"]
       16 SETTABLEKS                       R3 R2 K3 ["type"]
       18 MOVE                             R1 R2
       19 JUMP                             ; [+135]
       20 GETTABLEKS                       R2 R0 K3 ["type"]
       22 JUMPIFNOTEQKS                    R2 K10 ["thinking"] ; [+9]
       24 DUPTABLE                         R2 K14 [{["type"], ["thinking"] = "", ["signature"] = "", ["generating"] = True, ["expanded"] = False}]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K9 ["Type"]
       28 SETTABLEKS                       R3 R2 K3 ["type"]
       30 MOVE                             R1 R2
       31 JUMP                             ; [+123]
       32 GETTABLEKS                       R2 R0 K3 ["type"]
       34 JUMPIFNOTEQKS                    R2 K15 ["tool_use"] ; [+54]
       36 GETTABLEKS                       R2 R0 K16 ["name"]
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K17 ["getStreamTransform"]
       41 MOVE                             R4 R2
       42 CALL                             R3 1 1
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R4 R4 K18 ["None"]
       46 JUMPIFNOTEQ                      R3 R4 ; [+3]
       48 LOADNIL                          R4
       49 RETURN                           R4 1
       50 JUMPIFEQKNIL                     R3 ; [+7]
       52 GETTABLEKS                       R4 R3 K19 ["transformInitialContent"]
       54 MOVE                             R5 R0
       55 CALL                             R4 1 1
       56 MOVE                             R1 R4
       57 JUMP                             ; [+97]
       58 GETUPVAL                         R5 4
       59 CALL                             R5 0 1
       60 JUMPIFNOT                        R5 ; [+6]
       61 GETUPVAL                         R4 5
       62 GETTABLEKS                       R4 R4 K20 ["get"]
       64 MOVE                             R5 R2
       65 CALL                             R4 1 1
       66 JUMP                             ; [+1]
       67 LOADNIL                          R4
       68 JUMPIFNOT                        R4 ; [+10]
       69 GETUPVAL                         R5 6
       70 GETTABLEKS                       R5 R5 K9 ["Type"]
       72 JUMPIFEQ                         R4 R5 ; [+6]
       74 DUPTABLE                         R5 K21 [{"type"}]
       75 SETTABLEKS                       R4 R5 K3 ["type"]
       77 MOVE                             R1 R5
       78 JUMP                             ; [+76]
       79 DUPTABLE                         R5 K23 [{["type"], ["toolIdentifier"], ["expanded"] = False}]
       80 GETUPVAL                         R6 6
       81 GETTABLEKS                       R6 R6 K9 ["Type"]
       83 SETTABLEKS                       R6 R5 K3 ["type"]
       85 SETTABLEKS                       R2 R5 K22 ["toolIdentifier"]
       87 MOVE                             R1 R5
       88 JUMP                             ; [+66]
       89 GETTABLEKS                       R2 R0 K3 ["type"]
       91 JUMPIFNOTEQKS                    R2 K24 ["compaction_status"] ; [+17]
       93 DUPTABLE                         R2 K26 [{"type", "summary"}]
       94 GETUPVAL                         R3 7
       95 GETTABLEKS                       R3 R3 K9 ["Type"]
       97 SETTABLEKS                       R3 R2 K3 ["type"]
       99 GETUPVAL                         R3 8
      100 LOADK                            R5 K27 ["Compaction"]
      101 LOADK                            R6 K28 ["InProgress"]
      102 NAMECALL                         R3 R3 K29 ["getText"]
      104 CALL                             R3 3 1
      105 SETTABLEKS                       R3 R2 K25 ["summary"]
      107 MOVE                             R1 R2
      108 JUMP                             ; [+46]
      109 GETTABLEKS                       R2 R0 K3 ["type"]
      111 JUMPIFNOTEQKS                    R2 K30 ["input_requested"] ; [+43]
      113 DUPTABLE                         R2 K39 [{["type"], ["expanded"] = False, ["status"], ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["onContinue"], ["onRevive"], ["canConfirm"]}]
      114 GETUPVAL                         R3 9
      115 GETTABLEKS                       R3 R3 K9 ["Type"]
      117 SETTABLEKS                       R3 R2 K3 ["type"]
      119 GETUPVAL                         R3 9
      120 GETTABLEKS                       R3 R3 K40 ["InputStatus"]
      122 GETTABLEKS                       R3 R3 K41 ["Required"]
      124 SETTABLEKS                       R3 R2 K31 ["status"]
      126 GETTABLEKS                       R3 R0 K32 ["title"]
      128 SETTABLEKS                       R3 R2 K32 ["title"]
      130 GETTABLEKS                       R3 R0 K33 ["description"]
      132 SETTABLEKS                       R3 R2 K33 ["description"]
      134 GETTABLEKS                       R3 R0 K34 ["confirmButtonText"]
      136 SETTABLEKS                       R3 R2 K34 ["confirmButtonText"]
      138 GETTABLEKS                       R3 R0 K35 ["propertyRows"]
      140 SETTABLEKS                       R3 R2 K35 ["propertyRows"]
      142 GETTABLEKS                       R3 R0 K36 ["onContinue"]
      144 SETTABLEKS                       R3 R2 K36 ["onContinue"]
      146 GETTABLEKS                       R3 R0 K37 ["onRevive"]
      148 SETTABLEKS                       R3 R2 K37 ["onRevive"]
      150 GETTABLEKS                       R3 R0 K38 ["canConfirm"]
      152 SETTABLEKS                       R3 R2 K38 ["canConfirm"]
      154 MOVE                             R1 R2
      155 GETUPVAL                         R2 10
      156 GETTABLEKS                       R2 R2 K42 ["Dictionary"]
      158 GETTABLEKS                       R2 R2 K43 ["join"]
      160 MOVE                             R3 R1
      161 DUPTABLE                         R4 K44 [{["generating"] = True}]
      162 CALL                             R2 2 1
      163 GETUPVAL                         R3 11
      164 DUPTABLE                         R4 K47 [{"messageId", "content"}]
      165 GETUPVAL                         R5 0
      166 SETTABLEKS                       R5 R4 K45 ["messageId"]
      168 SETTABLEKS                       R2 R4 K46 ["content"]
      170 CALL                             R3 1 1
      171 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["text"]
        3 SETTABLEKS                       R1 R0 K0 ["text"]
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["thinking"]
        3 SETTABLEKS                       R1 R0 K0 ["thinking"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["signature"]
        8 SETTABLEKS                       R1 R0 K1 ["signature"]
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Compaction"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 RETURN                           R0 0

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
       52 DUPCLOSURE                       R5 K11 [PROTO_7]
       53 CAPTURE                          UPVAL U2
       54 SETTABLEKS                       R5 R4 K7 ["transformFn"]
       56 CALL                             R3 1 0
       57 RETURN                           R0 0
       58 GETTABLEKS                       R3 R1 K3 ["type"]
       60 JUMPIFNOTEQKS                    R3 K12 ["json_delta"] ; [+44]
       62 JUMPIF                           R2 ; [+1]
       63 RETURN                           R0 0
       64 GETTABLEKS                       R3 R2 K13 ["toolName"]
       66 FASTCALL2K                       ASSERT R3 K14 ; [+5]
       68 MOVE                             R5 R3
       69 LOADK                            R6 K14 ["Received delta for unknown tool?"]
       70 GETIMPORT                        R4 K2 [assert]
       72 CALL                             R4 2 0
       73 GETUPVAL                         R4 3
       74 GETTABLEKS                       R4 R4 K15 ["getStreamTransform"]
       76 MOVE                             R5 R3
       77 CALL                             R4 1 1
       78 GETUPVAL                         R5 3
       79 GETTABLEKS                       R5 R5 K16 ["None"]
       81 JUMPIFNOTEQ                      R4 R5 ; [+2]
       83 RETURN                           R0 0
       84 JUMPIFEQKNIL                     R4 ; [+26]
       86 GETUPVAL                         R5 4
       87 GETTABLEKS                       R6 R4 K17 ["getTransformDeltaFn"]
       89 GETTABLEKS                       R7 R1 K18 ["jsonDelta"]
       91 CALL                             R5 2 1
       92 JUMPIF                           R5 ; [+1]
       93 RETURN                           R0 0
       94 GETUPVAL                         R6 1
       95 DUPTABLE                         R7 K8 [{"messageId", "contentId", "transformFn"}]
       96 GETUPVAL                         R8 0
       97 SETTABLEKS                       R8 R7 K5 ["messageId"]
       99 SETTABLEKS                       R0 R7 K6 ["contentId"]
      101 SETTABLEKS                       R5 R7 K7 ["transformFn"]
      103 CALL                             R6 1 0
      104 RETURN                           R0 0
      105 GETUPVAL                         R3 5
      106 GETTABLEKS                       R3 R3 K19 ["assertNever"]
      108 GETTABLEKS                       R4 R1 K3 ["type"]
      110 CALL                             R3 1 0
      111 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["generating"]
        4 RETURN                           R0 0

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
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K0 ["toolResult"]
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["toolResult"]
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        3 LOADK                            R5 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K3 ["getStreamTransform"]
       10 GETTABLEKS                       R4 R1 K4 ["name"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R5 R1 K4 ["name"]
       16 LOADNIL                          R6
       17 GETUPVAL                         R7 2
       18 CALL                             R7 0 1
       19 JUMPIFNOT                        R7 ; [+25]
       20 GETTABLEKS                       R9 R1 K4 ["name"]
       22 LOADNIL                          R10
       23 GETUPVAL                         R11 3
       24 NEWCLOSURE                       R12 P0
       25 CAPTURE                          REF R10
       26 CAPTURE                          VAL R9
       27 CALL                             R11 1 0
       28 JUMPIF                           R10 ; [+4]
       29 MOVE                             R7 R9
       30 LOADNIL                          R8
       31 CLOSEUPVALS                      R10
       32 JUMP                             ; [+10]
       33 GETUPVAL                         R11 4
       34 GETTABLEKS                       R11 R11 K5 ["unpackServerIdentifier"]
       36 GETTABLEKS                       R12 R10 K6 ["serverIdentifier"]
       38 CALL                             R11 1 2
       39 GETTABLEKS                       R7 R10 K7 ["actualToolName"]
       41 MOVE                             R8 R12
       42 CLOSEUPVALS                      R10
       43 MOVE                             R5 R7
       44 MOVE                             R6 R8
       45 JUMPIF                           R2 ; [+42]
       46 GETUPVAL                         R7 5
       47 GETTABLEKS                       R7 R7 K8 ["logToolEnded"]
       49 DUPTABLE                         R8 K19 [{"messageGuid", "toolId", "toolName", "serverName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "assistantMode", "toolResultContent"}]
       50 SETTABLEKS                       R4 R8 K9 ["messageGuid"]
       52 GETTABLEKS                       R9 R1 K20 ["id"]
       54 SETTABLEKS                       R9 R8 K10 ["toolId"]
       56 SETTABLEKS                       R5 R8 K11 ["toolName"]
       58 SETTABLEKS                       R6 R8 K12 ["serverName"]
       60 GETTABLEKS                       R9 R1 K13 ["startTime"]
       62 SETTABLEKS                       R9 R8 K13 ["startTime"]
       64 GETTABLEKS                       R9 R1 K14 ["startTimeAfterConfirmation"]
       66 SETTABLEKS                       R9 R8 K14 ["startTimeAfterConfirmation"]
       68 GETUPVAL                         R9 6
       69 GETTABLEKS                       R9 R9 K21 ["getTimestampMilliseconds"]
       71 CALL                             R9 0 1
       72 SETTABLEKS                       R9 R8 K15 ["endTime"]
       74 GETTABLEKS                       R9 R1 K16 ["isError"]
       76 SETTABLEKS                       R9 R8 K16 ["isError"]
       78 GETUPVAL                         R9 7
       79 GETTABLEKS                       R9 R9 K17 ["assistantMode"]
       81 SETTABLEKS                       R9 R8 K17 ["assistantMode"]
       83 GETTABLEKS                       R9 R1 K22 ["content"]
       85 SETTABLEKS                       R9 R8 K18 ["toolResultContent"]
       87 CALL                             R7 1 0
       88 GETUPVAL                         R7 1
       89 GETTABLEKS                       R7 R7 K23 ["None"]
       91 JUMPIFNOTEQ                      R3 R7 ; [+2]
       93 RETURN                           R0 0
       94 JUMPIFEQKNIL                     R3 ; [+20]
       96 GETUPVAL                         R7 8
       97 GETTABLEKS                       R8 R3 K24 ["getTransformResultFn"]
       99 MOVE                             R9 R1
      100 CALL                             R7 2 1
      101 NEWCLOSURE                       R8 P1
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R1
      104 GETUPVAL                         R9 9
      105 DUPTABLE                         R10 K28 [{"messageId", "contentId", "transformFn"}]
      106 GETUPVAL                         R11 0
      107 SETTABLEKS                       R11 R10 K25 ["messageId"]
      109 SETTABLEKS                       R0 R10 K26 ["contentId"]
      111 SETTABLEKS                       R8 R10 K27 ["transformFn"]
      113 CALL                             R9 1 0
      114 RETURN                           R0 0
      115 GETUPVAL                         R7 9
      116 DUPTABLE                         R8 K28 [{"messageId", "contentId", "transformFn"}]
      117 GETUPVAL                         R9 0
      118 SETTABLEKS                       R9 R8 K25 ["messageId"]
      120 SETTABLEKS                       R0 R8 K26 ["contentId"]
      122 NEWCLOSURE                       R9 P2
      123 CAPTURE                          VAL R1
      124 SETTABLEKS                       R9 R8 K27 ["transformFn"]
      126 CALL                             R7 1 0
      127 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K0 ["toolUse"]
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["toolUse"]
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R4 0
        1 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        3 LOADK                            R5 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 2 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K3 ["getStreamTransform"]
       10 GETTABLEKS                       R4 R1 K4 ["name"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 2
       14 CALL                             R5 0 1
       15 OR                               R4 R5 R2
       16 JUMPIFNOT                        R4 ; [+61]
       17 GETTABLEKS                       R5 R1 K4 ["name"]
       19 LOADNIL                          R6
       20 GETUPVAL                         R7 2
       21 CALL                             R7 0 1
       22 JUMPIFNOT                        R7 ; [+25]
       23 GETTABLEKS                       R9 R1 K4 ["name"]
       25 LOADNIL                          R10
       26 GETUPVAL                         R11 3
       27 NEWCLOSURE                       R12 P0
       28 CAPTURE                          REF R10
       29 CAPTURE                          VAL R9
       30 CALL                             R11 1 0
       31 JUMPIF                           R10 ; [+4]
       32 MOVE                             R7 R9
       33 LOADNIL                          R8
       34 CLOSEUPVALS                      R10
       35 JUMP                             ; [+10]
       36 GETUPVAL                         R11 4
       37 GETTABLEKS                       R11 R11 K5 ["unpackServerIdentifier"]
       39 GETTABLEKS                       R12 R10 K6 ["serverIdentifier"]
       41 CALL                             R11 1 2
       42 GETTABLEKS                       R7 R10 K7 ["actualToolName"]
       44 MOVE                             R8 R12
       45 CLOSEUPVALS                      R10
       46 MOVE                             R5 R7
       47 MOVE                             R6 R8
       48 GETUPVAL                         R7 5
       49 GETTABLEKS                       R7 R7 K8 ["logToolStarted"]
       51 DUPTABLE                         R8 K17 [{"messageGuid", "sessionId", "toolId", "toolName", "serverName", "isSlashCommand", "assistantMode", "input"}]
       52 GETUPVAL                         R9 0
       53 SETTABLEKS                       R9 R8 K9 ["messageGuid"]
       55 GETUPVAL                         R9 6
       56 SETTABLEKS                       R9 R8 K10 ["sessionId"]
       58 GETTABLEKS                       R9 R1 K18 ["id"]
       60 SETTABLEKS                       R9 R8 K11 ["toolId"]
       62 SETTABLEKS                       R5 R8 K12 ["toolName"]
       64 SETTABLEKS                       R6 R8 K13 ["serverName"]
       66 SETTABLEKS                       R2 R8 K14 ["isSlashCommand"]
       68 GETUPVAL                         R9 7
       69 GETTABLEKS                       R9 R9 K15 ["assistantMode"]
       71 SETTABLEKS                       R9 R8 K15 ["assistantMode"]
       73 GETTABLEKS                       R9 R1 K16 ["input"]
       75 SETTABLEKS                       R9 R8 K16 ["input"]
       77 CALL                             R7 1 0
       78 GETUPVAL                         R5 1
       79 GETTABLEKS                       R5 R5 K19 ["None"]
       81 JUMPIFNOTEQ                      R3 R5 ; [+2]
       83 RETURN                           R0 0
       84 JUMPIFEQKNIL                     R3 ; [+20]
       86 GETUPVAL                         R5 8
       87 GETTABLEKS                       R6 R3 K20 ["getTransformPreExecuteFn"]
       89 MOVE                             R7 R1
       90 CALL                             R5 2 1
       91 NEWCLOSURE                       R6 P1
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R1
       94 GETUPVAL                         R7 9
       95 DUPTABLE                         R8 K24 [{"messageId", "contentId", "transformFn"}]
       96 GETUPVAL                         R9 0
       97 SETTABLEKS                       R9 R8 K21 ["messageId"]
       99 SETTABLEKS                       R0 R8 K22 ["contentId"]
      101 SETTABLEKS                       R6 R8 K23 ["transformFn"]
      103 CALL                             R7 1 0
      104 RETURN                           R0 0
      105 GETUPVAL                         R5 9
      106 DUPTABLE                         R6 K24 [{"messageId", "contentId", "transformFn"}]
      107 GETUPVAL                         R7 0
      108 SETTABLEKS                       R7 R6 K21 ["messageId"]
      110 SETTABLEKS                       R0 R6 K22 ["contentId"]
      112 NEWCLOSURE                       R7 P2
      113 CAPTURE                          VAL R1
      114 SETTABLEKS                       R7 R6 K23 ["transformFn"]
      116 CALL                             R5 1 0
      117 RETURN                           R0 0

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
       18 CALL                             R3 0 1
       19 JUMPIFNOT                        R3 ; [+7]
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R3 R3 K5 ["getIsEvaluationRunning"]
       23 CALL                             R3 0 1
       24 JUMPIFNOT                        R3 ; [+2]
       25 LOADB                            R3 1
       26 RETURN                           R3 1
       27 JUMPIFNOT                        R2 ; [+3]
       28 GETTABLEKS                       R3 R2 K6 ["shouldConfirm"]
       30 JUMPIF                           R3 ; [+2]
       31 LOADB                            R3 1
       32 RETURN                           R3 1
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K7 ["lock"]
       36 CALL                             R3 0 0
       37 LOADNIL                          R3
       38 GETIMPORT                        R4 K10 [coroutine.running]
       40 CALL                             R4 0 1
       41 GETTABLEKS                       R5 R2 K11 ["warningMessage"]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R7 R2 K12 ["confirmationType"]
       46 GETUPVAL                         R8 5
       47 GETTABLEKS                       R8 R8 K13 ["ConfirmationType"]
       49 GETTABLEKS                       R8 R8 K14 ["ScriptChange"]
       51 JUMPIFNOTEQ                      R7 R8 ; [+57]
       53 DUPTABLE                         R7 K19 [{"type", "onReviewEach", "onAcceptAllPrompt", "onAcceptAllSession"}]
       54 GETUPVAL                         R8 6
       55 GETTABLEKS                       R8 R8 K20 ["Type"]
       57 SETTABLEKS                       R8 R7 K15 ["type"]
       59 NEWCLOSURE                       R8 P0
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          VAL R6
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          VAL R4
       64 SETTABLEKS                       R8 R7 K16 ["onReviewEach"]
       66 NEWCLOSURE                       R8 P1
       67 CAPTURE                          UPVAL U7
       68 CAPTURE                          VAL R6
       69 CAPTURE                          UPVAL U8
       70 CAPTURE                          VAL R4
       71 SETTABLEKS                       R8 R7 K17 ["onAcceptAllPrompt"]
       73 NEWCLOSURE                       R8 P2
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          VAL R6
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R8 R7 K18 ["onAcceptAllSession"]
       80 GETUPVAL                         R8 9
       81 DUPTABLE                         R9 K23 [{"messageId", "content"}]
       82 GETUPVAL                         R10 0
       83 SETTABLEKS                       R10 R9 K21 ["messageId"]
       85 SETTABLEKS                       R7 R9 K22 ["content"]
       87 CALL                             R8 1 1
       88 MOVE                             R3 R8
       89 GETIMPORT                        R8 K25 [coroutine.yield]
       91 CALL                             R8 0 0
       92 GETUPVAL                         R8 10
       93 DUPTABLE                         R9 K28 [{"messageId", "contentId", "transformFn"}]
       94 GETUPVAL                         R10 0
       95 SETTABLEKS                       R10 R9 K21 ["messageId"]
       97 SETTABLEKS                       R3 R9 K26 ["contentId"]
       99 DUPCLOSURE                       R10 K29 [PROTO_20]
      100 SETTABLEKS                       R10 R9 K27 ["transformFn"]
      102 CALL                             R8 1 0
      103 GETUPVAL                         R8 1
      104 GETTABLEKS                       R8 R8 K30 ["unlock"]
      106 CALL                             R8 0 0
      107 LOADB                            R8 1
      108 RETURN                           R8 1
      109 MOVE                             R7 R0
      110 LOADNIL                          R8
      111 GETUPVAL                         R9 11
      112 CALL                             R9 0 1
      113 JUMPIFNOT                        R9 ; [+23]
      114 LOADNIL                          R11
      115 GETUPVAL                         R12 12
      116 NEWCLOSURE                       R13 P4
      117 CAPTURE                          REF R11
      118 CAPTURE                          VAL R0
      119 CALL                             R12 1 0
      120 JUMPIF                           R11 ; [+4]
      121 MOVE                             R9 R0
      122 LOADNIL                          R10
      123 CLOSEUPVALS                      R11
      124 JUMP                             ; [+10]
      125 GETUPVAL                         R12 13
      126 GETTABLEKS                       R12 R12 K31 ["unpackServerIdentifier"]
      128 GETTABLEKS                       R13 R11 K32 ["serverIdentifier"]
      130 CALL                             R12 1 2
      131 GETTABLEKS                       R9 R11 K33 ["actualToolName"]
      133 MOVE                             R10 R13
      134 CLOSEUPVALS                      R11
      135 MOVE                             R7 R9
      136 MOVE                             R8 R10
      137 GETUPVAL                         R9 7
      138 GETTABLEKS                       R9 R9 K34 ["logToolConfirmationShown"]
      140 DUPTABLE                         R10 K38 [{"messageGuid", "toolName", "serverName", "warningMessage"}]
      141 SETTABLEKS                       R6 R10 K35 ["messageGuid"]
      143 SETTABLEKS                       R7 R10 K36 ["toolName"]
      145 SETTABLEKS                       R8 R10 K37 ["serverName"]
      147 SETTABLEKS                       R5 R10 K11 ["warningMessage"]
      149 CALL                             R9 1 0
      150 DUPTABLE                         R9 K43 [{"type", "toolName", "toolInput", "warningMessage", "onConfirm", "onReject", "onAlwaysAccept"}]
      151 GETUPVAL                         R10 14
      152 GETTABLEKS                       R10 R10 K20 ["Type"]
      154 SETTABLEKS                       R10 R9 K15 ["type"]
      156 SETTABLEKS                       R0 R9 K36 ["toolName"]
      158 SETTABLEKS                       R1 R9 K39 ["toolInput"]
      160 SETTABLEKS                       R5 R9 K11 ["warningMessage"]
      162 NEWCLOSURE                       R10 P5
      163 CAPTURE                          UPVAL U7
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R4
      166 SETTABLEKS                       R10 R9 K40 ["onConfirm"]
      168 NEWCLOSURE                       R10 P6
      169 CAPTURE                          UPVAL U7
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R4
      172 SETTABLEKS                       R10 R9 K41 ["onReject"]
      174 NEWCLOSURE                       R10 P7
      175 CAPTURE                          UPVAL U7
      176 CAPTURE                          VAL R6
      177 CAPTURE                          UPVAL U2
      178 CAPTURE                          VAL R0
      179 CAPTURE                          VAL R4
      180 SETTABLEKS                       R10 R9 K42 ["onAlwaysAccept"]
      182 GETUPVAL                         R10 9
      183 DUPTABLE                         R11 K23 [{"messageId", "content"}]
      184 GETUPVAL                         R12 0
      185 SETTABLEKS                       R12 R11 K21 ["messageId"]
      187 SETTABLEKS                       R9 R11 K22 ["content"]
      189 CALL                             R10 1 1
      190 MOVE                             R3 R10
      191 GETIMPORT                        R10 K25 [coroutine.yield]
      193 CALL                             R10 0 1
      194 GETUPVAL                         R11 10
      195 DUPTABLE                         R12 K28 [{"messageId", "contentId", "transformFn"}]
      196 GETUPVAL                         R13 0
      197 SETTABLEKS                       R13 R12 K21 ["messageId"]
      199 SETTABLEKS                       R3 R12 K26 ["contentId"]
      201 DUPCLOSURE                       R13 K44 [PROTO_24]
      202 SETTABLEKS                       R13 R12 K27 ["transformFn"]
      204 CALL                             R11 1 0
      205 GETUPVAL                         R11 1
      206 GETTABLEKS                       R11 R11 K30 ["unlock"]
      208 CALL                             R11 0 0
      209 RETURN                           R10 1

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
        0 GETTABLEKS                       R1 R0 K0 ["editContent"]
        2 GETTABLEKS                       R2 R0 K1 ["addContent"]
        4 GETTABLEKS                       R3 R0 K2 ["eventLogger"]
        6 GETTABLEKS                       R4 R0 K3 ["withClient"]
        8 LOADNIL                          R5
        9 GETTABLEKS                       R6 R0 K4 ["sessionId"]
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          VAL R4
       13 CAPTURE                          UPVAL U0
       14 NEWCLOSURE                       R8 P1
       15 CAPTURE                          REF R5
       16 NEWCLOSURE                       R9 P2
       17 CAPTURE                          REF R5
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          UPVAL U8
       26 CAPTURE                          UPVAL U9
       27 CAPTURE                          UPVAL U10
       28 CAPTURE                          VAL R2
       29 NEWCLOSURE                       R10 P3
       30 CAPTURE                          REF R5
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U8
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U11
       35 CAPTURE                          UPVAL U12
       36 NEWCLOSURE                       R11 P4
       37 CAPTURE                          REF R5
       38 CAPTURE                          VAL R1
       39 NEWCLOSURE                       R12 P5
       40 CAPTURE                          REF R5
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U13
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U14
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U11
       49 CAPTURE                          VAL R1
       50 NEWCLOSURE                       R13 P6
       51 CAPTURE                          REF R5
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U13
       54 CAPTURE                          VAL R4
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U11
       60 CAPTURE                          VAL R1
       61 GETUPVAL                         R14 15
       62 GETTABLEKS                       R14 R14 K5 ["createMutex"]
       64 CALL                             R14 0 1
       65 NEWCLOSURE                       R15 P7
       66 CAPTURE                          REF R5
       67 CAPTURE                          VAL R14
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U16
       70 CAPTURE                          UPVAL U17
       71 CAPTURE                          UPVAL U12
       72 CAPTURE                          UPVAL U18
       73 CAPTURE                          VAL R3
       74 CAPTURE                          UPVAL U19
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U13
       78 CAPTURE                          VAL R4
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U20
       81 DUPCLOSURE                       R16 K6 [PROTO_26]
       82 CAPTURE                          UPVAL U3
       83 DUPCLOSURE                       R17 K7 [PROTO_27]
       84 CAPTURE                          UPVAL U19
       85 DUPTABLE                         R18 K17 [{"onNewMessage", "onContentStart", "onContentDelta", "onContentFinished", "onToolResult", "onPreExecuteToolUse", "checkToolConfirmationRequestAsync", "getToolCallOptions", "onPromptEnd"}]
       86 SETTABLEKS                       R8 R18 K8 ["onNewMessage"]
       88 SETTABLEKS                       R9 R18 K9 ["onContentStart"]
       90 SETTABLEKS                       R10 R18 K10 ["onContentDelta"]
       92 SETTABLEKS                       R11 R18 K11 ["onContentFinished"]
       94 SETTABLEKS                       R12 R18 K12 ["onToolResult"]
       96 SETTABLEKS                       R13 R18 K13 ["onPreExecuteToolUse"]
       98 SETTABLEKS                       R15 R18 K14 ["checkToolConfirmationRequestAsync"]
      100 SETTABLEKS                       R16 R18 K15 ["getToolCallOptions"]
      102 SETTABLEKS                       R17 R18 K16 ["onPromptEnd"]
      104 CLOSEUPVALS                      R5
      105 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["AssistantEval"]
       20 GETTABLEKS                       R3 R3 K10 ["EvalController"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Guest"]
       27 GETTABLEKS                       R4 R4 K12 ["Environment"]
       29 GETTABLEKS                       R4 R4 K13 ["EventLogger"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K14 ["Components"]
       36 GETTABLEKS                       R5 R5 K15 ["ContentWidgets"]
       38 GETTABLEKS                       R5 R5 K16 ["GenericToolContentWidget"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K14 ["Components"]
       45 GETTABLEKS                       R6 R6 K15 ["ContentWidgets"]
       47 GETTABLEKS                       R6 R6 K17 ["InputRequestedContentWidget"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K14 ["Components"]
       54 GETTABLEKS                       R7 R7 K18 ["Contexts"]
       56 GETTABLEKS                       R7 R7 K19 ["DefaultLLMProvider"]
       58 GETTABLEKS                       R7 R7 K20 ["LLMProcessEvent"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Parent"]
       65 GETTABLEKS                       R8 R8 K21 ["ModelContextProtocol"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Util"]
       72 GETTABLEKS                       R9 R9 K22 ["MultiEditAcceptanceState"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K14 ["Components"]
       79 GETTABLEKS                       R10 R10 K15 ["ContentWidgets"]
       81 GETTABLEKS                       R10 R10 K23 ["ScriptChangeConfirmationContentWidget"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K14 ["Components"]
       88 GETTABLEKS                       R11 R11 K15 ["ContentWidgets"]
       90 GETTABLEKS                       R11 R11 K24 ["SummarizedContentWidget"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K8 ["Util"]
       97 GETTABLEKS                       R12 R12 K25 ["TaskCollector"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K14 ["Components"]
      104 GETTABLEKS                       R13 R13 K15 ["ContentWidgets"]
      106 GETTABLEKS                       R13 R13 K26 ["TextContentWidget"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R14 R0 K14 ["Components"]
      113 GETTABLEKS                       R14 R14 K15 ["ContentWidgets"]
      115 GETTABLEKS                       R14 R14 K27 ["ThinkingContentWidget"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R15 R0 K8 ["Util"]
      122 GETTABLEKS                       R15 R15 K28 ["Time"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R16 R0 K14 ["Components"]
      129 GETTABLEKS                       R16 R16 K15 ["ContentWidgets"]
      131 GETTABLEKS                       R16 R16 K29 ["ToolConfirmationContentWidget"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K8 ["Util"]
      138 GETTABLEKS                       R17 R17 K15 ["ContentWidgets"]
      140 GETTABLEKS                       R17 R17 K30 ["ToolWidgetMappingRegistry"]
      142 CALL                             R16 1 1
      143 GETIMPORT                        R17 K5 [require]
      145 GETTABLEKS                       R18 R0 K31 ["Resources"]
      147 GETTABLEKS                       R18 R18 K32 ["Localization"]
      149 GETTABLEKS                       R18 R18 K33 ["Translator"]
      151 CALL                             R17 1 1
      152 GETIMPORT                        R18 K5 [require]
      154 GETTABLEKS                       R19 R0 K34 ["Types"]
      156 CALL                             R18 1 1
      157 GETIMPORT                        R19 K5 [require]
      159 GETTABLEKS                       R20 R0 K14 ["Components"]
      161 GETTABLEKS                       R20 R20 K35 ["UIToolRegistry"]
      163 CALL                             R19 1 1
      164 GETIMPORT                        R20 K5 [require]
      166 GETTABLEKS                       R21 R0 K36 ["Hooks"]
      168 GETTABLEKS                       R21 R21 K37 ["useAddContent"]
      170 CALL                             R20 1 1
      171 GETIMPORT                        R21 K5 [require]
      173 GETTABLEKS                       R22 R0 K36 ["Hooks"]
      175 GETTABLEKS                       R22 R22 K38 ["useEditContent"]
      177 CALL                             R21 1 1
      178 GETIMPORT                        R22 K5 [require]
      180 GETTABLEKS                       R23 R0 K39 ["Flags"]
      182 GETTABLEKS                       R23 R23 K40 ["FFlagAssistantEval"]
      184 CALL                             R22 1 1
      185 GETIMPORT                        R23 K5 [require]
      187 GETTABLEKS                       R24 R0 K39 ["Flags"]
      189 GETTABLEKS                       R24 R24 K41 ["FFlagAssistantSplitToolsAndWidgets"]
      191 CALL                             R23 1 1
      192 GETIMPORT                        R24 K5 [require]
      194 GETTABLEKS                       R25 R0 K39 ["Flags"]
      196 GETTABLEKS                       R25 R25 K42 ["FFlagAssistantToolExistenceRefactor"]
      198 CALL                             R24 1 1
      199 GETTABLEKS                       R25 R7 K8 ["Util"]
      201 GETTABLEKS                       R25 R25 K43 ["MultiplexUtils"]
      203 NEWTABLE                         R26 1 0
      205 DUPCLOSURE                       R27 K44 [PROTO_0]
      206 DUPCLOSURE                       R28 K45 [PROTO_28]
      207 CAPTURE                          VAL R25
      208 CAPTURE                          VAL R12
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R16
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R17
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R1
      218 CAPTURE                          VAL R27
      219 CAPTURE                          VAL R18
      220 CAPTURE                          VAL R24
      221 CAPTURE                          VAL R14
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R22
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R8
      227 CAPTURE                          VAL R15
      228 SETTABLEKS                       R28 R26 K46 ["new"]
      230 RETURN                           R26 1
