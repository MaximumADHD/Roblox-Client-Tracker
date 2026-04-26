PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R0 R1 K1 ["getMockPrimGenBackendData"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_1:
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

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K0 ["getImage"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+10]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["signal"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["signal"]
        9 GETTABLEKS                       R0 R1 K1 ["aborted"]
       11 JUMPIF                           R0 ; [+1]
       12 LOADB                            R0 0
       13 RETURN                           R0 1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R1 K1 [error]
        2 MOVE                             R2 R0
        3 LOADN                            R3 0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+7]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["decode"]
        6 GETTABLEKS                       R3 R0 K1 ["Body"]
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1
       10 GETTABLEKS                       R3 R0 K1 ["Body"]
       12 FASTCALL1                        TYPEOF R3 ; [+2]
       13 GETIMPORT                        R2 K3 [typeof]
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K4 ["string"] ; [+23]
       18 LOADK                            R3 K5 ["%*: expected string body but got %*, full response: %*"]
       19 MOVE                             R5 R1
       20 GETTABLEKS                       R7 R0 K1 ["Body"]
       22 FASTCALL1                        TYPEOF R7 ; [+2]
       23 GETIMPORT                        R6 K3 [typeof]
       25 CALL                             R6 1 1
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R7 R8 K6 ["toString"]
       29 MOVE                             R8 R0
       30 CALL                             R7 1 1
       31 NAMECALL                         R3 R3 K7 ["format"]
       33 CALL                             R3 4 1
       34 MOVE                             R2 R3
       35 GETIMPORT                        R3 K9 [error]
       37 MOVE                             R4 R2
       38 LOADN                            R5 0
       39 CALL                             R3 2 0
       40 GETTABLEKS                       R2 R0 K1 ["Body"]
       42 JUMPIFNOTEQKS                    R2 K10 [""] ; [+17]
       44 LOADK                            R3 K11 ["%*: response body is empty, full response: %*"]
       45 MOVE                             R5 R1
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R6 R7 K6 ["toString"]
       49 MOVE                             R7 R0
       50 CALL                             R6 1 1
       51 NAMECALL                         R3 R3 K7 ["format"]
       53 CALL                             R3 3 1
       54 MOVE                             R2 R3
       55 GETIMPORT                        R3 K9 [error]
       57 MOVE                             R4 R2
       58 LOADN                            R5 0
       59 CALL                             R3 2 0
       60 GETIMPORT                        R2 K13 [pcall]
       62 GETUPVAL                         R4 1
       63 GETTABLEKS                       R3 R4 K0 ["decode"]
       65 GETTABLEKS                       R4 R0 K1 ["Body"]
       67 CALL                             R2 2 2
       68 JUMPIF                           R2 ; [+17]
       69 LOADK                            R5 K14 ["%*: failed to decode JSON: %*, full response: %*"]
       70 MOVE                             R7 R1
       71 MOVE                             R8 R3
       72 GETUPVAL                         R10 2
       73 GETTABLEKS                       R9 R10 K6 ["toString"]
       75 MOVE                             R10 R0
       76 CALL                             R9 1 1
       77 NAMECALL                         R5 R5 K7 ["format"]
       79 CALL                             R5 4 1
       80 MOVE                             R4 R5
       81 GETIMPORT                        R5 K9 [error]
       83 MOVE                             R6 R4
       84 LOADN                            R7 0
       85 CALL                             R5 2 0
       86 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFEQKS                       R0 K0 [""] ; [+17]
        4 NEWTABLE                         R1 1 0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K1 ["get"]
        9 CALL                             R4 0 1
       10 GETTABLEKS                       R3 R4 K2 ["getUserId"]
       12 CALL                             R3 0 -1
       13 FASTCALL                         TOSTRING ; [+2]
       14 GETIMPORT                        R2 K4 [tostring]
       16 CALL                             R2 -1 1
       17 SETTABLEKS                       R2 R1 K5 ["robloxctx-authenticated-userid"]
       19 RETURN                           R1 1
       20 NEWTABLE                         R1 0 0
       22 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFEQKS                       R0 K0 [""] ; [+2]
        4 RETURN                           R0 1
        5 LOADK                            R2 K1 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K2 ["get"]
        9 CALL                             R5 0 1
       10 GETTABLEKS                       R4 R5 K3 ["apisUrl"]
       12 NAMECALL                         R2 R2 K4 ["format"]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["handlerArgs"]
        3 GETTABLEKS                       R1 R2 K1 ["isThirdPartyRequest"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["handlerArgs"]
       10 GETTABLEKS                       R2 R3 K2 ["uiMessageId"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["handlerArgs"]
       15 GETTABLEKS                       R3 R4 K3 ["uiContentId"]
       17 GETUPVAL                         R4 1
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+14]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K4 ["getContentHooks"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K5 ["editContent"]
       27 MOVE                             R6 R0
       28 DUPTABLE                         R7 K7 [{"skipIfNoMessage"}]
       29 LOADB                            R8 1
       30 SETTABLEKS                       R8 R7 K6 ["skipIfNoMessage"]
       32 CALL                             R5 2 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R4 R5 K5 ["editContent"]
       37 DUPTABLE                         R5 K11 [{"messageId", "contentId", "transformFn", "skipIfNoMessage"}]
       38 SETTABLEKS                       R2 R5 K8 ["messageId"]
       40 SETTABLEKS                       R3 R5 K9 ["contentId"]
       42 SETTABLEKS                       R0 R5 K10 ["transformFn"]
       44 LOADB                            R6 1
       45 SETTABLEKS                       R6 R5 K6 ["skipIfNoMessage"]
       47 CALL                             R4 1 0
       48 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 SETTABLE                         R5 R0 R4
        5 FORGLOOP                         R1 2 ; [-2]
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["previewState"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["previewErrorMessage"]
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Modes"]
        3 GETTABLEKS                       R1 R2 K1 ["GenerationError"]
        5 SETTABLEKS                       R1 R0 K2 ["mode"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K3 ["generationErrorType"]
       10 GETUPVAL                         R1 2
       11 SETTABLEKS                       R1 R0 K4 ["generationErrorMessage"]
       13 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["generationStage"]
        3 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R2 K1 ["externalHooks"]
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
       19 CAPTURE                          VAL R2
       20 DUPTABLE                         R8 K8 [{"updateWidget", "replaceContent", "setPreviewState", "setPreviewImage", "setGenerationError", "setGenerationStage"}]
       21 SETTABLEKS                       R2 R8 K2 ["updateWidget"]
       23 SETTABLEKS                       R3 R8 K3 ["replaceContent"]
       25 SETTABLEKS                       R4 R8 K4 ["setPreviewState"]
       27 SETTABLEKS                       R6 R8 K5 ["setPreviewImage"]
       29 SETTABLEKS                       R5 R8 K6 ["setGenerationError"]
       31 SETTABLEKS                       R7 R8 K7 ["setGenerationStage"]
       33 RETURN                           R8 1

PROTO_21:
        0 JUMPIFNOT                        R1 ; [+9]
        1 GETUPVAL                         R2 0
        2 GETIMPORT                        R4 K2 [buffer.fromstring]
        4 MOVE                             R5 R1
        5 CALL                             R4 1 -1
        6 NAMECALL                         R2 R2 K3 ["Base64Decode"]
        8 CALL                             R2 -1 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R2
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K4 ["new"]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R5 2
       16 CALL                             R5 0 1
       17 JUMPIFEQKS                       R5 K5 [""] ; [+3]
       19 MOVE                             R4 R5
       20 JUMP                             ; [+11]
       21 LOADK                            R6 K6 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
       22 GETUPVAL                         R10 3
       23 GETTABLEKS                       R9 R10 K7 ["get"]
       25 CALL                             R9 0 1
       26 GETTABLEKS                       R8 R9 K8 ["apisUrl"]
       28 NAMECALL                         R6 R6 K9 ["format"]
       30 CALL                             R6 2 1
       31 MOVE                             R4 R6
       32 LOADB                            R7 1
       33 NAMECALL                         R5 R3 K10 ["forceMultipart"]
       35 CALL                             R5 2 0
       36 LOADK                            R7 K11 ["TextPrompt"]
       37 MOVE                             R8 R0
       38 NAMECALL                         R5 R3 K12 ["addField"]
       40 CALL                             R5 3 0
       41 JUMPIFNOT                        R2 ; [+11]
       42 LOADK                            R7 K13 ["Image"]
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R8 R9 K14 ["file"]
       46 LOADK                            R9 K15 ["image.png"]
       47 MOVE                             R10 R2
       48 LOADK                            R11 K16 ["image/png"]
       49 CALL                             R8 3 -1
       50 NAMECALL                         R5 R3 K17 ["addFile"]
       52 CALL                             R5 -1 0
       53 MOVE                             R7 R4
       54 LOADK                            R8 K18 ["POST"]
       55 NAMECALL                         R5 R3 K19 ["buildRequest"]
       57 CALL                             R5 3 1
       58 GETUPVAL                         R6 4
       59 GETTABLEKS                       R7 R5 K20 ["Headers"]
       61 GETUPVAL                         R8 5
       62 CALL                             R8 0 1
       63 CALL                             R6 2 1
       64 SETTABLEKS                       R6 R5 K20 ["Headers"]
       66 RETURN                           R5 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADK                            R2 K0 ["1234567890"]
        4 RETURN                           R2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["get"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R5 R2 K2 ["http"]
       15 GETTABLEKS                       R4 R5 K3 ["requestAsync"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 3
       20 MOVE                             R6 R4
       21 LOADK                            R8 K4 ["submitGenerationJob (statusCode=%*)"]
       22 GETTABLEKS                       R10 R4 K5 ["StatusCode"]
       24 NAMECALL                         R8 R8 K6 ["format"]
       26 CALL                             R8 2 1
       27 MOVE                             R7 R8
       28 CALL                             R5 2 1
       29 GETTABLEKS                       R6 R4 K7 ["Success"]
       31 JUMPIF                           R6 ; [+18]
       32 LOADK                            R7 K8 ["Failed to submit generation job: statusCode: %* message=%*:%* id=%*"]
       33 GETTABLEKS                       R9 R4 K5 ["StatusCode"]
       35 GETTABLEKS                       R10 R5 K9 ["message"]
       37 GETTABLEKS                       R11 R5 K10 ["details"]
       39 GETTABLEKS                       R12 R5 K11 ["primitiveGenerationId"]
       41 NAMECALL                         R7 R7 K6 ["format"]
       43 CALL                             R7 5 1
       44 MOVE                             R6 R7
       45 GETIMPORT                        R7 K13 [error]
       47 MOVE                             R8 R6
       48 LOADN                            R9 0
       49 CALL                             R7 2 0
       50 GETTABLEKS                       R6 R5 K11 ["primitiveGenerationId"]
       52 JUMPIF                           R6 ; [+12]
       53 LOADK                            R8 K14 ["Response does not contain 'primitiveGenerationId': %*"]
       54 GETTABLEKS                       R10 R4 K15 ["Body"]
       56 NAMECALL                         R8 R8 K6 ["format"]
       58 CALL                             R8 2 1
       59 MOVE                             R7 R8
       60 GETIMPORT                        R8 K13 [error]
       62 MOVE                             R9 R7
       63 LOADN                            R10 0
       64 CALL                             R8 2 0
       65 RETURN                           R6 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R3 3
        5 GETTABLEKS                       R2 R3 K0 ["http"]
        7 GETTABLEKS                       R1 R2 K1 ["requestAsync"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 4
       12 MOVE                             R3 R1
       13 LOADK                            R5 K2 ["submitGenerationJob (statusCode=%*)"]
       14 GETTABLEKS                       R7 R1 K3 ["StatusCode"]
       16 NAMECALL                         R5 R5 K4 ["format"]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 CALL                             R2 2 1
       21 RETURN                           R1 2

PROTO_24:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+11]
        3 DUPTABLE                         R2 K3 [{"generationId", "errorType", "errorMessage"}]
        4 LOADK                            R3 K4 ["1234567890"]
        5 SETTABLEKS                       R3 R2 K0 ["generationId"]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K1 ["errorType"]
       10 LOADNIL                          R3
       11 SETTABLEKS                       R3 R2 K2 ["errorMessage"]
       13 RETURN                           R2 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K5 ["get"]
       17 CALL                             R2 0 1
       18 GETIMPORT                        R3 K7 [pcall]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U3
       26 CALL                             R3 1 3
       27 JUMPIF                           R3 ; [+16]
       28 LOADK                            R7 K8 ["Failed to get response from server: %*"]
       29 MOVE                             R9 R4
       30 NAMECALL                         R7 R7 K9 ["format"]
       32 CALL                             R7 2 1
       33 MOVE                             R6 R7
       34 DUPTABLE                         R7 K3 [{"generationId", "errorType", "errorMessage"}]
       35 LOADK                            R8 K10 [""]
       36 SETTABLEKS                       R8 R7 K0 ["generationId"]
       38 LOADK                            R8 K11 ["General"]
       39 SETTABLEKS                       R8 R7 K1 ["errorType"]
       41 SETTABLEKS                       R6 R7 K2 ["errorMessage"]
       43 RETURN                           R7 1
       44 GETTABLEKS                       R6 R4 K12 ["Success"]
       46 JUMPIF                           R6 ; [+24]
       47 LOADK                            R7 K13 ["Failed to submit generation job: statusCode: %*, body: %*"]
       48 GETTABLEKS                       R9 R4 K14 ["StatusCode"]
       50 GETTABLEKS                       R10 R4 K15 ["Body"]
       52 NAMECALL                         R7 R7 K9 ["format"]
       54 CALL                             R7 3 1
       55 MOVE                             R6 R7
       56 LOADK                            R7 K11 ["General"]
       57 GETTABLEKS                       R8 R4 K14 ["StatusCode"]
       59 JUMPIFNOTEQKN                    R8 K16 [429] ; [+2]
       61 LOADK                            R7 K17 ["TooManyRequests"]
       62 DUPTABLE                         R8 K3 [{"generationId", "errorType", "errorMessage"}]
       63 LOADK                            R9 K10 [""]
       64 SETTABLEKS                       R9 R8 K0 ["generationId"]
       66 SETTABLEKS                       R7 R8 K1 ["errorType"]
       68 SETTABLEKS                       R6 R8 K2 ["errorMessage"]
       70 RETURN                           R8 1
       71 GETTABLEKS                       R6 R5 K18 ["primitiveGenerationId"]
       73 JUMPIF                           R6 ; [+17]
       74 LOADK                            R8 K19 ["Response does not contain 'primitiveGenerationId': %*"]
       75 GETTABLEKS                       R10 R4 K15 ["Body"]
       77 NAMECALL                         R8 R8 K9 ["format"]
       79 CALL                             R8 2 1
       80 MOVE                             R7 R8
       81 DUPTABLE                         R8 K3 [{"generationId", "errorType", "errorMessage"}]
       82 LOADK                            R9 K10 [""]
       83 SETTABLEKS                       R9 R8 K0 ["generationId"]
       85 LOADK                            R9 K11 ["General"]
       86 SETTABLEKS                       R9 R8 K1 ["errorType"]
       88 SETTABLEKS                       R7 R8 K2 ["errorMessage"]
       90 RETURN                           R8 1
       91 DUPTABLE                         R7 K3 [{"generationId", "errorType", "errorMessage"}]
       92 SETTABLEKS                       R6 R7 K0 ["generationId"]
       94 LOADNIL                          R8
       95 SETTABLEKS                       R8 R7 K1 ["errorType"]
       97 LOADNIL                          R8
       98 SETTABLEKS                       R8 R7 K2 ["errorMessage"]
      100 RETURN                           R7 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["http"]
        3 GETTABLEKS                       R0 R1 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K5 [{"Url", "Method", "Headers"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["Url"]
        9 LOADK                            R2 K6 ["GET"]
       10 SETTABLEKS                       R2 R1 K3 ["Method"]
       12 GETUPVAL                         R2 2
       13 SETTABLEKS                       R2 R1 K4 ["Headers"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1

PROTO_26:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["get"]
        3 CALL                             R4 0 1
        4 LOADK                            R6 K1 ["%*/%*"]
        5 GETUPVAL                         R9 1
        6 CALL                             R9 0 1
        7 JUMPIFEQKS                       R9 K2 [""] ; [+3]
        9 MOVE                             R8 R9
       10 JUMP                             ; [+11]
       11 LOADK                            R10 K3 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
       12 GETUPVAL                         R14 0
       13 GETTABLEKS                       R13 R14 K0 ["get"]
       15 CALL                             R13 0 1
       16 GETTABLEKS                       R12 R13 K4 ["apisUrl"]
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
       32 JUMPIFNOTLT                      R7 R9 ; [+318]
       34 MOVE                             R9 R1
       35 CALL                             R9 0 1
       36 JUMPIFNOT                        R9 ; [+7]
       37 DUPTABLE                         R9 K7 [{"status"}]
       38 GETUPVAL                         R11 3
       39 GETTABLEKS                       R10 R11 K8 ["Cancelled"]
       41 SETTABLEKS                       R10 R9 K6 ["status"]
       43 RETURN                           R9 1
       44 GETIMPORT                        R9 K10 [pcall]
       46 NEWCLOSURE                       R10 P0
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R6
       50 CALL                             R9 1 2
       51 JUMPIF                           R9 ; [+33]
       52 GETUPVAL                         R11 4
       53 CALL                             R11 0 1
       54 JUMPIFNOT                        R11 ; [+12]
       55 LOADK                            R12 K11 ["Sending HTTP request failed: %*, generationId=%*"]
       56 MOVE                             R14 R10
       57 MOVE                             R15 R0
       58 NAMECALL                         R12 R12 K5 ["format"]
       60 CALL                             R12 3 1
       61 MOVE                             R11 R12
       62 GETIMPORT                        R12 K13 [error]
       64 MOVE                             R13 R11
       65 LOADN                            R14 0
       66 CALL                             R12 2 0
       67 DUPTABLE                         R11 K16 [{"status", "errorText", "errorType"}]
       68 GETUPVAL                         R13 3
       69 GETTABLEKS                       R12 R13 K17 ["Failed"]
       71 SETTABLEKS                       R12 R11 K6 ["status"]
       73 LOADK                            R13 K18 ["Sending HTTP request failed: %*"]
       74 MOVE                             R15 R10
       75 NAMECALL                         R13 R13 K5 ["format"]
       77 CALL                             R13 2 1
       78 MOVE                             R12 R13
       79 SETTABLEKS                       R12 R11 K14 ["errorText"]
       81 LOADK                            R12 K19 ["General"]
       82 SETTABLEKS                       R12 R11 K15 ["errorType"]
       84 RETURN                           R11 1
       85 GETTABLEKS                       R11 R10 K20 ["Success"]
       87 JUMPIF                           R11 ; [+99]
       88 GETUPVAL                         R12 5
       89 GETTABLEKS                       R11 R12 K21 ["appendLog"]
       91 MOVE                             R12 R0
       92 LOADK                            R14 K22 ["Error while polling job status:%*"]
       93 GETTABLEKS                       R16 R10 K23 ["Body"]
       95 NAMECALL                         R14 R14 K5 ["format"]
       97 CALL                             R14 2 1
       98 MOVE                             R13 R14
       99 CALL                             R11 2 0
      100 GETUPVAL                         R11 6
      101 MOVE                             R12 R10
      102 LOADK                            R14 K24 ["pollJobStatus error (statusCode=%*), jobId=%*"]
      103 GETTABLEKS                       R16 R10 K25 ["StatusCode"]
      105 MOVE                             R17 R0
      106 NAMECALL                         R14 R14 K5 ["format"]
      108 CALL                             R14 3 1
      109 MOVE                             R13 R14
      110 CALL                             R11 2 1
      111 GETUPVAL                         R12 4
      112 CALL                             R12 0 1
      113 JUMPIFNOT                        R12 ; [+19]
      114 LOADK                            R13 K26 ["Error while polling job status: status=%* message=%*:%* id=%*"]
      115 GETTABLEKS                       R15 R10 K25 ["StatusCode"]
      117 GETTABLEKS                       R16 R11 K27 ["message"]
      119 GETTABLEKS                       R17 R11 K28 ["details"]
      121 GETTABLEKS                       R18 R11 K29 ["primitiveGenerationId"]
      123 NAMECALL                         R13 R13 K5 ["format"]
      125 CALL                             R13 5 1
      126 MOVE                             R12 R13
      127 GETIMPORT                        R13 K13 [error]
      129 MOVE                             R14 R12
      130 LOADN                            R15 0
      131 CALL                             R13 2 0
      132 JUMP                             ; [+54]
      133 LOADK                            R12 K19 ["General"]
      134 GETIMPORT                        R13 K32 [string.lower]
      136 GETTABLEKS                       R15 R11 K33 ["developerMessage"]
      138 ORK                              R14 R15 K2 [""]
      139 CALL                             R13 1 1
      140 LOADNIL                          R14
      141 GETIMPORT                        R15 K35 [string.find]
      143 MOVE                             R16 R13
      144 LOADK                            R17 K36 ["moderation"]
      145 CALL                             R15 2 1
      146 JUMPIF                           R15 ; [+6]
      147 GETIMPORT                        R15 K35 [string.find]
      149 MOVE                             R16 R13
      150 LOADK                            R17 K37 ["moderated"]
      151 CALL                             R15 2 1
      152 JUMPIFNOT                        R15 ; [+9]
      153 LOADK                            R12 K38 ["ModerationFailed"]
      154 LOADK                            R15 K39 ["Error while polling job status: (code 0001) id=%*"]
      155 GETTABLEKS                       R17 R11 K29 ["primitiveGenerationId"]
      157 NAMECALL                         R15 R15 K5 ["format"]
      159 CALL                             R15 2 1
      160 MOVE                             R14 R15
      161 JUMP                             ; [+14]
      162 LOADK                            R15 K40 ["Error while polling job status: status=%* message=%* id=%*"]
      163 GETTABLEKS                       R17 R10 K25 ["StatusCode"]
      165 GETUPVAL                         R19 7
      166 GETTABLEKS                       R18 R19 K41 ["toString"]
      168 MOVE                             R19 R11
      169 CALL                             R18 1 1
      170 GETTABLEKS                       R19 R11 K29 ["primitiveGenerationId"]
      172 NAMECALL                         R15 R15 K5 ["format"]
      174 CALL                             R15 4 1
      175 MOVE                             R14 R15
      176 DUPTABLE                         R15 K16 [{"status", "errorText", "errorType"}]
      177 GETUPVAL                         R17 3
      178 GETTABLEKS                       R16 R17 K17 ["Failed"]
      180 SETTABLEKS                       R16 R15 K6 ["status"]
      182 SETTABLEKS                       R14 R15 K14 ["errorText"]
      184 SETTABLEKS                       R12 R15 K15 ["errorType"]
      186 RETURN                           R15 1
      187 GETUPVAL                         R11 6
      188 MOVE                             R12 R10
      189 LOADK                            R14 K42 ["pollJobStatus (statusCode=%*), jobId=%*"]
      190 GETTABLEKS                       R16 R10 K25 ["StatusCode"]
      192 MOVE                             R17 R0
      193 NAMECALL                         R14 R14 K5 ["format"]
      195 CALL                             R14 3 1
      196 MOVE                             R13 R14
      197 CALL                             R11 2 1
      198 GETTABLEKS                       R12 R11 K43 ["currentStage"]
      200 GETTABLEKS                       R14 R11 K6 ["status"]
      202 ORK                              R13 R14 K44 ["unknown"]
      203 JUMPIFNOT                        R3 ; [+5]
      204 MOVE                             R14 R3
      205 ADDK                             R15 R7 K45 [1]
      206 MOVE                             R16 R13
      207 MOVE                             R17 R12
      208 CALL                             R14 3 0
      209 JUMPIFNOT                        R2 ; [+7]
      210 JUMPIFNOT                        R12 ; [+6]
      211 JUMPIFEQ                         R12 R8 ; [+5]
      213 MOVE                             R8 R12
      214 MOVE                             R14 R2
      215 MOVE                             R15 R12
      216 CALL                             R14 1 0
      217 GETIMPORT                        R15 K32 [string.lower]
      219 MOVE                             R16 R13
      220 CALL                             R15 1 1
      221 GETIMPORT                        R16 K32 [string.lower]
      223 LOADK                            R17 K46 ["failed"]
      224 CALL                             R16 1 1
      225 JUMPIFEQ                         R15 R16 ; [+2]
      227 LOADB                            R14 0 +1
      228 LOADB                            R14 1
      229 JUMPIFNOT                        R14 ; [+12]
      230 GETUPVAL                         R14 8
      231 LOADK                            R16 K47 ["Job failed with status: %* and stage: %*, generationId=%*"]
      232 MOVE                             R18 R13
      233 GETTABLEKS                       R19 R11 K43 ["currentStage"]
      235 MOVE                             R20 R0
      236 NAMECALL                         R16 R16 K5 ["format"]
      238 CALL                             R16 4 1
      239 MOVE                             R15 R16
      240 CALL                             R14 1 -1
      241 RETURN                           R14 -1
      242 GETIMPORT                        R15 K32 [string.lower]
      244 MOVE                             R16 R13
      245 CALL                             R15 1 1
      246 GETIMPORT                        R16 K32 [string.lower]
      248 LOADK                            R17 K48 ["completed"]
      249 CALL                             R16 1 1
      250 JUMPIFEQ                         R15 R16 ; [+2]
      252 LOADB                            R14 0 +1
      253 LOADB                            R14 1
      254 JUMPIFNOT                        R14 ; [+78]
      255 GETTABLEKS                       R16 R11 K49 ["result"]
      257 FASTCALL1                        TYPE R16 ; [+2]
      258 GETIMPORT                        R15 K51 [type]
      260 CALL                             R15 1 1
      261 JUMPIFNOTEQKS                    R15 K52 ["table"] ; [+4]
      263 GETTABLEKS                       R14 R11 K49 ["result"]
      265 JUMP                             ; [+2]
      266 NEWTABLE                         R14 0 0
      268 GETUPVAL                         R16 5
      269 GETTABLEKS                       R15 R16 K21 ["appendLog"]
      271 MOVE                             R16 R0
      272 LOADK                            R18 K53 ["Polling job resultData:%*"]
      273 GETUPVAL                         R21 7
      274 GETTABLEKS                       R20 R21 K41 ["toString"]
      276 MOVE                             R21 R14
      277 CALL                             R20 1 1
      278 NAMECALL                         R18 R18 K5 ["format"]
      280 CALL                             R18 2 1
      281 MOVE                             R17 R18
      282 CALL                             R15 2 0
      283 GETTABLEKS                       R15 R14 K54 ["script"]
      285 JUMPIFNOT                        R15 ; [+2]
      286 JUMPIFNOTEQKS                    R15 K2 [""] ; [+15]
      288 GETUPVAL                         R16 8
      289 LOADK                            R18 K55 ["No script URL found in completed job response: %*, generationId=%*"]
      290 GETUPVAL                         R21 7
      291 GETTABLEKS                       R20 R21 K41 ["toString"]
      293 MOVE                             R21 R14
      294 CALL                             R20 1 1
      295 MOVE                             R21 R0
      296 NAMECALL                         R18 R18 K5 ["format"]
      298 CALL                             R18 3 1
      299 MOVE                             R17 R18
      300 CALL                             R16 1 -1
      301 RETURN                           R16 -1
      302 GETTABLEKS                       R16 R14 K56 ["dependencyVersion"]
      304 GETTABLEKS                       R17 R14 K57 ["dependencies"]
      306 GETUPVAL                         R19 9
      307 CALL                             R19 0 1
      308 JUMPIFNOT                        R19 ; [+6]
      309 GETUPVAL                         R19 10
      310 GETTABLEKS                       R18 R19 K58 ["parseScriptPreviewS3Urls"]
      312 MOVE                             R19 R14
      313 CALL                             R18 1 1
      314 JUMP                             ; [+1]
      315 LOADNIL                          R18
      316 DUPTABLE                         R19 K61 [{"status", "currentStage", "scriptUrl", "dependencyVersion", "dependencies", "scriptPreviewS3Urls"}]
      317 GETUPVAL                         R21 3
      318 GETTABLEKS                       R20 R21 K20 ["Success"]
      320 SETTABLEKS                       R20 R19 K6 ["status"]
      322 SETTABLEKS                       R12 R19 K43 ["currentStage"]
      324 SETTABLEKS                       R15 R19 K59 ["scriptUrl"]
      326 SETTABLEKS                       R16 R19 K56 ["dependencyVersion"]
      328 SETTABLEKS                       R17 R19 K57 ["dependencies"]
      330 SETTABLEKS                       R18 R19 K60 ["scriptPreviewS3Urls"]
      332 RETURN                           R19 1
      333 MOVE                             R14 R1
      334 CALL                             R14 0 1
      335 JUMPIFNOT                        R14 ; [+7]
      336 DUPTABLE                         R14 K7 [{"status"}]
      337 GETUPVAL                         R16 3
      338 GETTABLEKS                       R15 R16 K8 ["Cancelled"]
      340 SETTABLEKS                       R15 R14 K6 ["status"]
      342 RETURN                           R14 1
      343 ADDK                             R7 R7 K45 [1]
      344 GETIMPORT                        R14 K64 [task.wait]
      346 GETUPVAL                         R16 11
      347 CALL                             R16 0 1
      348 DIVK                             R15 R16 K65 [1000]
      349 CALL                             R14 1 0
      350 JUMPBACK                         ; [-320]
      351 GETUPVAL                         R9 4
      352 CALL                             R9 0 1
      353 JUMPIFNOT                        R9 ; [+10]
      354 GETUPVAL                         R9 8
      355 LOADK                            R11 K66 ["Polling timed out after %* attempts, generationId=%*"]
      356 LOADN                            R13 44
      357 MOVE                             R14 R0
      358 NAMECALL                         R11 R11 K5 ["format"]
      360 CALL                             R11 3 1
      361 MOVE                             R10 R11
      362 CALL                             R9 1 -1
      363 RETURN                           R9 -1
      364 DUPTABLE                         R9 K16 [{"status", "errorText", "errorType"}]
      365 GETUPVAL                         R11 3
      366 GETTABLEKS                       R10 R11 K17 ["Failed"]
      368 SETTABLEKS                       R10 R9 K6 ["status"]
      370 LOADK                            R11 K66 ["Polling timed out after %* attempts, generationId=%*"]
      371 LOADN                            R13 44
      372 MOVE                             R14 R0
      373 NAMECALL                         R11 R11 K5 ["format"]
      375 CALL                             R11 3 1
      376 MOVE                             R10 R11
      377 SETTABLEKS                       R10 R9 K14 ["errorText"]
      379 LOADK                            R10 K19 ["General"]
      380 SETTABLEKS                       R10 R9 K15 ["errorType"]
      382 RETURN                           R9 1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R3 R1 K1 ["http"]
        6 GETTABLEKS                       R2 R3 K2 ["requestAsync"]
        8 DUPTABLE                         R3 K5 [{"Url", "Method"}]
        9 SETTABLEKS                       R0 R3 K3 ["Url"]
       11 LOADK                            R4 K6 ["GET"]
       12 SETTABLEKS                       R4 R3 K4 ["Method"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R2 K7 ["Success"]
       17 JUMPIF                           R3 ; [+43]
       18 GETIMPORT                        R3 K9 [pcall]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K10 ["decode"]
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

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["http"]
        3 GETTABLEKS                       R0 R1 K1 ["requestAsync"]
        5 DUPTABLE                         R1 K4 [{"Url", "Method"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K5 ["scriptUrl"]
        9 SETTABLEKS                       R2 R1 K2 ["Url"]
       11 LOADK                            R2 K6 ["GET"]
       12 SETTABLEKS                       R2 R1 K3 ["Method"]
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["get"]
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

PROTO_30:
        0 MOVE                             R5 R1
        1 CALL                             R5 0 1
        2 JUMPIFNOT                        R5 ; [+7]
        3 DUPTABLE                         R5 K1 [{"status"}]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R6 R7 K2 ["Cancelled"]
        7 SETTABLEKS                       R6 R5 K0 ["status"]
        9 RETURN                           R5 1
       10 GETUPVAL                         R5 1
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+13]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R6 R7 K3 ["get"]
       16 CALL                             R6 0 1
       17 GETTABLEKS                       R5 R6 K4 ["getMockPrimGenBackendData"]
       19 CALL                             R5 0 1
       20 GETIMPORT                        R6 K6 [warn]
       22 LOADK                            R7 K7 ["pollForScriptAsync"]
       23 MOVE                             R8 R5
       24 CALL                             R6 2 0
       25 RETURN                           R5 1
       26 GETUPVAL                         R5 3
       27 MOVE                             R6 R0
       28 MOVE                             R7 R1
       29 MOVE                             R8 R2
       30 MOVE                             R9 R3
       31 CALL                             R5 4 1
       32 GETTABLEKS                       R6 R5 K0 ["status"]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R7 R8 K2 ["Cancelled"]
       37 JUMPIFNOTEQ                      R6 R7 ; [+8]
       39 DUPTABLE                         R6 K1 [{"status"}]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R7 R8 K2 ["Cancelled"]
       43 SETTABLEKS                       R7 R6 K0 ["status"]
       45 RETURN                           R6 1
       46 GETUPVAL                         R6 4
       47 CALL                             R6 0 1
       48 JUMPIF                           R6 ; [+8]
       49 GETTABLEKS                       R6 R5 K0 ["status"]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R7 R8 K8 ["Failed"]
       54 JUMPIFNOTEQ                      R6 R7 ; [+2]
       56 RETURN                           R5 1
       57 GETUPVAL                         R6 5
       58 CALL                             R6 0 1
       59 JUMPIFNOT                        R6 ; [+24]
       60 JUMPIFNOT                        R4 ; [+23]
       61 GETTABLEKS                       R6 R5 K0 ["status"]
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R7 R8 K9 ["Success"]
       66 JUMPIFNOTEQ                      R6 R7 ; [+17]
       68 GETTABLEKS                       R6 R5 K10 ["scriptPreviewS3Urls"]
       70 JUMPIFNOT                        R6 ; [+13]
       71 GETTABLEKS                       R7 R5 K10 ["scriptPreviewS3Urls"]
       73 LENGTH                           R6 R7
       74 LOADN                            R7 0
       75 JUMPIFNOTLT                      R7 R6 ; [+8]
       77 GETUPVAL                         R7 6
       78 GETTABLEKS                       R6 R7 K11 ["fetchPreviewImages"]
       80 GETTABLEKS                       R7 R5 K10 ["scriptPreviewS3Urls"]
       82 MOVE                             R8 R4
       83 CALL                             R6 2 0
       84 GETTABLEKS                       R6 R5 K12 ["dependencies"]
       86 JUMPIFNOT                        R6 ; [+8]
       87 GETTABLEKS                       R8 R5 K12 ["dependencies"]
       89 LENGTH                           R7 R8
       90 LOADN                            R8 0
       91 JUMPIFLT                         R8 R7 ; [+2]
       93 LOADB                            R6 0 +1
       94 LOADB                            R6 1
       95 LOADNIL                          R7
       96 JUMPIFNOT                        R6 ; [+19]
       97 MOVE                             R8 R2
       98 GETUPVAL                         R10 7
       99 GETTABLEKS                       R9 R10 K13 ["ResolvingDependencies"]
      101 CALL                             R8 1 0
      102 GETTABLEKS                       R9 R5 K12 ["dependencies"]
      104 FASTCALL2K                       ASSERT R9 K14 ; [+4]
      106 LOADK                            R10 K14 ["Dependencies are required"]
      107 GETIMPORT                        R8 K16 [assert]
      109 CALL                             R8 2 0
      110 GETUPVAL                         R8 8
      111 MOVE                             R9 R0
      112 GETTABLEKS                       R10 R5 K12 ["dependencies"]
      114 CALL                             R8 2 1
      115 MOVE                             R7 R8
      116 GETTABLEKS                       R8 R5 K17 ["scriptUrl"]
      118 JUMPIF                           R8 ; [+4]
      119 GETUPVAL                         R8 9
      120 LOADK                            R9 K18 ["No script URL found in response"]
      121 CALL                             R8 1 -1
      122 RETURN                           R8 -1
      123 MOVE                             R8 R2
      124 GETUPVAL                         R10 7
      125 GETTABLEKS                       R9 R10 K19 ["DownloadingScript"]
      127 CALL                             R8 1 0
      128 GETUPVAL                         R8 10
      129 GETTABLEKS                       R9 R5 K17 ["scriptUrl"]
      131 CALL                             R8 1 1
      132 DUPTABLE                         R9 K23 [{"status", "luauCode", "dependencyVersion", "resolvedDependencies", "scriptPreviewS3Urls"}]
      133 GETUPVAL                         R11 0
      134 GETTABLEKS                       R10 R11 K9 ["Success"]
      136 SETTABLEKS                       R10 R9 K0 ["status"]
      138 SETTABLEKS                       R8 R9 K20 ["luauCode"]
      140 GETTABLEKS                       R10 R5 K21 ["dependencyVersion"]
      142 SETTABLEKS                       R10 R9 K21 ["dependencyVersion"]
      144 SETTABLEKS                       R7 R9 K22 ["resolvedDependencies"]
      146 GETTABLEKS                       R10 R5 K10 ["scriptPreviewS3Urls"]
      148 SETTABLEKS                       R10 R9 K10 ["scriptPreviewS3Urls"]
      150 RETURN                           R9 1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["bridge"]
        3 GETTABLEKS                       R0 R1 K1 ["addWorkspaceModelAsync"]
        5 DUPTABLE                         R1 K5 [{"code", "generationId", "dependencies"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K6 ["luauCode"]
        9 SETTABLEKS                       R2 R1 K2 ["code"]
       11 GETUPVAL                         R2 2
       12 SETTABLEKS                       R2 R1 K3 ["generationId"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K7 ["resolvedDependencies"]
       17 SETTABLEKS                       R2 R1 K4 ["dependencies"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_32:
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
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K6 ["Success"]
       15 SETTABLEKS                       R6 R5 K3 ["status"]
       17 GETTABLEKS                       R7 R4 K4 ["resultName"]
       19 ORK                              R6 R7 K7 ["ProceduralObject"]
       20 SETTABLEKS                       R6 R5 K4 ["resultName"]
       22 RETURN                           R5 1
       23 JUMPIFNOT                        R3 ; [+16]
       24 DUPTABLE                         R5 K9 [{"status", "errorText"}]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R6 R7 K10 ["Failed"]
       28 SETTABLEKS                       R6 R5 K3 ["status"]
       30 LOADK                            R7 K11 ["Failed to add workspace model: %*"]
       31 GETTABLEKS                       R9 R4 K12 ["error"]
       33 NAMECALL                         R7 R7 K13 ["format"]
       35 CALL                             R7 2 1
       36 MOVE                             R6 R7
       37 SETTABLEKS                       R6 R5 K8 ["errorText"]
       39 RETURN                           R5 1
       40 DUPTABLE                         R5 K9 [{"status", "errorText"}]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K10 ["Failed"]
       44 SETTABLEKS                       R6 R5 K3 ["status"]
       46 LOADK                            R7 K11 ["Failed to add workspace model: %*"]
       47 MOVE                             R9 R4
       48 NAMECALL                         R7 R7 K13 ["format"]
       50 CALL                             R7 2 1
       51 MOVE                             R6 R7
       52 SETTABLEKS                       R6 R5 K8 ["errorText"]
       54 RETURN                           R5 1

PROTO_33:
        0 GETTABLEKS                       R10 R5 K0 ["toolArgs"]
        2 GETTABLEKS                       R9 R10 K1 ["environment"]
        4 GETTABLEKS                       R8 R9 K2 ["EventLogger"]
        6 GETTABLEKS                       R7 R8 K3 ["logPrimitiveGen"]
        8 JUMPIFNOT                        R2 ; [+11]
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R8 R9 K4 ["updateJobStatus"]
       12 MOVE                             R9 R2
       13 GETUPVAL                         R11 1
       14 GETTABLEKS                       R10 R11 K5 ["Failed"]
       16 DUPTABLE                         R11 K7 [{"errorMessage"}]
       17 SETTABLEKS                       R1 R11 K6 ["errorMessage"]
       19 CALL                             R8 3 0
       20 GETTABLEKS                       R8 R6 K8 ["setGenerationError"]
       22 MOVE                             R9 R0
       23 MOVE                             R10 R1
       24 CALL                             R8 2 0
       25 JUMPIFNOT                        R2 ; [+6]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R8 R9 K9 ["appendLog"]
       29 MOVE                             R9 R2
       30 MOVE                             R10 R1
       31 CALL                             R8 2 0
       32 MOVE                             R8 R7
       33 GETUPVAL                         R9 2
       34 MOVE                             R10 R4
       35 DUPTABLE                         R11 K13 [{"generationId", "success", "errorMessage", "prompt"}]
       36 SETTABLEKS                       R2 R11 K10 ["generationId"]
       38 LOADB                            R12 0
       39 SETTABLEKS                       R12 R11 K11 ["success"]
       41 SETTABLEKS                       R1 R11 K6 ["errorMessage"]
       43 SETTABLEKS                       R3 R11 K12 ["prompt"]
       45 CALL                             R9 2 -1
       46 CALL                             R8 -1 0
       47 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["updateJobStatus"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K1 ["Polling"]
        7 DUPTABLE                         R4 K3 [{"serverStage"}]
        8 SETTABLEKS                       R0 R4 K2 ["serverStage"]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R1 R2 K4 ["setGenerationStage"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["appendLog"]
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

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["sendProgress"]
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
       21 GETUPVAL                         R7 7
       22 CALL                             R0 7 -1
       23 RETURN                           R0 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Inserted"]
        3 SETTABLEKS                       R1 R0 K1 ["previewState"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["resultName"]
        8 SETTABLEKS                       R1 R0 K3 ["displayName"]
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K4 ["expanded"]
       13 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R9 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R8 R9 K1 ["environment"]
        4 GETTABLEKS                       R7 R8 K2 ["EventLogger"]
        6 GETTABLEKS                       R6 R7 K3 ["logPrimitiveGen"]
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          VAL R5
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R8 R9 K4 ["updateJobStatus"]
       13 MOVE                             R9 R1
       14 GETUPVAL                         R11 1
       15 GETTABLEKS                       R10 R11 K5 ["Polling"]
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
       30 JUMPIF                           R8 ; [+81]
       31 GETUPVAL                         R10 4
       32 CALL                             R10 0 1
       33 JUMPIFNOT                        R10 ; [+63]
       34 GETUPVAL                         R11 0
       35 GETTABLEKS                       R10 R11 K4 ["updateJobStatus"]
       37 MOVE                             R11 R1
       38 GETUPVAL                         R13 1
       39 GETTABLEKS                       R12 R13 K8 ["Failed"]
       41 DUPTABLE                         R13 K10 [{"errorMessage"}]
       42 FASTCALL1                        TOSTRING R9 ; [+3]
       43 MOVE                             R15 R9
       44 GETIMPORT                        R14 K12 [tostring]
       46 CALL                             R14 1 1
       47 SETTABLEKS                       R14 R13 K9 ["errorMessage"]
       49 CALL                             R10 3 0
       50 GETTABLEKS                       R10 R4 K13 ["setPreviewState"]
       52 GETUPVAL                         R12 5
       53 GETTABLEKS                       R11 R12 K8 ["Failed"]
       55 FASTCALL1                        TOSTRING R9 ; [+3]
       56 MOVE                             R13 R9
       57 GETIMPORT                        R12 K12 [tostring]
       59 CALL                             R12 1 1
       60 CALL                             R10 2 0
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R10 R11 K14 ["appendLog"]
       64 MOVE                             R11 R1
       65 LOADK                            R13 K15 ["Generation failed with error: %*"]
       66 FASTCALL1                        TOSTRING R9 ; [+3]
       67 MOVE                             R16 R9
       68 GETIMPORT                        R15 K12 [tostring]
       70 CALL                             R15 1 1
       71 NAMECALL                         R13 R13 K16 ["format"]
       73 CALL                             R13 2 1
       74 MOVE                             R12 R13
       75 CALL                             R10 2 0
       76 MOVE                             R10 R6
       77 GETUPVAL                         R11 6
       78 MOVE                             R12 R3
       79 DUPTABLE                         R13 K20 [{"generationId", "success", "errorMessage", "prompt"}]
       80 SETTABLEKS                       R1 R13 K17 ["generationId"]
       82 LOADB                            R14 0
       83 SETTABLEKS                       R14 R13 K18 ["success"]
       85 FASTCALL1                        TOSTRING R9 ; [+3]
       86 MOVE                             R15 R9
       87 GETIMPORT                        R14 K12 [tostring]
       89 CALL                             R14 1 1
       90 SETTABLEKS                       R14 R13 K9 ["errorMessage"]
       92 SETTABLEKS                       R2 R13 K19 ["prompt"]
       94 CALL                             R11 2 -1
       95 CALL                             R10 -1 0
       96 RETURN                           R0 0
       97 GETGLOBAL                        R10 K21 ["reportGenerationError"]
       99 LOADK                            R11 K22 ["General"]
      100 FASTCALL1                        TOSTRING R9 ; [+3]
      101 MOVE                             R13 R9
      102 GETIMPORT                        R12 K12 [tostring]
      104 CALL                             R12 1 1
      105 MOVE                             R13 R1
      106 MOVE                             R14 R2
      107 MOVE                             R15 R3
      108 MOVE                             R16 R0
      109 MOVE                             R17 R4
      110 CALL                             R10 7 0
      111 RETURN                           R0 0
      112 GETUPVAL                         R10 4
      113 CALL                             R10 0 1
      114 JUMPIF                           R10 ; [+20]
      115 GETTABLEKS                       R10 R9 K23 ["status"]
      117 GETUPVAL                         R12 7
      118 GETTABLEKS                       R11 R12 K8 ["Failed"]
      120 JUMPIFNOTEQ                      R10 R11 ; [+14]
      122 GETGLOBAL                        R10 K21 ["reportGenerationError"]
      124 GETTABLEKS                       R11 R9 K24 ["errorType"]
      126 GETTABLEKS                       R12 R9 K25 ["errorText"]
      128 MOVE                             R13 R1
      129 MOVE                             R14 R2
      130 MOVE                             R15 R3
      131 MOVE                             R16 R0
      132 MOVE                             R17 R4
      133 CALL                             R10 7 0
      134 RETURN                           R0 0
      135 GETTABLEKS                       R10 R9 K23 ["status"]
      137 GETUPVAL                         R12 7
      138 GETTABLEKS                       R11 R12 K26 ["Cancelled"]
      140 JUMPIFNOTEQ                      R10 R11 ; [+28]
      142 GETUPVAL                         R11 0
      143 GETTABLEKS                       R10 R11 K4 ["updateJobStatus"]
      145 MOVE                             R11 R1
      146 GETUPVAL                         R13 1
      147 GETTABLEKS                       R12 R13 K26 ["Cancelled"]
      149 CALL                             R10 2 0
      150 GETTABLEKS                       R10 R4 K13 ["setPreviewState"]
      152 GETUPVAL                         R12 5
      153 GETTABLEKS                       R11 R12 K26 ["Cancelled"]
      155 CALL                             R10 1 0
      156 MOVE                             R10 R6
      157 GETUPVAL                         R11 6
      158 MOVE                             R12 R3
      159 DUPTABLE                         R13 K27 [{"success", "errorMessage"}]
      160 LOADB                            R14 0
      161 SETTABLEKS                       R14 R13 K18 ["success"]
      163 LOADK                            R14 K28 ["Generation cancelled by user"]
      164 SETTABLEKS                       R14 R13 K9 ["errorMessage"]
      166 CALL                             R11 2 -1
      167 CALL                             R10 -1 0
      168 RETURN                           R0 0
      169 GETUPVAL                         R11 0
      170 GETTABLEKS                       R10 R11 K4 ["updateJobStatus"]
      172 MOVE                             R11 R1
      173 GETUPVAL                         R13 1
      174 GETTABLEKS                       R12 R13 K29 ["Inserting"]
      176 CALL                             R10 2 0
      177 GETTABLEKS                       R10 R4 K30 ["setGenerationStage"]
      179 GETUPVAL                         R12 8
      180 GETTABLEKS                       R11 R12 K29 ["Inserting"]
      182 CALL                             R10 1 0
      183 GETUPVAL                         R10 9
      184 MOVE                             R11 R0
      185 MOVE                             R12 R1
      186 MOVE                             R13 R9
      187 CALL                             R10 3 1
      188 GETTABLEKS                       R11 R10 K23 ["status"]
      190 GETUPVAL                         R13 10
      191 GETTABLEKS                       R12 R13 K31 ["Success"]
      193 JUMPIFNOTEQ                      R11 R12 ; [+54]
      195 GETUPVAL                         R12 0
      196 GETTABLEKS                       R11 R12 K4 ["updateJobStatus"]
      198 MOVE                             R12 R1
      199 GETUPVAL                         R14 1
      200 GETTABLEKS                       R13 R14 K32 ["Completed"]
      202 DUPTABLE                         R14 K35 [{"resultName", "modelFullName"}]
      203 GETTABLEKS                       R15 R10 K33 ["resultName"]
      205 SETTABLEKS                       R15 R14 K33 ["resultName"]
      207 LOADK                            R16 K36 ["Workspace.%*"]
      208 GETTABLEKS                       R18 R10 K33 ["resultName"]
      210 NAMECALL                         R16 R16 K16 ["format"]
      212 CALL                             R16 2 1
      213 MOVE                             R15 R16
      214 SETTABLEKS                       R15 R14 K34 ["modelFullName"]
      216 CALL                             R11 3 0
      217 GETTABLEKS                       R11 R4 K37 ["updateWidget"]
      219 NEWCLOSURE                       R12 P2
      220 CAPTURE                          UPVAL U5
      221 CAPTURE                          VAL R10
      222 CALL                             R11 1 0
      223 GETTABLEKS                       R12 R0 K38 ["bridge"]
      225 GETTABLEKS                       R11 R12 K39 ["listenToLinkChanges"]
      227 DUPTABLE                         R12 K41 [{"generationId", "name"}]
      228 SETTABLEKS                       R1 R12 K17 ["generationId"]
      230 GETTABLEKS                       R13 R10 K33 ["resultName"]
      232 SETTABLEKS                       R13 R12 K40 ["name"]
      234 CALL                             R11 1 0
      235 GETUPVAL                         R11 4
      236 CALL                             R11 0 1
      237 JUMPIF                           R11 ; [+53]
      238 MOVE                             R11 R6
      239 GETUPVAL                         R12 6
      240 MOVE                             R13 R3
      241 DUPTABLE                         R14 K42 [{"success"}]
      242 LOADB                            R15 1
      243 SETTABLEKS                       R15 R14 K18 ["success"]
      245 CALL                             R12 2 -1
      246 CALL                             R11 -1 0
      247 JUMP                             ; [+43]
      248 GETUPVAL                         R11 4
      249 CALL                             R11 0 1
      250 JUMPIFNOT                        R11 ; [+22]
      251 GETUPVAL                         R12 0
      252 GETTABLEKS                       R11 R12 K4 ["updateJobStatus"]
      254 MOVE                             R12 R1
      255 GETUPVAL                         R14 1
      256 GETTABLEKS                       R13 R14 K8 ["Failed"]
      258 DUPTABLE                         R14 K10 [{"errorMessage"}]
      259 GETTABLEKS                       R15 R10 K25 ["errorText"]
      261 SETTABLEKS                       R15 R14 K9 ["errorMessage"]
      263 CALL                             R11 3 0
      264 GETTABLEKS                       R11 R4 K13 ["setPreviewState"]
      266 GETUPVAL                         R13 5
      267 GETTABLEKS                       R12 R13 K8 ["Failed"]
      269 GETTABLEKS                       R13 R10 K25 ["errorText"]
      271 CALL                             R11 2 0
      272 JUMP                             ; [+18]
      273 LOADK                            R12 K43 ["Execute generated code failed with error: %*, generationId=%*"]
      274 GETTABLEKS                       R14 R10 K25 ["errorText"]
      276 MOVE                             R15 R1
      277 NAMECALL                         R12 R12 K16 ["format"]
      279 CALL                             R12 3 1
      280 MOVE                             R11 R12
      281 GETGLOBAL                        R12 K21 ["reportGenerationError"]
      283 LOADK                            R13 K22 ["General"]
      284 MOVE                             R14 R11
      285 MOVE                             R15 R1
      286 MOVE                             R16 R2
      287 MOVE                             R17 R3
      288 MOVE                             R18 R0
      289 MOVE                             R19 R4
      290 CALL                             R12 7 0
      291 GETUPVAL                         R11 4
      292 CALL                             R11 0 1
      293 JUMPIFNOT                        R11 ; [+30]
      294 MOVE                             R11 R6
      295 GETUPVAL                         R12 6
      296 MOVE                             R13 R3
      297 DUPTABLE                         R14 K27 [{"success", "errorMessage"}]
      298 GETTABLEKS                       R16 R10 K23 ["status"]
      300 GETUPVAL                         R18 10
      301 GETTABLEKS                       R17 R18 K31 ["Success"]
      303 JUMPIFEQ                         R16 R17 ; [+2]
      305 LOADB                            R15 0 +1
      306 LOADB                            R15 1
      307 SETTABLEKS                       R15 R14 K18 ["success"]
      309 GETTABLEKS                       R16 R10 K23 ["status"]
      311 GETUPVAL                         R18 10
      312 GETTABLEKS                       R17 R18 K8 ["Failed"]
      314 JUMPIFNOTEQ                      R16 R17 ; [+4]
      316 GETTABLEKS                       R15 R10 K25 ["errorText"]
      318 JUMP                             ; [+1]
      319 LOADNIL                          R15
      320 SETTABLEKS                       R15 R14 K9 ["errorMessage"]
      322 CALL                             R12 2 -1
      323 CALL                             R11 -1 0
      324 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_40:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R5 R1 K1 ["prompt"]
        5 ORK                              R4 R5 K0 [""]
        6 DUPTABLE                         R5 K4 [{"requestId", "conversationId", "prompt"}]
        7 GETTABLEKS                       R8 R0 K5 ["handlerArgs"]
        9 GETTABLEKS                       R7 R8 K6 ["messageGuid"]
       11 ORK                              R6 R7 K0 [""]
       12 SETTABLEKS                       R6 R5 K2 ["requestId"]
       14 GETTABLEKS                       R8 R0 K5 ["handlerArgs"]
       16 GETTABLEKS                       R7 R8 K7 ["sessionId"]
       18 ORK                              R6 R7 K0 [""]
       19 SETTABLEKS                       R6 R5 K3 ["conversationId"]
       21 SETTABLEKS                       R4 R5 K1 ["prompt"]
       23 GETUPVAL                         R6 1
       24 CALL                             R6 0 1
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R7 R8 K8 ["getActiveJobCount"]
       28 CALL                             R7 0 1
       29 JUMPIFNOTLE                      R6 R7 ; [+108]
       31 GETUPVAL                         R8 3
       32 CALL                             R8 0 1
       33 JUMPIFNOT                        R8 ; [+59]
       34 DUPTABLE                         R8 K13 [{"type", "mode", "isError", "errorMessage"}]
       35 GETUPVAL                         R10 4
       36 GETTABLEKS                       R9 R10 K14 ["Type"]
       38 SETTABLEKS                       R9 R8 K9 ["type"]
       40 GETUPVAL                         R11 4
       41 GETTABLEKS                       R10 R11 K15 ["Modes"]
       43 GETTABLEKS                       R9 R10 K16 ["Preparing"]
       45 SETTABLEKS                       R9 R8 K10 ["mode"]
       47 LOADB                            R9 1
       48 SETTABLEKS                       R9 R8 K11 ["isError"]
       50 GETUPVAL                         R9 5
       51 LOADK                            R11 K17 ["PrimitiveGen"]
       52 LOADK                            R12 K18 ["MaxConcurrentJobsError"]
       53 DUPTABLE                         R13 K21 [{"activeCount", "maxConcurrentJobs"}]
       54 GETIMPORT                        R14 K24 [string.format]
       56 LOADK                            R15 K25 ["%d"]
       57 MOVE                             R16 R7
       58 CALL                             R14 2 1
       59 SETTABLEKS                       R14 R13 K19 ["activeCount"]
       61 GETIMPORT                        R14 K24 [string.format]
       63 LOADK                            R15 K25 ["%d"]
       64 MOVE                             R16 R6
       65 CALL                             R14 2 1
       66 SETTABLEKS                       R14 R13 K20 ["maxConcurrentJobs"]
       68 NAMECALL                         R9 R9 K26 ["getText"]
       70 CALL                             R9 4 1
       71 SETTABLEKS                       R9 R8 K12 ["errorMessage"]
       73 GETTABLEKS                       R9 R3 K27 ["replaceContent"]
       75 MOVE                             R10 R8
       76 CALL                             R9 1 0
       77 GETUPVAL                         R9 6
       78 CALL                             R9 0 1
       79 GETTABLEKS                       R12 R8 K12 ["errorMessage"]
       81 ORK                              R11 R12 K0 [""]
       82 NAMECALL                         R9 R9 K28 ["addText"]
       84 CALL                             R9 2 1
       85 LOADB                            R11 1
       86 NAMECALL                         R9 R9 K29 ["setError"]
       88 CALL                             R9 2 1
       89 NAMECALL                         R9 R9 K30 ["build"]
       91 CALL                             R9 1 -1
       92 RETURN                           R9 -1
       93 GETUPVAL                         R8 5
       94 LOADK                            R10 K17 ["PrimitiveGen"]
       95 LOADK                            R11 K18 ["MaxConcurrentJobsError"]
       96 DUPTABLE                         R12 K21 [{"activeCount", "maxConcurrentJobs"}]
       97 GETIMPORT                        R13 K24 [string.format]
       99 LOADK                            R14 K25 ["%d"]
      100 MOVE                             R15 R7
      101 CALL                             R13 2 1
      102 SETTABLEKS                       R13 R12 K19 ["activeCount"]
      104 GETIMPORT                        R13 K24 [string.format]
      106 LOADK                            R14 K25 ["%d"]
      107 MOVE                             R15 R6
      108 CALL                             R13 2 1
      109 SETTABLEKS                       R13 R12 K20 ["maxConcurrentJobs"]
      111 NAMECALL                         R8 R8 K26 ["getText"]
      113 CALL                             R8 4 1
      114 GETGLOBAL                        R9 K31 ["reportGenerationError"]
      116 LOADK                            R10 K32 ["TooManyRequests"]
      117 MOVE                             R11 R8
      118 LOADNIL                          R12
      119 MOVE                             R13 R4
      120 MOVE                             R14 R5
      121 MOVE                             R15 R0
      122 MOVE                             R16 R3
      123 CALL                             R9 7 0
      124 GETUPVAL                         R9 6
      125 CALL                             R9 0 1
      126 MOVE                             R11 R8
      127 NAMECALL                         R9 R9 K28 ["addText"]
      129 CALL                             R9 2 1
      130 LOADB                            R11 1
      131 NAMECALL                         R9 R9 K29 ["setError"]
      133 CALL                             R9 2 1
      134 NAMECALL                         R9 R9 K30 ["build"]
      136 CALL                             R9 1 -1
      137 RETURN                           R9 -1
      138 GETTABLEKS                       R9 R1 K33 ["attachedImageUri"]
      140 JUMPIF                           R9 ; [+2]
      141 LOADNIL                          R8
      142 JUMP                             ; [+6]
      143 GETUPVAL                         R11 7
      144 GETTABLEKS                       R10 R11 K34 ["getImage"]
      146 MOVE                             R11 R9
      147 CALL                             R10 1 1
      148 MOVE                             R8 R10
      149 DUPTABLE                         R9 K44 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "generationStage", "startTime", "onChipClicked"}]
      150 GETUPVAL                         R11 4
      151 GETTABLEKS                       R10 R11 K14 ["Type"]
      153 SETTABLEKS                       R10 R9 K9 ["type"]
      155 GETUPVAL                         R12 4
      156 GETTABLEKS                       R11 R12 K15 ["Modes"]
      158 GETTABLEKS                       R10 R11 K45 ["ShowPreview"]
      160 SETTABLEKS                       R10 R9 K10 ["mode"]
      162 LOADB                            R10 0
      163 SETTABLEKS                       R10 R9 K35 ["expanded"]
      165 SETTABLEKS                       R4 R9 K36 ["name"]
      167 LENGTH                           R11 R4
      168 LOADN                            R12 0
      169 JUMPIFNOTLT                      R12 R11 ; [+3]
      171 MOVE                             R10 R4
      172 JUMP                             ; [+6]
      173 GETUPVAL                         R10 5
      174 LOADK                            R12 K17 ["PrimitiveGen"]
      175 LOADK                            R13 K46 ["DefaultDisplayName"]
      176 NAMECALL                         R10 R10 K26 ["getText"]
      178 CALL                             R10 3 1
      179 SETTABLEKS                       R10 R9 K37 ["displayName"]
      181 LOADNIL                          R10
      182 SETTABLEKS                       R10 R9 K38 ["className"]
      184 LOADNIL                          R10
      185 SETTABLEKS                       R10 R9 K39 ["previewImages"]
      187 GETUPVAL                         R11 8
      188 GETTABLEKS                       R10 R11 K47 ["Generating"]
      190 SETTABLEKS                       R10 R9 K40 ["previewState"]
      192 GETUPVAL                         R11 9
      193 GETTABLEKS                       R10 R11 K48 ["Submitting"]
      195 SETTABLEKS                       R10 R9 K41 ["generationStage"]
      197 GETIMPORT                        R10 K51 [os.clock]
      199 CALL                             R10 0 1
      200 SETTABLEKS                       R10 R9 K42 ["startTime"]
      202 LOADNIL                          R10
      203 SETTABLEKS                       R10 R9 K43 ["onChipClicked"]
      205 GETTABLEKS                       R10 R3 K27 ["replaceContent"]
      207 MOVE                             R11 R9
      208 CALL                             R10 1 0
      209 JUMPIFNOT                        R8 ; [+3]
      210 GETTABLEKS                       R10 R8 K52 ["data"]
      212 JUMP                             ; [+1]
      213 LOADNIL                          R10
      214 LOADK                            R11 K0 [""]
      215 GETUPVAL                         R12 3
      216 CALL                             R12 0 1
      217 JUMPIFNOT                        R12 ; [+62]
      218 LOADB                            R12 0
      219 GETIMPORT                        R13 K54 [pcall]
      221 NEWCLOSURE                       R14 P0
      222 CAPTURE                          UPVAL U10
      223 CAPTURE                          VAL R4
      224 CAPTURE                          VAL R10
      225 CALL                             R13 1 2
      226 MOVE                             R12 R13
      227 MOVE                             R11 R14
      228 JUMPIF                           R12 ; [+91]
      229 GETTABLEKS                       R16 R0 K55 ["toolArgs"]
      231 GETTABLEKS                       R15 R16 K56 ["environment"]
      233 GETTABLEKS                       R14 R15 K57 ["EventLogger"]
      235 GETTABLEKS                       R13 R14 K58 ["logPrimitiveGen"]
      237 GETTABLEKS                       R14 R3 K59 ["setPreviewState"]
      239 GETUPVAL                         R16 8
      240 GETTABLEKS                       R15 R16 K60 ["Failed"]
      242 MOVE                             R16 R11
      243 CALL                             R14 2 0
      244 MOVE                             R14 R13
      245 GETUPVAL                         R15 11
      246 MOVE                             R16 R5
      247 DUPTABLE                         R17 K62 [{"success", "errorMessage"}]
      248 LOADB                            R18 0
      249 SETTABLEKS                       R18 R17 K61 ["success"]
      251 FASTCALL1                        TOSTRING R11 ; [+3]
      252 MOVE                             R19 R11
      253 GETIMPORT                        R18 K64 [tostring]
      255 CALL                             R18 1 1
      256 SETTABLEKS                       R18 R17 K12 ["errorMessage"]
      258 CALL                             R15 2 -1
      259 CALL                             R14 -1 0
      260 GETUPVAL                         R14 6
      261 CALL                             R14 0 1
      262 LOADK                            R17 K65 ["Failed to submit generation job: %*"]
      263 MOVE                             R19 R11
      264 NAMECALL                         R17 R17 K23 ["format"]
      266 CALL                             R17 2 1
      267 MOVE                             R16 R17
      268 NAMECALL                         R14 R14 K28 ["addText"]
      270 CALL                             R14 2 1
      271 LOADB                            R16 1
      272 NAMECALL                         R14 R14 K29 ["setError"]
      274 CALL                             R14 2 1
      275 NAMECALL                         R14 R14 K30 ["build"]
      277 CALL                             R14 1 -1
      278 RETURN                           R14 -1
      279 JUMP                             ; [+40]
      280 GETUPVAL                         R12 12
      281 MOVE                             R13 R4
      282 MOVE                             R14 R10
      283 CALL                             R12 2 1
      284 GETTABLEKS                       R13 R12 K66 ["generationId"]
      286 JUMPIFNOTEQKS                    R13 K0 [""] ; [+31]
      288 GETTABLEKS                       R14 R12 K68 ["errorType"]
      290 ORK                              R13 R14 K67 ["General"]
      291 GETTABLEKS                       R15 R12 K12 ["errorMessage"]
      293 ORK                              R14 R15 K69 ["Unknown error"]
      294 GETGLOBAL                        R15 K31 ["reportGenerationError"]
      296 MOVE                             R16 R13
      297 MOVE                             R17 R14
      298 LOADNIL                          R18
      299 MOVE                             R19 R4
      300 MOVE                             R20 R5
      301 MOVE                             R21 R0
      302 MOVE                             R22 R3
      303 CALL                             R15 7 0
      304 GETUPVAL                         R15 6
      305 CALL                             R15 0 1
      306 MOVE                             R17 R14
      307 NAMECALL                         R15 R15 K28 ["addText"]
      309 CALL                             R15 2 1
      310 LOADB                            R17 1
      311 NAMECALL                         R15 R15 K29 ["setError"]
      313 CALL                             R15 2 1
      314 NAMECALL                         R15 R15 K30 ["build"]
      316 CALL                             R15 1 -1
      317 RETURN                           R15 -1
      318 GETTABLEKS                       R11 R12 K66 ["generationId"]
      320 SETTABLEKS                       R11 R5 K66 ["generationId"]
      322 GETUPVAL                         R13 2
      323 GETTABLEKS                       R12 R13 K70 ["setJob"]
      325 MOVE                             R13 R11
      326 DUPTABLE                         R14 K74 [{"generationId", "status", "prompt", "imageUri", "logs"}]
      327 SETTABLEKS                       R11 R14 K66 ["generationId"]
      329 GETUPVAL                         R16 13
      330 GETTABLEKS                       R15 R16 K75 ["Submitted"]
      332 SETTABLEKS                       R15 R14 K71 ["status"]
      334 SETTABLEKS                       R4 R14 K1 ["prompt"]
      336 GETTABLEKS                       R15 R1 K33 ["attachedImageUri"]
      338 SETTABLEKS                       R15 R14 K72 ["imageUri"]
      340 NEWTABLE                         R15 0 0
      342 SETTABLEKS                       R15 R14 K73 ["logs"]
      344 CALL                             R12 2 0
      345 GETUPVAL                         R13 2
      346 GETTABLEKS                       R12 R13 K76 ["appendLog"]
      348 MOVE                             R13 R11
      349 LOADK                            R15 K77 ["Job submitted with prompt: \"%*\", image: \"%*\", imageMimeType: \"%*\""]
      350 MOVE                             R17 R4
      351 JUMPIFNOT                        R8 ; [+3]
      352 GETTABLEKS                       R18 R8 K52 ["data"]
      354 JUMPIF                           R18 ; [+1]
      355 LOADK                            R18 K78 ["nil"]
      356 JUMPIFNOT                        R8 ; [+3]
      357 GETTABLEKS                       R19 R8 K79 ["mimeType"]
      359 JUMPIF                           R19 ; [+1]
      360 LOADK                            R19 K78 ["nil"]
      361 NAMECALL                         R15 R15 K23 ["format"]
      363 CALL                             R15 4 1
      364 MOVE                             R14 R15
      365 CALL                             R12 2 0
      366 GETIMPORT                        R12 K82 [task.spawn]
      368 GETUPVAL                         R13 14
      369 MOVE                             R14 R0
      370 MOVE                             R15 R11
      371 MOVE                             R16 R4
      372 MOVE                             R17 R5
      373 MOVE                             R18 R3
      374 MOVE                             R19 R2
      375 CALL                             R12 7 0
      376 GETUPVAL                         R12 6
      377 CALL                             R12 0 1
      378 LOADK                            R15 K83 ["Generation job submitted successfully. Generation ID: %*"]
      379 MOVE                             R17 R11
      380 NAMECALL                         R15 R15 K23 ["format"]
      382 CALL                             R15 2 1
      383 MOVE                             R14 R15
      384 NAMECALL                         R12 R12 K28 ["addText"]
      386 CALL                             R12 2 1
      387 NAMECALL                         R12 R12 K30 ["build"]
      389 CALL                             R12 1 -1
      390 RETURN                           R12 -1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["bridge"]
        3 GETTABLEKS                       R0 R1 K1 ["selectModel"]
        5 DUPTABLE                         R1 K3 [{"modelTag"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["modelTag"]
        9 SETTABLEKS                       R2 R1 K2 ["modelTag"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["newDisplayName"]
        3 SETTABLEKS                       R1 R0 K1 ["displayName"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["newClassName"]
        8 SETTABLEKS                       R1 R0 K3 ["className"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K4 ["modelTag"]
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

PROTO_43:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["updateWidget"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["setPreviewImage"]
        5 GETTABLEKS                       R4 R0 K1 ["index"]
        7 GETTABLEKS                       R5 R0 K2 ["image"]
        9 CALL                             R3 2 0
       10 RETURN                           R0 0

PROTO_45:
        0 DUPTABLE                         R1 K1 [{"handlerArgs"}]
        1 GETIMPORT                        R2 K4 [table.clone]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R2 R1 K0 ["handlerArgs"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K5 ["createGuestContext"]
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R1
       12 GETUPVAL                         R5 2
       13 LOADNIL                          R6
       14 CALL                             R2 4 -1
       15 RETURN                           R2 -1

PROTO_46:
        0 DUPTABLE                         R3 K5 [{"uiMessageId", "uiContentId", "messageGuid", "sessionId", "isThirdPartyRequest"}]
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETTABLEKS                       R4 R1 K6 ["messageId"]
        4 JUMPIF                           R4 ; [+1]
        5 LOADK                            R4 K7 [""]
        6 SETTABLEKS                       R4 R3 K0 ["uiMessageId"]
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETTABLEKS                       R4 R1 K8 ["contentId"]
       11 JUMPIF                           R4 ; [+1]
       12 LOADK                            R4 K7 [""]
       13 SETTABLEKS                       R4 R3 K1 ["uiContentId"]
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETTABLEKS                       R4 R1 K2 ["messageGuid"]
       18 JUMPIF                           R4 ; [+1]
       19 LOADK                            R4 K7 [""]
       20 SETTABLEKS                       R4 R3 K2 ["messageGuid"]
       22 JUMPIFNOT                        R1 ; [+3]
       23 GETTABLEKS                       R4 R1 K3 ["sessionId"]
       25 JUMPIF                           R4 ; [+1]
       26 LOADK                            R4 K7 [""]
       27 SETTABLEKS                       R4 R3 K3 ["sessionId"]
       29 JUMPIFNOT                        R1 ; [+3]
       30 GETTABLEKS                       R4 R1 K4 ["isThirdPartyRequest"]
       32 JUMPIF                           R4 ; [+1]
       33 LOADB                            R4 0
       34 SETTABLEKS                       R4 R3 K4 ["isThirdPartyRequest"]
       36 DUPTABLE                         R5 K10 [{"handlerArgs"}]
       37 GETIMPORT                        R6 K13 [table.clone]
       39 MOVE                             R7 R3
       40 CALL                             R6 1 1
       41 SETTABLEKS                       R6 R5 K9 ["handlerArgs"]
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R6 R7 K14 ["createGuestContext"]
       46 GETUPVAL                         R7 1
       47 MOVE                             R8 R5
       48 GETUPVAL                         R9 2
       49 LOADNIL                          R10
       50 CALL                             R6 4 1
       51 MOVE                             R4 R6
       52 GETUPVAL                         R5 3
       53 MOVE                             R6 R4
       54 MOVE                             R7 R0
       55 MOVE                             R8 R2
       56 CALL                             R5 3 -1
       57 RETURN                           R5 -1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R0 K0 ["Creates procedural 3D objects from primitive parts with configurable attributes. Supports reference images."]
        4 RETURN                           R0 1
        5 LOADK                            R0 K1 ["Generates editable 3D objects with parts. Best for scenery and a blocky look."]
        6 RETURN                           R0 1

PROTO_48:
        0 DUPTABLE                         R2 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K3 ["PrimitiveGen"]
        4 SETTABLEKS                       R3 R2 K0 ["name"]
        6 DUPTABLE                         R3 K6 [{"prompt", "attachedImageUri"}]
        7 SETTABLEKS                       R0 R3 K4 ["prompt"]
        9 JUMPIFNOT                        R1 ; [+6]
       10 LENGTH                           R5 R1
       11 LOADN                            R6 0
       12 JUMPIFNOTLT                      R6 R5 ; [+3]
       14 GETTABLEN                        R4 R1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 SETTABLEKS                       R4 R3 K5 ["attachedImageUri"]
       19 SETTABLEKS                       R3 R2 K1 ["arguments"]
       21 RETURN                           R2 1

PROTO_49:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["Modes"]
        9 GETTABLEKS                       R1 R2 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_50:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["PrimitiveGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_51:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K0 ["define"]
       12 CALL                             R4 0 1
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K1 ["PrimitiveGen"]
       16 NAMECALL                         R4 R4 K2 ["setName"]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R7 4
       20 CALL                             R7 0 1
       21 JUMPIFNOT                        R7 ; [+2]
       22 LOADK                            R6 K3 ["Creates 3D objects built from primitive parts (blocks, spheres, cylinders, wedges) as a ProceduralModel with configurable attributes.\nUse this tool when the user wants to:\n- Create or build a 3D object, model, character, creature, vehicle, building, scenery, or any physical thing in the workspace\n- Generate something from a reference image\n- Create an object with tunable parameters (e.g. \"add attributes to control head size, arm length, color\")\n- Build anything described as \"procedural\", \"parametric\", \"configurable\", or \"with attributes\"\n\nThe output is a ProceduralModel: a scripted model whose appearance is controlled by user-editable attributes (like size, color, proportions). The user can tweak these attributes after generation without regenerating.\n\nThe tool automatically inserts the generated model into the workspace. You do not need to run any code afterward.\n"]
       23 JUMP                             ; [+1]
       24 LOADK                            R6 K4 ["ONLY call this tool when the user EXPLICITLY requests to create something using primitive shapes, blocks, or geometric parts.\nTrigger phrases include: \"make with primitives\", \"using primitive shapes\", \"with blocks\", \"using parts\", \"geometric shapes\", \"build with cubes/spheres/cylinders\", \"primitive model\".\nDO NOT use this tool for generic requests like \"make a car\" or \"create a house\" - only use it when primitives are specifically requested.\nIf the user has provided a reference image, pass the image URI to this tool using the attachedImageUri parameter.\nThe tool will automatically add the generated code to the user's workspace, so you do not need to do anything to run the code.\n"]
       25 NAMECALL                         R4 R4 K5 ["setDescription"]
       27 CALL                             R4 2 1
       28 LOADK                            R6 K6 ["prompt"]
       29 DUPTABLE                         R7 K9 [{"type", "description"}]
       30 LOADK                            R8 K10 ["string"]
       31 SETTABLEKS                       R8 R7 K7 ["type"]
       33 GETUPVAL                         R9 4
       34 CALL                             R9 0 1
       35 JUMPIFNOT                        R9 ; [+2]
       36 LOADK                            R8 K11 ["A text description of what to create and what attributes to expose.\nPass the user's own words. If they mention specific configurable properties (e.g. \"head size\", \"arm length\", \"wheel count\"), include those in the prompt so the generated model exposes them as editable attributes.\nIf an image is attached and the user gave no text description, pass an empty string.\nDo NOT describe or interpret the attached image — only pass the user's own words.\n"]
       37 JUMP                             ; [+1]
       38 LOADK                            R8 K12 ["The user's EXACT text description of what to create. \nCRITICAL: Do NOT describe or interpret the attached image. Do NOT generate your own description.\n- Only use the user's own words, never your interpretation of the image.\n"]
       39 SETTABLEKS                       R8 R7 K8 ["description"]
       41 NAMECALL                         R4 R4 K13 ["addArgument"]
       43 CALL                             R4 3 1
       44 LOADK                            R6 K14 ["attachedImageUri"]
       45 DUPTABLE                         R7 K9 [{"type", "description"}]
       46 LOADK                            R8 K10 ["string"]
       47 SETTABLEKS                       R8 R7 K7 ["type"]
       49 GETUPVAL                         R9 4
       50 CALL                             R9 0 1
       51 JUMPIFNOT                        R9 ; [+2]
       52 LOADK                            R8 K15 ["The image URI (IMAGEID_<id>) from the user's attached image. Always pass this when the user provides a reference image."]
       53 JUMP                             ; [+1]
       54 LOADK                            R8 K16 ["The image URI (IMAGEID_<id>) referencing the attached image from user input."]
       55 SETTABLEKS                       R8 R7 K8 ["description"]
       57 NAMECALL                         R4 R4 K17 ["addOptionalArgument"]
       59 CALL                             R4 3 1
       60 MOVE                             R6 R3
       61 NAMECALL                         R4 R4 K18 ["setHandler"]
       63 CALL                             R4 2 1
       64 NAMECALL                         R4 R4 K19 ["build"]
       66 CALL                             R4 1 1
       67 DUPTABLE                         R5 K23 [{"command", "getDescription", "mapToToolCall"}]
       68 GETUPVAL                         R7 5
       69 CALL                             R7 0 1
       70 JUMPIFNOT                        R7 ; [+4]
       71 GETUPVAL                         R7 3
       72 GETTABLEKS                       R6 R7 K1 ["PrimitiveGen"]
       74 JUMP                             ; [+1]
       75 LOADK                            R6 K24 ["primitive"]
       76 SETTABLEKS                       R6 R5 K20 ["command"]
       78 DUPCLOSURE                       R6 K25 [PROTO_47]
       79 CAPTURE                          UPVAL U4
       80 SETTABLEKS                       R6 R5 K21 ["getDescription"]
       82 DUPCLOSURE                       R6 K26 [PROTO_48]
       83 CAPTURE                          UPVAL U3
       84 SETTABLEKS                       R6 R5 K22 ["mapToToolCall"]
       86 DUPTABLE                         R6 K28 [{"transformInitialContent"}]
       87 DUPCLOSURE                       R7 K29 [PROTO_49]
       88 CAPTURE                          UPVAL U6
       89 SETTABLEKS                       R7 R6 K27 ["transformInitialContent"]
       91 DUPTABLE                         R7 K36 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "displayNameFunction", "toolCallOptions"}]
       92 SETTABLEKS                       R4 R7 K30 ["definition"]
       94 NEWTABLE                         R8 0 1
       96 MOVE                             R9 R5
       97 SETLIST                          R8 R9 1 [1]
       99 SETTABLEKS                       R8 R7 K31 ["slashCommands"]
      101 NEWTABLE                         R8 0 1
      103 GETUPVAL                         R9 6
      104 SETLIST                          R8 R9 1 [1]
      106 SETTABLEKS                       R8 R7 K32 ["contentWidgets"]
      108 SETTABLEKS                       R6 R7 K33 ["streamTransform"]
      110 DUPCLOSURE                       R8 K37 [PROTO_50]
      111 CAPTURE                          UPVAL U7
      112 SETTABLEKS                       R8 R7 K34 ["displayNameFunction"]
      114 DUPTABLE                         R8 K39 [{"resetTimeoutOnProgress"}]
      115 LOADB                            R9 1
      116 SETTABLEKS                       R9 R8 K38 ["resetTimeoutOnProgress"]
      118 SETTABLEKS                       R8 R7 K35 ["toolCallOptions"]
      120 RETURN                           R7 1

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
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Cryo"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Guest"]
       24 GETTABLEKS                       R4 R5 K13 ["Environment"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K14 ["Util"]
       31 GETTABLEKS                       R5 R6 K15 ["FormRequestBuilder"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K14 ["Util"]
       38 GETTABLEKS                       R6 R7 K16 ["ImageContentStore"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R0 K10 ["Parent"]
       45 GETTABLEKS                       R7 R8 K17 ["ModelContextProtocol"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETIMPORT                        R10 K1 [script]
       52 GETTABLEKS                       R9 R10 K10 ["Parent"]
       54 GETTABLEKS                       R8 R9 K18 ["PrimitiveGenBridge"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETIMPORT                        R11 K1 [script]
       61 GETTABLEKS                       R10 R11 K10 ["Parent"]
       63 GETTABLEKS                       R9 R10 K19 ["PrimitiveGenBridgeTypes"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETIMPORT                        R12 K1 [script]
       70 GETTABLEKS                       R11 R12 K10 ["Parent"]
       72 GETTABLEKS                       R10 R11 K20 ["PrimitiveGenJobStore"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETIMPORT                        R13 K1 [script]
       79 GETTABLEKS                       R12 R13 K10 ["Parent"]
       81 GETTABLEKS                       R11 R12 K21 ["PrimitiveGenPreviewFetch"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R13 R0 K22 ["Tools"]
       88 GETTABLEKS                       R12 R13 K23 ["ToolTypes"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K9 [require]
       93 GETTABLEKS                       R14 R0 K14 ["Util"]
       95 GETTABLEKS                       R13 R14 K24 ["ToolUtils"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K9 [require]
      100 GETTABLEKS                       R16 R0 K25 ["Resources"]
      102 GETTABLEKS                       R15 R16 K26 ["Localization"]
      104 GETTABLEKS                       R14 R15 K27 ["Translator"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K9 [require]
      109 GETTABLEKS                       R15 R0 K28 ["Types"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K1 [script]
      114 LOADK                            R17 K29 ["PrimitiveGen"]
      115 NAMECALL                         R15 R15 K3 ["FindFirstAncestor"]
      117 CALL                             R15 2 1
      118 GETIMPORT                        R16 K9 [require]
      120 GETTABLEKS                       R17 R15 K30 ["PrimitiveGenContentWidget"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K9 [require]
      125 GETTABLEKS                       R20 R0 K31 ["Features"]
      127 GETTABLEKS                       R19 R20 K32 ["Gen3dUtils"]
      129 GETTABLEKS                       R18 R19 K33 ["Gen3dConstants"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K9 [require]
      134 GETTABLEKS                       R20 R0 K34 ["Flags"]
      136 GETTABLEKS                       R19 R20 K35 ["FFlagAssistantMultipleChatPersistence"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K9 [require]
      141 GETTABLEKS                       R21 R0 K34 ["Flags"]
      143 GETTABLEKS                       R20 R21 K36 ["FFlagDebugMockPrimitiveGenBackend"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K9 [require]
      148 GETTABLEKS                       R22 R0 K34 ["Flags"]
      150 GETTABLEKS                       R21 R22 K37 ["FFlagPrimGenErrorInfo"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K9 [require]
      155 GETTABLEKS                       R23 R0 K34 ["Flags"]
      157 GETTABLEKS                       R22 R23 K38 ["FFlagPrimGenFetchPreviewFromBackend"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K9 [require]
      162 GETTABLEKS                       R24 R0 K34 ["Flags"]
      164 GETTABLEKS                       R23 R24 K39 ["FFlagRefinePrimGenDesc"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K9 [require]
      169 GETTABLEKS                       R25 R0 K34 ["Flags"]
      171 GETTABLEKS                       R24 R25 K40 ["FFlagRenameGenerateCommands"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K9 [require]
      176 GETTABLEKS                       R26 R0 K34 ["Flags"]
      178 GETTABLEKS                       R25 R26 K41 ["FFlagRevertGenerationErrorRefine"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K9 [require]
      183 GETTABLEKS                       R27 R0 K34 ["Flags"]
      185 GETTABLEKS                       R26 R27 K42 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K9 [require]
      190 GETTABLEKS                       R28 R0 K34 ["Flags"]
      192 GETTABLEKS                       R27 R28 K43 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K9 [require]
      197 GETTABLEKS                       R29 R0 K34 ["Flags"]
      199 GETTABLEKS                       R28 R29 K44 ["FStringMCPAssistantPrimitiveGenServerURL"]
      201 CALL                             R27 1 1
      202 GETTABLEKS                       R28 R16 K45 ["PreviewState"]
      204 GETTABLEKS                       R30 R6 K14 ["Util"]
      206 GETTABLEKS                       R29 R30 K46 ["ToolResult"]
      208 GETTABLEKS                       R30 R6 K47 ["Json"]
      210 GETTABLEKS                       R32 R2 K48 ["Dictionary"]
      212 GETTABLEKS                       R31 R32 K49 ["join"]
      214 GETTABLEKS                       R33 R6 K14 ["Util"]
      216 GETTABLEKS                       R32 R33 K50 ["ToolBuilder"]
      218 GETTABLEKS                       R33 R11 K51 ["ToolNames"]
      220 GETTABLEKS                       R34 R17 K52 ["PREVIEW_IMAGE_COUNT"]
      222 DUPTABLE                         R35 K57 [{"Submitting", "ResolvingDependencies", "DownloadingScript", "Inserting"}]
      223 LOADK                            R38 K29 ["PrimitiveGen"]
      224 LOADK                            R39 K58 ["StageSubmitting"]
      225 NAMECALL                         R36 R13 K59 ["getText"]
      227 CALL                             R36 3 1
      228 SETTABLEKS                       R36 R35 K53 ["Submitting"]
      230 LOADK                            R38 K29 ["PrimitiveGen"]
      231 LOADK                            R39 K60 ["StageResolvingDependencies"]
      232 NAMECALL                         R36 R13 K59 ["getText"]
      234 CALL                             R36 3 1
      235 SETTABLEKS                       R36 R35 K54 ["ResolvingDependencies"]
      237 LOADK                            R38 K29 ["PrimitiveGen"]
      238 LOADK                            R39 K61 ["StageDownloadingScript"]
      239 NAMECALL                         R36 R13 K59 ["getText"]
      241 CALL                             R36 3 1
      242 SETTABLEKS                       R36 R35 K55 ["DownloadingScript"]
      244 LOADK                            R38 K29 ["PrimitiveGen"]
      245 LOADK                            R39 K62 ["StageInserting"]
      246 NAMECALL                         R36 R13 K59 ["getText"]
      248 CALL                             R36 3 1
      249 SETTABLEKS                       R36 R35 K56 ["Inserting"]
      251 DUPTABLE                         R36 K65 [{"WorkflowFailure", "ModerationFailure"}]
      252 LOADK                            R37 K66 ["Workflow Failure"]
      253 SETTABLEKS                       R37 R36 K63 ["WorkflowFailure"]
      255 LOADK                            R37 K67 ["Moderation Failure"]
      256 SETTABLEKS                       R37 R36 K64 ["ModerationFailure"]
      258 DUPTABLE                         R37 K71 [{"Success", "Cancelled", "Failed"}]
      259 LOADK                            R38 K72 ["success"]
      260 SETTABLEKS                       R38 R37 K68 ["Success"]
      262 LOADK                            R38 K73 ["cancelled"]
      263 SETTABLEKS                       R38 R37 K69 ["Cancelled"]
      265 LOADK                            R38 K74 ["failed"]
      266 SETTABLEKS                       R38 R37 K70 ["Failed"]
      268 DUPCLOSURE                       R38 K75 [PROTO_0]
      269 CAPTURE                          VAL R3
      270 DUPTABLE                         R39 K76 [{"Success", "Failed"}]
      271 LOADK                            R40 K72 ["success"]
      272 SETTABLEKS                       R40 R39 K68 ["Success"]
      274 LOADK                            R40 K74 ["failed"]
      275 SETTABLEKS                       R40 R39 K70 ["Failed"]
      277 DUPCLOSURE                       R40 K77 [PROTO_1]
      278 DUPCLOSURE                       R41 K78 [PROTO_2]
      279 CAPTURE                          VAL R5
      280 DUPCLOSURE                       R42 K79 [PROTO_4]
      281 DUPCLOSURE                       R43 K80 [PROTO_5]
      282 DUPCLOSURE                       R44 K81 [PROTO_6]
      283 CAPTURE                          VAL R20
      284 CAPTURE                          VAL R30
      285 CAPTURE                          VAL R12
      286 DUPCLOSURE                       R45 K82 [PROTO_7]
      287 CAPTURE                          VAL R27
      288 CAPTURE                          VAL R3
      289 DUPCLOSURE                       R46 K83 [PROTO_8]
      290 CAPTURE                          VAL R27
      291 CAPTURE                          VAL R3
      292 DUPCLOSURE                       R47 K84 [PROTO_20]
      293 CAPTURE                          VAL R18
      294 CAPTURE                          VAL R16
      295 CAPTURE                          VAL R34
      296 DUPCLOSURE                       R48 K85 [PROTO_21]
      297 CAPTURE                          VAL R1
      298 CAPTURE                          VAL R4
      299 CAPTURE                          VAL R27
      300 CAPTURE                          VAL R3
      301 CAPTURE                          VAL R31
      302 CAPTURE                          VAL R45
      303 DUPCLOSURE                       R49 K86 [PROTO_22]
      304 CAPTURE                          VAL R19
      305 CAPTURE                          VAL R3
      306 CAPTURE                          VAL R48
      307 CAPTURE                          VAL R44
      308 DUPCLOSURE                       R50 K87 [PROTO_24]
      309 CAPTURE                          VAL R19
      310 CAPTURE                          VAL R3
      311 CAPTURE                          VAL R48
      312 CAPTURE                          VAL R44
      313 DUPCLOSURE                       R51 K88 [PROTO_26]
      314 CAPTURE                          VAL R3
      315 CAPTURE                          VAL R27
      316 CAPTURE                          VAL R45
      317 CAPTURE                          VAL R37
      318 CAPTURE                          VAL R24
      319 CAPTURE                          VAL R9
      320 CAPTURE                          VAL R44
      321 CAPTURE                          VAL R12
      322 CAPTURE                          VAL R43
      323 CAPTURE                          VAL R21
      324 CAPTURE                          VAL R10
      325 CAPTURE                          VAL R26
      326 DUPCLOSURE                       R52 K89 [PROTO_27]
      327 CAPTURE                          VAL R3
      328 CAPTURE                          VAL R30
      329 DUPCLOSURE                       R53 K90 [PROTO_29]
      330 CAPTURE                          VAL R3
      331 CAPTURE                          VAL R44
      332 DUPCLOSURE                       R54 K91 [PROTO_30]
      333 CAPTURE                          VAL R37
      334 CAPTURE                          VAL R19
      335 CAPTURE                          VAL R3
      336 CAPTURE                          VAL R51
      337 CAPTURE                          VAL R24
      338 CAPTURE                          VAL R21
      339 CAPTURE                          VAL R10
      340 CAPTURE                          VAL R35
      341 CAPTURE                          VAL R53
      342 CAPTURE                          VAL R43
      343 CAPTURE                          VAL R52
      344 DUPCLOSURE                       R55 K92 [PROTO_32]
      345 CAPTURE                          VAL R39
      346 GETTABLEKS                       R56 R9 K93 ["JobStatus"]
      348 DUPCLOSURE                       R57 K94 [PROTO_33]
      349 CAPTURE                          VAL R9
      350 CAPTURE                          VAL R56
      351 CAPTURE                          VAL R31
      352 SETGLOBAL                        R57 K95 ["reportGenerationError"]
      354 DUPCLOSURE                       R57 K96 [PROTO_38]
      355 CAPTURE                          VAL R9
      356 CAPTURE                          VAL R56
      357 CAPTURE                          VAL R12
      358 CAPTURE                          VAL R54
      359 CAPTURE                          VAL R24
      360 CAPTURE                          VAL R28
      361 CAPTURE                          VAL R31
      362 CAPTURE                          VAL R37
      363 CAPTURE                          VAL R35
      364 CAPTURE                          VAL R55
      365 CAPTURE                          VAL R39
      366 DUPCLOSURE                       R58 K97 [PROTO_40]
      367 CAPTURE                          VAL R47
      368 CAPTURE                          VAL R25
      369 CAPTURE                          VAL R9
      370 CAPTURE                          VAL R24
      371 CAPTURE                          VAL R16
      372 CAPTURE                          VAL R13
      373 CAPTURE                          VAL R29
      374 CAPTURE                          VAL R5
      375 CAPTURE                          VAL R28
      376 CAPTURE                          VAL R35
      377 CAPTURE                          VAL R49
      378 CAPTURE                          VAL R31
      379 CAPTURE                          VAL R50
      380 CAPTURE                          VAL R56
      381 CAPTURE                          VAL R57
      382 DUPCLOSURE                       R59 K98 [PROTO_43]
      383 CAPTURE                          VAL R47
      384 DUPCLOSURE                       R60 K99 [PROTO_44]
      385 CAPTURE                          VAL R47
      386 DUPTABLE                         R61 K102 [{"updateContentHeader", "setPreviewImage"}]
      387 SETTABLEKS                       R59 R61 K100 ["updateContentHeader"]
      389 SETTABLEKS                       R60 R61 K101 ["setPreviewImage"]
      391 DUPCLOSURE                       R62 K103 [PROTO_51]
      392 CAPTURE                          VAL R7
      393 CAPTURE                          VAL R58
      394 CAPTURE                          VAL R32
      395 CAPTURE                          VAL R33
      396 CAPTURE                          VAL R22
      397 CAPTURE                          VAL R23
      398 CAPTURE                          VAL R16
      399 CAPTURE                          VAL R13
      400 DUPTABLE                         R63 K106 [{"bridge", "setupGuest"}]
      401 SETTABLEKS                       R61 R63 K104 ["bridge"]
      403 SETTABLEKS                       R62 R63 K105 ["setupGuest"]
      405 RETURN                           R63 1
