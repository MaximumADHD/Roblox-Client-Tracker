PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
        3 JUMPIFNOT                        R2 ; [+22]
        4 JUMPIFNOT                        R0 ; [+9]
        5 JUMPIFEQKS                       R0 K1 [""] ; [+8]
        7 LOADK                            R3 K2 [" Details: %*"]
        8 MOVE                             R5 R0
        9 NAMECALL                         R3 R3 K3 ["format"]
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 JUMP                             ; [+1]
       14 LOADK                            R2 K1 [""]
       15 LOADK                            R8 K4 ["The Asset DataModel is not reachable right now.%* "]
       16 MOVE                             R10 R2
       17 NAMECALL                         R8 R8 K3 ["format"]
       19 CALL                             R8 2 1
       20 MOVE                             R4 R8
       21 LOADK                            R5 K5 ["It may be paused at a breakpoint, busy running another task, or unavailable because Studio is in Play/Test mode. "]
       22 LOADK                            R6 K6 ["Please stop play test if it is running, resume or clear any breakpoints, then run /run print(\"hi\") to confirm the Asset DataModel is reachable."]
       23 LOADK                            R7 K7 ["If it still fails, restart Roblox Studio and try this tool again."]
       24 CONCAT                           R3 R4 R7
       25 RETURN                           R3 1
       26 JUMPIFNOT                        R1 ; [+2]
       27 MOVE                             R2 R1
       28 RETURN                           R2 1
       29 JUMPIFNOT                        R0 ; [+9]
       30 JUMPIFEQKS                       R0 K1 [""] ; [+8]
       32 LOADK                            R3 K8 ["Asset datamodel is not reachable: %*"]
       33 MOVE                             R5 R0
       34 NAMECALL                         R3 R3 K3 ["format"]
       36 CALL                             R3 2 1
       37 MOVE                             R2 R3
       38 RETURN                           R2 1
       39 LOADK                            R2 K9 ["Asset datamodel is not reachable"]
       40 RETURN                           R2 1

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
       33 JUMPIFNOT                        R2 ; [+11]
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K12 ["FFlagDebugPrimGenDMNoReachable"]
       37 JUMPIFNOT                        R2 ; [+5]
       38 GETIMPORT                        R2 K15 [task.spawn]
       40 NEWCLOSURE                       R3 P0
       41 CAPTURE                          VAL R1
       42 CALL                             R2 1 0
       43 LOADK                            R2 K16 ["DmIsUnreachable"]
       44 RETURN                           R2 1
       45 LOADK                            R2 K17 ["General"]
       46 RETURN                           R2 1

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
        1 GETTABLEKS                       R0 R0 K0 ["FStringMCPAssistantPrimitiveGenServerURL"]
        3 JUMPIFEQKS                       R0 K1 [""] ; [+17]
        5 NEWTABLE                         R1 1 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["get"]
       10 CALL                             R3 0 1
       11 GETTABLEKS                       R3 R3 K3 ["getUserId"]
       13 CALL                             R3 0 -1
       14 FASTCALL                         TOSTRING ; [+2]
       15 GETIMPORT                        R2 K5 [tostring]
       17 CALL                             R2 -1 1
       18 SETTABLEKS                       R2 R1 K6 ["robloxctx-authenticated-userid"]
       20 RETURN                           R1 1
       21 NEWTABLE                         R1 0 0
       23 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringMCPAssistantPrimitiveGenServerURL"]
        3 JUMPIFEQKS                       R0 K1 [""] ; [+2]
        5 RETURN                           R0 1
        6 LOADK                            R2 K2 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["get"]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R4 R4 K4 ["apisUrl"]
       13 NAMECALL                         R2 R2 K5 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1

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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagPrimGenRetryInPlayTest"]
        3 JUMPIF                           R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["FFlagPrimGenAllowReInsert"]
        7 JUMPIFNOT                        R1 ; [+31]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["Inserting"]
       11 JUMPIFNOTEQ                      R0 R1 ; [+27]
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K3 ["callArgs"]
       19 GETTABLEKS                       R2 R2 K4 ["isThirdPartyRequest"]
       21 JUMPIFNOT                        R2 ; [+1]
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K3 ["callArgs"]
       26 GETTABLEKS                       R3 R3 K5 ["uiContentId"]
       28 GETUPVAL                         R4 4
       29 GETTABLEKS                       R4 R4 K6 ["getContentHooks"]
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R4 K7 ["editContent"]
       35 MOVE                             R6 R1
       36 DUPTABLE                         R7 K10 [{["skipIfNoMessage"] = True}]
       37 CALL                             R5 2 0
       38 RETURN                           R0 0
       39 NEWCLOSURE                       R1 P1
       40 CAPTURE                          VAL R0
       41 GETUPVAL                         R2 3
       42 GETTABLEKS                       R2 R2 K3 ["callArgs"]
       44 GETTABLEKS                       R2 R2 K4 ["isThirdPartyRequest"]
       46 JUMPIFNOT                        R2 ; [+1]
       47 RETURN                           R0 0
       48 GETUPVAL                         R3 3
       49 GETTABLEKS                       R3 R3 K3 ["callArgs"]
       51 GETTABLEKS                       R3 R3 K5 ["uiContentId"]
       53 GETUPVAL                         R4 4
       54 GETTABLEKS                       R4 R4 K6 ["getContentHooks"]
       56 MOVE                             R5 R3
       57 CALL                             R4 1 1
       58 GETTABLEKS                       R5 R4 K7 ["editContent"]
       60 MOVE                             R6 R1
       61 DUPTABLE                         R7 K10 [{["skipIfNoMessage"] = True}]
       62 CALL                             R5 2 0
       63 RETURN                           R0 0

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
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 DUPTABLE                         R8 K8 [{"updateWidget", "replaceContent", "setPreviewState", "setPreviewImage", "setGenerationError", "setGenerationStage"}]
       28 SETTABLEKS                       R2 R8 K2 ["updateWidget"]
       30 SETTABLEKS                       R3 R8 K3 ["replaceContent"]
       32 SETTABLEKS                       R4 R8 K4 ["setPreviewState"]
       34 SETTABLEKS                       R6 R8 K5 ["setPreviewImage"]
       36 SETTABLEKS                       R5 R8 K6 ["setGenerationError"]
       38 SETTABLEKS                       R7 R8 K7 ["setGenerationStage"]
       40 RETURN                           R8 1

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
       17 GETTABLEKS                       R6 R6 K6 ["FStringMCPAssistantPrimitiveGenServerURL"]
       19 JUMPIFEQKS                       R6 K7 [""] ; [+3]
       21 MOVE                             R5 R6
       22 JUMP                             ; [+11]
       23 LOADK                            R7 K8 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K9 ["get"]
       27 CALL                             R9 0 1
       28 GETTABLEKS                       R9 R9 K10 ["apisUrl"]
       30 NAMECALL                         R7 R7 K11 ["format"]
       32 CALL                             R7 2 1
       33 MOVE                             R5 R7
       34 LOADB                            R8 1
       35 NAMECALL                         R6 R4 K12 ["forceMultipart"]
       37 CALL                             R6 2 0
       38 LOADK                            R8 K13 ["TextPrompt"]
       39 MOVE                             R9 R0
       40 NAMECALL                         R6 R4 K14 ["addField"]
       42 CALL                             R6 3 0
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K15 ["FFlagPrimGenAnnotateRightMimeType"]
       46 JUMPIFNOT                        R6 ; [+36]
       47 JUMPIFNOT                        R1 ; [+47]
       48 JUMPIFNOT                        R3 ; [+46]
       49 GETTABLEKS                       R6 R1 K16 ["mimeType"]
       51 JUMPIFEQKS                       R6 K17 ["image/jpeg"] ; [+3]
       53 JUMPIFNOTEQKS                    R6 K18 ["image/jpg"] ; [+3]
       55 LOADK                            R7 K19 ["image.jpg"]
       56 JUMP                             ; [+14]
       57 JUMPIFNOTEQKS                    R6 K20 ["image/png"] ; [+3]
       59 LOADK                            R7 K21 ["image.png"]
       60 JUMP                             ; [+10]
       61 GETIMPORT                        R8 K23 [error]
       63 LOADK                            R10 K24 ["Unsupported PrimitiveGen image MIME type: %*"]
       64 MOVE                             R12 R6
       65 NAMECALL                         R10 R10 K11 ["format"]
       67 CALL                             R10 2 1
       68 MOVE                             R9 R10
       69 CALL                             R8 1 0
       70 LOADNIL                          R7
       71 LOADK                            R10 K25 ["Image"]
       72 GETUPVAL                         R11 1
       73 GETTABLEKS                       R11 R11 K26 ["file"]
       75 MOVE                             R12 R7
       76 MOVE                             R13 R3
       77 MOVE                             R14 R6
       78 CALL                             R11 3 -1
       79 NAMECALL                         R8 R4 K27 ["addFile"]
       81 CALL                             R8 -1 0
       82 JUMP                             ; [+12]
       83 JUMPIFNOT                        R3 ; [+11]
       84 LOADK                            R8 K25 ["Image"]
       85 GETUPVAL                         R9 1
       86 GETTABLEKS                       R9 R9 K26 ["file"]
       88 LOADK                            R10 K21 ["image.png"]
       89 MOVE                             R11 R3
       90 LOADK                            R12 K20 ["image/png"]
       91 CALL                             R9 3 -1
       92 NAMECALL                         R6 R4 K27 ["addFile"]
       94 CALL                             R6 -1 0
       95 GETUPVAL                         R6 2
       96 GETTABLEKS                       R6 R6 K28 ["FFlagPrimGenSchemaSelector"]
       98 JUMPIFNOT                        R6 ; [+10]
       99 JUMPIFNOT                        R2 ; [+9]
      100 LENGTH                           R6 R2
      101 LOADN                            R7 0
      102 JUMPIFNOTLT                      R7 R6 ; [+6]
      104 LOADK                            R8 K29 ["schemaDefinition"]
      105 MOVE                             R9 R2
      106 NAMECALL                         R6 R4 K30 ["addList"]
      108 CALL                             R6 3 0
      109 MOVE                             R8 R5
      110 LOADK                            R9 K31 ["POST"]
      111 NAMECALL                         R6 R4 K32 ["buildRequest"]
      113 CALL                             R6 3 1
      114 GETUPVAL                         R7 4
      115 GETTABLEKS                       R8 R6 K33 ["Headers"]
      117 GETUPVAL                         R9 5
      118 CALL                             R9 0 1
      119 CALL                             R7 2 1
      120 SETTABLEKS                       R7 R6 K33 ["Headers"]
      122 RETURN                           R6 1

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
        1 GETTABLEKS                       R3 R3 K0 ["FFlagDebugMockPrimitiveGenBackend"]
        3 JUMPIFNOT                        R3 ; [+2]
        4 DUPTABLE                         R3 K6 [{["generationId"] = "1234567890", ["errorType"] = , ["errorMessage"] = }]
        5 RETURN                           R3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K7 ["get"]
        9 CALL                             R3 0 1
       10 GETIMPORT                        R4 K9 [pcall]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U3
       19 CALL                             R4 1 3
       20 JUMPIF                           R4 ; [+10]
       21 LOADK                            R8 K10 ["Failed to get response from server: %*"]
       22 MOVE                             R10 R5
       23 NAMECALL                         R8 R8 K11 ["format"]
       25 CALL                             R8 2 1
       26 MOVE                             R7 R8
       27 DUPTABLE                         R8 K14 [{["generationId"] = "", ["errorType"] = "General", ["errorMessage"]}]
       28 SETTABLEKS                       R7 R8 K5 ["errorMessage"]
       30 RETURN                           R8 1
       31 GETTABLEKS                       R7 R5 K15 ["Success"]
       33 JUMPIF                           R7 ; [+41]
       34 LOADK                            R8 K16 ["Failed to submit generation job: statusCode: %*, body: %*"]
       35 GETTABLEKS                       R10 R5 K17 ["StatusCode"]
       37 GETTABLEKS                       R11 R5 K18 ["Body"]
       39 NAMECALL                         R8 R8 K11 ["format"]
       41 CALL                             R8 3 1
       42 MOVE                             R7 R8
       43 LOADK                            R8 K13 ["General"]
       44 GETTABLEKS                       R9 R5 K17 ["StatusCode"]
       46 JUMPIFNOTEQKN                    R9 K19 [429] ; [+3]
       48 LOADK                            R8 K20 ["TooManyRequests"]
       49 JUMP                             ; [+19]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K21 ["FFlagPrimGenBetterErrorType"]
       53 JUMPIFNOT                        R9 ; [+6]
       54 GETUPVAL                         R9 4
       55 MOVE                             R10 R6
       56 CALL                             R9 1 1
       57 JUMPIFNOT                        R9 ; [+2]
       58 LOADK                            R8 K22 ["ModerationFailed"]
       59 JUMP                             ; [+9]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R9 R9 K21 ["FFlagPrimGenBetterErrorType"]
       63 JUMPIFNOT                        R9 ; [+5]
       64 GETUPVAL                         R9 5
       65 MOVE                             R10 R6
       66 CALL                             R9 1 1
       67 JUMPIFNOT                        R9 ; [+1]
       68 LOADK                            R8 K23 ["EmptyPrompt"]
       69 DUPTABLE                         R9 K24 [{["generationId"] = "", ["errorType"], ["errorMessage"]}]
       70 SETTABLEKS                       R8 R9 K3 ["errorType"]
       72 SETTABLEKS                       R7 R9 K5 ["errorMessage"]
       74 RETURN                           R9 1
       75 GETTABLEKS                       R7 R6 K25 ["primitiveGenerationId"]
       77 JUMPIF                           R7 ; [+11]
       78 LOADK                            R9 K26 ["Response does not contain 'primitiveGenerationId': %*"]
       79 GETTABLEKS                       R11 R5 K18 ["Body"]
       81 NAMECALL                         R9 R9 K11 ["format"]
       83 CALL                             R9 2 1
       84 MOVE                             R8 R9
       85 DUPTABLE                         R9 K14 [{["generationId"] = "", ["errorType"] = "General", ["errorMessage"]}]
       86 SETTABLEKS                       R8 R9 K5 ["errorMessage"]
       88 RETURN                           R9 1
       89 DUPTABLE                         R8 K27 [{["generationId"], ["errorType"] = , ["errorMessage"] = }]
       90 SETTABLEKS                       R7 R8 K1 ["generationId"]
       92 RETURN                           R8 1

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
        6 GETTABLEKS                       R9 R9 K2 ["FStringMCPAssistantPrimitiveGenServerURL"]
        8 JUMPIFEQKS                       R9 K3 [""] ; [+3]
       10 MOVE                             R8 R9
       11 JUMP                             ; [+11]
       12 LOADK                            R10 K4 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
       13 GETUPVAL                         R12 0
       14 GETTABLEKS                       R12 R12 K0 ["get"]
       16 CALL                             R12 0 1
       17 GETTABLEKS                       R12 R12 K5 ["apisUrl"]
       19 NAMECALL                         R10 R10 K6 ["format"]
       21 CALL                             R10 2 1
       22 MOVE                             R8 R10
       23 MOVE                             R9 R0
       24 NAMECALL                         R6 R6 K6 ["format"]
       26 CALL                             R6 3 1
       27 MOVE                             R5 R6
       28 GETUPVAL                         R6 2
       29 CALL                             R6 0 1
       30 LOADN                            R7 0
       31 LOADNIL                          R8
       32 LOADN                            R9 300
       33 JUMPIFNOTLT                      R7 R9 ; [+254]
       35 MOVE                             R9 R1
       36 CALL                             R9 0 1
       37 JUMPIFNOT                        R9 ; [+2]
       38 DUPTABLE                         R9 K9 [{["status"] = "cancelled"}]
       39 RETURN                           R9 1
       40 GETIMPORT                        R9 K11 [pcall]
       42 NEWCLOSURE                       R10 P0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 CALL                             R9 1 2
       47 JUMPIF                           R9 ; [+19]
       48 DUPTABLE                         R11 K15 [{["status"] = "failed", ["errorText"], ["errorType"]}]
       49 LOADK                            R13 K16 ["Sending HTTP request failed: %*"]
       50 MOVE                             R15 R10
       51 NAMECALL                         R13 R13 K6 ["format"]
       53 CALL                             R13 2 1
       54 MOVE                             R12 R13
       55 SETTABLEKS                       R12 R11 K13 ["errorText"]
       57 GETUPVAL                         R13 1
       58 GETTABLEKS                       R13 R13 K17 ["FFlagPrimGenBetterErrorType"]
       60 JUMPIFNOT                        R13 ; [+2]
       61 LOADK                            R12 K18 ["PollFailed"]
       62 JUMP                             ; [+1]
       63 LOADK                            R12 K19 ["General"]
       64 SETTABLEKS                       R12 R11 K14 ["errorType"]
       66 RETURN                           R11 1
       67 GETTABLEKS                       R11 R10 K20 ["Success"]
       69 JUMPIF                           R11 ; [+68]
       70 GETUPVAL                         R11 3
       71 GETTABLEKS                       R11 R11 K21 ["appendLog"]
       73 MOVE                             R12 R0
       74 LOADK                            R14 K22 ["Error while polling job status:%*"]
       75 GETTABLEKS                       R16 R10 K23 ["Body"]
       77 NAMECALL                         R14 R14 K6 ["format"]
       79 CALL                             R14 2 1
       80 MOVE                             R13 R14
       81 CALL                             R11 2 0
       82 GETUPVAL                         R11 4
       83 MOVE                             R12 R10
       84 LOADK                            R14 K24 ["pollJobStatus error (statusCode=%*), jobId=%*"]
       85 GETTABLEKS                       R16 R10 K25 ["StatusCode"]
       87 MOVE                             R17 R0
       88 NAMECALL                         R14 R14 K6 ["format"]
       90 CALL                             R14 3 1
       91 MOVE                             R13 R14
       92 CALL                             R11 2 1
       93 GETUPVAL                         R13 1
       94 GETTABLEKS                       R13 R13 K17 ["FFlagPrimGenBetterErrorType"]
       96 JUMPIFNOT                        R13 ; [+2]
       97 LOADK                            R12 K18 ["PollFailed"]
       98 JUMP                             ; [+1]
       99 LOADK                            R12 K19 ["General"]
      100 LOADNIL                          R13
      101 GETUPVAL                         R14 1
      102 GETTABLEKS                       R14 R14 K17 ["FFlagPrimGenBetterErrorType"]
      104 JUMPIFNOT                        R14 ; [+13]
      105 GETUPVAL                         R14 5
      106 MOVE                             R15 R11
      107 CALL                             R14 1 1
      108 JUMPIFNOT                        R14 ; [+9]
      109 LOADK                            R12 K26 ["ModerationFailed"]
      110 LOADK                            R14 K27 ["Error while polling job status: (code 0001) id=%*"]
      111 GETTABLEKS                       R16 R11 K28 ["primitiveGenerationId"]
      113 NAMECALL                         R14 R14 K6 ["format"]
      115 CALL                             R14 2 1
      116 MOVE                             R13 R14
      117 JUMP                             ; [+14]
      118 LOADK                            R14 K29 ["Error while polling job status: status=%* message=%* id=%*"]
      119 GETTABLEKS                       R16 R10 K25 ["StatusCode"]
      121 GETUPVAL                         R17 6
      122 GETTABLEKS                       R17 R17 K30 ["toString"]
      124 MOVE                             R18 R11
      125 CALL                             R17 1 1
      126 GETTABLEKS                       R18 R11 K28 ["primitiveGenerationId"]
      128 NAMECALL                         R14 R14 K6 ["format"]
      130 CALL                             R14 4 1
      131 MOVE                             R13 R14
      132 DUPTABLE                         R14 K15 [{["status"] = "failed", ["errorText"], ["errorType"]}]
      133 SETTABLEKS                       R13 R14 K13 ["errorText"]
      135 SETTABLEKS                       R12 R14 K14 ["errorType"]
      137 RETURN                           R14 1
      138 GETUPVAL                         R11 4
      139 MOVE                             R12 R10
      140 LOADK                            R14 K31 ["pollJobStatus (statusCode=%*), jobId=%*"]
      141 GETTABLEKS                       R16 R10 K25 ["StatusCode"]
      143 MOVE                             R17 R0
      144 NAMECALL                         R14 R14 K6 ["format"]
      146 CALL                             R14 3 1
      147 MOVE                             R13 R14
      148 CALL                             R11 2 1
      149 GETTABLEKS                       R12 R11 K32 ["currentStage"]
      151 GETTABLEKS                       R14 R11 K7 ["status"]
      153 ORK                              R13 R14 K33 ["unknown"]
      154 JUMPIFNOT                        R3 ; [+5]
      155 MOVE                             R14 R3
      156 ADDK                             R15 R7 K34 [1]
      157 MOVE                             R16 R13
      158 MOVE                             R17 R12
      159 CALL                             R14 3 0
      160 JUMPIFNOT                        R2 ; [+7]
      161 JUMPIFNOT                        R12 ; [+6]
      162 JUMPIFEQ                         R12 R8 ; [+5]
      164 MOVE                             R8 R12
      165 MOVE                             R14 R2
      166 MOVE                             R15 R12
      167 CALL                             R14 1 0
      168 GETIMPORT                        R15 K37 [string.lower]
      170 MOVE                             R16 R13
      171 CALL                             R15 1 1
      172 GETIMPORT                        R16 K37 [string.lower]
      174 LOADK                            R17 K12 ["failed"]
      175 CALL                             R16 1 1
      176 JUMPIFEQ                         R15 R16 ; [+2]
      178 LOADB                            R14 0 +1
      179 LOADB                            R14 1
      180 JUMPIFNOT                        R14 ; [+12]
      181 GETUPVAL                         R14 7
      182 LOADK                            R16 K38 ["Job failed with status: %* and stage: %*, generationId=%*"]
      183 MOVE                             R18 R13
      184 GETTABLEKS                       R19 R11 K32 ["currentStage"]
      186 MOVE                             R20 R0
      187 NAMECALL                         R16 R16 K6 ["format"]
      189 CALL                             R16 4 1
      190 MOVE                             R15 R16
      191 CALL                             R14 1 -1
      192 RETURN                           R14 -1
      193 GETIMPORT                        R15 K37 [string.lower]
      195 MOVE                             R16 R13
      196 CALL                             R15 1 1
      197 GETIMPORT                        R16 K37 [string.lower]
      199 LOADK                            R17 K39 ["completed"]
      200 CALL                             R16 1 1
      201 JUMPIFEQ                         R15 R16 ; [+2]
      203 LOADB                            R14 0 +1
      204 LOADB                            R14 1
      205 JUMPIFNOT                        R14 ; [+68]
      206 GETTABLEKS                       R16 R11 K40 ["result"]
      208 FASTCALL1                        TYPE R16 ; [+2]
      209 GETIMPORT                        R15 K42 [type]
      211 CALL                             R15 1 1
      212 JUMPIFNOTEQKS                    R15 K43 ["table"] ; [+4]
      214 GETTABLEKS                       R14 R11 K40 ["result"]
      216 JUMP                             ; [+2]
      217 NEWTABLE                         R14 0 0
      219 GETUPVAL                         R15 3
      220 GETTABLEKS                       R15 R15 K21 ["appendLog"]
      222 MOVE                             R16 R0
      223 LOADK                            R18 K44 ["Polling job resultData:%*"]
      224 GETUPVAL                         R20 6
      225 GETTABLEKS                       R20 R20 K30 ["toString"]
      227 MOVE                             R21 R14
      228 CALL                             R20 1 1
      229 NAMECALL                         R18 R18 K6 ["format"]
      231 CALL                             R18 2 1
      232 MOVE                             R17 R18
      233 CALL                             R15 2 0
      234 GETTABLEKS                       R15 R14 K45 ["script"]
      236 JUMPIFNOT                        R15 ; [+2]
      237 JUMPIFNOTEQKS                    R15 K3 [""] ; [+15]
      239 GETUPVAL                         R16 7
      240 LOADK                            R18 K46 ["No script URL found in completed job response: %*, generationId=%*"]
      241 GETUPVAL                         R20 6
      242 GETTABLEKS                       R20 R20 K30 ["toString"]
      244 MOVE                             R21 R14
      245 CALL                             R20 1 1
      246 MOVE                             R21 R0
      247 NAMECALL                         R18 R18 K6 ["format"]
      249 CALL                             R18 3 1
      250 MOVE                             R17 R18
      251 CALL                             R16 1 -1
      252 RETURN                           R16 -1
      253 GETTABLEKS                       R16 R14 K47 ["dependencyVersion"]
      255 GETTABLEKS                       R17 R14 K48 ["dependencies"]
      257 GETUPVAL                         R18 8
      258 GETTABLEKS                       R18 R18 K49 ["parseScriptPreviewS3Urls"]
      260 MOVE                             R19 R14
      261 CALL                             R18 1 1
      262 DUPTABLE                         R19 K53 [{["status"] = "success", ["currentStage"], ["scriptUrl"], ["dependencyVersion"], ["dependencies"], ["scriptPreviewS3Urls"]}]
      263 SETTABLEKS                       R12 R19 K32 ["currentStage"]
      265 SETTABLEKS                       R15 R19 K51 ["scriptUrl"]
      267 SETTABLEKS                       R16 R19 K47 ["dependencyVersion"]
      269 SETTABLEKS                       R17 R19 K48 ["dependencies"]
      271 SETTABLEKS                       R18 R19 K52 ["scriptPreviewS3Urls"]
      273 RETURN                           R19 1
      274 MOVE                             R14 R1
      275 CALL                             R14 0 1
      276 JUMPIFNOT                        R14 ; [+2]
      277 DUPTABLE                         R14 K9 [{["status"] = "cancelled"}]
      278 RETURN                           R14 1
      279 ADDK                             R7 R7 K34 [1]
      280 GETIMPORT                        R14 K56 [task.wait]
      282 GETUPVAL                         R16 1
      283 GETTABLEKS                       R16 R16 K58 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      285 DIVK                             R15 R16 K57 [1000]
      286 CALL                             R14 1 0
      287 JUMPBACK                         ; [-256]
      288 DUPTABLE                         R9 K15 [{["status"] = "failed", ["errorText"], ["errorType"]}]
      289 LOADK                            R11 K59 ["Polling timed out after %* attempts, generationId=%*"]
      290 LOADN                            R13 300
      291 MOVE                             R14 R0
      292 NAMECALL                         R11 R11 K6 ["format"]
      294 CALL                             R11 3 1
      295 MOVE                             R10 R11
      296 SETTABLEKS                       R10 R9 K13 ["errorText"]
      298 GETUPVAL                         R11 1
      299 GETTABLEKS                       R11 R11 K17 ["FFlagPrimGenBetterErrorType"]
      301 JUMPIFNOT                        R11 ; [+2]
      302 LOADK                            R10 K18 ["PollFailed"]
      303 JUMP                             ; [+1]
      304 LOADK                            R10 K19 ["General"]
      305 SETTABLEKS                       R10 R9 K14 ["errorType"]
      307 RETURN                           R9 1

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
        6 GETTABLEKS                       R4 R4 K3 ["FFlagDebugMockPrimitiveGenBackend"]
        8 JUMPIFNOT                        R4 ; [+13]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K4 ["get"]
       12 CALL                             R4 0 1
       13 GETTABLEKS                       R4 R4 K5 ["getMockPrimGenBackendData"]
       15 CALL                             R4 0 1
       16 GETIMPORT                        R5 K7 [warn]
       18 LOADK                            R6 K8 ["pollForScriptAsync"]
       19 MOVE                             R7 R4
       20 CALL                             R5 2 0
       21 RETURN                           R4 1
       22 GETUPVAL                         R4 2
       23 MOVE                             R5 R0
       24 MOVE                             R6 R1
       25 MOVE                             R7 R2
       26 MOVE                             R8 R3
       27 CALL                             R4 4 1
       28 GETTABLEKS                       R5 R4 K0 ["status"]
       30 JUMPIFNOTEQKS                    R5 K1 ["cancelled"] ; [+3]
       32 DUPTABLE                         R5 K2 [{[1] = "cancelled"}]
       33 RETURN                           R5 1
       34 GETTABLEKS                       R5 R4 K0 ["status"]
       36 JUMPIFNOTEQKS                    R5 K9 ["failed"] ; [+2]
       38 RETURN                           R4 1
       39 GETTABLEKS                       R5 R4 K10 ["dependencies"]
       41 JUMPIFNOT                        R5 ; [+8]
       42 GETTABLEKS                       R7 R4 K10 ["dependencies"]
       44 LENGTH                           R6 R7
       45 LOADN                            R7 0
       46 JUMPIFLT                         R7 R6 ; [+2]
       48 LOADB                            R5 0 +1
       49 LOADB                            R5 1
       50 LOADNIL                          R6
       51 JUMPIFNOT                        R5 ; [+19]
       52 MOVE                             R7 R2
       53 GETUPVAL                         R8 3
       54 GETTABLEKS                       R8 R8 K11 ["ResolvingDependencies"]
       56 CALL                             R7 1 0
       57 GETTABLEKS                       R8 R4 K10 ["dependencies"]
       59 FASTCALL2K                       ASSERT R8 K12 ; [+4]
       61 LOADK                            R9 K12 ["Dependencies are required"]
       62 GETIMPORT                        R7 K14 [assert]
       64 CALL                             R7 2 0
       65 GETUPVAL                         R7 4
       66 MOVE                             R8 R0
       67 GETTABLEKS                       R9 R4 K10 ["dependencies"]
       69 CALL                             R7 2 1
       70 MOVE                             R6 R7
       71 GETTABLEKS                       R7 R4 K15 ["scriptUrl"]
       73 JUMPIF                           R7 ; [+4]
       74 GETUPVAL                         R7 5
       75 LOADK                            R8 K16 ["No script URL found in response"]
       76 CALL                             R7 1 -1
       77 RETURN                           R7 -1
       78 MOVE                             R7 R2
       79 GETUPVAL                         R8 3
       80 GETTABLEKS                       R8 R8 K17 ["DownloadingScript"]
       82 CALL                             R7 1 0
       83 GETUPVAL                         R7 6
       84 GETTABLEKS                       R8 R4 K15 ["scriptUrl"]
       86 CALL                             R7 1 1
       87 DUPTABLE                         R8 K23 [{[1] = "success", ["luauCode"], ["dependencyVersion"], ["resolvedDependencies"], ["scriptPreviewS3Urls"]}]
       88 SETTABLEKS                       R7 R8 K19 ["luauCode"]
       90 GETTABLEKS                       R9 R4 K20 ["dependencyVersion"]
       92 SETTABLEKS                       R9 R8 K20 ["dependencyVersion"]
       94 SETTABLEKS                       R6 R8 K21 ["resolvedDependencies"]
       96 GETTABLEKS                       R9 R4 K22 ["scriptPreviewS3Urls"]
       98 SETTABLEKS                       R9 R8 K22 ["scriptPreviewS3Urls"]
      100 RETURN                           R8 1

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
       18 JUMPIFNOT                        R3 ; [+22]
       19 DUPTABLE                         R5 K10 [{["status"] = "failed", ["errorText"], ["errorType"]}]
       20 LOADK                            R7 K11 ["Failed to add workspace model: %*"]
       21 GETTABLEKS                       R9 R4 K12 ["error"]
       23 NAMECALL                         R7 R7 K13 ["format"]
       25 CALL                             R7 2 1
       26 MOVE                             R6 R7
       27 SETTABLEKS                       R6 R5 K8 ["errorText"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K14 ["FFlagPrimGenBetterErrorType"]
       32 JUMPIFNOT                        R7 ; [+4]
       33 GETUPVAL                         R6 1
       34 MOVE                             R7 R4
       35 CALL                             R6 1 1
       36 JUMP                             ; [+1]
       37 LOADK                            R6 K15 ["General"]
       38 SETTABLEKS                       R6 R5 K9 ["errorType"]
       40 RETURN                           R5 1
       41 DUPTABLE                         R5 K10 [{["status"] = "failed", ["errorText"], ["errorType"]}]
       42 LOADK                            R7 K11 ["Failed to add workspace model: %*"]
       43 MOVE                             R9 R4
       44 NAMECALL                         R7 R7 K13 ["format"]
       46 CALL                             R7 2 1
       47 MOVE                             R6 R7
       48 SETTABLEKS                       R6 R5 K8 ["errorText"]
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K14 ["FFlagPrimGenBetterErrorType"]
       53 JUMPIFNOT                        R7 ; [+4]
       54 GETUPVAL                         R6 1
       55 MOVE                             R7 R4
       56 CALL                             R6 1 1
       57 JUMP                             ; [+1]
       58 LOADK                            R6 K15 ["General"]
       59 SETTABLEKS                       R6 R5 K9 ["errorType"]
       61 RETURN                           R5 1

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
       22 JUMPIFNOTEQKS                    R1 K4 ["success"] ; [+68]
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
       47 GETTABLEKS                       R1 R1 K11 ["FFlagPrimGenAllowReInsert"]
       49 JUMPIFNOT                        R1 ; [+12]
       50 GETUPVAL                         R1 3
       51 GETTABLEKS                       R1 R1 K12 ["updateWidget"]
       53 NEWCLOSURE                       R2 P0
       54 CAPTURE                          UPVAL U9
       55 CAPTURE                          UPVAL U10
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U11
       58 CAPTURE                          UPVAL U12
       59 CAPTURE                          UPVAL U1
       60 CALL                             R1 1 0
       61 JUMP                             ; [+8]
       62 GETUPVAL                         R1 3
       63 GETTABLEKS                       R1 R1 K12 ["updateWidget"]
       65 NEWCLOSURE                       R2 P1
       66 CAPTURE                          UPVAL U10
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U1
       69 CALL                             R1 1 0
       70 GETUPVAL                         R1 6
       71 GETTABLEKS                       R1 R1 K13 ["bridge"]
       73 GETTABLEKS                       R1 R1 K14 ["listenToLinkChanges"]
       75 DUPTABLE                         R2 K17 [{"generationId", "name"}]
       76 GETUPVAL                         R3 1
       77 SETTABLEKS                       R3 R2 K15 ["generationId"]
       79 GETTABLEKS                       R3 R0 K6 ["resultName"]
       81 SETTABLEKS                       R3 R2 K16 ["name"]
       83 CALL                             R1 1 0
       84 GETUPVAL                         R1 13
       85 GETUPVAL                         R2 14
       86 GETUPVAL                         R3 15
       87 DUPTABLE                         R4 K19 [{["success"] = True}]
       88 CALL                             R2 2 -1
       89 CALL                             R1 -1 0
       90 RETURN                           R0 0
       91 LOADK                            R2 K20 ["Execute generated code failed with error: %*, generationId=%*"]
       92 GETTABLEKS                       R4 R0 K21 ["errorText"]
       94 GETUPVAL                         R5 1
       95 NAMECALL                         R2 R2 K10 ["format"]
       97 CALL                             R2 3 1
       98 MOVE                             R1 R2
       99 GETTABLEKS                       R2 R0 K22 ["errorType"]
      101 JUMPIFNOTEQKS                    R2 K23 ["DmIsUnreachable"] ; [+44]
      103 GETTABLEKS                       R2 R0 K21 ["errorText"]
      105 MOVE                             R3 R1
      106 GETUPVAL                         R4 8
      107 GETTABLEKS                       R4 R4 K24 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
      109 JUMPIFNOT                        R4 ; [+22]
      110 JUMPIFNOT                        R2 ; [+9]
      111 JUMPIFEQKS                       R2 K25 [""] ; [+8]
      113 LOADK                            R5 K26 [" Details: %*"]
      114 MOVE                             R7 R2
      115 NAMECALL                         R5 R5 K10 ["format"]
      117 CALL                             R5 2 1
      118 MOVE                             R4 R5
      119 JUMP                             ; [+1]
      120 LOADK                            R4 K25 [""]
      121 LOADK                            R9 K27 ["The Asset DataModel is not reachable right now.%* "]
      122 MOVE                             R11 R4
      123 NAMECALL                         R9 R9 K10 ["format"]
      125 CALL                             R9 2 1
      126 MOVE                             R5 R9
      127 LOADK                            R6 K28 ["It may be paused at a breakpoint, busy running another task, or unavailable because Studio is in Play/Test mode. "]
      128 LOADK                            R7 K29 ["Please stop play test if it is running, resume or clear any breakpoints, then run /run print(\"hi\") to confirm the Asset DataModel is reachable."]
      129 LOADK                            R8 K30 ["If it still fails, restart Roblox Studio and try this tool again."]
      130 CONCAT                           R1 R5 R8
      131 JUMP                             ; [+14]
      132 JUMPIFNOT                        R3 ; [+2]
      133 MOVE                             R1 R3
      134 JUMP                             ; [+11]
      135 JUMPIFNOT                        R2 ; [+9]
      136 JUMPIFEQKS                       R2 K25 [""] ; [+8]
      138 LOADK                            R4 K31 ["Asset datamodel is not reachable: %*"]
      139 MOVE                             R6 R2
      140 NAMECALL                         R4 R4 K10 ["format"]
      142 CALL                             R4 2 1
      143 MOVE                             R1 R4
      144 JUMP                             ; [+1]
      145 LOADK                            R1 K32 ["Asset datamodel is not reachable"]
      146 GETUPVAL                         R2 8
      147 GETTABLEKS                       R2 R2 K11 ["FFlagPrimGenAllowReInsert"]
      149 JUMPIFNOT                        R2 ; [+34]
      150 DUPTABLE                         R2 K36 [{"description", "onRetryText", "onRetryClick"}]
      151 GETUPVAL                         R3 11
      152 LOADK                            R5 K37 ["PrimitiveGen"]
      153 LOADK                            R6 K38 ["InsertionFailedRetryPrompt"]
      154 NAMECALL                         R3 R3 K39 ["getText"]
      156 CALL                             R3 3 1
      157 SETTABLEKS                       R3 R2 K33 ["description"]
      159 GETUPVAL                         R3 11
      160 LOADK                            R5 K37 ["PrimitiveGen"]
      161 LOADK                            R6 K40 ["RetryYes"]
      162 NAMECALL                         R3 R3 K39 ["getText"]
      164 CALL                             R3 3 1
      165 SETTABLEKS                       R3 R2 K34 ["onRetryText"]
      167 NEWCLOSURE                       R3 P2
      168 CAPTURE                          UPVAL U12
      169 SETTABLEKS                       R3 R2 K35 ["onRetryClick"]
      171 GETGLOBAL                        R3 K41 ["reportGenerationError"]
      173 GETTABLEKS                       R4 R0 K22 ["errorType"]
      175 MOVE                             R5 R1
      176 GETUPVAL                         R6 1
      177 GETUPVAL                         R7 16
      178 GETUPVAL                         R8 15
      179 GETUPVAL                         R9 6
      180 GETUPVAL                         R10 3
      181 MOVE                             R11 R2
      182 CALL                             R3 8 0
      183 RETURN                           R0 0
      184 GETGLOBAL                        R2 K41 ["reportGenerationError"]
      186 GETTABLEKS                       R3 R0 K22 ["errorType"]
      188 MOVE                             R4 R1
      189 GETUPVAL                         R5 1
      190 GETUPVAL                         R6 16
      191 GETUPVAL                         R7 15
      192 GETUPVAL                         R8 6
      193 GETUPVAL                         R9 3
      194 CALL                             R2 7 0
      195 RETURN                           R0 0

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
       30 JUMPIF                           R8 ; [+23]
       31 GETGLOBAL                        R10 K8 ["reportGenerationError"]
       33 GETUPVAL                         R12 4
       34 GETTABLEKS                       R12 R12 K9 ["FFlagPrimGenBetterErrorType"]
       36 JUMPIFNOT                        R12 ; [+4]
       37 GETUPVAL                         R11 5
       38 MOVE                             R12 R9
       39 CALL                             R11 1 1
       40 JUMP                             ; [+1]
       41 LOADK                            R11 K10 ["General"]
       42 FASTCALL1                        TOSTRING R9 ; [+3]
       43 MOVE                             R13 R9
       44 GETIMPORT                        R12 K12 [tostring]
       46 CALL                             R12 1 1
       47 MOVE                             R13 R1
       48 MOVE                             R14 R2
       49 MOVE                             R15 R3
       50 MOVE                             R16 R0
       51 MOVE                             R17 R4
       52 CALL                             R10 7 0
       53 RETURN                           R0 0
       54 GETTABLEKS                       R10 R9 K13 ["status"]
       56 JUMPIFNOTEQKS                    R10 K14 ["failed"] ; [+20]
       58 GETGLOBAL                        R10 K8 ["reportGenerationError"]
       60 GETUPVAL                         R12 4
       61 GETTABLEKS                       R12 R12 K9 ["FFlagPrimGenBetterErrorType"]
       63 JUMPIFNOT                        R12 ; [+3]
       64 GETTABLEKS                       R11 R9 K15 ["errorType"]
       66 JUMP                             ; [+1]
       67 LOADK                            R11 K10 ["General"]
       68 GETTABLEKS                       R12 R9 K16 ["errorText"]
       70 MOVE                             R13 R1
       71 MOVE                             R14 R2
       72 MOVE                             R15 R3
       73 MOVE                             R16 R0
       74 MOVE                             R17 R4
       75 CALL                             R10 7 0
       76 RETURN                           R0 0
       77 GETTABLEKS                       R10 R9 K13 ["status"]
       79 JUMPIFNOTEQKS                    R10 K17 ["cancelled"] ; [+22]
       81 GETUPVAL                         R10 0
       82 GETTABLEKS                       R10 R10 K4 ["updateJobStatus"]
       84 MOVE                             R11 R1
       85 GETUPVAL                         R12 1
       86 GETTABLEKS                       R12 R12 K18 ["Cancelled"]
       88 CALL                             R10 2 0
       89 GETTABLEKS                       R10 R4 K19 ["setPreviewState"]
       91 GETUPVAL                         R11 6
       92 GETTABLEKS                       R11 R11 K18 ["Cancelled"]
       94 CALL                             R10 1 0
       95 MOVE                             R10 R6
       96 GETUPVAL                         R11 7
       97 MOVE                             R12 R3
       98 DUPTABLE                         R13 K26 [{["success"] = False, ["errorMessage"] = "Generation cancelled by user", ["errorCode"] = "CancelByUser"}]
       99 CALL                             R11 2 -1
      100 CALL                             R10 -1 0
      101 RETURN                           R0 0
      102 GETUPVAL                         R10 4
      103 GETTABLEKS                       R10 R10 K27 ["FFlagPrimGenCarouselPreview"]
      105 JUMPIF                           R10 ; [+37]
      106 GETTABLEKS                       R10 R9 K13 ["status"]
      108 JUMPIFNOTEQKS                    R10 K20 ["success"] ; [+34]
      110 GETTABLEKS                       R10 R9 K28 ["scriptPreviewS3Urls"]
      112 JUMPIFNOT                        R10 ; [+30]
      113 GETTABLEKS                       R11 R9 K28 ["scriptPreviewS3Urls"]
      115 LENGTH                           R10 R11
      116 LOADN                            R11 0
      117 JUMPIFNOTLT                      R11 R10 ; [+25]
      119 GETTABLEKS                       R10 R9 K28 ["scriptPreviewS3Urls"]
      121 GETIMPORT                        R11 K31 [table.create]
      123 LENGTH                           R12 R10
      124 CALL                             R11 1 1
      125 LENGTH                           R14 R10
      126 LOADN                            R12 1
      127 LOADN                            R13 -1
      128 FORNPREP                         R12
      129 GETTABLE                         R17 R10 R14
      130 FASTCALL2                        TABLE_INSERT R11 R17 ; [+4]
      132 MOVE                             R16 R11
      133 GETIMPORT                        R15 K33 [table.insert]
      135 CALL                             R15 2 0
      136 FORNLOOP                         R12
      137 GETUPVAL                         R12 8
      138 GETTABLEKS                       R12 R12 K34 ["fetchPreviewImages"]
      140 MOVE                             R13 R11
      141 MOVE                             R14 R4
      142 CALL                             R12 2 0
      143 LOADNIL                          R10
      144 NEWCLOSURE                       R11 P2
      145 CAPTURE                          UPVAL U0
      146 CAPTURE                          VAL R1
      147 CAPTURE                          UPVAL U1
      148 CAPTURE                          VAL R4
      149 CAPTURE                          UPVAL U9
      150 CAPTURE                          UPVAL U10
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R9
      153 CAPTURE                          UPVAL U4
      154 CAPTURE                          UPVAL U11
      155 CAPTURE                          UPVAL U6
      156 CAPTURE                          UPVAL U12
      157 CAPTURE                          REF R10
      158 CAPTURE                          VAL R6
      159 CAPTURE                          UPVAL U7
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R2
      162 MOVE                             R10 R11
      163 GETUPVAL                         R12 4
      164 GETTABLEKS                       R12 R12 K35 ["FFlagPrimGenRetryInPlayTest"]
      166 JUMPIFNOT                        R12 ; [+60]
      167 GETTABLEKS                       R12 R0 K0 ["initArgs"]
      169 GETTABLEKS                       R12 R12 K1 ["environment"]
      171 GETTABLEKS                       R12 R12 K36 ["getStudioPlayState"]
      173 CALL                             R12 0 1
      174 JUMPIFNOT                        R12 ; [+52]
      175 GETUPVAL                         R13 0
      176 GETTABLEKS                       R13 R13 K4 ["updateJobStatus"]
      178 MOVE                             R14 R1
      179 GETUPVAL                         R15 1
      180 GETTABLEKS                       R15 R15 K18 ["Cancelled"]
      182 CALL                             R13 2 0
      183 LOADNIL                          R13
      184 DUPTABLE                         R14 K41 [{["description"], ["onRetryText"], ["onRetryClick"], ["isRunning"] = False}]
      185 GETUPVAL                         R15 12
      186 LOADK                            R17 K42 ["PrimitiveGen"]
      187 LOADK                            R18 K43 ["GenerationCancelledPlayModeRetryPrompt"]
      188 NAMECALL                         R15 R15 K44 ["getText"]
      190 CALL                             R15 3 1
      191 SETTABLEKS                       R15 R14 K37 ["description"]
      193 GETUPVAL                         R15 12
      194 LOADK                            R17 K42 ["PrimitiveGen"]
      195 LOADK                            R18 K45 ["RetryYes"]
      196 NAMECALL                         R15 R15 K44 ["getText"]
      198 CALL                             R15 3 1
      199 SETTABLEKS                       R15 R14 K38 ["onRetryText"]
      201 NEWCLOSURE                       R15 P3
      202 CAPTURE                          VAL R0
      203 CAPTURE                          REF R13
      204 CAPTURE                          VAL R4
      205 CAPTURE                          UPVAL U6
      206 CAPTURE                          REF R10
      207 SETTABLEKS                       R15 R14 K39 ["onRetryClick"]
      209 MOVE                             R13 R14
      210 GETTABLEKS                       R14 R4 K19 ["setPreviewState"]
      212 GETUPVAL                         R15 6
      213 GETTABLEKS                       R15 R15 K18 ["Cancelled"]
      215 LOADK                            R16 K46 [""]
      216 MOVE                             R17 R13
      217 CALL                             R14 3 0
      218 MOVE                             R14 R6
      219 GETUPVAL                         R15 7
      220 MOVE                             R16 R3
      221 DUPTABLE                         R17 K49 [{["success"] = False, ["errorMessage"] = "Generation cancelled (Studio left edit mode)", ["errorCode"] = "StudioLeftEditMode"}]
      222 CALL                             R15 2 -1
      223 CALL                             R14 -1 0
      224 CLOSEUPVALS                      R10
      225 RETURN                           R0 0
      226 CLOSEUPVALS                      R13
      227 MOVE                             R12 R10
      228 CALL                             R12 0 0
      229 CLOSEUPVALS                      R10
      230 RETURN                           R0 0

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
        8 GETTABLEKS                       R6 R6 K2 ["FFlagAssistantGen3dAutoSegmentation"]
       10 JUMPIFNOT                        R6 ; [+43]
       11 GETTABLEKS                       R6 R1 K3 ["segmentation"]
       13 JUMPIF                           R6 ; [+8]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K4 ["inferUISegmentation"]
       17 GETTABLEKS                       R7 R1 K5 ["suggestSegmentation"]
       19 GETTABLEKS                       R8 R1 K6 ["partNames"]
       21 CALL                             R6 2 1
       22 GETIMPORT                        R7 K8 [pcall]
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K9 ["resolveSegmentationAsync"]
       27 MOVE                             R9 R6
       28 GETTABLEKS                       R10 R1 K6 ["partNames"]
       30 MOVE                             R11 R4
       31 LOADNIL                          R12
       32 CALL                             R7 5 2
       33 JUMPIF                           R7 ; [+18]
       34 GETUPVAL                         R9 3
       35 CALL                             R9 0 1
       36 FASTCALL1                        TOSTRING R8 ; [+3]
       37 MOVE                             R12 R8
       38 GETIMPORT                        R11 K11 [tostring]
       40 CALL                             R11 1 1
       41 NAMECALL                         R9 R9 K12 ["addText"]
       43 CALL                             R9 2 1
       44 LOADB                            R11 1
       45 NAMECALL                         R9 R9 K13 ["setError"]
       47 CALL                             R9 2 1
       48 NAMECALL                         R9 R9 K14 ["build"]
       50 CALL                             R9 1 -1
       51 RETURN                           R9 -1
       52 MOVE                             R5 R8
       53 JUMP                             ; [+13]
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R6 R6 K15 ["FFlagPrimGenSchemaSelector"]
       57 JUMPIFNOT                        R6 ; [+8]
       58 GETUPVAL                         R6 2
       59 GETTABLEKS                       R6 R6 K16 ["parsePartNames"]
       61 GETTABLEKS                       R7 R1 K6 ["partNames"]
       63 CALL                             R6 1 1
       64 MOVE                             R5 R6
       65 JUMP                             ; [+1]
       66 LOADNIL                          R5
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K17 ["FFlagAssistantGen3DTelemetryV2"]
       70 LOADB                            R7 0
       71 FASTCALL1                        TYPEOF R4 ; [+3]
       72 MOVE                             R9 R4
       73 GETIMPORT                        R8 K19 [typeof]
       75 CALL                             R8 1 1
       76 JUMPIFNOTEQKS                    R8 K20 ["string"] ; [+7]
       78 LENGTH                           R8 R4
       79 LOADN                            R9 0
       80 JUMPIFLT                         R9 R8 ; [+2]
       82 LOADB                            R7 0 +1
       83 LOADB                            R7 1
       84 LOADB                            R8 1
       85 GETTABLEKS                       R9 R1 K21 ["attachedImageUri"]
       87 JUMPIFNOTEQKNIL                  R9 ; [+7]
       89 GETTABLEKS                       R9 R1 K22 ["hintImage"]
       91 JUMPIFNOTEQKNIL                  R9 ; [+2]
       93 LOADB                            R8 0 +1
       94 LOADB                            R8 1
       95 DUPTABLE                         R9 K31 [{"requestId", "conversationId", "toolId", "prompt", "hasImage", "modelFlow", "inputFormat", "segmentationEnabled", "finalParts"}]
       96 GETTABLEKS                       R11 R0 K32 ["callArgs"]
       98 GETTABLEKS                       R11 R11 K33 ["messageGuid"]
      100 ORK                              R10 R11 K0 [""]
      101 SETTABLEKS                       R10 R9 K23 ["requestId"]
      103 GETTABLEKS                       R11 R0 K32 ["callArgs"]
      105 GETTABLEKS                       R11 R11 K34 ["sessionId"]
      107 ORK                              R10 R11 K0 [""]
      108 SETTABLEKS                       R10 R9 K24 ["conversationId"]
      110 GETTABLEKS                       R10 R0 K32 ["callArgs"]
      112 GETTABLEKS                       R10 R10 K25 ["toolId"]
      114 SETTABLEKS                       R10 R9 K25 ["toolId"]
      116 SETTABLEKS                       R4 R9 K1 ["prompt"]
      118 SETTABLEKS                       R8 R9 K26 ["hasImage"]
      120 JUMPIFNOT                        R6 ; [+2]
      121 LOADK                            R10 K35 ["procedural"]
      122 JUMP                             ; [+1]
      123 LOADNIL                          R10
      124 SETTABLEKS                       R10 R9 K27 ["modelFlow"]
      126 JUMPIF                           R6 ; [+2]
      127 LOADNIL                          R10
      128 JUMP                             ; [+8]
      129 JUMPIFNOT                        R7 ; [+3]
      130 JUMPIFNOT                        R8 ; [+2]
      131 LOADK                            R10 K36 ["text+image"]
      132 JUMP                             ; [+4]
      133 JUMPIFNOT                        R8 ; [+2]
      134 LOADK                            R10 K37 ["image"]
      135 JUMP                             ; [+1]
      136 LOADK                            R10 K38 ["text"]
      137 SETTABLEKS                       R10 R9 K28 ["inputFormat"]
      139 JUMPIFNOT                        R6 ; [+10]
      140 LOADB                            R10 0
      141 JUMPIFEQKNIL                     R5 ; [+9]
      143 LENGTH                           R11 R5
      144 LOADN                            R12 0
      145 JUMPIFLT                         R12 R11 ; [+2]
      147 LOADB                            R10 0 +1
      148 LOADB                            R10 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R10
      151 SETTABLEKS                       R10 R9 K29 ["segmentationEnabled"]
      153 JUMPIFNOT                        R6 ; [+2]
      154 MOVE                             R10 R5
      155 JUMP                             ; [+1]
      156 LOADNIL                          R10
      157 SETTABLEKS                       R10 R9 K30 ["finalParts"]
      159 GETUPVAL                         R10 1
      160 GETTABLEKS                       R10 R10 K39 ["FFlagAssistantVersionMismatchWarning"]
      162 JUMPIFNOT                        R10 ; [+33]
      163 GETUPVAL                         R10 1
      164 GETTABLEKS                       R10 R10 K40 ["FFlagPrimGenVersionMismatchError"]
      166 JUMPIFNOT                        R10 ; [+29]
      167 GETUPVAL                         R10 4
      168 GETTABLEKS                       R10 R10 K41 ["getVersionMismatch"]
      170 CALL                             R10 0 1
      171 JUMPIFNOT                        R10 ; [+24]
      172 GETGLOBAL                        R10 K42 ["reportGenerationError"]
      174 LOADK                            R11 K43 ["PluginVersionMismatch"]
      175 LOADK                            R12 K44 ["The Assistant plugin just got new patch, please restart RobloxStudio."]
      176 LOADNIL                          R13
      177 MOVE                             R14 R4
      178 MOVE                             R15 R9
      179 MOVE                             R16 R0
      180 MOVE                             R17 R3
      181 CALL                             R10 7 0
      182 GETUPVAL                         R10 3
      183 CALL                             R10 0 1
      184 LOADK                            R12 K44 ["The Assistant plugin just got new patch, please restart RobloxStudio."]
      185 NAMECALL                         R10 R10 K12 ["addText"]
      187 CALL                             R10 2 1
      188 LOADB                            R12 1
      189 NAMECALL                         R10 R10 K13 ["setError"]
      191 CALL                             R10 2 1
      192 NAMECALL                         R10 R10 K14 ["build"]
      194 CALL                             R10 1 -1
      195 RETURN                           R10 -1
      196 GETUPVAL                         R10 1
      197 GETTABLEKS                       R10 R10 K40 ["FFlagPrimGenVersionMismatchError"]
      199 JUMPIFNOT                        R10 ; [+89]
      200 GETIMPORT                        R10 K8 [pcall]
      202 NEWCLOSURE                       R11 P0
      203 CAPTURE                          VAL R0
      204 CALL                             R10 1 2
      205 JUMPIFNOT                        R10 ; [+3]
      206 GETTABLEKS                       R12 R11 K45 ["success"]
      208 JUMPIF                           R12 ; [+80]
      209 JUMPIFNOT                        R10 ; [+4]
      210 GETTABLEKS                       R13 R11 K47 ["error"]
      212 ORK                              R12 R13 K46 ["Unknown error"]
      213 JUMP                             ; [+5]
      214 FASTCALL1                        TOSTRING R11 ; [+3]
      215 MOVE                             R13 R11
      216 GETIMPORT                        R12 K11 [tostring]
      218 CALL                             R12 1 1
      219 GETUPVAL                         R14 1
      220 GETTABLEKS                       R14 R14 K48 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
      222 JUMPIFNOT                        R14 ; [+22]
      223 JUMPIFNOT                        R12 ; [+9]
      224 JUMPIFEQKS                       R12 K0 [""] ; [+8]
      226 LOADK                            R15 K49 [" Details: %*"]
      227 MOVE                             R17 R12
      228 NAMECALL                         R15 R15 K50 ["format"]
      230 CALL                             R15 2 1
      231 MOVE                             R14 R15
      232 JUMP                             ; [+1]
      233 LOADK                            R14 K0 [""]
      234 LOADK                            R19 K51 ["The Asset DataModel is not reachable right now.%* "]
      235 MOVE                             R21 R14
      236 NAMECALL                         R19 R19 K50 ["format"]
      238 CALL                             R19 2 1
      239 MOVE                             R15 R19
      240 LOADK                            R16 K52 ["It may be paused at a breakpoint, busy running another task, or unavailable because Studio is in Play/Test mode. "]
      241 LOADK                            R17 K53 ["Please stop play test if it is running, resume or clear any breakpoints, then run /run print(\"hi\") to confirm the Asset DataModel is reachable."]
      242 LOADK                            R18 K54 ["If it still fails, restart Roblox Studio and try this tool again."]
      243 CONCAT                           R13 R15 R18
      244 JUMP                             ; [+11]
      245 JUMPIFNOT                        R12 ; [+9]
      246 JUMPIFEQKS                       R12 K0 [""] ; [+8]
      248 LOADK                            R14 K55 ["Asset datamodel is not reachable: %*"]
      249 MOVE                             R16 R12
      250 NAMECALL                         R14 R14 K50 ["format"]
      252 CALL                             R14 2 1
      253 MOVE                             R13 R14
      254 JUMP                             ; [+1]
      255 LOADK                            R13 K56 ["Asset datamodel is not reachable"]
      256 GETUPVAL                         R14 1
      257 GETTABLEKS                       R14 R14 K57 ["FFlagDebugPrimGenDMNoReachable"]
      259 JUMPIFNOT                        R14 ; [+5]
      260 GETIMPORT                        R14 K60 [task.spawn]
      262 NEWCLOSURE                       R15 P1
      263 CAPTURE                          VAL R13
      264 CALL                             R14 1 0
      265 GETGLOBAL                        R14 K42 ["reportGenerationError"]
      267 LOADK                            R15 K61 ["DmHealthChecking"]
      268 MOVE                             R16 R13
      269 LOADNIL                          R17
      270 MOVE                             R18 R4
      271 MOVE                             R19 R9
      272 MOVE                             R20 R0
      273 MOVE                             R21 R3
      274 CALL                             R14 7 0
      275 GETUPVAL                         R14 3
      276 CALL                             R14 0 1
      277 MOVE                             R16 R13
      278 NAMECALL                         R14 R14 K12 ["addText"]
      280 CALL                             R14 2 1
      281 LOADB                            R16 1
      282 NAMECALL                         R14 R14 K13 ["setError"]
      284 CALL                             R14 2 1
      285 NAMECALL                         R14 R14 K14 ["build"]
      287 CALL                             R14 1 -1
      288 RETURN                           R14 -1
      289 GETUPVAL                         R10 1
      290 GETTABLEKS                       R10 R10 K62 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      292 GETUPVAL                         R11 5
      293 GETTABLEKS                       R11 R11 K63 ["getActiveJobCount"]
      295 CALL                             R11 0 1
      296 JUMPIFNOTLE                      R10 R11 ; [+46]
      298 GETUPVAL                         R12 6
      299 LOADK                            R14 K64 ["PrimitiveGen"]
      300 LOADK                            R15 K65 ["MaxConcurrentJobsError"]
      301 DUPTABLE                         R16 K68 [{"activeCount", "maxConcurrentJobs"}]
      302 GETIMPORT                        R17 K69 [string.format]
      304 LOADK                            R18 K70 ["%d"]
      305 MOVE                             R19 R11
      306 CALL                             R17 2 1
      307 SETTABLEKS                       R17 R16 K66 ["activeCount"]
      309 GETIMPORT                        R17 K69 [string.format]
      311 LOADK                            R18 K70 ["%d"]
      312 MOVE                             R19 R10
      313 CALL                             R17 2 1
      314 SETTABLEKS                       R17 R16 K67 ["maxConcurrentJobs"]
      316 NAMECALL                         R12 R12 K71 ["getText"]
      318 CALL                             R12 4 1
      319 GETGLOBAL                        R13 K42 ["reportGenerationError"]
      321 LOADK                            R14 K72 ["TooManyConcurrentJobs"]
      322 MOVE                             R15 R12
      323 LOADNIL                          R16
      324 MOVE                             R17 R4
      325 MOVE                             R18 R9
      326 MOVE                             R19 R0
      327 MOVE                             R20 R3
      328 CALL                             R13 7 0
      329 GETUPVAL                         R13 3
      330 CALL                             R13 0 1
      331 MOVE                             R15 R12
      332 NAMECALL                         R13 R13 K12 ["addText"]
      334 CALL                             R13 2 1
      335 LOADB                            R15 1
      336 NAMECALL                         R13 R13 K13 ["setError"]
      338 CALL                             R13 2 1
      339 NAMECALL                         R13 R13 K14 ["build"]
      341 CALL                             R13 1 -1
      342 RETURN                           R13 -1
      343 GETTABLEKS                       R12 R1 K22 ["hintImage"]
      345 JUMPIF                           R12 ; [+11]
      346 GETTABLEKS                       R13 R1 K21 ["attachedImageUri"]
      348 JUMPIF                           R13 ; [+2]
      349 LOADNIL                          R12
      350 JUMP                             ; [+6]
      351 GETUPVAL                         R14 7
      352 GETTABLEKS                       R14 R14 K73 ["getImage"]
      354 MOVE                             R15 R13
      355 CALL                             R14 1 1
      356 MOVE                             R12 R14
      357 DUPTABLE                         R13 K89 [{["type"], ["mode"], ["expanded"] = False, ["name"], ["displayName"], ["className"] = , ["previewImages"] = , ["previewState"], ["generationStage"], ["startTime"], ["onChipClicked"] = , ["retryInfo"] = , ["generationId"] = ""}]
      358 GETUPVAL                         R14 8
      359 GETTABLEKS                       R14 R14 K90 ["Type"]
      361 SETTABLEKS                       R14 R13 K74 ["type"]
      363 GETUPVAL                         R14 8
      364 GETTABLEKS                       R14 R14 K91 ["Modes"]
      366 GETTABLEKS                       R14 R14 K92 ["ShowPreview"]
      368 SETTABLEKS                       R14 R13 K75 ["mode"]
      370 SETTABLEKS                       R4 R13 K78 ["name"]
      372 LENGTH                           R15 R4
      373 LOADN                            R16 0
      374 JUMPIFNOTLT                      R16 R15 ; [+3]
      376 MOVE                             R14 R4
      377 JUMP                             ; [+6]
      378 GETUPVAL                         R14 6
      379 LOADK                            R16 K64 ["PrimitiveGen"]
      380 LOADK                            R17 K93 ["DefaultDisplayName"]
      381 NAMECALL                         R14 R14 K71 ["getText"]
      383 CALL                             R14 3 1
      384 SETTABLEKS                       R14 R13 K79 ["displayName"]
      386 GETUPVAL                         R14 9
      387 GETTABLEKS                       R14 R14 K94 ["Generating"]
      389 SETTABLEKS                       R14 R13 K83 ["previewState"]
      391 GETUPVAL                         R14 10
      392 GETTABLEKS                       R14 R14 K95 ["Submitting"]
      394 SETTABLEKS                       R14 R13 K84 ["generationStage"]
      396 GETIMPORT                        R14 K98 [os.clock]
      398 CALL                             R14 0 1
      399 SETTABLEKS                       R14 R13 K85 ["startTime"]
      401 GETTABLEKS                       R14 R3 K99 ["replaceContent"]
      403 MOVE                             R15 R13
      404 CALL                             R14 1 0
      405 LOADK                            R14 K0 [""]
      406 GETUPVAL                         R15 11
      407 MOVE                             R16 R4
      408 MOVE                             R17 R12
      409 MOVE                             R18 R5
      410 CALL                             R15 3 1
      411 GETTABLEKS                       R16 R15 K88 ["generationId"]
      413 JUMPIFNOTEQKS                    R16 K0 [""] ; [+31]
      415 GETTABLEKS                       R17 R15 K101 ["errorType"]
      417 ORK                              R16 R17 K100 ["General"]
      418 GETTABLEKS                       R18 R15 K102 ["errorMessage"]
      420 ORK                              R17 R18 K46 ["Unknown error"]
      421 GETGLOBAL                        R18 K42 ["reportGenerationError"]
      423 MOVE                             R19 R16
      424 MOVE                             R20 R17
      425 LOADNIL                          R21
      426 MOVE                             R22 R4
      427 MOVE                             R23 R9
      428 MOVE                             R24 R0
      429 MOVE                             R25 R3
      430 CALL                             R18 7 0
      431 GETUPVAL                         R18 3
      432 CALL                             R18 0 1
      433 MOVE                             R20 R17
      434 NAMECALL                         R18 R18 K12 ["addText"]
      436 CALL                             R18 2 1
      437 LOADB                            R20 1
      438 NAMECALL                         R18 R18 K13 ["setError"]
      440 CALL                             R18 2 1
      441 NAMECALL                         R18 R18 K14 ["build"]
      443 CALL                             R18 1 -1
      444 RETURN                           R18 -1
      445 GETTABLEKS                       R14 R15 K88 ["generationId"]
      447 SETTABLEKS                       R14 R9 K88 ["generationId"]
      449 GETUPVAL                         R16 5
      450 GETTABLEKS                       R16 R16 K103 ["setJob"]
      452 MOVE                             R17 R14
      453 DUPTABLE                         R18 K107 [{"generationId", "status", "prompt", "imageUri", "logs"}]
      454 SETTABLEKS                       R14 R18 K88 ["generationId"]
      456 GETUPVAL                         R19 12
      457 GETTABLEKS                       R19 R19 K108 ["Submitted"]
      459 SETTABLEKS                       R19 R18 K104 ["status"]
      461 SETTABLEKS                       R4 R18 K1 ["prompt"]
      463 GETTABLEKS                       R19 R1 K21 ["attachedImageUri"]
      465 JUMPIF                           R19 ; [+7]
      466 MOVE                             R19 R12
      467 JUMPIFNOT                        R19 ; [+5]
      468 GETUPVAL                         R19 7
      469 GETTABLEKS                       R19 R19 K109 ["storeImage"]
      471 MOVE                             R20 R12
      472 CALL                             R19 1 1
      473 SETTABLEKS                       R19 R18 K105 ["imageUri"]
      475 NEWTABLE                         R19 0 0
      477 SETTABLEKS                       R19 R18 K106 ["logs"]
      479 CALL                             R16 2 0
      480 GETUPVAL                         R16 5
      481 GETTABLEKS                       R16 R16 K110 ["appendLog"]
      483 MOVE                             R17 R14
      484 LOADK                            R19 K111 ["Job submitted with prompt: \"%*\", image: \"%*\", imageMimeType: \"%*\""]
      485 MOVE                             R21 R4
      486 JUMPIFNOT                        R12 ; [+3]
      487 GETTABLEKS                       R22 R12 K112 ["data"]
      489 JUMPIF                           R22 ; [+1]
      490 LOADK                            R22 K113 ["nil"]
      491 JUMPIFNOT                        R12 ; [+3]
      492 GETTABLEKS                       R23 R12 K114 ["mimeType"]
      494 JUMPIF                           R23 ; [+1]
      495 LOADK                            R23 K113 ["nil"]
      496 NAMECALL                         R19 R19 K50 ["format"]
      498 CALL                             R19 4 1
      499 MOVE                             R18 R19
      500 CALL                             R16 2 0
      501 GETIMPORT                        R16 K60 [task.spawn]
      503 GETUPVAL                         R17 13
      504 MOVE                             R18 R0
      505 MOVE                             R19 R14
      506 MOVE                             R20 R4
      507 MOVE                             R21 R9
      508 MOVE                             R22 R3
      509 MOVE                             R23 R2
      510 CALL                             R16 7 0
      511 GETUPVAL                         R16 3
      512 CALL                             R16 0 1
      513 LOADK                            R19 K115 ["Generation job submitted successfully. Generation ID: %*"]
      514 MOVE                             R21 R14
      515 NAMECALL                         R19 R19 K50 ["format"]
      517 CALL                             R19 2 1
      518 MOVE                             R18 R19
      519 NAMECALL                         R16 R16 K12 ["addText"]
      521 CALL                             R16 2 1
      522 NAMECALL                         R16 R16 K14 ["build"]
      524 CALL                             R16 1 -1
      525 RETURN                           R16 -1

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
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantGen3DTelemetryV2"]
        3 JUMPIFNOT                        R0 ; [+33]
        4 GETUPVAL                         R2 1
        5 LENGTH                           R1 R2
        6 LOADN                            R2 0
        7 JUMPIFLT                         R2 R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 GETUPVAL                         R2 2
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 JUMPIFNOT                        R0 ; [+3]
       17 JUMPIFNOT                        R1 ; [+2]
       18 LOADK                            R2 K1 ["text+image"]
       19 JUMP                             ; [+4]
       20 JUMPIFNOT                        R1 ; [+2]
       21 LOADK                            R2 K2 ["image"]
       22 JUMP                             ; [+1]
       23 LOADK                            R2 K3 ["text"]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K4 ["initArgs"]
       27 GETTABLEKS                       R3 R3 K5 ["environment"]
       29 GETTABLEKS                       R3 R3 K6 ["EventLogger"]
       31 GETTABLEKS                       R3 R3 K7 ["logGen3DSegmentationRefresh"]
       33 DUPTABLE                         R4 K11 [{["modelFlow"] = "procedural", ["inputFormat"]}]
       34 SETTABLEKS                       R2 R4 K10 ["inputFormat"]
       36 CALL                             R3 1 0
       37 GETUPVAL                         R0 4
       38 GETTABLEKS                       R0 R0 K12 ["spawnSuggestion"]
       40 CALL                             R0 0 0
       41 RETURN                           R0 0

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
      156 GETUPVAL                         R5 8
      157 GETTABLEKS                       R5 R5 K52 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      159 JUMPIFNOT                        R5 ; [+3]
      160 NEWCLOSURE                       R4 P8
      161 CAPTURE                          UPVAL U4
      162 JUMP                             ; [+1]
      163 LOADNIL                          R4
      164 SETTABLEKS                       R4 R3 K50 ["canConfirm"]
      166 RETURN                           R3 1

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
       39 GETTABLEKS                       R7 R7 K20 ["FFlagAssistantGen3dAutoSegmentation"]
       41 JUMPIFNOT                        R7 ; [+2]
       42 LOADK                            R6 K21 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel', 'door']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
       43 JUMP                             ; [+1]
       44 LOADK                            R6 K22 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings. When provided, the model will be built around these named parts."]
       45 SETTABLEKS                       R6 R5 K10 ["description"]
       47 NAMECALL                         R2 R2 K17 ["addOptionalArgument"]
       49 CALL                             R2 3 1
       50 GETUPVAL                         R3 5
       51 GETTABLEKS                       R3 R3 K20 ["FFlagAssistantGen3dAutoSegmentation"]
       53 JUMPIFNOT                        R3 ; [+10]
       54 LOADK                            R5 K23 ["segmentation"]
       55 DUPTABLE                         R6 K26 [{["type"] = "string", ["enum"], ["description"] = "Controls how the model is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
       56 GETUPVAL                         R7 6
       57 GETTABLEKS                       R7 R7 K27 ["SegmentationArgValues"]
       59 SETTABLEKS                       R7 R6 K24 ["enum"]
       61 NAMECALL                         R3 R2 K17 ["addOptionalArgument"]
       63 CALL                             R3 3 0
       64 MOVE                             R5 R1
       65 NAMECALL                         R3 R2 K28 ["setHandler"]
       67 CALL                             R3 2 1
       68 DUPTABLE                         R5 K36 [{["title"] = "Primitive Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       69 NAMECALL                         R3 R3 K37 ["setAnnotations"]
       71 CALL                             R3 2 1
       72 NAMECALL                         R3 R3 K38 ["build"]
       74 CALL                             R3 1 1
       75 LOADK                            R4 K39 [""]
       76 LOADNIL                          R5
       77 LOADB                            R6 1
       78 NEWCLOSURE                       R7 P2
       79 CAPTURE                          REF R4
       80 CAPTURE                          REF R6
       81 CAPTURE                          UPVAL U7
       82 DUPTABLE                         R8 K44 [{"command", "getDescription", "mapToToolCall", "getInputRequestArguments"}]
       83 GETUPVAL                         R9 4
       84 GETTABLEKS                       R9 R9 K3 ["PrimitiveGen"]
       86 SETTABLEKS                       R9 R8 K40 ["command"]
       88 DUPCLOSURE                       R9 K45 [PROTO_67]
       89 SETTABLEKS                       R9 R8 K41 ["getDescription"]
       91 NEWCLOSURE                       R9 P4
       92 CAPTURE                          REF R4
       93 CAPTURE                          REF R5
       94 CAPTURE                          UPVAL U4
       95 SETTABLEKS                       R9 R8 K42 ["mapToToolCall"]
       97 GETUPVAL                         R10 5
       98 GETTABLEKS                       R10 R10 K46 ["FFlagPrimGenSchemaSelector"]
      100 JUMPIFNOT                        R10 ; [+11]
      101 NEWCLOSURE                       R9 P5
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R7
      104 CAPTURE                          UPVAL U8
      105 CAPTURE                          UPVAL U9
      106 CAPTURE                          REF R4
      107 CAPTURE                          REF R5
      108 CAPTURE                          UPVAL U10
      109 CAPTURE                          REF R6
      110 CAPTURE                          UPVAL U5
      111 JUMP                             ; [+1]
      112 LOADNIL                          R9
      113 SETTABLEKS                       R9 R8 K43 ["getInputRequestArguments"]
      115 DUPTABLE                         R9 K48 [{"transformInitialContent"}]
      116 DUPCLOSURE                       R10 K49 [PROTO_79]
      117 CAPTURE                          UPVAL U1
      118 SETTABLEKS                       R10 R9 K47 ["transformInitialContent"]
      120 DUPTABLE                         R10 K56 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "displayNameFunction", "toolCallOptions"}]
      121 SETTABLEKS                       R3 R10 K50 ["definition"]
      123 NEWTABLE                         R11 0 1
      125 MOVE                             R12 R8
      126 SETLIST                          R11 R12 1 [1]
      128 SETTABLEKS                       R11 R10 K51 ["slashCommands"]
      130 GETUPVAL                         R12 5
      131 GETTABLEKS                       R12 R12 K57 ["FFlagAssistantSplitToolsAndWidgets"]
      133 JUMPIFNOT                        R12 ; [+2]
      134 LOADNIL                          R11
      135 JUMP                             ; [+5]
      136 NEWTABLE                         R11 0 1
      138 GETUPVAL                         R12 1
      139 SETLIST                          R11 R12 1 [1]
      141 SETTABLEKS                       R11 R10 K52 ["contentWidgets"]
      143 SETTABLEKS                       R9 R10 K53 ["streamTransform"]
      145 GETUPVAL                         R12 5
      146 GETTABLEKS                       R12 R12 K57 ["FFlagAssistantSplitToolsAndWidgets"]
      148 JUMPIFNOT                        R12 ; [+2]
      149 LOADNIL                          R11
      150 JUMP                             ; [+2]
      151 DUPCLOSURE                       R11 K58 [PROTO_80]
      152 CAPTURE                          UPVAL U9
      153 SETTABLEKS                       R11 R10 K54 ["displayNameFunction"]
      155 DUPTABLE                         R11 K61 [{["resetTimeoutOnProgress"] = True}]
      156 SETTABLEKS                       R11 R10 K55 ["toolCallOptions"]
      158 CLOSEUPVALS                      R4
      159 RETURN                           R10 1

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
       29 GETTABLEKS                       R5 R0 K14 ["Flags"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K15 ["Util"]
       36 GETTABLEKS                       R6 R6 K16 ["FormRequestBuilder"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Util"]
       43 GETTABLEKS                       R7 R7 K17 ["ImageContentStore"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K9 [require]
       48 GETTABLEKS                       R8 R0 K18 ["Features"]
       50 GETTABLEKS                       R8 R8 K19 ["MeshGen"]
       52 GETTABLEKS                       R8 R8 K20 ["MeshGenSchemaSelector"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K10 ["Parent"]
       59 GETTABLEKS                       R9 R9 K21 ["ModelContextProtocol"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETIMPORT                        R10 K1 [script]
       66 GETTABLEKS                       R10 R10 K10 ["Parent"]
       68 GETTABLEKS                       R10 R10 K22 ["PrimitiveGenBridgeTypes"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETIMPORT                        R11 K1 [script]
       75 GETTABLEKS                       R11 R11 K10 ["Parent"]
       77 GETTABLEKS                       R11 R11 K23 ["PrimitiveGenJobStore"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETIMPORT                        R12 K1 [script]
       84 GETTABLEKS                       R12 R12 K10 ["Parent"]
       86 GETTABLEKS                       R12 R12 K24 ["PrimitiveGenPreviewFetch"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETTABLEKS                       R13 R0 K25 ["Components"]
       93 GETTABLEKS                       R13 R13 K26 ["PropertyRows"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K9 [require]
       98 GETTABLEKS                       R14 R0 K18 ["Features"]
      100 GETTABLEKS                       R14 R14 K27 ["Gen3dUtils"]
      102 GETTABLEKS                       R14 R14 K28 ["SegmentationEnums"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K9 [require]
      107 GETTABLEKS                       R15 R0 K15 ["Util"]
      109 GETTABLEKS                       R15 R15 K29 ["Serializer"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K9 [require]
      114 GETTABLEKS                       R16 R0 K30 ["Tools"]
      116 GETTABLEKS                       R16 R16 K31 ["ToolTypes"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K9 [require]
      121 GETTABLEKS                       R17 R0 K15 ["Util"]
      123 GETTABLEKS                       R17 R17 K32 ["ToolUtils"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K9 [require]
      128 GETTABLEKS                       R18 R0 K33 ["Resources"]
      130 GETTABLEKS                       R18 R18 K34 ["Localization"]
      132 GETTABLEKS                       R18 R18 K35 ["Translator"]
      134 CALL                             R17 1 1
      135 GETIMPORT                        R18 K9 [require]
      137 GETTABLEKS                       R19 R0 K36 ["Types"]
      139 CALL                             R18 1 1
      140 GETIMPORT                        R19 K9 [require]
      142 GETTABLEKS                       R20 R0 K15 ["Util"]
      144 GETTABLEKS                       R20 R20 K37 ["VersionResolver"]
      146 CALL                             R19 1 1
      147 GETIMPORT                        R20 K1 [script]
      149 LOADK                            R22 K38 ["PrimitiveGen"]
      150 NAMECALL                         R20 R20 K3 ["FindFirstAncestor"]
      152 CALL                             R20 2 1
      153 GETIMPORT                        R21 K9 [require]
      155 GETTABLEKS                       R22 R20 K39 ["PrimitiveGenContentWidget"]
      157 CALL                             R21 1 1
      158 GETTABLEKS                       R22 R21 K40 ["PreviewState"]
      160 GETTABLEKS                       R23 R8 K15 ["Util"]
      162 GETTABLEKS                       R23 R23 K41 ["ToolBuilder"]
      164 GETTABLEKS                       R24 R8 K15 ["Util"]
      166 GETTABLEKS                       R24 R24 K42 ["ToolResult"]
      168 GETTABLEKS                       R25 R8 K43 ["Json"]
      170 GETTABLEKS                       R26 R15 K44 ["ToolNames"]
      172 GETTABLEKS                       R27 R2 K45 ["Dictionary"]
      174 GETTABLEKS                       R27 R27 K46 ["join"]
      176 GETTABLEKS                       R29 R4 K47 ["FFlagPrimGenCarouselPreview"]
      178 JUMPIFNOT                        R29 ; [+2]
      179 LOADN                            R28 48
      180 JUMP                             ; [+1]
      181 LOADN                            R28 5
      182 DUPTABLE                         R29 K52 [{"Submitting", "ResolvingDependencies", "DownloadingScript", "Inserting"}]
      183 LOADK                            R32 K38 ["PrimitiveGen"]
      184 LOADK                            R33 K53 ["StageSubmitting"]
      185 NAMECALL                         R30 R17 K54 ["getText"]
      187 CALL                             R30 3 1
      188 SETTABLEKS                       R30 R29 K48 ["Submitting"]
      190 LOADK                            R32 K38 ["PrimitiveGen"]
      191 LOADK                            R33 K55 ["StageResolvingDependencies"]
      192 NAMECALL                         R30 R17 K54 ["getText"]
      194 CALL                             R30 3 1
      195 SETTABLEKS                       R30 R29 K49 ["ResolvingDependencies"]
      197 LOADK                            R32 K38 ["PrimitiveGen"]
      198 LOADK                            R33 K56 ["StageDownloadingScript"]
      199 NAMECALL                         R30 R17 K54 ["getText"]
      201 CALL                             R30 3 1
      202 SETTABLEKS                       R30 R29 K50 ["DownloadingScript"]
      204 LOADK                            R32 K38 ["PrimitiveGen"]
      205 LOADK                            R33 K57 ["StageInserting"]
      206 NAMECALL                         R30 R17 K54 ["getText"]
      208 CALL                             R30 3 1
      209 SETTABLEKS                       R30 R29 K51 ["Inserting"]
      211 DUPTABLE                         R30 K62 [{["WorkflowFailure"] = "Workflow Failure", ["ModerationFailure"] = "Moderation Failure"}]
      212 DUPTABLE                         R31 K69 [{["Success"] = "success", ["Cancelled"] = "cancelled", ["Failed"] = "failed"}]
      213 DUPTABLE                         R32 K84 [{["General"] = "General", ["CancelByUser"] = "CancelByUser", ["TooManyConcurrentJobs"] = "TooManyConcurrentJobs", ["DmIsUnreachable"] = "DmIsUnreachable", ["DmHealthChecking"] = "DmHealthChecking", ["EmptyPrompt"] = "EmptyPrompt", ["ImageFormat"] = "ImageFormat", ["MaxCharacters"] = "MaxCharacters", ["ModerationFailed"] = "ModerationFailed", ["PollFailed"] = "PollFailed", ["PluginVersionMismatch"] = "PluginVersionMismatch", ["ScriptFetchError"] = "ScriptFetchError", ["TooManyRequests"] = "TooManyRequests", ["StudioLeftEditMode"] = "StudioLeftEditMode"}]
      214 DUPCLOSURE                       R33 K85 [PROTO_0]
      215 CAPTURE                          VAL R4
      216 DUPCLOSURE                       R34 K86 [PROTO_1]
      217 DUPCLOSURE                       R35 K87 [PROTO_2]
      218 DUPCLOSURE                       R36 K88 [PROTO_4]
      219 CAPTURE                          VAL R4
      220 DUPCLOSURE                       R37 K89 [PROTO_5]
      221 DUPCLOSURE                       R38 K90 [PROTO_6]
      222 CAPTURE                          VAL R3
      223 DUPTABLE                         R39 K91 [{["Success"] = "success", ["Failed"] = "failed"}]
      224 DUPCLOSURE                       R40 K92 [PROTO_7]
      225 DUPCLOSURE                       R41 K93 [PROTO_8]
      226 CAPTURE                          VAL R6
      227 DUPCLOSURE                       R42 K94 [PROTO_10]
      228 DUPCLOSURE                       R43 K95 [PROTO_11]
      229 DUPCLOSURE                       R44 K96 [PROTO_12]
      230 CAPTURE                          VAL R16
      231 CAPTURE                          VAL R25
      232 DUPCLOSURE                       R45 K97 [PROTO_13]
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R3
      235 DUPCLOSURE                       R46 K98 [PROTO_14]
      236 CAPTURE                          VAL R4
      237 CAPTURE                          VAL R3
      238 DUPCLOSURE                       R47 K99 [PROTO_28]
      239 CAPTURE                          VAL R21
      240 CAPTURE                          VAL R28
      241 CAPTURE                          VAL R4
      242 CAPTURE                          VAL R29
      243 CAPTURE                          VAL R22
      244 DUPCLOSURE                       R48 K100 [PROTO_29]
      245 DUPCLOSURE                       R49 K101 [PROTO_30]
      246 CAPTURE                          VAL R1
      247 CAPTURE                          VAL R5
      248 CAPTURE                          VAL R4
      249 CAPTURE                          VAL R3
      250 CAPTURE                          VAL R27
      251 CAPTURE                          VAL R45
      252 DUPCLOSURE                       R50 K102 [PROTO_32]
      253 CAPTURE                          VAL R4
      254 CAPTURE                          VAL R3
      255 CAPTURE                          VAL R49
      256 CAPTURE                          VAL R44
      257 CAPTURE                          VAL R34
      258 CAPTURE                          VAL R35
      259 DUPCLOSURE                       R51 K103 [PROTO_34]
      260 CAPTURE                          VAL R3
      261 CAPTURE                          VAL R4
      262 CAPTURE                          VAL R45
      263 CAPTURE                          VAL R10
      264 CAPTURE                          VAL R44
      265 CAPTURE                          VAL R34
      266 CAPTURE                          VAL R16
      267 CAPTURE                          VAL R43
      268 CAPTURE                          VAL R11
      269 DUPCLOSURE                       R52 K104 [PROTO_35]
      270 CAPTURE                          VAL R3
      271 CAPTURE                          VAL R25
      272 DUPCLOSURE                       R53 K105 [PROTO_37]
      273 CAPTURE                          VAL R3
      274 CAPTURE                          VAL R44
      275 DUPCLOSURE                       R54 K106 [PROTO_38]
      276 CAPTURE                          VAL R4
      277 CAPTURE                          VAL R3
      278 CAPTURE                          VAL R51
      279 CAPTURE                          VAL R29
      280 CAPTURE                          VAL R53
      281 CAPTURE                          VAL R43
      282 CAPTURE                          VAL R52
      283 DUPCLOSURE                       R55 K107 [PROTO_40]
      284 CAPTURE                          VAL R4
      285 CAPTURE                          VAL R36
      286 GETTABLEKS                       R56 R10 K108 ["JobStatus"]
      288 DUPCLOSURE                       R57 K109 [PROTO_41]
      289 CAPTURE                          VAL R10
      290 CAPTURE                          VAL R56
      291 CAPTURE                          VAL R27
      292 SETGLOBAL                        R57 K110 ["reportGenerationError"]
      294 DUPCLOSURE                       R57 K111 [PROTO_51]
      295 CAPTURE                          VAL R10
      296 CAPTURE                          VAL R56
      297 CAPTURE                          VAL R16
      298 CAPTURE                          VAL R54
      299 CAPTURE                          VAL R4
      300 CAPTURE                          VAL R37
      301 CAPTURE                          VAL R22
      302 CAPTURE                          VAL R27
      303 CAPTURE                          VAL R11
      304 CAPTURE                          VAL R29
      305 CAPTURE                          VAL R55
      306 CAPTURE                          VAL R21
      307 CAPTURE                          VAL R17
      308 DUPCLOSURE                       R58 K112 [PROTO_54]
      309 CAPTURE                          VAL R47
      310 CAPTURE                          VAL R4
      311 CAPTURE                          VAL R7
      312 CAPTURE                          VAL R24
      313 CAPTURE                          VAL R19
      314 CAPTURE                          VAL R10
      315 CAPTURE                          VAL R17
      316 CAPTURE                          VAL R6
      317 CAPTURE                          VAL R21
      318 CAPTURE                          VAL R22
      319 CAPTURE                          VAL R29
      320 CAPTURE                          VAL R50
      321 CAPTURE                          VAL R56
      322 CAPTURE                          VAL R57
      323 DUPCLOSURE                       R59 K113 [PROTO_57]
      324 CAPTURE                          VAL R47
      325 DUPCLOSURE                       R60 K114 [PROTO_58]
      326 CAPTURE                          VAL R47
      327 DUPCLOSURE                       R61 K115 [PROTO_59]
      328 DUPTABLE                         R62 K119 [{"updateContentHeader", "setPreviewImage", "reportGeneratedInstanceDeleted"}]
      329 SETTABLEKS                       R59 R62 K116 ["updateContentHeader"]
      331 SETTABLEKS                       R60 R62 K117 ["setPreviewImage"]
      333 SETTABLEKS                       R61 R62 K118 ["reportGeneratedInstanceDeleted"]
      335 DUPCLOSURE                       R63 K120 [PROTO_81]
      336 CAPTURE                          VAL R14
      337 CAPTURE                          VAL R21
      338 CAPTURE                          VAL R58
      339 CAPTURE                          VAL R23
      340 CAPTURE                          VAL R26
      341 CAPTURE                          VAL R4
      342 CAPTURE                          VAL R13
      343 CAPTURE                          VAL R7
      344 CAPTURE                          VAL R12
      345 CAPTURE                          VAL R17
      346 CAPTURE                          VAL R6
      347 DUPTABLE                         R64 K123 [{"bridge", "setupGuest"}]
      348 SETTABLEKS                       R62 R64 K121 ["bridge"]
      350 SETTABLEKS                       R63 R64 K122 ["setupGuest"]
      352 RETURN                           R64 1
