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
       28 JUMP                             ; [+190]
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
       49 JUMP                             ; [+169]
       50 GETTABLEKS                       R2 R0 K3 ["type"]
       52 JUMPIFNOTEQKS                    R2 K15 ["tool_use"] ; [+86]
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
       75 JUMP                             ; [+143]
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
       98 JUMPIFNOT                        R4 ; [+30]
       99 GETUPVAL                         R5 6
      100 GETTABLEKS                       R5 R5 K8 ["Type"]
      102 JUMPIFEQ                         R4 R5 ; [+26]
      104 GETUPVAL                         R6 2
      105 GETTABLEKS                       R6 R6 K9 ["FFlagAssistantSplitToolsAndWidgets"]
      107 JUMPIFNOT                        R6 ; [+6]
      108 GETUPVAL                         R5 7
      109 GETTABLEKS                       R5 R5 K21 ["getAutoExpand"]
      111 MOVE                             R6 R4
      112 CALL                             R5 1 1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R5
      115 DUPTABLE                         R6 K22 [{"type", "expanded"}]
      116 SETTABLEKS                       R4 R6 K3 ["type"]
      118 JUMPIFNOT                        R5 ; [+5]
      119 GETTABLEKS                       R8 R5 K23 ["expandWhileGenerating"]
      121 JUMPIFNOT                        R8 ; [+2]
      122 LOADB                            R7 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R7
      125 SETTABLEKS                       R7 R6 K12 ["expanded"]
      127 MOVE                             R1 R6
      128 JUMP                             ; [+90]
      129 DUPTABLE                         R5 K25 [{["type"], ["toolIdentifier"], ["expanded"] = False}]
      130 GETUPVAL                         R6 6
      131 GETTABLEKS                       R6 R6 K8 ["Type"]
      133 SETTABLEKS                       R6 R5 K3 ["type"]
      135 SETTABLEKS                       R2 R5 K24 ["toolIdentifier"]
      137 MOVE                             R1 R5
      138 JUMP                             ; [+80]
      139 GETTABLEKS                       R2 R0 K3 ["type"]
      141 JUMPIFNOTEQKS                    R2 K26 ["compaction_status"] ; [+17]
      143 DUPTABLE                         R2 K28 [{"type", "summary"}]
      144 GETUPVAL                         R3 8
      145 GETTABLEKS                       R3 R3 K8 ["Type"]
      147 SETTABLEKS                       R3 R2 K3 ["type"]
      149 GETUPVAL                         R3 9
      150 LOADK                            R5 K29 ["Compaction"]
      151 LOADK                            R6 K30 ["InProgress"]
      152 NAMECALL                         R3 R3 K31 ["getText"]
      154 CALL                             R3 3 1
      155 SETTABLEKS                       R3 R2 K27 ["summary"]
      157 MOVE                             R1 R2
      158 JUMP                             ; [+60]
      159 GETTABLEKS                       R2 R0 K3 ["type"]
      161 JUMPIFNOTEQKS                    R2 K32 ["input_requested"] ; [+57]
      163 DUPTABLE                         R2 K43 [{["type"], ["expanded"] = False, ["status"], ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["onContinue"], ["onRevive"], ["canConfirm"], ["getDisabledReason"], ["imageSelection"]}]
      164 GETUPVAL                         R3 10
      165 GETTABLEKS                       R3 R3 K8 ["Type"]
      167 SETTABLEKS                       R3 R2 K3 ["type"]
      169 GETUPVAL                         R3 10
      170 GETTABLEKS                       R3 R3 K44 ["InputStatus"]
      172 GETTABLEKS                       R3 R3 K45 ["Required"]
      174 SETTABLEKS                       R3 R2 K33 ["status"]
      176 GETTABLEKS                       R3 R0 K34 ["title"]
      178 SETTABLEKS                       R3 R2 K34 ["title"]
      180 GETTABLEKS                       R3 R0 K35 ["description"]
      182 SETTABLEKS                       R3 R2 K35 ["description"]
      184 GETTABLEKS                       R3 R0 K36 ["confirmButtonText"]
      186 SETTABLEKS                       R3 R2 K36 ["confirmButtonText"]
      188 GETTABLEKS                       R3 R0 K37 ["propertyRows"]
      190 SETTABLEKS                       R3 R2 K37 ["propertyRows"]
      192 GETTABLEKS                       R3 R0 K38 ["onContinue"]
      194 SETTABLEKS                       R3 R2 K38 ["onContinue"]
      196 GETTABLEKS                       R3 R0 K39 ["onRevive"]
      198 SETTABLEKS                       R3 R2 K39 ["onRevive"]
      200 GETTABLEKS                       R3 R0 K40 ["canConfirm"]
      202 SETTABLEKS                       R3 R2 K40 ["canConfirm"]
      204 GETUPVAL                         R4 2
      205 GETTABLEKS                       R4 R4 K46 ["FFlagAssistantDisabledReason"]
      207 JUMPIFNOT                        R4 ; [+3]
      208 GETTABLEKS                       R3 R0 K41 ["getDisabledReason"]
      210 JUMP                             ; [+1]
      211 LOADNIL                          R3
      212 SETTABLEKS                       R3 R2 K41 ["getDisabledReason"]
      214 GETTABLEKS                       R3 R0 K42 ["imageSelection"]
      216 SETTABLEKS                       R3 R2 K42 ["imageSelection"]
      218 MOVE                             R1 R2
      219 LOADNIL                          R2
      220 GETUPVAL                         R3 2
      221 GETTABLEKS                       R3 R3 K9 ["FFlagAssistantSplitToolsAndWidgets"]
      223 JUMPIFNOT                        R3 ; [+12]
      224 GETUPVAL                         R3 11
      225 GETTABLEKS                       R3 R3 K47 ["assign"]
      227 MOVE                             R4 R1
      228 DUPTABLE                         R5 K49 [{"streaming"}]
      229 NEWTABLE                         R6 0 0
      231 SETTABLEKS                       R6 R5 K48 ["streaming"]
      233 CALL                             R3 2 1
      234 MOVE                             R2 R3
      235 JUMP                             ; [+9]
      236 GETUPVAL                         R3 12
      237 GETTABLEKS                       R3 R3 K50 ["Dictionary"]
      239 GETTABLEKS                       R3 R3 K51 ["join"]
      241 MOVE                             R4 R1
      242 DUPTABLE                         R5 K53 [{["generating"] = True}]
      243 CALL                             R3 2 1
      244 MOVE                             R2 R3
      245 GETUPVAL                         R3 13
      246 DUPTABLE                         R4 K56 [{"messageId", "content"}]
      247 GETUPVAL                         R5 0
      248 SETTABLEKS                       R5 R4 K54 ["messageId"]
      250 SETTABLEKS                       R2 R4 K55 ["content"]
      252 CALL                             R3 1 1
      253 RETURN                           R3 1

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
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["collapseOnComplete"]
        8 JUMPIFNOT                        R1 ; [+3]
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["expanded"]
       12 RETURN                           R0 0

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
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R8 R1 K5 ["id"]
       17 GETTABLE                         R6 R7 R8
       18 JUMPIFEQKB                       R6 TRUE ; [+2]
       20 LOADB                            R5 0 +1
       21 LOADB                            R5 1
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R7 R1 K5 ["id"]
       25 LOADNIL                          R8
       26 SETTABLE                         R8 R6 R7
       27 GETTABLEKS                       R6 R1 K4 ["name"]
       29 LOADNIL                          R7
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R8 R8 K6 ["FFlagAssistantToolExistenceRefactor"]
       33 JUMPIFNOT                        R8 ; [+25]
       34 GETTABLEKS                       R10 R1 K4 ["name"]
       36 LOADNIL                          R11
       37 GETUPVAL                         R12 4
       38 NEWCLOSURE                       R13 P0
       39 CAPTURE                          REF R11
       40 CAPTURE                          VAL R10
       41 CALL                             R12 1 0
       42 JUMPIF                           R11 ; [+4]
       43 MOVE                             R8 R10
       44 LOADNIL                          R9
       45 CLOSEUPVALS                      R11
       46 JUMP                             ; [+10]
       47 GETUPVAL                         R12 5
       48 GETTABLEKS                       R12 R12 K7 ["unpackServerIdentifier"]
       50 GETTABLEKS                       R13 R11 K8 ["serverIdentifier"]
       52 CALL                             R12 1 2
       53 GETTABLEKS                       R8 R11 K9 ["actualToolName"]
       55 MOVE                             R9 R13
       56 CLOSEUPVALS                      R11
       57 MOVE                             R6 R8
       58 MOVE                             R7 R9
       59 JUMPIF                           R2 ; [+44]
       60 GETUPVAL                         R8 6
       61 GETTABLEKS                       R8 R8 K10 ["logToolEnded"]
       63 DUPTABLE                         R9 K22 [{"messageGuid", "toolId", "toolName", "serverName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "isSlashCommand", "assistantMode", "toolResultContent"}]
       64 SETTABLEKS                       R4 R9 K11 ["messageGuid"]
       66 GETTABLEKS                       R10 R1 K5 ["id"]
       68 SETTABLEKS                       R10 R9 K12 ["toolId"]
       70 SETTABLEKS                       R6 R9 K13 ["toolName"]
       72 SETTABLEKS                       R7 R9 K14 ["serverName"]
       74 GETTABLEKS                       R10 R1 K15 ["startTime"]
       76 SETTABLEKS                       R10 R9 K15 ["startTime"]
       78 GETTABLEKS                       R10 R1 K16 ["startTimeAfterConfirmation"]
       80 SETTABLEKS                       R10 R9 K16 ["startTimeAfterConfirmation"]
       82 GETUPVAL                         R10 7
       83 GETTABLEKS                       R10 R10 K23 ["getTimestampMilliseconds"]
       85 CALL                             R10 0 1
       86 SETTABLEKS                       R10 R9 K17 ["endTime"]
       88 GETTABLEKS                       R10 R1 K18 ["isError"]
       90 SETTABLEKS                       R10 R9 K18 ["isError"]
       92 SETTABLEKS                       R5 R9 K19 ["isSlashCommand"]
       94 GETUPVAL                         R10 8
       95 GETTABLEKS                       R10 R10 K20 ["assistantMode"]
       97 SETTABLEKS                       R10 R9 K20 ["assistantMode"]
       99 GETTABLEKS                       R10 R1 K24 ["content"]
      101 SETTABLEKS                       R10 R9 K21 ["toolResultContent"]
      103 CALL                             R8 1 0
      104 GETUPVAL                         R8 1
      105 GETTABLEKS                       R8 R8 K25 ["None"]
      107 JUMPIFNOTEQ                      R3 R8 ; [+2]
      109 RETURN                           R0 0
      110 JUMPIFEQKNIL                     R3 ; [+20]
      112 GETUPVAL                         R8 9
      113 GETTABLEKS                       R9 R3 K26 ["getTransformResultFn"]
      115 MOVE                             R10 R1
      116 CALL                             R8 2 1
      117 NEWCLOSURE                       R9 P1
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R1
      120 GETUPVAL                         R10 10
      121 DUPTABLE                         R11 K30 [{"messageId", "contentId", "transformFn"}]
      122 GETUPVAL                         R12 0
      123 SETTABLEKS                       R12 R11 K27 ["messageId"]
      125 SETTABLEKS                       R0 R11 K28 ["contentId"]
      127 SETTABLEKS                       R9 R11 K29 ["transformFn"]
      129 CALL                             R10 1 0
      130 RETURN                           R0 0
      131 GETUPVAL                         R9 3
      132 GETTABLEKS                       R9 R9 K31 ["FFlagAssistantSplitToolsAndWidgets"]
      134 JUMPIFNOT                        R9 ; [+7]
      135 GETUPVAL                         R8 11
      136 GETTABLEKS                       R8 R8 K32 ["get"]
      138 GETTABLEKS                       R9 R1 K4 ["name"]
      140 CALL                             R8 1 1
      141 JUMP                             ; [+1]
      142 LOADNIL                          R8
      143 JUMPIFNOT                        R8 ; [+6]
      144 GETUPVAL                         R9 12
      145 GETTABLEKS                       R9 R9 K33 ["getAutoExpand"]
      147 MOVE                             R10 R8
      148 CALL                             R9 1 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R9
      151 GETUPVAL                         R10 10
      152 DUPTABLE                         R11 K30 [{"messageId", "contentId", "transformFn"}]
      153 GETUPVAL                         R12 0
      154 SETTABLEKS                       R12 R11 K27 ["messageId"]
      156 SETTABLEKS                       R0 R11 K28 ["contentId"]
      158 NEWCLOSURE                       R12 P2
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R9
      161 SETTABLEKS                       R12 R11 K29 ["transformFn"]
      163 CALL                             R10 1 0
      164 RETURN                           R0 0

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
        8 GETTABLEKS                       R4 R1 K3 ["id"]
       10 JUMPIFEQKB                       R2 TRUE ; [+2]
       12 LOADB                            R5 0 +1
       13 LOADB                            R5 1
       14 SETTABLE                         R5 R3 R4
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K4 ["getStreamTransform"]
       18 GETTABLEKS                       R4 R1 K5 ["name"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K6 ["FFlagAssistantToolExistenceRefactor"]
       24 OR                               R4 R5 R2
       25 JUMPIFNOT                        R4 ; [+62]
       26 GETTABLEKS                       R5 R1 K5 ["name"]
       28 LOADNIL                          R6
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R7 R7 K6 ["FFlagAssistantToolExistenceRefactor"]
       32 JUMPIFNOT                        R7 ; [+25]
       33 GETTABLEKS                       R9 R1 K5 ["name"]
       35 LOADNIL                          R10
       36 GETUPVAL                         R11 4
       37 NEWCLOSURE                       R12 P0
       38 CAPTURE                          REF R10
       39 CAPTURE                          VAL R9
       40 CALL                             R11 1 0
       41 JUMPIF                           R10 ; [+4]
       42 MOVE                             R7 R9
       43 LOADNIL                          R8
       44 CLOSEUPVALS                      R10
       45 JUMP                             ; [+10]
       46 GETUPVAL                         R11 5
       47 GETTABLEKS                       R11 R11 K7 ["unpackServerIdentifier"]
       49 GETTABLEKS                       R12 R10 K8 ["serverIdentifier"]
       51 CALL                             R11 1 2
       52 GETTABLEKS                       R7 R10 K9 ["actualToolName"]
       54 MOVE                             R8 R12
       55 CLOSEUPVALS                      R10
       56 MOVE                             R5 R7
       57 MOVE                             R6 R8
       58 GETUPVAL                         R7 6
       59 GETTABLEKS                       R7 R7 K10 ["logToolStarted"]
       61 DUPTABLE                         R8 K19 [{"messageGuid", "sessionId", "toolId", "toolName", "serverName", "isSlashCommand", "assistantMode", "input"}]
       62 GETUPVAL                         R9 0
       63 SETTABLEKS                       R9 R8 K11 ["messageGuid"]
       65 GETUPVAL                         R9 7
       66 SETTABLEKS                       R9 R8 K12 ["sessionId"]
       68 GETTABLEKS                       R9 R1 K3 ["id"]
       70 SETTABLEKS                       R9 R8 K13 ["toolId"]
       72 SETTABLEKS                       R5 R8 K14 ["toolName"]
       74 SETTABLEKS                       R6 R8 K15 ["serverName"]
       76 SETTABLEKS                       R2 R8 K16 ["isSlashCommand"]
       78 GETUPVAL                         R9 8
       79 GETTABLEKS                       R9 R9 K17 ["assistantMode"]
       81 SETTABLEKS                       R9 R8 K17 ["assistantMode"]
       83 GETTABLEKS                       R9 R1 K18 ["input"]
       85 SETTABLEKS                       R9 R8 K18 ["input"]
       87 CALL                             R7 1 0
       88 GETUPVAL                         R5 2
       89 GETTABLEKS                       R5 R5 K20 ["None"]
       91 JUMPIFNOTEQ                      R3 R5 ; [+2]
       93 RETURN                           R0 0
       94 JUMPIFEQKNIL                     R3 ; [+20]
       96 GETUPVAL                         R5 9
       97 GETTABLEKS                       R6 R3 K21 ["getTransformPreExecuteFn"]
       99 MOVE                             R7 R1
      100 CALL                             R5 2 1
      101 NEWCLOSURE                       R6 P1
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R1
      104 GETUPVAL                         R7 10
      105 DUPTABLE                         R8 K25 [{"messageId", "contentId", "transformFn"}]
      106 GETUPVAL                         R9 0
      107 SETTABLEKS                       R9 R8 K22 ["messageId"]
      109 SETTABLEKS                       R0 R8 K23 ["contentId"]
      111 SETTABLEKS                       R6 R8 K24 ["transformFn"]
      113 CALL                             R7 1 0
      114 RETURN                           R0 0
      115 GETUPVAL                         R5 10
      116 DUPTABLE                         R6 K25 [{"messageId", "contentId", "transformFn"}]
      117 GETUPVAL                         R7 0
      118 SETTABLEKS                       R7 R6 K22 ["messageId"]
      120 SETTABLEKS                       R0 R6 K23 ["contentId"]
      122 NEWCLOSURE                       R7 P2
      123 CAPTURE                          VAL R1
      124 CAPTURE                          UPVAL U3
      125 SETTABLEKS                       R7 R6 K24 ["transformFn"]
      127 CALL                             R5 1 0
      128 RETURN                           R0 0

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
       11 NEWTABLE                         R7 0 0
       13 NEWCLOSURE                       R8 P0
       14 CAPTURE                          VAL R4
       15 CAPTURE                          UPVAL U0
       16 NEWCLOSURE                       R9 P1
       17 CAPTURE                          REF R5
       18 NEWCLOSURE                       R10 P2
       19 CAPTURE                          REF R5
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          UPVAL U7
       27 CAPTURE                          UPVAL U8
       28 CAPTURE                          UPVAL U9
       29 CAPTURE                          UPVAL U10
       30 CAPTURE                          UPVAL U11
       31 CAPTURE                          UPVAL U12
       32 CAPTURE                          VAL R2
       33 NEWCLOSURE                       R11 P3
       34 CAPTURE                          REF R5
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U9
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U13
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          UPVAL U14
       43 NEWCLOSURE                       R12 P4
       44 CAPTURE                          REF R5
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R1
       47 NEWCLOSURE                       R13 P5
       48 CAPTURE                          REF R5
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R7
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          VAL R3
       55 CAPTURE                          UPVAL U15
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U13
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U7
       61 NEWCLOSURE                       R14 P6
       62 CAPTURE                          REF R5
       63 CAPTURE                          VAL R7
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          VAL R4
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U13
       72 CAPTURE                          VAL R1
       73 GETUPVAL                         R15 16
       74 GETTABLEKS                       R15 R15 K5 ["createMutex"]
       76 CALL                             R15 0 1
       77 NEWCLOSURE                       R16 P7
       78 CAPTURE                          REF R5
       79 CAPTURE                          VAL R15
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          UPVAL U17
       83 CAPTURE                          UPVAL U14
       84 CAPTURE                          UPVAL U18
       85 CAPTURE                          VAL R3
       86 CAPTURE                          UPVAL U19
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R4
       90 CAPTURE                          UPVAL U0
       91 CAPTURE                          UPVAL U20
       92 DUPCLOSURE                       R17 K6 [PROTO_28]
       93 CAPTURE                          UPVAL U4
       94 DUPCLOSURE                       R18 K7 [PROTO_29]
       95 CAPTURE                          UPVAL U19
       96 DUPTABLE                         R19 K17 [{"onNewMessage", "onContentStart", "onContentDelta", "onContentFinished", "onToolResult", "onPreExecuteToolUse", "checkToolConfirmationRequestAsync", "getToolCallOptions", "onPromptEnd"}]
       97 SETTABLEKS                       R9 R19 K8 ["onNewMessage"]
       99 SETTABLEKS                       R10 R19 K9 ["onContentStart"]
      101 SETTABLEKS                       R11 R19 K10 ["onContentDelta"]
      103 SETTABLEKS                       R12 R19 K11 ["onContentFinished"]
      105 SETTABLEKS                       R13 R19 K12 ["onToolResult"]
      107 SETTABLEKS                       R14 R19 K13 ["onPreExecuteToolUse"]
      109 SETTABLEKS                       R16 R19 K14 ["checkToolConfirmationRequestAsync"]
      111 SETTABLEKS                       R17 R19 K15 ["getToolCallOptions"]
      113 SETTABLEKS                       R18 R19 K16 ["onPromptEnd"]
      115 CLOSEUPVALS                      R5
      116 RETURN                           R19 1

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
       27 GETTABLEKS                       R4 R4 K11 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["Dash"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Util"]
       41 GETTABLEKS                       R6 R6 K13 ["AssistantEval"]
       43 GETTABLEKS                       R6 R6 K14 ["EvalController"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K15 ["Guest"]
       50 GETTABLEKS                       R7 R7 K16 ["Environment"]
       52 GETTABLEKS                       R7 R7 K17 ["EventLogger"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K18 ["Flags"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K19 ["Components"]
       64 GETTABLEKS                       R9 R9 K9 ["ContentWidgets"]
       66 GETTABLEKS                       R9 R9 K20 ["GenericToolContentWidget"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K19 ["Components"]
       73 GETTABLEKS                       R10 R10 K9 ["ContentWidgets"]
       75 GETTABLEKS                       R10 R10 K21 ["InputRequestedContentWidget"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K6 ["Parent"]
       82 GETTABLEKS                       R11 R11 K22 ["ModelContextProtocol"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K8 ["Util"]
       89 GETTABLEKS                       R12 R12 K23 ["MultiEditAcceptanceState"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K19 ["Components"]
       96 GETTABLEKS                       R13 R13 K9 ["ContentWidgets"]
       98 GETTABLEKS                       R13 R13 K24 ["ScriptChangeConfirmationContentWidget"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K19 ["Components"]
      105 GETTABLEKS                       R14 R14 K9 ["ContentWidgets"]
      107 GETTABLEKS                       R14 R14 K25 ["SummarizedContentWidget"]
      109 CALL                             R13 1 1
      110 GETTABLEKS                       R14 R1 K26 ["Engine"]
      112 GETTABLEKS                       R14 R14 K27 ["TaskCollector"]
      114 GETIMPORT                        R15 K5 [require]
      116 GETTABLEKS                       R16 R0 K19 ["Components"]
      118 GETTABLEKS                       R16 R16 K9 ["ContentWidgets"]
      120 GETTABLEKS                       R16 R16 K28 ["TextContentWidget"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K5 [require]
      125 GETTABLEKS                       R17 R0 K19 ["Components"]
      127 GETTABLEKS                       R17 R17 K9 ["ContentWidgets"]
      129 GETTABLEKS                       R17 R17 K29 ["ThinkingContentWidget"]
      131 CALL                             R16 1 1
      132 GETTABLEKS                       R17 R1 K26 ["Engine"]
      134 GETTABLEKS                       R17 R17 K30 ["Time"]
      136 GETIMPORT                        R18 K5 [require]
      138 GETTABLEKS                       R19 R0 K19 ["Components"]
      140 GETTABLEKS                       R19 R19 K9 ["ContentWidgets"]
      142 GETTABLEKS                       R19 R19 K31 ["ToolConfirmationContentWidget"]
      144 CALL                             R18 1 1
      145 GETIMPORT                        R19 K5 [require]
      147 GETTABLEKS                       R20 R0 K8 ["Util"]
      149 GETTABLEKS                       R20 R20 K9 ["ContentWidgets"]
      151 GETTABLEKS                       R20 R20 K32 ["ToolWidgetMappingRegistry"]
      153 CALL                             R19 1 1
      154 GETIMPORT                        R20 K5 [require]
      156 GETTABLEKS                       R21 R0 K33 ["Resources"]
      158 GETTABLEKS                       R21 R21 K34 ["Localization"]
      160 GETTABLEKS                       R21 R21 K35 ["Translator"]
      162 CALL                             R20 1 1
      163 GETIMPORT                        R21 K5 [require]
      165 GETTABLEKS                       R22 R0 K36 ["Types"]
      167 CALL                             R21 1 1
      168 GETIMPORT                        R22 K5 [require]
      170 GETTABLEKS                       R23 R0 K19 ["Components"]
      172 GETTABLEKS                       R23 R23 K37 ["UIToolRegistry"]
      174 CALL                             R22 1 1
      175 GETIMPORT                        R23 K5 [require]
      177 GETTABLEKS                       R24 R0 K38 ["Hooks"]
      179 GETTABLEKS                       R24 R24 K39 ["useAddContent"]
      181 CALL                             R23 1 1
      182 GETIMPORT                        R24 K5 [require]
      184 GETTABLEKS                       R25 R0 K38 ["Hooks"]
      186 GETTABLEKS                       R25 R25 K40 ["useEditContent"]
      188 CALL                             R24 1 1
      189 GETTABLEKS                       R25 R10 K8 ["Util"]
      191 GETTABLEKS                       R25 R25 K41 ["MultiplexUtils"]
      193 NEWTABLE                         R26 1 0
      195 DUPCLOSURE                       R27 K42 [PROTO_0]
      196 DUPCLOSURE                       R28 K43 [PROTO_30]
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R15
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R22
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R8
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R13
      206 CAPTURE                          VAL R20
      207 CAPTURE                          VAL R9
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R17
      213 CAPTURE                          VAL R14
      214 CAPTURE                          VAL R5
      215 CAPTURE                          VAL R12
      216 CAPTURE                          VAL R11
      217 CAPTURE                          VAL R18
      218 SETTABLEKS                       R28 R26 K44 ["new"]
      220 RETURN                           R26 1
