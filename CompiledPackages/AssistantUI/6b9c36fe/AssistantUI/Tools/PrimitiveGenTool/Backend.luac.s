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
        6 LOADK                            R2 K2 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["get"]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R4 R4 K4 ["apisUrl"]
       13 NAMECALL                         R2 R2 K5 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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
       12 LOADK                            R3 K7 ["Unsupported PrimitiveGen image MIME type: %*"]
       13 MOVE                             R5 R0
       14 NAMECALL                         R3 R3 K8 ["format"]
       16 CALL                             R3 2 1
       17 MOVE                             R2 R3
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

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
       43 JUMPIFNOT                        R1 ; [+34]
       44 JUMPIFNOT                        R3 ; [+33]
       45 GETTABLEKS                       R6 R1 K15 ["mimeType"]
       47 JUMPIFEQKS                       R6 K16 ["image/jpeg"] ; [+3]
       49 JUMPIFNOTEQKS                    R6 K17 ["image/jpg"] ; [+3]
       51 LOADK                            R7 K18 ["image.jpg"]
       52 JUMP                             ; [+14]
       53 JUMPIFNOTEQKS                    R6 K19 ["image/png"] ; [+3]
       55 LOADK                            R7 K20 ["image.png"]
       56 JUMP                             ; [+10]
       57 GETIMPORT                        R8 K22 [error]
       59 LOADK                            R10 K23 ["Unsupported PrimitiveGen image MIME type: %*"]
       60 MOVE                             R12 R6
       61 NAMECALL                         R10 R10 K11 ["format"]
       63 CALL                             R10 2 1
       64 MOVE                             R9 R10
       65 CALL                             R8 1 0
       66 LOADNIL                          R7
       67 LOADK                            R10 K24 ["Image"]
       68 GETUPVAL                         R11 1
       69 GETTABLEKS                       R11 R11 K25 ["file"]
       71 MOVE                             R12 R7
       72 MOVE                             R13 R3
       73 MOVE                             R14 R6
       74 CALL                             R11 3 -1
       75 NAMECALL                         R8 R4 K26 ["addFile"]
       77 CALL                             R8 -1 0
       78 GETUPVAL                         R6 2
       79 GETTABLEKS                       R6 R6 K27 ["FFlagPrimGenSchemaSelector"]
       81 JUMPIFNOT                        R6 ; [+10]
       82 JUMPIFNOT                        R2 ; [+9]
       83 LENGTH                           R6 R2
       84 LOADN                            R7 0
       85 JUMPIFNOTLT                      R7 R6 ; [+6]
       87 LOADK                            R8 K28 ["schemaDefinition"]
       88 MOVE                             R9 R2
       89 NAMECALL                         R6 R4 K29 ["addList"]
       91 CALL                             R6 3 0
       92 MOVE                             R8 R5
       93 LOADK                            R9 K30 ["POST"]
       94 NAMECALL                         R6 R4 K31 ["buildRequest"]
       96 CALL                             R6 3 1
       97 GETUPVAL                         R7 4
       98 GETTABLEKS                       R7 R7 K32 ["join"]
      100 GETTABLEKS                       R8 R6 K33 ["Headers"]
      102 GETUPVAL                         R9 5
      103 CALL                             R9 0 1
      104 CALL                             R7 2 1
      105 SETTABLEKS                       R7 R6 K33 ["Headers"]
      107 RETURN                           R6 1

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
       14 LOADK                            R5 K2 ["submitGenerationJob (statusCode=%*)"]
       15 GETTABLEKS                       R7 R1 K3 ["StatusCode"]
       17 NAMECALL                         R5 R5 K4 ["format"]
       19 CALL                             R5 2 1
       20 MOVE                             R4 R5
       21 CALL                             R2 2 1
       22 RETURN                           R1 2

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagDebugMockPrimitiveGenBackend"]
        3 JUMPIFNOT                        R3 ; [+2]
        4 DUPTABLE                         R3 K3 [{["generationId"] = "1234567890"}]
        5 RETURN                           R3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K4 ["get"]
        9 CALL                             R3 0 1
       10 GETIMPORT                        R4 K6 [pcall]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U3
       19 CALL                             R4 1 3
       20 JUMPIF                           R4 ; [+15]
       21 DUPTABLE                         R7 K10 [{["generationId"] = "", ["errorType"], ["errorMessage"]}]
       22 GETUPVAL                         R8 4
       23 GETTABLEKS                       R8 R8 K11 ["General"]
       25 SETTABLEKS                       R8 R7 K8 ["errorType"]
       27 LOADK                            R9 K12 ["Failed to get response from server: %*"]
       28 MOVE                             R11 R5
       29 NAMECALL                         R9 R9 K13 ["format"]
       31 CALL                             R9 2 1
       32 MOVE                             R8 R9
       33 SETTABLEKS                       R8 R7 K9 ["errorMessage"]
       35 RETURN                           R7 1
       36 GETTABLEKS                       R7 R5 K14 ["Success"]
       38 JUMPIF                           R7 ; [+49]
       39 LOADK                            R8 K15 ["Failed to submit generation job: statusCode: %*, body: %*"]
       40 GETTABLEKS                       R10 R5 K16 ["StatusCode"]
       42 GETTABLEKS                       R11 R5 K17 ["Body"]
       44 NAMECALL                         R8 R8 K13 ["format"]
       46 CALL                             R8 3 1
       47 MOVE                             R7 R8
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R8 R8 K11 ["General"]
       51 GETTABLEKS                       R9 R5 K16 ["StatusCode"]
       53 JUMPIFNOTEQKN                    R9 K18 [429] ; [+5]
       55 GETUPVAL                         R9 4
       56 GETTABLEKS                       R8 R9 K19 ["TooManyRequests"]
       58 JUMP                             ; [+23]
       59 GETUPVAL                         R9 0
       60 GETTABLEKS                       R9 R9 K20 ["FFlagPrimGenBetterErrorType"]
       62 JUMPIFNOT                        R9 ; [+8]
       63 GETUPVAL                         R9 5
       64 MOVE                             R10 R6
       65 CALL                             R9 1 1
       66 JUMPIFNOT                        R9 ; [+4]
       67 GETUPVAL                         R9 4
       68 GETTABLEKS                       R8 R9 K21 ["ModerationFailed"]
       70 JUMP                             ; [+11]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K20 ["FFlagPrimGenBetterErrorType"]
       74 JUMPIFNOT                        R9 ; [+7]
       75 GETUPVAL                         R9 6
       76 MOVE                             R10 R6
       77 CALL                             R9 1 1
       78 JUMPIFNOT                        R9 ; [+3]
       79 GETUPVAL                         R9 4
       80 GETTABLEKS                       R8 R9 K22 ["EmptyPrompt"]
       82 DUPTABLE                         R9 K10 [{["generationId"] = "", ["errorType"], ["errorMessage"]}]
       83 SETTABLEKS                       R8 R9 K8 ["errorType"]
       85 SETTABLEKS                       R7 R9 K9 ["errorMessage"]
       87 RETURN                           R9 1
       88 GETTABLEKS                       R7 R6 K23 ["primitiveGenerationId"]
       90 JUMPIF                           R7 ; [+16]
       91 DUPTABLE                         R8 K10 [{["generationId"] = "", ["errorType"], ["errorMessage"]}]
       92 GETUPVAL                         R9 4
       93 GETTABLEKS                       R9 R9 K11 ["General"]
       95 SETTABLEKS                       R9 R8 K8 ["errorType"]
       97 LOADK                            R10 K24 ["Response does not contain 'primitiveGenerationId': %*"]
       98 GETTABLEKS                       R12 R5 K17 ["Body"]
      100 NAMECALL                         R10 R10 K13 ["format"]
      102 CALL                             R10 2 1
      103 MOVE                             R9 R10
      104 SETTABLEKS                       R9 R8 K9 ["errorMessage"]
      106 RETURN                           R8 1
      107 DUPTABLE                         R8 K25 [{"generationId"}]
      108 SETTABLEKS                       R7 R8 K1 ["generationId"]
      110 RETURN                           R8 1

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
        4 LOADK                            R5 K1 ["%*/%*"]
        5 GETUPVAL                         R8 1
        6 GETTABLEKS                       R8 R8 K2 ["FStringMCPAssistantPrimitiveGenServerURL"]
        8 JUMPIFEQKS                       R8 K3 [""] ; [+3]
       10 MOVE                             R7 R8
       11 JUMP                             ; [+11]
       12 LOADK                            R9 K4 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
       13 GETUPVAL                         R11 0
       14 GETTABLEKS                       R11 R11 K0 ["get"]
       16 CALL                             R11 0 1
       17 GETTABLEKS                       R11 R11 K5 ["apisUrl"]
       19 NAMECALL                         R9 R9 K6 ["format"]
       21 CALL                             R9 2 1
       22 MOVE                             R7 R9
       23 MOVE                             R8 R0
       24 NAMECALL                         R5 R5 K6 ["format"]
       26 CALL                             R5 3 1
       27 MOVE                             R4 R5
       28 GETUPVAL                         R5 2
       29 CALL                             R5 0 1
       30 LOADN                            R6 0
       31 LOADNIL                          R7
       32 LOADN                            R8 300
       33 JUMPIFNOTLT                      R6 R8 ; [+256]
       35 MOVE                             R8 R1
       36 CALL                             R8 0 1
       37 JUMPIFNOT                        R8 ; [+7]
       38 DUPTABLE                         R8 K8 [{"status"}]
       39 GETUPVAL                         R9 3
       40 GETTABLEKS                       R9 R9 K9 ["Cancelled"]
       42 SETTABLEKS                       R9 R8 K7 ["status"]
       44 RETURN                           R8 1
       45 GETIMPORT                        R8 K11 [pcall]
       47 NEWCLOSURE                       R9 P0
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 CALL                             R8 1 2
       52 JUMPIF                           R8 ; [+28]
       53 DUPTABLE                         R10 K14 [{"status", "errorText", "errorType"}]
       54 GETUPVAL                         R11 3
       55 GETTABLEKS                       R11 R11 K15 ["Failed"]
       57 SETTABLEKS                       R11 R10 K7 ["status"]
       59 LOADK                            R12 K16 ["Sending HTTP request failed: %*"]
       60 MOVE                             R14 R9
       61 NAMECALL                         R12 R12 K6 ["format"]
       63 CALL                             R12 2 1
       64 MOVE                             R11 R12
       65 SETTABLEKS                       R11 R10 K12 ["errorText"]
       67 GETUPVAL                         R12 1
       68 GETTABLEKS                       R12 R12 K17 ["FFlagPrimGenBetterErrorType"]
       70 JUMPIFNOT                        R12 ; [+4]
       71 GETUPVAL                         R11 4
       72 GETTABLEKS                       R11 R11 K18 ["PollFailed"]
       74 JUMP                             ; [+3]
       75 GETUPVAL                         R11 4
       76 GETTABLEKS                       R11 R11 K19 ["General"]
       78 SETTABLEKS                       R11 R10 K13 ["errorType"]
       80 RETURN                           R10 1
       81 GETTABLEKS                       R10 R9 K20 ["Success"]
       83 JUMPIF                           R10 ; [+67]
       84 GETUPVAL                         R10 5
       85 MOVE                             R11 R9
       86 LOADK                            R13 K21 ["pollJobStatus error (statusCode=%*), jobId=%*"]
       87 GETTABLEKS                       R15 R9 K22 ["StatusCode"]
       89 MOVE                             R16 R0
       90 NAMECALL                         R13 R13 K6 ["format"]
       92 CALL                             R13 3 1
       93 MOVE                             R12 R13
       94 CALL                             R10 2 1
       95 GETUPVAL                         R12 1
       96 GETTABLEKS                       R12 R12 K17 ["FFlagPrimGenBetterErrorType"]
       98 JUMPIFNOT                        R12 ; [+4]
       99 GETUPVAL                         R11 4
      100 GETTABLEKS                       R11 R11 K18 ["PollFailed"]
      102 JUMP                             ; [+3]
      103 GETUPVAL                         R11 4
      104 GETTABLEKS                       R11 R11 K19 ["General"]
      106 LOADNIL                          R12
      107 GETUPVAL                         R13 1
      108 GETTABLEKS                       R13 R13 K17 ["FFlagPrimGenBetterErrorType"]
      110 JUMPIFNOT                        R13 ; [+15]
      111 GETUPVAL                         R13 6
      112 MOVE                             R14 R10
      113 CALL                             R13 1 1
      114 JUMPIFNOT                        R13 ; [+11]
      115 GETUPVAL                         R13 4
      116 GETTABLEKS                       R11 R13 K23 ["ModerationFailed"]
      118 LOADK                            R13 K24 ["Error while polling job status: (code 0001) id=%*"]
      119 GETTABLEKS                       R15 R10 K25 ["primitiveGenerationId"]
      121 NAMECALL                         R13 R13 K6 ["format"]
      123 CALL                             R13 2 1
      124 MOVE                             R12 R13
      125 JUMP                             ; [+14]
      126 LOADK                            R13 K26 ["Error while polling job status: status=%* message=%* id=%*"]
      127 GETTABLEKS                       R15 R9 K22 ["StatusCode"]
      129 GETUPVAL                         R16 7
      130 GETTABLEKS                       R16 R16 K27 ["toString"]
      132 MOVE                             R17 R10
      133 CALL                             R16 1 1
      134 GETTABLEKS                       R17 R10 K25 ["primitiveGenerationId"]
      136 NAMECALL                         R13 R13 K6 ["format"]
      138 CALL                             R13 4 1
      139 MOVE                             R12 R13
      140 DUPTABLE                         R13 K14 [{"status", "errorText", "errorType"}]
      141 GETUPVAL                         R14 3
      142 GETTABLEKS                       R14 R14 K15 ["Failed"]
      144 SETTABLEKS                       R14 R13 K7 ["status"]
      146 SETTABLEKS                       R12 R13 K12 ["errorText"]
      148 SETTABLEKS                       R11 R13 K13 ["errorType"]
      150 RETURN                           R13 1
      151 GETUPVAL                         R10 5
      152 MOVE                             R11 R9
      153 LOADK                            R13 K28 ["pollJobStatus (statusCode=%*), jobId=%*"]
      154 GETTABLEKS                       R15 R9 K22 ["StatusCode"]
      156 MOVE                             R16 R0
      157 NAMECALL                         R13 R13 K6 ["format"]
      159 CALL                             R13 3 1
      160 MOVE                             R12 R13
      161 CALL                             R10 2 1
      162 GETTABLEKS                       R11 R10 K29 ["currentStage"]
      164 GETTABLEKS                       R13 R10 K7 ["status"]
      166 ORK                              R12 R13 K30 ["unknown"]
      167 JUMPIFNOT                        R2 ; [+7]
      168 JUMPIFNOT                        R11 ; [+6]
      169 JUMPIFEQ                         R11 R7 ; [+5]
      171 MOVE                             R7 R11
      172 MOVE                             R13 R2
      173 MOVE                             R14 R11
      174 CALL                             R13 1 0
      175 GETIMPORT                        R14 K33 [string.lower]
      177 MOVE                             R15 R12
      178 CALL                             R14 1 1
      179 GETIMPORT                        R15 K33 [string.lower]
      181 LOADK                            R16 K34 ["failed"]
      182 CALL                             R15 1 1
      183 JUMPIFEQ                         R14 R15 ; [+2]
      185 LOADB                            R13 0 +1
      186 LOADB                            R13 1
      187 JUMPIFNOT                        R13 ; [+12]
      188 GETUPVAL                         R13 8
      189 LOADK                            R15 K35 ["Job failed with status: %* and stage: %*, generationId=%*"]
      190 MOVE                             R17 R12
      191 GETTABLEKS                       R18 R10 K29 ["currentStage"]
      193 MOVE                             R19 R0
      194 NAMECALL                         R15 R15 K6 ["format"]
      196 CALL                             R15 4 1
      197 MOVE                             R14 R15
      198 CALL                             R13 1 -1
      199 RETURN                           R13 -1
      200 GETIMPORT                        R14 K33 [string.lower]
      202 MOVE                             R15 R12
      203 CALL                             R14 1 1
      204 GETIMPORT                        R15 K33 [string.lower]
      206 LOADK                            R16 K36 ["completed"]
      207 CALL                             R15 1 1
      208 JUMPIFEQ                         R14 R15 ; [+2]
      210 LOADB                            R13 0 +1
      211 LOADB                            R13 1
      212 JUMPIFNOT                        R13 ; [+58]
      213 GETTABLEKS                       R15 R10 K37 ["result"]
      215 FASTCALL1                        TYPE R15 ; [+2]
      216 GETIMPORT                        R14 K39 [type]
      218 CALL                             R14 1 1
      219 JUMPIFNOTEQKS                    R14 K40 ["table"] ; [+4]
      221 GETTABLEKS                       R13 R10 K37 ["result"]
      223 JUMP                             ; [+2]
      224 NEWTABLE                         R13 0 0
      226 GETTABLEKS                       R14 R13 K41 ["script"]
      228 JUMPIFNOT                        R14 ; [+2]
      229 JUMPIFNOTEQKS                    R14 K3 [""] ; [+15]
      231 GETUPVAL                         R15 8
      232 LOADK                            R17 K42 ["No script URL found in completed job response: %*, generationId=%*"]
      233 GETUPVAL                         R19 7
      234 GETTABLEKS                       R19 R19 K27 ["toString"]
      236 MOVE                             R20 R13
      237 CALL                             R19 1 1
      238 MOVE                             R20 R0
      239 NAMECALL                         R17 R17 K6 ["format"]
      241 CALL                             R17 3 1
      242 MOVE                             R16 R17
      243 CALL                             R15 1 -1
      244 RETURN                           R15 -1
      245 DUPTABLE                         R15 K47 [{"status", "currentStage", "scriptUrl", "dependencyVersion", "dependencies", "scriptPreviewS3Urls"}]
      246 GETUPVAL                         R16 3
      247 GETTABLEKS                       R16 R16 K20 ["Success"]
      249 SETTABLEKS                       R16 R15 K7 ["status"]
      251 SETTABLEKS                       R11 R15 K29 ["currentStage"]
      253 SETTABLEKS                       R14 R15 K43 ["scriptUrl"]
      255 GETTABLEKS                       R16 R13 K44 ["dependencyVersion"]
      257 SETTABLEKS                       R16 R15 K44 ["dependencyVersion"]
      259 GETTABLEKS                       R16 R13 K45 ["dependencies"]
      261 SETTABLEKS                       R16 R15 K45 ["dependencies"]
      263 GETUPVAL                         R16 9
      264 GETTABLEKS                       R16 R16 K48 ["parseScriptPreviewS3Urls"]
      266 MOVE                             R17 R13
      267 CALL                             R16 1 1
      268 SETTABLEKS                       R16 R15 K46 ["scriptPreviewS3Urls"]
      270 RETURN                           R15 1
      271 MOVE                             R13 R1
      272 CALL                             R13 0 1
      273 JUMPIFNOT                        R13 ; [+7]
      274 DUPTABLE                         R13 K8 [{"status"}]
      275 GETUPVAL                         R14 3
      276 GETTABLEKS                       R14 R14 K9 ["Cancelled"]
      278 SETTABLEKS                       R14 R13 K7 ["status"]
      280 RETURN                           R13 1
      281 ADDK                             R6 R6 K49 [1]
      282 GETIMPORT                        R13 K52 [task.wait]
      284 GETUPVAL                         R15 1
      285 GETTABLEKS                       R15 R15 K54 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      287 DIVK                             R14 R15 K53 [1000]
      288 CALL                             R13 1 0
      289 JUMPBACK                         ; [-258]
      290 DUPTABLE                         R8 K14 [{"status", "errorText", "errorType"}]
      291 GETUPVAL                         R9 3
      292 GETTABLEKS                       R9 R9 K15 ["Failed"]
      294 SETTABLEKS                       R9 R8 K7 ["status"]
      296 LOADK                            R10 K55 ["Polling timed out after %* attempts, generationId=%*"]
      297 LOADN                            R12 300
      298 MOVE                             R13 R0
      299 NAMECALL                         R10 R10 K6 ["format"]
      301 CALL                             R10 3 1
      302 MOVE                             R9 R10
      303 SETTABLEKS                       R9 R8 K12 ["errorText"]
      305 GETUPVAL                         R10 1
      306 GETTABLEKS                       R10 R10 K17 ["FFlagPrimGenBetterErrorType"]
      308 JUMPIFNOT                        R10 ; [+4]
      309 GETUPVAL                         R9 4
      310 GETTABLEKS                       R9 R9 K18 ["PollFailed"]
      312 JUMP                             ; [+3]
      313 GETUPVAL                         R9 4
      314 GETTABLEKS                       R9 R9 K19 ["General"]
      316 SETTABLEKS                       R9 R8 K13 ["errorType"]
      318 RETURN                           R8 1

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
       47 GETTABLEKS                       R8 R0 K16 ["Util"]
       49 GETTABLEKS                       R8 R8 K18 ["InstanceChannel"]
       51 GETTABLEKS                       R8 R8 K18 ["InstanceChannel"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K10 [require]
       56 GETTABLEKS                       R9 R0 K11 ["Parent"]
       58 GETTABLEKS                       R9 R9 K19 ["ModelContextProtocol"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K10 [require]
       63 GETTABLEKS                       R10 R0 K16 ["Util"]
       65 GETTABLEKS                       R10 R10 K20 ["PrimitiveGen"]
       67 GETTABLEKS                       R10 R10 K21 ["PrimitiveGenChannel"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETTABLEKS                       R11 R0 K16 ["Util"]
       74 GETTABLEKS                       R11 R11 K20 ["PrimitiveGen"]
       76 GETTABLEKS                       R11 R11 K22 ["PrimitiveGenPreviewFetch"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R12 R0 K16 ["Util"]
       83 GETTABLEKS                       R12 R12 K23 ["Gen3dUtils"]
       85 GETTABLEKS                       R12 R12 K24 ["SegmentationEnums"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K10 [require]
       90 GETTABLEKS                       R13 R0 K16 ["Util"]
       92 GETTABLEKS                       R13 R13 K25 ["ToolUtils"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K10 [require]
       97 GETTABLEKS                       R14 R0 K26 ["Types"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R8 K27 ["Json"]
      102 GETTABLEKS                       R15 R9 K28 ["Stage"]
      104 DUPTABLE                         R16 K35 [{["Success"] = "success", ["Cancelled"] = "cancelled", ["Failed"] = "failed"}]
      105 DUPTABLE                         R17 K50 [{["General"] = "General", ["CancelByUser"] = "CancelByUser", ["TooManyConcurrentJobs"] = "TooManyConcurrentJobs", ["DmIsUnreachable"] = "DmIsUnreachable", ["DmHealthChecking"] = "DmHealthChecking", ["EmptyPrompt"] = "EmptyPrompt", ["ImageFormat"] = "ImageFormat", ["MaxCharacters"] = "MaxCharacters", ["ModerationFailed"] = "ModerationFailed", ["PollFailed"] = "PollFailed", ["PluginVersionMismatch"] = "PluginVersionMismatch", ["ScriptFetchError"] = "ScriptFetchError", ["TooManyRequests"] = "TooManyRequests", ["StudioLeftEditMode"] = "StudioLeftEditMode"}]
      106 DUPCLOSURE                       R18 K51 [PROTO_0]
      107 DUPCLOSURE                       R19 K52 [PROTO_1]
      108 CAPTURE                          VAL R17
      109 DUPCLOSURE                       R20 K53 [PROTO_2]
      110 DUPCLOSURE                       R21 K54 [PROTO_3]
      111 DUPCLOSURE                       R22 K55 [PROTO_4]
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R14
      114 DUPCLOSURE                       R23 K56 [PROTO_5]
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R4
      117 DUPCLOSURE                       R24 K57 [PROTO_6]
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R4
      120 DUPCLOSURE                       R25 K58 [PROTO_7]
      121 CAPTURE                          VAL R5
      122 DUPCLOSURE                       R26 K59 [PROTO_8]
      123 DUPCLOSURE                       R27 K60 [PROTO_9]
      124 DUPCLOSURE                       R28 K61 [PROTO_10]
      125 CAPTURE                          VAL R17
      126 DUPCLOSURE                       R29 K62 [PROTO_11]
      127 DUPCLOSURE                       R30 K63 [PROTO_12]
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R23
      134 DUPCLOSURE                       R31 K64 [PROTO_14]
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R30
      138 CAPTURE                          VAL R22
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R26
      141 CAPTURE                          VAL R27
      142 DUPCLOSURE                       R32 K65 [PROTO_16]
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R23
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R22
      149 CAPTURE                          VAL R26
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R10
      153 DUPCLOSURE                       R33 K66 [PROTO_17]
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R14
      156 DUPCLOSURE                       R34 K67 [PROTO_19]
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R22
      159 DUPCLOSURE                       R35 K68 [PROTO_20]
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R32
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R34
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R33
      168 DUPCLOSURE                       R36 K69 [PROTO_22]
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R4
      173 DUPTABLE                         R37 K83 [{["MAX_POLL_ATTEMPTS"] = 300, ["GenerationStages"], ["ResultStatus"], ["ErrorType"], ["raiseError"], ["raiseGenerationError"], ["asGenerationError"], ["getAssetDmUnreachableMessage"], ["getExecutionErrorCode"], ["submitGenerationJob"], ["pollForScriptAsync"], ["streamPreviewImagesFromS3"]}]
      174 SETTABLEKS                       R15 R37 K72 ["GenerationStages"]
      176 SETTABLEKS                       R16 R37 K73 ["ResultStatus"]
      178 SETTABLEKS                       R17 R37 K74 ["ErrorType"]
      180 SETTABLEKS                       R18 R37 K75 ["raiseError"]
      182 SETTABLEKS                       R19 R37 K76 ["raiseGenerationError"]
      184 SETTABLEKS                       R20 R37 K77 ["asGenerationError"]
      186 SETTABLEKS                       R25 R37 K78 ["getAssetDmUnreachableMessage"]
      188 SETTABLEKS                       R28 R37 K79 ["getExecutionErrorCode"]
      190 SETTABLEKS                       R31 R37 K80 ["submitGenerationJob"]
      192 SETTABLEKS                       R35 R37 K81 ["pollForScriptAsync"]
      194 SETTABLEKS                       R36 R37 K82 ["streamPreviewImagesFromS3"]
      196 RETURN                           R37 1
