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
       25 JUMP                             ; [+68]
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
       49 JUMP                             ; [+44]
       50 GETTABLEKS                       R2 R0 K3 ["type"]
       52 JUMPIFNOTEQKS                    R2 K13 ["tool_use"] ; [+41]
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
       75 JUMP                             ; [+18]
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
       94 GETUPVAL                         R4 5
       95 GETTABLEKS                       R3 R4 K22 ["Dictionary"]
       97 GETTABLEKS                       R2 R3 K23 ["join"]
       99 MOVE                             R3 R1
      100 DUPTABLE                         R4 K24 [{"generating"}]
      101 LOADB                            R5 1
      102 SETTABLEKS                       R5 R4 K5 ["generating"]
      104 CALL                             R2 2 1
      105 GETUPVAL                         R3 6
      106 DUPTABLE                         R4 K27 [{"messageId", "content"}]
      107 GETUPVAL                         R5 0
      108 SETTABLEKS                       R5 R4 K25 ["messageId"]
      110 SETTABLEKS                       R2 R4 K26 ["content"]
      112 CALL                             R3 1 1
      113 RETURN                           R3 1

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
       43 JUMPIFNOTEQKS                    R3 K10 ["json_delta"] ; [+44]
       45 JUMPIF                           R2 ; [+1]
       46 RETURN                           R0 0
       47 GETTABLEKS                       R3 R2 K11 ["toolName"]
       49 FASTCALL2K                       ASSERT R3 K12 ; [+5]
       51 MOVE                             R5 R3
       52 LOADK                            R6 K12 ["Received delta for unknown tool?"]
       53 GETIMPORT                        R4 K2 [assert]
       55 CALL                             R4 2 0
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R4 R5 K13 ["getStreamTransform"]
       59 MOVE                             R5 R3
       60 CALL                             R4 1 1
       61 GETUPVAL                         R6 2
       62 GETTABLEKS                       R5 R6 K14 ["None"]
       64 JUMPIFNOTEQ                      R4 R5 ; [+2]
       66 RETURN                           R0 0
       67 JUMPIFEQKNIL                     R4 ; [+26]
       69 GETUPVAL                         R5 3
       70 GETTABLEKS                       R6 R4 K15 ["getTransformDeltaFn"]
       72 GETTABLEKS                       R7 R1 K16 ["jsonDelta"]
       74 CALL                             R5 2 1
       75 JUMPIF                           R5 ; [+1]
       76 RETURN                           R0 0
       77 GETUPVAL                         R6 1
       78 DUPTABLE                         R7 K8 [{"messageId", "contentId", "transformFn"}]
       79 GETUPVAL                         R8 0
       80 SETTABLEKS                       R8 R7 K5 ["messageId"]
       82 SETTABLEKS                       R0 R7 K6 ["contentId"]
       84 SETTABLEKS                       R5 R7 K7 ["transformFn"]
       86 CALL                             R6 1 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R3 R4 K17 ["assertNever"]
       91 GETTABLEKS                       R4 R1 K3 ["type"]
       93 CALL                             R3 1 0
       94 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["generating"]
        4 RETURN                           R0 0

