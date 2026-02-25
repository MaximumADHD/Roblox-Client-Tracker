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
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["text"]
        3 SETTABLEKS                       R1 R0 K0 ["text"]
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["thinking"]
        3 SETTABLEKS                       R1 R0 K0 ["thinking"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["signature"]
        8 SETTABLEKS                       R1 R0 K1 ["signature"]
       10 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["generating"]
        4 RETURN                           R0 0

PROTO_7:
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
       14 DUPCLOSURE                       R3 K7 [PROTO_6]
       15 SETTABLEKS                       R3 R2 K5 ["transformFn"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K0 ["toolResult"]
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["toolResult"]
        3 RETURN                           R0 0

PROTO_10:
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
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R4 R5 K6 ["logToolEnded"]
       26 DUPTABLE                         R5 K14 [{"messageGuid", "toolId", "toolName", "startTime", "startTimeAfterConfirmation", "endTime", "isError"}]
       27 SETTABLEKS                       R3 R5 K7 ["messageGuid"]
       29 GETTABLEKS                       R6 R1 K15 ["id"]
       31 SETTABLEKS                       R6 R5 K8 ["toolId"]
       33 GETTABLEKS                       R6 R1 K4 ["name"]
       35 SETTABLEKS                       R6 R5 K9 ["toolName"]
       37 GETTABLEKS                       R6 R1 K10 ["startTime"]
       39 SETTABLEKS                       R6 R5 K10 ["startTime"]
       41 GETTABLEKS                       R6 R1 K11 ["startTimeAfterConfirmation"]
       43 SETTABLEKS                       R6 R5 K11 ["startTimeAfterConfirmation"]
       45 GETUPVAL                         R7 4
       46 GETTABLEKS                       R6 R7 K16 ["getTimestampMilliseconds"]
       48 CALL                             R6 0 1
       49 SETTABLEKS                       R6 R5 K12 ["endTime"]
       51 GETTABLEKS                       R6 R1 K13 ["isError"]
       53 SETTABLEKS                       R6 R5 K13 ["isError"]
       55 CALL                             R4 1 0
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R4 R5 K17 ["None"]
       59 JUMPIFNOTEQ                      R2 R4 ; [+2]
       61 RETURN                           R0 0
       62 JUMPIFEQKNIL                     R2 ; [+20]
       64 GETUPVAL                         R4 5
       65 GETTABLEKS                       R5 R2 K18 ["getTransformResultFn"]
       67 MOVE                             R6 R1
       68 CALL                             R4 2 1
       69 NEWCLOSURE                       R5 P0
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R1
       72 GETUPVAL                         R6 6
       73 DUPTABLE                         R7 K22 [{"messageId", "contentId", "transformFn"}]
       74 GETUPVAL                         R8 0
       75 SETTABLEKS                       R8 R7 K19 ["messageId"]
       77 SETTABLEKS                       R0 R7 K20 ["contentId"]
       79 SETTABLEKS                       R5 R7 K21 ["transformFn"]
       81 CALL                             R6 1 0
       82 RETURN                           R0 0
       83 GETUPVAL                         R4 6
       84 DUPTABLE                         R5 K22 [{"messageId", "contentId", "transformFn"}]
       85 GETUPVAL                         R6 0
       86 SETTABLEKS                       R6 R5 K19 ["messageId"]
       88 SETTABLEKS                       R0 R5 K20 ["contentId"]
       90 NEWCLOSURE                       R6 P1
       91 CAPTURE                          VAL R1
       92 SETTABLEKS                       R6 R5 K21 ["transformFn"]
       94 CALL                             R4 1 0
       95 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R1 R0 K0 ["toolUse"]
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["toolUse"]
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
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K5 ["None"]
       16 JUMPIFNOTEQ                      R2 R3 ; [+2]
       18 RETURN                           R0 0
       19 JUMPIFEQKNIL                     R2 ; [+20]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R4 R2 K6 ["getTransformPreExecuteFn"]
       24 MOVE                             R5 R1
       25 CALL                             R3 2 1
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 GETUPVAL                         R5 3
       30 DUPTABLE                         R6 K10 [{"messageId", "contentId", "transformFn"}]
       31 GETUPVAL                         R7 0
       32 SETTABLEKS                       R7 R6 K7 ["messageId"]
       34 SETTABLEKS                       R0 R6 K8 ["contentId"]
       36 SETTABLEKS                       R4 R6 K9 ["transformFn"]
       38 CALL                             R5 1 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R3 3
       41 DUPTABLE                         R4 K10 [{"messageId", "contentId", "transformFn"}]
       42 GETUPVAL                         R5 0
       43 SETTABLEKS                       R5 R4 K7 ["messageId"]
       45 SETTABLEKS                       R0 R4 K8 ["contentId"]
       47 NEWCLOSURE                       R5 P1
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R5 R4 K9 ["transformFn"]
       51 CALL                             R3 1 0
       52 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["accept"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETIMPORT                        R0 K7 [task.spawn]
       13 GETUPVAL                         R1 2
       14 LOADB                            R2 1
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["logToolConfirmationResult"]
        3 DUPTABLE                         R1 K3 [{"messageGuid", "result"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["messageGuid"]
        7 LOADK                            R2 K4 ["reject"]
        8 SETTABLEKS                       R2 R1 K2 ["result"]
       10 CALL                             R0 1 0
       11 GETIMPORT                        R0 K7 [task.spawn]
       13 GETUPVAL                         R1 2
       14 LOADB                            R2 0
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_16:
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
       16 GETIMPORT                        R0 K8 [task.spawn]
       18 GETUPVAL                         R1 4
       19 LOADB                            R2 1
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_17:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["hidden"]
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Expected messageId to be set"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K3 ["getPreExecuteWarningResult"]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETTABLEKS                       R3 R2 K4 ["shouldConfirm"]
       16 JUMPIF                           R3 ; [+2]
       17 LOADB                            R3 1
       18 RETURN                           R3 1
       19 LOADNIL                          R3
       20 GETIMPORT                        R4 K7 [coroutine.running]
       22 CALL                             R4 0 1
       23 GETTABLEKS                       R5 R2 K8 ["warningMessage"]
       25 GETUPVAL                         R7 2
       26 CALL                             R7 0 1
       27 JUMPIFNOT                        R7 ; [+2]
       28 GETUPVAL                         R6 0
       29 JUMP                             ; [+5]
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R6 R7 K9 ["getMessageGuid"]
       33 GETUPVAL                         R7 0
       34 CALL                             R6 1 1
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R7 R8 K10 ["logToolConfirmationShown"]
       38 DUPTABLE                         R8 K13 [{"messageGuid", "toolName", "warningMessage"}]
       39 SETTABLEKS                       R6 R8 K11 ["messageGuid"]
       41 SETTABLEKS                       R0 R8 K12 ["toolName"]
       43 SETTABLEKS                       R5 R8 K8 ["warningMessage"]
       45 CALL                             R7 1 0
       46 DUPTABLE                         R7 K19 [{"type", "toolName", "toolInput", "warningMessage", "onConfirm", "onReject", "onAlwaysAccept"}]
       47 GETUPVAL                         R9 4
       48 GETTABLEKS                       R8 R9 K20 ["Type"]
       50 SETTABLEKS                       R8 R7 K14 ["type"]
       52 SETTABLEKS                       R0 R7 K12 ["toolName"]
       54 SETTABLEKS                       R1 R7 K15 ["toolInput"]
       56 SETTABLEKS                       R5 R7 K8 ["warningMessage"]
       58 NEWCLOSURE                       R8 P0
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R4
       62 SETTABLEKS                       R8 R7 K16 ["onConfirm"]
       64 NEWCLOSURE                       R8 P1
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R8 R7 K17 ["onReject"]
       70 NEWCLOSURE                       R8 P2
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          VAL R6
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R8 R7 K18 ["onAlwaysAccept"]
       78 GETUPVAL                         R8 5
       79 DUPTABLE                         R9 K23 [{"messageId", "content"}]
       80 GETUPVAL                         R10 0
       81 SETTABLEKS                       R10 R9 K21 ["messageId"]
       83 SETTABLEKS                       R7 R9 K22 ["content"]
       85 CALL                             R8 1 1
       86 MOVE                             R3 R8
       87 GETIMPORT                        R8 K25 [coroutine.yield]
       89 CALL                             R8 0 1
       90 GETUPVAL                         R9 6
       91 DUPTABLE                         R10 K28 [{"messageId", "contentId", "transformFn"}]
       92 GETUPVAL                         R11 0
       93 SETTABLEKS                       R11 R10 K21 ["messageId"]
       95 SETTABLEKS                       R3 R10 K26 ["contentId"]
       97 DUPCLOSURE                       R11 K29 [PROTO_17]
       98 SETTABLEKS                       R11 R10 K27 ["transformFn"]
      100 CALL                             R9 1 0
      101 RETURN                           R8 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getToolCallOptions"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["editContent"]
        2 GETTABLEKS                       R2 R0 K1 ["addContent"]
        4 GETTABLEKS                       R3 R0 K2 ["eventLogger"]
        6 LOADNIL                          R4
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          REF R4
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          REF R4
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R2
       17 NEWCLOSURE                       R7 P2
       18 CAPTURE                          REF R4
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 NEWCLOSURE                       R8 P3
       24 CAPTURE                          REF R4
       25 CAPTURE                          VAL R1
       26 NEWCLOSURE                       R9 P4
       27 CAPTURE                          REF R4
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          VAL R3
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R1
       34 NEWCLOSURE                       R10 P5
       35 CAPTURE                          REF R4
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R1
       39 NEWCLOSURE                       R11 P6
       40 CAPTURE                          REF R4
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U9
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 DUPCLOSURE                       R12 K3 [PROTO_19]
       48 CAPTURE                          UPVAL U2
       49 DUPTABLE                         R13 K12 [{"onNewMessage", "onContentStart", "onContentDelta", "onContentFinished", "onToolResult", "onPreExecuteToolUse", "checkToolConfirmationRequestAsync", "getToolCallOptions"}]
       50 SETTABLEKS                       R5 R13 K4 ["onNewMessage"]
       52 SETTABLEKS                       R6 R13 K5 ["onContentStart"]
       54 SETTABLEKS                       R7 R13 K6 ["onContentDelta"]
       56 SETTABLEKS                       R8 R13 K7 ["onContentFinished"]
       58 SETTABLEKS                       R9 R13 K8 ["onToolResult"]
       60 SETTABLEKS                       R10 R13 K9 ["onPreExecuteToolUse"]
       62 SETTABLEKS                       R11 R13 K10 ["checkToolConfirmationRequestAsync"]
       64 SETTABLEKS                       R12 R13 K11 ["getToolCallOptions"]
       66 CLOSEUPVALS                      R4
       67 RETURN                           R13 1

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
       52 GETTABLEKS                       R9 R0 K11 ["Components"]
       54 GETTABLEKS                       R8 R9 K12 ["ContentWidgets"]
       56 GETTABLEKS                       R7 R8 K18 ["TextContentWidget"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R10 R0 K11 ["Components"]
       63 GETTABLEKS                       R9 R10 K12 ["ContentWidgets"]
       65 GETTABLEKS                       R8 R9 K19 ["ThinkingContentWidget"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R10 R0 K20 ["Util"]
       72 GETTABLEKS                       R9 R10 K21 ["Time"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K11 ["Components"]
       79 GETTABLEKS                       R11 R12 K12 ["ContentWidgets"]
       81 GETTABLEKS                       R10 R11 K22 ["ToolConfirmationContentWidget"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K23 ["Types"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R13 R0 K11 ["Components"]
       93 GETTABLEKS                       R12 R13 K24 ["UIToolRegistry"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R14 R0 K25 ["Hooks"]
      100 GETTABLEKS                       R13 R14 K26 ["useAddContent"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R15 R0 K25 ["Hooks"]
      107 GETTABLEKS                       R14 R15 K27 ["useEditContent"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R16 R0 K28 ["Flags"]
      114 GETTABLEKS                       R15 R16 K29 ["FFlagAssistantPersistConversations"]
      116 CALL                             R14 1 1
      117 NEWTABLE                         R15 1 0
      119 DUPCLOSURE                       R16 K30 [PROTO_0]
      120 DUPCLOSURE                       R17 K31 [PROTO_20]
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R9
      131 SETTABLEKS                       R17 R15 K32 ["new"]
      133 RETURN                           R15 1
