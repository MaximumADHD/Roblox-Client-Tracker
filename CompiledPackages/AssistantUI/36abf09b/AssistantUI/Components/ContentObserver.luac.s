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
       10 JUMPIFNOTEQKS                    R2 K4 ["text"] ; [+18]
       12 DUPTABLE                         R2 K7 [{["type"], ["text"] = "", ["generating"]}]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K8 ["Type"]
       16 SETTABLEKS                       R3 R2 K3 ["type"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K9 ["FFlagAssistantSplitToolsAndWidgets"]
       21 JUMPIFNOT                        R4 ; [+2]
       22 LOADNIL                          R3
       23 JUMP                             ; [+1]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R2 K6 ["generating"]
       27 MOVE                             R1 R2
       28 JUMP                             ; [+156]
       29 GETTABLEKS                       R2 R0 K3 ["type"]
       31 JUMPIFNOTEQKS                    R2 K10 ["thinking"] ; [+18]
       33 DUPTABLE                         R2 K14 [{["type"], ["thinking"] = "", ["signature"] = "", ["generating"], ["expanded"] = False}]
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K8 ["Type"]
       37 SETTABLEKS                       R3 R2 K3 ["type"]
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K9 ["FFlagAssistantSplitToolsAndWidgets"]
       42 JUMPIFNOT                        R4 ; [+2]
       43 LOADNIL                          R3
       44 JUMP                             ; [+1]
       45 LOADB                            R3 1
       46 SETTABLEKS                       R3 R2 K6 ["generating"]
       48 MOVE                             R1 R2
       49 JUMP                             ; [+135]
       50 GETTABLEKS                       R2 R0 K3 ["type"]
       52 JUMPIFNOTEQKS                    R2 K15 ["tool_use"] ; [+66]
       54 GETTABLEKS                       R2 R0 K16 ["name"]
       56 GETUPVAL                         R3 4
       57 GETTABLEKS                       R3 R3 K17 ["getStreamTransform"]
       59 MOVE                             R4 R2
       60 CALL                             R3 1 1
       61 GETUPVAL                         R4 4
       62 GETTABLEKS                       R4 R4 K18 ["None"]
       64 JUMPIFNOTEQ                      R3 R4 ; [+3]
       66 LOADNIL                          R4
       67 RETURN                           R4 1
       68 JUMPIFEQKNIL                     R3 ; [+7]
       70 GETTABLEKS                       R4 R3 K19 ["transformInitialContent"]
       72 MOVE                             R5 R0
       73 CALL                             R4 1 1
       74 MOVE                             R1 R4
       75 JUMP                             ; [+109]
       76 GETUPVAL                         R5 2
       77 GETTABLEKS                       R5 R5 K9 ["FFlagAssistantSplitToolsAndWidgets"]
       79 JUMPIFNOT                        R5 ; [+6]
       80 GETUPVAL                         R4 5
       81 GETTABLEKS                       R4 R4 K20 ["get"]
       83 MOVE                             R5 R2
       84 CALL                             R4 1 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R4
       87 GETUPVAL                         R5 2
       88 GETTABLEKS                       R5 R5 K9 ["FFlagAssistantSplitToolsAndWidgets"]
       90 JUMPIFNOT                        R5 ; [+7]
       91 GETUPVAL                         R5 5
       92 GETTABLEKS                       R5 R5 K18 ["None"]
       94 JUMPIFNOTEQ                      R4 R5 ; [+3]
       96 LOADNIL                          R5
       97 RETURN                           R5 1
       98 JUMPIFNOT                        R4 ; [+10]
       99 GETUPVAL                         R5 6
      100 GETTABLEKS                       R5 R5 K8 ["Type"]
      102 JUMPIFEQ                         R4 R5 ; [+6]
      104 DUPTABLE                         R5 K21 [{"type"}]
      105 SETTABLEKS                       R4 R5 K3 ["type"]
      107 MOVE                             R1 R5
      108 JUMP                             ; [+76]
      109 DUPTABLE                         R5 K23 [{["type"], ["toolIdentifier"], ["expanded"] = False}]
      110 GETUPVAL                         R6 6
      111 GETTABLEKS                       R6 R6 K8 ["Type"]
      113 SETTABLEKS                       R6 R5 K3 ["type"]
      115 SETTABLEKS                       R2 R5 K22 ["toolIdentifier"]
      117 MOVE                             R1 R5
      118 JUMP                             ; [+66]
      119 GETTABLEKS                       R2 R0 K3 ["type"]
      121 JUMPIFNOTEQKS                    R2 K24 ["compaction_status"] ; [+17]
      123 DUPTABLE                         R2 K26 [{"type", "summary"}]
      124 GETUPVAL                         R3 7
      125 GETTABLEKS                       R3 R3 K8 ["Type"]
      127 SETTABLEKS                       R3 R2 K3 ["type"]
      129 GETUPVAL                         R3 8
      130 LOADK                            R5 K27 ["Compaction"]
      131 LOADK                            R6 K28 ["InProgress"]
      132 NAMECALL                         R3 R3 K29 ["getText"]
      134 CALL                             R3 3 1
      135 SETTABLEKS                       R3 R2 K25 ["summary"]
      137 MOVE                             R1 R2
      138 JUMP                             ; [+46]
      139 GETTABLEKS                       R2 R0 K3 ["type"]
      141 JUMPIFNOTEQKS                    R2 K30 ["input_requested"] ; [+43]
      143 DUPTABLE                         R2 K39 [{["type"], ["expanded"] = False, ["status"], ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["onContinue"], ["onRevive"], ["canConfirm"]}]
      144 GETUPVAL                         R3 9
      145 GETTABLEKS                       R3 R3 K8 ["Type"]
      147 SETTABLEKS                       R3 R2 K3 ["type"]
      149 GETUPVAL                         R3 9
      150 GETTABLEKS                       R3 R3 K40 ["InputStatus"]
      152 GETTABLEKS                       R3 R3 K41 ["Required"]
      154 SETTABLEKS                       R3 R2 K31 ["status"]
      156 GETTABLEKS                       R3 R0 K32 ["title"]
      158 SETTABLEKS                       R3 R2 K32 ["title"]
      160 GETTABLEKS                       R3 R0 K33 ["description"]
      162 SETTABLEKS                       R3 R2 K33 ["description"]
      164 GETTABLEKS                       R3 R0 K34 ["confirmButtonText"]
      166 SETTABLEKS                       R3 R2 K34 ["confirmButtonText"]
      168 GETTABLEKS                       R3 R0 K35 ["propertyRows"]
      170 SETTABLEKS                       R3 R2 K35 ["propertyRows"]
      172 GETTABLEKS                       R3 R0 K36 ["onContinue"]
      174 SETTABLEKS                       R3 R2 K36 ["onContinue"]
      176 GETTABLEKS                       R3 R0 K37 ["onRevive"]
      178 SETTABLEKS                       R3 R2 K37 ["onRevive"]
      180 GETTABLEKS                       R3 R0 K38 ["canConfirm"]
      182 SETTABLEKS                       R3 R2 K38 ["canConfirm"]
      184 MOVE                             R1 R2
      185 LOADNIL                          R2
      186 GETUPVAL                         R3 2
      187 GETTABLEKS                       R3 R3 K9 ["FFlagAssistantSplitToolsAndWidgets"]
      189 JUMPIFNOT                        R3 ; [+12]
      190 GETUPVAL                         R3 10
      191 GETTABLEKS                       R3 R3 K42 ["assign"]
      193 MOVE                             R4 R1
      194 DUPTABLE                         R5 K44 [{"streaming"}]
      195 NEWTABLE                         R6 0 0
      197 SETTABLEKS                       R6 R5 K43 ["streaming"]
      199 CALL                             R3 2 1
      200 MOVE                             R2 R3
      201 JUMP                             ; [+9]
      202 GETUPVAL                         R3 11
      203 GETTABLEKS                       R3 R3 K45 ["Dictionary"]
      205 GETTABLEKS                       R3 R3 K46 ["join"]
      207 MOVE                             R4 R1
      208 DUPTABLE                         R5 K48 [{["generating"] = True}]
      209 CALL                             R3 2 1
      210 MOVE                             R2 R3
      211 GETUPVAL                         R3 12
      212 DUPTABLE                         R4 K51 [{"messageId", "content"}]
      213 GETUPVAL                         R5 0
      214 SETTABLEKS                       R5 R4 K49 ["messageId"]
      216 SETTABLEKS                       R2 R4 K50 ["content"]
      218 CALL                             R3 1 1
      219 RETURN                           R3 1

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

PROTO_9:
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
       60 JUMPIFNOTEQKS                    R3 K12 ["json_delta"] ; [+73]
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
       84 JUMPIFEQKNIL                     R4 ; [+20]
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
      105 GETUPVAL                         R5 5
      106 GETTABLEKS                       R5 R5 K19 ["FFlagAssistantSplitToolsAndWidgets"]
      108 JUMPIFNOT                        R5 ; [+31]
      109 GETUPVAL                         R5 6
      110 GETTABLEKS                       R5 R5 K20 ["get"]
      112 MOVE                             R6 R3
      113 CALL                             R5 1 1
      114 JUMPIFNOT                        R5 ; [+25]
      115 GETUPVAL                         R6 7
      116 GETTABLEKS                       R6 R6 K21 ["needsStreamingToolUse"]
      118 MOVE                             R7 R5
      119 CALL                             R6 1 1
      120 JUMPIFNOT                        R6 ; [+19]
      121 GETUPVAL                         R6 1
      122 DUPTABLE                         R7 K8 [{"messageId", "contentId", "transformFn"}]
      123 GETUPVAL                         R8 0
      124 SETTABLEKS                       R8 R7 K5 ["messageId"]
      126 SETTABLEKS                       R0 R7 K6 ["contentId"]
      128 NEWCLOSURE                       R8 P3
      129 CAPTURE                          VAL R1
      130 SETTABLEKS                       R8 R7 K7 ["transformFn"]
      132 CALL                             R6 1 0
      133 RETURN                           R0 0
      134 GETUPVAL                         R3 8
      135 GETTABLEKS                       R3 R3 K22 ["assertNever"]
      137 GETTABLEKS                       R4 R1 K3 ["type"]
      139 CALL                             R3 1 0
      140 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["streaming"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["streaming"]
        5 GETTABLEKS                       R1 R1 K1 ["toolUse"]
        7 JUMPIF                           R1 ; [+3]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["streaming"]
       11 DUPTABLE                         R1 K4 [{["rawTransformValues"] = True}]
       12 RETURN                           R1 1

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["generating"]
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["FFlagAssistantSplitToolsAndWidgets"]
       10 JUMPIFNOT                        R1 ; [+12]
       11 GETUPVAL                         R1 2
       12 DUPTABLE                         R2 K7 [{"messageId", "contentId", "transformFn"}]
       13 GETUPVAL                         R3 0
       14 SETTABLEKS                       R3 R2 K4 ["messageId"]
       16 SETTABLEKS                       R0 R2 K5 ["contentId"]
       18 DUPCLOSURE                       R3 K8 [PROTO_10]
       19 SETTABLEKS                       R3 R2 K6 ["transformFn"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 2
       24 DUPTABLE                         R2 K7 [{"messageId", "contentId", "transformFn"}]
       25 GETUPVAL                         R3 0
       26 SETTABLEKS                       R3 R2 K4 ["messageId"]
       28 SETTABLEKS                       R0 R2 K5 ["contentId"]
       30 DUPCLOSURE                       R3 K9 [PROTO_11]
       31 SETTABLEKS                       R3 R2 K6 ["transformFn"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K0 ["toolResult"]
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["toolResult"]
        3 RETURN                           R0 0

PROTO_15:
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
       18 GETTABLEKS                       R7 R7 K5 ["FFlagAssistantToolExistenceRefactor"]
       20 JUMPIFNOT                        R7 ; [+25]
       21 GETTABLEKS                       R9 R1 K4 ["name"]
       23 LOADNIL                          R10
       24 GETUPVAL                         R11 3
       25 NEWCLOSURE                       R12 P0
       26 CAPTURE                          REF R10
       27 CAPTURE                          VAL R9
       28 CALL                             R11 1 0
       29 JUMPIF                           R10 ; [+4]
       30 MOVE                             R7 R9
       31 LOADNIL                          R8
       32 CLOSEUPVALS                      R10
       33 JUMP                             ; [+10]
       34 GETUPVAL                         R11 4
       35 GETTABLEKS                       R11 R11 K6 ["unpackServerIdentifier"]
       37 GETTABLEKS                       R12 R10 K7 ["serverIdentifier"]
       39 CALL                             R11 1 2
       40 GETTABLEKS                       R7 R10 K8 ["actualToolName"]
       42 MOVE                             R8 R12
       43 CLOSEUPVALS                      R10
       44 MOVE                             R5 R7
       45 MOVE                             R6 R8
       46 JUMPIF                           R2 ; [+42]
       47 GETUPVAL                         R7 5
       48 GETTABLEKS                       R7 R7 K9 ["logToolEnded"]
       50 DUPTABLE                         R8 K20 [{"messageGuid", "toolId", "toolName", "serverName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "assistantMode", "toolResultContent"}]
       51 SETTABLEKS                       R4 R8 K10 ["messageGuid"]
       53 GETTABLEKS                       R9 R1 K21 ["id"]
       55 SETTABLEKS                       R9 R8 K11 ["toolId"]
       57 SETTABLEKS                       R5 R8 K12 ["toolName"]
       59 SETTABLEKS                       R6 R8 K13 ["serverName"]
       61 GETTABLEKS                       R9 R1 K14 ["startTime"]
       63 SETTABLEKS                       R9 R8 K14 ["startTime"]
       65 GETTABLEKS                       R9 R1 K15 ["startTimeAfterConfirmation"]
       67 SETTABLEKS                       R9 R8 K15 ["startTimeAfterConfirmation"]
       69 GETUPVAL                         R9 6
       70 GETTABLEKS                       R9 R9 K22 ["getTimestampMilliseconds"]
       72 CALL                             R9 0 1
       73 SETTABLEKS                       R9 R8 K16 ["endTime"]
       75 GETTABLEKS                       R9 R1 K17 ["isError"]
       77 SETTABLEKS                       R9 R8 K17 ["isError"]
       79 GETUPVAL                         R9 7
       80 GETTABLEKS                       R9 R9 K18 ["assistantMode"]
       82 SETTABLEKS                       R9 R8 K18 ["assistantMode"]
       84 GETTABLEKS                       R9 R1 K23 ["content"]
       86 SETTABLEKS                       R9 R8 K19 ["toolResultContent"]
       88 CALL                             R7 1 0
       89 GETUPVAL                         R7 1
       90 GETTABLEKS                       R7 R7 K24 ["None"]
       92 JUMPIFNOTEQ                      R3 R7 ; [+2]
       94 RETURN                           R0 0
       95 JUMPIFEQKNIL                     R3 ; [+20]
       97 GETUPVAL                         R7 8
       98 GETTABLEKS                       R8 R3 K25 ["getTransformResultFn"]
      100 MOVE                             R9 R1
      101 CALL                             R7 2 1
      102 NEWCLOSURE                       R8 P1
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R1
      105 GETUPVAL                         R9 9
      106 DUPTABLE                         R10 K29 [{"messageId", "contentId", "transformFn"}]
      107 GETUPVAL                         R11 0
      108 SETTABLEKS                       R11 R10 K26 ["messageId"]
      110 SETTABLEKS                       R0 R10 K27 ["contentId"]
      112 SETTABLEKS                       R8 R10 K28 ["transformFn"]
      114 CALL                             R9 1 0
      115 RETURN                           R0 0
      116 GETUPVAL                         R7 9
      117 DUPTABLE                         R8 K29 [{"messageId", "contentId", "transformFn"}]
      118 GETUPVAL                         R9 0
      119 SETTABLEKS                       R9 R8 K26 ["messageId"]
      121 SETTABLEKS                       R0 R8 K27 ["contentId"]
      123 NEWCLOSURE                       R9 P2
      124 CAPTURE                          VAL R1
      125 SETTABLEKS                       R9 R8 K28 ["transformFn"]
      127 CALL                             R7 1 0
      128 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K0 ["toolUse"]
        8 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["toolUse"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantSplitToolsAndWidgets"]
        6 JUMPIFNOT                        R1 ; [+3]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K2 ["streaming"]
       10 RETURN                           R0 0

PROTO_18:
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
       14 GETTABLEKS                       R5 R5 K5 ["FFlagAssistantToolExistenceRefactor"]
       16 OR                               R4 R5 R2
       17 JUMPIFNOT                        R4 ; [+62]
       18 GETTABLEKS                       R5 R1 K4 ["name"]
       20 LOADNIL                          R6
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K5 ["FFlagAssistantToolExistenceRefactor"]
       24 JUMPIFNOT                        R7 ; [+25]
       25 GETTABLEKS                       R9 R1 K4 ["name"]
       27 LOADNIL                          R10
       28 GETUPVAL                         R11 3
       29 NEWCLOSURE                       R12 P0
       30 CAPTURE                          REF R10
       31 CAPTURE                          VAL R9
       32 CALL                             R11 1 0
       33 JUMPIF                           R10 ; [+4]
       34 MOVE                             R7 R9
       35 LOADNIL                          R8
       36 CLOSEUPVALS                      R10
       37 JUMP                             ; [+10]
       38 GETUPVAL                         R11 4
       39 GETTABLEKS                       R11 R11 K6 ["unpackServerIdentifier"]
       41 GETTABLEKS                       R12 R10 K7 ["serverIdentifier"]
       43 CALL                             R11 1 2
       44 GETTABLEKS                       R7 R10 K8 ["actualToolName"]
       46 MOVE                             R8 R12
       47 CLOSEUPVALS                      R10
       48 MOVE                             R5 R7
       49 MOVE                             R6 R8
       50 GETUPVAL                         R7 5
       51 GETTABLEKS                       R7 R7 K9 ["logToolStarted"]
       53 DUPTABLE                         R8 K18 [{"messageGuid", "sessionId", "toolId", "toolName", "serverName", "isSlashCommand", "assistantMode", "input"}]
       54 GETUPVAL                         R9 0
       55 SETTABLEKS                       R9 R8 K10 ["messageGuid"]
       57 GETUPVAL                         R9 6
       58 SETTABLEKS                       R9 R8 K11 ["sessionId"]
       60 GETTABLEKS                       R9 R1 K19 ["id"]
       62 SETTABLEKS                       R9 R8 K12 ["toolId"]
       64 SETTABLEKS                       R5 R8 K13 ["toolName"]
       66 SETTABLEKS                       R6 R8 K14 ["serverName"]
       68 SETTABLEKS                       R2 R8 K15 ["isSlashCommand"]
       70 GETUPVAL                         R9 7
       71 GETTABLEKS                       R9 R9 K16 ["assistantMode"]
       73 SETTABLEKS                       R9 R8 K16 ["assistantMode"]
       75 GETTABLEKS                       R9 R1 K17 ["input"]
       77 SETTABLEKS                       R9 R8 K17 ["input"]
       79 CALL                             R7 1 0
       80 GETUPVAL                         R5 1
       81 GETTABLEKS                       R5 R5 K20 ["None"]
       83 JUMPIFNOTEQ                      R3 R5 ; [+2]
       85 RETURN                           R0 0
       86 JUMPIFEQKNIL                     R3 ; [+20]
       88 GETUPVAL                         R5 8
       89 GETTABLEKS                       R6 R3 K21 ["getTransformPreExecuteFn"]
       91 MOVE                             R7 R1
       92 CALL                             R5 2 1
       93 NEWCLOSURE                       R6 P1
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R1
       96 GETUPVAL                         R7 9
       97 DUPTABLE                         R8 K25 [{"messageId", "contentId", "transformFn"}]
       98 GETUPVAL                         R9 0
       99 SETTABLEKS                       R9 R8 K22 ["messageId"]
      101 SETTABLEKS                       R0 R8 K23 ["contentId"]
      103 SETTABLEKS                       R6 R8 K24 ["transformFn"]
      105 CALL                             R7 1 0
      106 RETURN                           R0 0
      107 GETUPVAL                         R5 9
      108 DUPTABLE                         R6 K25 [{"messageId", "contentId", "transformFn"}]
      109 GETUPVAL                         R7 0
      110 SETTABLEKS                       R7 R6 K22 ["messageId"]
      112 SETTABLEKS                       R0 R6 K23 ["contentId"]
      114 NEWCLOSURE                       R7 P2
      115 CAPTURE                          VAL R1
      116 CAPTURE                          UPVAL U2
      117 SETTABLEKS                       R7 R6 K24 ["transformFn"]
      119 CALL                             R5 1 0
      120 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 RETURN                           R0 0

PROTO_27:
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
      100 DUPCLOSURE                       R10 K30 [PROTO_22]
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
      203 DUPCLOSURE                       R13 K46 [PROTO_26]
      204 SETTABLEKS                       R13 R12 K28 ["transformFn"]
      206 CALL                             R11 1 0
      207 GETUPVAL                         R11 1
      208 GETTABLEKS                       R11 R11 K31 ["unlock"]
      210 CALL                             R11 0 0
      211 RETURN                           R10 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getToolCallOptions"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resetPrompt"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_30:
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
       28 CAPTURE                          UPVAL U11
       29 CAPTURE                          VAL R2
       30 NEWCLOSURE                       R10 P3
       31 CAPTURE                          REF R5
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U8
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U12
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U13
       39 CAPTURE                          UPVAL U14
       40 NEWCLOSURE                       R11 P4
       41 CAPTURE                          REF R5
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R1
       44 NEWCLOSURE                       R12 P5
       45 CAPTURE                          REF R5
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U15
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U12
       54 CAPTURE                          VAL R1
       55 NEWCLOSURE                       R13 P6
       56 CAPTURE                          REF R5
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          VAL R4
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U12
       65 CAPTURE                          VAL R1
       66 GETUPVAL                         R14 16
       67 GETTABLEKS                       R14 R14 K5 ["createMutex"]
       69 CALL                             R14 0 1
       70 NEWCLOSURE                       R15 P7
       71 CAPTURE                          REF R5
       72 CAPTURE                          VAL R14
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          UPVAL U17
       76 CAPTURE                          UPVAL U14
       77 CAPTURE                          UPVAL U18
       78 CAPTURE                          VAL R3
       79 CAPTURE                          UPVAL U19
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R4
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          UPVAL U20
       85 DUPCLOSURE                       R16 K6 [PROTO_28]
       86 CAPTURE                          UPVAL U4
       87 DUPCLOSURE                       R17 K7 [PROTO_29]
       88 CAPTURE                          UPVAL U19
       89 DUPTABLE                         R18 K17 [{"onNewMessage", "onContentStart", "onContentDelta", "onContentFinished", "onToolResult", "onPreExecuteToolUse", "checkToolConfirmationRequestAsync", "getToolCallOptions", "onPromptEnd"}]
       90 SETTABLEKS                       R8 R18 K8 ["onNewMessage"]
       92 SETTABLEKS                       R9 R18 K9 ["onContentStart"]
       94 SETTABLEKS                       R10 R18 K10 ["onContentDelta"]
       96 SETTABLEKS                       R11 R18 K11 ["onContentFinished"]
       98 SETTABLEKS                       R12 R18 K12 ["onToolResult"]
      100 SETTABLEKS                       R13 R18 K13 ["onPreExecuteToolUse"]
      102 SETTABLEKS                       R15 R18 K14 ["checkToolConfirmationRequestAsync"]
      104 SETTABLEKS                       R16 R18 K15 ["getToolCallOptions"]
      106 SETTABLEKS                       R17 R18 K16 ["onPromptEnd"]
      108 CLOSEUPVALS                      R5
      109 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["ContentWidgetRegistry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Dash"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Util"]
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
       57 GETTABLEKS                       R8 R8 K7 ["ContentWidgets"]
       59 GETTABLEKS                       R8 R8 K19 ["GenericToolContentWidget"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K18 ["Components"]
       66 GETTABLEKS                       R9 R9 K7 ["ContentWidgets"]
       68 GETTABLEKS                       R9 R9 K20 ["InputRequestedContentWidget"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K18 ["Components"]
       75 GETTABLEKS                       R10 R10 K21 ["Contexts"]
       77 GETTABLEKS                       R10 R10 K22 ["DefaultLLMProvider"]
       79 GETTABLEKS                       R10 R10 K23 ["LLMProcessEvent"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K9 ["Parent"]
       86 GETTABLEKS                       R11 R11 K24 ["ModelContextProtocol"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K6 ["Util"]
       93 GETTABLEKS                       R12 R12 K25 ["MultiEditAcceptanceState"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K18 ["Components"]
      100 GETTABLEKS                       R13 R13 K7 ["ContentWidgets"]
      102 GETTABLEKS                       R13 R13 K26 ["ScriptChangeConfirmationContentWidget"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K18 ["Components"]
      109 GETTABLEKS                       R14 R14 K7 ["ContentWidgets"]
      111 GETTABLEKS                       R14 R14 K27 ["SummarizedContentWidget"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R15 R0 K6 ["Util"]
      118 GETTABLEKS                       R15 R15 K28 ["TaskCollector"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K18 ["Components"]
      125 GETTABLEKS                       R16 R16 K7 ["ContentWidgets"]
      127 GETTABLEKS                       R16 R16 K29 ["TextContentWidget"]
      129 CALL                             R15 1 1
      130 GETIMPORT                        R16 K5 [require]
      132 GETTABLEKS                       R17 R0 K18 ["Components"]
      134 GETTABLEKS                       R17 R17 K7 ["ContentWidgets"]
      136 GETTABLEKS                       R17 R17 K30 ["ThinkingContentWidget"]
      138 CALL                             R16 1 1
      139 GETIMPORT                        R17 K5 [require]
      141 GETTABLEKS                       R18 R0 K6 ["Util"]
      143 GETTABLEKS                       R18 R18 K31 ["Time"]
      145 CALL                             R17 1 1
      146 GETIMPORT                        R18 K5 [require]
      148 GETTABLEKS                       R19 R0 K18 ["Components"]
      150 GETTABLEKS                       R19 R19 K7 ["ContentWidgets"]
      152 GETTABLEKS                       R19 R19 K32 ["ToolConfirmationContentWidget"]
      154 CALL                             R18 1 1
      155 GETIMPORT                        R19 K5 [require]
      157 GETTABLEKS                       R20 R0 K6 ["Util"]
      159 GETTABLEKS                       R20 R20 K7 ["ContentWidgets"]
      161 GETTABLEKS                       R20 R20 K33 ["ToolWidgetMappingRegistry"]
      163 CALL                             R19 1 1
      164 GETIMPORT                        R20 K5 [require]
      166 GETTABLEKS                       R21 R0 K34 ["Resources"]
      168 GETTABLEKS                       R21 R21 K35 ["Localization"]
      170 GETTABLEKS                       R21 R21 K36 ["Translator"]
      172 CALL                             R20 1 1
      173 GETIMPORT                        R21 K5 [require]
      175 GETTABLEKS                       R22 R0 K37 ["Types"]
      177 CALL                             R21 1 1
      178 GETIMPORT                        R22 K5 [require]
      180 GETTABLEKS                       R23 R0 K18 ["Components"]
      182 GETTABLEKS                       R23 R23 K38 ["UIToolRegistry"]
      184 CALL                             R22 1 1
      185 GETIMPORT                        R23 K5 [require]
      187 GETTABLEKS                       R24 R0 K39 ["Hooks"]
      189 GETTABLEKS                       R24 R24 K40 ["useAddContent"]
      191 CALL                             R23 1 1
      192 GETIMPORT                        R24 K5 [require]
      194 GETTABLEKS                       R25 R0 K39 ["Hooks"]
      196 GETTABLEKS                       R25 R25 K41 ["useEditContent"]
      198 CALL                             R24 1 1
      199 GETTABLEKS                       R25 R10 K6 ["Util"]
      201 GETTABLEKS                       R25 R25 K42 ["MultiplexUtils"]
      203 NEWTABLE                         R26 1 0
      205 DUPCLOSURE                       R27 K43 [PROTO_0]
      206 DUPCLOSURE                       R28 K44 [PROTO_30]
      207 CAPTURE                          VAL R25
      208 CAPTURE                          VAL R15
      209 CAPTURE                          VAL R6
      210 CAPTURE                          VAL R16
      211 CAPTURE                          VAL R22
      212 CAPTURE                          VAL R19
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R20
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R3
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R27
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R17
      223 CAPTURE                          VAL R14
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R12
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R18
      228 SETTABLEKS                       R28 R26 K45 ["new"]
      230 RETURN                           R26 1
