PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+22]
        3 JUMPIFNOT                        R0 ; [+9]
        4 JUMPIFEQKS                       R0 K0 [""] ; [+8]
        6 LOADK                            R3 K1 [" Details: %*"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K2 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 JUMP                             ; [+1]
       13 LOADK                            R2 K0 [""]
       14 LOADK                            R8 K3 ["The Asset DataModel is not reachable right now.%* "]
       15 MOVE                             R10 R2
       16 NAMECALL                         R8 R8 K2 ["format"]
       18 CALL                             R8 2 1
       19 MOVE                             R4 R8
       20 LOADK                            R5 K4 ["It may be paused at a breakpoint, busy running another task, or unavailable because Studio is in Play/Test mode. "]
       21 LOADK                            R6 K5 ["Please stop play test if it is running, resume or clear any breakpoints, then run /run print(\"hi\") to confirm the Asset DataModel is reachable."]
       22 LOADK                            R7 K6 ["If it still fails, restart Roblox Studio and try this tool again."]
       23 CONCAT                           R3 R4 R7
       24 RETURN                           R3 1
       25 JUMPIFNOT                        R1 ; [+2]
       26 MOVE                             R2 R1
       27 RETURN                           R2 1
       28 JUMPIFNOT                        R0 ; [+9]
       29 JUMPIFEQKS                       R0 K0 [""] ; [+8]
       31 LOADK                            R3 K7 ["Asset datamodel is not reachable: %*"]
       32 MOVE                             R5 R0
       33 NAMECALL                         R3 R3 K2 ["format"]
       35 CALL                             R3 2 1
       36 MOVE                             R2 R3
       37 RETURN                           R2 1
       38 LOADK                            R2 K8 ["Asset datamodel is not reachable"]
       39 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K5 [string.lower]
       11 LOADK                            R3 K6 ["%* %* %*"]
       12 GETTABLEKS                       R6 R0 K8 ["developerMessage"]
       14 ORK                              R5 R6 K7 [""]
       15 GETTABLEKS                       R7 R0 K9 ["details"]
       17 ORK                              R6 R7 K7 [""]
       18 GETTABLEKS                       R8 R0 K10 ["message"]
       20 ORK                              R7 R8 K7 [""]
       21 NAMECALL                         R3 R3 K11 ["format"]
       23 CALL                             R3 4 1
       24 MOVE                             R2 R3
       25 CALL                             R1 1 1
       26 LOADB                            R2 1
       27 GETIMPORT                        R3 K13 [string.find]
       29 MOVE                             R4 R1
       30 LOADK                            R5 K14 ["moderation"]
       31 CALL                             R3 2 1
       32 JUMPIFNOTEQKNIL                  R3 ; [+10]
       34 GETIMPORT                        R3 K13 [string.find]
       36 MOVE                             R4 R1
       37 LOADK                            R5 K15 ["moderated"]
       38 CALL                             R3 2 1
       39 JUMPIFNOTEQKNIL                  R3 ; [+2]
       41 LOADB                            R2 0 +1
       42 LOADB                            R2 1
       43 RETURN                           R2 1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K5 [string.lower]
       11 LOADK                            R3 K6 ["%* %* %*"]
       12 GETTABLEKS                       R6 R0 K8 ["developerMessage"]
       14 ORK                              R5 R6 K7 [""]
       15 GETTABLEKS                       R7 R0 K9 ["details"]
       17 ORK                              R6 R7 K7 [""]
       18 GETTABLEKS                       R8 R0 K10 ["message"]
       20 ORK                              R7 R8 K7 [""]
       21 NAMECALL                         R3 R3 K11 ["format"]
       23 CALL                             R3 4 1
       24 MOVE                             R2 R3
       25 CALL                             R1 1 1
       26 LOADB                            R2 1
       27 GETIMPORT                        R3 K13 [string.find]
       29 MOVE                             R4 R1
       30 LOADK                            R5 K14 ["text prompt cannot be null or empty"]
       31 LOADN                            R6 1
       32 LOADB                            R7 1
       33 CALL                             R3 4 1
       34 JUMPIFNOTEQKNIL                  R3 ; [+12]
       36 GETIMPORT                        R3 K13 [string.find]
       38 MOVE                             R4 R1
       39 LOADK                            R5 K15 ["either text prompt or image is required"]
       40 LOADN                            R6 1
       41 LOADB                            R7 1
       42 CALL                             R3 4 1
       43 JUMPIFNOTEQKNIL                  R3 ; [+2]
       45 LOADB                            R2 0 +1
       46 LOADB                            R2 1
       47 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R2 K2 ["[PrimitiveGenGuest] %*"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 LOADN                            R2 2
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+12]
        7 GETTABLEKS                       R3 R0 K3 ["error"]
        9 FASTCALL1                        TYPE R3 ; [+2]
       10 GETIMPORT                        R2 K1 [type]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+4]
       15 GETTABLEKS                       R1 R0 K3 ["error"]
       17 JUMP                             ; [+5]
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K6 [tostring]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K8 [string.find]
       25 GETIMPORT                        R3 K10 [string.lower]
       27 MOVE                             R4 R1
       28 CALL                             R3 1 1
       29 LOADK                            R4 K11 ["target is not reachable"]
       30 LOADN                            R5 1
       31 LOADB                            R6 1
       32 CALL                             R2 4 1
       33 JUMPIFNOT                        R2 ; [+12]
       34 GETUPVAL                         R2 0
       35 CALL                             R2 0 1
       36 JUMPIFNOT                        R2 ; [+5]
       37 GETIMPORT                        R2 K14 [task.spawn]
       39 NEWCLOSURE                       R3 P0
       40 CAPTURE                          VAL R1
       41 CALL                             R2 1 0
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K15 ["DmIsUnreachable"]
       45 RETURN                           R2 1
       46 GETUPVAL                         R2 1
       47 GETTABLEKS                       R2 R2 K16 ["General"]
       49 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [string.lower]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K4 [tostring]
        6 CALL                             R2 1 1
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K6 [string.find]
       10 MOVE                             R3 R1
       11 LOADK                            R4 K7 ["fetchdependency"]
       12 LOADN                            R5 1
       13 LOADB                            R6 1
       14 CALL                             R2 4 1
       15 JUMPIF                           R2 ; [+8]
       16 GETIMPORT                        R2 K6 [string.find]
       18 MOVE                             R3 R1
       19 LOADK                            R4 K8 ["fetch dependency"]
       20 LOADN                            R5 1
       21 LOADB                            R6 1
       22 CALL                             R2 4 1
       23 JUMPIFNOT                        R2 ; [+4]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K9 ["ScriptFetchError"]
       27 RETURN                           R2 1
       28 GETIMPORT                        R2 K6 [string.find]
       30 MOVE                             R3 R1
       31 LOADK                            R4 K10 ["statuscode=429"]
       32 LOADN                            R5 1
       33 LOADB                            R6 1
       34 CALL                             R2 4 1
       35 JUMPIFNOT                        R2 ; [+4]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K11 ["TooManyRequests"]
       39 RETURN                           R2 1
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K12 ["PollFailed"]
       43 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getMockPrimGenBackendData"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R3 K2 [string.lower]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 GETIMPORT                        R4 K2 [string.lower]
        6 MOVE                             R5 R1
        7 CALL                             R4 1 1
        8 JUMPIFEQ                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_8:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["getImage"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+10]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["signal"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["signal"]
        9 GETTABLEKS                       R0 R0 K1 ["aborted"]
       11 JUMPIF                           R0 ; [+1]
       12 LOADB                            R0 0
       13 RETURN                           R0 1

PROTO_10:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R1 K1 [error]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["Body"]
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K2 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K3 ["string"] ; [+23]
        8 LOADK                            R3 K4 ["%*: expected string body but got %*, full response: %*"]
        9 MOVE                             R5 R1
       10 GETTABLEKS                       R7 R0 K0 ["Body"]
       12 FASTCALL1                        TYPEOF R7 ; [+2]
       13 GETIMPORT                        R6 K2 [typeof]
       15 CALL                             R6 1 1
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K5 ["toString"]
       19 MOVE                             R8 R0
       20 CALL                             R7 1 1
       21 NAMECALL                         R3 R3 K6 ["format"]
       23 CALL                             R3 4 1
       24 MOVE                             R2 R3
       25 GETIMPORT                        R3 K8 [error]
       27 MOVE                             R4 R2
       28 LOADN                            R5 0
       29 CALL                             R3 2 0
       30 GETTABLEKS                       R2 R0 K0 ["Body"]
       32 JUMPIFNOTEQKS                    R2 K9 [""] ; [+17]
       34 LOADK                            R3 K10 ["%*: response body is empty, full response: %*"]
       35 MOVE                             R5 R1
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K5 ["toString"]
       39 MOVE                             R7 R0
       40 CALL                             R6 1 1
       41 NAMECALL                         R3 R3 K6 ["format"]
       43 CALL                             R3 3 1
       44 MOVE                             R2 R3
       45 GETIMPORT                        R3 K8 [error]
       47 MOVE                             R4 R2
       48 LOADN                            R5 0
       49 CALL                             R3 2 0
       50 GETIMPORT                        R2 K12 [pcall]
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R3 R3 K13 ["decode"]
       55 GETTABLEKS                       R4 R0 K0 ["Body"]
       57 CALL                             R2 2 2
       58 JUMPIF                           R2 ; [+17]
       59 LOADK                            R5 K14 ["%*: failed to decode JSON: %*, full response: %*"]
       60 MOVE                             R7 R1
       61 MOVE                             R8 R3
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K5 ["toString"]
       65 MOVE                             R10 R0
       66 CALL                             R9 1 1
       67 NAMECALL                         R5 R5 K6 ["format"]
       69 CALL                             R5 4 1
       70 MOVE                             R4 R5
       71 GETIMPORT                        R5 K8 [error]
       73 MOVE                             R6 R4
       74 LOADN                            R7 0
       75 CALL                             R5 2 0
       76 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFEQKS                       R0 K0 [""] ; [+17]
        4 NEWTABLE                         R1 1 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["get"]
        9 CALL                             R3 0 1
       10 GETTABLEKS                       R3 R3 K2 ["getUserId"]
       12 CALL                             R3 0 -1
       13 FASTCALL                         TOSTRING ; [+2]
       14 GETIMPORT                        R2 K4 [tostring]
       16 CALL                             R2 -1 1
       17 SETTABLEKS                       R2 R1 K5 ["robloxctx-authenticated-userid"]
       19 RETURN                           R1 1
       20 NEWTABLE                         R1 0 0
       22 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFEQKS                       R0 K0 [""] ; [+2]
        4 RETURN                           R0 1
        5 LOADK                            R2 K1 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["get"]
        9 CALL                             R4 0 1
       10 GETTABLEKS                       R4 R4 K3 ["apisUrl"]
       12 NAMECALL                         R2 R2 K4 ["format"]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handlerArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["handlerArgs"]
       10 GETTABLEKS                       R2 R2 K2 ["uiMessageId"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["handlerArgs"]
       15 GETTABLEKS                       R3 R3 K3 ["uiContentId"]
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+14]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["getContentHooks"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K5 ["editContent"]
       27 MOVE                             R6 R0
       28 DUPTABLE                         R7 K7 [{"skipIfNoMessage"}]
       29 LOADB                            R8 1
       30 SETTABLEKS                       R8 R7 K6 ["skipIfNoMessage"]
       32 CALL                             R5 2 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K5 ["editContent"]
       37 DUPTABLE                         R5 K11 [{"messageId", "contentId", "transformFn", "skipIfNoMessage"}]
       38 SETTABLEKS                       R2 R5 K8 ["messageId"]
       40 SETTABLEKS                       R3 R5 K9 ["contentId"]
       42 SETTABLEKS                       R0 R5 K10 ["transformFn"]
       44 LOADB                            R6 1
       45 SETTABLEKS                       R6 R5 K6 ["skipIfNoMessage"]
       47 CALL                             R4 1 0
       48 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 SETTABLE                         R5 R0 R4
        5 FORGLOOP                         R1 2 ; [-2]
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["previewState"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["previewErrorMessage"]
        6 GETUPVAL                         R1 2
        7 SETTABLEKS                       R1 R0 K2 ["retryInfo"]
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K3 ["expanded"]
       12 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["previewState"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["previewErrorMessage"]
        6 RETURN                           R0 0

PROTO_20:
        0 JUMPIFNOT                        R2 ; [+7]
        1 GETUPVAL                         R3 0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Modes"]
        3 GETTABLEKS                       R1 R1 K1 ["GenerationError"]
        5 SETTABLEKS                       R1 R0 K2 ["mode"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K3 ["generationErrorType"]
       10 GETUPVAL                         R1 2
       11 SETTABLEKS                       R1 R0 K4 ["generationErrorMessage"]
       13 GETUPVAL                         R1 3
       14 SETTABLEKS                       R1 R0 K5 ["retryInfo"]
       16 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["previewImages"]
        2 JUMPIF                           R1 ; [+8]
        3 GETIMPORT                        R2 K3 [table.create]
        5 GETUPVAL                         R3 0
        6 LOADK                            R4 K4 [""]
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 SETTABLEKS                       R1 R0 K0 ["previewImages"]
       11 FASTCALL2K                       ASSERT R1 K5 ; [+5]
       13 MOVE                             R3 R1
       14 LOADK                            R4 K5 ["previewImages should be initialized"]
       15 GETIMPORT                        R2 K7 [assert]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R3 2
       20 SETTABLE                         R3 R1 R2
       21 RETURN                           R0 0

PROTO_24:
        0 LOADB                            R3 0
        1 LOADN                            R4 1
        2 JUMPIFNOTLE                      R4 R0 ; [+6]
        4 GETUPVAL                         R4 0
        5 JUMPIFLE                         R0 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K0 ; [+4]
       11 LOADK                            R4 K0 ["Index out of bounds for preview images"]
       12 GETIMPORT                        R2 K2 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 1
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["generationStage"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Generating"]
        6 SETTABLEKS                       R1 R0 K2 ["previewState"]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K3 ["previewErrorMessage"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K4 ["retryInfo"]
       14 LOADNIL                          R1
       15 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["generationStage"]
        3 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+11]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["Inserting"]
        9 JUMPIFNOTEQ                      R0 R1 ; [+7]
       11 GETUPVAL                         R1 3
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U4
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 3
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          VAL R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["RESTRICTED_externalHooks"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 NEWCLOSURE                       R4 P2
       11 CAPTURE                          VAL R2
       12 NEWCLOSURE                       R5 P3
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U1
       15 NEWCLOSURE                       R6 P4
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R2
       18 NEWCLOSURE                       R7 P5
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U6
       24 DUPTABLE                         R8 K8 [{"updateWidget", "replaceContent", "setPreviewState", "setPreviewImage", "setGenerationError", "setGenerationStage"}]
       25 SETTABLEKS                       R2 R8 K2 ["updateWidget"]
       27 SETTABLEKS                       R3 R8 K3 ["replaceContent"]
       29 SETTABLEKS                       R4 R8 K4 ["setPreviewState"]
       31 SETTABLEKS                       R6 R8 K5 ["setPreviewImage"]
       33 SETTABLEKS                       R5 R8 K6 ["setGenerationError"]
       35 SETTABLEKS                       R7 R8 K7 ["setGenerationStage"]
       37 RETURN                           R8 1

PROTO_29:
        0 JUMPIFEQKS                       R0 K0 ["image/jpeg"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["image/jpg"] ; [+3]
        4 LOADK                            R1 K2 ["image.jpg"]
        5 RETURN                           R1 1
        6 JUMPIFNOTEQKS                    R0 K3 ["image/png"] ; [+3]
        8 LOADK                            R1 K4 ["image.png"]
        9 RETURN                           R1 1
       10 GETIMPORT                        R1 K6 [error]
       12 LOADK                            R3 K7 ["Unsupported PrimitiveGen image MIME type: %*"]
       13 MOVE                             R5 R0
       14 NAMECALL                         R3 R3 K8 ["format"]
       16 CALL                             R3 2 1
       17 MOVE                             R2 R3
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_30:
        0 JUMPIFNOT                        R1 ; [+10]
        1 GETUPVAL                         R3 0
        2 GETIMPORT                        R5 K2 [buffer.fromstring]
        4 GETTABLEKS                       R6 R1 K3 ["data"]
        6 CALL                             R5 1 -1
        7 NAMECALL                         R3 R3 K4 ["Base64Decode"]
        9 CALL                             R3 -1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K5 ["new"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 2
       17 CALL                             R6 0 1
       18 JUMPIFEQKS                       R6 K6 [""] ; [+3]
       20 MOVE                             R5 R6
       21 JUMP                             ; [+11]
       22 LOADK                            R7 K7 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R9 R9 K8 ["get"]
       26 CALL                             R9 0 1
       27 GETTABLEKS                       R9 R9 K9 ["apisUrl"]
       29 NAMECALL                         R7 R7 K10 ["format"]
       31 CALL                             R7 2 1
       32 MOVE                             R5 R7
       33 LOADB                            R8 1
       34 NAMECALL                         R6 R4 K11 ["forceMultipart"]
       36 CALL                             R6 2 0
       37 LOADK                            R8 K12 ["TextPrompt"]
       38 MOVE                             R9 R0
       39 NAMECALL                         R6 R4 K13 ["addField"]
       41 CALL                             R6 3 0
       42 GETUPVAL                         R6 4
       43 CALL                             R6 0 1
       44 JUMPIFNOT                        R6 ; [+36]
       45 JUMPIFNOT                        R1 ; [+47]
       46 JUMPIFNOT                        R3 ; [+46]
       47 GETTABLEKS                       R6 R1 K14 ["mimeType"]
       49 JUMPIFEQKS                       R6 K15 ["image/jpeg"] ; [+3]
       51 JUMPIFNOTEQKS                    R6 K16 ["image/jpg"] ; [+3]
       53 LOADK                            R7 K17 ["image.jpg"]
       54 JUMP                             ; [+14]
       55 JUMPIFNOTEQKS                    R6 K18 ["image/png"] ; [+3]
       57 LOADK                            R7 K19 ["image.png"]
       58 JUMP                             ; [+10]
       59 GETIMPORT                        R8 K21 [error]
       61 LOADK                            R10 K22 ["Unsupported PrimitiveGen image MIME type: %*"]
       62 MOVE                             R12 R6
       63 NAMECALL                         R10 R10 K10 ["format"]
       65 CALL                             R10 2 1
       66 MOVE                             R9 R10
       67 CALL                             R8 1 0
       68 LOADNIL                          R7
       69 LOADK                            R10 K23 ["Image"]
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R11 R11 K24 ["file"]
       73 MOVE                             R12 R7
       74 MOVE                             R13 R3
       75 MOVE                             R14 R6
       76 CALL                             R11 3 -1
       77 NAMECALL                         R8 R4 K25 ["addFile"]
       79 CALL                             R8 -1 0
       80 JUMP                             ; [+12]
       81 JUMPIFNOT                        R3 ; [+11]
       82 LOADK                            R8 K23 ["Image"]
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K24 ["file"]
       86 LOADK                            R10 K19 ["image.png"]
       87 MOVE                             R11 R3
       88 LOADK                            R12 K18 ["image/png"]
       89 CALL                             R9 3 -1
       90 NAMECALL                         R6 R4 K25 ["addFile"]
       92 CALL                             R6 -1 0
       93 GETUPVAL                         R6 5
       94 CALL                             R6 0 1
       95 JUMPIFNOT                        R6 ; [+10]
       96 JUMPIFNOT                        R2 ; [+9]
       97 LENGTH                           R6 R2
       98 LOADN                            R7 0
       99 JUMPIFNOTLT                      R7 R6 ; [+6]
      101 LOADK                            R8 K26 ["schemaDefinition"]
      102 MOVE                             R9 R2
      103 NAMECALL                         R6 R4 K27 ["addList"]
      105 CALL                             R6 3 0
      106 MOVE                             R8 R5
      107 LOADK                            R9 K28 ["POST"]
      108 NAMECALL                         R6 R4 K29 ["buildRequest"]
      110 CALL                             R6 3 1
      111 GETUPVAL                         R7 6
      112 GETTABLEKS                       R8 R6 K30 ["Headers"]
      114 GETUPVAL                         R9 7
      115 CALL                             R9 0 1
      116 CALL                             R7 2 1
      117 SETTABLEKS                       R7 R6 K30 ["Headers"]
      119 RETURN                           R6 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 1
        5 GETUPVAL                         R1 4
        6 GETTABLEKS                       R1 R1 K0 ["http"]
        8 GETTABLEKS                       R1 R1 K1 ["requestAsync"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 5
       13 MOVE                             R3 R1
       14 LOADK                            R5 K2 ["submitGenerationJob (statusCode=%*)"]
       15 GETTABLEKS                       R7 R1 K3 ["StatusCode"]
       17 NAMECALL                         R5 R5 K4 ["format"]
       19 CALL                             R5 2 1
       20 MOVE                             R4 R5
       21 CALL                             R2 2 1
       22 RETURN                           R1 2

PROTO_32:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+11]
        3 DUPTABLE                         R3 K3 [{"generationId", "errorType", "errorMessage"}]
        4 LOADK                            R4 K4 ["1234567890"]
        5 SETTABLEKS                       R4 R3 K0 ["generationId"]
        7 LOADNIL                          R4
        8 SETTABLEKS                       R4 R3 K1 ["errorType"]
       10 LOADNIL                          R4
       11 SETTABLEKS                       R4 R3 K2 ["errorMessage"]
       13 RETURN                           R3 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K5 ["get"]
       17 CALL                             R3 0 1
       18 GETIMPORT                        R4 K7 [pcall]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U3
       27 CALL                             R4 1 3
       28 JUMPIF                           R4 ; [+18]
       29 LOADK                            R8 K8 ["Failed to get response from server: %*"]
       30 MOVE                             R10 R5
       31 NAMECALL                         R8 R8 K9 ["format"]
       33 CALL                             R8 2 1
       34 MOVE                             R7 R8
       35 DUPTABLE                         R8 K3 [{"generationId", "errorType", "errorMessage"}]
       36 LOADK                            R9 K10 [""]
       37 SETTABLEKS                       R9 R8 K0 ["generationId"]
       39 GETUPVAL                         R9 4
       40 GETTABLEKS                       R9 R9 K11 ["General"]
       42 SETTABLEKS                       R9 R8 K1 ["errorType"]
       44 SETTABLEKS                       R7 R8 K2 ["errorMessage"]
       46 RETURN                           R8 1
       47 GETTABLEKS                       R7 R5 K12 ["Success"]
       49 JUMPIF                           R7 ; [+50]
       50 LOADK                            R8 K13 ["Failed to submit generation job: statusCode: %*, body: %*"]
       51 GETTABLEKS                       R10 R5 K14 ["StatusCode"]
       53 GETTABLEKS                       R11 R5 K15 ["Body"]
       55 NAMECALL                         R8 R8 K9 ["format"]
       57 CALL                             R8 3 1
       58 MOVE                             R7 R8
       59 GETUPVAL                         R8 4
       60 GETTABLEKS                       R8 R8 K11 ["General"]
       62 GETTABLEKS                       R9 R5 K14 ["StatusCode"]
       64 JUMPIFNOTEQKN                    R9 K16 [429] ; [+5]
       66 GETUPVAL                         R9 4
       67 GETTABLEKS                       R8 R9 K17 ["TooManyRequests"]
       69 JUMP                             ; [+21]
       70 GETUPVAL                         R9 5
       71 CALL                             R9 0 1
       72 JUMPIFNOT                        R9 ; [+8]
       73 GETUPVAL                         R9 6
       74 MOVE                             R10 R6
       75 CALL                             R9 1 1
       76 JUMPIFNOT                        R9 ; [+4]
       77 GETUPVAL                         R9 4
       78 GETTABLEKS                       R8 R9 K18 ["ModerationFailed"]
       80 JUMP                             ; [+10]
       81 GETUPVAL                         R9 5
       82 CALL                             R9 0 1
       83 JUMPIFNOT                        R9 ; [+7]
       84 GETUPVAL                         R9 7
       85 MOVE                             R10 R6
       86 CALL                             R9 1 1
       87 JUMPIFNOT                        R9 ; [+3]
       88 GETUPVAL                         R9 4
       89 GETTABLEKS                       R8 R9 K19 ["EmptyPrompt"]
       91 DUPTABLE                         R9 K3 [{"generationId", "errorType", "errorMessage"}]
       92 LOADK                            R10 K10 [""]
       93 SETTABLEKS                       R10 R9 K0 ["generationId"]
       95 SETTABLEKS                       R8 R9 K1 ["errorType"]
       97 SETTABLEKS                       R7 R9 K2 ["errorMessage"]
       99 RETURN                           R9 1
      100 GETTABLEKS                       R7 R6 K20 ["primitiveGenerationId"]
      102 JUMPIF                           R7 ; [+19]
      103 LOADK                            R9 K21 ["Response does not contain 'primitiveGenerationId': %*"]
      104 GETTABLEKS                       R11 R5 K15 ["Body"]
      106 NAMECALL                         R9 R9 K9 ["format"]
      108 CALL                             R9 2 1
      109 MOVE                             R8 R9
      110 DUPTABLE                         R9 K3 [{"generationId", "errorType", "errorMessage"}]
      111 LOADK                            R10 K10 [""]
      112 SETTABLEKS                       R10 R9 K0 ["generationId"]
      114 GETUPVAL                         R10 4
      115 GETTABLEKS                       R10 R10 K11 ["General"]
      117 SETTABLEKS                       R10 R9 K1 ["errorType"]
      119 SETTABLEKS                       R8 R9 K2 ["errorMessage"]
      121 RETURN                           R9 1
      122 DUPTABLE                         R8 K3 [{"generationId", "errorType", "errorMessage"}]
      123 SETTABLEKS                       R7 R8 K0 ["generationId"]
      125 LOADNIL                          R9
      126 SETTABLEKS                       R9 R8 K1 ["errorType"]
      128 LOADNIL                          R9
      129 SETTABLEKS                       R9 R8 K2 ["errorMessage"]
      131 RETURN                           R8 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K5 [{"Url", "Method", "Headers"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["Url"]
        9 LOADK                            R2 K6 ["GET"]
       10 SETTABLEKS                       R2 R1 K3 ["Method"]
       12 GETUPVAL                         R2 2
       13 SETTABLEKS                       R2 R1 K4 ["Headers"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_34:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["get"]
        3 CALL                             R4 0 1
        4 LOADK                            R6 K1 ["%*/%*"]
        5 GETUPVAL                         R9 1
        6 CALL                             R9 0 1
        7 JUMPIFEQKS                       R9 K2 [""] ; [+3]
        9 MOVE                             R8 R9
       10 JUMP                             ; [+11]
       11 LOADK                            R10 K3 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
       12 GETUPVAL                         R12 0
       13 GETTABLEKS                       R12 R12 K0 ["get"]
       15 CALL                             R12 0 1
       16 GETTABLEKS                       R12 R12 K4 ["apisUrl"]
       18 NAMECALL                         R10 R10 K5 ["format"]
       20 CALL                             R10 2 1
       21 MOVE                             R8 R10
       22 MOVE                             R9 R0
       23 NAMECALL                         R6 R6 K5 ["format"]
       25 CALL                             R6 3 1
       26 MOVE                             R5 R6
       27 GETUPVAL                         R6 2
       28 CALL                             R6 0 1
       29 LOADN                            R7 0
       30 LOADNIL                          R8
       31 LOADN                            R9 44
       32 JUMPIFNOTLT                      R7 R9 ; [+285]
       34 MOVE                             R9 R1
       35 CALL                             R9 0 1
       36 JUMPIFNOT                        R9 ; [+7]
       37 DUPTABLE                         R9 K7 [{"status"}]
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R10 R10 K8 ["Cancelled"]
       41 SETTABLEKS                       R10 R9 K6 ["status"]
       43 RETURN                           R9 1
       44 GETIMPORT                        R9 K10 [pcall]
       46 NEWCLOSURE                       R10 P0
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R6
       50 CALL                             R9 1 2
       51 JUMPIF                           R9 ; [+27]
       52 DUPTABLE                         R11 K13 [{"status", "errorText", "errorType"}]
       53 GETUPVAL                         R12 3
       54 GETTABLEKS                       R12 R12 K14 ["Failed"]
       56 SETTABLEKS                       R12 R11 K6 ["status"]
       58 LOADK                            R13 K15 ["Sending HTTP request failed: %*"]
       59 MOVE                             R15 R10
       60 NAMECALL                         R13 R13 K5 ["format"]
       62 CALL                             R13 2 1
       63 MOVE                             R12 R13
       64 SETTABLEKS                       R12 R11 K11 ["errorText"]
       66 GETUPVAL                         R13 4
       67 CALL                             R13 0 1
       68 JUMPIFNOT                        R13 ; [+4]
       69 GETUPVAL                         R12 5
       70 GETTABLEKS                       R12 R12 K16 ["PollFailed"]
       72 JUMP                             ; [+3]
       73 GETUPVAL                         R12 5
       74 GETTABLEKS                       R12 R12 K17 ["General"]
       76 SETTABLEKS                       R12 R11 K12 ["errorType"]
       78 RETURN                           R11 1
       79 GETTABLEKS                       R11 R10 K18 ["Success"]
       81 JUMPIF                           R11 ; [+77]
       82 GETUPVAL                         R11 6
       83 GETTABLEKS                       R11 R11 K19 ["appendLog"]
       85 MOVE                             R12 R0
       86 LOADK                            R14 K20 ["Error while polling job status:%*"]
       87 GETTABLEKS                       R16 R10 K21 ["Body"]
       89 NAMECALL                         R14 R14 K5 ["format"]
       91 CALL                             R14 2 1
       92 MOVE                             R13 R14
       93 CALL                             R11 2 0
       94 GETUPVAL                         R11 7
       95 MOVE                             R12 R10
       96 LOADK                            R14 K22 ["pollJobStatus error (statusCode=%*), jobId=%*"]
       97 GETTABLEKS                       R16 R10 K23 ["StatusCode"]
       99 MOVE                             R17 R0
      100 NAMECALL                         R14 R14 K5 ["format"]
      102 CALL                             R14 3 1
      103 MOVE                             R13 R14
      104 CALL                             R11 2 1
      105 GETUPVAL                         R13 4
      106 CALL                             R13 0 1
      107 JUMPIFNOT                        R13 ; [+4]
      108 GETUPVAL                         R12 5
      109 GETTABLEKS                       R12 R12 K16 ["PollFailed"]
      111 JUMP                             ; [+3]
      112 GETUPVAL                         R12 5
      113 GETTABLEKS                       R12 R12 K17 ["General"]
      115 LOADNIL                          R13
      116 GETUPVAL                         R14 4
      117 CALL                             R14 0 1
      118 JUMPIFNOT                        R14 ; [+15]
      119 GETUPVAL                         R14 8
      120 MOVE                             R15 R11
      121 CALL                             R14 1 1
      122 JUMPIFNOT                        R14 ; [+11]
      123 GETUPVAL                         R14 5
      124 GETTABLEKS                       R12 R14 K24 ["ModerationFailed"]
      126 LOADK                            R14 K25 ["Error while polling job status: (code 0001) id=%*"]
      127 GETTABLEKS                       R16 R11 K26 ["primitiveGenerationId"]
      129 NAMECALL                         R14 R14 K5 ["format"]
      131 CALL                             R14 2 1
      132 MOVE                             R13 R14
      133 JUMP                             ; [+14]
      134 LOADK                            R14 K27 ["Error while polling job status: status=%* message=%* id=%*"]
      135 GETTABLEKS                       R16 R10 K23 ["StatusCode"]
      137 GETUPVAL                         R17 9
      138 GETTABLEKS                       R17 R17 K28 ["toString"]
      140 MOVE                             R18 R11
      141 CALL                             R17 1 1
      142 GETTABLEKS                       R18 R11 K26 ["primitiveGenerationId"]
      144 NAMECALL                         R14 R14 K5 ["format"]
      146 CALL                             R14 4 1
      147 MOVE                             R13 R14
      148 DUPTABLE                         R14 K13 [{"status", "errorText", "errorType"}]
      149 GETUPVAL                         R15 3
      150 GETTABLEKS                       R15 R15 K14 ["Failed"]
      152 SETTABLEKS                       R15 R14 K6 ["status"]
      154 SETTABLEKS                       R13 R14 K11 ["errorText"]
      156 SETTABLEKS                       R12 R14 K12 ["errorType"]
      158 RETURN                           R14 1
      159 GETUPVAL                         R11 7
      160 MOVE                             R12 R10
      161 LOADK                            R14 K29 ["pollJobStatus (statusCode=%*), jobId=%*"]
      162 GETTABLEKS                       R16 R10 K23 ["StatusCode"]
      164 MOVE                             R17 R0
      165 NAMECALL                         R14 R14 K5 ["format"]
      167 CALL                             R14 3 1
      168 MOVE                             R13 R14
      169 CALL                             R11 2 1
      170 GETTABLEKS                       R12 R11 K30 ["currentStage"]
      172 GETTABLEKS                       R14 R11 K6 ["status"]
      174 ORK                              R13 R14 K31 ["unknown"]
      175 JUMPIFNOT                        R3 ; [+5]
      176 MOVE                             R14 R3
      177 ADDK                             R15 R7 K32 [1]
      178 MOVE                             R16 R13
      179 MOVE                             R17 R12
      180 CALL                             R14 3 0
      181 JUMPIFNOT                        R2 ; [+7]
      182 JUMPIFNOT                        R12 ; [+6]
      183 JUMPIFEQ                         R12 R8 ; [+5]
      185 MOVE                             R8 R12
      186 MOVE                             R14 R2
      187 MOVE                             R15 R12
      188 CALL                             R14 1 0
      189 GETIMPORT                        R15 K35 [string.lower]
      191 MOVE                             R16 R13
      192 CALL                             R15 1 1
      193 GETIMPORT                        R16 K35 [string.lower]
      195 LOADK                            R17 K36 ["failed"]
      196 CALL                             R16 1 1
      197 JUMPIFEQ                         R15 R16 ; [+2]
      199 LOADB                            R14 0 +1
      200 LOADB                            R14 1
      201 JUMPIFNOT                        R14 ; [+12]
      202 GETUPVAL                         R14 10
      203 LOADK                            R16 K37 ["Job failed with status: %* and stage: %*, generationId=%*"]
      204 MOVE                             R18 R13
      205 GETTABLEKS                       R19 R11 K30 ["currentStage"]
      207 MOVE                             R20 R0
      208 NAMECALL                         R16 R16 K5 ["format"]
      210 CALL                             R16 4 1
      211 MOVE                             R15 R16
      212 CALL                             R14 1 -1
      213 RETURN                           R14 -1
      214 GETIMPORT                        R15 K35 [string.lower]
      216 MOVE                             R16 R13
      217 CALL                             R15 1 1
      218 GETIMPORT                        R16 K35 [string.lower]
      220 LOADK                            R17 K38 ["completed"]
      221 CALL                             R16 1 1
      222 JUMPIFEQ                         R15 R16 ; [+2]
      224 LOADB                            R14 0 +1
      225 LOADB                            R14 1
      226 JUMPIFNOT                        R14 ; [+73]
      227 GETTABLEKS                       R16 R11 K39 ["result"]
      229 FASTCALL1                        TYPE R16 ; [+2]
      230 GETIMPORT                        R15 K41 [type]
      232 CALL                             R15 1 1
      233 JUMPIFNOTEQKS                    R15 K42 ["table"] ; [+4]
      235 GETTABLEKS                       R14 R11 K39 ["result"]
      237 JUMP                             ; [+2]
      238 NEWTABLE                         R14 0 0
      240 GETUPVAL                         R15 6
      241 GETTABLEKS                       R15 R15 K19 ["appendLog"]
      243 MOVE                             R16 R0
      244 LOADK                            R18 K43 ["Polling job resultData:%*"]
      245 GETUPVAL                         R20 9
      246 GETTABLEKS                       R20 R20 K28 ["toString"]
      248 MOVE                             R21 R14
      249 CALL                             R20 1 1
      250 NAMECALL                         R18 R18 K5 ["format"]
      252 CALL                             R18 2 1
      253 MOVE                             R17 R18
      254 CALL                             R15 2 0
      255 GETTABLEKS                       R15 R14 K44 ["script"]
      257 JUMPIFNOT                        R15 ; [+2]
      258 JUMPIFNOTEQKS                    R15 K2 [""] ; [+15]
      260 GETUPVAL                         R16 10
      261 LOADK                            R18 K45 ["No script URL found in completed job response: %*, generationId=%*"]
      262 GETUPVAL                         R20 9
      263 GETTABLEKS                       R20 R20 K28 ["toString"]
      265 MOVE                             R21 R14
      266 CALL                             R20 1 1
      267 MOVE                             R21 R0
      268 NAMECALL                         R18 R18 K5 ["format"]
      270 CALL                             R18 3 1
      271 MOVE                             R17 R18
      272 CALL                             R16 1 -1
      273 RETURN                           R16 -1
      274 GETTABLEKS                       R16 R14 K46 ["dependencyVersion"]
      276 GETTABLEKS                       R17 R14 K47 ["dependencies"]
      278 GETUPVAL                         R18 11
      279 GETTABLEKS                       R18 R18 K48 ["parseScriptPreviewS3Urls"]
      281 MOVE                             R19 R14
      282 CALL                             R18 1 1
      283 DUPTABLE                         R19 K51 [{"status", "currentStage", "scriptUrl", "dependencyVersion", "dependencies", "scriptPreviewS3Urls"}]
      284 GETUPVAL                         R20 3
      285 GETTABLEKS                       R20 R20 K18 ["Success"]
      287 SETTABLEKS                       R20 R19 K6 ["status"]
      289 SETTABLEKS                       R12 R19 K30 ["currentStage"]
      291 SETTABLEKS                       R15 R19 K49 ["scriptUrl"]
      293 SETTABLEKS                       R16 R19 K46 ["dependencyVersion"]
      295 SETTABLEKS                       R17 R19 K47 ["dependencies"]
      297 SETTABLEKS                       R18 R19 K50 ["scriptPreviewS3Urls"]
      299 RETURN                           R19 1
      300 MOVE                             R14 R1
      301 CALL                             R14 0 1
      302 JUMPIFNOT                        R14 ; [+7]
      303 DUPTABLE                         R14 K7 [{"status"}]
      304 GETUPVAL                         R15 3
      305 GETTABLEKS                       R15 R15 K8 ["Cancelled"]
      307 SETTABLEKS                       R15 R14 K6 ["status"]
      309 RETURN                           R14 1
      310 ADDK                             R7 R7 K32 [1]
      311 GETIMPORT                        R14 K54 [task.wait]
      313 GETUPVAL                         R16 12
      314 CALL                             R16 0 1
      315 DIVK                             R15 R16 K55 [1000]
      316 CALL                             R14 1 0
      317 JUMPBACK                         ; [-287]
      318 DUPTABLE                         R9 K13 [{"status", "errorText", "errorType"}]
      319 GETUPVAL                         R10 3
      320 GETTABLEKS                       R10 R10 K14 ["Failed"]
      322 SETTABLEKS                       R10 R9 K6 ["status"]
      324 LOADK                            R11 K56 ["Polling timed out after %* attempts, generationId=%*"]
      325 LOADN                            R13 44
      326 MOVE                             R14 R0
      327 NAMECALL                         R11 R11 K5 ["format"]
      329 CALL                             R11 3 1
      330 MOVE                             R10 R11
      331 SETTABLEKS                       R10 R9 K11 ["errorText"]
      333 GETUPVAL                         R11 4
      334 CALL                             R11 0 1
      335 JUMPIFNOT                        R11 ; [+4]
      336 GETUPVAL                         R10 5
      337 GETTABLEKS                       R10 R10 K16 ["PollFailed"]
      339 JUMP                             ; [+3]
      340 GETUPVAL                         R10 5
      341 GETTABLEKS                       R10 R10 K17 ["General"]
      343 SETTABLEKS                       R10 R9 K12 ["errorType"]
      345 RETURN                           R9 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["http"]
        6 GETTABLEKS                       R2 R2 K2 ["requestAsync"]
        8 DUPTABLE                         R3 K5 [{"Url", "Method"}]
        9 SETTABLEKS                       R0 R3 K3 ["Url"]
       11 LOADK                            R4 K6 ["GET"]
       12 SETTABLEKS                       R4 R3 K4 ["Method"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R2 K7 ["Success"]
       17 JUMPIF                           R3 ; [+43]
       18 GETIMPORT                        R3 K9 [pcall]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K10 ["decode"]
       23 GETTABLEKS                       R5 R2 K11 ["Body"]
       25 CALL                             R3 2 2
       26 JUMPIFNOT                        R3 ; [+19]
       27 LOADK                            R6 K12 ["Failed to fetch generated script: %* message=%*:%* id=%*"]
       28 GETTABLEKS                       R8 R2 K13 ["StatusCode"]
       30 GETTABLEKS                       R9 R4 K14 ["message"]
       32 GETTABLEKS                       R10 R4 K15 ["details"]
       34 GETTABLEKS                       R11 R4 K16 ["primitiveGenerationId"]
       36 NAMECALL                         R6 R6 K17 ["format"]
       38 CALL                             R6 5 1
       39 MOVE                             R5 R6
       40 GETIMPORT                        R6 K19 [error]
       42 MOVE                             R7 R5
       43 LOADN                            R8 0
       44 CALL                             R6 2 0
       45 JUMP                             ; [+15]
       46 LOADK                            R6 K20 ["Failed to fetch generated script: %* body=%*, scriptUrl=%*"]
       47 GETTABLEKS                       R8 R2 K13 ["StatusCode"]
       49 GETTABLEKS                       R9 R2 K11 ["Body"]
       51 MOVE                             R10 R0
       52 NAMECALL                         R6 R6 K17 ["format"]
       54 CALL                             R6 4 1
       55 MOVE                             R5 R6
       56 GETIMPORT                        R6 K19 [error]
       58 MOVE                             R7 R5
       59 LOADN                            R8 0
       60 CALL                             R6 2 0
       61 GETTABLEKS                       R3 R2 K11 ["Body"]
       63 RETURN                           R3 1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K4 [{"Url", "Method"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K5 ["scriptUrl"]
        9 SETTABLEKS                       R2 R1 K2 ["Url"]
       11 LOADK                            R2 K6 ["GET"]
       12 SETTABLEKS                       R2 R1 K3 ["Method"]
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 CALL                             R2 0 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R1
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 GETIMPORT                        R9 K2 [pcall]
       12 NEWCLOSURE                       R10 P0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R8
       15 CALL                             R9 1 2
       16 JUMPIF                           R9 ; [+13]
       17 LOADK                            R12 K3 ["Sending HTTP request to fetch dependency \"%*\" failed: %*"]
       18 GETTABLEKS                       R14 R8 K4 ["moduleName"]
       20 MOVE                             R15 R10
       21 NAMECALL                         R12 R12 K5 ["format"]
       23 CALL                             R12 3 1
       24 MOVE                             R11 R12
       25 GETIMPORT                        R12 K7 [error]
       27 MOVE                             R13 R11
       28 LOADN                            R14 0
       29 CALL                             R12 2 0
       30 GETTABLEKS                       R11 R10 K8 ["Success"]
       32 JUMPIF                           R11 ; [+33]
       33 GETUPVAL                         R11 1
       34 MOVE                             R12 R10
       35 LOADK                            R14 K9 ["fetchDependency \"%*\" (statusCode=%*), jobId=%*"]
       36 GETTABLEKS                       R16 R8 K4 ["moduleName"]
       38 GETTABLEKS                       R17 R10 K10 ["StatusCode"]
       40 MOVE                             R18 R0
       41 NAMECALL                         R14 R14 K5 ["format"]
       43 CALL                             R14 4 1
       44 MOVE                             R13 R14
       45 CALL                             R11 2 1
       46 LOADK                            R13 K11 ["Failed to fetch dependency \"%*\": %* message=%*:%* id=%*"]
       47 GETTABLEKS                       R15 R8 K4 ["moduleName"]
       49 GETTABLEKS                       R16 R10 K10 ["StatusCode"]
       51 GETTABLEKS                       R17 R11 K12 ["message"]
       53 GETTABLEKS                       R18 R11 K13 ["details"]
       55 GETTABLEKS                       R19 R11 K14 ["primitiveGenerationId"]
       57 NAMECALL                         R13 R13 K5 ["format"]
       59 CALL                             R13 6 1
       60 MOVE                             R12 R13
       61 GETIMPORT                        R13 K7 [error]
       63 MOVE                             R14 R12
       64 LOADN                            R15 0
       65 CALL                             R13 2 0
       66 DUPTABLE                         R13 K17 [{"variableName", "moduleName", "source"}]
       67 GETTABLEKS                       R14 R8 K15 ["variableName"]
       69 SETTABLEKS                       R14 R13 K15 ["variableName"]
       71 GETTABLEKS                       R14 R8 K4 ["moduleName"]
       73 SETTABLEKS                       R14 R13 K4 ["moduleName"]
       75 GETTABLEKS                       R14 R10 K18 ["Body"]
       77 SETTABLEKS                       R14 R13 K16 ["source"]
       79 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       81 MOVE                             R12 R3
       82 GETIMPORT                        R11 K21 [table.insert]
       84 CALL                             R11 2 0
       85 FORGLOOP                         R4 2 ; [-76]
       87 RETURN                           R3 1

PROTO_38:
        0 MOVE                             R4 R1
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+7]
        3 DUPTABLE                         R4 K1 [{"status"}]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["Cancelled"]
        7 SETTABLEKS                       R5 R4 K0 ["status"]
        9 RETURN                           R4 1
       10 GETUPVAL                         R4 1
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+13]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["get"]
       16 CALL                             R4 0 1
       17 GETTABLEKS                       R4 R4 K4 ["getMockPrimGenBackendData"]
       19 CALL                             R4 0 1
       20 GETIMPORT                        R5 K6 [warn]
       22 LOADK                            R6 K7 ["pollForScriptAsync"]
       23 MOVE                             R7 R4
       24 CALL                             R5 2 0
       25 RETURN                           R4 1
       26 GETUPVAL                         R4 3
       27 MOVE                             R5 R0
       28 MOVE                             R6 R1
       29 MOVE                             R7 R2
       30 MOVE                             R8 R3
       31 CALL                             R4 4 1
       32 GETTABLEKS                       R5 R4 K0 ["status"]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K2 ["Cancelled"]
       37 JUMPIFNOTEQ                      R5 R6 ; [+8]
       39 DUPTABLE                         R5 K1 [{"status"}]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K2 ["Cancelled"]
       43 SETTABLEKS                       R6 R5 K0 ["status"]
       45 RETURN                           R5 1
       46 GETTABLEKS                       R5 R4 K0 ["status"]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K8 ["Failed"]
       51 JUMPIFNOTEQ                      R5 R6 ; [+2]
       53 RETURN                           R4 1
       54 GETTABLEKS                       R5 R4 K9 ["dependencies"]
       56 JUMPIFNOT                        R5 ; [+8]
       57 GETTABLEKS                       R7 R4 K9 ["dependencies"]
       59 LENGTH                           R6 R7
       60 LOADN                            R7 0
       61 JUMPIFLT                         R7 R6 ; [+2]
       63 LOADB                            R5 0 +1
       64 LOADB                            R5 1
       65 LOADNIL                          R6
       66 JUMPIFNOT                        R5 ; [+19]
       67 MOVE                             R7 R2
       68 GETUPVAL                         R8 4
       69 GETTABLEKS                       R8 R8 K10 ["ResolvingDependencies"]
       71 CALL                             R7 1 0
       72 GETTABLEKS                       R8 R4 K9 ["dependencies"]
       74 FASTCALL2K                       ASSERT R8 K11 ; [+4]
       76 LOADK                            R9 K11 ["Dependencies are required"]
       77 GETIMPORT                        R7 K13 [assert]
       79 CALL                             R7 2 0
       80 GETUPVAL                         R7 5
       81 MOVE                             R8 R0
       82 GETTABLEKS                       R9 R4 K9 ["dependencies"]
       84 CALL                             R7 2 1
       85 MOVE                             R6 R7
       86 GETTABLEKS                       R7 R4 K14 ["scriptUrl"]
       88 JUMPIF                           R7 ; [+4]
       89 GETUPVAL                         R7 6
       90 LOADK                            R8 K15 ["No script URL found in response"]
       91 CALL                             R7 1 -1
       92 RETURN                           R7 -1
       93 MOVE                             R7 R2
       94 GETUPVAL                         R8 4
       95 GETTABLEKS                       R8 R8 K16 ["DownloadingScript"]
       97 CALL                             R7 1 0
       98 GETUPVAL                         R7 7
       99 GETTABLEKS                       R8 R4 K14 ["scriptUrl"]
      101 CALL                             R7 1 1
      102 DUPTABLE                         R8 K21 [{"status", "luauCode", "dependencyVersion", "resolvedDependencies", "scriptPreviewS3Urls"}]
      103 GETUPVAL                         R9 0
      104 GETTABLEKS                       R9 R9 K22 ["Success"]
      106 SETTABLEKS                       R9 R8 K0 ["status"]
      108 SETTABLEKS                       R7 R8 K17 ["luauCode"]
      110 GETTABLEKS                       R9 R4 K18 ["dependencyVersion"]
      112 SETTABLEKS                       R9 R8 K18 ["dependencyVersion"]
      114 SETTABLEKS                       R6 R8 K19 ["resolvedDependencies"]
      116 GETTABLEKS                       R9 R4 K20 ["scriptPreviewS3Urls"]
      118 SETTABLEKS                       R9 R8 K20 ["scriptPreviewS3Urls"]
      120 RETURN                           R8 1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["addWorkspaceModelAsync"]
        5 DUPTABLE                         R1 K5 [{"code", "generationId", "dependencies"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K6 ["luauCode"]
        9 SETTABLEKS                       R2 R1 K2 ["code"]
       11 GETUPVAL                         R2 2
       12 SETTABLEKS                       R2 R1 K3 ["generationId"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K7 ["resolvedDependencies"]
       17 SETTABLEKS                       R2 R1 K4 ["dependencies"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_40:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R1
        6 CALL                             R3 1 2
        7 JUMPIFNOT                        R3 ; [+15]
        8 GETTABLEKS                       R5 R4 K2 ["success"]
       10 JUMPIFNOT                        R5 ; [+12]
       11 DUPTABLE                         R5 K5 [{"status", "resultName"}]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K6 ["Success"]
       15 SETTABLEKS                       R6 R5 K3 ["status"]
       17 GETTABLEKS                       R7 R4 K4 ["resultName"]
       19 ORK                              R6 R7 K7 ["ProceduralObject"]
       20 SETTABLEKS                       R6 R5 K4 ["resultName"]
       22 RETURN                           R5 1
       23 JUMPIFNOT                        R3 ; [+28]
       24 DUPTABLE                         R5 K10 [{"status", "errorText", "errorType"}]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K11 ["Failed"]
       28 SETTABLEKS                       R6 R5 K3 ["status"]
       30 LOADK                            R7 K12 ["Failed to add workspace model: %*"]
       31 GETTABLEKS                       R9 R4 K13 ["error"]
       33 NAMECALL                         R7 R7 K14 ["format"]
       35 CALL                             R7 2 1
       36 MOVE                             R6 R7
       37 SETTABLEKS                       R6 R5 K8 ["errorText"]
       39 GETUPVAL                         R7 1
       40 CALL                             R7 0 1
       41 JUMPIFNOT                        R7 ; [+4]
       42 GETUPVAL                         R6 2
       43 MOVE                             R7 R4
       44 CALL                             R6 1 1
       45 JUMP                             ; [+3]
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K15 ["General"]
       49 SETTABLEKS                       R6 R5 K9 ["errorType"]
       51 RETURN                           R5 1
       52 DUPTABLE                         R5 K10 [{"status", "errorText", "errorType"}]
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K11 ["Failed"]
       56 SETTABLEKS                       R6 R5 K3 ["status"]
       58 LOADK                            R7 K12 ["Failed to add workspace model: %*"]
       59 MOVE                             R9 R4
       60 NAMECALL                         R7 R7 K14 ["format"]
       62 CALL                             R7 2 1
       63 MOVE                             R6 R7
       64 SETTABLEKS                       R6 R5 K8 ["errorText"]
       66 GETUPVAL                         R7 1
       67 CALL                             R7 0 1
       68 JUMPIFNOT                        R7 ; [+4]
       69 GETUPVAL                         R6 2
       70 MOVE                             R7 R4
       71 CALL                             R6 1 1
       72 JUMP                             ; [+3]
       73 GETUPVAL                         R6 3
       74 GETTABLEKS                       R6 R6 K15 ["General"]
       76 SETTABLEKS                       R6 R5 K9 ["errorType"]
       78 RETURN                           R5 1

PROTO_41:
        0 GETTABLEKS                       R8 R5 K0 ["toolArgs"]
        2 GETTABLEKS                       R8 R8 K1 ["environment"]
        4 GETTABLEKS                       R8 R8 K2 ["EventLogger"]
        6 GETTABLEKS                       R8 R8 K3 ["logPrimitiveGen"]
        8 JUMPIFNOT                        R2 ; [+11]
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R9 R9 K4 ["updateJobStatus"]
       12 MOVE                             R10 R2
       13 GETUPVAL                         R11 1
       14 GETTABLEKS                       R11 R11 K5 ["Failed"]
       16 DUPTABLE                         R12 K7 [{"errorMessage"}]
       17 SETTABLEKS                       R1 R12 K6 ["errorMessage"]
       19 CALL                             R9 3 0
       20 GETTABLEKS                       R9 R6 K8 ["setGenerationError"]
       22 MOVE                             R10 R0
       23 MOVE                             R11 R1
       24 MOVE                             R12 R7
       25 CALL                             R9 3 0
       26 JUMPIFNOT                        R2 ; [+6]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K9 ["appendLog"]
       30 MOVE                             R10 R2
       31 MOVE                             R11 R1
       32 CALL                             R9 2 0
       33 MOVE                             R9 R8
       34 GETUPVAL                         R10 2
       35 MOVE                             R11 R4
       36 DUPTABLE                         R12 K14 [{"generationId", "success", "errorMessage", "errorCode", "prompt"}]
       37 SETTABLEKS                       R2 R12 K10 ["generationId"]
       39 LOADB                            R13 0
       40 SETTABLEKS                       R13 R12 K11 ["success"]
       42 SETTABLEKS                       R1 R12 K6 ["errorMessage"]
       44 SETTABLEKS                       R0 R12 K12 ["errorCode"]
       46 SETTABLEKS                       R3 R12 K13 ["prompt"]
       48 CALL                             R10 2 -1
       49 CALL                             R9 -1 0
       50 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateJobStatus"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["Polling"]
        7 DUPTABLE                         R4 K3 [{"serverStage"}]
        8 SETTABLEKS                       R0 R4 K2 ["serverStage"]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K4 ["setGenerationStage"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["appendLog"]
        3 GETUPVAL                         R4 1
        4 LOADK                            R6 K1 ["Poll attempt %*: status=%*%*"]
        5 MOVE                             R8 R0
        6 MOVE                             R9 R1
        7 JUMPIFNOT                        R2 ; [+7]
        8 LOADK                            R11 K2 [", stage=%*"]
        9 MOVE                             R13 R2
       10 NAMECALL                         R11 R11 K3 ["format"]
       12 CALL                             R11 2 1
       13 MOVE                             R10 R11
       14 JUMP                             ; [+1]
       15 LOADK                            R10 K4 [""]
       16 NAMECALL                         R6 R6 K3 ["format"]
       18 CALL                             R6 4 1
       19 MOVE                             R5 R6
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R4 4
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 NEWCLOSURE                       R6 P1
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U3
       21 CALL                             R0 6 -1
       22 RETURN                           R0 -1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Modes"]
        3 GETTABLEKS                       R1 R1 K1 ["ShowPreview"]
        5 SETTABLEKS                       R1 R0 K2 ["mode"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["Inserted"]
       10 SETTABLEKS                       R1 R0 K4 ["previewState"]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K5 ["resultName"]
       15 SETTABLEKS                       R1 R0 K6 ["displayName"]
       17 DUPTABLE                         R1 K9 [{"onRetryText", "onRetryClick"}]
       18 GETUPVAL                         R2 3
       19 LOADK                            R4 K10 ["PrimitiveGen"]
       20 LOADK                            R5 K11 ["InsertAgain"]
       21 NAMECALL                         R2 R2 K12 ["getText"]
       23 CALL                             R2 3 1
       24 SETTABLEKS                       R2 R1 K7 ["onRetryText"]
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          UPVAL U4
       28 SETTABLEKS                       R2 R1 K8 ["onRetryClick"]
       30 SETTABLEKS                       R1 R0 K13 ["retryInfo"]
       32 LOADB                            R1 1
       33 SETTABLEKS                       R1 R0 K14 ["expanded"]
       35 GETUPVAL                         R1 5
       36 SETTABLEKS                       R1 R0 K15 ["generationId"]
       38 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Inserted"]
        3 SETTABLEKS                       R1 R0 K1 ["previewState"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["resultName"]
        8 SETTABLEKS                       R1 R0 K3 ["displayName"]
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K4 ["retryInfo"]
       13 LOADB                            R1 1
       14 SETTABLEKS                       R1 R0 K5 ["expanded"]
       16 GETUPVAL                         R1 2
       17 SETTABLEKS                       R1 R0 K6 ["generationId"]
       19 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateJobStatus"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["Inserting"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 3
        9 GETTABLEKS                       R0 R0 K2 ["setGenerationStage"]
       11 GETUPVAL                         R1 4
       12 GETTABLEKS                       R1 R1 K1 ["Inserting"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 5
       16 GETUPVAL                         R1 6
       17 GETUPVAL                         R2 1
       18 GETUPVAL                         R3 7
       19 CALL                             R0 3 1
       20 GETTABLEKS                       R1 R0 K3 ["status"]
       22 GETUPVAL                         R2 8
       23 GETTABLEKS                       R2 R2 K4 ["Success"]
       25 JUMPIFNOTEQ                      R1 R2 ; [+70]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K0 ["updateJobStatus"]
       30 GETUPVAL                         R2 1
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K5 ["Completed"]
       34 DUPTABLE                         R4 K8 [{"resultName", "modelFullName"}]
       35 GETTABLEKS                       R5 R0 K6 ["resultName"]
       37 SETTABLEKS                       R5 R4 K6 ["resultName"]
       39 LOADK                            R6 K9 ["Workspace.%*"]
       40 GETTABLEKS                       R8 R0 K6 ["resultName"]
       42 NAMECALL                         R6 R6 K10 ["format"]
       44 CALL                             R6 2 1
       45 MOVE                             R5 R6
       46 SETTABLEKS                       R5 R4 K7 ["modelFullName"]
       48 CALL                             R1 3 0
       49 GETUPVAL                         R1 9
       50 CALL                             R1 0 1
       51 JUMPIFNOT                        R1 ; [+12]
       52 GETUPVAL                         R1 3
       53 GETTABLEKS                       R1 R1 K11 ["updateWidget"]
       55 NEWCLOSURE                       R2 P0
       56 CAPTURE                          UPVAL U10
       57 CAPTURE                          UPVAL U11
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U12
       60 CAPTURE                          UPVAL U13
       61 CAPTURE                          UPVAL U1
       62 CALL                             R1 1 0
       63 JUMP                             ; [+8]
       64 GETUPVAL                         R1 3
       65 GETTABLEKS                       R1 R1 K11 ["updateWidget"]
       67 NEWCLOSURE                       R2 P1
       68 CAPTURE                          UPVAL U11
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U1
       71 CALL                             R1 1 0
       72 GETUPVAL                         R1 6
       73 GETTABLEKS                       R1 R1 K12 ["bridge"]
       75 GETTABLEKS                       R1 R1 K13 ["listenToLinkChanges"]
       77 DUPTABLE                         R2 K16 [{"generationId", "name"}]
       78 GETUPVAL                         R3 1
       79 SETTABLEKS                       R3 R2 K14 ["generationId"]
       81 GETTABLEKS                       R3 R0 K6 ["resultName"]
       83 SETTABLEKS                       R3 R2 K15 ["name"]
       85 CALL                             R1 1 0
       86 GETUPVAL                         R1 14
       87 GETUPVAL                         R2 15
       88 GETUPVAL                         R3 16
       89 DUPTABLE                         R4 K18 [{"success"}]
       90 LOADB                            R5 1
       91 SETTABLEKS                       R5 R4 K17 ["success"]
       93 CALL                             R2 2 -1
       94 CALL                             R1 -1 0
       95 RETURN                           R0 0
       96 LOADK                            R2 K19 ["Execute generated code failed with error: %*, generationId=%*"]
       97 GETTABLEKS                       R4 R0 K20 ["errorText"]
       99 GETUPVAL                         R5 1
      100 NAMECALL                         R2 R2 K10 ["format"]
      102 CALL                             R2 3 1
      103 MOVE                             R1 R2
      104 GETTABLEKS                       R2 R0 K21 ["errorType"]
      106 GETUPVAL                         R3 17
      107 GETTABLEKS                       R3 R3 K22 ["DmIsUnreachable"]
      109 JUMPIFNOTEQ                      R2 R3 ; [+43]
      111 GETTABLEKS                       R2 R0 K20 ["errorText"]
      113 MOVE                             R3 R1
      114 GETUPVAL                         R4 18
      115 CALL                             R4 0 1
      116 JUMPIFNOT                        R4 ; [+22]
      117 JUMPIFNOT                        R2 ; [+9]
      118 JUMPIFEQKS                       R2 K23 [""] ; [+8]
      120 LOADK                            R5 K24 [" Details: %*"]
      121 MOVE                             R7 R2
      122 NAMECALL                         R5 R5 K10 ["format"]
      124 CALL                             R5 2 1
      125 MOVE                             R4 R5
      126 JUMP                             ; [+1]
      127 LOADK                            R4 K23 [""]
      128 LOADK                            R9 K25 ["The Asset DataModel is not reachable right now.%* "]
      129 MOVE                             R11 R4
      130 NAMECALL                         R9 R9 K10 ["format"]
      132 CALL                             R9 2 1
      133 MOVE                             R5 R9
      134 LOADK                            R6 K26 ["It may be paused at a breakpoint, busy running another task, or unavailable because Studio is in Play/Test mode. "]
      135 LOADK                            R7 K27 ["Please stop play test if it is running, resume or clear any breakpoints, then run /run print(\"hi\") to confirm the Asset DataModel is reachable."]
      136 LOADK                            R8 K28 ["If it still fails, restart Roblox Studio and try this tool again."]
      137 CONCAT                           R1 R5 R8
      138 JUMP                             ; [+14]
      139 JUMPIFNOT                        R3 ; [+2]
      140 MOVE                             R1 R3
      141 JUMP                             ; [+11]
      142 JUMPIFNOT                        R2 ; [+9]
      143 JUMPIFEQKS                       R2 K23 [""] ; [+8]
      145 LOADK                            R4 K29 ["Asset datamodel is not reachable: %*"]
      146 MOVE                             R6 R2
      147 NAMECALL                         R4 R4 K10 ["format"]
      149 CALL                             R4 2 1
      150 MOVE                             R1 R4
      151 JUMP                             ; [+1]
      152 LOADK                            R1 K30 ["Asset datamodel is not reachable"]
      153 GETUPVAL                         R2 9
      154 CALL                             R2 0 1
      155 JUMPIFNOT                        R2 ; [+34]
      156 DUPTABLE                         R2 K34 [{"description", "onRetryText", "onRetryClick"}]
      157 GETUPVAL                         R3 12
      158 LOADK                            R5 K35 ["PrimitiveGen"]
      159 LOADK                            R6 K36 ["InsertionFailedRetryPrompt"]
      160 NAMECALL                         R3 R3 K37 ["getText"]
      162 CALL                             R3 3 1
      163 SETTABLEKS                       R3 R2 K31 ["description"]
      165 GETUPVAL                         R3 12
      166 LOADK                            R5 K35 ["PrimitiveGen"]
      167 LOADK                            R6 K38 ["RetryYes"]
      168 NAMECALL                         R3 R3 K37 ["getText"]
      170 CALL                             R3 3 1
      171 SETTABLEKS                       R3 R2 K32 ["onRetryText"]
      173 NEWCLOSURE                       R3 P2
      174 CAPTURE                          UPVAL U13
      175 SETTABLEKS                       R3 R2 K33 ["onRetryClick"]
      177 GETGLOBAL                        R3 K39 ["reportGenerationError"]
      179 GETTABLEKS                       R4 R0 K21 ["errorType"]
      181 MOVE                             R5 R1
      182 GETUPVAL                         R6 1
      183 GETUPVAL                         R7 19
      184 GETUPVAL                         R8 16
      185 GETUPVAL                         R9 6
      186 GETUPVAL                         R10 3
      187 MOVE                             R11 R2
      188 CALL                             R3 8 0
      189 RETURN                           R0 0
      190 GETGLOBAL                        R2 K39 ["reportGenerationError"]
      192 GETTABLEKS                       R3 R0 K21 ["errorType"]
      194 MOVE                             R4 R1
      195 GETUPVAL                         R5 1
      196 GETUPVAL                         R6 19
      197 GETUPVAL                         R7 16
      198 GETUPVAL                         R8 6
      199 GETUPVAL                         R9 3
      200 CALL                             R2 7 0
      201 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toolArgs"]
        3 GETTABLEKS                       R0 R0 K1 ["environment"]
        5 GETTABLEKS                       R0 R0 K2 ["getStudioPlayState"]
        7 CALL                             R0 0 1
        8 GETUPVAL                         R1 1
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K3 ["isRunning"]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K4 ["setPreviewState"]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K5 ["Generating"]
       18 LOADK                            R3 K6 [""]
       19 GETUPVAL                         R4 1
       20 CALL                             R1 3 0
       21 JUMPIFNOT                        R0 ; [+18]
       22 GETIMPORT                        R1 K9 [task.wait]
       24 LOADN                            R2 1
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 1
       27 LOADB                            R2 0
       28 SETTABLEKS                       R2 R1 K3 ["isRunning"]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K4 ["setPreviewState"]
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R2 R2 K10 ["Cancelled"]
       36 LOADK                            R3 K6 [""]
       37 GETUPVAL                         R4 1
       38 CALL                             R1 3 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R1 4
       41 CALL                             R1 0 0
       42 RETURN                           R0 0

PROTO_51:
        0 GETTABLEKS                       R6 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R6 R6 K1 ["environment"]
        4 GETTABLEKS                       R6 R6 K2 ["EventLogger"]
        6 GETTABLEKS                       R6 R6 K3 ["logPrimitiveGen"]
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          VAL R5
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R8 R8 K4 ["updateJobStatus"]
       13 MOVE                             R9 R1
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R10 R10 K5 ["Polling"]
       17 CALL                             R8 2 0
       18 GETIMPORT                        R8 K7 [pcall]
       20 NEWCLOSURE                       R9 P1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R5
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R7
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R4
       29 CALL                             R8 1 2
       30 JUMPIF                           R8 ; [+24]
       31 GETGLOBAL                        R10 K8 ["reportGenerationError"]
       33 GETUPVAL                         R12 4
       34 CALL                             R12 0 1
       35 JUMPIFNOT                        R12 ; [+4]
       36 GETUPVAL                         R11 5
       37 MOVE                             R12 R9
       38 CALL                             R11 1 1
       39 JUMP                             ; [+3]
       40 GETUPVAL                         R11 6
       41 GETTABLEKS                       R11 R11 K9 ["General"]
       43 FASTCALL1                        TOSTRING R9 ; [+3]
       44 MOVE                             R13 R9
       45 GETIMPORT                        R12 K11 [tostring]
       47 CALL                             R12 1 1
       48 MOVE                             R13 R1
       49 MOVE                             R14 R2
       50 MOVE                             R15 R3
       51 MOVE                             R16 R0
       52 MOVE                             R17 R4
       53 CALL                             R10 7 0
       54 RETURN                           R0 0
       55 GETTABLEKS                       R10 R9 K12 ["status"]
       57 GETUPVAL                         R11 7
       58 GETTABLEKS                       R11 R11 K13 ["Failed"]
       60 JUMPIFNOTEQ                      R10 R11 ; [+21]
       62 GETGLOBAL                        R10 K8 ["reportGenerationError"]
       64 GETUPVAL                         R12 4
       65 CALL                             R12 0 1
       66 JUMPIFNOT                        R12 ; [+3]
       67 GETTABLEKS                       R11 R9 K14 ["errorType"]
       69 JUMP                             ; [+3]
       70 GETUPVAL                         R11 6
       71 GETTABLEKS                       R11 R11 K9 ["General"]
       73 GETTABLEKS                       R12 R9 K15 ["errorText"]
       75 MOVE                             R13 R1
       76 MOVE                             R14 R2
       77 MOVE                             R15 R3
       78 MOVE                             R16 R0
       79 MOVE                             R17 R4
       80 CALL                             R10 7 0
       81 RETURN                           R0 0
       82 GETTABLEKS                       R10 R9 K12 ["status"]
       84 GETUPVAL                         R11 7
       85 GETTABLEKS                       R11 R11 K16 ["Cancelled"]
       87 JUMPIFNOTEQ                      R10 R11 ; [+33]
       89 GETUPVAL                         R10 0
       90 GETTABLEKS                       R10 R10 K4 ["updateJobStatus"]
       92 MOVE                             R11 R1
       93 GETUPVAL                         R12 1
       94 GETTABLEKS                       R12 R12 K16 ["Cancelled"]
       96 CALL                             R10 2 0
       97 GETTABLEKS                       R10 R4 K17 ["setPreviewState"]
       99 GETUPVAL                         R11 8
      100 GETTABLEKS                       R11 R11 K16 ["Cancelled"]
      102 CALL                             R10 1 0
      103 MOVE                             R10 R6
      104 GETUPVAL                         R11 9
      105 MOVE                             R12 R3
      106 DUPTABLE                         R13 K21 [{"success", "errorMessage", "errorCode"}]
      107 LOADB                            R14 0
      108 SETTABLEKS                       R14 R13 K18 ["success"]
      110 LOADK                            R14 K22 ["Generation cancelled by user"]
      111 SETTABLEKS                       R14 R13 K19 ["errorMessage"]
      113 GETUPVAL                         R14 6
      114 GETTABLEKS                       R14 R14 K23 ["CancelByUser"]
      116 SETTABLEKS                       R14 R13 K20 ["errorCode"]
      118 CALL                             R11 2 -1
      119 CALL                             R10 -1 0
      120 RETURN                           R0 0
      121 GETUPVAL                         R10 10
      122 CALL                             R10 0 1
      123 JUMPIF                           R10 ; [+40]
      124 GETTABLEKS                       R10 R9 K12 ["status"]
      126 GETUPVAL                         R11 7
      127 GETTABLEKS                       R11 R11 K24 ["Success"]
      129 JUMPIFNOTEQ                      R10 R11 ; [+34]
      131 GETTABLEKS                       R10 R9 K25 ["scriptPreviewS3Urls"]
      133 JUMPIFNOT                        R10 ; [+30]
      134 GETTABLEKS                       R11 R9 K25 ["scriptPreviewS3Urls"]
      136 LENGTH                           R10 R11
      137 LOADN                            R11 0
      138 JUMPIFNOTLT                      R11 R10 ; [+25]
      140 GETTABLEKS                       R10 R9 K25 ["scriptPreviewS3Urls"]
      142 GETIMPORT                        R11 K28 [table.create]
      144 LENGTH                           R12 R10
      145 CALL                             R11 1 1
      146 LENGTH                           R14 R10
      147 LOADN                            R12 1
      148 LOADN                            R13 255
      149 FORNPREP                         R12
      150 GETTABLE                         R17 R10 R14
      151 FASTCALL2                        TABLE_INSERT R11 R17 ; [+4]
      153 MOVE                             R16 R11
      154 GETIMPORT                        R15 K30 [table.insert]
      156 CALL                             R15 2 0
      157 FORNLOOP                         R12
      158 GETUPVAL                         R12 11
      159 GETTABLEKS                       R12 R12 K31 ["fetchPreviewImages"]
      161 MOVE                             R13 R11
      162 MOVE                             R14 R4
      163 CALL                             R12 2 0
      164 LOADNIL                          R10
      165 NEWCLOSURE                       R11 P2
      166 CAPTURE                          UPVAL U0
      167 CAPTURE                          VAL R1
      168 CAPTURE                          UPVAL U1
      169 CAPTURE                          VAL R4
      170 CAPTURE                          UPVAL U12
      171 CAPTURE                          UPVAL U13
      172 CAPTURE                          VAL R0
      173 CAPTURE                          VAL R9
      174 CAPTURE                          UPVAL U14
      175 CAPTURE                          UPVAL U15
      176 CAPTURE                          UPVAL U16
      177 CAPTURE                          UPVAL U8
      178 CAPTURE                          UPVAL U17
      179 CAPTURE                          REF R10
      180 CAPTURE                          VAL R6
      181 CAPTURE                          UPVAL U9
      182 CAPTURE                          VAL R3
      183 CAPTURE                          UPVAL U6
      184 CAPTURE                          UPVAL U18
      185 CAPTURE                          VAL R2
      186 MOVE                             R10 R11
      187 GETUPVAL                         R12 19
      188 CALL                             R12 0 1
      189 JUMPIFNOT                        R12 ; [+74]
      190 GETTABLEKS                       R12 R0 K0 ["toolArgs"]
      192 GETTABLEKS                       R12 R12 K1 ["environment"]
      194 GETTABLEKS                       R12 R12 K32 ["getStudioPlayState"]
      196 CALL                             R12 0 1
      197 JUMPIFNOT                        R12 ; [+66]
      198 GETUPVAL                         R13 0
      199 GETTABLEKS                       R13 R13 K4 ["updateJobStatus"]
      201 MOVE                             R14 R1
      202 GETUPVAL                         R15 1
      203 GETTABLEKS                       R15 R15 K16 ["Cancelled"]
      205 CALL                             R13 2 0
      206 LOADNIL                          R13
      207 DUPTABLE                         R14 K37 [{"description", "onRetryText", "onRetryClick", "isRunning"}]
      208 GETUPVAL                         R15 17
      209 LOADK                            R17 K38 ["PrimitiveGen"]
      210 LOADK                            R18 K39 ["GenerationCancelledPlayModeRetryPrompt"]
      211 NAMECALL                         R15 R15 K40 ["getText"]
      213 CALL                             R15 3 1
      214 SETTABLEKS                       R15 R14 K33 ["description"]
      216 GETUPVAL                         R15 17
      217 LOADK                            R17 K38 ["PrimitiveGen"]
      218 LOADK                            R18 K41 ["RetryYes"]
      219 NAMECALL                         R15 R15 K40 ["getText"]
      221 CALL                             R15 3 1
      222 SETTABLEKS                       R15 R14 K34 ["onRetryText"]
      224 NEWCLOSURE                       R15 P3
      225 CAPTURE                          VAL R0
      226 CAPTURE                          REF R13
      227 CAPTURE                          VAL R4
      228 CAPTURE                          UPVAL U8
      229 CAPTURE                          REF R10
      230 SETTABLEKS                       R15 R14 K35 ["onRetryClick"]
      232 LOADB                            R15 0
      233 SETTABLEKS                       R15 R14 K36 ["isRunning"]
      235 MOVE                             R13 R14
      236 GETTABLEKS                       R14 R4 K17 ["setPreviewState"]
      238 GETUPVAL                         R15 8
      239 GETTABLEKS                       R15 R15 K16 ["Cancelled"]
      241 LOADK                            R16 K42 [""]
      242 MOVE                             R17 R13
      243 CALL                             R14 3 0
      244 MOVE                             R14 R6
      245 GETUPVAL                         R15 9
      246 MOVE                             R16 R3
      247 DUPTABLE                         R17 K21 [{"success", "errorMessage", "errorCode"}]
      248 LOADB                            R18 0
      249 SETTABLEKS                       R18 R17 K18 ["success"]
      251 LOADK                            R18 K43 ["Generation cancelled (Studio left edit mode)"]
      252 SETTABLEKS                       R18 R17 K19 ["errorMessage"]
      254 GETUPVAL                         R18 6
      255 GETTABLEKS                       R18 R18 K44 ["StudioLeftEditMode"]
      257 SETTABLEKS                       R18 R17 K20 ["errorCode"]
      259 CALL                             R15 2 -1
      260 CALL                             R14 -1 0
      261 CLOSEUPVALS                      R10
      262 RETURN                           R0 0
      263 CLOSEUPVALS                      R13
      264 MOVE                             R12 R10
      265 CALL                             R12 0 0
      266 CLOSEUPVALS                      R10
      267 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["pingAssetDmAsync"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_53:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R2 K2 ["[PrimitiveGenGuest] %*"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 LOADN                            R2 2
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R5 R1 K1 ["prompt"]
        5 ORK                              R4 R5 K0 [""]
        6 LOADNIL                          R5
        7 GETUPVAL                         R6 1
        8 CALL                             R6 0 1
        9 JUMPIFNOT                        R6 ; [+43]
       10 GETTABLEKS                       R6 R1 K2 ["segmentation"]
       12 JUMPIF                           R6 ; [+8]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K3 ["inferUISegmentation"]
       16 GETTABLEKS                       R7 R1 K4 ["suggestSegmentation"]
       18 GETTABLEKS                       R8 R1 K5 ["partNames"]
       20 CALL                             R6 2 1
       21 GETIMPORT                        R7 K7 [pcall]
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K8 ["resolveSegmentationAsync"]
       26 MOVE                             R9 R6
       27 GETTABLEKS                       R10 R1 K5 ["partNames"]
       29 MOVE                             R11 R4
       30 LOADNIL                          R12
       31 CALL                             R7 5 2
       32 JUMPIF                           R7 ; [+18]
       33 GETUPVAL                         R9 3
       34 CALL                             R9 0 1
       35 FASTCALL1                        TOSTRING R8 ; [+3]
       36 MOVE                             R12 R8
       37 GETIMPORT                        R11 K10 [tostring]
       39 CALL                             R11 1 1
       40 NAMECALL                         R9 R9 K11 ["addText"]
       42 CALL                             R9 2 1
       43 LOADB                            R11 1
       44 NAMECALL                         R9 R9 K12 ["setError"]
       46 CALL                             R9 2 1
       47 NAMECALL                         R9 R9 K13 ["build"]
       49 CALL                             R9 1 -1
       50 RETURN                           R9 -1
       51 MOVE                             R5 R8
       52 JUMP                             ; [+12]
       53 GETUPVAL                         R6 4
       54 CALL                             R6 0 1
       55 JUMPIFNOT                        R6 ; [+8]
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R6 R6 K14 ["parsePartNames"]
       59 GETTABLEKS                       R7 R1 K5 ["partNames"]
       61 CALL                             R6 1 1
       62 MOVE                             R5 R6
       63 JUMP                             ; [+1]
       64 LOADNIL                          R5
       65 DUPTABLE                         R6 K19 [{"requestId", "conversationId", "toolId", "prompt", "hasImage"}]
       66 GETTABLEKS                       R8 R0 K20 ["handlerArgs"]
       68 GETTABLEKS                       R8 R8 K21 ["messageGuid"]
       70 ORK                              R7 R8 K0 [""]
       71 SETTABLEKS                       R7 R6 K15 ["requestId"]
       73 GETTABLEKS                       R8 R0 K20 ["handlerArgs"]
       75 GETTABLEKS                       R8 R8 K22 ["sessionId"]
       77 ORK                              R7 R8 K0 [""]
       78 SETTABLEKS                       R7 R6 K16 ["conversationId"]
       80 GETTABLEKS                       R7 R0 K20 ["handlerArgs"]
       82 GETTABLEKS                       R7 R7 K17 ["toolId"]
       84 SETTABLEKS                       R7 R6 K17 ["toolId"]
       86 SETTABLEKS                       R4 R6 K1 ["prompt"]
       88 LOADB                            R7 1
       89 GETTABLEKS                       R8 R1 K23 ["attachedImageUri"]
       91 JUMPIFNOTEQKNIL                  R8 ; [+7]
       93 GETTABLEKS                       R8 R1 K24 ["hintImage"]
       95 JUMPIFNOTEQKNIL                  R8 ; [+2]
       97 LOADB                            R7 0 +1
       98 LOADB                            R7 1
       99 SETTABLEKS                       R7 R6 K18 ["hasImage"]
      101 GETUPVAL                         R7 5
      102 CALL                             R7 0 1
      103 JUMPIFNOT                        R7 ; [+34]
      104 GETUPVAL                         R7 6
      105 CALL                             R7 0 1
      106 JUMPIFNOT                        R7 ; [+31]
      107 GETUPVAL                         R7 7
      108 GETTABLEKS                       R7 R7 K25 ["getVersionMismatch"]
      110 CALL                             R7 0 1
      111 JUMPIFNOT                        R7 ; [+26]
      112 GETGLOBAL                        R7 K26 ["reportGenerationError"]
      114 GETUPVAL                         R8 8
      115 GETTABLEKS                       R8 R8 K27 ["PluginVersionMismatch"]
      117 LOADK                            R9 K28 ["The Assistant plugin just got new patch, please restart RobloxStudio."]
      118 LOADNIL                          R10
      119 MOVE                             R11 R4
      120 MOVE                             R12 R6
      121 MOVE                             R13 R0
      122 MOVE                             R14 R3
      123 CALL                             R7 7 0
      124 GETUPVAL                         R7 3
      125 CALL                             R7 0 1
      126 LOADK                            R9 K28 ["The Assistant plugin just got new patch, please restart RobloxStudio."]
      127 NAMECALL                         R7 R7 K11 ["addText"]
      129 CALL                             R7 2 1
      130 LOADB                            R9 1
      131 NAMECALL                         R7 R7 K12 ["setError"]
      133 CALL                             R7 2 1
      134 NAMECALL                         R7 R7 K13 ["build"]
      136 CALL                             R7 1 -1
      137 RETURN                           R7 -1
      138 GETUPVAL                         R7 6
      139 CALL                             R7 0 1
      140 JUMPIFNOT                        R7 ; [+89]
      141 GETIMPORT                        R7 K7 [pcall]
      143 NEWCLOSURE                       R8 P0
      144 CAPTURE                          VAL R0
      145 CALL                             R7 1 2
      146 JUMPIFNOT                        R7 ; [+3]
      147 GETTABLEKS                       R9 R8 K29 ["success"]
      149 JUMPIF                           R9 ; [+80]
      150 JUMPIFNOT                        R7 ; [+4]
      151 GETTABLEKS                       R10 R8 K31 ["error"]
      153 ORK                              R9 R10 K30 ["Unknown error"]
      154 JUMP                             ; [+5]
      155 FASTCALL1                        TOSTRING R8 ; [+3]
      156 MOVE                             R10 R8
      157 GETIMPORT                        R9 K10 [tostring]
      159 CALL                             R9 1 1
      160 GETUPVAL                         R11 9
      161 CALL                             R11 0 1
      162 JUMPIFNOT                        R11 ; [+22]
      163 JUMPIFNOT                        R9 ; [+9]
      164 JUMPIFEQKS                       R9 K0 [""] ; [+8]
      166 LOADK                            R12 K32 [" Details: %*"]
      167 MOVE                             R14 R9
      168 NAMECALL                         R12 R12 K33 ["format"]
      170 CALL                             R12 2 1
      171 MOVE                             R11 R12
      172 JUMP                             ; [+1]
      173 LOADK                            R11 K0 [""]
      174 LOADK                            R16 K34 ["The Asset DataModel is not reachable right now.%* "]
      175 MOVE                             R18 R11
      176 NAMECALL                         R16 R16 K33 ["format"]
      178 CALL                             R16 2 1
      179 MOVE                             R12 R16
      180 LOADK                            R13 K35 ["It may be paused at a breakpoint, busy running another task, or unavailable because Studio is in Play/Test mode. "]
      181 LOADK                            R14 K36 ["Please stop play test if it is running, resume or clear any breakpoints, then run /run print(\"hi\") to confirm the Asset DataModel is reachable."]
      182 LOADK                            R15 K37 ["If it still fails, restart Roblox Studio and try this tool again."]
      183 CONCAT                           R10 R12 R15
      184 JUMP                             ; [+11]
      185 JUMPIFNOT                        R9 ; [+9]
      186 JUMPIFEQKS                       R9 K0 [""] ; [+8]
      188 LOADK                            R11 K38 ["Asset datamodel is not reachable: %*"]
      189 MOVE                             R13 R9
      190 NAMECALL                         R11 R11 K33 ["format"]
      192 CALL                             R11 2 1
      193 MOVE                             R10 R11
      194 JUMP                             ; [+1]
      195 LOADK                            R10 K39 ["Asset datamodel is not reachable"]
      196 GETUPVAL                         R11 10
      197 CALL                             R11 0 1
      198 JUMPIFNOT                        R11 ; [+5]
      199 GETIMPORT                        R11 K42 [task.spawn]
      201 NEWCLOSURE                       R12 P1
      202 CAPTURE                          VAL R10
      203 CALL                             R11 1 0
      204 GETGLOBAL                        R11 K26 ["reportGenerationError"]
      206 GETUPVAL                         R12 8
      207 GETTABLEKS                       R12 R12 K43 ["DmHealthChecking"]
      209 MOVE                             R13 R10
      210 LOADNIL                          R14
      211 MOVE                             R15 R4
      212 MOVE                             R16 R6
      213 MOVE                             R17 R0
      214 MOVE                             R18 R3
      215 CALL                             R11 7 0
      216 GETUPVAL                         R11 3
      217 CALL                             R11 0 1
      218 MOVE                             R13 R10
      219 NAMECALL                         R11 R11 K11 ["addText"]
      221 CALL                             R11 2 1
      222 LOADB                            R13 1
      223 NAMECALL                         R11 R11 K12 ["setError"]
      225 CALL                             R11 2 1
      226 NAMECALL                         R11 R11 K13 ["build"]
      228 CALL                             R11 1 -1
      229 RETURN                           R11 -1
      230 GETUPVAL                         R7 11
      231 CALL                             R7 0 1
      232 GETUPVAL                         R8 12
      233 GETTABLEKS                       R8 R8 K44 ["getActiveJobCount"]
      235 CALL                             R8 0 1
      236 JUMPIFNOTLE                      R7 R8 ; [+48]
      238 GETUPVAL                         R9 13
      239 LOADK                            R11 K45 ["PrimitiveGen"]
      240 LOADK                            R12 K46 ["MaxConcurrentJobsError"]
      241 DUPTABLE                         R13 K49 [{"activeCount", "maxConcurrentJobs"}]
      242 GETIMPORT                        R14 K51 [string.format]
      244 LOADK                            R15 K52 ["%d"]
      245 MOVE                             R16 R8
      246 CALL                             R14 2 1
      247 SETTABLEKS                       R14 R13 K47 ["activeCount"]
      249 GETIMPORT                        R14 K51 [string.format]
      251 LOADK                            R15 K52 ["%d"]
      252 MOVE                             R16 R7
      253 CALL                             R14 2 1
      254 SETTABLEKS                       R14 R13 K48 ["maxConcurrentJobs"]
      256 NAMECALL                         R9 R9 K53 ["getText"]
      258 CALL                             R9 4 1
      259 GETGLOBAL                        R10 K26 ["reportGenerationError"]
      261 GETUPVAL                         R11 8
      262 GETTABLEKS                       R11 R11 K54 ["TooManyConcurrentJobs"]
      264 MOVE                             R12 R9
      265 LOADNIL                          R13
      266 MOVE                             R14 R4
      267 MOVE                             R15 R6
      268 MOVE                             R16 R0
      269 MOVE                             R17 R3
      270 CALL                             R10 7 0
      271 GETUPVAL                         R10 3
      272 CALL                             R10 0 1
      273 MOVE                             R12 R9
      274 NAMECALL                         R10 R10 K11 ["addText"]
      276 CALL                             R10 2 1
      277 LOADB                            R12 1
      278 NAMECALL                         R10 R10 K12 ["setError"]
      280 CALL                             R10 2 1
      281 NAMECALL                         R10 R10 K13 ["build"]
      283 CALL                             R10 1 -1
      284 RETURN                           R10 -1
      285 GETTABLEKS                       R9 R1 K24 ["hintImage"]
      287 JUMPIF                           R9 ; [+11]
      288 GETTABLEKS                       R10 R1 K23 ["attachedImageUri"]
      290 JUMPIF                           R10 ; [+2]
      291 LOADNIL                          R9
      292 JUMP                             ; [+6]
      293 GETUPVAL                         R11 14
      294 GETTABLEKS                       R11 R11 K55 ["getImage"]
      296 MOVE                             R12 R10
      297 CALL                             R11 1 1
      298 MOVE                             R9 R11
      299 DUPTABLE                         R10 K69 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "generationStage", "startTime", "onChipClicked", "retryInfo", "generationId"}]
      300 GETUPVAL                         R11 15
      301 GETTABLEKS                       R11 R11 K70 ["Type"]
      303 SETTABLEKS                       R11 R10 K56 ["type"]
      305 GETUPVAL                         R11 15
      306 GETTABLEKS                       R11 R11 K71 ["Modes"]
      308 GETTABLEKS                       R11 R11 K72 ["ShowPreview"]
      310 SETTABLEKS                       R11 R10 K57 ["mode"]
      312 LOADB                            R11 0
      313 SETTABLEKS                       R11 R10 K58 ["expanded"]
      315 SETTABLEKS                       R4 R10 K59 ["name"]
      317 LENGTH                           R12 R4
      318 LOADN                            R13 0
      319 JUMPIFNOTLT                      R13 R12 ; [+3]
      321 MOVE                             R11 R4
      322 JUMP                             ; [+6]
      323 GETUPVAL                         R11 13
      324 LOADK                            R13 K45 ["PrimitiveGen"]
      325 LOADK                            R14 K73 ["DefaultDisplayName"]
      326 NAMECALL                         R11 R11 K53 ["getText"]
      328 CALL                             R11 3 1
      329 SETTABLEKS                       R11 R10 K60 ["displayName"]
      331 LOADNIL                          R11
      332 SETTABLEKS                       R11 R10 K61 ["className"]
      334 LOADNIL                          R11
      335 SETTABLEKS                       R11 R10 K62 ["previewImages"]
      337 GETUPVAL                         R11 16
      338 GETTABLEKS                       R11 R11 K74 ["Generating"]
      340 SETTABLEKS                       R11 R10 K63 ["previewState"]
      342 GETUPVAL                         R11 17
      343 GETTABLEKS                       R11 R11 K75 ["Submitting"]
      345 SETTABLEKS                       R11 R10 K64 ["generationStage"]
      347 GETIMPORT                        R11 K78 [os.clock]
      349 CALL                             R11 0 1
      350 SETTABLEKS                       R11 R10 K65 ["startTime"]
      352 LOADNIL                          R11
      353 SETTABLEKS                       R11 R10 K66 ["onChipClicked"]
      355 LOADNIL                          R11
      356 SETTABLEKS                       R11 R10 K67 ["retryInfo"]
      358 LOADK                            R11 K0 [""]
      359 SETTABLEKS                       R11 R10 K68 ["generationId"]
      361 GETTABLEKS                       R11 R3 K79 ["replaceContent"]
      363 MOVE                             R12 R10
      364 CALL                             R11 1 0
      365 LOADK                            R11 K0 [""]
      366 GETUPVAL                         R12 18
      367 MOVE                             R13 R4
      368 MOVE                             R14 R9
      369 MOVE                             R15 R5
      370 CALL                             R12 3 1
      371 GETTABLEKS                       R13 R12 K68 ["generationId"]
      373 JUMPIFNOTEQKS                    R13 K0 [""] ; [+31]
      375 GETTABLEKS                       R14 R12 K81 ["errorType"]
      377 ORK                              R13 R14 K80 ["General"]
      378 GETTABLEKS                       R15 R12 K82 ["errorMessage"]
      380 ORK                              R14 R15 K30 ["Unknown error"]
      381 GETGLOBAL                        R15 K26 ["reportGenerationError"]
      383 MOVE                             R16 R13
      384 MOVE                             R17 R14
      385 LOADNIL                          R18
      386 MOVE                             R19 R4
      387 MOVE                             R20 R6
      388 MOVE                             R21 R0
      389 MOVE                             R22 R3
      390 CALL                             R15 7 0
      391 GETUPVAL                         R15 3
      392 CALL                             R15 0 1
      393 MOVE                             R17 R14
      394 NAMECALL                         R15 R15 K11 ["addText"]
      396 CALL                             R15 2 1
      397 LOADB                            R17 1
      398 NAMECALL                         R15 R15 K12 ["setError"]
      400 CALL                             R15 2 1
      401 NAMECALL                         R15 R15 K13 ["build"]
      403 CALL                             R15 1 -1
      404 RETURN                           R15 -1
      405 GETTABLEKS                       R11 R12 K68 ["generationId"]
      407 SETTABLEKS                       R11 R6 K68 ["generationId"]
      409 GETUPVAL                         R13 12
      410 GETTABLEKS                       R13 R13 K83 ["setJob"]
      412 MOVE                             R14 R11
      413 DUPTABLE                         R15 K87 [{"generationId", "status", "prompt", "imageUri", "logs"}]
      414 SETTABLEKS                       R11 R15 K68 ["generationId"]
      416 GETUPVAL                         R16 19
      417 GETTABLEKS                       R16 R16 K88 ["Submitted"]
      419 SETTABLEKS                       R16 R15 K84 ["status"]
      421 SETTABLEKS                       R4 R15 K1 ["prompt"]
      423 GETTABLEKS                       R16 R1 K23 ["attachedImageUri"]
      425 JUMPIF                           R16 ; [+7]
      426 MOVE                             R16 R9
      427 JUMPIFNOT                        R16 ; [+5]
      428 GETUPVAL                         R16 14
      429 GETTABLEKS                       R16 R16 K89 ["storeImage"]
      431 MOVE                             R17 R9
      432 CALL                             R16 1 1
      433 SETTABLEKS                       R16 R15 K85 ["imageUri"]
      435 NEWTABLE                         R16 0 0
      437 SETTABLEKS                       R16 R15 K86 ["logs"]
      439 CALL                             R13 2 0
      440 GETUPVAL                         R13 12
      441 GETTABLEKS                       R13 R13 K90 ["appendLog"]
      443 MOVE                             R14 R11
      444 LOADK                            R16 K91 ["Job submitted with prompt: \"%*\", image: \"%*\", imageMimeType: \"%*\""]
      445 MOVE                             R18 R4
      446 JUMPIFNOT                        R9 ; [+3]
      447 GETTABLEKS                       R19 R9 K92 ["data"]
      449 JUMPIF                           R19 ; [+1]
      450 LOADK                            R19 K93 ["nil"]
      451 JUMPIFNOT                        R9 ; [+3]
      452 GETTABLEKS                       R20 R9 K94 ["mimeType"]
      454 JUMPIF                           R20 ; [+1]
      455 LOADK                            R20 K93 ["nil"]
      456 NAMECALL                         R16 R16 K33 ["format"]
      458 CALL                             R16 4 1
      459 MOVE                             R15 R16
      460 CALL                             R13 2 0
      461 GETIMPORT                        R13 K42 [task.spawn]
      463 GETUPVAL                         R14 20
      464 MOVE                             R15 R0
      465 MOVE                             R16 R11
      466 MOVE                             R17 R4
      467 MOVE                             R18 R6
      468 MOVE                             R19 R3
      469 MOVE                             R20 R2
      470 CALL                             R13 7 0
      471 GETUPVAL                         R13 3
      472 CALL                             R13 0 1
      473 LOADK                            R16 K95 ["Generation job submitted successfully. Generation ID: %*"]
      474 MOVE                             R18 R11
      475 NAMECALL                         R16 R16 K33 ["format"]
      477 CALL                             R16 2 1
      478 MOVE                             R15 R16
      479 NAMECALL                         R13 R13 K11 ["addText"]
      481 CALL                             R13 2 1
      482 NAMECALL                         R13 R13 K13 ["build"]
      484 CALL                             R13 1 -1
      485 RETURN                           R13 -1

PROTO_55:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["selectModel"]
        5 DUPTABLE                         R1 K3 [{"modelTag"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["modelTag"]
        9 SETTABLEKS                       R2 R1 K2 ["modelTag"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["newDisplayName"]
        3 SETTABLEKS                       R1 R0 K1 ["displayName"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["newClassName"]
        8 SETTABLEKS                       R1 R0 K3 ["className"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["modelTag"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R1 R0 K5 ["onChipClicked"]
       19 JUMP                             ; [+3]
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K5 ["onChipClicked"]
       23 DUPTABLE                         R1 K7 [{"rawTransformValues"}]
       24 LOADB                            R2 1
       25 SETTABLEKS                       R2 R1 K6 ["rawTransformValues"]
       27 RETURN                           R1 1

PROTO_57:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["updateWidget"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["setPreviewImage"]
        5 GETTABLEKS                       R4 R0 K1 ["index"]
        7 GETTABLEKS                       R5 R0 K2 ["image"]
        9 CALL                             R3 2 0
       10 RETURN                           R0 0

PROTO_59:
        0 DUPTABLE                         R1 K1 [{"handlerArgs"}]
        1 GETIMPORT                        R2 K4 [table.clone]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R2 R1 K0 ["handlerArgs"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K5 ["createGuestContext"]
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R1
       12 GETUPVAL                         R5 2
       13 LOADNIL                          R6
       14 CALL                             R2 4 -1
       15 RETURN                           R2 -1

PROTO_60:
        0 DUPTABLE                         R3 K6 [{"uiMessageId", "uiContentId", "messageGuid", "sessionId", "toolId", "isThirdPartyRequest"}]
        1 LOADNIL                          R4
        2 SETTABLEKS                       R4 R3 K0 ["uiMessageId"]
        4 SETTABLEKS                       R0 R3 K1 ["uiContentId"]
        6 LOADNIL                          R4
        7 SETTABLEKS                       R4 R3 K2 ["messageGuid"]
        9 LOADNIL                          R4
       10 SETTABLEKS                       R4 R3 K3 ["sessionId"]
       12 LOADNIL                          R4
       13 SETTABLEKS                       R4 R3 K4 ["toolId"]
       15 LOADB                            R4 0
       16 SETTABLEKS                       R4 R3 K5 ["isThirdPartyRequest"]
       18 DUPTABLE                         R4 K8 [{"handlerArgs"}]
       19 GETIMPORT                        R5 K11 [table.clone]
       21 MOVE                             R6 R3
       22 CALL                             R5 1 1
       23 SETTABLEKS                       R5 R4 K7 ["handlerArgs"]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K12 ["createGuestContext"]
       28 GETUPVAL                         R6 1
       29 MOVE                             R7 R4
       30 GETUPVAL                         R8 2
       31 LOADNIL                          R9
       32 CALL                             R5 4 1
       33 MOVE                             R2 R5
       34 GETTABLEKS                       R3 R2 K13 ["bridge"]
       36 GETTABLEKS                       R3 R3 K14 ["listenToLinkChanges"]
       38 DUPTABLE                         R4 K17 [{"generationId", "name"}]
       39 GETTABLEKS                       R5 R1 K15 ["generationId"]
       41 SETTABLEKS                       R5 R4 K15 ["generationId"]
       43 GETTABLEKS                       R5 R1 K18 ["displayName"]
       45 SETTABLEKS                       R5 R4 K16 ["name"]
       47 CALL                             R3 1 0
       48 RETURN                           R0 0

PROTO_61:
        0 DUPTABLE                         R3 K6 [{"uiMessageId", "uiContentId", "messageGuid", "sessionId", "toolId", "isThirdPartyRequest"}]
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETTABLEKS                       R4 R1 K7 ["messageId"]
        4 JUMPIF                           R4 ; [+1]
        5 LOADK                            R4 K8 [""]
        6 SETTABLEKS                       R4 R3 K0 ["uiMessageId"]
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETTABLEKS                       R4 R1 K9 ["contentId"]
       11 JUMPIF                           R4 ; [+1]
       12 LOADK                            R4 K8 [""]
       13 SETTABLEKS                       R4 R3 K1 ["uiContentId"]
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETTABLEKS                       R4 R1 K2 ["messageGuid"]
       18 JUMPIF                           R4 ; [+1]
       19 LOADK                            R4 K8 [""]
       20 SETTABLEKS                       R4 R3 K2 ["messageGuid"]
       22 JUMPIFNOT                        R1 ; [+3]
       23 GETTABLEKS                       R4 R1 K3 ["sessionId"]
       25 JUMPIF                           R4 ; [+1]
       26 LOADK                            R4 K8 [""]
       27 SETTABLEKS                       R4 R3 K3 ["sessionId"]
       29 JUMPIFNOT                        R1 ; [+3]
       30 GETTABLEKS                       R4 R1 K4 ["toolId"]
       32 JUMPIF                           R4 ; [+1]
       33 LOADNIL                          R4
       34 SETTABLEKS                       R4 R3 K4 ["toolId"]
       36 JUMPIFNOT                        R1 ; [+3]
       37 GETTABLEKS                       R4 R1 K5 ["isThirdPartyRequest"]
       39 JUMPIF                           R4 ; [+1]
       40 LOADB                            R4 0
       41 SETTABLEKS                       R4 R3 K5 ["isThirdPartyRequest"]
       43 DUPTABLE                         R5 K11 [{"handlerArgs"}]
       44 GETIMPORT                        R6 K14 [table.clone]
       46 MOVE                             R7 R3
       47 CALL                             R6 1 1
       48 SETTABLEKS                       R6 R5 K10 ["handlerArgs"]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K15 ["createGuestContext"]
       53 GETUPVAL                         R7 1
       54 MOVE                             R8 R5
       55 GETUPVAL                         R9 2
       56 LOADNIL                          R10
       57 CALL                             R6 4 1
       58 MOVE                             R4 R6
       59 GETUPVAL                         R5 3
       60 MOVE                             R6 R4
       61 MOVE                             R7 R0
       62 MOVE                             R8 R2
       63 CALL                             R5 3 -1
       64 RETURN                           R5 -1

PROTO_62:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["suggestPartsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_63:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 RETURN                           R0 0
       11 JUMPIF                           R0 ; [+1]
       12 LOADNIL                          R1
       13 GETUPVAL                         R2 4
       14 GETTABLEKS                       R2 R2 K2 ["fn"]
       16 JUMPIFNOT                        R2 ; [+12]
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K2 ["fn"]
       20 JUMPIFNOT                        R1 ; [+6]
       21 GETIMPORT                        R3 K5 [table.concat]
       23 MOVE                             R4 R1
       24 LOADK                            R5 K6 [", "]
       25 CALL                             R3 2 1
       26 JUMP                             ; [+1]
       27 LOADK                            R3 K7 [""]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFEQKN                       R0 K0 [0] ; [+3]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 NEWTABLE                         R0 0 0
        9 SETUPVAL                         R0 2
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K1 ["fn"]
       13 JUMPIFNOT                        R1 ; [+5]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K1 ["fn"]
       17 LOADB                            R2 1
       18 CALL                             R1 1 0
       19 GETIMPORT                        R1 K4 [task.spawn]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U5
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_65:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_66:
        0 DUPTABLE                         R0 K1 [{"fn"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["fn"]
        4 DUPTABLE                         R1 K1 [{"fn"}]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K0 ["fn"]
        8 NEWTABLE                         R2 0 0
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          REF R2
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          REF R2
       19 DUPTABLE                         R5 K6 [{"setterRef", "loadingSetterRef", "spawnSuggestion", "cancelSuggestion"}]
       20 SETTABLEKS                       R0 R5 K2 ["setterRef"]
       22 SETTABLEKS                       R1 R5 K3 ["loadingSetterRef"]
       24 SETTABLEKS                       R3 R5 K4 ["spawnSuggestion"]
       26 SETTABLEKS                       R4 R5 K5 ["cancelSuggestion"]
       28 CLOSEUPVALS                      R2
       29 RETURN                           R5 1

PROTO_67:
        0 LOADK                            R0 K0 ["Creates procedural 3D objects from primitive parts with configurable attributes. Supports reference images."]
        1 RETURN                           R0 1

PROTO_68:
        0 SETUPVAL                         R0 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 LENGTH                           R3 R1
        3 LOADN                            R4 0
        4 JUMPIFNOTLT                      R4 R3 ; [+3]
        6 GETTABLEN                        R2 R1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 SETUPVAL                         R2 1
       10 DUPTABLE                         R2 K2 [{"name", "arguments"}]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["PrimitiveGen"]
       14 SETTABLEKS                       R3 R2 K0 ["name"]
       16 DUPTABLE                         R3 K6 [{"prompt", "attachedImageUri"}]
       17 SETTABLEKS                       R0 R3 K4 ["prompt"]
       19 GETUPVAL                         R4 1
       20 SETTABLEKS                       R4 R3 K5 ["attachedImageUri"]
       22 SETTABLEKS                       R3 R2 K1 ["arguments"]
       24 RETURN                           R2 1

PROTO_69:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["spawnSuggestion"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_70:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["storeImage"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0
        9 LOADNIL                          R1
       10 SETUPVAL                         R1 0
       11 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setterRef"]
        3 SETTABLEKS                       R0 R1 K1 ["fn"]
        5 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["loadingSetterRef"]
        3 SETTABLEKS                       R0 R1 K1 ["fn"]
        5 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelSuggestion"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["spawnSuggestion"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_75:
        0 SETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R2 1
        3 LENGTH                           R1 R2
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+6]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K0 ["spawnSuggestion"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0
       12 JUMPIF                           R0 ; [+17]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K1 ["cancelSuggestion"]
       16 CALL                             R1 0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K2 ["loadingSetterRef"]
       20 GETTABLEKS                       R1 R1 K3 ["fn"]
       22 JUMPIFNOT                        R1 ; [+7]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K2 ["loadingSetterRef"]
       26 GETTABLEKS                       R1 R1 K3 ["fn"]
       28 LOADB                            R2 0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["spawnSuggestion"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_77:
        0 LOADB                            R1 1
        1 GETUPVAL                         R3 0
        2 LENGTH                           R2 R3
        3 LOADN                            R3 0
        4 JUMPIFLT                         R3 R2 ; [+7]
        6 GETTABLEKS                       R2 R0 K0 ["hintImage"]
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_78:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R1 R0 K0 ["spawnSuggestion"]
        4 CALL                             R1 0 0
        5 NEWTABLE                         R1 0 0
        7 MOVE                             R3 R1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["createStringRowDefinition"]
       11 DUPTABLE                         R5 K7 [{"label", "prop", "initialValue", "multiLine", "onChanged"}]
       12 GETUPVAL                         R6 2
       13 LOADK                            R8 K8 ["MeshGen"]
       14 LOADK                            R9 K9 ["InputPromptTitle"]
       15 NAMECALL                         R6 R6 K10 ["getText"]
       17 CALL                             R6 3 1
       18 SETTABLEKS                       R6 R5 K2 ["label"]
       20 LOADK                            R6 K11 ["prompt"]
       21 SETTABLEKS                       R6 R5 K3 ["prop"]
       23 GETUPVAL                         R6 3
       24 SETTABLEKS                       R6 R5 K4 ["initialValue"]
       26 LOADB                            R6 1
       27 SETTABLEKS                       R6 R5 K5 ["multiLine"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R6 R5 K6 ["onChanged"]
       34 CALL                             R4 1 -1
       35 FASTCALL                         TABLE_INSERT ; [+2]
       36 GETIMPORT                        R2 K14 [table.insert]
       38 CALL                             R2 -1 0
       39 MOVE                             R3 R1
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K15 ["createHintImageRowDefinition"]
       43 DUPTABLE                         R5 K16 [{"label", "prop", "initialValue", "onChanged"}]
       44 GETUPVAL                         R6 2
       45 LOADK                            R8 K8 ["MeshGen"]
       46 LOADK                            R9 K17 ["InputHintImageTitle"]
       47 NAMECALL                         R6 R6 K10 ["getText"]
       49 CALL                             R6 3 1
       50 SETTABLEKS                       R6 R5 K2 ["label"]
       52 LOADK                            R6 K18 ["hintImage"]
       53 SETTABLEKS                       R6 R5 K3 ["prop"]
       55 GETUPVAL                         R7 4
       56 JUMPIFNOT                        R7 ; [+6]
       57 GETUPVAL                         R6 5
       58 GETTABLEKS                       R6 R6 K19 ["getImage"]
       60 GETUPVAL                         R7 4
       61 CALL                             R6 1 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R6
       64 SETTABLEKS                       R6 R5 K4 ["initialValue"]
       66 NEWCLOSURE                       R6 P1
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          UPVAL U5
       69 SETTABLEKS                       R6 R5 K6 ["onChanged"]
       71 CALL                             R4 1 -1
       72 FASTCALL                         TABLE_INSERT ; [+2]
       73 GETIMPORT                        R2 K14 [table.insert]
       75 CALL                             R2 -1 0
       76 MOVE                             R3 R1
       77 GETUPVAL                         R4 1
       78 GETTABLEKS                       R4 R4 K20 ["createPartNamesRowDefinition"]
       80 DUPTABLE                         R5 K27 [{"label", "prop", "initialValue", "isLoading", "registerSetValue", "registerSetIsLoading", "onCancelPressed", "onSuggestPressed", "infoPopoverNamespace"}]
       81 GETUPVAL                         R6 2
       82 LOADK                            R8 K28 ["PrimitiveGen"]
       83 LOADK                            R9 K29 ["InputPartNamesTitle"]
       84 NAMECALL                         R6 R6 K10 ["getText"]
       86 CALL                             R6 3 1
       87 SETTABLEKS                       R6 R5 K2 ["label"]
       89 LOADK                            R6 K30 ["partNames"]
       90 SETTABLEKS                       R6 R5 K3 ["prop"]
       92 LOADNIL                          R6
       93 SETTABLEKS                       R6 R5 K4 ["initialValue"]
       95 GETUPVAL                         R6 6
       96 JUMPIFNOT                        R6 ; [+7]
       97 GETUPVAL                         R8 3
       98 LENGTH                           R7 R8
       99 LOADN                            R8 0
      100 JUMPIFLT                         R8 R7 ; [+2]
      102 LOADB                            R6 0 +1
      103 LOADB                            R6 1
      104 SETTABLEKS                       R6 R5 K21 ["isLoading"]
      106 NEWCLOSURE                       R6 P2
      107 CAPTURE                          VAL R0
      108 SETTABLEKS                       R6 R5 K22 ["registerSetValue"]
      110 NEWCLOSURE                       R6 P3
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R6 R5 K23 ["registerSetIsLoading"]
      114 NEWCLOSURE                       R6 P4
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R6 R5 K24 ["onCancelPressed"]
      118 NEWCLOSURE                       R6 P5
      119 CAPTURE                          VAL R0
      120 SETTABLEKS                       R6 R5 K25 ["onSuggestPressed"]
      122 LOADK                            R6 K31 ["PrimGenSegmentation"]
      123 SETTABLEKS                       R6 R5 K26 ["infoPopoverNamespace"]
      125 CALL                             R4 1 -1
      126 FASTCALL                         TABLE_INSERT ; [+2]
      127 GETIMPORT                        R2 K14 [table.insert]
      129 CALL                             R2 -1 0
      130 MOVE                             R3 R1
      131 GETUPVAL                         R4 1
      132 GETTABLEKS                       R4 R4 K32 ["createSuggestSegmentationRowDefinition"]
      134 DUPTABLE                         R5 K36 [{"label", "prop", "initialChecked", "onCheckedChanged", "onRefreshPressed"}]
      135 GETUPVAL                         R6 2
      136 LOADK                            R8 K8 ["MeshGen"]
      137 LOADK                            R9 K29 ["InputPartNamesTitle"]
      138 NAMECALL                         R6 R6 K10 ["getText"]
      140 CALL                             R6 3 1
      141 SETTABLEKS                       R6 R5 K2 ["label"]
      143 LOADK                            R6 K37 ["suggestSegmentation"]
      144 SETTABLEKS                       R6 R5 K3 ["prop"]
      146 GETUPVAL                         R6 6
      147 SETTABLEKS                       R6 R5 K33 ["initialChecked"]
      149 NEWCLOSURE                       R6 P6
      150 CAPTURE                          UPVAL U6
      151 CAPTURE                          UPVAL U3
      152 CAPTURE                          VAL R0
      153 SETTABLEKS                       R6 R5 K34 ["onCheckedChanged"]
      155 NEWCLOSURE                       R6 P7
      156 CAPTURE                          VAL R0
      157 SETTABLEKS                       R6 R5 K35 ["onRefreshPressed"]
      159 CALL                             R4 1 -1
      160 FASTCALL                         TABLE_INSERT ; [+2]
      161 GETIMPORT                        R2 K14 [table.insert]
      163 CALL                             R2 -1 0
      164 DUPTABLE                         R2 K40 [{"propertyRows", "canConfirm"}]
      165 SETTABLEKS                       R1 R2 K38 ["propertyRows"]
      167 GETUPVAL                         R4 7
      168 CALL                             R4 0 1
      169 JUMPIFNOT                        R4 ; [+3]
      170 NEWCLOSURE                       R3 P8
      171 CAPTURE                          UPVAL U3
      172 JUMP                             ; [+1]
      173 LOADNIL                          R3
      174 SETTABLEKS                       R3 R2 K39 ["canConfirm"]
      176 RETURN                           R2 1

PROTO_79:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_80:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["PrimitiveGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_81:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+11]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K0 ["registerHydrator"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["Type"]
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CALL                             R3 2 0
       18 NEWCLOSURE                       R3 P2
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U4
       23 GETUPVAL                         R4 5
       24 GETTABLEKS                       R4 R4 K2 ["define"]
       26 CALL                             R4 0 1
       27 GETUPVAL                         R6 6
       28 GETTABLEKS                       R6 R6 K3 ["PrimitiveGen"]
       30 NAMECALL                         R4 R4 K4 ["setName"]
       32 CALL                             R4 2 1
       33 LOADK                            R6 K5 ["Creates 3D objects built from primitive parts (blocks, spheres, cylinders, wedges) as a ProceduralModel with configurable attributes.\nUse this tool when the user wants to:\n- Create or build a 3D object, model, character, creature, vehicle, building, scenery, or any physical thing in the workspace\n- Generate something from a reference image\n- Create an object with tunable parameters (e.g. \"add attributes to control head size, arm length, color\")\n- Build anything described as \"procedural\", \"parametric\", \"configurable\", or \"with attributes\"\n\nThe output is a ProceduralModel: a scripted model whose appearance is controlled by user-editable attributes (like size, color, proportions). The user can tweak these attributes after generation without regenerating.\n\nThe tool automatically inserts the generated model into the workspace. You do not need to run any code afterward.\n"]
       34 NAMECALL                         R4 R4 K6 ["setDescription"]
       36 CALL                             R4 2 1
       37 LOADK                            R6 K7 ["prompt"]
       38 DUPTABLE                         R7 K10 [{"type", "description"}]
       39 LOADK                            R8 K11 ["string"]
       40 SETTABLEKS                       R8 R7 K8 ["type"]
       42 LOADK                            R8 K12 ["A text description of what to create and what attributes to expose.\nPass the user's own words. If they mention specific configurable properties (e.g. \"head size\", \"arm length\", \"wheel count\"), include those in the prompt so the generated model exposes them as editable attributes.\nIf an image is attached and the user gave no text description, pass an empty string.\nDo NOT describe or interpret the attached image — only pass the user's own words.\n"]
       43 SETTABLEKS                       R8 R7 K9 ["description"]
       45 NAMECALL                         R4 R4 K13 ["addArgument"]
       47 CALL                             R4 3 1
       48 LOADK                            R6 K14 ["attachedImageUri"]
       49 DUPTABLE                         R7 K10 [{"type", "description"}]
       50 LOADK                            R8 K11 ["string"]
       51 SETTABLEKS                       R8 R7 K8 ["type"]
       53 LOADK                            R8 K15 ["The image URI (IMAGEID_<id>) from the user's attached image. Always pass this when the user provides a reference image."]
       54 SETTABLEKS                       R8 R7 K9 ["description"]
       56 NAMECALL                         R4 R4 K16 ["addOptionalArgument"]
       58 CALL                             R4 3 1
       59 LOADK                            R6 K17 ["partNames"]
       60 DUPTABLE                         R7 K10 [{"type", "description"}]
       61 LOADK                            R8 K11 ["string"]
       62 SETTABLEKS                       R8 R7 K8 ["type"]
       64 GETUPVAL                         R9 7
       65 CALL                             R9 0 1
       66 JUMPIFNOT                        R9 ; [+2]
       67 LOADK                            R8 K18 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel', 'door']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
       68 JUMP                             ; [+1]
       69 LOADK                            R8 K19 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings. When provided, the model will be built around these named parts."]
       70 SETTABLEKS                       R8 R7 K9 ["description"]
       72 NAMECALL                         R4 R4 K16 ["addOptionalArgument"]
       74 CALL                             R4 3 1
       75 GETUPVAL                         R5 7
       76 CALL                             R5 0 1
       77 JUMPIFNOT                        R5 ; [+16]
       78 LOADK                            R7 K20 ["segmentation"]
       79 DUPTABLE                         R8 K22 [{"type", "enum", "description"}]
       80 LOADK                            R9 K11 ["string"]
       81 SETTABLEKS                       R9 R8 K8 ["type"]
       83 GETUPVAL                         R9 8
       84 GETTABLEKS                       R9 R9 K23 ["SegmentationArgValues"]
       86 SETTABLEKS                       R9 R8 K21 ["enum"]
       88 LOADK                            R9 K24 ["Controls how the model is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"]
       89 SETTABLEKS                       R9 R8 K9 ["description"]
       91 NAMECALL                         R5 R4 K16 ["addOptionalArgument"]
       93 CALL                             R5 3 0
       94 MOVE                             R7 R3
       95 NAMECALL                         R5 R4 K25 ["setHandler"]
       97 CALL                             R5 2 1
       98 DUPTABLE                         R7 K31 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       99 LOADK                            R8 K32 ["Primitive Generation"]
      100 SETTABLEKS                       R8 R7 K26 ["title"]
      102 LOADB                            R8 0
      103 SETTABLEKS                       R8 R7 K27 ["readOnlyHint"]
      105 LOADB                            R8 0
      106 SETTABLEKS                       R8 R7 K28 ["destructiveHint"]
      108 LOADB                            R8 0
      109 SETTABLEKS                       R8 R7 K29 ["idempotentHint"]
      111 LOADB                            R8 0
      112 SETTABLEKS                       R8 R7 K30 ["openWorldHint"]
      114 NAMECALL                         R5 R5 K33 ["setAnnotations"]
      116 CALL                             R5 2 1
      117 NAMECALL                         R5 R5 K34 ["build"]
      119 CALL                             R5 1 1
      120 LOADK                            R6 K35 [""]
      121 LOADNIL                          R7
      122 LOADB                            R8 1
      123 NEWCLOSURE                       R9 P3
      124 CAPTURE                          REF R6
      125 CAPTURE                          REF R8
      126 CAPTURE                          UPVAL U9
      127 DUPTABLE                         R10 K40 [{"command", "getDescription", "mapToToolCall", "getInputRequestArguments"}]
      128 GETUPVAL                         R11 6
      129 GETTABLEKS                       R11 R11 K3 ["PrimitiveGen"]
      131 SETTABLEKS                       R11 R10 K36 ["command"]
      133 DUPCLOSURE                       R11 K41 [PROTO_67]
      134 SETTABLEKS                       R11 R10 K37 ["getDescription"]
      136 NEWCLOSURE                       R11 P5
      137 CAPTURE                          REF R6
      138 CAPTURE                          REF R7
      139 CAPTURE                          UPVAL U6
      140 SETTABLEKS                       R11 R10 K38 ["mapToToolCall"]
      142 GETUPVAL                         R12 10
      143 CALL                             R12 0 1
      144 JUMPIFNOT                        R12 ; [+10]
      145 NEWCLOSURE                       R11 P6
      146 CAPTURE                          VAL R9
      147 CAPTURE                          UPVAL U11
      148 CAPTURE                          UPVAL U12
      149 CAPTURE                          REF R6
      150 CAPTURE                          REF R7
      151 CAPTURE                          UPVAL U13
      152 CAPTURE                          REF R8
      153 CAPTURE                          UPVAL U14
      154 JUMP                             ; [+1]
      155 LOADNIL                          R11
      156 SETTABLEKS                       R11 R10 K39 ["getInputRequestArguments"]
      158 DUPTABLE                         R11 K43 [{"transformInitialContent"}]
      159 DUPCLOSURE                       R12 K44 [PROTO_79]
      160 CAPTURE                          UPVAL U3
      161 SETTABLEKS                       R12 R11 K42 ["transformInitialContent"]
      163 DUPTABLE                         R12 K51 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "displayNameFunction", "toolCallOptions"}]
      164 SETTABLEKS                       R5 R12 K45 ["definition"]
      166 NEWTABLE                         R13 0 1
      168 MOVE                             R14 R10
      169 SETLIST                          R13 R14 1 [1]
      171 SETTABLEKS                       R13 R12 K46 ["slashCommands"]
      173 GETUPVAL                         R14 15
      174 CALL                             R14 0 1
      175 JUMPIFNOT                        R14 ; [+2]
      176 LOADNIL                          R13
      177 JUMP                             ; [+5]
      178 NEWTABLE                         R13 0 1
      180 GETUPVAL                         R14 3
      181 SETLIST                          R13 R14 1 [1]
      183 SETTABLEKS                       R13 R12 K47 ["contentWidgets"]
      185 SETTABLEKS                       R11 R12 K48 ["streamTransform"]
      187 GETUPVAL                         R14 15
      188 CALL                             R14 0 1
      189 JUMPIFNOT                        R14 ; [+2]
      190 LOADNIL                          R13
      191 JUMP                             ; [+2]
      192 DUPCLOSURE                       R13 K52 [PROTO_80]
      193 CAPTURE                          UPVAL U12
      194 SETTABLEKS                       R13 R12 K49 ["displayNameFunction"]
      196 DUPTABLE                         R13 K54 [{"resetTimeoutOnProgress"}]
      197 LOADB                            R14 1
      198 SETTABLEKS                       R14 R13 K53 ["resetTimeoutOnProgress"]
      200 SETTABLEKS                       R13 R12 K50 ["toolCallOptions"]
      202 CLOSEUPVALS                      R6
      203 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["EncodingService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Cryo"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Guest"]
       24 GETTABLEKS                       R4 R4 K13 ["Environment"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Util"]
       31 GETTABLEKS                       R5 R5 K15 ["FormRequestBuilder"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K14 ["Util"]
       38 GETTABLEKS                       R6 R6 K16 ["ImageContentStore"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K17 ["Features"]
       45 GETTABLEKS                       R7 R7 K18 ["MeshGen"]
       47 GETTABLEKS                       R7 R7 K19 ["MeshGenSchemaSelector"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Parent"]
       54 GETTABLEKS                       R8 R8 K20 ["ModelContextProtocol"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETIMPORT                        R9 K1 [script]
       61 GETTABLEKS                       R9 R9 K10 ["Parent"]
       63 GETTABLEKS                       R9 R9 K21 ["PrimitiveGenBridge"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETIMPORT                        R10 K1 [script]
       70 GETTABLEKS                       R10 R10 K10 ["Parent"]
       72 GETTABLEKS                       R10 R10 K22 ["PrimitiveGenBridgeTypes"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETIMPORT                        R11 K1 [script]
       79 GETTABLEKS                       R11 R11 K10 ["Parent"]
       81 GETTABLEKS                       R11 R11 K23 ["PrimitiveGenJobStore"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETIMPORT                        R12 K1 [script]
       88 GETTABLEKS                       R12 R12 K10 ["Parent"]
       90 GETTABLEKS                       R12 R12 K24 ["PrimitiveGenPreviewFetch"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R0 K25 ["Components"]
       97 GETTABLEKS                       R13 R13 K26 ["PropertyRows"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K9 [require]
      102 GETTABLEKS                       R14 R0 K17 ["Features"]
      104 GETTABLEKS                       R14 R14 K27 ["Gen3dUtils"]
      106 GETTABLEKS                       R14 R14 K28 ["SegmentationEnums"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K9 [require]
      111 GETTABLEKS                       R15 R0 K14 ["Util"]
      113 GETTABLEKS                       R15 R15 K29 ["Serializer"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K9 [require]
      118 GETTABLEKS                       R16 R0 K30 ["Tools"]
      120 GETTABLEKS                       R16 R16 K31 ["ToolTypes"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K9 [require]
      125 GETTABLEKS                       R17 R0 K14 ["Util"]
      127 GETTABLEKS                       R17 R17 K32 ["ToolUtils"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K9 [require]
      132 GETTABLEKS                       R18 R0 K33 ["Resources"]
      134 GETTABLEKS                       R18 R18 K34 ["Localization"]
      136 GETTABLEKS                       R18 R18 K35 ["Translator"]
      138 CALL                             R17 1 1
      139 GETIMPORT                        R18 K9 [require]
      141 GETTABLEKS                       R19 R0 K36 ["Types"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K9 [require]
      146 GETTABLEKS                       R20 R0 K14 ["Util"]
      148 GETTABLEKS                       R20 R20 K37 ["VersionResolver"]
      150 CALL                             R19 1 1
      151 GETIMPORT                        R20 K1 [script]
      153 LOADK                            R22 K38 ["PrimitiveGen"]
      154 NAMECALL                         R20 R20 K3 ["FindFirstAncestor"]
      156 CALL                             R20 2 1
      157 GETIMPORT                        R21 K9 [require]
      159 GETTABLEKS                       R22 R20 K39 ["PrimitiveGenContentWidget"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K9 [require]
      164 GETTABLEKS                       R23 R0 K40 ["Flags"]
      166 GETTABLEKS                       R23 R23 K41 ["FFlagAssistantGen3dAutoSegmentation"]
      168 CALL                             R22 1 1
      169 GETIMPORT                        R23 K9 [require]
      171 GETTABLEKS                       R24 R0 K40 ["Flags"]
      173 GETTABLEKS                       R24 R24 K42 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      175 CALL                             R23 1 1
      176 GETIMPORT                        R24 K9 [require]
      178 GETTABLEKS                       R25 R0 K40 ["Flags"]
      180 GETTABLEKS                       R25 R25 K43 ["FFlagAssistantMultipleChatPersistence"]
      182 CALL                             R24 1 1
      183 GETIMPORT                        R25 K9 [require]
      185 GETTABLEKS                       R26 R0 K40 ["Flags"]
      187 GETTABLEKS                       R26 R26 K44 ["FFlagAssistantSplitToolsAndWidgets"]
      189 CALL                             R25 1 1
      190 GETIMPORT                        R26 K9 [require]
      192 GETTABLEKS                       R27 R0 K40 ["Flags"]
      194 GETTABLEKS                       R27 R27 K45 ["FFlagAssistantVersionMismatchWarning"]
      196 CALL                             R26 1 1
      197 GETIMPORT                        R27 K9 [require]
      199 GETTABLEKS                       R28 R0 K40 ["Flags"]
      201 GETTABLEKS                       R28 R28 K46 ["FFlagDebugMockPrimitiveGenBackend"]
      203 CALL                             R27 1 1
      204 GETIMPORT                        R28 K9 [require]
      206 GETTABLEKS                       R29 R0 K40 ["Flags"]
      208 GETTABLEKS                       R29 R29 K47 ["FFlagDebugPrimGenDMNoReachable"]
      210 CALL                             R28 1 1
      211 GETIMPORT                        R29 K9 [require]
      213 GETTABLEKS                       R30 R0 K40 ["Flags"]
      215 GETTABLEKS                       R30 R30 K48 ["FFlagPrimGenAllowReInsert"]
      217 CALL                             R29 1 1
      218 GETIMPORT                        R30 K9 [require]
      220 GETTABLEKS                       R31 R0 K40 ["Flags"]
      222 GETTABLEKS                       R31 R31 K49 ["FFlagPrimGenAnnotateRightMimeType"]
      224 CALL                             R30 1 1
      225 GETIMPORT                        R31 K9 [require]
      227 GETTABLEKS                       R32 R0 K40 ["Flags"]
      229 GETTABLEKS                       R32 R32 K50 ["FFlagPrimGenBetterErrorType"]
      231 CALL                             R31 1 1
      232 GETIMPORT                        R32 K9 [require]
      234 GETTABLEKS                       R33 R0 K40 ["Flags"]
      236 GETTABLEKS                       R33 R33 K51 ["FFlagPrimGenCarouselPreview"]
      238 CALL                             R32 1 1
      239 GETIMPORT                        R33 K9 [require]
      241 GETTABLEKS                       R34 R0 K40 ["Flags"]
      243 GETTABLEKS                       R34 R34 K52 ["FFlagPrimGenRetryInPlayTest"]
      245 CALL                             R33 1 1
      246 GETIMPORT                        R34 K9 [require]
      248 GETTABLEKS                       R35 R0 K40 ["Flags"]
      250 GETTABLEKS                       R35 R35 K53 ["FFlagPrimGenSchemaSelector"]
      252 CALL                             R34 1 1
      253 GETIMPORT                        R35 K9 [require]
      255 GETTABLEKS                       R36 R0 K40 ["Flags"]
      257 GETTABLEKS                       R36 R36 K54 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
      259 CALL                             R35 1 1
      260 GETIMPORT                        R36 K9 [require]
      262 GETTABLEKS                       R37 R0 K40 ["Flags"]
      264 GETTABLEKS                       R37 R37 K55 ["FFlagPrimGenVersionMismatchError"]
      266 CALL                             R36 1 1
      267 GETIMPORT                        R37 K9 [require]
      269 GETTABLEKS                       R38 R0 K40 ["Flags"]
      271 GETTABLEKS                       R38 R38 K56 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      273 CALL                             R37 1 1
      274 GETIMPORT                        R38 K9 [require]
      276 GETTABLEKS                       R39 R0 K40 ["Flags"]
      278 GETTABLEKS                       R39 R39 K57 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      280 CALL                             R38 1 1
      281 GETIMPORT                        R39 K9 [require]
      283 GETTABLEKS                       R40 R0 K40 ["Flags"]
      285 GETTABLEKS                       R40 R40 K58 ["FStringMCPAssistantPrimitiveGenServerURL"]
      287 CALL                             R39 1 1
      288 GETTABLEKS                       R40 R21 K59 ["PreviewState"]
      290 GETTABLEKS                       R41 R7 K14 ["Util"]
      292 GETTABLEKS                       R41 R41 K60 ["ToolResult"]
      294 GETTABLEKS                       R42 R7 K61 ["Json"]
      296 GETTABLEKS                       R43 R2 K62 ["Dictionary"]
      298 GETTABLEKS                       R43 R43 K63 ["join"]
      300 GETTABLEKS                       R44 R7 K14 ["Util"]
      302 GETTABLEKS                       R44 R44 K64 ["ToolBuilder"]
      304 GETTABLEKS                       R45 R15 K65 ["ToolNames"]
      306 MOVE                             R47 R32
      307 CALL                             R47 0 1
      308 JUMPIFNOT                        R47 ; [+2]
      309 LOADN                            R46 48
      310 JUMP                             ; [+1]
      311 LOADN                            R46 5
      312 DUPTABLE                         R47 K70 [{"Submitting", "ResolvingDependencies", "DownloadingScript", "Inserting"}]
      313 LOADK                            R50 K38 ["PrimitiveGen"]
      314 LOADK                            R51 K71 ["StageSubmitting"]
      315 NAMECALL                         R48 R17 K72 ["getText"]
      317 CALL                             R48 3 1
      318 SETTABLEKS                       R48 R47 K66 ["Submitting"]
      320 LOADK                            R50 K38 ["PrimitiveGen"]
      321 LOADK                            R51 K73 ["StageResolvingDependencies"]
      322 NAMECALL                         R48 R17 K72 ["getText"]
      324 CALL                             R48 3 1
      325 SETTABLEKS                       R48 R47 K67 ["ResolvingDependencies"]
      327 LOADK                            R50 K38 ["PrimitiveGen"]
      328 LOADK                            R51 K74 ["StageDownloadingScript"]
      329 NAMECALL                         R48 R17 K72 ["getText"]
      331 CALL                             R48 3 1
      332 SETTABLEKS                       R48 R47 K68 ["DownloadingScript"]
      334 LOADK                            R50 K38 ["PrimitiveGen"]
      335 LOADK                            R51 K75 ["StageInserting"]
      336 NAMECALL                         R48 R17 K72 ["getText"]
      338 CALL                             R48 3 1
      339 SETTABLEKS                       R48 R47 K69 ["Inserting"]
      341 DUPTABLE                         R48 K78 [{"WorkflowFailure", "ModerationFailure"}]
      342 LOADK                            R49 K79 ["Workflow Failure"]
      343 SETTABLEKS                       R49 R48 K76 ["WorkflowFailure"]
      345 LOADK                            R49 K80 ["Moderation Failure"]
      346 SETTABLEKS                       R49 R48 K77 ["ModerationFailure"]
      348 DUPTABLE                         R49 K84 [{"Success", "Cancelled", "Failed"}]
      349 LOADK                            R50 K85 ["success"]
      350 SETTABLEKS                       R50 R49 K81 ["Success"]
      352 LOADK                            R50 K86 ["cancelled"]
      353 SETTABLEKS                       R50 R49 K82 ["Cancelled"]
      355 LOADK                            R50 K87 ["failed"]
      356 SETTABLEKS                       R50 R49 K83 ["Failed"]
      358 DUPTABLE                         R50 K102 [{"General", "CancelByUser", "TooManyConcurrentJobs", "DmIsUnreachable", "DmHealthChecking", "EmptyPrompt", "ImageFormat", "MaxCharacters", "ModerationFailed", "PollFailed", "PluginVersionMismatch", "ScriptFetchError", "TooManyRequests", "StudioLeftEditMode"}]
      359 LOADK                            R51 K88 ["General"]
      360 SETTABLEKS                       R51 R50 K88 ["General"]
      362 LOADK                            R51 K89 ["CancelByUser"]
      363 SETTABLEKS                       R51 R50 K89 ["CancelByUser"]
      365 LOADK                            R51 K90 ["TooManyConcurrentJobs"]
      366 SETTABLEKS                       R51 R50 K90 ["TooManyConcurrentJobs"]
      368 LOADK                            R51 K91 ["DmIsUnreachable"]
      369 SETTABLEKS                       R51 R50 K91 ["DmIsUnreachable"]
      371 LOADK                            R51 K92 ["DmHealthChecking"]
      372 SETTABLEKS                       R51 R50 K92 ["DmHealthChecking"]
      374 LOADK                            R51 K93 ["EmptyPrompt"]
      375 SETTABLEKS                       R51 R50 K93 ["EmptyPrompt"]
      377 LOADK                            R51 K94 ["ImageFormat"]
      378 SETTABLEKS                       R51 R50 K94 ["ImageFormat"]
      380 LOADK                            R51 K95 ["MaxCharacters"]
      381 SETTABLEKS                       R51 R50 K95 ["MaxCharacters"]
      383 LOADK                            R51 K96 ["ModerationFailed"]
      384 SETTABLEKS                       R51 R50 K96 ["ModerationFailed"]
      386 LOADK                            R51 K97 ["PollFailed"]
      387 SETTABLEKS                       R51 R50 K97 ["PollFailed"]
      389 LOADK                            R51 K98 ["PluginVersionMismatch"]
      390 SETTABLEKS                       R51 R50 K98 ["PluginVersionMismatch"]
      392 LOADK                            R51 K99 ["ScriptFetchError"]
      393 SETTABLEKS                       R51 R50 K99 ["ScriptFetchError"]
      395 LOADK                            R51 K100 ["TooManyRequests"]
      396 SETTABLEKS                       R51 R50 K100 ["TooManyRequests"]
      398 LOADK                            R51 K101 ["StudioLeftEditMode"]
      399 SETTABLEKS                       R51 R50 K101 ["StudioLeftEditMode"]
      401 DUPCLOSURE                       R51 K103 [PROTO_0]
      402 CAPTURE                          VAL R35
      403 DUPCLOSURE                       R52 K104 [PROTO_1]
      404 DUPCLOSURE                       R53 K105 [PROTO_2]
      405 DUPCLOSURE                       R54 K106 [PROTO_4]
      406 CAPTURE                          VAL R28
      407 CAPTURE                          VAL R50
      408 DUPCLOSURE                       R55 K107 [PROTO_5]
      409 CAPTURE                          VAL R50
      410 DUPCLOSURE                       R56 K108 [PROTO_6]
      411 CAPTURE                          VAL R3
      412 DUPTABLE                         R57 K109 [{"Success", "Failed"}]
      413 LOADK                            R58 K85 ["success"]
      414 SETTABLEKS                       R58 R57 K81 ["Success"]
      416 LOADK                            R58 K87 ["failed"]
      417 SETTABLEKS                       R58 R57 K83 ["Failed"]
      419 DUPCLOSURE                       R58 K110 [PROTO_7]
      420 DUPCLOSURE                       R59 K111 [PROTO_8]
      421 CAPTURE                          VAL R5
      422 DUPCLOSURE                       R60 K112 [PROTO_10]
      423 DUPCLOSURE                       R61 K113 [PROTO_11]
      424 DUPCLOSURE                       R62 K114 [PROTO_12]
      425 CAPTURE                          VAL R16
      426 CAPTURE                          VAL R42
      427 DUPCLOSURE                       R63 K115 [PROTO_13]
      428 CAPTURE                          VAL R39
      429 CAPTURE                          VAL R3
      430 DUPCLOSURE                       R64 K116 [PROTO_14]
      431 CAPTURE                          VAL R39
      432 CAPTURE                          VAL R3
      433 DUPCLOSURE                       R65 K117 [PROTO_28]
      434 CAPTURE                          VAL R24
      435 CAPTURE                          VAL R21
      436 CAPTURE                          VAL R46
      437 CAPTURE                          VAL R33
      438 CAPTURE                          VAL R29
      439 CAPTURE                          VAL R47
      440 CAPTURE                          VAL R40
      441 DUPCLOSURE                       R66 K118 [PROTO_29]
      442 DUPCLOSURE                       R67 K119 [PROTO_30]
      443 CAPTURE                          VAL R1
      444 CAPTURE                          VAL R4
      445 CAPTURE                          VAL R39
      446 CAPTURE                          VAL R3
      447 CAPTURE                          VAL R30
      448 CAPTURE                          VAL R34
      449 CAPTURE                          VAL R43
      450 CAPTURE                          VAL R63
      451 DUPCLOSURE                       R68 K120 [PROTO_32]
      452 CAPTURE                          VAL R27
      453 CAPTURE                          VAL R3
      454 CAPTURE                          VAL R67
      455 CAPTURE                          VAL R62
      456 CAPTURE                          VAL R50
      457 CAPTURE                          VAL R31
      458 CAPTURE                          VAL R52
      459 CAPTURE                          VAL R53
      460 DUPCLOSURE                       R69 K121 [PROTO_34]
      461 CAPTURE                          VAL R3
      462 CAPTURE                          VAL R39
      463 CAPTURE                          VAL R63
      464 CAPTURE                          VAL R49
      465 CAPTURE                          VAL R31
      466 CAPTURE                          VAL R50
      467 CAPTURE                          VAL R10
      468 CAPTURE                          VAL R62
      469 CAPTURE                          VAL R52
      470 CAPTURE                          VAL R16
      471 CAPTURE                          VAL R61
      472 CAPTURE                          VAL R11
      473 CAPTURE                          VAL R38
      474 DUPCLOSURE                       R70 K122 [PROTO_35]
      475 CAPTURE                          VAL R3
      476 CAPTURE                          VAL R42
      477 DUPCLOSURE                       R71 K123 [PROTO_37]
      478 CAPTURE                          VAL R3
      479 CAPTURE                          VAL R62
      480 DUPCLOSURE                       R72 K124 [PROTO_38]
      481 CAPTURE                          VAL R49
      482 CAPTURE                          VAL R27
      483 CAPTURE                          VAL R3
      484 CAPTURE                          VAL R69
      485 CAPTURE                          VAL R47
      486 CAPTURE                          VAL R71
      487 CAPTURE                          VAL R61
      488 CAPTURE                          VAL R70
      489 DUPCLOSURE                       R73 K125 [PROTO_40]
      490 CAPTURE                          VAL R57
      491 CAPTURE                          VAL R31
      492 CAPTURE                          VAL R54
      493 CAPTURE                          VAL R50
      494 GETTABLEKS                       R74 R10 K126 ["JobStatus"]
      496 DUPCLOSURE                       R75 K127 [PROTO_41]
      497 CAPTURE                          VAL R10
      498 CAPTURE                          VAL R74
      499 CAPTURE                          VAL R43
      500 SETGLOBAL                        R75 K128 ["reportGenerationError"]
      502 DUPCLOSURE                       R75 K129 [PROTO_51]
      503 CAPTURE                          VAL R10
      504 CAPTURE                          VAL R74
      505 CAPTURE                          VAL R16
      506 CAPTURE                          VAL R72
      507 CAPTURE                          VAL R31
      508 CAPTURE                          VAL R55
      509 CAPTURE                          VAL R50
      510 CAPTURE                          VAL R49
      511 CAPTURE                          VAL R40
      512 CAPTURE                          VAL R43
      513 CAPTURE                          VAL R32
      514 CAPTURE                          VAL R11
      515 CAPTURE                          VAL R47
      516 CAPTURE                          VAL R73
      517 CAPTURE                          VAL R57
      518 CAPTURE                          VAL R29
      519 CAPTURE                          VAL R21
      520 CAPTURE                          VAL R17
      521 CAPTURE                          VAL R35
      522 CAPTURE                          VAL R33
      523 DUPCLOSURE                       R76 K130 [PROTO_54]
      524 CAPTURE                          VAL R65
      525 CAPTURE                          VAL R22
      526 CAPTURE                          VAL R6
      527 CAPTURE                          VAL R41
      528 CAPTURE                          VAL R34
      529 CAPTURE                          VAL R26
      530 CAPTURE                          VAL R36
      531 CAPTURE                          VAL R19
      532 CAPTURE                          VAL R50
      533 CAPTURE                          VAL R35
      534 CAPTURE                          VAL R28
      535 CAPTURE                          VAL R37
      536 CAPTURE                          VAL R10
      537 CAPTURE                          VAL R17
      538 CAPTURE                          VAL R5
      539 CAPTURE                          VAL R21
      540 CAPTURE                          VAL R40
      541 CAPTURE                          VAL R47
      542 CAPTURE                          VAL R68
      543 CAPTURE                          VAL R74
      544 CAPTURE                          VAL R75
      545 DUPCLOSURE                       R77 K131 [PROTO_57]
      546 CAPTURE                          VAL R65
      547 DUPCLOSURE                       R78 K132 [PROTO_58]
      548 CAPTURE                          VAL R65
      549 DUPTABLE                         R79 K135 [{"updateContentHeader", "setPreviewImage"}]
      550 SETTABLEKS                       R77 R79 K133 ["updateContentHeader"]
      552 SETTABLEKS                       R78 R79 K134 ["setPreviewImage"]
      554 DUPCLOSURE                       R80 K136 [PROTO_81]
      555 CAPTURE                          VAL R8
      556 CAPTURE                          VAL R24
      557 CAPTURE                          VAL R14
      558 CAPTURE                          VAL R21
      559 CAPTURE                          VAL R76
      560 CAPTURE                          VAL R44
      561 CAPTURE                          VAL R45
      562 CAPTURE                          VAL R22
      563 CAPTURE                          VAL R13
      564 CAPTURE                          VAL R6
      565 CAPTURE                          VAL R34
      566 CAPTURE                          VAL R12
      567 CAPTURE                          VAL R17
      568 CAPTURE                          VAL R5
      569 CAPTURE                          VAL R23
      570 CAPTURE                          VAL R25
      571 DUPTABLE                         R81 K139 [{"bridge", "setupGuest"}]
      572 SETTABLEKS                       R79 R81 K137 ["bridge"]
      574 SETTABLEKS                       R80 R81 K138 ["setupGuest"]
      576 RETURN                           R81 1