PROTO_9:
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
       14 DUPCLOSURE                       R3 K7 [PROTO_8]
       15 SETTABLEKS                       R3 R2 K5 ["transformFn"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K0 ["toolResult"]
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["toolResult"]
        3 RETURN                           R0 0

PROTO_12:
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
       57 DUPTABLE                         R7 K18 [{"messageGuid", "toolId", "toolName", "serverName", "startTime", "startTimeAfterConfirmation", "endTime", "isError"}]
       58 SETTABLEKS                       R3 R7 K10 ["messageGuid"]
       60 GETTABLEKS                       R8 R1 K19 ["id"]
       62 SETTABLEKS                       R8 R7 K11 ["toolId"]
       64 SETTABLEKS                       R4 R7 K12 ["toolName"]
       66 SETTABLEKS                       R5 R7 K13 ["serverName"]
       68 GETTABLEKS                       R8 R1 K14 ["startTime"]
       70 SETTABLEKS                       R8 R7 K14 ["startTime"]
       72 GETTABLEKS                       R8 R1 K15 ["startTimeAfterConfirmation"]
       74 SETTABLEKS                       R8 R7 K15 ["startTimeAfterConfirmation"]
       76 GETUPVAL                         R9 7
       77 GETTABLEKS                       R8 R9 K20 ["getTimestampMilliseconds"]
       79 CALL                             R8 0 1
       80 SETTABLEKS                       R8 R7 K16 ["endTime"]
       82 GETTABLEKS                       R8 R1 K17 ["isError"]
       84 SETTABLEKS                       R8 R7 K17 ["isError"]
       86 CALL                             R6 1 0
       87 GETUPVAL                         R7 1
       88 GETTABLEKS                       R6 R7 K21 ["None"]
       90 JUMPIFNOTEQ                      R2 R6 ; [+2]
       92 RETURN                           R0 0
       93 JUMPIFEQKNIL                     R2 ; [+20]
       95 GETUPVAL                         R6 8
       96 GETTABLEKS                       R7 R2 K22 ["getTransformResultFn"]
       98 MOVE                             R8 R1
       99 CALL                             R6 2 1
      100 NEWCLOSURE                       R7 P1
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R1
      103 GETUPVAL                         R8 9
      104 DUPTABLE                         R9 K26 [{"messageId", "contentId", "transformFn"}]
      105 GETUPVAL                         R10 0
      106 SETTABLEKS                       R10 R9 K23 ["messageId"]
      108 SETTABLEKS                       R0 R9 K24 ["contentId"]
      110 SETTABLEKS                       R7 R9 K25 ["transformFn"]
      112 CALL                             R8 1 0
      113 RETURN                           R0 0
      114 GETUPVAL                         R6 9
      115 DUPTABLE                         R7 K26 [{"messageId", "contentId", "transformFn"}]
      116 GETUPVAL                         R8 0
      117 SETTABLEKS                       R8 R7 K23 ["messageId"]
      119 SETTABLEKS                       R0 R7 K24 ["contentId"]
      121 NEWCLOSURE                       R8 P2
      122 CAPTURE                          VAL R1
      123 SETTABLEKS                       R8 R7 K25 ["transformFn"]
      125 CALL                             R6 1 0
      126 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K0 ["toolUse"]
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["toolUse"]
        3 RETURN                           R0 0

PROTO_15:
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
       15 JUMPIFNOT                        R3 ; [+38]
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
       42 DUPTABLE                         R6 K13 [{"messageGuid", "sessionId", "toolName", "serverName"}]
       43 GETUPVAL                         R7 0
       44 SETTABLEKS                       R7 R6 K9 ["messageGuid"]
       46 GETUPVAL                         R7 6
       47 SETTABLEKS                       R7 R6 K10 ["sessionId"]
       49 SETTABLEKS                       R3 R6 K11 ["toolName"]
       51 SETTABLEKS                       R4 R6 K12 ["serverName"]
       53 CALL                             R5 1 0
       54 GETUPVAL                         R4 1
       55 GETTABLEKS                       R3 R4 K14 ["None"]
       57 JUMPIFNOTEQ                      R2 R3 ; [+2]
       59 RETURN                           R0 0
       60 JUMPIFEQKNIL                     R2 ; [+20]
       62 GETUPVAL                         R3 7
       63 GETTABLEKS                       R4 R2 K15 ["getTransformPreExecuteFn"]
       65 MOVE                             R5 R1
       66 CALL                             R3 2 1
       67 NEWCLOSURE                       R4 P1
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R1
       70 GETUPVAL                         R5 8
       71 DUPTABLE                         R6 K19 [{"messageId", "contentId", "transformFn"}]
       72 GETUPVAL                         R7 0
       73 SETTABLEKS                       R7 R6 K16 ["messageId"]
       75 SETTABLEKS                       R0 R6 K17 ["contentId"]
       77 SETTABLEKS                       R4 R6 K18 ["transformFn"]
       79 CALL                             R5 1 0
       80 RETURN                           R0 0
       81 GETUPVAL                         R3 8
       82 DUPTABLE                         R4 K19 [{"messageId", "contentId", "transformFn"}]
       83 GETUPVAL                         R5 0
       84 SETTABLEKS                       R5 R4 K16 ["messageId"]
       86 SETTABLEKS                       R0 R4 K17 ["contentId"]
       88 NEWCLOSURE                       R5 P2
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R5 R4 K18 ["transformFn"]
       92 CALL                             R3 1 0
       93 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["accept"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETIMPORT                        R0 K7 [coroutine.status]
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 1
       18 JUMPIFNOTEQKS                    R0 K8 ["suspended"] ; [+6]
       20 GETIMPORT                        R0 K11 [task.spawn]
       22 GETUPVAL                         R1 3
       23 LOADB                            R2 1
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["reject"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETIMPORT                        R0 K7 [coroutine.status]
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 1
       18 JUMPIFNOTEQKS                    R0 K8 ["suspended"] ; [+6]
       20 GETIMPORT                        R0 K11 [task.spawn]
       22 GETUPVAL                         R1 3
       23 LOADB                            R2 0
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_22:
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
       16 GETUPVAL                         R0 4
       17 CALL                             R0 0 1
       18 JUMPIFNOT                        R0 ; [+6]
       19 GETIMPORT                        R0 K8 [coroutine.status]
       21 GETUPVAL                         R1 5
       22 CALL                             R0 1 1
       23 JUMPIFNOTEQKS                    R0 K9 ["suspended"] ; [+6]
       25 GETIMPORT                        R0 K12 [task.spawn]
       27 GETUPVAL                         R1 5
       28 LOADB                            R2 1
       29 CALL                             R0 2 0
       30 RETURN                           R0 0

PROTO_23:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K3 ["waitIfLocked"]
       13 CALL                             R2 0 0
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K4 ["getPreExecuteWarningResult"]
       17 MOVE                             R3 R0
       18 MOVE                             R4 R1
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+3]
       21 GETTABLEKS                       R3 R2 K5 ["shouldConfirm"]
       23 JUMPIF                           R3 ; [+2]
       24 LOADB                            R3 1
       25 RETURN                           R3 1
       26 GETUPVAL                         R3 1
       27 CALL                             R3 0 1
       28 JUMPIFNOT                        R3 ; [+4]
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R3 R4 K6 ["lock"]
       32 CALL                             R3 0 0
       33 LOADNIL                          R3
       34 GETIMPORT                        R4 K9 [coroutine.running]
       36 CALL                             R4 0 1
       37 GETTABLEKS                       R5 R2 K10 ["warningMessage"]
       39 GETUPVAL                         R7 4
       40 CALL                             R7 0 1
       41 JUMPIFNOT                        R7 ; [+2]
       42 GETUPVAL                         R6 0
       43 JUMP                             ; [+5]
       44 GETUPVAL                         R7 5
       45 GETTABLEKS                       R6 R7 K11 ["getMessageGuid"]
       47 GETUPVAL                         R7 0
       48 CALL                             R6 1 1
       49 GETUPVAL                         R7 6
       50 CALL                             R7 0 1
       51 JUMPIFNOT                        R7 ; [+68]
       52 GETTABLEKS                       R7 R2 K12 ["confirmationType"]
       54 GETUPVAL                         R10 7
       55 GETTABLEKS                       R9 R10 K13 ["ConfirmationType"]
       57 GETTABLEKS                       R8 R9 K14 ["ScriptChange"]
       59 JUMPIFNOTEQ                      R7 R8 ; [+60]
       61 DUPTABLE                         R7 K19 [{"type", "onReviewEach", "onAcceptAllPrompt", "onAcceptAllSession"}]
       62 GETUPVAL                         R9 8
       63 GETTABLEKS                       R8 R9 K20 ["Type"]
       65 SETTABLEKS                       R8 R7 K15 ["type"]
       67 NEWCLOSURE                       R8 P0
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          VAL R6
       70 CAPTURE                          UPVAL U9
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R8 R7 K16 ["onReviewEach"]
       74 NEWCLOSURE                       R8 P1
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R6
       77 CAPTURE                          UPVAL U9
       78 CAPTURE                          VAL R4
       79 SETTABLEKS                       R8 R7 K17 ["onAcceptAllPrompt"]
       81 NEWCLOSURE                       R8 P2
       82 CAPTURE                          UPVAL U5
       83 CAPTURE                          VAL R6
       84 CAPTURE                          UPVAL U9
       85 CAPTURE                          VAL R4
       86 SETTABLEKS                       R8 R7 K18 ["onAcceptAllSession"]
       88 GETUPVAL                         R8 10
       89 DUPTABLE                         R9 K23 [{"messageId", "content"}]
       90 GETUPVAL                         R10 0
       91 SETTABLEKS                       R10 R9 K21 ["messageId"]
       93 SETTABLEKS                       R7 R9 K22 ["content"]
       95 CALL                             R8 1 1
       96 MOVE                             R3 R8
       97 GETIMPORT                        R8 K25 [coroutine.yield]
       99 CALL                             R8 0 0
      100 GETUPVAL                         R8 11
      101 DUPTABLE                         R9 K28 [{"messageId", "contentId", "transformFn"}]
      102 GETUPVAL                         R10 0
      103 SETTABLEKS                       R10 R9 K21 ["messageId"]
      105 SETTABLEKS                       R3 R9 K26 ["contentId"]
      107 DUPCLOSURE                       R10 K29 [PROTO_19]
      108 SETTABLEKS                       R10 R9 K27 ["transformFn"]
      110 CALL                             R8 1 0
      111 GETUPVAL                         R8 1
      112 CALL                             R8 0 1
      113 JUMPIFNOT                        R8 ; [+4]
      114 GETUPVAL                         R9 2
      115 GETTABLEKS                       R8 R9 K30 ["unlock"]
      117 CALL                             R8 0 0
      118 LOADB                            R8 1
      119 RETURN                           R8 1
      120 MOVE                             R7 R0
      121 LOADNIL                          R8
      122 GETUPVAL                         R9 12
      123 CALL                             R9 0 1
      124 JUMPIFNOT                        R9 ; [+23]
      125 LOADNIL                          R11
      126 GETUPVAL                         R12 13
      127 NEWCLOSURE                       R13 P4
      128 CAPTURE                          REF R11
      129 CAPTURE                          VAL R0
      130 CALL                             R12 1 0
      131 JUMPIF                           R11 ; [+4]
      132 MOVE                             R9 R0
      133 LOADNIL                          R10
      134 CLOSEUPVALS                      R11
      135 JUMP                             ; [+10]
      136 GETUPVAL                         R13 14
      137 GETTABLEKS                       R12 R13 K31 ["unpackServerIdentifier"]
      139 GETTABLEKS                       R13 R11 K32 ["serverIdentifier"]
      141 CALL                             R12 1 2
      142 GETTABLEKS                       R9 R11 K33 ["actualToolName"]
      144 MOVE                             R10 R13
      145 CLOSEUPVALS                      R11
      146 MOVE                             R7 R9
      147 MOVE                             R8 R10
      148 GETUPVAL                         R10 5
      149 GETTABLEKS                       R9 R10 K34 ["logToolConfirmationShown"]
      151 DUPTABLE                         R10 K38 [{"messageGuid", "toolName", "serverName", "warningMessage"}]
      152 SETTABLEKS                       R6 R10 K35 ["messageGuid"]
      154 SETTABLEKS                       R7 R10 K36 ["toolName"]
      156 SETTABLEKS                       R8 R10 K37 ["serverName"]
      158 SETTABLEKS                       R5 R10 K10 ["warningMessage"]
      160 CALL                             R9 1 0
      161 DUPTABLE                         R9 K43 [{"type", "toolName", "toolInput", "warningMessage", "onConfirm", "onReject", "onAlwaysAccept"}]
      162 GETUPVAL                         R11 15
      163 GETTABLEKS                       R10 R11 K20 ["Type"]
      165 SETTABLEKS                       R10 R9 K15 ["type"]
      167 SETTABLEKS                       R0 R9 K36 ["toolName"]
      169 SETTABLEKS                       R1 R9 K39 ["toolInput"]
      171 SETTABLEKS                       R5 R9 K10 ["warningMessage"]
      173 NEWCLOSURE                       R10 P5
      174 CAPTURE                          UPVAL U5
      175 CAPTURE                          VAL R6
      176 CAPTURE                          UPVAL U1
      177 CAPTURE                          VAL R4
      178 SETTABLEKS                       R10 R9 K40 ["onConfirm"]
      180 NEWCLOSURE                       R10 P6
      181 CAPTURE                          UPVAL U5
      182 CAPTURE                          VAL R6
      183 CAPTURE                          UPVAL U1
      184 CAPTURE                          VAL R4
      185 SETTABLEKS                       R10 R9 K41 ["onReject"]
      187 NEWCLOSURE                       R10 P7
      188 CAPTURE                          UPVAL U5
      189 CAPTURE                          VAL R6
      190 CAPTURE                          UPVAL U3
      191 CAPTURE                          VAL R0
      192 CAPTURE                          UPVAL U1
      193 CAPTURE                          VAL R4
      194 SETTABLEKS                       R10 R9 K42 ["onAlwaysAccept"]
      196 GETUPVAL                         R10 10
      197 DUPTABLE                         R11 K23 [{"messageId", "content"}]
      198 GETUPVAL                         R12 0
      199 SETTABLEKS                       R12 R11 K21 ["messageId"]
      201 SETTABLEKS                       R9 R11 K22 ["content"]
      203 CALL                             R10 1 1
      204 MOVE                             R3 R10
      205 GETIMPORT                        R10 K25 [coroutine.yield]
      207 CALL                             R10 0 1
      208 GETUPVAL                         R11 11
      209 DUPTABLE                         R12 K28 [{"messageId", "contentId", "transformFn"}]
      210 GETUPVAL                         R13 0
      211 SETTABLEKS                       R13 R12 K21 ["messageId"]
      213 SETTABLEKS                       R3 R12 K26 ["contentId"]
      215 DUPCLOSURE                       R13 K44 [PROTO_23]
      216 SETTABLEKS                       R13 R12 K27 ["transformFn"]
      218 CALL                             R11 1 0
      219 GETUPVAL                         R11 1
      220 CALL                             R11 0 1
      221 JUMPIFNOT                        R11 ; [+4]
      222 GETUPVAL                         R12 2
      223 GETTABLEKS                       R11 R12 K30 ["unlock"]
      225 CALL                             R11 0 0
      226 RETURN                           R10 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getToolCallOptions"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["resetPrompt"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_27:
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
       23 CAPTURE                          VAL R2
       24 NEWCLOSURE                       R10 P3
       25 CAPTURE                          REF R5
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 NEWCLOSURE                       R11 P4
       31 CAPTURE                          REF R5
       32 CAPTURE                          VAL R1
       33 NEWCLOSURE                       R12 P5
       34 CAPTURE                          REF R5
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U9
       39 CAPTURE                          VAL R4
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U10
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          VAL R1
       44 NEWCLOSURE                       R13 P6
       45 CAPTURE                          REF R5
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U9
       48 CAPTURE                          VAL R4
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          VAL R1
       54 GETUPVAL                         R15 11
       55 CALL                             R15 0 1
       56 JUMPIFNOT                        R15 ; [+5]
       57 GETUPVAL                         R15 12
       58 GETTABLEKS                       R14 R15 K5 ["createMutex"]
       60 CALL                             R14 0 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R14
       63 NEWCLOSURE                       R15 P7
       64 CAPTURE                          REF R5
       65 CAPTURE                          UPVAL U11
       66 CAPTURE                          VAL R14
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          VAL R3
       70 CAPTURE                          UPVAL U13
       71 CAPTURE                          UPVAL U7
       72 CAPTURE                          UPVAL U14
       73 CAPTURE                          UPVAL U15
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R1
       76 CAPTURE                          UPVAL U9
       77 CAPTURE                          VAL R4
       78 CAPTURE                          UPVAL U0
       79 CAPTURE                          UPVAL U16
       80 DUPCLOSURE                       R16 K6 [PROTO_25]
       81 CAPTURE                          UPVAL U3
       82 DUPCLOSURE                       R17 K7 [PROTO_26]
       83 CAPTURE                          UPVAL U15
       84 DUPTABLE                         R18 K17 [{"onNewMessage", "onContentStart", "onContentDelta", "onContentFinished", "onToolResult", "onPreExecuteToolUse", "checkToolConfirmationRequestAsync", "getToolCallOptions", "onPromptEnd"}]
       85 SETTABLEKS                       R8 R18 K8 ["onNewMessage"]
       87 SETTABLEKS                       R9 R18 K9 ["onContentStart"]
       89 SETTABLEKS                       R10 R18 K10 ["onContentDelta"]
       91 SETTABLEKS                       R11 R18 K11 ["onContentFinished"]
       93 SETTABLEKS                       R12 R18 K12 ["onToolResult"]
       95 SETTABLEKS                       R13 R18 K13 ["onPreExecuteToolUse"]
       97 SETTABLEKS                       R15 R18 K14 ["checkToolConfirmationRequestAsync"]
       99 SETTABLEKS                       R16 R18 K15 ["getToolCallOptions"]
      101 SETTABLEKS                       R17 R18 K16 ["onPromptEnd"]
      103 CLOSEUPVALS                      R5
      104 RETURN                           R18 1

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
       34 GETTABLEKS                       R8 R0 K11 ["Components"]
       36 GETTABLEKS                       R7 R8 K14 ["Contexts"]
       38 GETTABLEKS                       R6 R7 K15 ["DefaultLLMProvider"]
       40 GETTABLEKS                       R5 R6 K16 ["LLMProcessEvent"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K6 ["Parent"]
       47 GETTABLEKS                       R6 R7 K17 ["ModelContextProtocol"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K18 ["Util"]
       54 GETTABLEKS                       R7 R8 K19 ["MultiEditAcceptanceState"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K11 ["Components"]
       61 GETTABLEKS                       R9 R10 K12 ["ContentWidgets"]
       63 GETTABLEKS                       R8 R9 K20 ["ScriptChangeConfirmationContentWidget"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R10 R0 K18 ["Util"]
       70 GETTABLEKS                       R9 R10 K21 ["TaskCollector"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R12 R0 K11 ["Components"]
       77 GETTABLEKS                       R11 R12 K12 ["ContentWidgets"]
       79 GETTABLEKS                       R10 R11 K22 ["TextContentWidget"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R13 R0 K11 ["Components"]
       86 GETTABLEKS                       R12 R13 K12 ["ContentWidgets"]
       88 GETTABLEKS                       R11 R12 K23 ["ThinkingContentWidget"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R13 R0 K18 ["Util"]
       95 GETTABLEKS                       R12 R13 K24 ["Time"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R15 R0 K11 ["Components"]
      102 GETTABLEKS                       R14 R15 K12 ["ContentWidgets"]
      104 GETTABLEKS                       R13 R14 K25 ["ToolConfirmationContentWidget"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K26 ["Types"]
      111 CALL                             R13 1 1
      112 GETIMPORT                        R14 K5 [require]
      114 GETTABLEKS                       R16 R0 K11 ["Components"]
      116 GETTABLEKS                       R15 R16 K27 ["UIToolRegistry"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R17 R0 K28 ["Hooks"]
      123 GETTABLEKS                       R16 R17 K29 ["useAddContent"]
      125 CALL                             R15 1 1
      126 GETIMPORT                        R16 K5 [require]
      128 GETTABLEKS                       R18 R0 K28 ["Hooks"]
      130 GETTABLEKS                       R17 R18 K30 ["useEditContent"]
      132 CALL                             R16 1 1
      133 GETIMPORT                        R17 K5 [require]
      135 GETTABLEKS                       R19 R0 K31 ["Flags"]
      137 GETTABLEKS                       R18 R19 K32 ["FFlagAssistantMultiEditConfirmation"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K5 [require]
      142 GETTABLEKS                       R20 R0 K31 ["Flags"]
      144 GETTABLEKS                       R19 R20 K33 ["FFlagAssistantPersistConversations"]
      146 CALL                             R18 1 1
      147 GETIMPORT                        R19 K5 [require]
      149 GETTABLEKS                       R21 R0 K31 ["Flags"]
      151 GETTABLEKS                       R20 R21 K34 ["FFlagAssistantSerializeToolConfirmation"]
      153 CALL                             R19 1 1
      154 GETIMPORT                        R20 K5 [require]
      156 GETTABLEKS                       R22 R0 K31 ["Flags"]
      158 GETTABLEKS                       R21 R22 K35 ["FFlagMCPAssistantManagementMenu"]
      160 CALL                             R20 1 1
      161 GETTABLEKS                       R22 R5 K18 ["Util"]
      163 GETTABLEKS                       R21 R22 K36 ["MultiplexUtils"]
      165 NEWTABLE                         R22 1 0
      167 DUPCLOSURE                       R23 K37 [PROTO_0]
      168 DUPCLOSURE                       R24 K38 [PROTO_27]
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R23
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R18
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R8
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R12
      186 SETTABLEKS                       R24 R22 K39 ["new"]
      188 RETURN                           R22 1
