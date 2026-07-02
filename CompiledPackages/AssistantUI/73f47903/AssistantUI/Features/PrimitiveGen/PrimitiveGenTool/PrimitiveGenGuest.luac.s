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
       33 JUMPIFNOT                        R2 ; [+10]
       34 GETUPVAL                         R2 0
       35 CALL                             R2 0 1
       36 JUMPIFNOT                        R2 ; [+5]
       37 GETIMPORT                        R2 K14 [task.spawn]
       39 NEWCLOSURE                       R3 P0
       40 CAPTURE                          VAL R1
       41 CALL                             R2 1 0
       42 LOADK                            R2 K15 ["DmIsUnreachable"]
       43 RETURN                           R2 1
       44 LOADK                            R2 K16 ["General"]
       45 RETURN                           R2 1

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
       23 JUMPIFNOT                        R2 ; [+2]
       24 LOADK                            R2 K9 ["ScriptFetchError"]
       25 RETURN                           R2 1
       26 GETIMPORT                        R2 K6 [string.find]
       28 MOVE                             R3 R1
       29 LOADK                            R4 K10 ["statuscode=429"]
       30 LOADN                            R5 1
       31 LOADB                            R6 1
       32 CALL                             R2 4 1
       33 JUMPIFNOT                        R2 ; [+2]
       34 LOADK                            R2 K11 ["TooManyRequests"]
       35 RETURN                           R2 1
       36 LOADK                            R2 K12 ["PollFailed"]
       37 RETURN                           R2 1

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
        1 GETTABLEKS                       R1 R1 K0 ["callArgs"]
        3 GETTABLEKS                       R1 R1 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["callArgs"]
       10 GETTABLEKS                       R2 R2 K2 ["uiContentId"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["getContentHooks"]
       15 MOVE                             R4 R2
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K4 ["editContent"]
       19 MOVE                             R5 R0
       20 DUPTABLE                         R6 K7 [{["skipIfNoMessage"] = True}]
       21 CALL                             R4 2 0
       22 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 SETTABLE                         R5 R0 R4
        5 FORGLOOP                         R1 2 ; [-2]
        7 RETURN                           R0 0

PROTO_17:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["callArgs"]
        5 GETTABLEKS                       R2 R2 K1 ["isThirdPartyRequest"]
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["callArgs"]
       12 GETTABLEKS                       R3 R3 K2 ["uiContentId"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K3 ["getContentHooks"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R4 K4 ["editContent"]
       21 MOVE                             R6 R1
       22 DUPTABLE                         R7 K7 [{["skipIfNoMessage"] = True}]
       23 CALL                             R5 2 0
       24 RETURN                           R0 0

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
        0 JUMPIFNOT                        R2 ; [+27]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["callArgs"]
        8 GETTABLEKS                       R4 R4 K1 ["isThirdPartyRequest"]
       10 JUMPIFNOT                        R4 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["callArgs"]
       15 GETTABLEKS                       R5 R5 K2 ["uiContentId"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K3 ["getContentHooks"]
       20 MOVE                             R7 R5
       21 CALL                             R6 1 1
       22 GETTABLEKS                       R7 R6 K4 ["editContent"]
       24 MOVE                             R8 R3
       25 DUPTABLE                         R9 K7 [{["skipIfNoMessage"] = True}]
       26 CALL                             R7 2 0
       27 RETURN                           R0 0
       28 NEWCLOSURE                       R3 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K0 ["callArgs"]
       34 GETTABLEKS                       R4 R4 K1 ["isThirdPartyRequest"]
       36 JUMPIFNOT                        R4 ; [+1]
       37 RETURN                           R0 0
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K0 ["callArgs"]
       41 GETTABLEKS                       R5 R5 K2 ["uiContentId"]
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K3 ["getContentHooks"]
       46 MOVE                             R7 R5
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R6 K4 ["editContent"]
       50 MOVE                             R8 R3
       51 DUPTABLE                         R9 K7 [{["skipIfNoMessage"] = True}]
       52 CALL                             R7 2 0
       53 RETURN                           R0 0

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
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["callArgs"]
        8 GETTABLEKS                       R4 R4 K1 ["isThirdPartyRequest"]
       10 JUMPIFNOT                        R4 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K0 ["callArgs"]
       15 GETTABLEKS                       R5 R5 K2 ["uiContentId"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K3 ["getContentHooks"]
       20 MOVE                             R7 R5
       21 CALL                             R6 1 1
       22 GETTABLEKS                       R7 R6 K4 ["editContent"]
       24 MOVE                             R8 R3
       25 DUPTABLE                         R9 K7 [{["skipIfNoMessage"] = True}]
       26 CALL                             R7 2 0
       27 RETURN                           R0 0

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
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K3 ["callArgs"]
       22 GETTABLEKS                       R3 R3 K4 ["isThirdPartyRequest"]
       24 JUMPIFNOT                        R3 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K3 ["callArgs"]
       29 GETTABLEKS                       R4 R4 K5 ["uiContentId"]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K6 ["getContentHooks"]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K7 ["editContent"]
       38 MOVE                             R7 R2
       39 DUPTABLE                         R8 K10 [{["skipIfNoMessage"] = True}]
       40 CALL                             R6 2 0
       41 RETURN                           R0 0

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
        5 JUMPIFNOT                        R1 ; [+31]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["Inserting"]
        9 JUMPIFNOTEQ                      R0 R1 ; [+27]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U3
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R2 R2 K1 ["callArgs"]
       17 GETTABLEKS                       R2 R2 K2 ["isThirdPartyRequest"]
       19 JUMPIFNOT                        R2 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K1 ["callArgs"]
       24 GETTABLEKS                       R3 R3 K3 ["uiContentId"]
       26 GETUPVAL                         R4 5
       27 GETTABLEKS                       R4 R4 K4 ["getContentHooks"]
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R4 K5 ["editContent"]
       33 MOVE                             R6 R1
       34 DUPTABLE                         R7 K8 [{["skipIfNoMessage"] = True}]
       35 CALL                             R5 2 0
       36 RETURN                           R0 0
       37 NEWCLOSURE                       R1 P1
       38 CAPTURE                          VAL R0
       39 GETUPVAL                         R2 4
       40 GETTABLEKS                       R2 R2 K1 ["callArgs"]
       42 GETTABLEKS                       R2 R2 K2 ["isThirdPartyRequest"]
       44 JUMPIFNOT                        R2 ; [+1]
       45 RETURN                           R0 0
       46 GETUPVAL                         R3 4
       47 GETTABLEKS                       R3 R3 K1 ["callArgs"]
       49 GETTABLEKS                       R3 R3 K3 ["uiContentId"]
       51 GETUPVAL                         R4 5
       52 GETTABLEKS                       R4 R4 K4 ["getContentHooks"]
       54 MOVE                             R5 R3
       55 CALL                             R4 1 1
       56 GETTABLEKS                       R5 R4 K5 ["editContent"]
       58 MOVE                             R6 R1
       59 DUPTABLE                         R7 K8 [{["skipIfNoMessage"] = True}]
       60 CALL                             R5 2 0
       61 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["initArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["RESTRICTED_externalHooks"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 NEWCLOSURE                       R4 P2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 NEWCLOSURE                       R5 P3
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 NEWCLOSURE                       R6 P4
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 NEWCLOSURE                       R7 P5
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 DUPTABLE                         R8 K8 [{"updateWidget", "replaceContent", "setPreviewState", "setPreviewImage", "setGenerationError", "setGenerationStage"}]
       29 SETTABLEKS                       R2 R8 K2 ["updateWidget"]
       31 SETTABLEKS                       R3 R8 K3 ["replaceContent"]
       33 SETTABLEKS                       R4 R8 K4 ["setPreviewState"]
       35 SETTABLEKS                       R6 R8 K5 ["setPreviewImage"]
       37 SETTABLEKS                       R5 R8 K6 ["setGenerationError"]
       39 SETTABLEKS                       R7 R8 K7 ["setGenerationStage"]
       41 RETURN                           R8 1

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
        2 JUMPIFNOT                        R3 ; [+2]
        3 DUPTABLE                         R3 K5 [{[1] = "1234567890", ["errorType"] = , ["errorMessage"] = }]
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K6 ["get"]
        8 CALL                             R3 0 1
        9 GETIMPORT                        R4 K8 [pcall]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U3
       18 CALL                             R4 1 3
       19 JUMPIF                           R4 ; [+10]
       20 LOADK                            R8 K9 ["Failed to get response from server: %*"]
       21 MOVE                             R10 R5
       22 NAMECALL                         R8 R8 K10 ["format"]
       24 CALL                             R8 2 1
       25 MOVE                             R7 R8
       26 DUPTABLE                         R8 K13 [{[1] = "", ["errorType"] = "General", ["errorMessage"]}]
       27 SETTABLEKS                       R7 R8 K4 ["errorMessage"]
       29 RETURN                           R8 1
       30 GETTABLEKS                       R7 R5 K14 ["Success"]
       32 JUMPIF                           R7 ; [+39]
       33 LOADK                            R8 K15 ["Failed to submit generation job: statusCode: %*, body: %*"]
       34 GETTABLEKS                       R10 R5 K16 ["StatusCode"]
       36 GETTABLEKS                       R11 R5 K17 ["Body"]
       38 NAMECALL                         R8 R8 K10 ["format"]
       40 CALL                             R8 3 1
       41 MOVE                             R7 R8
       42 LOADK                            R8 K12 ["General"]
       43 GETTABLEKS                       R9 R5 K16 ["StatusCode"]
       45 JUMPIFNOTEQKN                    R9 K18 [429] ; [+3]
       47 LOADK                            R8 K19 ["TooManyRequests"]
       48 JUMP                             ; [+17]
       49 GETUPVAL                         R9 4
       50 CALL                             R9 0 1
       51 JUMPIFNOT                        R9 ; [+6]
       52 GETUPVAL                         R9 5
       53 MOVE                             R10 R6
       54 CALL                             R9 1 1
       55 JUMPIFNOT                        R9 ; [+2]
       56 LOADK                            R8 K20 ["ModerationFailed"]
       57 JUMP                             ; [+8]
       58 GETUPVAL                         R9 4
       59 CALL                             R9 0 1
       60 JUMPIFNOT                        R9 ; [+5]
       61 GETUPVAL                         R9 6
       62 MOVE                             R10 R6
       63 CALL                             R9 1 1
       64 JUMPIFNOT                        R9 ; [+1]
       65 LOADK                            R8 K21 ["EmptyPrompt"]
       66 DUPTABLE                         R9 K22 [{[1] = "", ["errorType"], ["errorMessage"]}]
       67 SETTABLEKS                       R8 R9 K2 ["errorType"]
       69 SETTABLEKS                       R7 R9 K4 ["errorMessage"]
       71 RETURN                           R9 1
       72 GETTABLEKS                       R7 R6 K23 ["primitiveGenerationId"]
       74 JUMPIF                           R7 ; [+11]
       75 LOADK                            R9 K24 ["Response does not contain 'primitiveGenerationId': %*"]
       76 GETTABLEKS                       R11 R5 K17 ["Body"]
       78 NAMECALL                         R9 R9 K10 ["format"]
       80 CALL                             R9 2 1
       81 MOVE                             R8 R9
       82 DUPTABLE                         R9 K13 [{[1] = "", ["errorType"] = "General", ["errorMessage"]}]
       83 SETTABLEKS                       R8 R9 K4 ["errorMessage"]
       85 RETURN                           R9 1
       86 DUPTABLE                         R8 K25 [{[1], ["errorType"] = , ["errorMessage"] = }]
       87 SETTABLEKS                       R7 R8 K0 ["generationId"]
       89 RETURN                           R8 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K6 [{["Url"], ["Method"] = "GET", ["Headers"]}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["Url"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K5 ["Headers"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

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
       31 LOADN                            R9 300
       32 JUMPIFNOTLT                      R7 R9 ; [+250]
       34 MOVE                             R9 R1
       35 CALL                             R9 0 1
       36 JUMPIFNOT                        R9 ; [+2]
       37 DUPTABLE                         R9 K8 [{["status"] = "cancelled"}]
       38 RETURN                           R9 1
       39 GETIMPORT                        R9 K10 [pcall]
       41 NEWCLOSURE                       R10 P0
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R6
       45 CALL                             R9 1 2
       46 JUMPIF                           R9 ; [+18]
       47 DUPTABLE                         R11 K14 [{["status"] = "failed", ["errorText"], ["errorType"]}]
       48 LOADK                            R13 K15 ["Sending HTTP request failed: %*"]
       49 MOVE                             R15 R10
       50 NAMECALL                         R13 R13 K5 ["format"]
       52 CALL                             R13 2 1
       53 MOVE                             R12 R13
       54 SETTABLEKS                       R12 R11 K12 ["errorText"]
       56 GETUPVAL                         R13 3
       57 CALL                             R13 0 1
       58 JUMPIFNOT                        R13 ; [+2]
       59 LOADK                            R12 K16 ["PollFailed"]
       60 JUMP                             ; [+1]
       61 LOADK                            R12 K17 ["General"]
       62 SETTABLEKS                       R12 R11 K13 ["errorType"]
       64 RETURN                           R11 1
       65 GETTABLEKS                       R11 R10 K18 ["Success"]
       67 JUMPIF                           R11 ; [+66]
       68 GETUPVAL                         R11 4
       69 GETTABLEKS                       R11 R11 K19 ["appendLog"]
       71 MOVE                             R12 R0
       72 LOADK                            R14 K20 ["Error while polling job status:%*"]
       73 GETTABLEKS                       R16 R10 K21 ["Body"]
       75 NAMECALL                         R14 R14 K5 ["format"]
       77 CALL                             R14 2 1
       78 MOVE                             R13 R14
       79 CALL                             R11 2 0
       80 GETUPVAL                         R11 5
       81 MOVE                             R12 R10
       82 LOADK                            R14 K22 ["pollJobStatus error (statusCode=%*), jobId=%*"]
       83 GETTABLEKS                       R16 R10 K23 ["StatusCode"]
       85 MOVE                             R17 R0
       86 NAMECALL                         R14 R14 K5 ["format"]
       88 CALL                             R14 3 1
       89 MOVE                             R13 R14
       90 CALL                             R11 2 1
       91 GETUPVAL                         R13 3
       92 CALL                             R13 0 1
       93 JUMPIFNOT                        R13 ; [+2]
       94 LOADK                            R12 K16 ["PollFailed"]
       95 JUMP                             ; [+1]
       96 LOADK                            R12 K17 ["General"]
       97 LOADNIL                          R13
       98 GETUPVAL                         R14 3
       99 CALL                             R14 0 1
      100 JUMPIFNOT                        R14 ; [+13]
      101 GETUPVAL                         R14 6
      102 MOVE                             R15 R11
      103 CALL                             R14 1 1
      104 JUMPIFNOT                        R14 ; [+9]
      105 LOADK                            R12 K24 ["ModerationFailed"]
      106 LOADK                            R14 K25 ["Error while polling job status: (code 0001) id=%*"]
      107 GETTABLEKS                       R16 R11 K26 ["primitiveGenerationId"]
      109 NAMECALL                         R14 R14 K5 ["format"]
      111 CALL                             R14 2 1
      112 MOVE                             R13 R14
      113 JUMP                             ; [+14]
      114 LOADK                            R14 K27 ["Error while polling job status: status=%* message=%* id=%*"]
      115 GETTABLEKS                       R16 R10 K23 ["StatusCode"]
      117 GETUPVAL                         R17 7
      118 GETTABLEKS                       R17 R17 K28 ["toString"]
      120 MOVE                             R18 R11
      121 CALL                             R17 1 1
      122 GETTABLEKS                       R18 R11 K26 ["primitiveGenerationId"]
      124 NAMECALL                         R14 R14 K5 ["format"]
      126 CALL                             R14 4 1
      127 MOVE                             R13 R14
      128 DUPTABLE                         R14 K14 [{["status"] = "failed", ["errorText"], ["errorType"]}]
      129 SETTABLEKS                       R13 R14 K12 ["errorText"]
      131 SETTABLEKS                       R12 R14 K13 ["errorType"]
      133 RETURN                           R14 1
      134 GETUPVAL                         R11 5
      135 MOVE                             R12 R10
      136 LOADK                            R14 K29 ["pollJobStatus (statusCode=%*), jobId=%*"]
      137 GETTABLEKS                       R16 R10 K23 ["StatusCode"]
      139 MOVE                             R17 R0
      140 NAMECALL                         R14 R14 K5 ["format"]
      142 CALL                             R14 3 1
      143 MOVE                             R13 R14
      144 CALL                             R11 2 1
      145 GETTABLEKS                       R12 R11 K30 ["currentStage"]
      147 GETTABLEKS                       R14 R11 K6 ["status"]
      149 ORK                              R13 R14 K31 ["unknown"]
      150 JUMPIFNOT                        R3 ; [+5]
      151 MOVE                             R14 R3
      152 ADDK                             R15 R7 K32 [1]
      153 MOVE                             R16 R13
      154 MOVE                             R17 R12
      155 CALL                             R14 3 0
      156 JUMPIFNOT                        R2 ; [+7]
      157 JUMPIFNOT                        R12 ; [+6]
      158 JUMPIFEQ                         R12 R8 ; [+5]
      160 MOVE                             R8 R12
      161 MOVE                             R14 R2
      162 MOVE                             R15 R12
      163 CALL                             R14 1 0
      164 GETIMPORT                        R15 K35 [string.lower]
      166 MOVE                             R16 R13
      167 CALL                             R15 1 1
      168 GETIMPORT                        R16 K35 [string.lower]
      170 LOADK                            R17 K11 ["failed"]
      171 CALL                             R16 1 1
      172 JUMPIFEQ                         R15 R16 ; [+2]
      174 LOADB                            R14 0 +1
      175 LOADB                            R14 1
      176 JUMPIFNOT                        R14 ; [+12]
      177 GETUPVAL                         R14 8
      178 LOADK                            R16 K36 ["Job failed with status: %* and stage: %*, generationId=%*"]
      179 MOVE                             R18 R13
      180 GETTABLEKS                       R19 R11 K30 ["currentStage"]
      182 MOVE                             R20 R0
      183 NAMECALL                         R16 R16 K5 ["format"]
      185 CALL                             R16 4 1
      186 MOVE                             R15 R16
      187 CALL                             R14 1 -1
      188 RETURN                           R14 -1
      189 GETIMPORT                        R15 K35 [string.lower]
      191 MOVE                             R16 R13
      192 CALL                             R15 1 1
      193 GETIMPORT                        R16 K35 [string.lower]
      195 LOADK                            R17 K37 ["completed"]
      196 CALL                             R16 1 1
      197 JUMPIFEQ                         R15 R16 ; [+2]
      199 LOADB                            R14 0 +1
      200 LOADB                            R14 1
      201 JUMPIFNOT                        R14 ; [+68]
      202 GETTABLEKS                       R16 R11 K38 ["result"]
      204 FASTCALL1                        TYPE R16 ; [+2]
      205 GETIMPORT                        R15 K40 [type]
      207 CALL                             R15 1 1
      208 JUMPIFNOTEQKS                    R15 K41 ["table"] ; [+4]
      210 GETTABLEKS                       R14 R11 K38 ["result"]
      212 JUMP                             ; [+2]
      213 NEWTABLE                         R14 0 0
      215 GETUPVAL                         R15 4
      216 GETTABLEKS                       R15 R15 K19 ["appendLog"]
      218 MOVE                             R16 R0
      219 LOADK                            R18 K42 ["Polling job resultData:%*"]
      220 GETUPVAL                         R20 7
      221 GETTABLEKS                       R20 R20 K28 ["toString"]
      223 MOVE                             R21 R14
      224 CALL                             R20 1 1
      225 NAMECALL                         R18 R18 K5 ["format"]
      227 CALL                             R18 2 1
      228 MOVE                             R17 R18
      229 CALL                             R15 2 0
      230 GETTABLEKS                       R15 R14 K43 ["script"]
      232 JUMPIFNOT                        R15 ; [+2]
      233 JUMPIFNOTEQKS                    R15 K2 [""] ; [+15]
      235 GETUPVAL                         R16 8
      236 LOADK                            R18 K44 ["No script URL found in completed job response: %*, generationId=%*"]
      237 GETUPVAL                         R20 7
      238 GETTABLEKS                       R20 R20 K28 ["toString"]
      240 MOVE                             R21 R14
      241 CALL                             R20 1 1
      242 MOVE                             R21 R0
      243 NAMECALL                         R18 R18 K5 ["format"]
      245 CALL                             R18 3 1
      246 MOVE                             R17 R18
      247 CALL                             R16 1 -1
      248 RETURN                           R16 -1
      249 GETTABLEKS                       R16 R14 K45 ["dependencyVersion"]
      251 GETTABLEKS                       R17 R14 K46 ["dependencies"]
      253 GETUPVAL                         R18 9
      254 GETTABLEKS                       R18 R18 K47 ["parseScriptPreviewS3Urls"]
      256 MOVE                             R19 R14
      257 CALL                             R18 1 1
      258 DUPTABLE                         R19 K51 [{["status"] = "success", ["currentStage"], ["scriptUrl"], ["dependencyVersion"], ["dependencies"], ["scriptPreviewS3Urls"]}]
      259 SETTABLEKS                       R12 R19 K30 ["currentStage"]
      261 SETTABLEKS                       R15 R19 K49 ["scriptUrl"]
      263 SETTABLEKS                       R16 R19 K45 ["dependencyVersion"]
      265 SETTABLEKS                       R17 R19 K46 ["dependencies"]
      267 SETTABLEKS                       R18 R19 K50 ["scriptPreviewS3Urls"]
      269 RETURN                           R19 1
      270 MOVE                             R14 R1
      271 CALL                             R14 0 1
      272 JUMPIFNOT                        R14 ; [+2]
      273 DUPTABLE                         R14 K8 [{["status"] = "cancelled"}]
      274 RETURN                           R14 1
      275 ADDK                             R7 R7 K32 [1]
      276 GETIMPORT                        R14 K54 [task.wait]
      278 GETUPVAL                         R16 10
      279 CALL                             R16 0 1
      280 DIVK                             R15 R16 K55 [1000]
      281 CALL                             R14 1 0
      282 JUMPBACK                         ; [-252]
      283 DUPTABLE                         R9 K14 [{["status"] = "failed", ["errorText"], ["errorType"]}]
      284 LOADK                            R11 K56 ["Polling timed out after %* attempts, generationId=%*"]
      285 LOADN                            R13 300
      286 MOVE                             R14 R0
      287 NAMECALL                         R11 R11 K5 ["format"]
      289 CALL                             R11 3 1
      290 MOVE                             R10 R11
      291 SETTABLEKS                       R10 R9 K12 ["errorText"]
      293 GETUPVAL                         R11 3
      294 CALL                             R11 0 1
      295 JUMPIFNOT                        R11 ; [+2]
      296 LOADK                            R10 K16 ["PollFailed"]
      297 JUMP                             ; [+1]
      298 LOADK                            R10 K17 ["General"]
      299 SETTABLEKS                       R10 R9 K13 ["errorType"]
      301 RETURN                           R9 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["http"]
        6 GETTABLEKS                       R2 R2 K2 ["requestAsync"]
        8 DUPTABLE                         R3 K6 [{["Url"], ["Method"] = "GET"}]
        9 SETTABLEKS                       R0 R3 K3 ["Url"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K7 ["Success"]
       14 JUMPIF                           R3 ; [+43]
       15 GETIMPORT                        R3 K9 [pcall]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K10 ["decode"]
       20 GETTABLEKS                       R5 R2 K11 ["Body"]
       22 CALL                             R3 2 2
       23 JUMPIFNOT                        R3 ; [+19]
       24 LOADK                            R6 K12 ["Failed to fetch generated script: %* message=%*:%* id=%*"]
       25 GETTABLEKS                       R8 R2 K13 ["StatusCode"]
       27 GETTABLEKS                       R9 R4 K14 ["message"]
       29 GETTABLEKS                       R10 R4 K15 ["details"]
       31 GETTABLEKS                       R11 R4 K16 ["primitiveGenerationId"]
       33 NAMECALL                         R6 R6 K17 ["format"]
       35 CALL                             R6 5 1
       36 MOVE                             R5 R6
       37 GETIMPORT                        R6 K19 [error]
       39 MOVE                             R7 R5
       40 LOADN                            R8 0
       41 CALL                             R6 2 0
       42 JUMP                             ; [+15]
       43 LOADK                            R6 K20 ["Failed to fetch generated script: %* body=%*, scriptUrl=%*"]
       44 GETTABLEKS                       R8 R2 K13 ["StatusCode"]
       46 GETTABLEKS                       R9 R2 K11 ["Body"]
       48 MOVE                             R10 R0
       49 NAMECALL                         R6 R6 K17 ["format"]
       51 CALL                             R6 4 1
       52 MOVE                             R5 R6
       53 GETIMPORT                        R6 K19 [error]
       55 MOVE                             R7 R5
       56 LOADN                            R8 0
       57 CALL                             R6 2 0
       58 GETTABLEKS                       R3 R2 K11 ["Body"]
       60 RETURN                           R3 1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K5 [{["Url"], ["Method"] = "GET"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K6 ["scriptUrl"]
        9 SETTABLEKS                       R2 R1 K2 ["Url"]
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

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
        2 JUMPIFNOT                        R4 ; [+2]
        3 DUPTABLE                         R4 K2 [{[1] = "cancelled"}]
        4 RETURN                           R4 1
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+13]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["get"]
       11 CALL                             R4 0 1
       12 GETTABLEKS                       R4 R4 K4 ["getMockPrimGenBackendData"]
       14 CALL                             R4 0 1
       15 GETIMPORT                        R5 K6 [warn]
       17 LOADK                            R6 K7 ["pollForScriptAsync"]
       18 MOVE                             R7 R4
       19 CALL                             R5 2 0
       20 RETURN                           R4 1
       21 GETUPVAL                         R4 2
       22 MOVE                             R5 R0
       23 MOVE                             R6 R1
       24 MOVE                             R7 R2
       25 MOVE                             R8 R3
       26 CALL                             R4 4 1
       27 GETTABLEKS                       R5 R4 K0 ["status"]
       29 JUMPIFNOTEQKS                    R5 K1 ["cancelled"] ; [+3]
       31 DUPTABLE                         R5 K2 [{[1] = "cancelled"}]
       32 RETURN                           R5 1
       33 GETTABLEKS                       R5 R4 K0 ["status"]
       35 JUMPIFNOTEQKS                    R5 K8 ["failed"] ; [+2]
       37 RETURN                           R4 1
       38 GETTABLEKS                       R5 R4 K9 ["dependencies"]
       40 JUMPIFNOT                        R5 ; [+8]
       41 GETTABLEKS                       R7 R4 K9 ["dependencies"]
       43 LENGTH                           R6 R7
       44 LOADN                            R7 0
       45 JUMPIFLT                         R7 R6 ; [+2]
       47 LOADB                            R5 0 +1
       48 LOADB                            R5 1
       49 LOADNIL                          R6
       50 JUMPIFNOT                        R5 ; [+19]
       51 MOVE                             R7 R2
       52 GETUPVAL                         R8 3
       53 GETTABLEKS                       R8 R8 K10 ["ResolvingDependencies"]
       55 CALL                             R7 1 0
       56 GETTABLEKS                       R8 R4 K9 ["dependencies"]
       58 FASTCALL2K                       ASSERT R8 K11 ; [+4]
       60 LOADK                            R9 K11 ["Dependencies are required"]
       61 GETIMPORT                        R7 K13 [assert]
       63 CALL                             R7 2 0
       64 GETUPVAL                         R7 4
       65 MOVE                             R8 R0
       66 GETTABLEKS                       R9 R4 K9 ["dependencies"]
       68 CALL                             R7 2 1
       69 MOVE                             R6 R7
       70 GETTABLEKS                       R7 R4 K14 ["scriptUrl"]
       72 JUMPIF                           R7 ; [+4]
       73 GETUPVAL                         R7 5
       74 LOADK                            R8 K15 ["No script URL found in response"]
       75 CALL                             R7 1 -1
       76 RETURN                           R7 -1
       77 MOVE                             R7 R2
       78 GETUPVAL                         R8 3
       79 GETTABLEKS                       R8 R8 K16 ["DownloadingScript"]
       81 CALL                             R7 1 0
       82 GETUPVAL                         R7 6
       83 GETTABLEKS                       R8 R4 K14 ["scriptUrl"]
       85 CALL                             R7 1 1
       86 DUPTABLE                         R8 K22 [{[1] = "success", ["luauCode"], ["dependencyVersion"], ["resolvedDependencies"], ["scriptPreviewS3Urls"]}]
       87 SETTABLEKS                       R7 R8 K18 ["luauCode"]
       89 GETTABLEKS                       R9 R4 K19 ["dependencyVersion"]
       91 SETTABLEKS                       R9 R8 K19 ["dependencyVersion"]
       93 SETTABLEKS                       R6 R8 K20 ["resolvedDependencies"]
       95 GETTABLEKS                       R9 R4 K21 ["scriptPreviewS3Urls"]
       97 SETTABLEKS                       R9 R8 K21 ["scriptPreviewS3Urls"]
       99 RETURN                           R8 1

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
        7 JUMPIFNOT                        R3 ; [+10]
        8 GETTABLEKS                       R5 R4 K2 ["success"]
       10 JUMPIFNOT                        R5 ; [+7]
       11 DUPTABLE                         R5 K5 [{["status"] = "success", ["resultName"]}]
       12 GETTABLEKS                       R7 R4 K4 ["resultName"]
       14 ORK                              R6 R7 K6 ["ProceduralObject"]
       15 SETTABLEKS                       R6 R5 K4 ["resultName"]
       17 RETURN                           R5 1
       18 JUMPIFNOT                        R3 ; [+21]
       19 DUPTABLE                         R5 K10 [{["status"] = "failed", ["errorText"], ["errorType"]}]
       20 LOADK                            R7 K11 ["Failed to add workspace model: %*"]
       21 GETTABLEKS                       R9 R4 K12 ["error"]
       23 NAMECALL                         R7 R7 K13 ["format"]
       25 CALL                             R7 2 1
       26 MOVE                             R6 R7
       27 SETTABLEKS                       R6 R5 K8 ["errorText"]
       29 GETUPVAL                         R7 0
       30 CALL                             R7 0 1
       31 JUMPIFNOT                        R7 ; [+4]
       32 GETUPVAL                         R6 1
       33 MOVE                             R7 R4
       34 CALL                             R6 1 1
       35 JUMP                             ; [+1]
       36 LOADK                            R6 K14 ["General"]
       37 SETTABLEKS                       R6 R5 K9 ["errorType"]
       39 RETURN                           R5 1
       40 DUPTABLE                         R5 K10 [{["status"] = "failed", ["errorText"], ["errorType"]}]
       41 LOADK                            R7 K11 ["Failed to add workspace model: %*"]
       42 MOVE                             R9 R4
       43 NAMECALL                         R7 R7 K13 ["format"]
       45 CALL                             R7 2 1
       46 MOVE                             R6 R7
       47 SETTABLEKS                       R6 R5 K8 ["errorText"]
       49 GETUPVAL                         R7 0
       50 CALL                             R7 0 1
       51 JUMPIFNOT                        R7 ; [+4]
       52 GETUPVAL                         R6 1
       53 MOVE                             R7 R4
       54 CALL                             R6 1 1
       55 JUMP                             ; [+1]
       56 LOADK                            R6 K14 ["General"]
       57 SETTABLEKS                       R6 R5 K9 ["errorType"]
       59 RETURN                           R5 1

PROTO_41:
        0 GETTABLEKS                       R8 R5 K0 ["initArgs"]
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
       36 DUPTABLE                         R12 K15 [{["generationId"], ["success"] = False, ["errorMessage"], ["errorCode"], ["prompt"]}]
       37 SETTABLEKS                       R2 R12 K10 ["generationId"]
       39 SETTABLEKS                       R1 R12 K6 ["errorMessage"]
       41 SETTABLEKS                       R0 R12 K13 ["errorCode"]
       43 SETTABLEKS                       R3 R12 K14 ["prompt"]
       45 CALL                             R10 2 -1
       46 CALL                             R9 -1 0
       47 RETURN                           R0 0

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
       22 JUMPIFNOTEQKS                    R1 K4 ["success"] ; [+67]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["updateJobStatus"]
       27 GETUPVAL                         R2 1
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K5 ["Completed"]
       31 DUPTABLE                         R4 K8 [{"resultName", "modelFullName"}]
       32 GETTABLEKS                       R5 R0 K6 ["resultName"]
       34 SETTABLEKS                       R5 R4 K6 ["resultName"]
       36 LOADK                            R6 K9 ["Workspace.%*"]
       37 GETTABLEKS                       R8 R0 K6 ["resultName"]
       39 NAMECALL                         R6 R6 K10 ["format"]
       41 CALL                             R6 2 1
       42 MOVE                             R5 R6
       43 SETTABLEKS                       R5 R4 K7 ["modelFullName"]
       45 CALL                             R1 3 0
       46 GETUPVAL                         R1 8
       47 CALL                             R1 0 1
       48 JUMPIFNOT                        R1 ; [+12]
       49 GETUPVAL                         R1 3
       50 GETTABLEKS                       R1 R1 K11 ["updateWidget"]
       52 NEWCLOSURE                       R2 P0
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          UPVAL U10
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U11
       57 CAPTURE                          UPVAL U12
       58 CAPTURE                          UPVAL U1
       59 CALL                             R1 1 0
       60 JUMP                             ; [+8]
       61 GETUPVAL                         R1 3
       62 GETTABLEKS                       R1 R1 K11 ["updateWidget"]
       64 NEWCLOSURE                       R2 P1
       65 CAPTURE                          UPVAL U10
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U1
       68 CALL                             R1 1 0
       69 GETUPVAL                         R1 6
       70 GETTABLEKS                       R1 R1 K12 ["bridge"]
       72 GETTABLEKS                       R1 R1 K13 ["listenToLinkChanges"]
       74 DUPTABLE                         R2 K16 [{"generationId", "name"}]
       75 GETUPVAL                         R3 1
       76 SETTABLEKS                       R3 R2 K14 ["generationId"]
       78 GETTABLEKS                       R3 R0 K6 ["resultName"]
       80 SETTABLEKS                       R3 R2 K15 ["name"]
       82 CALL                             R1 1 0
       83 GETUPVAL                         R1 13
       84 GETUPVAL                         R2 14
       85 GETUPVAL                         R3 15
       86 DUPTABLE                         R4 K18 [{["success"] = True}]
       87 CALL                             R2 2 -1
       88 CALL                             R1 -1 0
       89 RETURN                           R0 0
       90 LOADK                            R2 K19 ["Execute generated code failed with error: %*, generationId=%*"]
       91 GETTABLEKS                       R4 R0 K20 ["errorText"]
       93 GETUPVAL                         R5 1
       94 NAMECALL                         R2 R2 K10 ["format"]
       96 CALL                             R2 3 1
       97 MOVE                             R1 R2
       98 GETTABLEKS                       R2 R0 K21 ["errorType"]
      100 JUMPIFNOTEQKS                    R2 K22 ["DmIsUnreachable"] ; [+43]
      102 GETTABLEKS                       R2 R0 K20 ["errorText"]
      104 MOVE                             R3 R1
      105 GETUPVAL                         R4 16
      106 CALL                             R4 0 1
      107 JUMPIFNOT                        R4 ; [+22]
      108 JUMPIFNOT                        R2 ; [+9]
      109 JUMPIFEQKS                       R2 K23 [""] ; [+8]
      111 LOADK                            R5 K24 [" Details: %*"]
      112 MOVE                             R7 R2
      113 NAMECALL                         R5 R5 K10 ["format"]
      115 CALL                             R5 2 1
      116 MOVE                             R4 R5
      117 JUMP                             ; [+1]
      118 LOADK                            R4 K23 [""]
      119 LOADK                            R9 K25 ["The Asset DataModel is not reachable right now.%* "]
      120 MOVE                             R11 R4
      121 NAMECALL                         R9 R9 K10 ["format"]
      123 CALL                             R9 2 1
      124 MOVE                             R5 R9
      125 LOADK                            R6 K26 ["It may be paused at a breakpoint, busy running another task, or unavailable because Studio is in Play/Test mode. "]
      126 LOADK                            R7 K27 ["Please stop play test if it is running, resume or clear any breakpoints, then run /run print(\"hi\") to confirm the Asset DataModel is reachable."]
      127 LOADK                            R8 K28 ["If it still fails, restart Roblox Studio and try this tool again."]
      128 CONCAT                           R1 R5 R8
      129 JUMP                             ; [+14]
      130 JUMPIFNOT                        R3 ; [+2]
      131 MOVE                             R1 R3
      132 JUMP                             ; [+11]
      133 JUMPIFNOT                        R2 ; [+9]
      134 JUMPIFEQKS                       R2 K23 [""] ; [+8]
      136 LOADK                            R4 K29 ["Asset datamodel is not reachable: %*"]
      137 MOVE                             R6 R2
      138 NAMECALL                         R4 R4 K10 ["format"]
      140 CALL                             R4 2 1
      141 MOVE                             R1 R4
      142 JUMP                             ; [+1]
      143 LOADK                            R1 K30 ["Asset datamodel is not reachable"]
      144 GETUPVAL                         R2 8
      145 CALL                             R2 0 1
      146 JUMPIFNOT                        R2 ; [+34]
      147 DUPTABLE                         R2 K34 [{"description", "onRetryText", "onRetryClick"}]
      148 GETUPVAL                         R3 11
      149 LOADK                            R5 K35 ["PrimitiveGen"]
      150 LOADK                            R6 K36 ["InsertionFailedRetryPrompt"]
      151 NAMECALL                         R3 R3 K37 ["getText"]
      153 CALL                             R3 3 1
      154 SETTABLEKS                       R3 R2 K31 ["description"]
      156 GETUPVAL                         R3 11
      157 LOADK                            R5 K35 ["PrimitiveGen"]
      158 LOADK                            R6 K38 ["RetryYes"]
      159 NAMECALL                         R3 R3 K37 ["getText"]
      161 CALL                             R3 3 1
      162 SETTABLEKS                       R3 R2 K32 ["onRetryText"]
      164 NEWCLOSURE                       R3 P2
      165 CAPTURE                          UPVAL U12
      166 SETTABLEKS                       R3 R2 K33 ["onRetryClick"]
      168 GETGLOBAL                        R3 K39 ["reportGenerationError"]
      170 GETTABLEKS                       R4 R0 K21 ["errorType"]
      172 MOVE                             R5 R1
      173 GETUPVAL                         R6 1
      174 GETUPVAL                         R7 17
      175 GETUPVAL                         R8 15
      176 GETUPVAL                         R9 6
      177 GETUPVAL                         R10 3
      178 MOVE                             R11 R2
      179 CALL                             R3 8 0
      180 RETURN                           R0 0
      181 GETGLOBAL                        R2 K39 ["reportGenerationError"]
      183 GETTABLEKS                       R3 R0 K21 ["errorType"]
      185 MOVE                             R4 R1
      186 GETUPVAL                         R5 1
      187 GETUPVAL                         R6 17
      188 GETUPVAL                         R7 15
      189 GETUPVAL                         R8 6
      190 GETUPVAL                         R9 3
      191 CALL                             R2 7 0
      192 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["initArgs"]
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
        0 GETTABLEKS                       R6 R0 K0 ["initArgs"]
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
       30 JUMPIF                           R8 ; [+22]
       31 GETGLOBAL                        R10 K8 ["reportGenerationError"]
       33 GETUPVAL                         R12 4
       34 CALL                             R12 0 1
       35 JUMPIFNOT                        R12 ; [+4]
       36 GETUPVAL                         R11 5
       37 MOVE                             R12 R9
       38 CALL                             R11 1 1
       39 JUMP                             ; [+1]
       40 LOADK                            R11 K9 ["General"]
       41 FASTCALL1                        TOSTRING R9 ; [+3]
       42 MOVE                             R13 R9
       43 GETIMPORT                        R12 K11 [tostring]
       45 CALL                             R12 1 1
       46 MOVE                             R13 R1
       47 MOVE                             R14 R2
       48 MOVE                             R15 R3
       49 MOVE                             R16 R0
       50 MOVE                             R17 R4
       51 CALL                             R10 7 0
       52 RETURN                           R0 0
       53 GETTABLEKS                       R10 R9 K12 ["status"]
       55 JUMPIFNOTEQKS                    R10 K13 ["failed"] ; [+19]
       57 GETGLOBAL                        R10 K8 ["reportGenerationError"]
       59 GETUPVAL                         R12 4
       60 CALL                             R12 0 1
       61 JUMPIFNOT                        R12 ; [+3]
       62 GETTABLEKS                       R11 R9 K14 ["errorType"]
       64 JUMP                             ; [+1]
       65 LOADK                            R11 K9 ["General"]
       66 GETTABLEKS                       R12 R9 K15 ["errorText"]
       68 MOVE                             R13 R1
       69 MOVE                             R14 R2
       70 MOVE                             R15 R3
       71 MOVE                             R16 R0
       72 MOVE                             R17 R4
       73 CALL                             R10 7 0
       74 RETURN                           R0 0
       75 GETTABLEKS                       R10 R9 K12 ["status"]
       77 JUMPIFNOTEQKS                    R10 K16 ["cancelled"] ; [+22]
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K4 ["updateJobStatus"]
       82 MOVE                             R11 R1
       83 GETUPVAL                         R12 1
       84 GETTABLEKS                       R12 R12 K17 ["Cancelled"]
       86 CALL                             R10 2 0
       87 GETTABLEKS                       R10 R4 K18 ["setPreviewState"]
       89 GETUPVAL                         R11 6
       90 GETTABLEKS                       R11 R11 K17 ["Cancelled"]
       92 CALL                             R10 1 0
       93 MOVE                             R10 R6
       94 GETUPVAL                         R11 7
       95 MOVE                             R12 R3
       96 DUPTABLE                         R13 K25 [{["success"] = False, ["errorMessage"] = "Generation cancelled by user", ["errorCode"] = "CancelByUser"}]
       97 CALL                             R11 2 -1
       98 CALL                             R10 -1 0
       99 RETURN                           R0 0
      100 GETUPVAL                         R10 8
      101 CALL                             R10 0 1
      102 JUMPIF                           R10 ; [+37]
      103 GETTABLEKS                       R10 R9 K12 ["status"]
      105 JUMPIFNOTEQKS                    R10 K19 ["success"] ; [+34]
      107 GETTABLEKS                       R10 R9 K26 ["scriptPreviewS3Urls"]
      109 JUMPIFNOT                        R10 ; [+30]
      110 GETTABLEKS                       R11 R9 K26 ["scriptPreviewS3Urls"]
      112 LENGTH                           R10 R11
      113 LOADN                            R11 0
      114 JUMPIFNOTLT                      R11 R10 ; [+25]
      116 GETTABLEKS                       R10 R9 K26 ["scriptPreviewS3Urls"]
      118 GETIMPORT                        R11 K29 [table.create]
      120 LENGTH                           R12 R10
      121 CALL                             R11 1 1
      122 LENGTH                           R14 R10
      123 LOADN                            R12 1
      124 LOADN                            R13 -1
      125 FORNPREP                         R12
      126 GETTABLE                         R17 R10 R14
      127 FASTCALL2                        TABLE_INSERT R11 R17 ; [+4]
      129 MOVE                             R16 R11
      130 GETIMPORT                        R15 K31 [table.insert]
      132 CALL                             R15 2 0
      133 FORNLOOP                         R12
      134 GETUPVAL                         R12 9
      135 GETTABLEKS                       R12 R12 K32 ["fetchPreviewImages"]
      137 MOVE                             R13 R11
      138 MOVE                             R14 R4
      139 CALL                             R12 2 0
      140 LOADNIL                          R10
      141 NEWCLOSURE                       R11 P2
      142 CAPTURE                          UPVAL U0
      143 CAPTURE                          VAL R1
      144 CAPTURE                          UPVAL U1
      145 CAPTURE                          VAL R4
      146 CAPTURE                          UPVAL U10
      147 CAPTURE                          UPVAL U11
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R9
      150 CAPTURE                          UPVAL U12
      151 CAPTURE                          UPVAL U13
      152 CAPTURE                          UPVAL U6
      153 CAPTURE                          UPVAL U14
      154 CAPTURE                          REF R10
      155 CAPTURE                          VAL R6
      156 CAPTURE                          UPVAL U7
      157 CAPTURE                          VAL R3
      158 CAPTURE                          UPVAL U15
      159 CAPTURE                          VAL R2
      160 MOVE                             R10 R11
      161 GETUPVAL                         R12 16
      162 CALL                             R12 0 1
      163 JUMPIFNOT                        R12 ; [+60]
      164 GETTABLEKS                       R12 R0 K0 ["initArgs"]
      166 GETTABLEKS                       R12 R12 K1 ["environment"]
      168 GETTABLEKS                       R12 R12 K33 ["getStudioPlayState"]
      170 CALL                             R12 0 1
      171 JUMPIFNOT                        R12 ; [+52]
      172 GETUPVAL                         R13 0
      173 GETTABLEKS                       R13 R13 K4 ["updateJobStatus"]
      175 MOVE                             R14 R1
      176 GETUPVAL                         R15 1
      177 GETTABLEKS                       R15 R15 K17 ["Cancelled"]
      179 CALL                             R13 2 0
      180 LOADNIL                          R13
      181 DUPTABLE                         R14 K38 [{["description"], ["onRetryText"], ["onRetryClick"], ["isRunning"] = False}]
      182 GETUPVAL                         R15 14
      183 LOADK                            R17 K39 ["PrimitiveGen"]
      184 LOADK                            R18 K40 ["GenerationCancelledPlayModeRetryPrompt"]
      185 NAMECALL                         R15 R15 K41 ["getText"]
      187 CALL                             R15 3 1
      188 SETTABLEKS                       R15 R14 K34 ["description"]
      190 GETUPVAL                         R15 14
      191 LOADK                            R17 K39 ["PrimitiveGen"]
      192 LOADK                            R18 K42 ["RetryYes"]
      193 NAMECALL                         R15 R15 K41 ["getText"]
      195 CALL                             R15 3 1
      196 SETTABLEKS                       R15 R14 K35 ["onRetryText"]
      198 NEWCLOSURE                       R15 P3
      199 CAPTURE                          VAL R0
      200 CAPTURE                          REF R13
      201 CAPTURE                          VAL R4
      202 CAPTURE                          UPVAL U6
      203 CAPTURE                          REF R10
      204 SETTABLEKS                       R15 R14 K36 ["onRetryClick"]
      206 MOVE                             R13 R14
      207 GETTABLEKS                       R14 R4 K18 ["setPreviewState"]
      209 GETUPVAL                         R15 6
      210 GETTABLEKS                       R15 R15 K17 ["Cancelled"]
      212 LOADK                            R16 K43 [""]
      213 MOVE                             R17 R13
      214 CALL                             R14 3 0
      215 MOVE                             R14 R6
      216 GETUPVAL                         R15 7
      217 MOVE                             R16 R3
      218 DUPTABLE                         R17 K46 [{["success"] = False, ["errorMessage"] = "Generation cancelled (Studio left edit mode)", ["errorCode"] = "StudioLeftEditMode"}]
      219 CALL                             R15 2 -1
      220 CALL                             R14 -1 0
      221 CLOSEUPVALS                      R10
      222 RETURN                           R0 0
      223 CLOSEUPVALS                      R13
      224 MOVE                             R12 R10
      225 CALL                             R12 0 0
      226 CLOSEUPVALS                      R10
      227 RETURN                           R0 0

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
       65 GETUPVAL                         R6 5
       66 CALL                             R6 0 1
       67 LOADB                            R7 0
       68 FASTCALL1                        TYPEOF R4 ; [+3]
       69 MOVE                             R9 R4
       70 GETIMPORT                        R8 K16 [typeof]
       72 CALL                             R8 1 1
       73 JUMPIFNOTEQKS                    R8 K17 ["string"] ; [+7]
       75 LENGTH                           R8 R4
       76 LOADN                            R9 0
       77 JUMPIFLT                         R9 R8 ; [+2]
       79 LOADB                            R7 0 +1
       80 LOADB                            R7 1
       81 LOADB                            R8 1
       82 GETTABLEKS                       R9 R1 K18 ["attachedImageUri"]
       84 JUMPIFNOTEQKNIL                  R9 ; [+7]
       86 GETTABLEKS                       R9 R1 K19 ["hintImage"]
       88 JUMPIFNOTEQKNIL                  R9 ; [+2]
       90 LOADB                            R8 0 +1
       91 LOADB                            R8 1
       92 DUPTABLE                         R9 K28 [{"requestId", "conversationId", "toolId", "prompt", "hasImage", "modelFlow", "inputFormat", "segmentationEnabled", "finalParts"}]
       93 GETTABLEKS                       R11 R0 K29 ["callArgs"]
       95 GETTABLEKS                       R11 R11 K30 ["messageGuid"]
       97 ORK                              R10 R11 K0 [""]
       98 SETTABLEKS                       R10 R9 K20 ["requestId"]
      100 GETTABLEKS                       R11 R0 K29 ["callArgs"]
      102 GETTABLEKS                       R11 R11 K31 ["sessionId"]
      104 ORK                              R10 R11 K0 [""]
      105 SETTABLEKS                       R10 R9 K21 ["conversationId"]
      107 GETTABLEKS                       R10 R0 K29 ["callArgs"]
      109 GETTABLEKS                       R10 R10 K22 ["toolId"]
      111 SETTABLEKS                       R10 R9 K22 ["toolId"]
      113 SETTABLEKS                       R4 R9 K1 ["prompt"]
      115 SETTABLEKS                       R8 R9 K23 ["hasImage"]
      117 JUMPIFNOT                        R6 ; [+2]
      118 LOADK                            R10 K32 ["procedural"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R10
      121 SETTABLEKS                       R10 R9 K24 ["modelFlow"]
      123 JUMPIF                           R6 ; [+2]
      124 LOADNIL                          R10
      125 JUMP                             ; [+8]
      126 JUMPIFNOT                        R7 ; [+3]
      127 JUMPIFNOT                        R8 ; [+2]
      128 LOADK                            R10 K33 ["text+image"]
      129 JUMP                             ; [+4]
      130 JUMPIFNOT                        R8 ; [+2]
      131 LOADK                            R10 K34 ["image"]
      132 JUMP                             ; [+1]
      133 LOADK                            R10 K35 ["text"]
      134 SETTABLEKS                       R10 R9 K25 ["inputFormat"]
      136 JUMPIFNOT                        R6 ; [+10]
      137 LOADB                            R10 0
      138 JUMPIFEQKNIL                     R5 ; [+9]
      140 LENGTH                           R11 R5
      141 LOADN                            R12 0
      142 JUMPIFLT                         R12 R11 ; [+2]
      144 LOADB                            R10 0 +1
      145 LOADB                            R10 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R10
      148 SETTABLEKS                       R10 R9 K26 ["segmentationEnabled"]
      150 JUMPIFNOT                        R6 ; [+2]
      151 MOVE                             R10 R5
      152 JUMP                             ; [+1]
      153 LOADNIL                          R10
      154 SETTABLEKS                       R10 R9 K27 ["finalParts"]
      156 GETUPVAL                         R10 6
      157 CALL                             R10 0 1
      158 JUMPIFNOT                        R10 ; [+32]
      159 GETUPVAL                         R10 7
      160 CALL                             R10 0 1
      161 JUMPIFNOT                        R10 ; [+29]
      162 GETUPVAL                         R10 8
      163 GETTABLEKS                       R10 R10 K36 ["getVersionMismatch"]
      165 CALL                             R10 0 1
      166 JUMPIFNOT                        R10 ; [+24]
      167 GETGLOBAL                        R10 K37 ["reportGenerationError"]
      169 LOADK                            R11 K38 ["PluginVersionMismatch"]
      170 LOADK                            R12 K39 ["The Assistant plugin just got new patch, please restart RobloxStudio."]
      171 LOADNIL                          R13
      172 MOVE                             R14 R4
      173 MOVE                             R15 R9
      174 MOVE                             R16 R0
      175 MOVE                             R17 R3
      176 CALL                             R10 7 0
      177 GETUPVAL                         R10 3
      178 CALL                             R10 0 1
      179 LOADK                            R12 K39 ["The Assistant plugin just got new patch, please restart RobloxStudio."]
      180 NAMECALL                         R10 R10 K11 ["addText"]
      182 CALL                             R10 2 1
      183 LOADB                            R12 1
      184 NAMECALL                         R10 R10 K12 ["setError"]
      186 CALL                             R10 2 1
      187 NAMECALL                         R10 R10 K13 ["build"]
      189 CALL                             R10 1 -1
      190 RETURN                           R10 -1
      191 GETUPVAL                         R10 7
      192 CALL                             R10 0 1
      193 JUMPIFNOT                        R10 ; [+87]
      194 GETIMPORT                        R10 K7 [pcall]
      196 NEWCLOSURE                       R11 P0
      197 CAPTURE                          VAL R0
      198 CALL                             R10 1 2
      199 JUMPIFNOT                        R10 ; [+3]
      200 GETTABLEKS                       R12 R11 K40 ["success"]
      202 JUMPIF                           R12 ; [+78]
      203 JUMPIFNOT                        R10 ; [+4]
      204 GETTABLEKS                       R13 R11 K42 ["error"]
      206 ORK                              R12 R13 K41 ["Unknown error"]
      207 JUMP                             ; [+5]
      208 FASTCALL1                        TOSTRING R11 ; [+3]
      209 MOVE                             R13 R11
      210 GETIMPORT                        R12 K10 [tostring]
      212 CALL                             R12 1 1
      213 GETUPVAL                         R14 9
      214 CALL                             R14 0 1
      215 JUMPIFNOT                        R14 ; [+22]
      216 JUMPIFNOT                        R12 ; [+9]
      217 JUMPIFEQKS                       R12 K0 [""] ; [+8]
      219 LOADK                            R15 K43 [" Details: %*"]
      220 MOVE                             R17 R12
      221 NAMECALL                         R15 R15 K44 ["format"]
      223 CALL                             R15 2 1
      224 MOVE                             R14 R15
      225 JUMP                             ; [+1]
      226 LOADK                            R14 K0 [""]
      227 LOADK                            R19 K45 ["The Asset DataModel is not reachable right now.%* "]
      228 MOVE                             R21 R14
      229 NAMECALL                         R19 R19 K44 ["format"]
      231 CALL                             R19 2 1
      232 MOVE                             R15 R19
      233 LOADK                            R16 K46 ["It may be paused at a breakpoint, busy running another task, or unavailable because Studio is in Play/Test mode. "]
      234 LOADK                            R17 K47 ["Please stop play test if it is running, resume or clear any breakpoints, then run /run print(\"hi\") to confirm the Asset DataModel is reachable."]
      235 LOADK                            R18 K48 ["If it still fails, restart Roblox Studio and try this tool again."]
      236 CONCAT                           R13 R15 R18
      237 JUMP                             ; [+11]
      238 JUMPIFNOT                        R12 ; [+9]
      239 JUMPIFEQKS                       R12 K0 [""] ; [+8]
      241 LOADK                            R14 K49 ["Asset datamodel is not reachable: %*"]
      242 MOVE                             R16 R12
      243 NAMECALL                         R14 R14 K44 ["format"]
      245 CALL                             R14 2 1
      246 MOVE                             R13 R14
      247 JUMP                             ; [+1]
      248 LOADK                            R13 K50 ["Asset datamodel is not reachable"]
      249 GETUPVAL                         R14 10
      250 CALL                             R14 0 1
      251 JUMPIFNOT                        R14 ; [+5]
      252 GETIMPORT                        R14 K53 [task.spawn]
      254 NEWCLOSURE                       R15 P1
      255 CAPTURE                          VAL R13
      256 CALL                             R14 1 0
      257 GETGLOBAL                        R14 K37 ["reportGenerationError"]
      259 LOADK                            R15 K54 ["DmHealthChecking"]
      260 MOVE                             R16 R13
      261 LOADNIL                          R17
      262 MOVE                             R18 R4
      263 MOVE                             R19 R9
      264 MOVE                             R20 R0
      265 MOVE                             R21 R3
      266 CALL                             R14 7 0
      267 GETUPVAL                         R14 3
      268 CALL                             R14 0 1
      269 MOVE                             R16 R13
      270 NAMECALL                         R14 R14 K11 ["addText"]
      272 CALL                             R14 2 1
      273 LOADB                            R16 1
      274 NAMECALL                         R14 R14 K12 ["setError"]
      276 CALL                             R14 2 1
      277 NAMECALL                         R14 R14 K13 ["build"]
      279 CALL                             R14 1 -1
      280 RETURN                           R14 -1
      281 GETUPVAL                         R10 11
      282 CALL                             R10 0 1
      283 GETUPVAL                         R11 12
      284 GETTABLEKS                       R11 R11 K55 ["getActiveJobCount"]
      286 CALL                             R11 0 1
      287 JUMPIFNOTLE                      R10 R11 ; [+46]
      289 GETUPVAL                         R12 13
      290 LOADK                            R14 K56 ["PrimitiveGen"]
      291 LOADK                            R15 K57 ["MaxConcurrentJobsError"]
      292 DUPTABLE                         R16 K60 [{"activeCount", "maxConcurrentJobs"}]
      293 GETIMPORT                        R17 K61 [string.format]
      295 LOADK                            R18 K62 ["%d"]
      296 MOVE                             R19 R11
      297 CALL                             R17 2 1
      298 SETTABLEKS                       R17 R16 K58 ["activeCount"]
      300 GETIMPORT                        R17 K61 [string.format]
      302 LOADK                            R18 K62 ["%d"]
      303 MOVE                             R19 R10
      304 CALL                             R17 2 1
      305 SETTABLEKS                       R17 R16 K59 ["maxConcurrentJobs"]
      307 NAMECALL                         R12 R12 K63 ["getText"]
      309 CALL                             R12 4 1
      310 GETGLOBAL                        R13 K37 ["reportGenerationError"]
      312 LOADK                            R14 K64 ["TooManyConcurrentJobs"]
      313 MOVE                             R15 R12
      314 LOADNIL                          R16
      315 MOVE                             R17 R4
      316 MOVE                             R18 R9
      317 MOVE                             R19 R0
      318 MOVE                             R20 R3
      319 CALL                             R13 7 0
      320 GETUPVAL                         R13 3
      321 CALL                             R13 0 1
      322 MOVE                             R15 R12
      323 NAMECALL                         R13 R13 K11 ["addText"]
      325 CALL                             R13 2 1
      326 LOADB                            R15 1
      327 NAMECALL                         R13 R13 K12 ["setError"]
      329 CALL                             R13 2 1
      330 NAMECALL                         R13 R13 K13 ["build"]
      332 CALL                             R13 1 -1
      333 RETURN                           R13 -1
      334 GETTABLEKS                       R12 R1 K19 ["hintImage"]
      336 JUMPIF                           R12 ; [+11]
      337 GETTABLEKS                       R13 R1 K18 ["attachedImageUri"]
      339 JUMPIF                           R13 ; [+2]
      340 LOADNIL                          R12
      341 JUMP                             ; [+6]
      342 GETUPVAL                         R14 14
      343 GETTABLEKS                       R14 R14 K65 ["getImage"]
      345 MOVE                             R15 R13
      346 CALL                             R14 1 1
      347 MOVE                             R12 R14
      348 DUPTABLE                         R13 K81 [{["type"], ["mode"], ["expanded"] = False, ["name"], ["displayName"], ["className"] = , ["previewImages"] = , ["previewState"], ["generationStage"], ["startTime"], ["onChipClicked"] = , ["retryInfo"] = , ["generationId"] = ""}]
      349 GETUPVAL                         R14 15
      350 GETTABLEKS                       R14 R14 K82 ["Type"]
      352 SETTABLEKS                       R14 R13 K66 ["type"]
      354 GETUPVAL                         R14 15
      355 GETTABLEKS                       R14 R14 K83 ["Modes"]
      357 GETTABLEKS                       R14 R14 K84 ["ShowPreview"]
      359 SETTABLEKS                       R14 R13 K67 ["mode"]
      361 SETTABLEKS                       R4 R13 K70 ["name"]
      363 LENGTH                           R15 R4
      364 LOADN                            R16 0
      365 JUMPIFNOTLT                      R16 R15 ; [+3]
      367 MOVE                             R14 R4
      368 JUMP                             ; [+6]
      369 GETUPVAL                         R14 13
      370 LOADK                            R16 K56 ["PrimitiveGen"]
      371 LOADK                            R17 K85 ["DefaultDisplayName"]
      372 NAMECALL                         R14 R14 K63 ["getText"]
      374 CALL                             R14 3 1
      375 SETTABLEKS                       R14 R13 K71 ["displayName"]
      377 GETUPVAL                         R14 16
      378 GETTABLEKS                       R14 R14 K86 ["Generating"]
      380 SETTABLEKS                       R14 R13 K75 ["previewState"]
      382 GETUPVAL                         R14 17
      383 GETTABLEKS                       R14 R14 K87 ["Submitting"]
      385 SETTABLEKS                       R14 R13 K76 ["generationStage"]
      387 GETIMPORT                        R14 K90 [os.clock]
      389 CALL                             R14 0 1
      390 SETTABLEKS                       R14 R13 K77 ["startTime"]
      392 GETTABLEKS                       R14 R3 K91 ["replaceContent"]
      394 MOVE                             R15 R13
      395 CALL                             R14 1 0
      396 LOADK                            R14 K0 [""]
      397 GETUPVAL                         R15 18
      398 MOVE                             R16 R4
      399 MOVE                             R17 R12
      400 MOVE                             R18 R5
      401 CALL                             R15 3 1
      402 GETTABLEKS                       R16 R15 K80 ["generationId"]
      404 JUMPIFNOTEQKS                    R16 K0 [""] ; [+31]
      406 GETTABLEKS                       R17 R15 K93 ["errorType"]
      408 ORK                              R16 R17 K92 ["General"]
      409 GETTABLEKS                       R18 R15 K94 ["errorMessage"]
      411 ORK                              R17 R18 K41 ["Unknown error"]
      412 GETGLOBAL                        R18 K37 ["reportGenerationError"]
      414 MOVE                             R19 R16
      415 MOVE                             R20 R17
      416 LOADNIL                          R21
      417 MOVE                             R22 R4
      418 MOVE                             R23 R9
      419 MOVE                             R24 R0
      420 MOVE                             R25 R3
      421 CALL                             R18 7 0
      422 GETUPVAL                         R18 3
      423 CALL                             R18 0 1
      424 MOVE                             R20 R17
      425 NAMECALL                         R18 R18 K11 ["addText"]
      427 CALL                             R18 2 1
      428 LOADB                            R20 1
      429 NAMECALL                         R18 R18 K12 ["setError"]
      431 CALL                             R18 2 1
      432 NAMECALL                         R18 R18 K13 ["build"]
      434 CALL                             R18 1 -1
      435 RETURN                           R18 -1
      436 GETTABLEKS                       R14 R15 K80 ["generationId"]
      438 SETTABLEKS                       R14 R9 K80 ["generationId"]
      440 GETUPVAL                         R16 12
      441 GETTABLEKS                       R16 R16 K95 ["setJob"]
      443 MOVE                             R17 R14
      444 DUPTABLE                         R18 K99 [{"generationId", "status", "prompt", "imageUri", "logs"}]
      445 SETTABLEKS                       R14 R18 K80 ["generationId"]
      447 GETUPVAL                         R19 19
      448 GETTABLEKS                       R19 R19 K100 ["Submitted"]
      450 SETTABLEKS                       R19 R18 K96 ["status"]
      452 SETTABLEKS                       R4 R18 K1 ["prompt"]
      454 GETTABLEKS                       R19 R1 K18 ["attachedImageUri"]
      456 JUMPIF                           R19 ; [+7]
      457 MOVE                             R19 R12
      458 JUMPIFNOT                        R19 ; [+5]
      459 GETUPVAL                         R19 14
      460 GETTABLEKS                       R19 R19 K101 ["storeImage"]
      462 MOVE                             R20 R12
      463 CALL                             R19 1 1
      464 SETTABLEKS                       R19 R18 K97 ["imageUri"]
      466 NEWTABLE                         R19 0 0
      468 SETTABLEKS                       R19 R18 K98 ["logs"]
      470 CALL                             R16 2 0
      471 GETUPVAL                         R16 12
      472 GETTABLEKS                       R16 R16 K102 ["appendLog"]
      474 MOVE                             R17 R14
      475 LOADK                            R19 K103 ["Job submitted with prompt: \"%*\", image: \"%*\", imageMimeType: \"%*\""]
      476 MOVE                             R21 R4
      477 JUMPIFNOT                        R12 ; [+3]
      478 GETTABLEKS                       R22 R12 K104 ["data"]
      480 JUMPIF                           R22 ; [+1]
      481 LOADK                            R22 K105 ["nil"]
      482 JUMPIFNOT                        R12 ; [+3]
      483 GETTABLEKS                       R23 R12 K106 ["mimeType"]
      485 JUMPIF                           R23 ; [+1]
      486 LOADK                            R23 K105 ["nil"]
      487 NAMECALL                         R19 R19 K44 ["format"]
      489 CALL                             R19 4 1
      490 MOVE                             R18 R19
      491 CALL                             R16 2 0
      492 GETIMPORT                        R16 K53 [task.spawn]
      494 GETUPVAL                         R17 20
      495 MOVE                             R18 R0
      496 MOVE                             R19 R14
      497 MOVE                             R20 R4
      498 MOVE                             R21 R9
      499 MOVE                             R22 R3
      500 MOVE                             R23 R2
      501 CALL                             R16 7 0
      502 GETUPVAL                         R16 3
      503 CALL                             R16 0 1
      504 LOADK                            R19 K107 ["Generation job submitted successfully. Generation ID: %*"]
      505 MOVE                             R21 R14
      506 NAMECALL                         R19 R19 K44 ["format"]
      508 CALL                             R19 2 1
      509 MOVE                             R18 R19
      510 NAMECALL                         R16 R16 K11 ["addText"]
      512 CALL                             R16 2 1
      513 NAMECALL                         R16 R16 K13 ["build"]
      515 CALL                             R16 1 -1
      516 RETURN                           R16 -1

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
       23 DUPTABLE                         R1 K8 [{["rawTransformValues"] = True}]
       24 RETURN                           R1 1

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
        0 GETTABLEKS                       R2 R1 K0 ["initArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["environment"]
        4 GETTABLEKS                       R3 R2 K2 ["EventLogger"]
        6 GETTABLEKS                       R3 R3 K3 ["logGen3DInstanceDeleted"]
        8 DUPTABLE                         R4 K8 [{["generationId"], ["modelFlow"] = "procedural", ["secondsSinceInsertion"]}]
        9 GETTABLEKS                       R5 R0 K4 ["generationId"]
       11 SETTABLEKS                       R5 R4 K4 ["generationId"]
       13 GETTABLEKS                       R5 R0 K7 ["secondsSinceInsertion"]
       15 SETTABLEKS                       R5 R4 K7 ["secondsSinceInsertion"]
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createGuestContext"]
        3 LOADNIL                          R3
        4 DUPTABLE                         R4 K9 [{["uiMessageId"] = , ["uiContentId"], ["messageGuid"] = , ["sessionId"] = , ["toolId"] = , ["isThirdPartyRequest"] = False}]
        5 SETTABLEKS                       R0 R4 K3 ["uiContentId"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R2 K10 ["bridge"]
       10 GETTABLEKS                       R3 R3 K11 ["listenToLinkChanges"]
       12 DUPTABLE                         R4 K14 [{"generationId", "name"}]
       13 GETTABLEKS                       R5 R1 K12 ["generationId"]
       15 SETTABLEKS                       R5 R4 K12 ["generationId"]
       17 GETTABLEKS                       R5 R1 K15 ["displayName"]
       19 SETTABLEKS                       R5 R4 K13 ["name"]
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createGuestContext"]
        3 LOADNIL                          R4
        4 DUPTABLE                         R5 K7 [{"uiMessageId", "uiContentId", "messageGuid", "sessionId", "toolId", "isThirdPartyRequest"}]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R6 R1 K8 ["messageId"]
        8 JUMPIF                           R6 ; [+1]
        9 LOADK                            R6 K9 [""]
       10 SETTABLEKS                       R6 R5 K1 ["uiMessageId"]
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R6 R1 K10 ["contentId"]
       15 JUMPIF                           R6 ; [+1]
       16 LOADK                            R6 K9 [""]
       17 SETTABLEKS                       R6 R5 K2 ["uiContentId"]
       19 JUMPIFNOT                        R1 ; [+3]
       20 GETTABLEKS                       R6 R1 K3 ["messageGuid"]
       22 JUMPIF                           R6 ; [+1]
       23 LOADK                            R6 K9 [""]
       24 SETTABLEKS                       R6 R5 K3 ["messageGuid"]
       26 JUMPIFNOT                        R1 ; [+3]
       27 GETTABLEKS                       R6 R1 K4 ["sessionId"]
       29 JUMPIF                           R6 ; [+1]
       30 LOADK                            R6 K9 [""]
       31 SETTABLEKS                       R6 R5 K4 ["sessionId"]
       33 JUMPIFNOT                        R1 ; [+3]
       34 GETTABLEKS                       R6 R1 K5 ["toolId"]
       36 JUMPIF                           R6 ; [+1]
       37 LOADNIL                          R6
       38 SETTABLEKS                       R6 R5 K5 ["toolId"]
       40 JUMPIFNOT                        R1 ; [+3]
       41 GETTABLEKS                       R6 R1 K6 ["isThirdPartyRequest"]
       43 JUMPIF                           R6 ; [+1]
       44 LOADB                            R6 0
       45 SETTABLEKS                       R6 R5 K6 ["isThirdPartyRequest"]
       47 CALL                             R3 2 1
       48 GETUPVAL                         R4 1
       49 MOVE                             R5 R3
       50 MOVE                             R6 R0
       51 MOVE                             R7 R2
       52 CALL                             R4 3 -1
       53 RETURN                           R4 -1

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
        0 DUPTABLE                         R0 K2 [{[1] = }]
        1 DUPTABLE                         R1 K2 [{[1] = }]
        2 NEWTABLE                         R2 0 0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R0
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          REF R2
       13 DUPTABLE                         R5 K7 [{"setterRef", "loadingSetterRef", "spawnSuggestion", "cancelSuggestion"}]
       14 SETTABLEKS                       R0 R5 K3 ["setterRef"]
       16 SETTABLEKS                       R1 R5 K4 ["loadingSetterRef"]
       18 SETTABLEKS                       R3 R5 K5 ["spawnSuggestion"]
       20 SETTABLEKS                       R4 R5 K6 ["cancelSuggestion"]
       22 CLOSEUPVALS                      R2
       23 RETURN                           R5 1

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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+33]
        3 GETUPVAL                         R2 1
        4 LENGTH                           R1 R2
        5 LOADN                            R2 0
        6 JUMPIFLT                         R2 R1 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 GETUPVAL                         R2 2
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 JUMPIFNOT                        R0 ; [+3]
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADK                            R2 K0 ["text+image"]
       18 JUMP                             ; [+4]
       19 JUMPIFNOT                        R1 ; [+2]
       20 LOADK                            R2 K1 ["image"]
       21 JUMP                             ; [+1]
       22 LOADK                            R2 K2 ["text"]
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K3 ["initArgs"]
       26 GETTABLEKS                       R3 R3 K4 ["environment"]
       28 GETTABLEKS                       R3 R3 K5 ["EventLogger"]
       30 GETTABLEKS                       R3 R3 K6 ["logGen3DSegmentationRefresh"]
       32 DUPTABLE                         R4 K10 [{["modelFlow"] = "procedural", ["inputFormat"]}]
       33 SETTABLEKS                       R2 R4 K9 ["inputFormat"]
       35 CALL                             R3 1 0
       36 GETUPVAL                         R0 4
       37 GETTABLEKS                       R0 R0 K11 ["spawnSuggestion"]
       39 CALL                             R0 0 0
       40 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R0 K0 ["createGuestContext"]
        3 LOADNIL                          R1
        4 DUPTABLE                         R2 K9 [{["uiMessageId"] = , ["uiContentId"] = , ["messageGuid"] = , ["sessionId"] = , ["toolId"] = , ["isThirdPartyRequest"] = False}]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 GETTABLEKS                       R2 R1 K10 ["spawnSuggestion"]
       10 CALL                             R2 0 0
       11 NEWTABLE                         R2 0 0
       13 MOVE                             R4 R2
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K11 ["createStringRowDefinition"]
       17 DUPTABLE                         R6 K19 [{["label"], ["prop"] = "prompt", ["initialValue"], ["multiLine"] = True, ["onChanged"]}]
       18 GETUPVAL                         R7 3
       19 LOADK                            R9 K20 ["MeshGen"]
       20 LOADK                            R10 K21 ["InputPromptTitle"]
       21 NAMECALL                         R7 R7 K22 ["getText"]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R6 K12 ["label"]
       26 GETUPVAL                         R7 4
       27 SETTABLEKS                       R7 R6 K15 ["initialValue"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R7 R6 K18 ["onChanged"]
       34 CALL                             R5 1 -1
       35 FASTCALL                         TABLE_INSERT ; [+2]
       36 GETIMPORT                        R3 K25 [table.insert]
       38 CALL                             R3 -1 0
       39 MOVE                             R4 R2
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R5 R5 K26 ["createHintImageRowDefinition"]
       43 DUPTABLE                         R6 K28 [{["label"], ["prop"] = "hintImage", ["initialValue"], ["onChanged"]}]
       44 GETUPVAL                         R7 3
       45 LOADK                            R9 K20 ["MeshGen"]
       46 LOADK                            R10 K29 ["InputHintImageTitle"]
       47 NAMECALL                         R7 R7 K22 ["getText"]
       49 CALL                             R7 3 1
       50 SETTABLEKS                       R7 R6 K12 ["label"]
       52 GETUPVAL                         R8 5
       53 JUMPIFNOT                        R8 ; [+6]
       54 GETUPVAL                         R7 6
       55 GETTABLEKS                       R7 R7 K30 ["getImage"]
       57 GETUPVAL                         R8 5
       58 CALL                             R7 1 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R7
       61 SETTABLEKS                       R7 R6 K15 ["initialValue"]
       63 NEWCLOSURE                       R7 P1
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          UPVAL U6
       66 SETTABLEKS                       R7 R6 K18 ["onChanged"]
       68 CALL                             R5 1 -1
       69 FASTCALL                         TABLE_INSERT ; [+2]
       70 GETIMPORT                        R3 K25 [table.insert]
       72 CALL                             R3 -1 0
       73 MOVE                             R4 R2
       74 GETUPVAL                         R5 2
       75 GETTABLEKS                       R5 R5 K31 ["createPartNamesRowDefinition"]
       77 DUPTABLE                         R6 K40 [{["label"], ["prop"] = "partNames", ["initialValue"] = , ["isLoading"], ["registerSetValue"], ["registerSetIsLoading"], ["onCancelPressed"], ["onSuggestPressed"], ["infoPopoverNamespace"] = "PrimGenSegmentation"}]
       78 GETUPVAL                         R7 3
       79 LOADK                            R9 K41 ["PrimitiveGen"]
       80 LOADK                            R10 K42 ["InputPartNamesTitle"]
       81 NAMECALL                         R7 R7 K22 ["getText"]
       83 CALL                             R7 3 1
       84 SETTABLEKS                       R7 R6 K12 ["label"]
       86 GETUPVAL                         R7 7
       87 JUMPIFNOT                        R7 ; [+7]
       88 GETUPVAL                         R9 4
       89 LENGTH                           R8 R9
       90 LOADN                            R9 0
       91 JUMPIFLT                         R9 R8 ; [+2]
       93 LOADB                            R7 0 +1
       94 LOADB                            R7 1
       95 SETTABLEKS                       R7 R6 K33 ["isLoading"]
       97 NEWCLOSURE                       R7 P2
       98 CAPTURE                          VAL R1
       99 SETTABLEKS                       R7 R6 K34 ["registerSetValue"]
      101 NEWCLOSURE                       R7 P3
      102 CAPTURE                          VAL R1
      103 SETTABLEKS                       R7 R6 K35 ["registerSetIsLoading"]
      105 NEWCLOSURE                       R7 P4
      106 CAPTURE                          VAL R1
      107 SETTABLEKS                       R7 R6 K36 ["onCancelPressed"]
      109 NEWCLOSURE                       R7 P5
      110 CAPTURE                          VAL R1
      111 SETTABLEKS                       R7 R6 K37 ["onSuggestPressed"]
      113 CALL                             R5 1 -1
      114 FASTCALL                         TABLE_INSERT ; [+2]
      115 GETIMPORT                        R3 K25 [table.insert]
      117 CALL                             R3 -1 0
      118 MOVE                             R4 R2
      119 GETUPVAL                         R5 2
      120 GETTABLEKS                       R5 R5 K43 ["createSuggestSegmentationRowDefinition"]
      122 DUPTABLE                         R6 K48 [{["label"], ["prop"] = "suggestSegmentation", ["initialChecked"], ["onCheckedChanged"], ["onRefreshPressed"]}]
      123 GETUPVAL                         R7 3
      124 LOADK                            R9 K20 ["MeshGen"]
      125 LOADK                            R10 K42 ["InputPartNamesTitle"]
      126 NAMECALL                         R7 R7 K22 ["getText"]
      128 CALL                             R7 3 1
      129 SETTABLEKS                       R7 R6 K12 ["label"]
      131 GETUPVAL                         R7 7
      132 SETTABLEKS                       R7 R6 K45 ["initialChecked"]
      134 NEWCLOSURE                       R7 P6
      135 CAPTURE                          UPVAL U7
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          VAL R1
      138 SETTABLEKS                       R7 R6 K46 ["onCheckedChanged"]
      140 NEWCLOSURE                       R7 P7
      141 CAPTURE                          UPVAL U8
      142 CAPTURE                          UPVAL U4
      143 CAPTURE                          UPVAL U5
      144 CAPTURE                          VAL R0
      145 CAPTURE                          VAL R1
      146 SETTABLEKS                       R7 R6 K47 ["onRefreshPressed"]
      148 CALL                             R5 1 -1
      149 FASTCALL                         TABLE_INSERT ; [+2]
      150 GETIMPORT                        R3 K25 [table.insert]
      152 CALL                             R3 -1 0
      153 DUPTABLE                         R3 K51 [{"propertyRows", "canConfirm"}]
      154 SETTABLEKS                       R2 R3 K49 ["propertyRows"]
      156 GETUPVAL                         R5 9
      157 CALL                             R5 0 1
      158 JUMPIFNOT                        R5 ; [+3]
      159 NEWCLOSURE                       R4 P8
      160 CAPTURE                          UPVAL U4
      161 JUMP                             ; [+1]
      162 LOADNIL                          R4
      163 SETTABLEKS                       R4 R3 K50 ["canConfirm"]
      165 RETURN                           R3 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["registerHydrator"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Type"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R1 2 0
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K2 ["define"]
       15 CALL                             R2 0 1
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K3 ["PrimitiveGen"]
       19 NAMECALL                         R2 R2 K4 ["setName"]
       21 CALL                             R2 2 1
       22 LOADK                            R4 K5 ["Creates 3D objects built from primitive parts (blocks, spheres, cylinders, wedges) as a ProceduralModel with configurable attributes.\nUse this tool when the user wants to:\n- Create or build a 3D object, model, character, creature, vehicle, building, scenery, or any physical thing in the workspace\n- Generate something from a reference image\n- Create an object with tunable parameters (e.g. \"add attributes to control head size, arm length, color\")\n- Build anything described as \"procedural\", \"parametric\", \"configurable\", or \"with attributes\"\n\nThe output is a ProceduralModel: a scripted model whose appearance is controlled by user-editable attributes (like size, color, proportions). The user can tweak these attributes after generation without regenerating.\n\nThe tool automatically inserts the generated model into the workspace. You do not need to run any code afterward.\n"]
       23 NAMECALL                         R2 R2 K6 ["setDescription"]
       25 CALL                             R2 2 1
       26 LOADK                            R4 K7 ["prompt"]
       27 DUPTABLE                         R5 K12 [{["type"] = "string", ["description"] = "A text description of what to create and what attributes to expose.\nPass the user's own words. If they mention specific configurable properties (e.g. \"head size\", \"arm length\", \"wheel count\"), include those in the prompt so the generated model exposes them as editable attributes.\nIf an image is attached and the user gave no text description, pass an empty string.\nDo NOT describe or interpret the attached image — only pass the user's own words.\n"}]
       28 NAMECALL                         R2 R2 K13 ["addArgument"]
       30 CALL                             R2 3 1
       31 LOADK                            R4 K14 ["attachedImageUri"]
       32 DUPTABLE                         R5 K16 [{["type"] = "string", ["description"] = "The image URI (IMAGEID_<id>) from the user's attached image. Always pass this when the user provides a reference image."}]
       33 NAMECALL                         R2 R2 K17 ["addOptionalArgument"]
       35 CALL                             R2 3 1
       36 LOADK                            R4 K18 ["partNames"]
       37 DUPTABLE                         R5 K19 [{["type"] = "string", ["description"]}]
       38 GETUPVAL                         R7 5
       39 CALL                             R7 0 1
       40 JUMPIFNOT                        R7 ; [+2]
       41 LOADK                            R6 K20 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel', 'door']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
       42 JUMP                             ; [+1]
       43 LOADK                            R6 K21 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings. When provided, the model will be built around these named parts."]
       44 SETTABLEKS                       R6 R5 K10 ["description"]
       46 NAMECALL                         R2 R2 K17 ["addOptionalArgument"]
       48 CALL                             R2 3 1
       49 GETUPVAL                         R3 5
       50 CALL                             R3 0 1
       51 JUMPIFNOT                        R3 ; [+10]
       52 LOADK                            R5 K22 ["segmentation"]
       53 DUPTABLE                         R6 K25 [{["type"] = "string", ["enum"], ["description"] = "Controls how the model is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
       54 GETUPVAL                         R7 6
       55 GETTABLEKS                       R7 R7 K26 ["SegmentationArgValues"]
       57 SETTABLEKS                       R7 R6 K23 ["enum"]
       59 NAMECALL                         R3 R2 K17 ["addOptionalArgument"]
       61 CALL                             R3 3 0
       62 MOVE                             R5 R1
       63 NAMECALL                         R3 R2 K27 ["setHandler"]
       65 CALL                             R3 2 1
       66 DUPTABLE                         R5 K35 [{["title"] = "Primitive Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       67 NAMECALL                         R3 R3 K36 ["setAnnotations"]
       69 CALL                             R3 2 1
       70 NAMECALL                         R3 R3 K37 ["build"]
       72 CALL                             R3 1 1
       73 LOADK                            R4 K38 [""]
       74 LOADNIL                          R5
       75 LOADB                            R6 1
       76 NEWCLOSURE                       R7 P2
       77 CAPTURE                          REF R4
       78 CAPTURE                          REF R6
       79 CAPTURE                          UPVAL U7
       80 DUPTABLE                         R8 K43 [{"command", "getDescription", "mapToToolCall", "getInputRequestArguments"}]
       81 GETUPVAL                         R9 4
       82 GETTABLEKS                       R9 R9 K3 ["PrimitiveGen"]
       84 SETTABLEKS                       R9 R8 K39 ["command"]
       86 DUPCLOSURE                       R9 K44 [PROTO_67]
       87 SETTABLEKS                       R9 R8 K40 ["getDescription"]
       89 NEWCLOSURE                       R9 P4
       90 CAPTURE                          REF R4
       91 CAPTURE                          REF R5
       92 CAPTURE                          UPVAL U4
       93 SETTABLEKS                       R9 R8 K41 ["mapToToolCall"]
       95 GETUPVAL                         R10 8
       96 CALL                             R10 0 1
       97 JUMPIFNOT                        R10 ; [+12]
       98 NEWCLOSURE                       R9 P5
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R7
      101 CAPTURE                          UPVAL U9
      102 CAPTURE                          UPVAL U10
      103 CAPTURE                          REF R4
      104 CAPTURE                          REF R5
      105 CAPTURE                          UPVAL U11
      106 CAPTURE                          REF R6
      107 CAPTURE                          UPVAL U12
      108 CAPTURE                          UPVAL U13
      109 JUMP                             ; [+1]
      110 LOADNIL                          R9
      111 SETTABLEKS                       R9 R8 K42 ["getInputRequestArguments"]
      113 DUPTABLE                         R9 K46 [{"transformInitialContent"}]
      114 DUPCLOSURE                       R10 K47 [PROTO_79]
      115 CAPTURE                          UPVAL U1
      116 SETTABLEKS                       R10 R9 K45 ["transformInitialContent"]
      118 DUPTABLE                         R10 K54 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "displayNameFunction", "toolCallOptions"}]
      119 SETTABLEKS                       R3 R10 K48 ["definition"]
      121 NEWTABLE                         R11 0 1
      123 MOVE                             R12 R8
      124 SETLIST                          R11 R12 1 [1]
      126 SETTABLEKS                       R11 R10 K49 ["slashCommands"]
      128 GETUPVAL                         R12 14
      129 CALL                             R12 0 1
      130 JUMPIFNOT                        R12 ; [+2]
      131 LOADNIL                          R11
      132 JUMP                             ; [+5]
      133 NEWTABLE                         R11 0 1
      135 GETUPVAL                         R12 1
      136 SETLIST                          R11 R12 1 [1]
      138 SETTABLEKS                       R11 R10 K50 ["contentWidgets"]
      140 SETTABLEKS                       R9 R10 K51 ["streamTransform"]
      142 GETUPVAL                         R12 14
      143 CALL                             R12 0 1
      144 JUMPIFNOT                        R12 ; [+2]
      145 LOADNIL                          R11
      146 JUMP                             ; [+2]
      147 DUPCLOSURE                       R11 K55 [PROTO_80]
      148 CAPTURE                          UPVAL U10
      149 SETTABLEKS                       R11 R10 K52 ["displayNameFunction"]
      151 DUPTABLE                         R11 K58 [{["resetTimeoutOnProgress"] = True}]
      152 SETTABLEKS                       R11 R10 K53 ["toolCallOptions"]
      154 CLOSEUPVALS                      R4
      155 RETURN                           R10 1

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
       63 GETTABLEKS                       R9 R9 K21 ["PrimitiveGenBridgeTypes"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETIMPORT                        R10 K1 [script]
       70 GETTABLEKS                       R10 R10 K10 ["Parent"]
       72 GETTABLEKS                       R10 R10 K22 ["PrimitiveGenJobStore"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETIMPORT                        R11 K1 [script]
       79 GETTABLEKS                       R11 R11 K10 ["Parent"]
       81 GETTABLEKS                       R11 R11 K23 ["PrimitiveGenPreviewFetch"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R12 R0 K24 ["Components"]
       88 GETTABLEKS                       R12 R12 K25 ["PropertyRows"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K9 [require]
       93 GETTABLEKS                       R13 R0 K17 ["Features"]
       95 GETTABLEKS                       R13 R13 K26 ["Gen3dUtils"]
       97 GETTABLEKS                       R13 R13 K27 ["SegmentationEnums"]
       99 CALL                             R12 1 1
      100 GETIMPORT                        R13 K9 [require]
      102 GETTABLEKS                       R14 R0 K14 ["Util"]
      104 GETTABLEKS                       R14 R14 K28 ["Serializer"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K9 [require]
      109 GETTABLEKS                       R15 R0 K29 ["Tools"]
      111 GETTABLEKS                       R15 R15 K30 ["ToolTypes"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K9 [require]
      116 GETTABLEKS                       R16 R0 K14 ["Util"]
      118 GETTABLEKS                       R16 R16 K31 ["ToolUtils"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K9 [require]
      123 GETTABLEKS                       R17 R0 K32 ["Resources"]
      125 GETTABLEKS                       R17 R17 K33 ["Localization"]
      127 GETTABLEKS                       R17 R17 K34 ["Translator"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K9 [require]
      132 GETTABLEKS                       R18 R0 K35 ["Types"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K9 [require]
      137 GETTABLEKS                       R19 R0 K14 ["Util"]
      139 GETTABLEKS                       R19 R19 K36 ["VersionResolver"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K1 [script]
      144 LOADK                            R21 K37 ["PrimitiveGen"]
      145 NAMECALL                         R19 R19 K3 ["FindFirstAncestor"]
      147 CALL                             R19 2 1
      148 GETIMPORT                        R20 K9 [require]
      150 GETTABLEKS                       R21 R19 K38 ["PrimitiveGenContentWidget"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K9 [require]
      155 GETTABLEKS                       R22 R0 K39 ["Flags"]
      157 GETTABLEKS                       R22 R22 K40 ["FFlagAssistantGen3DTelemetryV2"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K9 [require]
      162 GETTABLEKS                       R23 R0 K39 ["Flags"]
      164 GETTABLEKS                       R23 R23 K41 ["FFlagAssistantGen3dAutoSegmentation"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K9 [require]
      169 GETTABLEKS                       R24 R0 K39 ["Flags"]
      171 GETTABLEKS                       R24 R24 K42 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K9 [require]
      176 GETTABLEKS                       R25 R0 K39 ["Flags"]
      178 GETTABLEKS                       R25 R25 K43 ["FFlagAssistantSplitToolsAndWidgets"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K9 [require]
      183 GETTABLEKS                       R26 R0 K39 ["Flags"]
      185 GETTABLEKS                       R26 R26 K44 ["FFlagAssistantVersionMismatchWarning"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K9 [require]
      190 GETTABLEKS                       R27 R0 K39 ["Flags"]
      192 GETTABLEKS                       R27 R27 K45 ["FFlagDebugMockPrimitiveGenBackend"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K9 [require]
      197 GETTABLEKS                       R28 R0 K39 ["Flags"]
      199 GETTABLEKS                       R28 R28 K46 ["FFlagDebugPrimGenDMNoReachable"]
      201 CALL                             R27 1 1
      202 GETIMPORT                        R28 K9 [require]
      204 GETTABLEKS                       R29 R0 K39 ["Flags"]
      206 GETTABLEKS                       R29 R29 K47 ["FFlagPrimGenAllowReInsert"]
      208 CALL                             R28 1 1
      209 GETIMPORT                        R29 K9 [require]
      211 GETTABLEKS                       R30 R0 K39 ["Flags"]
      213 GETTABLEKS                       R30 R30 K48 ["FFlagPrimGenAnnotateRightMimeType"]
      215 CALL                             R29 1 1
      216 GETIMPORT                        R30 K9 [require]
      218 GETTABLEKS                       R31 R0 K39 ["Flags"]
      220 GETTABLEKS                       R31 R31 K49 ["FFlagPrimGenBetterErrorType"]
      222 CALL                             R30 1 1
      223 GETIMPORT                        R31 K9 [require]
      225 GETTABLEKS                       R32 R0 K39 ["Flags"]
      227 GETTABLEKS                       R32 R32 K50 ["FFlagPrimGenCarouselPreview"]
      229 CALL                             R31 1 1
      230 GETIMPORT                        R32 K9 [require]
      232 GETTABLEKS                       R33 R0 K39 ["Flags"]
      234 GETTABLEKS                       R33 R33 K51 ["FFlagPrimGenRetryInPlayTest"]
      236 CALL                             R32 1 1
      237 GETIMPORT                        R33 K9 [require]
      239 GETTABLEKS                       R34 R0 K39 ["Flags"]
      241 GETTABLEKS                       R34 R34 K52 ["FFlagPrimGenSchemaSelector"]
      243 CALL                             R33 1 1
      244 GETIMPORT                        R34 K9 [require]
      246 GETTABLEKS                       R35 R0 K39 ["Flags"]
      248 GETTABLEKS                       R35 R35 K53 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
      250 CALL                             R34 1 1
      251 GETIMPORT                        R35 K9 [require]
      253 GETTABLEKS                       R36 R0 K39 ["Flags"]
      255 GETTABLEKS                       R36 R36 K54 ["FFlagPrimGenVersionMismatchError"]
      257 CALL                             R35 1 1
      258 GETIMPORT                        R36 K9 [require]
      260 GETTABLEKS                       R37 R0 K39 ["Flags"]
      262 GETTABLEKS                       R37 R37 K55 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      264 CALL                             R36 1 1
      265 GETIMPORT                        R37 K9 [require]
      267 GETTABLEKS                       R38 R0 K39 ["Flags"]
      269 GETTABLEKS                       R38 R38 K56 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      271 CALL                             R37 1 1
      272 GETIMPORT                        R38 K9 [require]
      274 GETTABLEKS                       R39 R0 K39 ["Flags"]
      276 GETTABLEKS                       R39 R39 K57 ["FStringMCPAssistantPrimitiveGenServerURL"]
      278 CALL                             R38 1 1
      279 GETTABLEKS                       R39 R20 K58 ["PreviewState"]
      281 GETTABLEKS                       R40 R7 K14 ["Util"]
      283 GETTABLEKS                       R40 R40 K59 ["ToolBuilder"]
      285 GETTABLEKS                       R41 R7 K14 ["Util"]
      287 GETTABLEKS                       R41 R41 K60 ["ToolResult"]
      289 GETTABLEKS                       R42 R7 K61 ["Json"]
      291 GETTABLEKS                       R43 R14 K62 ["ToolNames"]
      293 GETTABLEKS                       R44 R2 K63 ["Dictionary"]
      295 GETTABLEKS                       R44 R44 K64 ["join"]
      297 MOVE                             R46 R31
      298 CALL                             R46 0 1
      299 JUMPIFNOT                        R46 ; [+2]
      300 LOADN                            R45 48
      301 JUMP                             ; [+1]
      302 LOADN                            R45 5
      303 DUPTABLE                         R46 K69 [{"Submitting", "ResolvingDependencies", "DownloadingScript", "Inserting"}]
      304 LOADK                            R49 K37 ["PrimitiveGen"]
      305 LOADK                            R50 K70 ["StageSubmitting"]
      306 NAMECALL                         R47 R16 K71 ["getText"]
      308 CALL                             R47 3 1
      309 SETTABLEKS                       R47 R46 K65 ["Submitting"]
      311 LOADK                            R49 K37 ["PrimitiveGen"]
      312 LOADK                            R50 K72 ["StageResolvingDependencies"]
      313 NAMECALL                         R47 R16 K71 ["getText"]
      315 CALL                             R47 3 1
      316 SETTABLEKS                       R47 R46 K66 ["ResolvingDependencies"]
      318 LOADK                            R49 K37 ["PrimitiveGen"]
      319 LOADK                            R50 K73 ["StageDownloadingScript"]
      320 NAMECALL                         R47 R16 K71 ["getText"]
      322 CALL                             R47 3 1
      323 SETTABLEKS                       R47 R46 K67 ["DownloadingScript"]
      325 LOADK                            R49 K37 ["PrimitiveGen"]
      326 LOADK                            R50 K74 ["StageInserting"]
      327 NAMECALL                         R47 R16 K71 ["getText"]
      329 CALL                             R47 3 1
      330 SETTABLEKS                       R47 R46 K68 ["Inserting"]
      332 DUPTABLE                         R47 K79 [{["WorkflowFailure"] = "Workflow Failure", ["ModerationFailure"] = "Moderation Failure"}]
      333 DUPTABLE                         R48 K86 [{["Success"] = "success", ["Cancelled"] = "cancelled", ["Failed"] = "failed"}]
      334 DUPTABLE                         R49 K101 [{["General"] = "General", ["CancelByUser"] = "CancelByUser", ["TooManyConcurrentJobs"] = "TooManyConcurrentJobs", ["DmIsUnreachable"] = "DmIsUnreachable", ["DmHealthChecking"] = "DmHealthChecking", ["EmptyPrompt"] = "EmptyPrompt", ["ImageFormat"] = "ImageFormat", ["MaxCharacters"] = "MaxCharacters", ["ModerationFailed"] = "ModerationFailed", ["PollFailed"] = "PollFailed", ["PluginVersionMismatch"] = "PluginVersionMismatch", ["ScriptFetchError"] = "ScriptFetchError", ["TooManyRequests"] = "TooManyRequests", ["StudioLeftEditMode"] = "StudioLeftEditMode"}]
      335 DUPCLOSURE                       R50 K102 [PROTO_0]
      336 CAPTURE                          VAL R34
      337 DUPCLOSURE                       R51 K103 [PROTO_1]
      338 DUPCLOSURE                       R52 K104 [PROTO_2]
      339 DUPCLOSURE                       R53 K105 [PROTO_4]
      340 CAPTURE                          VAL R27
      341 DUPCLOSURE                       R54 K106 [PROTO_5]
      342 DUPCLOSURE                       R55 K107 [PROTO_6]
      343 CAPTURE                          VAL R3
      344 DUPTABLE                         R56 K108 [{["Success"] = "success", ["Failed"] = "failed"}]
      345 DUPCLOSURE                       R57 K109 [PROTO_7]
      346 DUPCLOSURE                       R58 K110 [PROTO_8]
      347 CAPTURE                          VAL R5
      348 DUPCLOSURE                       R59 K111 [PROTO_10]
      349 DUPCLOSURE                       R60 K112 [PROTO_11]
      350 DUPCLOSURE                       R61 K113 [PROTO_12]
      351 CAPTURE                          VAL R15
      352 CAPTURE                          VAL R42
      353 DUPCLOSURE                       R62 K114 [PROTO_13]
      354 CAPTURE                          VAL R38
      355 CAPTURE                          VAL R3
      356 DUPCLOSURE                       R63 K115 [PROTO_14]
      357 CAPTURE                          VAL R38
      358 CAPTURE                          VAL R3
      359 DUPCLOSURE                       R64 K116 [PROTO_28]
      360 CAPTURE                          VAL R20
      361 CAPTURE                          VAL R45
      362 CAPTURE                          VAL R32
      363 CAPTURE                          VAL R28
      364 CAPTURE                          VAL R46
      365 CAPTURE                          VAL R39
      366 DUPCLOSURE                       R65 K117 [PROTO_29]
      367 DUPCLOSURE                       R66 K118 [PROTO_30]
      368 CAPTURE                          VAL R1
      369 CAPTURE                          VAL R4
      370 CAPTURE                          VAL R38
      371 CAPTURE                          VAL R3
      372 CAPTURE                          VAL R29
      373 CAPTURE                          VAL R33
      374 CAPTURE                          VAL R44
      375 CAPTURE                          VAL R62
      376 DUPCLOSURE                       R67 K119 [PROTO_32]
      377 CAPTURE                          VAL R26
      378 CAPTURE                          VAL R3
      379 CAPTURE                          VAL R66
      380 CAPTURE                          VAL R61
      381 CAPTURE                          VAL R30
      382 CAPTURE                          VAL R51
      383 CAPTURE                          VAL R52
      384 DUPCLOSURE                       R68 K120 [PROTO_34]
      385 CAPTURE                          VAL R3
      386 CAPTURE                          VAL R38
      387 CAPTURE                          VAL R62
      388 CAPTURE                          VAL R30
      389 CAPTURE                          VAL R9
      390 CAPTURE                          VAL R61
      391 CAPTURE                          VAL R51
      392 CAPTURE                          VAL R15
      393 CAPTURE                          VAL R60
      394 CAPTURE                          VAL R10
      395 CAPTURE                          VAL R37
      396 DUPCLOSURE                       R69 K121 [PROTO_35]
      397 CAPTURE                          VAL R3
      398 CAPTURE                          VAL R42
      399 DUPCLOSURE                       R70 K122 [PROTO_37]
      400 CAPTURE                          VAL R3
      401 CAPTURE                          VAL R61
      402 DUPCLOSURE                       R71 K123 [PROTO_38]
      403 CAPTURE                          VAL R26
      404 CAPTURE                          VAL R3
      405 CAPTURE                          VAL R68
      406 CAPTURE                          VAL R46
      407 CAPTURE                          VAL R70
      408 CAPTURE                          VAL R60
      409 CAPTURE                          VAL R69
      410 DUPCLOSURE                       R72 K124 [PROTO_40]
      411 CAPTURE                          VAL R30
      412 CAPTURE                          VAL R53
      413 GETTABLEKS                       R73 R9 K125 ["JobStatus"]
      415 DUPCLOSURE                       R74 K126 [PROTO_41]
      416 CAPTURE                          VAL R9
      417 CAPTURE                          VAL R73
      418 CAPTURE                          VAL R44
      419 SETGLOBAL                        R74 K127 ["reportGenerationError"]
      421 DUPCLOSURE                       R74 K128 [PROTO_51]
      422 CAPTURE                          VAL R9
      423 CAPTURE                          VAL R73
      424 CAPTURE                          VAL R15
      425 CAPTURE                          VAL R71
      426 CAPTURE                          VAL R30
      427 CAPTURE                          VAL R54
      428 CAPTURE                          VAL R39
      429 CAPTURE                          VAL R44
      430 CAPTURE                          VAL R31
      431 CAPTURE                          VAL R10
      432 CAPTURE                          VAL R46
      433 CAPTURE                          VAL R72
      434 CAPTURE                          VAL R28
      435 CAPTURE                          VAL R20
      436 CAPTURE                          VAL R16
      437 CAPTURE                          VAL R34
      438 CAPTURE                          VAL R32
      439 DUPCLOSURE                       R75 K129 [PROTO_54]
      440 CAPTURE                          VAL R64
      441 CAPTURE                          VAL R22
      442 CAPTURE                          VAL R6
      443 CAPTURE                          VAL R41
      444 CAPTURE                          VAL R33
      445 CAPTURE                          VAL R21
      446 CAPTURE                          VAL R25
      447 CAPTURE                          VAL R35
      448 CAPTURE                          VAL R18
      449 CAPTURE                          VAL R34
      450 CAPTURE                          VAL R27
      451 CAPTURE                          VAL R36
      452 CAPTURE                          VAL R9
      453 CAPTURE                          VAL R16
      454 CAPTURE                          VAL R5
      455 CAPTURE                          VAL R20
      456 CAPTURE                          VAL R39
      457 CAPTURE                          VAL R46
      458 CAPTURE                          VAL R67
      459 CAPTURE                          VAL R73
      460 CAPTURE                          VAL R74
      461 DUPCLOSURE                       R76 K130 [PROTO_57]
      462 CAPTURE                          VAL R64
      463 DUPCLOSURE                       R77 K131 [PROTO_58]
      464 CAPTURE                          VAL R64
      465 DUPCLOSURE                       R78 K132 [PROTO_59]
      466 DUPTABLE                         R79 K136 [{"updateContentHeader", "setPreviewImage", "reportGeneratedInstanceDeleted"}]
      467 SETTABLEKS                       R76 R79 K133 ["updateContentHeader"]
      469 SETTABLEKS                       R77 R79 K134 ["setPreviewImage"]
      471 SETTABLEKS                       R78 R79 K135 ["reportGeneratedInstanceDeleted"]
      473 DUPCLOSURE                       R80 K137 [PROTO_81]
      474 CAPTURE                          VAL R13
      475 CAPTURE                          VAL R20
      476 CAPTURE                          VAL R75
      477 CAPTURE                          VAL R40
      478 CAPTURE                          VAL R43
      479 CAPTURE                          VAL R22
      480 CAPTURE                          VAL R12
      481 CAPTURE                          VAL R6
      482 CAPTURE                          VAL R33
      483 CAPTURE                          VAL R11
      484 CAPTURE                          VAL R16
      485 CAPTURE                          VAL R5
      486 CAPTURE                          VAL R21
      487 CAPTURE                          VAL R23
      488 CAPTURE                          VAL R24
      489 DUPTABLE                         R81 K140 [{"bridge", "setupGuest"}]
      490 SETTABLEKS                       R79 R81 K138 ["bridge"]
      492 SETTABLEKS                       R80 R81 K139 ["setupGuest"]
      494 RETURN                           R81 1
