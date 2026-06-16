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
       10 JUMPIFNOTEQKS                    R2 K4 ["text"] ; [+15]
       12 DUPTABLE                         R2 K6 [{"type", "text", "generating"}]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K7 ["Type"]
       16 SETTABLEKS                       R3 R2 K3 ["type"]
       18 LOADK                            R3 K8 [""]
       19 SETTABLEKS                       R3 R2 K4 ["text"]
       21 LOADB                            R3 1
       22 SETTABLEKS                       R3 R2 K5 ["generating"]
       24 MOVE                             R1 R2
       25 JUMP                             ; [+153]
       26 GETTABLEKS                       R2 R0 K3 ["type"]
       28 JUMPIFNOTEQKS                    R2 K9 ["thinking"] ; [+21]
       30 DUPTABLE                         R2 K12 [{"type", "thinking", "signature", "generating", "expanded"}]
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K7 ["Type"]
       34 SETTABLEKS                       R3 R2 K3 ["type"]
       36 LOADK                            R3 K8 [""]
       37 SETTABLEKS                       R3 R2 K9 ["thinking"]
       39 LOADK                            R3 K8 [""]
       40 SETTABLEKS                       R3 R2 K10 ["signature"]
       42 LOADB                            R3 1
       43 SETTABLEKS                       R3 R2 K5 ["generating"]
       45 LOADB                            R3 0
       46 SETTABLEKS                       R3 R2 K11 ["expanded"]
       48 MOVE                             R1 R2
       49 JUMP                             ; [+129]
       50 GETTABLEKS                       R2 R0 K3 ["type"]
       52 JUMPIFNOTEQKS                    R2 K13 ["tool_use"] ; [+57]
       54 GETTABLEKS                       R2 R0 K14 ["name"]
       56 GETUPVAL                         R3 3
       57 GETTABLEKS                       R3 R3 K15 ["getStreamTransform"]
       59 MOVE                             R4 R2
       60 CALL                             R3 1 1
       61 GETUPVAL                         R4 3
       62 GETTABLEKS                       R4 R4 K16 ["None"]
       64 JUMPIFNOTEQ                      R3 R4 ; [+3]
       66 LOADNIL                          R4
       67 RETURN                           R4 1
       68 JUMPIFEQKNIL                     R3 ; [+7]
       70 GETTABLEKS                       R4 R3 K17 ["transformInitialContent"]
       72 MOVE                             R5 R0
       73 CALL                             R4 1 1
       74 MOVE                             R1 R4
       75 JUMP                             ; [+103]
       76 GETUPVAL                         R5 4
       77 CALL                             R5 0 1
       78 JUMPIFNOT                        R5 ; [+6]
       79 GETUPVAL                         R4 5
       80 GETTABLEKS                       R4 R4 K18 ["get"]
       82 MOVE                             R5 R2
       83 CALL                             R4 1 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R4
       86 JUMPIFNOT                        R4 ; [+10]
       87 GETUPVAL                         R5 6
       88 GETTABLEKS                       R5 R5 K7 ["Type"]
       90 JUMPIFEQ                         R4 R5 ; [+6]
       92 DUPTABLE                         R5 K19 [{"type"}]
       93 SETTABLEKS                       R4 R5 K3 ["type"]
       95 MOVE                             R1 R5
       96 JUMP                             ; [+82]
       97 DUPTABLE                         R5 K21 [{"type", "toolIdentifier", "expanded"}]
       98 GETUPVAL                         R6 6
       99 GETTABLEKS                       R6 R6 K7 ["Type"]
      101 SETTABLEKS                       R6 R5 K3 ["type"]
      103 SETTABLEKS                       R2 R5 K20 ["toolIdentifier"]
      105 LOADB                            R6 0
      106 SETTABLEKS                       R6 R5 K11 ["expanded"]
      108 MOVE                             R1 R5
      109 JUMP                             ; [+69]
      110 GETTABLEKS                       R2 R0 K3 ["type"]
      112 JUMPIFNOTEQKS                    R2 K22 ["compaction_status"] ; [+17]
      114 DUPTABLE                         R2 K24 [{"type", "summary"}]
      115 GETUPVAL                         R3 7
      116 GETTABLEKS                       R3 R3 K7 ["Type"]
      118 SETTABLEKS                       R3 R2 K3 ["type"]
      120 GETUPVAL                         R3 8
      121 LOADK                            R5 K25 ["Compaction"]
      122 LOADK                            R6 K26 ["InProgress"]
      123 NAMECALL                         R3 R3 K27 ["getText"]
      125 CALL                             R3 3 1
      126 SETTABLEKS                       R3 R2 K23 ["summary"]
      128 MOVE                             R1 R2
      129 JUMP                             ; [+49]
      130 GETTABLEKS                       R2 R0 K3 ["type"]
      132 JUMPIFNOTEQKS                    R2 K28 ["input_requested"] ; [+46]
      134 DUPTABLE                         R2 K37 [{"type", "expanded", "status", "title", "description", "confirmButtonText", "propertyRows", "onContinue", "onRevive", "canConfirm"}]
      135 GETUPVAL                         R3 9
      136 GETTABLEKS                       R3 R3 K7 ["Type"]
      138 SETTABLEKS                       R3 R2 K3 ["type"]
      140 LOADB                            R3 0
      141 SETTABLEKS                       R3 R2 K11 ["expanded"]
      143 GETUPVAL                         R3 9
      144 GETTABLEKS                       R3 R3 K38 ["InputStatus"]
      146 GETTABLEKS                       R3 R3 K39 ["Required"]
      148 SETTABLEKS                       R3 R2 K29 ["status"]
      150 GETTABLEKS                       R3 R0 K30 ["title"]
      152 SETTABLEKS                       R3 R2 K30 ["title"]
      154 GETTABLEKS                       R3 R0 K31 ["description"]
      156 SETTABLEKS                       R3 R2 K31 ["description"]
      158 GETTABLEKS                       R3 R0 K32 ["confirmButtonText"]
      160 SETTABLEKS                       R3 R2 K32 ["confirmButtonText"]
      162 GETTABLEKS                       R3 R0 K33 ["propertyRows"]
      164 SETTABLEKS                       R3 R2 K33 ["propertyRows"]
      166 GETTABLEKS                       R3 R0 K34 ["onContinue"]
      168 SETTABLEKS                       R3 R2 K34 ["onContinue"]
      170 GETTABLEKS                       R3 R0 K35 ["onRevive"]
      172 SETTABLEKS                       R3 R2 K35 ["onRevive"]
      174 GETTABLEKS                       R3 R0 K36 ["canConfirm"]
      176 SETTABLEKS                       R3 R2 K36 ["canConfirm"]
      178 MOVE                             R1 R2
      179 GETUPVAL                         R2 10
      180 GETTABLEKS                       R2 R2 K40 ["Dictionary"]
      182 GETTABLEKS                       R2 R2 K41 ["join"]
      184 MOVE                             R3 R1
      185 DUPTABLE                         R4 K42 [{"generating"}]
      186 LOADB                            R5 1
      187 SETTABLEKS                       R5 R4 K5 ["generating"]
      189 CALL                             R2 2 1
      190 GETUPVAL                         R3 11
      191 DUPTABLE                         R4 K45 [{"messageId", "content"}]
      192 GETUPVAL                         R5 0
      193 SETTABLEKS                       R5 R4 K43 ["messageId"]
      195 SETTABLEKS                       R2 R4 K44 ["content"]
      197 CALL                             R3 1 1
      198 RETURN                           R3 1

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
       13 GETUPVAL                         R5 2
       14 CALL                             R5 0 1
       15 JUMPIFNOT                        R5 ; [+2]
       16 GETUPVAL                         R4 0
       17 JUMP                             ; [+5]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K5 ["getMessageGuid"]
       21 GETUPVAL                         R5 0
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R5 R1 K4 ["name"]
       25 LOADNIL                          R6
       26 GETUPVAL                         R7 4
       27 CALL                             R7 0 1
       28 JUMPIFNOT                        R7 ; [+25]
       29 GETTABLEKS                       R9 R1 K4 ["name"]
       31 LOADNIL                          R10
       32 GETUPVAL                         R11 5
       33 NEWCLOSURE                       R12 P0
       34 CAPTURE                          REF R10
       35 CAPTURE                          VAL R9
       36 CALL                             R11 1 0
       37 JUMPIF                           R10 ; [+4]
       38 MOVE                             R7 R9
       39 LOADNIL                          R8
       40 CLOSEUPVALS                      R10
       41 JUMP                             ; [+10]
       42 GETUPVAL                         R11 6
       43 GETTABLEKS                       R11 R11 K6 ["unpackServerIdentifier"]
       45 GETTABLEKS                       R12 R10 K7 ["serverIdentifier"]
       47 CALL                             R11 1 2
       48 GETTABLEKS                       R7 R10 K8 ["actualToolName"]
       50 MOVE                             R8 R12
       51 CLOSEUPVALS                      R10
       52 MOVE                             R5 R7
       53 MOVE                             R6 R8
       54 JUMPIF                           R2 ; [+47]
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R7 R7 K9 ["logToolEnded"]
       58 DUPTABLE                         R8 K20 [{"messageGuid", "toolId", "toolName", "serverName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "assistantMode", "toolResultContent"}]
       59 SETTABLEKS                       R4 R8 K10 ["messageGuid"]
       61 GETTABLEKS                       R9 R1 K21 ["id"]
       63 SETTABLEKS                       R9 R8 K11 ["toolId"]
       65 SETTABLEKS                       R5 R8 K12 ["toolName"]
       67 SETTABLEKS                       R6 R8 K13 ["serverName"]
       69 GETTABLEKS                       R9 R1 K14 ["startTime"]
       71 SETTABLEKS                       R9 R8 K14 ["startTime"]
       73 GETTABLEKS                       R9 R1 K15 ["startTimeAfterConfirmation"]
       75 SETTABLEKS                       R9 R8 K15 ["startTimeAfterConfirmation"]
       77 GETUPVAL                         R9 7
       78 GETTABLEKS                       R9 R9 K22 ["getTimestampMilliseconds"]
       80 CALL                             R9 0 1
       81 SETTABLEKS                       R9 R8 K16 ["endTime"]
       83 GETTABLEKS                       R9 R1 K17 ["isError"]
       85 SETTABLEKS                       R9 R8 K17 ["isError"]
       87 GETUPVAL                         R10 8
       88 CALL                             R10 0 1
       89 JUMPIFNOT                        R10 ; [+4]
       90 GETUPVAL                         R9 9
       91 GETTABLEKS                       R9 R9 K18 ["assistantMode"]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R9
       95 SETTABLEKS                       R9 R8 K18 ["assistantMode"]
       97 GETTABLEKS                       R9 R1 K23 ["content"]
       99 SETTABLEKS                       R9 R8 K19 ["toolResultContent"]
      101 CALL                             R7 1 0
      102 GETUPVAL                         R7 1
      103 GETTABLEKS                       R7 R7 K24 ["None"]
      105 JUMPIFNOTEQ                      R3 R7 ; [+2]
      107 RETURN                           R0 0
      108 JUMPIFEQKNIL                     R3 ; [+20]
      110 GETUPVAL                         R7 10
      111 GETTABLEKS                       R8 R3 K25 ["getTransformResultFn"]
      113 MOVE                             R9 R1
      114 CALL                             R7 2 1
      115 NEWCLOSURE                       R8 P1
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R1
      118 GETUPVAL                         R9 11
      119 DUPTABLE                         R10 K29 [{"messageId", "contentId", "transformFn"}]
      120 GETUPVAL                         R11 0
      121 SETTABLEKS                       R11 R10 K26 ["messageId"]
      123 SETTABLEKS                       R0 R10 K27 ["contentId"]
      125 SETTABLEKS                       R8 R10 K28 ["transformFn"]
      127 CALL                             R9 1 0
      128 RETURN                           R0 0
      129 GETUPVAL                         R7 11
      130 DUPTABLE                         R8 K29 [{"messageId", "contentId", "transformFn"}]
      131 GETUPVAL                         R9 0
      132 SETTABLEKS                       R9 R8 K26 ["messageId"]
      134 SETTABLEKS                       R0 R8 K27 ["contentId"]
      136 NEWCLOSURE                       R9 P2
      137 CAPTURE                          VAL R1
      138 SETTABLEKS                       R9 R8 K28 ["transformFn"]
      140 CALL                             R7 1 0
      141 RETURN                           R0 0

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
       16 JUMPIFNOT                        R4 ; [+66]
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
       68 GETUPVAL                         R10 7
       69 CALL                             R10 0 1
       70 JUMPIFNOT                        R10 ; [+4]
       71 GETUPVAL                         R9 8
       72 GETTABLEKS                       R9 R9 K15 ["assistantMode"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R9
       76 SETTABLEKS                       R9 R8 K15 ["assistantMode"]
       78 GETTABLEKS                       R9 R1 K16 ["input"]
       80 SETTABLEKS                       R9 R8 K16 ["input"]
       82 CALL                             R7 1 0
       83 GETUPVAL                         R5 1
       84 GETTABLEKS                       R5 R5 K19 ["None"]
       86 JUMPIFNOTEQ                      R3 R5 ; [+2]
       88 RETURN                           R0 0
       89 JUMPIFEQKNIL                     R3 ; [+20]
       91 GETUPVAL                         R5 9
       92 GETTABLEKS                       R6 R3 K20 ["getTransformPreExecuteFn"]
       94 MOVE                             R7 R1
       95 CALL                             R5 2 1
       96 NEWCLOSURE                       R6 P1
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R1
       99 GETUPVAL                         R7 10
      100 DUPTABLE                         R8 K24 [{"messageId", "contentId", "transformFn"}]
      101 GETUPVAL                         R9 0
      102 SETTABLEKS                       R9 R8 K21 ["messageId"]
      104 SETTABLEKS                       R0 R8 K22 ["contentId"]
      106 SETTABLEKS                       R6 R8 K23 ["transformFn"]
      108 CALL                             R7 1 0
      109 RETURN                           R0 0
      110 GETUPVAL                         R5 10
      111 DUPTABLE                         R6 K24 [{"messageId", "contentId", "transformFn"}]
      112 GETUPVAL                         R7 0
      113 SETTABLEKS                       R7 R6 K21 ["messageId"]
      115 SETTABLEKS                       R0 R6 K22 ["contentId"]
      117 NEWCLOSURE                       R7 P2
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R7 R6 K23 ["transformFn"]
      121 CALL                             R5 1 0
      122 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["review_each"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K5 ["setReviewEach"]
       14 CALL                             R0 0 0
       15 GETIMPORT                        R0 K8 [coroutine.status]
       17 GETUPVAL                         R1 3
       18 CALL                             R0 1 1
       19 JUMPIFNOTEQKS                    R0 K9 ["suspended"] ; [+5]
       21 GETIMPORT                        R0 K12 [task.spawn]
       23 GETUPVAL                         R1 3
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["accept_all_prompt"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K5 ["setAcceptAllPrompt"]
       14 CALL                             R0 0 0
       15 GETIMPORT                        R0 K8 [coroutine.status]
       17 GETUPVAL                         R1 3
       18 CALL                             R0 1 1
       19 JUMPIFNOTEQKS                    R0 K9 ["suspended"] ; [+5]
       21 GETIMPORT                        R0 K12 [task.spawn]
       23 GETUPVAL                         R1 3
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["accept_all_session"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K5 ["setAcceptAllSession"]
       14 CALL                             R0 0 0
       15 GETIMPORT                        R0 K8 [coroutine.status]
       17 GETUPVAL                         R1 3
       18 CALL                             R0 1 1
       19 JUMPIFNOTEQKS                    R0 K9 ["suspended"] ; [+5]
       21 GETIMPORT                        R0 K12 [task.spawn]
       23 GETUPVAL                         R1 3
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_20:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["accept"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETIMPORT                        R0 K7 [coroutine.status]
       13 GETUPVAL                         R1 2
       14 CALL                             R0 1 1
       15 JUMPIFNOTEQKS                    R0 K8 ["suspended"] ; [+6]
       17 GETIMPORT                        R0 K11 [task.spawn]
       19 GETUPVAL                         R1 2
       20 LOADB                            R2 1
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["reject"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETIMPORT                        R0 K7 [coroutine.status]
       13 GETUPVAL                         R1 2
       14 CALL                             R0 1 1
       15 JUMPIFNOTEQKS                    R0 K8 ["suspended"] ; [+6]
       17 GETIMPORT                        R0 K11 [task.spawn]
       19 GETUPVAL                         R1 2
       20 LOADB                            R2 0
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["always_accept"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K5 ["setToolAlwaysAccepted"]
       14 GETUPVAL                         R1 3
       15 CALL                             R0 1 0
       16 GETIMPORT                        R0 K8 [coroutine.status]
       18 GETUPVAL                         R1 4
       19 CALL                             R0 1 1
       20 JUMPIFNOTEQKS                    R0 K9 ["suspended"] ; [+6]
       22 GETIMPORT                        R0 K12 [task.spawn]
       24 GETUPVAL                         R1 4
       25 LOADB                            R2 1
       26 CALL                             R0 2 0
       27 RETURN                           R0 0

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
       43 GETUPVAL                         R7 5
       44 CALL                             R7 0 1
       45 JUMPIFNOT                        R7 ; [+2]
       46 GETUPVAL                         R6 0
       47 JUMP                             ; [+5]
       48 GETUPVAL                         R6 6
       49 GETTABLEKS                       R6 R6 K12 ["getMessageGuid"]
       51 GETUPVAL                         R7 0
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K13 ["confirmationType"]
       55 GETUPVAL                         R8 7
       56 GETTABLEKS                       R8 R8 K14 ["ConfirmationType"]
       58 GETTABLEKS                       R8 R8 K15 ["ScriptChange"]
       60 JUMPIFNOTEQ                      R7 R8 ; [+57]
       62 DUPTABLE                         R7 K20 [{"type", "onReviewEach", "onAcceptAllPrompt", "onAcceptAllSession"}]
       63 GETUPVAL                         R8 8
       64 GETTABLEKS                       R8 R8 K21 ["Type"]
       66 SETTABLEKS                       R8 R7 K16 ["type"]
       68 NEWCLOSURE                       R8 P0
       69 CAPTURE                          UPVAL U6
       70 CAPTURE                          VAL R6
       71 CAPTURE                          UPVAL U9
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R8 R7 K17 ["onReviewEach"]
       75 NEWCLOSURE                       R8 P1
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          VAL R6
       78 CAPTURE                          UPVAL U9
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R8 R7 K18 ["onAcceptAllPrompt"]
       82 NEWCLOSURE                       R8 P2
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          VAL R6
       85 CAPTURE                          UPVAL U9
       86 CAPTURE                          VAL R4
       87 SETTABLEKS                       R8 R7 K19 ["onAcceptAllSession"]
       89 GETUPVAL                         R8 10
       90 DUPTABLE                         R9 K24 [{"messageId", "content"}]
       91 GETUPVAL                         R10 0
       92 SETTABLEKS                       R10 R9 K22 ["messageId"]
       94 SETTABLEKS                       R7 R9 K23 ["content"]
       96 CALL                             R8 1 1
       97 MOVE                             R3 R8
       98 GETIMPORT                        R8 K26 [coroutine.yield]
      100 CALL                             R8 0 0
      101 GETUPVAL                         R8 11
      102 DUPTABLE                         R9 K29 [{"messageId", "contentId", "transformFn"}]
      103 GETUPVAL                         R10 0
      104 SETTABLEKS                       R10 R9 K22 ["messageId"]
      106 SETTABLEKS                       R3 R9 K27 ["contentId"]
      108 DUPCLOSURE                       R10 K30 [PROTO_20]
      109 SETTABLEKS                       R10 R9 K28 ["transformFn"]
      111 CALL                             R8 1 0
      112 GETUPVAL                         R8 1
      113 GETTABLEKS                       R8 R8 K31 ["unlock"]
      115 CALL                             R8 0 0
      116 LOADB                            R8 1
      117 RETURN                           R8 1
      118 MOVE                             R7 R0
      119 LOADNIL                          R8
      120 GETUPVAL                         R9 12
      121 CALL                             R9 0 1
      122 JUMPIFNOT                        R9 ; [+23]
      123 LOADNIL                          R11
      124 GETUPVAL                         R12 13
      125 NEWCLOSURE                       R13 P4
      126 CAPTURE                          REF R11
      127 CAPTURE                          VAL R0
      128 CALL                             R12 1 0
      129 JUMPIF                           R11 ; [+4]
      130 MOVE                             R9 R0
      131 LOADNIL                          R10
      132 CLOSEUPVALS                      R11
      133 JUMP                             ; [+10]
      134 GETUPVAL                         R12 14
      135 GETTABLEKS                       R12 R12 K32 ["unpackServerIdentifier"]
      137 GETTABLEKS                       R13 R11 K33 ["serverIdentifier"]
      139 CALL                             R12 1 2
      140 GETTABLEKS                       R9 R11 K34 ["actualToolName"]
      142 MOVE                             R10 R13
      143 CLOSEUPVALS                      R11
      144 MOVE                             R7 R9
      145 MOVE                             R8 R10
      146 GETUPVAL                         R9 6
      147 GETTABLEKS                       R9 R9 K35 ["logToolConfirmationShown"]
      149 DUPTABLE                         R10 K39 [{"messageGuid", "toolName", "serverName", "warningMessage"}]
      150 SETTABLEKS                       R6 R10 K36 ["messageGuid"]
      152 SETTABLEKS                       R7 R10 K37 ["toolName"]
      154 SETTABLEKS                       R8 R10 K38 ["serverName"]
      156 SETTABLEKS                       R5 R10 K11 ["warningMessage"]
      158 CALL                             R9 1 0
      159 DUPTABLE                         R9 K44 [{"type", "toolName", "toolInput", "warningMessage", "onConfirm", "onReject", "onAlwaysAccept"}]
      160 GETUPVAL                         R10 15
      161 GETTABLEKS                       R10 R10 K21 ["Type"]
      163 SETTABLEKS                       R10 R9 K16 ["type"]
      165 SETTABLEKS                       R0 R9 K37 ["toolName"]
      167 SETTABLEKS                       R1 R9 K40 ["toolInput"]
      169 SETTABLEKS                       R5 R9 K11 ["warningMessage"]
      171 NEWCLOSURE                       R10 P5
      172 CAPTURE                          UPVAL U6
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R4
      175 SETTABLEKS                       R10 R9 K41 ["onConfirm"]
      177 NEWCLOSURE                       R10 P6
      178 CAPTURE                          UPVAL U6
      179 CAPTURE                          VAL R6
      180 CAPTURE                          VAL R4
      181 SETTABLEKS                       R10 R9 K42 ["onReject"]
      183 NEWCLOSURE                       R10 P7
      184 CAPTURE                          UPVAL U6
      185 CAPTURE                          VAL R6
      186 CAPTURE                          UPVAL U2
      187 CAPTURE                          VAL R0
      188 CAPTURE                          VAL R4
      189 SETTABLEKS                       R10 R9 K43 ["onAlwaysAccept"]
      191 GETUPVAL                         R10 10
      192 DUPTABLE                         R11 K24 [{"messageId", "content"}]
      193 GETUPVAL                         R12 0
      194 SETTABLEKS                       R12 R11 K22 ["messageId"]
      196 SETTABLEKS                       R9 R11 K23 ["content"]
      198 CALL                             R10 1 1
      199 MOVE                             R3 R10
      200 GETIMPORT                        R10 K26 [coroutine.yield]
      202 CALL                             R10 0 1
      203 GETUPVAL                         R11 11
      204 DUPTABLE                         R12 K29 [{"messageId", "contentId", "transformFn"}]
      205 GETUPVAL                         R13 0
      206 SETTABLEKS                       R13 R12 K22 ["messageId"]
      208 SETTABLEKS                       R3 R12 K27 ["contentId"]
      210 DUPCLOSURE                       R13 K45 [PROTO_24]
      211 SETTABLEKS                       R13 R12 K28 ["transformFn"]
      213 CALL                             R11 1 0
      214 GETUPVAL                         R11 1
      215 GETTABLEKS                       R11 R11 K31 ["unlock"]
      217 CALL                             R11 0 0
      218 RETURN                           R10 1

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
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U14
       45 CAPTURE                          VAL R4
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          UPVAL U15
       48 CAPTURE                          UPVAL U16
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U11
       51 CAPTURE                          VAL R1
       52 NEWCLOSURE                       R13 P6
       53 CAPTURE                          REF R5
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          UPVAL U14
       56 CAPTURE                          VAL R4
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R6
       60 CAPTURE                          UPVAL U16
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U11
       63 CAPTURE                          VAL R1
       64 GETUPVAL                         R14 17
       65 GETTABLEKS                       R14 R14 K5 ["createMutex"]
       67 CALL                             R14 0 1
       68 NEWCLOSURE                       R15 P7
       69 CAPTURE                          REF R5
       70 CAPTURE                          VAL R14
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          UPVAL U18
       73 CAPTURE                          UPVAL U19
       74 CAPTURE                          UPVAL U13
       75 CAPTURE                          VAL R3
       76 CAPTURE                          UPVAL U12
       77 CAPTURE                          UPVAL U20
       78 CAPTURE                          UPVAL U21
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R1
       81 CAPTURE                          UPVAL U14
       82 CAPTURE                          VAL R4
       83 CAPTURE                          UPVAL U0
       84 CAPTURE                          UPVAL U22
       85 DUPCLOSURE                       R16 K6 [PROTO_26]
       86 CAPTURE                          UPVAL U3
       87 DUPCLOSURE                       R17 K7 [PROTO_27]
       88 CAPTURE                          UPVAL U21
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
      182 GETTABLEKS                       R23 R23 K40 ["getAssistantModeEnabled"]
      184 CALL                             R22 1 1
      185 GETIMPORT                        R23 K5 [require]
      187 GETTABLEKS                       R24 R0 K39 ["Flags"]
      189 GETTABLEKS                       R24 R24 K41 ["FFlagAssistantEval"]
      191 CALL                             R23 1 1
      192 GETIMPORT                        R24 K5 [require]
      194 GETTABLEKS                       R25 R0 K39 ["Flags"]
      196 GETTABLEKS                       R25 R25 K42 ["FFlagAssistantMultipleChatPersistence"]
      198 CALL                             R24 1 1
      199 GETIMPORT                        R25 K5 [require]
      201 GETTABLEKS                       R26 R0 K39 ["Flags"]
      203 GETTABLEKS                       R26 R26 K43 ["FFlagAssistantSplitToolsAndWidgets"]
      205 CALL                             R25 1 1
      206 GETIMPORT                        R26 K5 [require]
      208 GETTABLEKS                       R27 R0 K39 ["Flags"]
      210 GETTABLEKS                       R27 R27 K44 ["FFlagAssistantToolExistenceRefactor"]
      212 CALL                             R26 1 1
      213 GETTABLEKS                       R27 R7 K8 ["Util"]
      215 GETTABLEKS                       R27 R27 K45 ["MultiplexUtils"]
      217 NEWTABLE                         R28 1 0
      219 DUPCLOSURE                       R29 K46 [PROTO_0]
      220 DUPCLOSURE                       R30 K47 [PROTO_28]
      221 CAPTURE                          VAL R27
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R19
      225 CAPTURE                          VAL R25
      226 CAPTURE                          VAL R16
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R10
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R5
      231 CAPTURE                          VAL R1
      232 CAPTURE                          VAL R29
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R24
      235 CAPTURE                          VAL R26
      236 CAPTURE                          VAL R14
      237 CAPTURE                          VAL R22
      238 CAPTURE                          VAL R11
      239 CAPTURE                          VAL R23
      240 CAPTURE                          VAL R2
      241 CAPTURE                          VAL R9
      242 CAPTURE                          VAL R8
      243 CAPTURE                          VAL R15
      244 SETTABLEKS                       R30 R28 K48 ["new"]
      246 RETURN                           R28 1
