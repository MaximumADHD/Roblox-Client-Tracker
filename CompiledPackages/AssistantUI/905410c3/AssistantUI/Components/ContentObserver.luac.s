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
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K0 ["unpackServerIdentifier"]
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
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K7 ["Type"]
       16 SETTABLEKS                       R3 R2 K3 ["type"]
       18 LOADK                            R3 K8 [""]
       19 SETTABLEKS                       R3 R2 K4 ["text"]
       21 LOADB                            R3 1
       22 SETTABLEKS                       R3 R2 K5 ["generating"]
       24 MOVE                             R1 R2
       25 JUMP                             ; [+130]
       26 GETTABLEKS                       R2 R0 K3 ["type"]
       28 JUMPIFNOTEQKS                    R2 K9 ["thinking"] ; [+21]
       30 DUPTABLE                         R2 K12 [{"type", "thinking", "signature", "generating", "expanded"}]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R3 R4 K7 ["Type"]
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
       49 JUMP                             ; [+106]
       50 GETTABLEKS                       R2 R0 K3 ["type"]
       52 JUMPIFNOTEQKS                    R2 K13 ["tool_use"] ; [+42]
       54 GETTABLEKS                       R2 R0 K14 ["name"]
       56 GETUPVAL                         R4 3
       57 GETTABLEKS                       R3 R4 K15 ["getStreamTransform"]
       59 MOVE                             R4 R2
       60 CALL                             R3 1 1
       61 GETUPVAL                         R5 3
       62 GETTABLEKS                       R4 R5 K16 ["None"]
       64 JUMPIFNOTEQ                      R3 R4 ; [+3]
       66 LOADNIL                          R4
       67 RETURN                           R4 1
       68 JUMPIFEQKNIL                     R3 ; [+7]
       70 GETTABLEKS                       R4 R3 K17 ["transformInitialContent"]
       72 MOVE                             R5 R0
       73 CALL                             R4 1 1
       74 MOVE                             R1 R4
       75 JUMP                             ; [+80]
       76 DUPTABLE                         R4 K21 [{"type", "toolIdentifier", "toolUse", "toolResult", "expanded"}]
       77 GETUPVAL                         R6 4
       78 GETTABLEKS                       R5 R6 K7 ["Type"]
       80 SETTABLEKS                       R5 R4 K3 ["type"]
       82 SETTABLEKS                       R2 R4 K18 ["toolIdentifier"]
       84 LOADNIL                          R5
       85 SETTABLEKS                       R5 R4 K19 ["toolUse"]
       87 LOADNIL                          R5
       88 SETTABLEKS                       R5 R4 K20 ["toolResult"]
       90 LOADB                            R5 0
       91 SETTABLEKS                       R5 R4 K11 ["expanded"]
       93 MOVE                             R1 R4
       94 JUMP                             ; [+61]
       95 GETTABLEKS                       R2 R0 K3 ["type"]
       97 JUMPIFNOTEQKS                    R2 K22 ["compaction_status"] ; [+17]
       99 DUPTABLE                         R2 K24 [{"type", "summary"}]
      100 GETUPVAL                         R4 5
      101 GETTABLEKS                       R3 R4 K7 ["Type"]
      103 SETTABLEKS                       R3 R2 K3 ["type"]
      105 GETUPVAL                         R3 6
      106 LOADK                            R5 K25 ["Compaction"]
      107 LOADK                            R6 K26 ["InProgress"]
      108 NAMECALL                         R3 R3 K27 ["getText"]
      110 CALL                             R3 3 1
      111 SETTABLEKS                       R3 R2 K23 ["summary"]
      113 MOVE                             R1 R2
      114 JUMP                             ; [+41]
      115 GETTABLEKS                       R2 R0 K3 ["type"]
      117 JUMPIFNOTEQKS                    R2 K28 ["input_requested"] ; [+38]
      119 DUPTABLE                         R2 K35 [{"type", "expanded", "status", "title", "description", "confirmButtonText", "propertyRows", "onContinue"}]
      120 GETUPVAL                         R4 7
      121 GETTABLEKS                       R3 R4 K7 ["Type"]
      123 SETTABLEKS                       R3 R2 K3 ["type"]
      125 LOADB                            R3 0
      126 SETTABLEKS                       R3 R2 K11 ["expanded"]
      128 GETUPVAL                         R5 7
      129 GETTABLEKS                       R4 R5 K36 ["InputStatus"]
      131 GETTABLEKS                       R3 R4 K37 ["Required"]
      133 SETTABLEKS                       R3 R2 K29 ["status"]
      135 GETTABLEKS                       R3 R0 K30 ["title"]
      137 SETTABLEKS                       R3 R2 K30 ["title"]
      139 GETTABLEKS                       R3 R0 K31 ["description"]
      141 SETTABLEKS                       R3 R2 K31 ["description"]
      143 GETTABLEKS                       R3 R0 K32 ["confirmButtonText"]
      145 SETTABLEKS                       R3 R2 K32 ["confirmButtonText"]
      147 GETTABLEKS                       R3 R0 K33 ["propertyRows"]
      149 SETTABLEKS                       R3 R2 K33 ["propertyRows"]
      151 GETTABLEKS                       R3 R0 K34 ["onContinue"]
      153 SETTABLEKS                       R3 R2 K34 ["onContinue"]
      155 MOVE                             R1 R2
      156 GETUPVAL                         R4 8
      157 GETTABLEKS                       R3 R4 K38 ["Dictionary"]
      159 GETTABLEKS                       R2 R3 K39 ["join"]
      161 MOVE                             R3 R1
      162 DUPTABLE                         R4 K40 [{"generating"}]
      163 LOADB                            R5 1
      164 SETTABLEKS                       R5 R4 K5 ["generating"]
      166 CALL                             R2 2 1
      167 GETUPVAL                         R3 9
      168 DUPTABLE                         R4 K43 [{"messageId", "content"}]
      169 GETUPVAL                         R5 0
      170 SETTABLEKS                       R5 R4 K41 ["messageId"]
      172 SETTABLEKS                       R2 R4 K42 ["content"]
      174 CALL                             R3 1 1
      175 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["text"]
        3 SETTABLEKS                       R1 R0 K0 ["text"]
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["thinking"]
        3 SETTABLEKS                       R1 R0 K0 ["thinking"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["signature"]
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
       73 GETUPVAL                         R5 3
       74 GETTABLEKS                       R4 R5 K15 ["getStreamTransform"]
       76 MOVE                             R5 R3
       77 CALL                             R4 1 1
       78 GETUPVAL                         R6 3
       79 GETTABLEKS                       R5 R6 K16 ["None"]
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
      105 GETUPVAL                         R4 5
      106 GETTABLEKS                       R3 R4 K19 ["assertNever"]
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
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K3 ["getStreamTransform"]
       10 GETTABLEKS                       R3 R1 K4 ["name"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R4 2
       14 CALL                             R4 0 1
       15 JUMPIFNOT                        R4 ; [+2]
       16 GETUPVAL                         R3 0
       17 JUMP                             ; [+5]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R3 R4 K5 ["getMessageGuid"]
       21 GETUPVAL                         R4 0
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R1 K4 ["name"]
       25 LOADNIL                          R5
       26 GETUPVAL                         R6 4
       27 CALL                             R6 0 1
       28 JUMPIFNOT                        R6 ; [+25]
       29 GETTABLEKS                       R8 R1 K4 ["name"]
       31 LOADNIL                          R9
       32 GETUPVAL                         R10 5
       33 NEWCLOSURE                       R11 P0
       34 CAPTURE                          REF R9
       35 CAPTURE                          VAL R8
       36 CALL                             R10 1 0
       37 JUMPIF                           R9 ; [+4]
       38 MOVE                             R6 R8
       39 LOADNIL                          R7
       40 CLOSEUPVALS                      R9
       41 JUMP                             ; [+10]
       42 GETUPVAL                         R11 6
       43 GETTABLEKS                       R10 R11 K6 ["unpackServerIdentifier"]
       45 GETTABLEKS                       R11 R9 K7 ["serverIdentifier"]
       47 CALL                             R10 1 2
       48 GETTABLEKS                       R6 R9 K8 ["actualToolName"]
       50 MOVE                             R7 R11
       51 CLOSEUPVALS                      R9
       52 MOVE                             R4 R6
       53 MOVE                             R5 R7
       54 GETUPVAL                         R7 3
       55 GETTABLEKS                       R6 R7 K9 ["logToolEnded"]
       57 DUPTABLE                         R7 K19 [{"messageGuid", "toolId", "toolName", "serverName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "assistantMode"}]
       58 SETTABLEKS                       R3 R7 K10 ["messageGuid"]
       60 GETTABLEKS                       R8 R1 K20 ["id"]
       62 SETTABLEKS                       R8 R7 K11 ["toolId"]
       64 SETTABLEKS                       R4 R7 K12 ["toolName"]
       66 SETTABLEKS                       R5 R7 K13 ["serverName"]
       68 GETTABLEKS                       R8 R1 K14 ["startTime"]
       70 SETTABLEKS                       R8 R7 K14 ["startTime"]
       72 GETTABLEKS                       R8 R1 K15 ["startTimeAfterConfirmation"]
       74 SETTABLEKS                       R8 R7 K15 ["startTimeAfterConfirmation"]
       76 GETUPVAL                         R9 7
       77 GETTABLEKS                       R8 R9 K21 ["getTimestampMilliseconds"]
       79 CALL                             R8 0 1
       80 SETTABLEKS                       R8 R7 K16 ["endTime"]
       82 GETTABLEKS                       R8 R1 K17 ["isError"]
       84 SETTABLEKS                       R8 R7 K17 ["isError"]
       86 GETUPVAL                         R9 8
       87 CALL                             R9 0 1
       88 JUMPIFNOT                        R9 ; [+4]
       89 GETUPVAL                         R9 9
       90 GETTABLEKS                       R8 R9 K18 ["assistantMode"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R8
       94 SETTABLEKS                       R8 R7 K18 ["assistantMode"]
       96 CALL                             R6 1 0
       97 GETUPVAL                         R7 1
       98 GETTABLEKS                       R6 R7 K22 ["None"]
      100 JUMPIFNOTEQ                      R2 R6 ; [+2]
      102 RETURN                           R0 0
      103 JUMPIFEQKNIL                     R2 ; [+20]
      105 GETUPVAL                         R6 10
      106 GETTABLEKS                       R7 R2 K23 ["getTransformResultFn"]
      108 MOVE                             R8 R1
      109 CALL                             R6 2 1
      110 NEWCLOSURE                       R7 P1
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R1
      113 GETUPVAL                         R8 11
      114 DUPTABLE                         R9 K27 [{"messageId", "contentId", "transformFn"}]
      115 GETUPVAL                         R10 0
      116 SETTABLEKS                       R10 R9 K24 ["messageId"]
      118 SETTABLEKS                       R0 R9 K25 ["contentId"]
      120 SETTABLEKS                       R7 R9 K26 ["transformFn"]
      122 CALL                             R8 1 0
      123 RETURN                           R0 0
      124 GETUPVAL                         R6 11
      125 DUPTABLE                         R7 K27 [{"messageId", "contentId", "transformFn"}]
      126 GETUPVAL                         R8 0
      127 SETTABLEKS                       R8 R7 K24 ["messageId"]
      129 SETTABLEKS                       R0 R7 K25 ["contentId"]
      131 NEWCLOSURE                       R8 P2
      132 CAPTURE                          VAL R1
      133 SETTABLEKS                       R8 R7 K26 ["transformFn"]
      135 CALL                             R6 1 0
      136 RETURN                           R0 0

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
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K3 ["getStreamTransform"]
       10 GETTABLEKS                       R3 R1 K4 ["name"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 2
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R3 ; [+48]
       16 GETTABLEKS                       R5 R1 K4 ["name"]
       18 LOADNIL                          R6
       19 GETUPVAL                         R7 3
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          REF R6
       22 CAPTURE                          VAL R5
       23 CALL                             R7 1 0
       24 JUMPIF                           R6 ; [+4]
       25 MOVE                             R3 R5
       26 LOADNIL                          R4
       27 CLOSEUPVALS                      R6
       28 JUMP                             ; [+10]
       29 GETUPVAL                         R8 4
       30 GETTABLEKS                       R7 R8 K5 ["unpackServerIdentifier"]
       32 GETTABLEKS                       R8 R6 K6 ["serverIdentifier"]
       34 CALL                             R7 1 2
       35 GETTABLEKS                       R3 R6 K7 ["actualToolName"]
       37 MOVE                             R4 R8
       38 CLOSEUPVALS                      R6
       39 GETUPVAL                         R6 5
       40 GETTABLEKS                       R5 R6 K8 ["logToolStarted"]
       42 DUPTABLE                         R6 K14 [{"messageGuid", "sessionId", "toolName", "serverName", "assistantMode"}]
       43 GETUPVAL                         R7 0
       44 SETTABLEKS                       R7 R6 K9 ["messageGuid"]
       46 GETUPVAL                         R7 6
       47 SETTABLEKS                       R7 R6 K10 ["sessionId"]
       49 SETTABLEKS                       R3 R6 K11 ["toolName"]
       51 SETTABLEKS                       R4 R6 K12 ["serverName"]
       53 GETUPVAL                         R8 7
       54 CALL                             R8 0 1
       55 JUMPIFNOT                        R8 ; [+4]
       56 GETUPVAL                         R8 8
       57 GETTABLEKS                       R7 R8 K13 ["assistantMode"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R7
       61 SETTABLEKS                       R7 R6 K13 ["assistantMode"]
       63 CALL                             R5 1 0
       64 GETUPVAL                         R4 1
       65 GETTABLEKS                       R3 R4 K15 ["None"]
       67 JUMPIFNOTEQ                      R2 R3 ; [+2]
       69 RETURN                           R0 0
       70 JUMPIFEQKNIL                     R2 ; [+20]
       72 GETUPVAL                         R3 9
       73 GETTABLEKS                       R4 R2 K16 ["getTransformPreExecuteFn"]
       75 MOVE                             R5 R1
       76 CALL                             R3 2 1
       77 NEWCLOSURE                       R4 P1
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R1
       80 GETUPVAL                         R5 10
       81 DUPTABLE                         R6 K20 [{"messageId", "contentId", "transformFn"}]
       82 GETUPVAL                         R7 0
       83 SETTABLEKS                       R7 R6 K17 ["messageId"]
       85 SETTABLEKS                       R0 R6 K18 ["contentId"]
       87 SETTABLEKS                       R4 R6 K19 ["transformFn"]
       89 CALL                             R5 1 0
       90 RETURN                           R0 0
       91 GETUPVAL                         R3 10
       92 DUPTABLE                         R4 K20 [{"messageId", "contentId", "transformFn"}]
       93 GETUPVAL                         R5 0
       94 SETTABLEKS                       R5 R4 K17 ["messageId"]
       96 SETTABLEKS                       R0 R4 K18 ["contentId"]
       98 NEWCLOSURE                       R5 P2
       99 CAPTURE                          VAL R1
      100 SETTABLEKS                       R5 R4 K19 ["transformFn"]
      102 CALL                             R3 1 0
      103 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["review_each"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K5 ["setReviewEach"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["accept_all_prompt"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K5 ["setAcceptAllPrompt"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["accept_all_session"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K5 ["setAcceptAllSession"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["logToolConfirmationResult"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["logToolConfirmationResult"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["always_accept"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K5 ["setToolAlwaysAccepted"]
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
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K3 ["waitIfLocked"]
       10 CALL                             R2 0 0
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K4 ["getPreExecuteWarningResult"]
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETTABLEKS                       R3 R2 K5 ["shouldConfirm"]
       20 JUMPIF                           R3 ; [+2]
       21 LOADB                            R3 1
       22 RETURN                           R3 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K6 ["lock"]
       26 CALL                             R3 0 0
       27 LOADNIL                          R3
       28 GETIMPORT                        R4 K9 [coroutine.running]
       30 CALL                             R4 0 1
       31 GETTABLEKS                       R5 R2 K10 ["warningMessage"]
       33 GETUPVAL                         R7 3
       34 CALL                             R7 0 1
       35 JUMPIFNOT                        R7 ; [+2]
       36 GETUPVAL                         R6 0
       37 JUMP                             ; [+5]
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R6 R7 K11 ["getMessageGuid"]
       41 GETUPVAL                         R7 0
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R2 K12 ["confirmationType"]
       45 GETUPVAL                         R10 5
       46 GETTABLEKS                       R9 R10 K13 ["ConfirmationType"]
       48 GETTABLEKS                       R8 R9 K14 ["ScriptChange"]
       50 JUMPIFNOTEQ                      R7 R8 ; [+57]
       52 DUPTABLE                         R7 K19 [{"type", "onReviewEach", "onAcceptAllPrompt", "onAcceptAllSession"}]
       53 GETUPVAL                         R9 6
       54 GETTABLEKS                       R8 R9 K20 ["Type"]
       56 SETTABLEKS                       R8 R7 K15 ["type"]
       58 NEWCLOSURE                       R8 P0
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R8 R7 K16 ["onReviewEach"]
       65 NEWCLOSURE                       R8 P1
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          VAL R6
       68 CAPTURE                          UPVAL U7
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R8 R7 K17 ["onAcceptAllPrompt"]
       72 NEWCLOSURE                       R8 P2
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          VAL R6
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          VAL R4
       77 SETTABLEKS                       R8 R7 K18 ["onAcceptAllSession"]
       79 GETUPVAL                         R8 8
       80 DUPTABLE                         R9 K23 [{"messageId", "content"}]
       81 GETUPVAL                         R10 0
       82 SETTABLEKS                       R10 R9 K21 ["messageId"]
       84 SETTABLEKS                       R7 R9 K22 ["content"]
       86 CALL                             R8 1 1
       87 MOVE                             R3 R8
       88 GETIMPORT                        R8 K25 [coroutine.yield]
       90 CALL                             R8 0 0
       91 GETUPVAL                         R8 9
       92 DUPTABLE                         R9 K28 [{"messageId", "contentId", "transformFn"}]
       93 GETUPVAL                         R10 0
       94 SETTABLEKS                       R10 R9 K21 ["messageId"]
       96 SETTABLEKS                       R3 R9 K26 ["contentId"]
       98 DUPCLOSURE                       R10 K29 [PROTO_20]
       99 SETTABLEKS                       R10 R9 K27 ["transformFn"]
      101 CALL                             R8 1 0
      102 GETUPVAL                         R9 1
      103 GETTABLEKS                       R8 R9 K30 ["unlock"]
      105 CALL                             R8 0 0
      106 LOADB                            R8 1
      107 RETURN                           R8 1
      108 MOVE                             R7 R0
      109 LOADNIL                          R8
      110 GETUPVAL                         R9 10
      111 CALL                             R9 0 1
      112 JUMPIFNOT                        R9 ; [+23]
      113 LOADNIL                          R11
      114 GETUPVAL                         R12 11
      115 NEWCLOSURE                       R13 P4
      116 CAPTURE                          REF R11
      117 CAPTURE                          VAL R0
      118 CALL                             R12 1 0
      119 JUMPIF                           R11 ; [+4]
      120 MOVE                             R9 R0
      121 LOADNIL                          R10
      122 CLOSEUPVALS                      R11
      123 JUMP                             ; [+10]
      124 GETUPVAL                         R13 12
      125 GETTABLEKS                       R12 R13 K31 ["unpackServerIdentifier"]
      127 GETTABLEKS                       R13 R11 K32 ["serverIdentifier"]
      129 CALL                             R12 1 2
      130 GETTABLEKS                       R9 R11 K33 ["actualToolName"]
      132 MOVE                             R10 R13
      133 CLOSEUPVALS                      R11
      134 MOVE                             R7 R9
      135 MOVE                             R8 R10
      136 GETUPVAL                         R10 4
      137 GETTABLEKS                       R9 R10 K34 ["logToolConfirmationShown"]
      139 DUPTABLE                         R10 K38 [{"messageGuid", "toolName", "serverName", "warningMessage"}]
      140 SETTABLEKS                       R6 R10 K35 ["messageGuid"]
      142 SETTABLEKS                       R7 R10 K36 ["toolName"]
      144 SETTABLEKS                       R8 R10 K37 ["serverName"]
      146 SETTABLEKS                       R5 R10 K10 ["warningMessage"]
      148 CALL                             R9 1 0
      149 DUPTABLE                         R9 K43 [{"type", "toolName", "toolInput", "warningMessage", "onConfirm", "onReject", "onAlwaysAccept"}]
      150 GETUPVAL                         R11 13
      151 GETTABLEKS                       R10 R11 K20 ["Type"]
      153 SETTABLEKS                       R10 R9 K15 ["type"]
      155 SETTABLEKS                       R0 R9 K36 ["toolName"]
      157 SETTABLEKS                       R1 R9 K39 ["toolInput"]
      159 SETTABLEKS                       R5 R9 K10 ["warningMessage"]
      161 NEWCLOSURE                       R10 P5
      162 CAPTURE                          UPVAL U4
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R4
      165 SETTABLEKS                       R10 R9 K40 ["onConfirm"]
      167 NEWCLOSURE                       R10 P6
      168 CAPTURE                          UPVAL U4
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R4
      171 SETTABLEKS                       R10 R9 K41 ["onReject"]
      173 NEWCLOSURE                       R10 P7
      174 CAPTURE                          UPVAL U4
      175 CAPTURE                          VAL R6
      176 CAPTURE                          UPVAL U2
      177 CAPTURE                          VAL R0
      178 CAPTURE                          VAL R4
      179 SETTABLEKS                       R10 R9 K42 ["onAlwaysAccept"]
      181 GETUPVAL                         R10 8
      182 DUPTABLE                         R11 K23 [{"messageId", "content"}]
      183 GETUPVAL                         R12 0
      184 SETTABLEKS                       R12 R11 K21 ["messageId"]
      186 SETTABLEKS                       R9 R11 K22 ["content"]
      188 CALL                             R10 1 1
      189 MOVE                             R3 R10
      190 GETIMPORT                        R10 K25 [coroutine.yield]
      192 CALL                             R10 0 1
      193 GETUPVAL                         R11 9
      194 DUPTABLE                         R12 K28 [{"messageId", "contentId", "transformFn"}]
      195 GETUPVAL                         R13 0
      196 SETTABLEKS                       R13 R12 K21 ["messageId"]
      198 SETTABLEKS                       R3 R12 K26 ["contentId"]
      200 DUPCLOSURE                       R13 K44 [PROTO_24]
      201 SETTABLEKS                       R13 R12 K27 ["transformFn"]
      203 CALL                             R11 1 0
      204 GETUPVAL                         R12 1
      205 GETTABLEKS                       R11 R12 K30 ["unlock"]
      207 CALL                             R11 0 0
      208 RETURN                           R10 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getToolCallOptions"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["resetPrompt"]
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
       26 CAPTURE                          VAL R2
       27 NEWCLOSURE                       R10 P3
       28 CAPTURE                          REF R5
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U10
       34 NEWCLOSURE                       R11 P4
       35 CAPTURE                          REF R5
       36 CAPTURE                          VAL R1
       37 NEWCLOSURE                       R12 P5
       38 CAPTURE                          REF R5
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U11
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U12
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U13
       46 CAPTURE                          UPVAL U14
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          VAL R1
       50 NEWCLOSURE                       R13 P6
       51 CAPTURE                          REF R5
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U12
       54 CAPTURE                          VAL R4
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          UPVAL U14
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U9
       61 CAPTURE                          VAL R1
       62 GETUPVAL                         R15 15
       63 GETTABLEKS                       R14 R15 K5 ["createMutex"]
       65 CALL                             R14 0 1
       66 NEWCLOSURE                       R15 P7
       67 CAPTURE                          REF R5
       68 CAPTURE                          VAL R14
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          UPVAL U11
       71 CAPTURE                          VAL R3
       72 CAPTURE                          UPVAL U10
       73 CAPTURE                          UPVAL U16
       74 CAPTURE                          UPVAL U17
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U12
       78 CAPTURE                          VAL R4
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U18
       81 DUPCLOSURE                       R16 K6 [PROTO_26]
       82 CAPTURE                          UPVAL U3
       83 DUPCLOSURE                       R17 K7 [PROTO_27]
       84 CAPTURE                          UPVAL U17
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
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Guest"]
       18 GETTABLEKS                       R4 R5 K9 ["Environment"]
       20 GETTABLEKS                       R3 R4 K10 ["EventLogger"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K11 ["Components"]
       27 GETTABLEKS                       R5 R6 K12 ["ContentWidgets"]
       29 GETTABLEKS                       R4 R5 K13 ["GenericToolContentWidget"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K11 ["Components"]
       36 GETTABLEKS                       R6 R7 K12 ["ContentWidgets"]
       38 GETTABLEKS                       R5 R6 K14 ["InputRequestedContentWidget"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R9 R0 K11 ["Components"]
       45 GETTABLEKS                       R8 R9 K15 ["Contexts"]
       47 GETTABLEKS                       R7 R8 K16 ["DefaultLLMProvider"]
       49 GETTABLEKS                       R6 R7 K17 ["LLMProcessEvent"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R8 R0 K6 ["Parent"]
       56 GETTABLEKS                       R7 R8 K18 ["ModelContextProtocol"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K19 ["Util"]
       63 GETTABLEKS                       R8 R9 K20 ["MultiEditAcceptanceState"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K11 ["Components"]
       70 GETTABLEKS                       R10 R11 K12 ["ContentWidgets"]
       72 GETTABLEKS                       R9 R10 K21 ["ScriptChangeConfirmationContentWidget"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K11 ["Components"]
       79 GETTABLEKS                       R11 R12 K12 ["ContentWidgets"]
       81 GETTABLEKS                       R10 R11 K22 ["SummarizedContentWidget"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R12 R0 K19 ["Util"]
       88 GETTABLEKS                       R11 R12 K23 ["TaskCollector"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R14 R0 K11 ["Components"]
       95 GETTABLEKS                       R13 R14 K12 ["ContentWidgets"]
       97 GETTABLEKS                       R12 R13 K24 ["TextContentWidget"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R15 R0 K11 ["Components"]
      104 GETTABLEKS                       R14 R15 K12 ["ContentWidgets"]
      106 GETTABLEKS                       R13 R14 K25 ["ThinkingContentWidget"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R15 R0 K19 ["Util"]
      113 GETTABLEKS                       R14 R15 K26 ["Time"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R17 R0 K11 ["Components"]
      120 GETTABLEKS                       R16 R17 K12 ["ContentWidgets"]
      122 GETTABLEKS                       R15 R16 K27 ["ToolConfirmationContentWidget"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R18 R0 K28 ["Resources"]
      129 GETTABLEKS                       R17 R18 K29 ["Localization"]
      131 GETTABLEKS                       R16 R17 K30 ["Translator"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K31 ["Types"]
      138 CALL                             R16 1 1
      139 GETIMPORT                        R17 K5 [require]
      141 GETTABLEKS                       R19 R0 K11 ["Components"]
      143 GETTABLEKS                       R18 R19 K32 ["UIToolRegistry"]
      145 CALL                             R17 1 1
      146 GETIMPORT                        R18 K5 [require]
      148 GETTABLEKS                       R20 R0 K33 ["Hooks"]
      150 GETTABLEKS                       R19 R20 K34 ["useAddContent"]
      152 CALL                             R18 1 1
      153 GETIMPORT                        R19 K5 [require]
      155 GETTABLEKS                       R21 R0 K33 ["Hooks"]
      157 GETTABLEKS                       R20 R21 K35 ["useEditContent"]
      159 CALL                             R19 1 1
      160 GETIMPORT                        R20 K5 [require]
      162 GETTABLEKS                       R22 R0 K36 ["Flags"]
      164 GETTABLEKS                       R21 R22 K37 ["getAssistantModeEnabled"]
      166 CALL                             R20 1 1
      167 GETIMPORT                        R21 K5 [require]
      169 GETTABLEKS                       R23 R0 K36 ["Flags"]
      171 GETTABLEKS                       R22 R23 K38 ["FFlagAssistantMultipleChatPersistence"]
      173 CALL                             R21 1 1
      174 GETIMPORT                        R22 K5 [require]
      176 GETTABLEKS                       R24 R0 K36 ["Flags"]
      178 GETTABLEKS                       R23 R24 K39 ["FFlagAssistantToolExistenceRefactor"]
      180 CALL                             R22 1 1
      181 GETTABLEKS                       R24 R6 K19 ["Util"]
      183 GETTABLEKS                       R23 R24 K40 ["MultiplexUtils"]
      185 NEWTABLE                         R24 1 0
      187 DUPCLOSURE                       R25 K41 [PROTO_0]
      188 DUPCLOSURE                       R26 K42 [PROTO_28]
      189 CAPTURE                          VAL R23
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R25
      199 CAPTURE                          VAL R16
      200 CAPTURE                          VAL R21
      201 CAPTURE                          VAL R22
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R14
      208 SETTABLEKS                       R26 R24 K43 ["new"]
      210 RETURN                           R24 1
