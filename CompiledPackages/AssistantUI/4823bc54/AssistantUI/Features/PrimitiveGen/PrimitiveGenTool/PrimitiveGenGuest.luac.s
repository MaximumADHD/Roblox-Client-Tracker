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
       68 GETTABLEKS                       R6 R6 K17 ["FFlagAssistantMcpImageGenShortcut"]
       70 JUMPIFNOT                        R6 ; [+49]
       71 GETUPVAL                         R6 1
       72 GETTABLEKS                       R6 R6 K18 ["EngineFeatureAssistantGen3dImagePreview"]
       74 JUMPIFNOT                        R6 ; [+45]
       75 GETTABLEKS                       R6 R1 K19 ["hintImage"]
       77 JUMPIFNOTEQKNIL                  R6 ; [+42]
       79 GETTABLEKS                       R6 R1 K20 ["attachedImageUri"]
       81 JUMPIFNOTEQKNIL                  R6 ; [+38]
       83 FASTCALL1                        TYPEOF R4 ; [+3]
       84 MOVE                             R7 R4
       85 GETIMPORT                        R6 K22 [typeof]
       87 CALL                             R6 1 1
       88 JUMPIFNOTEQKS                    R6 K23 ["string"] ; [+31]
       90 LENGTH                           R6 R4
       91 LOADN                            R7 0
       92 JUMPIFNOTLT                      R7 R6 ; [+27]
       94 GETUPVAL                         R6 4
       95 GETTABLEKS                       R6 R6 K24 ["generateAsync"]
       97 DUPTABLE                         R7 K27 [{"textPrompt", "model"}]
       98 SETTABLEKS                       R4 R7 K25 ["textPrompt"]
      100 GETUPVAL                         R8 1
      101 GETTABLEKS                       R8 R8 K28 ["FStringAssistantMeshGenImageGenModelOverride"]
      103 SETTABLEKS                       R8 R7 K26 ["model"]
      105 CALL                             R6 1 1
      106 GETTABLEKS                       R7 R6 K29 ["imageContent"]
      108 JUMPIFNOT                        R7 ; [+5]
      109 GETTABLEKS                       R7 R6 K29 ["imageContent"]
      111 SETTABLEKS                       R7 R1 K19 ["hintImage"]
      113 JUMP                             ; [+6]
      114 GETIMPORT                        R7 K31 [warn]
      116 LOADK                            R8 K32 ["[PrimitiveGen] Single-image generation failed, continuing text-only:"]
      117 GETTABLEKS                       R9 R6 K33 ["errorMessage"]
      119 CALL                             R7 2 0
      120 GETUPVAL                         R6 1
      121 GETTABLEKS                       R6 R6 K34 ["FFlagAssistantGen3DTelemetryV2"]
      123 LOADB                            R7 0
      124 FASTCALL1                        TYPEOF R4 ; [+3]
      125 MOVE                             R9 R4
      126 GETIMPORT                        R8 K22 [typeof]
      128 CALL                             R8 1 1
      129 JUMPIFNOTEQKS                    R8 K23 ["string"] ; [+7]
      131 LENGTH                           R8 R4
      132 LOADN                            R9 0
      133 JUMPIFLT                         R9 R8 ; [+2]
      135 LOADB                            R7 0 +1
      136 LOADB                            R7 1
      137 LOADB                            R8 1
      138 GETTABLEKS                       R9 R1 K20 ["attachedImageUri"]
      140 JUMPIFNOTEQKNIL                  R9 ; [+7]
      142 GETTABLEKS                       R9 R1 K19 ["hintImage"]
      144 JUMPIFNOTEQKNIL                  R9 ; [+2]
      146 LOADB                            R8 0 +1
      147 LOADB                            R8 1
      148 DUPTABLE                         R9 K43 [{"requestId", "conversationId", "toolId", "prompt", "hasImage", "modelFlow", "inputFormat", "segmentationEnabled", "finalParts"}]
      149 GETTABLEKS                       R11 R0 K44 ["callArgs"]
      151 GETTABLEKS                       R11 R11 K45 ["messageGuid"]
      153 ORK                              R10 R11 K0 [""]
      154 SETTABLEKS                       R10 R9 K35 ["requestId"]
      156 GETTABLEKS                       R11 R0 K44 ["callArgs"]
      158 GETTABLEKS                       R11 R11 K46 ["sessionId"]
      160 ORK                              R10 R11 K0 [""]
      161 SETTABLEKS                       R10 R9 K36 ["conversationId"]
      163 GETTABLEKS                       R10 R0 K44 ["callArgs"]
      165 GETTABLEKS                       R10 R10 K37 ["toolId"]
      167 SETTABLEKS                       R10 R9 K37 ["toolId"]
      169 SETTABLEKS                       R4 R9 K1 ["prompt"]
      171 SETTABLEKS                       R8 R9 K38 ["hasImage"]
      173 JUMPIFNOT                        R6 ; [+2]
      174 LOADK                            R10 K47 ["procedural"]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R10
      177 SETTABLEKS                       R10 R9 K39 ["modelFlow"]
      179 JUMPIF                           R6 ; [+2]
      180 LOADNIL                          R10
      181 JUMP                             ; [+8]
      182 JUMPIFNOT                        R7 ; [+3]
      183 JUMPIFNOT                        R8 ; [+2]
      184 LOADK                            R10 K48 ["text+image"]
      185 JUMP                             ; [+4]
      186 JUMPIFNOT                        R8 ; [+2]
      187 LOADK                            R10 K49 ["image"]
      188 JUMP                             ; [+1]
      189 LOADK                            R10 K50 ["text"]
      190 SETTABLEKS                       R10 R9 K40 ["inputFormat"]
      192 JUMPIFNOT                        R6 ; [+10]
      193 LOADB                            R10 0
      194 JUMPIFEQKNIL                     R5 ; [+9]
      196 LENGTH                           R11 R5
      197 LOADN                            R12 0
      198 JUMPIFLT                         R12 R11 ; [+2]
      200 LOADB                            R10 0 +1
      201 LOADB                            R10 1
      202 JUMP                             ; [+1]
      203 LOADNIL                          R10
      204 SETTABLEKS                       R10 R9 K41 ["segmentationEnabled"]
      206 JUMPIFNOT                        R6 ; [+2]
      207 MOVE                             R10 R5
      208 JUMP                             ; [+1]
      209 LOADNIL                          R10
      210 SETTABLEKS                       R10 R9 K42 ["finalParts"]
      212 GETUPVAL                         R10 1
      213 GETTABLEKS                       R10 R10 K51 ["FFlagAssistantVersionMismatchWarning"]
      215 JUMPIFNOT                        R10 ; [+33]
      216 GETUPVAL                         R10 1
      217 GETTABLEKS                       R10 R10 K52 ["FFlagPrimGenVersionMismatchError"]
      219 JUMPIFNOT                        R10 ; [+29]
      220 GETUPVAL                         R10 5
      221 GETTABLEKS                       R10 R10 K53 ["getVersionMismatch"]
      223 CALL                             R10 0 1
      224 JUMPIFNOT                        R10 ; [+24]
      225 GETGLOBAL                        R10 K54 ["reportGenerationError"]
      227 LOADK                            R11 K55 ["PluginVersionMismatch"]
      228 LOADK                            R12 K56 ["The Assistant plugin just got new patch, please restart RobloxStudio."]
      229 LOADNIL                          R13
      230 MOVE                             R14 R4
      231 MOVE                             R15 R9
      232 MOVE                             R16 R0
      233 MOVE                             R17 R3
      234 CALL                             R10 7 0
      235 GETUPVAL                         R10 3
      236 CALL                             R10 0 1
      237 LOADK                            R12 K56 ["The Assistant plugin just got new patch, please restart RobloxStudio."]
      238 NAMECALL                         R10 R10 K12 ["addText"]
      240 CALL                             R10 2 1
      241 LOADB                            R12 1
      242 NAMECALL                         R10 R10 K13 ["setError"]
      244 CALL                             R10 2 1
      245 NAMECALL                         R10 R10 K14 ["build"]
      247 CALL                             R10 1 -1
      248 RETURN                           R10 -1
      249 GETUPVAL                         R10 1
      250 GETTABLEKS                       R10 R10 K52 ["FFlagPrimGenVersionMismatchError"]
      252 JUMPIFNOT                        R10 ; [+89]
      253 GETIMPORT                        R10 K8 [pcall]
      255 NEWCLOSURE                       R11 P0
      256 CAPTURE                          VAL R0
      257 CALL                             R10 1 2
      258 JUMPIFNOT                        R10 ; [+3]
      259 GETTABLEKS                       R12 R11 K57 ["success"]
      261 JUMPIF                           R12 ; [+80]
      262 JUMPIFNOT                        R10 ; [+4]
      263 GETTABLEKS                       R13 R11 K59 ["error"]
      265 ORK                              R12 R13 K58 ["Unknown error"]
      266 JUMP                             ; [+5]
      267 FASTCALL1                        TOSTRING R11 ; [+3]
      268 MOVE                             R13 R11
      269 GETIMPORT                        R12 K11 [tostring]
      271 CALL                             R12 1 1
      272 GETUPVAL                         R14 1
      273 GETTABLEKS                       R14 R14 K60 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
      275 JUMPIFNOT                        R14 ; [+22]
      276 JUMPIFNOT                        R12 ; [+9]
      277 JUMPIFEQKS                       R12 K0 [""] ; [+8]
      279 LOADK                            R15 K61 [" Details: %*"]
      280 MOVE                             R17 R12
      281 NAMECALL                         R15 R15 K62 ["format"]
      283 CALL                             R15 2 1
      284 MOVE                             R14 R15
      285 JUMP                             ; [+1]
      286 LOADK                            R14 K0 [""]
      287 LOADK                            R19 K63 ["The Asset DataModel is not reachable right now.%* "]
      288 MOVE                             R21 R14
      289 NAMECALL                         R19 R19 K62 ["format"]
      291 CALL                             R19 2 1
      292 MOVE                             R15 R19
      293 LOADK                            R16 K64 ["It may be paused at a breakpoint, busy running another task, or unavailable because Studio is in Play/Test mode. "]
      294 LOADK                            R17 K65 ["Please stop play test if it is running, resume or clear any breakpoints, then run /run print(\"hi\") to confirm the Asset DataModel is reachable."]
      295 LOADK                            R18 K66 ["If it still fails, restart Roblox Studio and try this tool again."]
      296 CONCAT                           R13 R15 R18
      297 JUMP                             ; [+11]
      298 JUMPIFNOT                        R12 ; [+9]
      299 JUMPIFEQKS                       R12 K0 [""] ; [+8]
      301 LOADK                            R14 K67 ["Asset datamodel is not reachable: %*"]
      302 MOVE                             R16 R12
      303 NAMECALL                         R14 R14 K62 ["format"]
      305 CALL                             R14 2 1
      306 MOVE                             R13 R14
      307 JUMP                             ; [+1]
      308 LOADK                            R13 K68 ["Asset datamodel is not reachable"]
      309 GETUPVAL                         R14 1
      310 GETTABLEKS                       R14 R14 K69 ["FFlagDebugPrimGenDMNoReachable"]
      312 JUMPIFNOT                        R14 ; [+5]
      313 GETIMPORT                        R14 K72 [task.spawn]
      315 NEWCLOSURE                       R15 P1
      316 CAPTURE                          VAL R13
      317 CALL                             R14 1 0
      318 GETGLOBAL                        R14 K54 ["reportGenerationError"]
      320 LOADK                            R15 K73 ["DmHealthChecking"]
      321 MOVE                             R16 R13
      322 LOADNIL                          R17
      323 MOVE                             R18 R4
      324 MOVE                             R19 R9
      325 MOVE                             R20 R0
      326 MOVE                             R21 R3
      327 CALL                             R14 7 0
      328 GETUPVAL                         R14 3
      329 CALL                             R14 0 1
      330 MOVE                             R16 R13
      331 NAMECALL                         R14 R14 K12 ["addText"]
      333 CALL                             R14 2 1
      334 LOADB                            R16 1
      335 NAMECALL                         R14 R14 K13 ["setError"]
      337 CALL                             R14 2 1
      338 NAMECALL                         R14 R14 K14 ["build"]
      340 CALL                             R14 1 -1
      341 RETURN                           R14 -1
      342 GETUPVAL                         R10 1
      343 GETTABLEKS                       R10 R10 K74 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      345 GETUPVAL                         R11 6
      346 GETTABLEKS                       R11 R11 K75 ["getActiveJobCount"]
      348 CALL                             R11 0 1
      349 JUMPIFNOTLE                      R10 R11 ; [+46]
      351 GETUPVAL                         R12 7
      352 LOADK                            R14 K76 ["PrimitiveGen"]
      353 LOADK                            R15 K77 ["MaxConcurrentJobsError"]
      354 DUPTABLE                         R16 K80 [{"activeCount", "maxConcurrentJobs"}]
      355 GETIMPORT                        R17 K81 [string.format]
      357 LOADK                            R18 K82 ["%d"]
      358 MOVE                             R19 R11
      359 CALL                             R17 2 1
      360 SETTABLEKS                       R17 R16 K78 ["activeCount"]
      362 GETIMPORT                        R17 K81 [string.format]
      364 LOADK                            R18 K82 ["%d"]
      365 MOVE                             R19 R10
      366 CALL                             R17 2 1
      367 SETTABLEKS                       R17 R16 K79 ["maxConcurrentJobs"]
      369 NAMECALL                         R12 R12 K83 ["getText"]
      371 CALL                             R12 4 1
      372 GETGLOBAL                        R13 K54 ["reportGenerationError"]
      374 LOADK                            R14 K84 ["TooManyConcurrentJobs"]
      375 MOVE                             R15 R12
      376 LOADNIL                          R16
      377 MOVE                             R17 R4
      378 MOVE                             R18 R9
      379 MOVE                             R19 R0
      380 MOVE                             R20 R3
      381 CALL                             R13 7 0
      382 GETUPVAL                         R13 3
      383 CALL                             R13 0 1
      384 MOVE                             R15 R12
      385 NAMECALL                         R13 R13 K12 ["addText"]
      387 CALL                             R13 2 1
      388 LOADB                            R15 1
      389 NAMECALL                         R13 R13 K13 ["setError"]
      391 CALL                             R13 2 1
      392 NAMECALL                         R13 R13 K14 ["build"]
      394 CALL                             R13 1 -1
      395 RETURN                           R13 -1
      396 GETTABLEKS                       R12 R1 K19 ["hintImage"]
      398 JUMPIF                           R12 ; [+11]
      399 GETTABLEKS                       R13 R1 K20 ["attachedImageUri"]
      401 JUMPIF                           R13 ; [+2]
      402 LOADNIL                          R12
      403 JUMP                             ; [+6]
      404 GETUPVAL                         R14 8
      405 GETTABLEKS                       R14 R14 K85 ["getImage"]
      407 MOVE                             R15 R13
      408 CALL                             R14 1 1
      409 MOVE                             R12 R14
      410 DUPTABLE                         R13 K101 [{["type"], ["mode"], ["expanded"] = False, ["name"], ["displayName"], ["className"] = , ["previewImages"] = , ["previewState"], ["generationStage"], ["startTime"], ["onChipClicked"] = , ["retryInfo"] = , ["generationId"] = ""}]
      411 GETUPVAL                         R14 9
      412 GETTABLEKS                       R14 R14 K102 ["Type"]
      414 SETTABLEKS                       R14 R13 K86 ["type"]
      416 GETUPVAL                         R14 9
      417 GETTABLEKS                       R14 R14 K103 ["Modes"]
      419 GETTABLEKS                       R14 R14 K104 ["ShowPreview"]
      421 SETTABLEKS                       R14 R13 K87 ["mode"]
      423 SETTABLEKS                       R4 R13 K90 ["name"]
      425 LENGTH                           R15 R4
      426 LOADN                            R16 0
      427 JUMPIFNOTLT                      R16 R15 ; [+3]
      429 MOVE                             R14 R4
      430 JUMP                             ; [+6]
      431 GETUPVAL                         R14 7
      432 LOADK                            R16 K76 ["PrimitiveGen"]
      433 LOADK                            R17 K105 ["DefaultDisplayName"]
      434 NAMECALL                         R14 R14 K83 ["getText"]
      436 CALL                             R14 3 1
      437 SETTABLEKS                       R14 R13 K91 ["displayName"]
      439 GETUPVAL                         R14 10
      440 GETTABLEKS                       R14 R14 K106 ["Generating"]
      442 SETTABLEKS                       R14 R13 K95 ["previewState"]
      444 GETUPVAL                         R14 11
      445 GETTABLEKS                       R14 R14 K107 ["Submitting"]
      447 SETTABLEKS                       R14 R13 K96 ["generationStage"]
      449 GETIMPORT                        R14 K110 [os.clock]
      451 CALL                             R14 0 1
      452 SETTABLEKS                       R14 R13 K97 ["startTime"]
      454 GETTABLEKS                       R14 R3 K111 ["replaceContent"]
      456 MOVE                             R15 R13
      457 CALL                             R14 1 0
      458 LOADK                            R14 K0 [""]
      459 GETUPVAL                         R15 12
      460 MOVE                             R16 R4
      461 MOVE                             R17 R12
      462 MOVE                             R18 R5
      463 CALL                             R15 3 1
      464 GETTABLEKS                       R16 R15 K100 ["generationId"]
      466 JUMPIFNOTEQKS                    R16 K0 [""] ; [+31]
      468 GETTABLEKS                       R17 R15 K113 ["errorType"]
      470 ORK                              R16 R17 K112 ["General"]
      471 GETTABLEKS                       R18 R15 K33 ["errorMessage"]
      473 ORK                              R17 R18 K58 ["Unknown error"]
      474 GETGLOBAL                        R18 K54 ["reportGenerationError"]
      476 MOVE                             R19 R16
      477 MOVE                             R20 R17
      478 LOADNIL                          R21
      479 MOVE                             R22 R4
      480 MOVE                             R23 R9
      481 MOVE                             R24 R0
      482 MOVE                             R25 R3
      483 CALL                             R18 7 0
      484 GETUPVAL                         R18 3
      485 CALL                             R18 0 1
      486 MOVE                             R20 R17
      487 NAMECALL                         R18 R18 K12 ["addText"]
      489 CALL                             R18 2 1
      490 LOADB                            R20 1
      491 NAMECALL                         R18 R18 K13 ["setError"]
      493 CALL                             R18 2 1
      494 NAMECALL                         R18 R18 K14 ["build"]
      496 CALL                             R18 1 -1
      497 RETURN                           R18 -1
      498 GETTABLEKS                       R14 R15 K100 ["generationId"]
      500 SETTABLEKS                       R14 R9 K100 ["generationId"]
      502 GETUPVAL                         R16 6
      503 GETTABLEKS                       R16 R16 K114 ["setJob"]
      505 MOVE                             R17 R14
      506 DUPTABLE                         R18 K118 [{"generationId", "status", "prompt", "imageUri", "logs"}]
      507 SETTABLEKS                       R14 R18 K100 ["generationId"]
      509 GETUPVAL                         R19 13
      510 GETTABLEKS                       R19 R19 K119 ["Submitted"]
      512 SETTABLEKS                       R19 R18 K115 ["status"]
      514 SETTABLEKS                       R4 R18 K1 ["prompt"]
      516 GETTABLEKS                       R19 R1 K20 ["attachedImageUri"]
      518 JUMPIF                           R19 ; [+7]
      519 MOVE                             R19 R12
      520 JUMPIFNOT                        R19 ; [+5]
      521 GETUPVAL                         R19 8
      522 GETTABLEKS                       R19 R19 K120 ["storeImage"]
      524 MOVE                             R20 R12
      525 CALL                             R19 1 1
      526 SETTABLEKS                       R19 R18 K116 ["imageUri"]
      528 NEWTABLE                         R19 0 0
      530 SETTABLEKS                       R19 R18 K117 ["logs"]
      532 CALL                             R16 2 0
      533 GETUPVAL                         R16 6
      534 GETTABLEKS                       R16 R16 K121 ["appendLog"]
      536 MOVE                             R17 R14
      537 LOADK                            R19 K122 ["Job submitted with prompt: \"%*\", image: \"%*\", imageMimeType: \"%*\""]
      538 MOVE                             R21 R4
      539 JUMPIFNOT                        R12 ; [+3]
      540 GETTABLEKS                       R22 R12 K123 ["data"]
      542 JUMPIF                           R22 ; [+1]
      543 LOADK                            R22 K124 ["nil"]
      544 JUMPIFNOT                        R12 ; [+3]
      545 GETTABLEKS                       R23 R12 K125 ["mimeType"]
      547 JUMPIF                           R23 ; [+1]
      548 LOADK                            R23 K124 ["nil"]
      549 NAMECALL                         R19 R19 K62 ["format"]
      551 CALL                             R19 4 1
      552 MOVE                             R18 R19
      553 CALL                             R16 2 0
      554 GETIMPORT                        R16 K72 [task.spawn]
      556 GETUPVAL                         R17 14
      557 MOVE                             R18 R0
      558 MOVE                             R19 R14
      559 MOVE                             R20 R4
      560 MOVE                             R21 R9
      561 MOVE                             R22 R3
      562 MOVE                             R23 R2
      563 CALL                             R16 7 0
      564 GETUPVAL                         R16 3
      565 CALL                             R16 0 1
      566 LOADK                            R19 K126 ["Generation job submitted successfully. Generation ID: %*"]
      567 MOVE                             R21 R14
      568 NAMECALL                         R19 R19 K62 ["format"]
      570 CALL                             R19 2 1
      571 MOVE                             R18 R19
      572 NAMECALL                         R16 R16 K12 ["addText"]
      574 CALL                             R16 2 1
      575 NAMECALL                         R16 R16 K14 ["build"]
      577 CALL                             R16 1 -1
      578 RETURN                           R16 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["build"]
        3 DUPTABLE                         R2 K5 [{["promptKey"] = "prompt", ["wizardMode"], ["model"]}]
        4 SETTABLEKS                       R0 R2 K3 ["wizardMode"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K6 ["FStringAssistantMeshGenImageGenModelOverride"]
        9 SETTABLEKS                       R3 R2 K4 ["model"]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_61:
        0 GETTABLEKS                       R2 R1 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Modes"]
        5 GETTABLEKS                       R3 R3 K2 ["ShowPreview"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R1 K3 ["generationId"]
       12 GETTABLEKS                       R3 R1 K4 ["displayName"]
       14 JUMPIF                           R3 ; [+2]
       15 GETTABLEKS                       R3 R1 K5 ["name"]
       17 FASTCALL1                        TYPEOF R2 ; [+3]
       18 MOVE                             R5 R2
       19 GETIMPORT                        R4 K7 [typeof]
       21 CALL                             R4 1 1
       22 JUMPIFNOTEQKS                    R4 K8 ["string"] ; [+3]
       24 JUMPIFNOTEQKS                    R2 K9 [""] ; [+2]
       26 RETURN                           R0 0
       27 FASTCALL1                        TYPEOF R3 ; [+3]
       28 MOVE                             R5 R3
       29 GETIMPORT                        R4 K7 [typeof]
       31 CALL                             R4 1 1
       32 JUMPIFNOTEQKS                    R4 K8 ["string"] ; [+3]
       34 JUMPIFNOTEQKS                    R3 K9 [""] ; [+2]
       36 RETURN                           R0 0
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K10 ["createGuestContext"]
       40 LOADNIL                          R5
       41 DUPTABLE                         R6 K19 [{["uiMessageId"] = , ["uiContentId"], ["messageGuid"] = , ["sessionId"] = , ["toolId"] = , ["isThirdPartyRequest"] = False}]
       42 SETTABLEKS                       R0 R6 K13 ["uiContentId"]
       44 CALL                             R4 2 1
       45 GETTABLEKS                       R5 R4 K20 ["bridge"]
       47 GETTABLEKS                       R5 R5 K21 ["listenToLinkChanges"]
       49 DUPTABLE                         R6 K22 [{"generationId", "name"}]
       50 SETTABLEKS                       R2 R6 K3 ["generationId"]
       52 SETTABLEKS                       R3 R6 K5 ["name"]
       54 CALL                             R5 1 0
       55 RETURN                           R0 0

PROTO_62:
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

PROTO_63:
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

PROTO_64:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["suggestPartsAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_65:
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

PROTO_66:
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

PROTO_67:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_68:
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

PROTO_69:
        0 LOADK                            R0 K0 ["Creates procedural 3D objects from primitive parts with configurable attributes. Supports reference images."]
        1 RETURN                           R0 1

PROTO_70:
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

PROTO_71:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["spawnSuggestion"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_72:
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

PROTO_73:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setterRef"]
        3 SETTABLEKS                       R0 R1 K1 ["fn"]
        5 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["loadingSetterRef"]
        3 SETTABLEKS                       R0 R1 K1 ["fn"]
        5 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelSuggestion"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["spawnSuggestion"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_77:
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

PROTO_78:
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

PROTO_79:
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

PROTO_80:
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
      153 DUPTABLE                         R3 K52 [{"propertyRows", "canConfirm", "imageSelection"}]
      154 SETTABLEKS                       R2 R3 K49 ["propertyRows"]
      156 GETUPVAL                         R5 8
      157 GETTABLEKS                       R5 R5 K53 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      159 JUMPIFNOT                        R5 ; [+3]
      160 NEWCLOSURE                       R4 P8
      161 CAPTURE                          UPVAL U4
      162 JUMP                             ; [+1]
      163 LOADNIL                          R4
      164 SETTABLEKS                       R4 R3 K50 ["canConfirm"]
      166 GETUPVAL                         R5 8
      167 GETTABLEKS                       R5 R5 K54 ["EngineFeatureAssistantGen3dImagePreview"]
      169 JUMPIFNOT                        R5 ; [+17]
      170 GETUPVAL                         R5 8
      171 GETTABLEKS                       R5 R5 K55 ["FFlagAssistantImageSelectionWizardModePrimitiveGen"]
      173 GETUPVAL                         R6 9
      174 GETTABLEKS                       R6 R6 K56 ["build"]
      176 DUPTABLE                         R7 K60 [{["promptKey"] = "prompt", ["wizardMode"], ["model"]}]
      177 SETTABLEKS                       R5 R7 K58 ["wizardMode"]
      179 GETUPVAL                         R8 8
      180 GETTABLEKS                       R8 R8 K61 ["FStringAssistantMeshGenImageGenModelOverride"]
      182 SETTABLEKS                       R8 R7 K59 ["model"]
      184 CALL                             R6 1 1
      185 MOVE                             R4 R6
      186 JUMP                             ; [+1]
      187 LOADNIL                          R4
      188 SETTABLEKS                       R4 R3 K51 ["imageSelection"]
      190 RETURN                           R3 1

PROTO_81:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_82:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["PrimitiveGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_83:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagPrimitiveGenRestoreError"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["registerHydrator"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Type"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CALL                             R1 2 0
       14 JUMP                             ; [+9]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K1 ["registerHydrator"]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K2 ["Type"]
       21 NEWCLOSURE                       R3 P1
       22 CAPTURE                          VAL R0
       23 CALL                             R1 2 0
       24 NEWCLOSURE                       R1 P2
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U3
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R2 R2 K3 ["define"]
       30 CALL                             R2 0 1
       31 GETUPVAL                         R4 5
       32 GETTABLEKS                       R4 R4 K4 ["PrimitiveGen"]
       34 NAMECALL                         R2 R2 K5 ["setName"]
       36 CALL                             R2 2 1
       37 LOADK                            R4 K6 ["Creates 3D objects built from primitive parts (blocks, spheres, cylinders, wedges) as a ProceduralModel with configurable attributes.\nUse this tool when the user wants to:\n- Create or build a 3D object, model, character, creature, vehicle, building, scenery, or any physical thing in the workspace\n- Generate something from a reference image\n- Create an object with tunable parameters (e.g. \"add attributes to control head size, arm length, color\")\n- Build anything described as \"procedural\", \"parametric\", \"configurable\", or \"with attributes\"\n\nThe output is a ProceduralModel: a scripted model whose appearance is controlled by user-editable attributes (like size, color, proportions). The user can tweak these attributes after generation without regenerating.\n\nThe tool automatically inserts the generated model into the workspace. You do not need to run any code afterward.\n"]
       38 NAMECALL                         R2 R2 K7 ["setDescription"]
       40 CALL                             R2 2 1
       41 LOADK                            R4 K8 ["prompt"]
       42 DUPTABLE                         R5 K13 [{["type"] = "string", ["description"] = "A text description of what to create and what attributes to expose.\nPass the user's own words. If they mention specific configurable properties (e.g. \"head size\", \"arm length\", \"wheel count\"), include those in the prompt so the generated model exposes them as editable attributes.\nIf an image is attached and the user gave no text description, pass an empty string.\nDo NOT describe or interpret the attached image — only pass the user's own words.\n"}]
       43 NAMECALL                         R2 R2 K14 ["addArgument"]
       45 CALL                             R2 3 1
       46 LOADK                            R4 K15 ["attachedImageUri"]
       47 DUPTABLE                         R5 K17 [{["type"] = "string", ["description"] = "The image URI (IMAGEID_<id>) from the user's attached image. Always pass this when the user provides a reference image."}]
       48 NAMECALL                         R2 R2 K18 ["addOptionalArgument"]
       50 CALL                             R2 3 1
       51 LOADK                            R4 K19 ["partNames"]
       52 DUPTABLE                         R5 K20 [{["type"] = "string", ["description"]}]
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K21 ["FFlagAssistantGen3dAutoSegmentation"]
       56 JUMPIFNOT                        R7 ; [+2]
       57 LOADK                            R6 K22 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings (e.g. ['body', 'left wheel', 'right wheel', 'door']). Required when segmentation='explicit'. Maximum 8 parts (excess will be truncated)."]
       58 JUMP                             ; [+1]
       59 LOADK                            R6 K23 ["List of part names that define the structure of the generated model. Accepts a comma-separated string (e.g. 'body, left wheel, right wheel, door') or a JSON array of strings. When provided, the model will be built around these named parts."]
       60 SETTABLEKS                       R6 R5 K11 ["description"]
       62 NAMECALL                         R2 R2 K18 ["addOptionalArgument"]
       64 CALL                             R2 3 1
       65 GETUPVAL                         R3 0
       66 GETTABLEKS                       R3 R3 K21 ["FFlagAssistantGen3dAutoSegmentation"]
       68 JUMPIFNOT                        R3 ; [+10]
       69 LOADK                            R5 K24 ["segmentation"]
       70 DUPTABLE                         R6 K27 [{["type"] = "string", ["enum"], ["description"] = "Controls how the model is broken into parts. Pick based on the user's wording:\n- Omit (or \"auto\"): user did NOT mention parts/segmentation (e.g. \"generate a car\"). The tool will derive parts automatically via an internal LLM call.\n- \"none\": user explicitly asked for no parts / a single piece (e.g. \"generate a car with no parts\", \"as one mesh\", \"single piece\").\n- \"explicit\": user named specific parts (e.g. \"a car with body and wheels\"). You MUST also pass partNames with the user's listed parts (max 8).\n"}]
       71 GETUPVAL                         R7 6
       72 GETTABLEKS                       R7 R7 K28 ["SegmentationArgValues"]
       74 SETTABLEKS                       R7 R6 K25 ["enum"]
       76 NAMECALL                         R3 R2 K18 ["addOptionalArgument"]
       78 CALL                             R3 3 0
       79 MOVE                             R5 R1
       80 NAMECALL                         R3 R2 K29 ["setHandler"]
       82 CALL                             R3 2 1
       83 DUPTABLE                         R5 K37 [{["title"] = "Primitive Generation", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       84 NAMECALL                         R3 R3 K38 ["setAnnotations"]
       86 CALL                             R3 2 1
       87 NAMECALL                         R3 R3 K39 ["build"]
       89 CALL                             R3 1 1
       90 LOADK                            R4 K40 [""]
       91 LOADNIL                          R5
       92 LOADB                            R6 1
       93 NEWCLOSURE                       R7 P3
       94 CAPTURE                          REF R4
       95 CAPTURE                          REF R6
       96 CAPTURE                          UPVAL U7
       97 DUPTABLE                         R8 K45 [{"command", "getDescription", "mapToToolCall", "getInputRequestArguments"}]
       98 GETUPVAL                         R9 5
       99 GETTABLEKS                       R9 R9 K4 ["PrimitiveGen"]
      101 SETTABLEKS                       R9 R8 K41 ["command"]
      103 DUPCLOSURE                       R9 K46 [PROTO_69]
      104 SETTABLEKS                       R9 R8 K42 ["getDescription"]
      106 NEWCLOSURE                       R9 P5
      107 CAPTURE                          REF R4
      108 CAPTURE                          REF R5
      109 CAPTURE                          UPVAL U5
      110 SETTABLEKS                       R9 R8 K43 ["mapToToolCall"]
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R10 R10 K47 ["FFlagPrimGenSchemaSelector"]
      115 JUMPIFNOT                        R10 ; [+12]
      116 NEWCLOSURE                       R9 P6
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R7
      119 CAPTURE                          UPVAL U8
      120 CAPTURE                          UPVAL U9
      121 CAPTURE                          REF R4
      122 CAPTURE                          REF R5
      123 CAPTURE                          UPVAL U10
      124 CAPTURE                          REF R6
      125 CAPTURE                          UPVAL U0
      126 CAPTURE                          UPVAL U11
      127 JUMP                             ; [+1]
      128 LOADNIL                          R9
      129 SETTABLEKS                       R9 R8 K44 ["getInputRequestArguments"]
      131 DUPTABLE                         R9 K49 [{"transformInitialContent"}]
      132 DUPCLOSURE                       R10 K50 [PROTO_81]
      133 CAPTURE                          UPVAL U2
      134 SETTABLEKS                       R10 R9 K48 ["transformInitialContent"]
      136 DUPTABLE                         R10 K57 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "displayNameFunction", "toolCallOptions"}]
      137 SETTABLEKS                       R3 R10 K51 ["definition"]
      139 NEWTABLE                         R11 0 1
      141 MOVE                             R12 R8
      142 SETLIST                          R11 R12 1 [1]
      144 SETTABLEKS                       R11 R10 K52 ["slashCommands"]
      146 GETUPVAL                         R12 0
      147 GETTABLEKS                       R12 R12 K58 ["FFlagAssistantSplitToolsAndWidgets"]
      149 JUMPIFNOT                        R12 ; [+2]
      150 LOADNIL                          R11
      151 JUMP                             ; [+5]
      152 NEWTABLE                         R11 0 1
      154 GETUPVAL                         R12 2
      155 SETLIST                          R11 R12 1 [1]
      157 SETTABLEKS                       R11 R10 K53 ["contentWidgets"]
      159 SETTABLEKS                       R9 R10 K54 ["streamTransform"]
      161 GETUPVAL                         R12 0
      162 GETTABLEKS                       R12 R12 K58 ["FFlagAssistantSplitToolsAndWidgets"]
      164 JUMPIFNOT                        R12 ; [+2]
      165 LOADNIL                          R11
      166 JUMP                             ; [+2]
      167 DUPCLOSURE                       R11 K59 [PROTO_82]
      168 CAPTURE                          UPVAL U9
      169 SETTABLEKS                       R11 R10 K55 ["displayNameFunction"]
      171 DUPTABLE                         R11 K62 [{["resetTimeoutOnProgress"] = True}]
      172 SETTABLEKS                       R11 R10 K56 ["toolCallOptions"]
      174 CLOSEUPVALS                      R4
      175 RETURN                           R10 1

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
       48 GETTABLEKS                       R8 R0 K18 ["Components"]
       50 GETTABLEKS                       R8 R8 K19 ["ImageSelection"]
       52 GETTABLEKS                       R8 R8 K20 ["ImageSelectionConfigBuilder"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K21 ["Features"]
       59 GETTABLEKS                       R9 R9 K22 ["MeshGen"]
       61 GETTABLEKS                       R9 R9 K23 ["MeshGenSchemaSelector"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R0 K10 ["Parent"]
       68 GETTABLEKS                       R10 R10 K24 ["ModelContextProtocol"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETIMPORT                        R11 K1 [script]
       75 GETTABLEKS                       R11 R11 K10 ["Parent"]
       77 GETTABLEKS                       R11 R11 K25 ["PrimitiveGenBridgeTypes"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETIMPORT                        R12 K1 [script]
       84 GETTABLEKS                       R12 R12 K10 ["Parent"]
       86 GETTABLEKS                       R12 R12 K26 ["PrimitiveGenJobStore"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETIMPORT                        R13 K1 [script]
       93 GETTABLEKS                       R13 R13 K10 ["Parent"]
       95 GETTABLEKS                       R13 R13 K27 ["PrimitiveGenPreviewFetch"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K9 [require]
      100 GETTABLEKS                       R14 R0 K18 ["Components"]
      102 GETTABLEKS                       R14 R14 K28 ["PropertyRows"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K9 [require]
      107 GETTABLEKS                       R15 R0 K21 ["Features"]
      109 GETTABLEKS                       R15 R15 K29 ["Gen3dUtils"]
      111 GETTABLEKS                       R15 R15 K30 ["SegmentationEnums"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K9 [require]
      116 GETTABLEKS                       R16 R0 K15 ["Util"]
      118 GETTABLEKS                       R16 R16 K31 ["Serializer"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K9 [require]
      123 GETTABLEKS                       R17 R0 K21 ["Features"]
      125 GETTABLEKS                       R17 R17 K29 ["Gen3dUtils"]
      127 GETTABLEKS                       R17 R17 K32 ["SingleImageGenerator"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K9 [require]
      132 GETTABLEKS                       R18 R0 K33 ["Tools"]
      134 GETTABLEKS                       R18 R18 K34 ["ToolTypes"]
      136 CALL                             R17 1 1
      137 GETIMPORT                        R18 K9 [require]
      139 GETTABLEKS                       R19 R0 K15 ["Util"]
      141 GETTABLEKS                       R19 R19 K35 ["ToolUtils"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K9 [require]
      146 GETTABLEKS                       R20 R0 K36 ["Resources"]
      148 GETTABLEKS                       R20 R20 K37 ["Localization"]
      150 GETTABLEKS                       R20 R20 K38 ["Translator"]
      152 CALL                             R19 1 1
      153 GETIMPORT                        R20 K9 [require]
      155 GETTABLEKS                       R21 R0 K39 ["Types"]
      157 CALL                             R20 1 1
      158 GETIMPORT                        R21 K9 [require]
      160 GETTABLEKS                       R22 R0 K15 ["Util"]
      162 GETTABLEKS                       R22 R22 K40 ["VersionResolver"]
      164 CALL                             R21 1 1
      165 GETIMPORT                        R22 K1 [script]
      167 LOADK                            R24 K41 ["PrimitiveGen"]
      168 NAMECALL                         R22 R22 K3 ["FindFirstAncestor"]
      170 CALL                             R22 2 1
      171 GETIMPORT                        R23 K9 [require]
      173 GETTABLEKS                       R24 R22 K42 ["PrimitiveGenContentWidget"]
      175 CALL                             R23 1 1
      176 GETTABLEKS                       R24 R23 K43 ["PreviewState"]
      178 GETTABLEKS                       R25 R9 K15 ["Util"]
      180 GETTABLEKS                       R25 R25 K44 ["ToolBuilder"]
      182 GETTABLEKS                       R26 R9 K15 ["Util"]
      184 GETTABLEKS                       R26 R26 K45 ["ToolResult"]
      186 GETTABLEKS                       R27 R9 K46 ["Json"]
      188 GETTABLEKS                       R28 R17 K47 ["ToolNames"]
      190 GETTABLEKS                       R29 R2 K48 ["Dictionary"]
      192 GETTABLEKS                       R29 R29 K49 ["join"]
      194 GETTABLEKS                       R31 R4 K50 ["FFlagPrimGenCarouselPreview"]
      196 JUMPIFNOT                        R31 ; [+2]
      197 LOADN                            R30 48
      198 JUMP                             ; [+1]
      199 LOADN                            R30 5
      200 DUPTABLE                         R31 K55 [{"Submitting", "ResolvingDependencies", "DownloadingScript", "Inserting"}]
      201 LOADK                            R34 K41 ["PrimitiveGen"]
      202 LOADK                            R35 K56 ["StageSubmitting"]
      203 NAMECALL                         R32 R19 K57 ["getText"]
      205 CALL                             R32 3 1
      206 SETTABLEKS                       R32 R31 K51 ["Submitting"]
      208 LOADK                            R34 K41 ["PrimitiveGen"]
      209 LOADK                            R35 K58 ["StageResolvingDependencies"]
      210 NAMECALL                         R32 R19 K57 ["getText"]
      212 CALL                             R32 3 1
      213 SETTABLEKS                       R32 R31 K52 ["ResolvingDependencies"]
      215 LOADK                            R34 K41 ["PrimitiveGen"]
      216 LOADK                            R35 K59 ["StageDownloadingScript"]
      217 NAMECALL                         R32 R19 K57 ["getText"]
      219 CALL                             R32 3 1
      220 SETTABLEKS                       R32 R31 K53 ["DownloadingScript"]
      222 LOADK                            R34 K41 ["PrimitiveGen"]
      223 LOADK                            R35 K60 ["StageInserting"]
      224 NAMECALL                         R32 R19 K57 ["getText"]
      226 CALL                             R32 3 1
      227 SETTABLEKS                       R32 R31 K54 ["Inserting"]
      229 DUPTABLE                         R32 K65 [{["WorkflowFailure"] = "Workflow Failure", ["ModerationFailure"] = "Moderation Failure"}]
      230 DUPTABLE                         R33 K72 [{["Success"] = "success", ["Cancelled"] = "cancelled", ["Failed"] = "failed"}]
      231 DUPTABLE                         R34 K87 [{["General"] = "General", ["CancelByUser"] = "CancelByUser", ["TooManyConcurrentJobs"] = "TooManyConcurrentJobs", ["DmIsUnreachable"] = "DmIsUnreachable", ["DmHealthChecking"] = "DmHealthChecking", ["EmptyPrompt"] = "EmptyPrompt", ["ImageFormat"] = "ImageFormat", ["MaxCharacters"] = "MaxCharacters", ["ModerationFailed"] = "ModerationFailed", ["PollFailed"] = "PollFailed", ["PluginVersionMismatch"] = "PluginVersionMismatch", ["ScriptFetchError"] = "ScriptFetchError", ["TooManyRequests"] = "TooManyRequests", ["StudioLeftEditMode"] = "StudioLeftEditMode"}]
      232 DUPCLOSURE                       R35 K88 [PROTO_0]
      233 CAPTURE                          VAL R4
      234 DUPCLOSURE                       R36 K89 [PROTO_1]
      235 DUPCLOSURE                       R37 K90 [PROTO_2]
      236 DUPCLOSURE                       R38 K91 [PROTO_4]
      237 CAPTURE                          VAL R4
      238 DUPCLOSURE                       R39 K92 [PROTO_5]
      239 DUPCLOSURE                       R40 K93 [PROTO_6]
      240 CAPTURE                          VAL R3
      241 DUPTABLE                         R41 K94 [{["Success"] = "success", ["Failed"] = "failed"}]
      242 DUPCLOSURE                       R42 K95 [PROTO_7]
      243 DUPCLOSURE                       R43 K96 [PROTO_8]
      244 CAPTURE                          VAL R6
      245 DUPCLOSURE                       R44 K97 [PROTO_10]
      246 DUPCLOSURE                       R45 K98 [PROTO_11]
      247 DUPCLOSURE                       R46 K99 [PROTO_12]
      248 CAPTURE                          VAL R18
      249 CAPTURE                          VAL R27
      250 DUPCLOSURE                       R47 K100 [PROTO_13]
      251 CAPTURE                          VAL R4
      252 CAPTURE                          VAL R3
      253 DUPCLOSURE                       R48 K101 [PROTO_14]
      254 CAPTURE                          VAL R4
      255 CAPTURE                          VAL R3
      256 DUPCLOSURE                       R49 K102 [PROTO_28]
      257 CAPTURE                          VAL R23
      258 CAPTURE                          VAL R30
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R31
      261 CAPTURE                          VAL R24
      262 DUPCLOSURE                       R50 K103 [PROTO_29]
      263 DUPCLOSURE                       R51 K104 [PROTO_30]
      264 CAPTURE                          VAL R1
      265 CAPTURE                          VAL R5
      266 CAPTURE                          VAL R4
      267 CAPTURE                          VAL R3
      268 CAPTURE                          VAL R29
      269 CAPTURE                          VAL R47
      270 DUPCLOSURE                       R52 K105 [PROTO_32]
      271 CAPTURE                          VAL R4
      272 CAPTURE                          VAL R3
      273 CAPTURE                          VAL R51
      274 CAPTURE                          VAL R46
      275 CAPTURE                          VAL R36
      276 CAPTURE                          VAL R37
      277 DUPCLOSURE                       R53 K106 [PROTO_34]
      278 CAPTURE                          VAL R3
      279 CAPTURE                          VAL R4
      280 CAPTURE                          VAL R47
      281 CAPTURE                          VAL R11
      282 CAPTURE                          VAL R46
      283 CAPTURE                          VAL R36
      284 CAPTURE                          VAL R18
      285 CAPTURE                          VAL R45
      286 CAPTURE                          VAL R12
      287 DUPCLOSURE                       R54 K107 [PROTO_35]
      288 CAPTURE                          VAL R3
      289 CAPTURE                          VAL R27
      290 DUPCLOSURE                       R55 K108 [PROTO_37]
      291 CAPTURE                          VAL R3
      292 CAPTURE                          VAL R46
      293 DUPCLOSURE                       R56 K109 [PROTO_38]
      294 CAPTURE                          VAL R4
      295 CAPTURE                          VAL R3
      296 CAPTURE                          VAL R53
      297 CAPTURE                          VAL R31
      298 CAPTURE                          VAL R55
      299 CAPTURE                          VAL R45
      300 CAPTURE                          VAL R54
      301 DUPCLOSURE                       R57 K110 [PROTO_40]
      302 CAPTURE                          VAL R4
      303 CAPTURE                          VAL R38
      304 GETTABLEKS                       R58 R11 K111 ["JobStatus"]
      306 DUPCLOSURE                       R59 K112 [PROTO_41]
      307 CAPTURE                          VAL R11
      308 CAPTURE                          VAL R58
      309 CAPTURE                          VAL R29
      310 SETGLOBAL                        R59 K113 ["reportGenerationError"]
      312 DUPCLOSURE                       R59 K114 [PROTO_51]
      313 CAPTURE                          VAL R11
      314 CAPTURE                          VAL R58
      315 CAPTURE                          VAL R18
      316 CAPTURE                          VAL R56
      317 CAPTURE                          VAL R4
      318 CAPTURE                          VAL R39
      319 CAPTURE                          VAL R24
      320 CAPTURE                          VAL R29
      321 CAPTURE                          VAL R12
      322 CAPTURE                          VAL R31
      323 CAPTURE                          VAL R57
      324 CAPTURE                          VAL R23
      325 CAPTURE                          VAL R19
      326 DUPCLOSURE                       R60 K115 [PROTO_54]
      327 CAPTURE                          VAL R49
      328 CAPTURE                          VAL R4
      329 CAPTURE                          VAL R8
      330 CAPTURE                          VAL R26
      331 CAPTURE                          VAL R16
      332 CAPTURE                          VAL R21
      333 CAPTURE                          VAL R11
      334 CAPTURE                          VAL R19
      335 CAPTURE                          VAL R6
      336 CAPTURE                          VAL R23
      337 CAPTURE                          VAL R24
      338 CAPTURE                          VAL R31
      339 CAPTURE                          VAL R52
      340 CAPTURE                          VAL R58
      341 CAPTURE                          VAL R59
      342 DUPCLOSURE                       R61 K116 [PROTO_57]
      343 CAPTURE                          VAL R49
      344 DUPCLOSURE                       R62 K117 [PROTO_58]
      345 CAPTURE                          VAL R49
      346 DUPCLOSURE                       R63 K118 [PROTO_59]
      347 DUPTABLE                         R64 K122 [{"updateContentHeader", "setPreviewImage", "reportGeneratedInstanceDeleted"}]
      348 SETTABLEKS                       R61 R64 K119 ["updateContentHeader"]
      350 SETTABLEKS                       R62 R64 K120 ["setPreviewImage"]
      352 SETTABLEKS                       R63 R64 K121 ["reportGeneratedInstanceDeleted"]
      354 DUPCLOSURE                       R65 K123 [PROTO_60]
      355 CAPTURE                          VAL R7
      356 CAPTURE                          VAL R4
      357 DUPCLOSURE                       R66 K124 [PROTO_83]
      358 CAPTURE                          VAL R4
      359 CAPTURE                          VAL R15
      360 CAPTURE                          VAL R23
      361 CAPTURE                          VAL R60
      362 CAPTURE                          VAL R25
      363 CAPTURE                          VAL R28
      364 CAPTURE                          VAL R14
      365 CAPTURE                          VAL R8
      366 CAPTURE                          VAL R13
      367 CAPTURE                          VAL R19
      368 CAPTURE                          VAL R6
      369 CAPTURE                          VAL R7
      370 DUPTABLE                         R67 K127 [{"bridge", "setupGuest"}]
      371 SETTABLEKS                       R64 R67 K125 ["bridge"]
      373 SETTABLEKS                       R66 R67 K126 ["setupGuest"]
      375 RETURN                           R67 1
