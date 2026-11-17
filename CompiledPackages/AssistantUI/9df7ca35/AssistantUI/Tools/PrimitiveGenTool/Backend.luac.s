PROTO_0:
        0 GETIMPORT                        R1 K1 [error]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K5 [{[1] = True, ["errorType"], ["cancelled"], ["message"]}]
        1 SETTABLEKS                       R0 R2 K2 ["errorType"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K6 ["CancelByUser"]
        6 JUMPIFEQ                         R0 R4 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K3 ["cancelled"]
       12 SETTABLEKS                       R1 R2 K4 ["message"]
       14 GETIMPORT                        R3 K8 [error]
       16 MOVE                             R4 R2
       17 LOADN                            R5 0
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+6]
        7 GETTABLEKS                       R1 R0 K3 ["__primitiveGenError"]
        9 JUMPIFNOTEQKB                    R1 TRUE ; [+2]
       11 RETURN                           R0 1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_3:
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

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["Body"]
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K2 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K3 ["string"] ; [+22]
        8 LOADK                            R2 K4 ["%*: expected string body but got %*, full response: %*"]
        9 MOVE                             R4 R1
       10 GETTABLEKS                       R6 R0 K0 ["Body"]
       12 FASTCALL1                        TYPEOF R6 ; [+2]
       13 GETIMPORT                        R5 K2 [typeof]
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K5 ["toString"]
       19 MOVE                             R7 R0
       20 CALL                             R6 1 1
       21 NAMECALL                         R2 R2 K6 ["format"]
       23 CALL                             R2 4 1
       24 GETIMPORT                        R3 K8 [error]
       26 MOVE                             R4 R2
       27 LOADN                            R5 0
       28 CALL                             R3 2 0
       29 GETTABLEKS                       R2 R0 K0 ["Body"]
       31 JUMPIFNOTEQKS                    R2 K9 [""] ; [+16]
       33 LOADK                            R2 K10 ["%*: response body is empty, full response: %*"]
       34 MOVE                             R4 R1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K5 ["toString"]
       38 MOVE                             R6 R0
       39 CALL                             R5 1 1
       40 NAMECALL                         R2 R2 K6 ["format"]
       42 CALL                             R2 3 1
       43 GETIMPORT                        R3 K8 [error]
       45 MOVE                             R4 R2
       46 LOADN                            R5 0
       47 CALL                             R3 2 0
       48 GETUPVAL                         R3 1
       49 GETTABLEKS                       R3 R3 K11 ["decode"]
       51 GETTABLEKS                       R4 R0 K0 ["Body"]
       53 FASTPCALL                        pcall 2 ; [+2]
       54 GETIMPORT                        R2 K13 [pcall]
       56 CALL                             R2 2 2
       57 JUMPIF                           R2 ; [+16]
       58 LOADK                            R4 K14 ["%*: failed to decode JSON: %*, full response: %*"]
       59 MOVE                             R6 R1
       60 MOVE                             R7 R3
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K5 ["toString"]
       64 MOVE                             R9 R0
       65 CALL                             R8 1 1
       66 NAMECALL                         R4 R4 K6 ["format"]
       68 CALL                             R4 4 1
       69 GETIMPORT                        R5 K8 [error]
       71 MOVE                             R6 R4
       72 LOADN                            R7 0
       73 CALL                             R5 2 0
       74 RETURN                           R3 1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringMCPAssistantPrimitiveGenServerURL"]
        3 JUMPIFEQKS                       R0 K1 [""] ; [+2]
        5 RETURN                           R0 1
        6 LOADK                            R1 K2 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K3 ["get"]
       10 CALL                             R3 0 1
       11 GETTABLEKS                       R3 R3 K4 ["apisUrl"]
       13 NAMECALL                         R1 R1 K5 ["format"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagPrimGenVerboseDmIsUnReachableMsg"]
        3 JUMPIFNOT                        R2 ; [+20]
        4 JUMPIFNOT                        R0 ; [+8]
        5 JUMPIFEQKS                       R0 K1 [""] ; [+7]
        7 LOADK                            R2 K2 [" Details: %*"]
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K3 ["format"]
       11 CALL                             R2 2 1
       12 JUMP                             ; [+1]
       13 LOADK                            R2 K1 [""]
       14 LOADK                            R4 K4 ["The Asset DataModel is not reachable right now.%* "]
       15 MOVE                             R6 R2
       16 NAMECALL                         R4 R4 K3 ["format"]
       18 CALL                             R4 2 1
       19 LOADK                            R5 K5 ["It may be paused at a breakpoint, busy running another task, or unavailable because Studio is in Play/Test mode. "]
       20 LOADK                            R6 K6 ["Please stop play test if it is running, resume or clear any breakpoints, then run /run print(\"hi\") to confirm the Asset DataModel is reachable."]
       21 LOADK                            R7 K7 ["If it still fails, restart Roblox Studio and try this tool again."]
       22 CONCAT                           R3 R4 R7
       23 RETURN                           R3 1
       24 JUMPIFNOT                        R1 ; [+2]
       25 MOVE                             R2 R1
       26 RETURN                           R2 1
       27 JUMPIFNOT                        R0 ; [+8]
       28 JUMPIFEQKS                       R0 K1 [""] ; [+7]
       30 LOADK                            R2 K8 ["Asset datamodel is not reachable: %*"]
       31 MOVE                             R4 R0
       32 NAMECALL                         R2 R2 K3 ["format"]
       34 CALL                             R2 2 1
       35 RETURN                           R2 1
       36 LOADK                            R2 K9 ["Asset datamodel is not reachable"]
       37 RETURN                           R2 1

PROTO_8:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K5 [string.lower]
       11 LOADK                            R2 K6 ["%* %* %*"]
       12 GETTABLEKS                       R5 R0 K8 ["developerMessage"]
       14 ORK                              R4 R5 K7 [""]
       15 GETTABLEKS                       R6 R0 K9 ["details"]
       17 ORK                              R5 R6 K7 [""]
       18 GETTABLEKS                       R7 R0 K10 ["message"]
       20 ORK                              R6 R7 K7 [""]
       21 NAMECALL                         R2 R2 K11 ["format"]
       23 CALL                             R2 4 1
       24 CALL                             R1 1 1
       25 LOADB                            R2 1
       26 GETIMPORT                        R3 K13 [string.find]
       28 MOVE                             R4 R1
       29 LOADK                            R5 K14 ["moderation"]
       30 CALL                             R3 2 1
       31 JUMPIFNOTEQKNIL                  R3 ; [+10]
       33 GETIMPORT                        R3 K13 [string.find]
       35 MOVE                             R4 R1
       36 LOADK                            R5 K15 ["moderated"]
       37 CALL                             R3 2 1
       38 JUMPIFNOTEQKNIL                  R3 ; [+2]
       40 LOADB                            R2 0 +1
       41 LOADB                            R2 1
       42 RETURN                           R2 1

PROTO_9:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K5 [string.lower]
       11 LOADK                            R2 K6 ["%* %* %*"]
       12 GETTABLEKS                       R5 R0 K8 ["developerMessage"]
       14 ORK                              R4 R5 K7 [""]
       15 GETTABLEKS                       R6 R0 K9 ["details"]
       17 ORK                              R5 R6 K7 [""]
       18 GETTABLEKS                       R7 R0 K10 ["message"]
       20 ORK                              R6 R7 K7 [""]
       21 NAMECALL                         R2 R2 K11 ["format"]
       23 CALL                             R2 4 1
       24 CALL                             R1 1 1
       25 LOADB                            R2 1
       26 GETIMPORT                        R3 K13 [string.find]
       28 MOVE                             R4 R1
       29 LOADK                            R5 K14 ["text prompt cannot be null or empty"]
       30 LOADN                            R6 1
       31 LOADB                            R7 1
       32 CALL                             R3 4 1
       33 JUMPIFNOTEQKNIL                  R3 ; [+12]
       35 GETIMPORT                        R3 K13 [string.find]
       37 MOVE                             R4 R1
       38 LOADK                            R5 K15 ["either text prompt or image is required"]
       39 LOADN                            R6 1
       40 LOADB                            R7 1
       41 CALL                             R3 4 1
       42 JUMPIFNOTEQKNIL                  R3 ; [+2]
       44 LOADB                            R2 0 +1
       45 LOADB                            R2 1
       46 RETURN                           R2 1

PROTO_10:
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
       33 JUMPIFNOT                        R2 ; [+4]
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K12 ["DmIsUnreachable"]
       37 RETURN                           R2 1
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K13 ["General"]
       41 RETURN                           R2 1

PROTO_11:
        0 JUMPIFEQKS                       R0 K0 ["image/jpeg"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["image/jpg"] ; [+3]
        4 LOADK                            R1 K2 ["image.jpg"]
        5 RETURN                           R1 1
        6 JUMPIFNOTEQKS                    R0 K3 ["image/png"] ; [+3]
        8 LOADK                            R1 K4 ["image.png"]
        9 RETURN                           R1 1
       10 GETIMPORT                        R1 K6 [error]
       12 LOADK                            R2 K7 ["Unsupported PrimitiveGen image MIME type: %*"]
       13 MOVE                             R4 R0
       14 NAMECALL                         R2 R2 K8 ["format"]
       16 CALL                             R2 2 1
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_12:
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
       43 JUMPIFNOT                        R1 ; [+33]
       44 JUMPIFNOT                        R3 ; [+32]
       45 GETTABLEKS                       R6 R1 K15 ["mimeType"]
       47 JUMPIFEQKS                       R6 K16 ["image/jpeg"] ; [+3]
       49 JUMPIFNOTEQKS                    R6 K17 ["image/jpg"] ; [+3]
       51 LOADK                            R7 K18 ["image.jpg"]
       52 JUMP                             ; [+13]
       53 JUMPIFNOTEQKS                    R6 K19 ["image/png"] ; [+3]
       55 LOADK                            R7 K20 ["image.png"]
       56 JUMP                             ; [+9]
       57 GETIMPORT                        R8 K22 [error]
       59 LOADK                            R9 K23 ["Unsupported PrimitiveGen image MIME type: %*"]
       60 MOVE                             R11 R6
       61 NAMECALL                         R9 R9 K11 ["format"]
       63 CALL                             R9 2 1
       64 CALL                             R8 1 0
       65 LOADNIL                          R7
       66 LOADK                            R10 K24 ["Image"]
       67 GETUPVAL                         R11 1
       68 GETTABLEKS                       R11 R11 K25 ["file"]
       70 MOVE                             R12 R7
       71 MOVE                             R13 R3
       72 MOVE                             R14 R6
       73 CALL                             R11 3 -1
       74 NAMECALL                         R8 R4 K26 ["addFile"]
       76 CALL                             R8 -1 0
       77 JUMPIFNOT                        R2 ; [+9]
       78 LENGTH                           R6 R2
       79 LOADN                            R7 0
       80 JUMPIFNOTLT                      R7 R6 ; [+6]
       82 LOADK                            R8 K27 ["schemaDefinition"]
       83 MOVE                             R9 R2
       84 NAMECALL                         R6 R4 K28 ["addList"]
       86 CALL                             R6 3 0
       87 MOVE                             R8 R5
       88 LOADK                            R9 K29 ["POST"]
       89 NAMECALL                         R6 R4 K30 ["buildRequest"]
       91 CALL                             R6 3 1
       92 GETUPVAL                         R7 4
       93 GETTABLEKS                       R7 R7 K31 ["join"]
       95 GETTABLEKS                       R8 R6 K32 ["Headers"]
       97 GETUPVAL                         R9 5
       98 CALL                             R9 0 1
       99 CALL                             R7 2 1
      100 SETTABLEKS                       R7 R6 K32 ["Headers"]
      102 RETURN                           R6 1

PROTO_13:
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
       14 LOADK                            R4 K2 ["submitGenerationJob (statusCode=%*)"]
       15 GETTABLEKS                       R6 R1 K3 ["StatusCode"]
       17 NAMECALL                         R4 R4 K4 ["format"]
       19 CALL                             R4 2 1
       20 CALL                             R2 2 1
       21 RETURN                           R1 2

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagDebugMockPrimitiveGenBackend"]
        3 JUMPIFNOT                        R3 ; [+2]
        4 DUPTABLE                         R3 K3 [{["generationId"] = "1234567890"}]
        5 RETURN                           R3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K4 ["get"]
        9 CALL                             R3 0 1
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 CAPTURE                          UPVAL U3
       17 FASTPCALL                        pcall 1 ; [+2]
       18 GETIMPORT                        R4 K6 [pcall]
       20 CALL                             R4 1 3
       21 JUMPIF                           R4 ; [+14]
       22 DUPTABLE                         R7 K10 [{["generationId"] = "", ["errorType"], ["errorMessage"]}]
       23 GETUPVAL                         R8 4
       24 GETTABLEKS                       R8 R8 K11 ["General"]
       26 SETTABLEKS                       R8 R7 K8 ["errorType"]
       28 LOADK                            R8 K12 ["Failed to get response from server: %*"]
       29 MOVE                             R10 R5
       30 NAMECALL                         R8 R8 K13 ["format"]
       32 CALL                             R8 2 1
       33 SETTABLEKS                       R8 R7 K9 ["errorMessage"]
       35 RETURN                           R7 1
       36 GETTABLEKS                       R7 R5 K14 ["Success"]
       38 JUMPIF                           R7 ; [+48]
       39 LOADK                            R7 K15 ["Failed to submit generation job: statusCode: %*, body: %*"]
       40 GETTABLEKS                       R9 R5 K16 ["StatusCode"]
       42 GETTABLEKS                       R10 R5 K17 ["Body"]
       44 NAMECALL                         R7 R7 K13 ["format"]
       46 CALL                             R7 3 1
       47 GETUPVAL                         R8 4
       48 GETTABLEKS                       R8 R8 K11 ["General"]
       50 GETTABLEKS                       R9 R5 K16 ["StatusCode"]
       52 JUMPIFNOTEQKN                    R9 K18 [429] ; [+5]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R8 R9 K19 ["TooManyRequests"]
       57 JUMP                             ; [+23]
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R9 R9 K20 ["FFlagPrimGenBetterErrorType"]
       61 JUMPIFNOT                        R9 ; [+8]
       62 GETUPVAL                         R9 5
       63 MOVE                             R10 R6
       64 CALL                             R9 1 1
       65 JUMPIFNOT                        R9 ; [+4]
       66 GETUPVAL                         R9 4
       67 GETTABLEKS                       R8 R9 K21 ["ModerationFailed"]
       69 JUMP                             ; [+11]
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R9 R9 K20 ["FFlagPrimGenBetterErrorType"]
       73 JUMPIFNOT                        R9 ; [+7]
       74 GETUPVAL                         R9 6
       75 MOVE                             R10 R6
       76 CALL                             R9 1 1
       77 JUMPIFNOT                        R9 ; [+3]
       78 GETUPVAL                         R9 4
       79 GETTABLEKS                       R8 R9 K22 ["EmptyPrompt"]
       81 DUPTABLE                         R9 K10 [{["generationId"] = "", ["errorType"], ["errorMessage"]}]
       82 SETTABLEKS                       R8 R9 K8 ["errorType"]
       84 SETTABLEKS                       R7 R9 K9 ["errorMessage"]
       86 RETURN                           R9 1
       87 GETTABLEKS                       R7 R6 K23 ["primitiveGenerationId"]
       89 JUMPIF                           R7 ; [+15]
       90 DUPTABLE                         R8 K10 [{["generationId"] = "", ["errorType"], ["errorMessage"]}]
       91 GETUPVAL                         R9 4
       92 GETTABLEKS                       R9 R9 K11 ["General"]
       94 SETTABLEKS                       R9 R8 K8 ["errorType"]
       96 LOADK                            R9 K24 ["Response does not contain 'primitiveGenerationId': %*"]
       97 GETTABLEKS                       R11 R5 K17 ["Body"]
       99 NAMECALL                         R9 R9 K13 ["format"]
      101 CALL                             R9 2 1
      102 SETTABLEKS                       R9 R8 K9 ["errorMessage"]
      104 RETURN                           R8 1
      105 DUPTABLE                         R8 K25 [{"generationId"}]
      106 SETTABLEKS                       R7 R8 K1 ["generationId"]
      108 RETURN                           R8 1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 CALL                             R3 0 1
        4 LOADK                            R4 K1 ["%*/%*"]
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R7 R7 K2 ["FStringMCPAssistantPrimitiveGenServerURL"]
        8 JUMPIFEQKS                       R7 K3 [""] ; [+3]
       10 MOVE                             R6 R7
       11 JUMP                             ; [+11]
       12 LOADK                            R8 K4 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
       13 GETUPVAL                         R10 0
       14 GETTABLEKS                       R10 R10 K0 ["get"]
       16 CALL                             R10 0 1
       17 GETTABLEKS                       R10 R10 K5 ["apisUrl"]
       19 NAMECALL                         R8 R8 K6 ["format"]
       21 CALL                             R8 2 1
       22 MOVE                             R6 R8
       23 MOVE                             R7 R0
       24 NAMECALL                         R4 R4 K6 ["format"]
       26 CALL                             R4 3 1
       27 GETUPVAL                         R5 2
       28 CALL                             R5 0 1
       29 LOADN                            R6 0
       30 LOADNIL                          R7
       31 LOADN                            R8 300
       32 JUMPIFNOTLT                      R6 R8 ; [+252]
       34 MOVE                             R8 R1
       35 CALL                             R8 0 1
       36 JUMPIFNOT                        R8 ; [+7]
       37 DUPTABLE                         R8 K8 [{"status"}]
       38 GETUPVAL                         R9 3
       39 GETTABLEKS                       R9 R9 K9 ["Cancelled"]
       41 SETTABLEKS                       R9 R8 K7 ["status"]
       43 RETURN                           R8 1
       44 NEWCLOSURE                       R9 P0
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 FASTPCALL                        pcall 1 ; [+2]
       49 GETIMPORT                        R8 K11 [pcall]
       51 CALL                             R8 1 2
       52 JUMPIF                           R8 ; [+27]
       53 DUPTABLE                         R10 K14 [{"status", "errorText", "errorType"}]
       54 GETUPVAL                         R11 3
       55 GETTABLEKS                       R11 R11 K15 ["Failed"]
       57 SETTABLEKS                       R11 R10 K7 ["status"]
       59 LOADK                            R11 K16 ["Sending HTTP request failed: %*"]
       60 MOVE                             R13 R9
       61 NAMECALL                         R11 R11 K6 ["format"]
       63 CALL                             R11 2 1
       64 SETTABLEKS                       R11 R10 K12 ["errorText"]
       66 GETUPVAL                         R12 1
       67 GETTABLEKS                       R12 R12 K17 ["FFlagPrimGenBetterErrorType"]
       69 JUMPIFNOT                        R12 ; [+4]
       70 GETUPVAL                         R11 4
       71 GETTABLEKS                       R11 R11 K18 ["PollFailed"]
       73 JUMP                             ; [+3]
       74 GETUPVAL                         R11 4
       75 GETTABLEKS                       R11 R11 K19 ["General"]
       77 SETTABLEKS                       R11 R10 K13 ["errorType"]
       79 RETURN                           R10 1
       80 GETTABLEKS                       R10 R9 K20 ["Success"]
       82 JUMPIF                           R10 ; [+66]
       83 GETUPVAL                         R10 5
       84 MOVE                             R11 R9
       85 LOADK                            R12 K21 ["pollJobStatus error (statusCode=%*), jobId=%*"]
       86 GETTABLEKS                       R14 R9 K22 ["StatusCode"]
       88 MOVE                             R15 R0
       89 NAMECALL                         R12 R12 K6 ["format"]
       91 CALL                             R12 3 1
       92 CALL                             R10 2 1
       93 GETUPVAL                         R12 1
       94 GETTABLEKS                       R12 R12 K17 ["FFlagPrimGenBetterErrorType"]
       96 JUMPIFNOT                        R12 ; [+4]
       97 GETUPVAL                         R11 4
       98 GETTABLEKS                       R11 R11 K18 ["PollFailed"]
      100 JUMP                             ; [+3]
      101 GETUPVAL                         R11 4
      102 GETTABLEKS                       R11 R11 K19 ["General"]
      104 LOADNIL                          R12
      105 GETUPVAL                         R13 1
      106 GETTABLEKS                       R13 R13 K17 ["FFlagPrimGenBetterErrorType"]
      108 JUMPIFNOT                        R13 ; [+15]
      109 GETUPVAL                         R13 6
      110 MOVE                             R14 R10
      111 CALL                             R13 1 1
      112 JUMPIFNOT                        R13 ; [+11]
      113 GETUPVAL                         R13 4
      114 GETTABLEKS                       R11 R13 K23 ["ModerationFailed"]
      116 LOADK                            R13 K24 ["Error while polling job status: (code 0001) id=%*"]
      117 GETTABLEKS                       R15 R10 K25 ["primitiveGenerationId"]
      119 NAMECALL                         R13 R13 K6 ["format"]
      121 CALL                             R13 2 1
      122 MOVE                             R12 R13
      123 JUMP                             ; [+14]
      124 LOADK                            R13 K26 ["Error while polling job status: status=%* message=%* id=%*"]
      125 GETTABLEKS                       R15 R9 K22 ["StatusCode"]
      127 GETUPVAL                         R16 7
      128 GETTABLEKS                       R16 R16 K27 ["toString"]
      130 MOVE                             R17 R10
      131 CALL                             R16 1 1
      132 GETTABLEKS                       R17 R10 K25 ["primitiveGenerationId"]
      134 NAMECALL                         R13 R13 K6 ["format"]
      136 CALL                             R13 4 1
      137 MOVE                             R12 R13
      138 DUPTABLE                         R13 K14 [{"status", "errorText", "errorType"}]
      139 GETUPVAL                         R14 3
      140 GETTABLEKS                       R14 R14 K15 ["Failed"]
      142 SETTABLEKS                       R14 R13 K7 ["status"]
      144 SETTABLEKS                       R12 R13 K12 ["errorText"]
      146 SETTABLEKS                       R11 R13 K13 ["errorType"]
      148 RETURN                           R13 1
      149 GETUPVAL                         R10 5
      150 MOVE                             R11 R9
      151 LOADK                            R12 K28 ["pollJobStatus (statusCode=%*), jobId=%*"]
      152 GETTABLEKS                       R14 R9 K22 ["StatusCode"]
      154 MOVE                             R15 R0
      155 NAMECALL                         R12 R12 K6 ["format"]
      157 CALL                             R12 3 1
      158 CALL                             R10 2 1
      159 GETTABLEKS                       R11 R10 K29 ["currentStage"]
      161 GETTABLEKS                       R13 R10 K7 ["status"]
      163 ORK                              R12 R13 K30 ["unknown"]
      164 JUMPIFNOT                        R2 ; [+7]
      165 JUMPIFNOT                        R11 ; [+6]
      166 JUMPIFEQ                         R11 R7 ; [+5]
      168 MOVE                             R7 R11
      169 MOVE                             R13 R2
      170 MOVE                             R14 R11
      171 CALL                             R13 1 0
      172 GETIMPORT                        R14 K33 [string.lower]
      174 MOVE                             R15 R12
      175 CALL                             R14 1 1
      176 GETIMPORT                        R15 K33 [string.lower]
      178 LOADK                            R16 K34 ["failed"]
      179 CALL                             R15 1 1
      180 JUMPIFEQ                         R14 R15 ; [+2]
      182 LOADB                            R13 0 +1
      183 LOADB                            R13 1
      184 JUMPIFNOT                        R13 ; [+11]
      185 GETUPVAL                         R13 8
      186 LOADK                            R14 K35 ["Job failed with status: %* and stage: %*, generationId=%*"]
      187 MOVE                             R16 R12
      188 GETTABLEKS                       R17 R10 K29 ["currentStage"]
      190 MOVE                             R18 R0
      191 NAMECALL                         R14 R14 K6 ["format"]
      193 CALL                             R14 4 1
      194 CALL                             R13 1 -1
      195 RETURN                           R13 -1
      196 GETIMPORT                        R14 K33 [string.lower]
      198 MOVE                             R15 R12
      199 CALL                             R14 1 1
      200 GETIMPORT                        R15 K33 [string.lower]
      202 LOADK                            R16 K36 ["completed"]
      203 CALL                             R15 1 1
      204 JUMPIFEQ                         R14 R15 ; [+2]
      206 LOADB                            R13 0 +1
      207 LOADB                            R13 1
      208 JUMPIFNOT                        R13 ; [+57]
      209 GETTABLEKS                       R15 R10 K37 ["result"]
      211 FASTCALL1                        TYPE R15 ; [+2]
      212 GETIMPORT                        R14 K39 [type]
      214 CALL                             R14 1 1
      215 JUMPIFNOTEQKS                    R14 K40 ["table"] ; [+4]
      217 GETTABLEKS                       R13 R10 K37 ["result"]
      219 JUMP                             ; [+2]
      220 NEWTABLE                         R13 0 0
      222 GETTABLEKS                       R14 R13 K41 ["script"]
      224 JUMPIFNOT                        R14 ; [+2]
      225 JUMPIFNOTEQKS                    R14 K3 [""] ; [+14]
      227 GETUPVAL                         R15 8
      228 LOADK                            R16 K42 ["No script URL found in completed job response: %*, generationId=%*"]
      229 GETUPVAL                         R18 7
      230 GETTABLEKS                       R18 R18 K27 ["toString"]
      232 MOVE                             R19 R13
      233 CALL                             R18 1 1
      234 MOVE                             R19 R0
      235 NAMECALL                         R16 R16 K6 ["format"]
      237 CALL                             R16 3 1
      238 CALL                             R15 1 -1
      239 RETURN                           R15 -1
      240 DUPTABLE                         R15 K47 [{"status", "currentStage", "scriptUrl", "dependencyVersion", "dependencies", "scriptPreviewS3Urls"}]
      241 GETUPVAL                         R16 3
      242 GETTABLEKS                       R16 R16 K20 ["Success"]
      244 SETTABLEKS                       R16 R15 K7 ["status"]
      246 SETTABLEKS                       R11 R15 K29 ["currentStage"]
      248 SETTABLEKS                       R14 R15 K43 ["scriptUrl"]
      250 GETTABLEKS                       R16 R13 K44 ["dependencyVersion"]
      252 SETTABLEKS                       R16 R15 K44 ["dependencyVersion"]
      254 GETTABLEKS                       R16 R13 K45 ["dependencies"]
      256 SETTABLEKS                       R16 R15 K45 ["dependencies"]
      258 GETUPVAL                         R16 9
      259 GETTABLEKS                       R16 R16 K48 ["parseScriptPreviewS3Urls"]
      261 MOVE                             R17 R13
      262 CALL                             R16 1 1
      263 SETTABLEKS                       R16 R15 K46 ["scriptPreviewS3Urls"]
      265 RETURN                           R15 1
      266 MOVE                             R13 R1
      267 CALL                             R13 0 1
      268 JUMPIFNOT                        R13 ; [+7]
      269 DUPTABLE                         R13 K8 [{"status"}]
      270 GETUPVAL                         R14 3
      271 GETTABLEKS                       R14 R14 K9 ["Cancelled"]
      273 SETTABLEKS                       R14 R13 K7 ["status"]
      275 RETURN                           R13 1
      276 ADDK                             R6 R6 K49 [1]
      277 GETIMPORT                        R13 K52 [task.wait]
      279 GETUPVAL                         R15 1
      280 GETTABLEKS                       R15 R15 K54 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      282 DIVK                             R14 R15 K53 [1000]
      283 CALL                             R13 1 0
      284 JUMPBACK                         ; [-254]
      285 DUPTABLE                         R8 K14 [{"status", "errorText", "errorType"}]
      286 GETUPVAL                         R9 3
      287 GETTABLEKS                       R9 R9 K15 ["Failed"]
      289 SETTABLEKS                       R9 R8 K7 ["status"]
      291 LOADK                            R9 K55 ["Polling timed out after %* attempts, generationId=%*"]
      292 LOADN                            R11 300
      293 MOVE                             R12 R0
      294 NAMECALL                         R9 R9 K6 ["format"]
      296 CALL                             R9 3 1
      297 SETTABLEKS                       R9 R8 K12 ["errorText"]
      299 GETUPVAL                         R10 1
      300 GETTABLEKS                       R10 R10 K17 ["FFlagPrimGenBetterErrorType"]
      302 JUMPIFNOT                        R10 ; [+4]
      303 GETUPVAL                         R9 4
      304 GETTABLEKS                       R9 R9 K18 ["PollFailed"]
      306 JUMP                             ; [+3]
      307 GETUPVAL                         R9 4
      308 GETTABLEKS                       R9 R9 K19 ["General"]
      310 SETTABLEKS                       R9 R8 K13 ["errorType"]
      312 RETURN                           R8 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["http"]
        6 GETTABLEKS                       R2 R2 K2 ["requestAsync"]
        8 DUPTABLE                         R3 K6 [{["Url"], ["Method"] = "GET"}]
        9 SETTABLEKS                       R0 R3 K3 ["Url"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K7 ["Success"]
       14 JUMPIF                           R3 ; [+42]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K8 ["decode"]
       18 GETTABLEKS                       R5 R2 K9 ["Body"]
       20 FASTPCALL                        pcall 2 ; [+2]
       21 GETIMPORT                        R3 K11 [pcall]
       23 CALL                             R3 2 2
       24 JUMPIFNOT                        R3 ; [+18]
       25 LOADK                            R5 K12 ["Failed to fetch generated script: %* message=%*:%* id=%*"]
       26 GETTABLEKS                       R7 R2 K13 ["StatusCode"]
       28 GETTABLEKS                       R8 R4 K14 ["message"]
       30 GETTABLEKS                       R9 R4 K15 ["details"]
       32 GETTABLEKS                       R10 R4 K16 ["primitiveGenerationId"]
       34 NAMECALL                         R5 R5 K17 ["format"]
       36 CALL                             R5 5 1
       37 GETIMPORT                        R6 K19 [error]
       39 MOVE                             R7 R5
       40 LOADN                            R8 0
       41 CALL                             R6 2 0
       42 JUMP                             ; [+14]
       43 LOADK                            R5 K20 ["Failed to fetch generated script: %* body=%*, scriptUrl=%*"]
       44 GETTABLEKS                       R7 R2 K13 ["StatusCode"]
       46 GETTABLEKS                       R8 R2 K9 ["Body"]
       48 MOVE                             R9 R0
       49 NAMECALL                         R5 R5 K17 ["format"]
       51 CALL                             R5 4 1
       52 GETIMPORT                        R6 K19 [error]
       54 MOVE                             R7 R5
       55 LOADN                            R8 0
       56 CALL                             R6 2 0
       57 GETTABLEKS                       R3 R2 K9 ["Body"]
       59 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K5 [{["Url"], ["Method"] = "GET"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K6 ["scriptUrl"]
        9 SETTABLEKS                       R2 R1 K2 ["Url"]
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 CALL                             R2 0 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R1
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 NEWCLOSURE                       R10 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R8
       13 FASTPCALL                        pcall 1 ; [+2]
       14 GETIMPORT                        R9 K2 [pcall]
       16 CALL                             R9 1 2
       17 JUMPIF                           R9 ; [+12]
       18 LOADK                            R11 K3 ["Sending HTTP request to fetch dependency \"%*\" failed: %*"]
       19 GETTABLEKS                       R13 R8 K4 ["moduleName"]
       21 MOVE                             R14 R10
       22 NAMECALL                         R11 R11 K5 ["format"]
       24 CALL                             R11 3 1
       25 GETIMPORT                        R12 K7 [error]
       27 MOVE                             R13 R11
       28 LOADN                            R14 0
       29 CALL                             R12 2 0
       30 GETTABLEKS                       R11 R10 K8 ["Success"]
       32 JUMPIF                           R11 ; [+31]
       33 GETUPVAL                         R11 1
       34 MOVE                             R12 R10
       35 LOADK                            R13 K9 ["fetchDependency \"%*\" (statusCode=%*), jobId=%*"]
       36 GETTABLEKS                       R15 R8 K4 ["moduleName"]
       38 GETTABLEKS                       R16 R10 K10 ["StatusCode"]
       40 MOVE                             R17 R0
       41 NAMECALL                         R13 R13 K5 ["format"]
       43 CALL                             R13 4 1
       44 CALL                             R11 2 1
       45 LOADK                            R12 K11 ["Failed to fetch dependency \"%*\": %* message=%*:%* id=%*"]
       46 GETTABLEKS                       R14 R8 K4 ["moduleName"]
       48 GETTABLEKS                       R15 R10 K10 ["StatusCode"]
       50 GETTABLEKS                       R16 R11 K12 ["message"]
       52 GETTABLEKS                       R17 R11 K13 ["details"]
       54 GETTABLEKS                       R18 R11 K14 ["primitiveGenerationId"]
       56 NAMECALL                         R12 R12 K5 ["format"]
       58 CALL                             R12 6 1
       59 GETIMPORT                        R13 K7 [error]
       61 MOVE                             R14 R12
       62 LOADN                            R15 0
       63 CALL                             R13 2 0
       64 DUPTABLE                         R13 K17 [{"variableName", "moduleName", "source"}]
       65 GETTABLEKS                       R14 R8 K15 ["variableName"]
       67 SETTABLEKS                       R14 R13 K15 ["variableName"]
       69 GETTABLEKS                       R14 R8 K4 ["moduleName"]
       71 SETTABLEKS                       R14 R13 K4 ["moduleName"]
       73 GETTABLEKS                       R14 R10 K18 ["Body"]
       75 SETTABLEKS                       R14 R13 K16 ["source"]
       77 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       79 MOVE                             R12 R3
       80 GETIMPORT                        R11 K21 [table.insert]
       82 CALL                             R11 2 0
       83 FORGLOOP                         R4 2 ; [-74]
       85 RETURN                           R3 1

PROTO_20:
        0 MOVE                             R3 R1
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+7]
        3 DUPTABLE                         R3 K1 [{"status"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Cancelled"]
        7 SETTABLEKS                       R4 R3 K0 ["status"]
        9 RETURN                           R3 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["FFlagDebugMockPrimitiveGenBackend"]
       13 JUMPIFNOT                        R3 ; [+8]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["get"]
       17 CALL                             R3 0 1
       18 GETTABLEKS                       R3 R3 K5 ["getMockPrimGenBackendData"]
       20 CALL                             R3 0 -1
       21 RETURN                           R3 -1
       22 GETUPVAL                         R3 3
       23 MOVE                             R4 R0
       24 MOVE                             R5 R1
       25 MOVE                             R6 R2
       26 CALL                             R3 3 1
       27 GETTABLEKS                       R4 R3 K0 ["status"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K2 ["Cancelled"]
       32 JUMPIFNOTEQ                      R4 R5 ; [+8]
       34 DUPTABLE                         R4 K1 [{"status"}]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K2 ["Cancelled"]
       38 SETTABLEKS                       R5 R4 K0 ["status"]
       40 RETURN                           R4 1
       41 GETTABLEKS                       R4 R3 K0 ["status"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K6 ["Failed"]
       46 JUMPIFNOTEQ                      R4 R5 ; [+2]
       48 RETURN                           R3 1
       49 LOADNIL                          R4
       50 GETTABLEKS                       R5 R3 K7 ["dependencies"]
       52 JUMPIFNOT                        R5 ; [+17]
       53 GETTABLEKS                       R6 R3 K7 ["dependencies"]
       55 LENGTH                           R5 R6
       56 LOADN                            R6 0
       57 JUMPIFNOTLT                      R6 R5 ; [+12]
       59 MOVE                             R5 R2
       60 GETUPVAL                         R6 4
       61 GETTABLEKS                       R6 R6 K8 ["ResolvingDependencies"]
       63 CALL                             R5 1 0
       64 GETUPVAL                         R5 5
       65 MOVE                             R6 R0
       66 GETTABLEKS                       R7 R3 K7 ["dependencies"]
       68 CALL                             R5 2 1
       69 MOVE                             R4 R5
       70 GETTABLEKS                       R5 R3 K9 ["scriptUrl"]
       72 JUMPIF                           R5 ; [+4]
       73 GETUPVAL                         R5 6
       74 LOADK                            R6 K10 ["No script URL found in response"]
       75 CALL                             R5 1 -1
       76 RETURN                           R5 -1
       77 MOVE                             R5 R2
       78 GETUPVAL                         R6 4
       79 GETTABLEKS                       R6 R6 K11 ["DownloadingScript"]
       81 CALL                             R5 1 0
       82 GETUPVAL                         R5 7
       83 GETTABLEKS                       R6 R3 K9 ["scriptUrl"]
       85 CALL                             R5 1 1
       86 DUPTABLE                         R6 K16 [{"status", "luauCode", "dependencyVersion", "resolvedDependencies", "scriptPreviewS3Urls"}]
       87 GETUPVAL                         R7 0
       88 GETTABLEKS                       R7 R7 K17 ["Success"]
       90 SETTABLEKS                       R7 R6 K0 ["status"]
       92 SETTABLEKS                       R5 R6 K12 ["luauCode"]
       94 GETTABLEKS                       R7 R3 K13 ["dependencyVersion"]
       96 SETTABLEKS                       R7 R6 K13 ["dependencyVersion"]
       98 SETTABLEKS                       R4 R6 K14 ["resolvedDependencies"]
      100 GETTABLEKS                       R7 R3 K15 ["scriptPreviewS3Urls"]
      102 SETTABLEKS                       R7 R6 K15 ["scriptPreviewS3Urls"]
      104 RETURN                           R6 1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 SETTABLE                         R1 R2 R0
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K0 ["Field"]
       11 GETTABLEKS                       R4 R4 K1 ["Images"]
       13 GETUPVAL                         R5 3
       14 GETUPVAL                         R7 0
       15 NAMECALL                         R5 R5 K2 ["JSONEncode"]
       17 CALL                             R5 2 -1
       18 NAMECALL                         R2 R2 K3 ["Set"]
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_22:
        0 JUMPIFNOT                        R1 ; [+3]
        1 LENGTH                           R2 R1
        2 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETIMPORT                        R2 K3 [table.create]
        8 LENGTH                           R3 R1
        9 LOADK                            R4 K4 [""]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K5 ["Field"]
       14 GETTABLEKS                       R5 R5 K6 ["Images"]
       16 GETUPVAL                         R6 1
       17 MOVE                             R8 R2
       18 NAMECALL                         R6 R6 K7 ["JSONEncode"]
       20 CALL                             R6 2 -1
       21 NAMECALL                         R3 R0 K8 ["Set"]
       23 CALL                             R3 -1 0
       24 DUPTABLE                         R3 K10 [{"setPreviewImage"}]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U1
       30 SETTABLEKS                       R4 R3 K9 ["setPreviewImage"]
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K11 ["fetchPreviewImagesSync"]
       35 MOVE                             R5 R1
       36 MOVE                             R6 R3
       37 GETUPVAL                         R7 3
       38 GETTABLEKS                       R7 R7 K12 ["get"]
       40 CALL                             R7 0 -1
       41 CALL                             R4 -1 0
       42 LOADB                            R4 1
       43 RETURN                           R4 1

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
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["HttpService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["Dash"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Guest"]
       30 GETTABLEKS                       R5 R5 K14 ["Environment"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K15 ["Flags"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K10 [require]
       40 GETTABLEKS                       R7 R0 K16 ["Util"]
       42 GETTABLEKS                       R7 R7 K17 ["FormRequestBuilder"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K10 [require]
       47 GETTABLEKS                       R8 R0 K11 ["Parent"]
       49 GETTABLEKS                       R8 R8 K18 ["Gen3dCore"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K10 [require]
       54 GETTABLEKS                       R9 R0 K16 ["Util"]
       56 GETTABLEKS                       R9 R9 K19 ["InstanceChannel"]
       58 GETTABLEKS                       R9 R9 K19 ["InstanceChannel"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K10 [require]
       63 GETTABLEKS                       R10 R0 K11 ["Parent"]
       65 GETTABLEKS                       R10 R10 K20 ["ModelContextProtocol"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K10 [require]
       70 GETTABLEKS                       R11 R0 K16 ["Util"]
       72 GETTABLEKS                       R11 R11 K21 ["PrimitiveGen"]
       74 GETTABLEKS                       R11 R11 K22 ["PrimitiveGenChannel"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K10 [require]
       79 GETTABLEKS                       R12 R0 K16 ["Util"]
       81 GETTABLEKS                       R12 R12 K21 ["PrimitiveGen"]
       83 GETTABLEKS                       R12 R12 K23 ["PrimitiveGenPreviewFetch"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R13 R0 K16 ["Util"]
       90 GETTABLEKS                       R13 R13 K24 ["ToolUtils"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R14 R0 K25 ["Types"]
       97 CALL                             R13 1 1
       98 GETTABLEKS                       R14 R9 K26 ["Json"]
      100 GETTABLEKS                       R15 R10 K27 ["Stage"]
      102 DUPTABLE                         R16 K34 [{["Success"] = "success", ["Cancelled"] = "cancelled", ["Failed"] = "failed"}]
      103 DUPTABLE                         R17 K49 [{["General"] = "General", ["CancelByUser"] = "CancelByUser", ["TooManyConcurrentJobs"] = "TooManyConcurrentJobs", ["DmIsUnreachable"] = "DmIsUnreachable", ["DmHealthChecking"] = "DmHealthChecking", ["EmptyPrompt"] = "EmptyPrompt", ["ImageFormat"] = "ImageFormat", ["MaxCharacters"] = "MaxCharacters", ["ModerationFailed"] = "ModerationFailed", ["PollFailed"] = "PollFailed", ["PluginVersionMismatch"] = "PluginVersionMismatch", ["ScriptFetchError"] = "ScriptFetchError", ["TooManyRequests"] = "TooManyRequests", ["StudioLeftEditMode"] = "StudioLeftEditMode"}]
      104 DUPCLOSURE                       R18 K50 [PROTO_0]
      105 DUPCLOSURE                       R19 K51 [PROTO_1]
      106 CAPTURE                          VAL R17
      107 DUPCLOSURE                       R20 K52 [PROTO_2]
      108 DUPCLOSURE                       R21 K53 [PROTO_3]
      109 DUPCLOSURE                       R22 K54 [PROTO_4]
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R14
      112 DUPCLOSURE                       R23 K55 [PROTO_5]
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R4
      115 DUPCLOSURE                       R24 K56 [PROTO_6]
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R4
      118 DUPCLOSURE                       R25 K57 [PROTO_7]
      119 CAPTURE                          VAL R5
      120 DUPCLOSURE                       R26 K58 [PROTO_8]
      121 DUPCLOSURE                       R27 K59 [PROTO_9]
      122 DUPCLOSURE                       R28 K60 [PROTO_10]
      123 CAPTURE                          VAL R17
      124 DUPCLOSURE                       R29 K61 [PROTO_11]
      125 DUPCLOSURE                       R30 K62 [PROTO_12]
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R23
      132 DUPCLOSURE                       R31 K63 [PROTO_14]
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R30
      136 CAPTURE                          VAL R22
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R26
      139 CAPTURE                          VAL R27
      140 DUPCLOSURE                       R32 K64 [PROTO_16]
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R23
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R22
      147 CAPTURE                          VAL R26
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R11
      151 DUPCLOSURE                       R33 K65 [PROTO_17]
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R14
      154 DUPCLOSURE                       R34 K66 [PROTO_19]
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R22
      157 DUPCLOSURE                       R35 K67 [PROTO_20]
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R32
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R34
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R33
      166 DUPCLOSURE                       R36 K68 [PROTO_22]
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R4
      171 DUPTABLE                         R37 K82 [{["MAX_POLL_ATTEMPTS"] = 300, ["GenerationStages"], ["ResultStatus"], ["ErrorType"], ["raiseError"], ["raiseGenerationError"], ["asGenerationError"], ["getAssetDmUnreachableMessage"], ["getExecutionErrorCode"], ["submitGenerationJob"], ["pollForScriptAsync"], ["streamPreviewImagesFromS3"]}]
      172 SETTABLEKS                       R15 R37 K71 ["GenerationStages"]
      174 SETTABLEKS                       R16 R37 K72 ["ResultStatus"]
      176 SETTABLEKS                       R17 R37 K73 ["ErrorType"]
      178 SETTABLEKS                       R18 R37 K74 ["raiseError"]
      180 SETTABLEKS                       R19 R37 K75 ["raiseGenerationError"]
      182 SETTABLEKS                       R20 R37 K76 ["asGenerationError"]
      184 SETTABLEKS                       R25 R37 K77 ["getAssetDmUnreachableMessage"]
      186 SETTABLEKS                       R28 R37 K78 ["getExecutionErrorCode"]
      188 SETTABLEKS                       R31 R37 K79 ["submitGenerationJob"]
      190 SETTABLEKS                       R35 R37 K80 ["pollForScriptAsync"]
      192 SETTABLEKS                       R36 R37 K81 ["streamPreviewImagesFromS3"]
      194 RETURN                           R37 1
