PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getMockPrimGenBackendData"]
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
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["getImage"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_3:
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
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["decode"]
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
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K6 ["toString"]
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
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K6 ["toString"]
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
       62 GETUPVAL                         R3 1
       63 GETTABLEKS                       R3 R3 K0 ["decode"]
       65 GETTABLEKS                       R4 R0 K1 ["Body"]
       67 CALL                             R2 2 2
       68 JUMPIF                           R2 ; [+17]
       69 LOADK                            R5 K14 ["%*: failed to decode JSON: %*, full response: %*"]
       70 MOVE                             R7 R1
       71 MOVE                             R8 R3
       72 GETUPVAL                         R9 2
       73 GETTABLEKS                       R9 R9 K6 ["toString"]
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

PROTO_8:
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

PROTO_9:
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
        6 GETUPVAL                         R1 2
        7 SETTABLEKS                       R1 R0 K2 ["retryInfo"]
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K3 ["expanded"]
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["previewState"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["previewErrorMessage"]
        6 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["generationStage"]
        3 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["externalHooks"]
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

PROTO_23:
        0 JUMPIFNOT                        R1 ; [+9]
        1 GETUPVAL                         R2 0
        2 GETIMPORT                        R4 K2 [buffer.fromstring]
        4 MOVE                             R5 R1
        5 CALL                             R4 1 -1
        6 NAMECALL                         R2 R2 K3 ["Base64Decode"]
        8 CALL                             R2 -1 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R2
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K4 ["new"]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R5 2
       16 CALL                             R5 0 1
       17 JUMPIFEQKS                       R5 K5 [""] ; [+3]
       19 MOVE                             R4 R5
       20 JUMP                             ; [+11]
       21 LOADK                            R6 K6 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R8 R8 K7 ["get"]
       25 CALL                             R8 0 1
       26 GETTABLEKS                       R8 R8 K8 ["apisUrl"]
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
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R8 R8 K14 ["file"]
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

PROTO_24:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADK                            R2 K0 ["1234567890"]
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["get"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R4 R2 K2 ["http"]
       15 GETTABLEKS                       R4 R4 K3 ["requestAsync"]
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

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 3
        5 GETTABLEKS                       R1 R1 K0 ["http"]
        7 GETTABLEKS                       R1 R1 K1 ["requestAsync"]
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

PROTO_26:
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
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K5 ["get"]
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

PROTO_27:
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

PROTO_28:
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
       32 JUMPIFNOTLT                      R7 R9 ; [+318]
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
       68 GETUPVAL                         R12 3
       69 GETTABLEKS                       R12 R12 K17 ["Failed"]
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
       88 GETUPVAL                         R11 5
       89 GETTABLEKS                       R11 R11 K21 ["appendLog"]
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
      165 GETUPVAL                         R18 7
      166 GETTABLEKS                       R18 R18 K41 ["toString"]
      168 MOVE                             R19 R11
      169 CALL                             R18 1 1
      170 GETTABLEKS                       R19 R11 K29 ["primitiveGenerationId"]
      172 NAMECALL                         R15 R15 K5 ["format"]
      174 CALL                             R15 4 1
      175 MOVE                             R14 R15
      176 DUPTABLE                         R15 K16 [{"status", "errorText", "errorType"}]
      177 GETUPVAL                         R16 3
      178 GETTABLEKS                       R16 R16 K17 ["Failed"]
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
      268 GETUPVAL                         R15 5
      269 GETTABLEKS                       R15 R15 K21 ["appendLog"]
      271 MOVE                             R16 R0
      272 LOADK                            R18 K53 ["Polling job resultData:%*"]
      273 GETUPVAL                         R20 7
      274 GETTABLEKS                       R20 R20 K41 ["toString"]
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
      290 GETUPVAL                         R20 7
      291 GETTABLEKS                       R20 R20 K41 ["toString"]
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
      309 GETUPVAL                         R18 10
      310 GETTABLEKS                       R18 R18 K58 ["parseScriptPreviewS3Urls"]
      312 MOVE                             R19 R14
      313 CALL                             R18 1 1
      314 JUMP                             ; [+1]
      315 LOADNIL                          R18
      316 DUPTABLE                         R19 K61 [{"status", "currentStage", "scriptUrl", "dependencyVersion", "dependencies", "scriptPreviewS3Urls"}]
      317 GETUPVAL                         R20 3
      318 GETTABLEKS                       R20 R20 K20 ["Success"]
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
      337 GETUPVAL                         R15 3
      338 GETTABLEKS                       R15 R15 K8 ["Cancelled"]
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
      365 GETUPVAL                         R10 3
      366 GETTABLEKS                       R10 R10 K17 ["Failed"]
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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
       46 GETUPVAL                         R5 4
       47 CALL                             R5 0 1
       48 JUMPIF                           R5 ; [+8]
       49 GETTABLEKS                       R5 R4 K0 ["status"]
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K8 ["Failed"]
       54 JUMPIFNOTEQ                      R5 R6 ; [+2]
       56 RETURN                           R4 1
       57 GETTABLEKS                       R5 R4 K9 ["dependencies"]
       59 JUMPIFNOT                        R5 ; [+8]
       60 GETTABLEKS                       R7 R4 K9 ["dependencies"]
       62 LENGTH                           R6 R7
       63 LOADN                            R7 0
       64 JUMPIFLT                         R7 R6 ; [+2]
       66 LOADB                            R5 0 +1
       67 LOADB                            R5 1
       68 LOADNIL                          R6
       69 JUMPIFNOT                        R5 ; [+19]
       70 MOVE                             R7 R2
       71 GETUPVAL                         R8 5
       72 GETTABLEKS                       R8 R8 K10 ["ResolvingDependencies"]
       74 CALL                             R7 1 0
       75 GETTABLEKS                       R8 R4 K9 ["dependencies"]
       77 FASTCALL2K                       ASSERT R8 K11 ; [+4]
       79 LOADK                            R9 K11 ["Dependencies are required"]
       80 GETIMPORT                        R7 K13 [assert]
       82 CALL                             R7 2 0
       83 GETUPVAL                         R7 6
       84 MOVE                             R8 R0
       85 GETTABLEKS                       R9 R4 K9 ["dependencies"]
       87 CALL                             R7 2 1
       88 MOVE                             R6 R7
       89 GETTABLEKS                       R7 R4 K14 ["scriptUrl"]
       91 JUMPIF                           R7 ; [+4]
       92 GETUPVAL                         R7 7
       93 LOADK                            R8 K15 ["No script URL found in response"]
       94 CALL                             R7 1 -1
       95 RETURN                           R7 -1
       96 MOVE                             R7 R2
       97 GETUPVAL                         R8 5
       98 GETTABLEKS                       R8 R8 K16 ["DownloadingScript"]
      100 CALL                             R7 1 0
      101 GETUPVAL                         R7 8
      102 GETTABLEKS                       R8 R4 K14 ["scriptUrl"]
      104 CALL                             R7 1 1
      105 DUPTABLE                         R8 K21 [{"status", "luauCode", "dependencyVersion", "resolvedDependencies", "scriptPreviewS3Urls"}]
      106 GETUPVAL                         R9 0
      107 GETTABLEKS                       R9 R9 K22 ["Success"]
      109 SETTABLEKS                       R9 R8 K0 ["status"]
      111 SETTABLEKS                       R7 R8 K17 ["luauCode"]
      113 GETTABLEKS                       R9 R4 K18 ["dependencyVersion"]
      115 SETTABLEKS                       R9 R8 K18 ["dependencyVersion"]
      117 SETTABLEKS                       R6 R8 K19 ["resolvedDependencies"]
      119 GETTABLEKS                       R9 R4 K20 ["scriptPreviewS3Urls"]
      121 SETTABLEKS                       R9 R8 K20 ["scriptPreviewS3Urls"]
      123 RETURN                           R8 1

PROTO_33:
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

PROTO_34:
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
       23 JUMPIFNOT                        R3 ; [+16]
       24 DUPTABLE                         R5 K9 [{"status", "errorText"}]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K10 ["Failed"]
       28 SETTABLEKS                       R6 R5 K3 ["status"]
       30 LOADK                            R7 K11 ["Failed to add workspace model: %*"]
       31 GETTABLEKS                       R9 R4 K12 ["error"]
       33 NAMECALL                         R7 R7 K13 ["format"]
       35 CALL                             R7 2 1
       36 MOVE                             R6 R7
       37 SETTABLEKS                       R6 R5 K8 ["errorText"]
       39 RETURN                           R5 1
       40 DUPTABLE                         R5 K9 [{"status", "errorText"}]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K10 ["Failed"]
       44 SETTABLEKS                       R6 R5 K3 ["status"]
       46 LOADK                            R7 K11 ["Failed to add workspace model: %*"]
       47 MOVE                             R9 R4
       48 NAMECALL                         R7 R7 K13 ["format"]
       50 CALL                             R7 2 1
       51 MOVE                             R6 R7
       52 SETTABLEKS                       R6 R5 K8 ["errorText"]
       54 RETURN                           R5 1

PROTO_35:
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
       36 DUPTABLE                         R12 K13 [{"generationId", "success", "errorMessage", "prompt"}]
       37 SETTABLEKS                       R2 R12 K10 ["generationId"]
       39 LOADB                            R13 0
       40 SETTABLEKS                       R13 R12 K11 ["success"]
       42 SETTABLEKS                       R1 R12 K6 ["errorMessage"]
       44 SETTABLEKS                       R3 R12 K12 ["prompt"]
       46 CALL                             R10 2 -1
       47 CALL                             R9 -1 0
       48 RETURN                           R0 0

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_40:
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
       35 RETURN                           R0 0

PROTO_41:
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
       16 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_43:
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
       25 JUMPIFNOTEQ                      R1 R2 ; [+71]
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
       51 JUMPIFNOT                        R1 ; [+11]
       52 GETUPVAL                         R1 3
       53 GETTABLEKS                       R1 R1 K11 ["updateWidget"]
       55 NEWCLOSURE                       R2 P0
       56 CAPTURE                          UPVAL U10
       57 CAPTURE                          UPVAL U11
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U12
       60 CAPTURE                          UPVAL U13
       61 CALL                             R1 1 0
       62 JUMP                             ; [+7]
       63 GETUPVAL                         R1 3
       64 GETTABLEKS                       R1 R1 K11 ["updateWidget"]
       66 NEWCLOSURE                       R2 P1
       67 CAPTURE                          UPVAL U11
       68 CAPTURE                          VAL R0
       69 CALL                             R1 1 0
       70 GETUPVAL                         R1 6
       71 GETTABLEKS                       R1 R1 K12 ["bridge"]
       73 GETTABLEKS                       R1 R1 K13 ["listenToLinkChanges"]
       75 DUPTABLE                         R2 K16 [{"generationId", "name"}]
       76 GETUPVAL                         R3 1
       77 SETTABLEKS                       R3 R2 K14 ["generationId"]
       79 GETTABLEKS                       R3 R0 K6 ["resultName"]
       81 SETTABLEKS                       R3 R2 K15 ["name"]
       83 CALL                             R1 1 0
       84 GETUPVAL                         R1 14
       85 CALL                             R1 0 1
       86 JUMPIF                           R1 ; [+90]
       87 GETUPVAL                         R1 15
       88 GETUPVAL                         R2 16
       89 GETUPVAL                         R3 17
       90 DUPTABLE                         R4 K18 [{"success"}]
       91 LOADB                            R5 1
       92 SETTABLEKS                       R5 R4 K17 ["success"]
       94 CALL                             R2 2 -1
       95 CALL                             R1 -1 0
       96 JUMP                             ; [+80]
       97 GETUPVAL                         R1 14
       98 CALL                             R1 0 1
       99 JUMPIFNOT                        R1 ; [+23]
      100 GETUPVAL                         R1 0
      101 GETTABLEKS                       R1 R1 K0 ["updateJobStatus"]
      103 GETUPVAL                         R2 1
      104 GETUPVAL                         R3 2
      105 GETTABLEKS                       R3 R3 K19 ["Failed"]
      107 DUPTABLE                         R4 K21 [{"errorMessage"}]
      108 GETTABLEKS                       R5 R0 K22 ["errorText"]
      110 SETTABLEKS                       R5 R4 K20 ["errorMessage"]
      112 CALL                             R1 3 0
      113 GETUPVAL                         R1 3
      114 GETTABLEKS                       R1 R1 K23 ["setPreviewState"]
      116 GETUPVAL                         R2 11
      117 GETTABLEKS                       R2 R2 K19 ["Failed"]
      119 GETTABLEKS                       R3 R0 K22 ["errorText"]
      121 CALL                             R1 2 0
      122 JUMP                             ; [+54]
      123 LOADK                            R2 K24 ["Execute generated code failed with error: %*, generationId=%*"]
      124 GETTABLEKS                       R4 R0 K22 ["errorText"]
      126 GETUPVAL                         R5 1
      127 NAMECALL                         R2 R2 K10 ["format"]
      129 CALL                             R2 3 1
      130 MOVE                             R1 R2
      131 GETUPVAL                         R2 9
      132 CALL                             R2 0 1
      133 JUMPIFNOT                        R2 ; [+33]
      134 DUPTABLE                         R2 K28 [{"description", "onRetryText", "onRetryClick"}]
      135 GETUPVAL                         R3 12
      136 LOADK                            R5 K29 ["PrimitiveGen"]
      137 LOADK                            R6 K30 ["InsertionFailedRetryPrompt"]
      138 NAMECALL                         R3 R3 K31 ["getText"]
      140 CALL                             R3 3 1
      141 SETTABLEKS                       R3 R2 K25 ["description"]
      143 GETUPVAL                         R3 12
      144 LOADK                            R5 K29 ["PrimitiveGen"]
      145 LOADK                            R6 K32 ["RetryYes"]
      146 NAMECALL                         R3 R3 K31 ["getText"]
      148 CALL                             R3 3 1
      149 SETTABLEKS                       R3 R2 K26 ["onRetryText"]
      151 NEWCLOSURE                       R3 P2
      152 CAPTURE                          UPVAL U13
      153 SETTABLEKS                       R3 R2 K27 ["onRetryClick"]
      155 GETGLOBAL                        R3 K33 ["reportGenerationError"]
      157 LOADK                            R4 K34 ["General"]
      158 MOVE                             R5 R1
      159 GETUPVAL                         R6 1
      160 GETUPVAL                         R7 18
      161 GETUPVAL                         R8 17
      162 GETUPVAL                         R9 6
      163 GETUPVAL                         R10 3
      164 MOVE                             R11 R2
      165 CALL                             R3 8 0
      166 JUMP                             ; [+10]
      167 GETGLOBAL                        R2 K33 ["reportGenerationError"]
      169 LOADK                            R3 K34 ["General"]
      170 MOVE                             R4 R1
      171 GETUPVAL                         R5 1
      172 GETUPVAL                         R6 18
      173 GETUPVAL                         R7 17
      174 GETUPVAL                         R8 6
      175 GETUPVAL                         R9 3
      176 CALL                             R2 7 0
      177 GETUPVAL                         R1 14
      178 CALL                             R1 0 1
      179 JUMPIFNOT                        R1 ; [+30]
      180 GETUPVAL                         R1 15
      181 GETUPVAL                         R2 16
      182 GETUPVAL                         R3 17
      183 DUPTABLE                         R4 K35 [{"success", "errorMessage"}]
      184 GETTABLEKS                       R6 R0 K3 ["status"]
      186 GETUPVAL                         R7 8
      187 GETTABLEKS                       R7 R7 K4 ["Success"]
      189 JUMPIFEQ                         R6 R7 ; [+2]
      191 LOADB                            R5 0 +1
      192 LOADB                            R5 1
      193 SETTABLEKS                       R5 R4 K17 ["success"]
      195 GETTABLEKS                       R6 R0 K3 ["status"]
      197 GETUPVAL                         R7 8
      198 GETTABLEKS                       R7 R7 K19 ["Failed"]
      200 JUMPIFNOTEQ                      R6 R7 ; [+4]
      202 GETTABLEKS                       R5 R0 K22 ["errorText"]
      204 JUMP                             ; [+1]
      205 LOADNIL                          R5
      206 SETTABLEKS                       R5 R4 K20 ["errorMessage"]
      208 CALL                             R2 2 -1
      209 CALL                             R1 -1 0
      210 RETURN                           R0 0

PROTO_44:
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
       34 GETTABLEKS                       R2 R2 K10 ["Failed"]
       36 LOADK                            R3 K6 [""]
       37 GETUPVAL                         R4 1
       38 CALL                             R1 3 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R1 4
       41 CALL                             R1 0 0
       42 RETURN                           R0 0

PROTO_45:
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
       30 JUMPIF                           R8 ; [+81]
       31 GETUPVAL                         R10 4
       32 CALL                             R10 0 1
       33 JUMPIFNOT                        R10 ; [+63]
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R10 R10 K4 ["updateJobStatus"]
       37 MOVE                             R11 R1
       38 GETUPVAL                         R12 1
       39 GETTABLEKS                       R12 R12 K8 ["Failed"]
       41 DUPTABLE                         R13 K10 [{"errorMessage"}]
       42 FASTCALL1                        TOSTRING R9 ; [+3]
       43 MOVE                             R15 R9
       44 GETIMPORT                        R14 K12 [tostring]
       46 CALL                             R14 1 1
       47 SETTABLEKS                       R14 R13 K9 ["errorMessage"]
       49 CALL                             R10 3 0
       50 GETTABLEKS                       R10 R4 K13 ["setPreviewState"]
       52 GETUPVAL                         R11 5
       53 GETTABLEKS                       R11 R11 K8 ["Failed"]
       55 FASTCALL1                        TOSTRING R9 ; [+3]
       56 MOVE                             R13 R9
       57 GETIMPORT                        R12 K12 [tostring]
       59 CALL                             R12 1 1
       60 CALL                             R10 2 0
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R10 R10 K14 ["appendLog"]
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
      117 GETUPVAL                         R11 7
      118 GETTABLEKS                       R11 R11 K8 ["Failed"]
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
      137 GETUPVAL                         R11 7
      138 GETTABLEKS                       R11 R11 K26 ["Cancelled"]
      140 JUMPIFNOTEQ                      R10 R11 ; [+28]
      142 GETUPVAL                         R10 0
      143 GETTABLEKS                       R10 R10 K4 ["updateJobStatus"]
      145 MOVE                             R11 R1
      146 GETUPVAL                         R12 1
      147 GETTABLEKS                       R12 R12 K26 ["Cancelled"]
      149 CALL                             R10 2 0
      150 GETTABLEKS                       R10 R4 K13 ["setPreviewState"]
      152 GETUPVAL                         R11 5
      153 GETTABLEKS                       R11 R11 K26 ["Cancelled"]
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
      169 GETUPVAL                         R10 8
      170 CALL                             R10 0 1
      171 JUMPIFNOT                        R10 ; [+51]
      172 GETTABLEKS                       R10 R9 K23 ["status"]
      174 GETUPVAL                         R11 7
      175 GETTABLEKS                       R11 R11 K29 ["Success"]
      177 JUMPIFNOTEQ                      R10 R11 ; [+45]
      179 GETTABLEKS                       R10 R9 K30 ["scriptPreviewS3Urls"]
      181 JUMPIFNOT                        R10 ; [+41]
      182 GETTABLEKS                       R11 R9 K30 ["scriptPreviewS3Urls"]
      184 LENGTH                           R10 R11
      185 LOADN                            R11 0
      186 JUMPIFNOTLT                      R11 R10 ; [+36]
      188 GETUPVAL                         R10 9
      189 CALL                             R10 0 1
      190 JUMPIF                           R10 ; [+25]
      191 GETTABLEKS                       R10 R9 K30 ["scriptPreviewS3Urls"]
      193 GETIMPORT                        R11 K33 [table.create]
      195 LENGTH                           R12 R10
      196 CALL                             R11 1 1
      197 LENGTH                           R14 R10
      198 LOADN                            R12 1
      199 LOADN                            R13 255
      200 FORNPREP                         R12
      201 GETTABLE                         R17 R10 R14
      202 FASTCALL2                        TABLE_INSERT R11 R17 ; [+4]
      204 MOVE                             R16 R11
      205 GETIMPORT                        R15 K35 [table.insert]
      207 CALL                             R15 2 0
      208 FORNLOOP                         R12
      209 GETUPVAL                         R12 10
      210 GETTABLEKS                       R12 R12 K36 ["fetchPreviewImages"]
      212 MOVE                             R13 R11
      213 MOVE                             R14 R4
      214 CALL                             R12 2 0
      215 JUMP                             ; [+7]
      216 GETUPVAL                         R10 10
      217 GETTABLEKS                       R10 R10 K36 ["fetchPreviewImages"]
      219 GETTABLEKS                       R11 R9 K30 ["scriptPreviewS3Urls"]
      221 MOVE                             R12 R4
      222 CALL                             R10 2 0
      223 LOADNIL                          R10
      224 NEWCLOSURE                       R11 P2
      225 CAPTURE                          UPVAL U0
      226 CAPTURE                          VAL R1
      227 CAPTURE                          UPVAL U1
      228 CAPTURE                          VAL R4
      229 CAPTURE                          UPVAL U11
      230 CAPTURE                          UPVAL U12
      231 CAPTURE                          VAL R0
      232 CAPTURE                          VAL R9
      233 CAPTURE                          UPVAL U13
      234 CAPTURE                          UPVAL U14
      235 CAPTURE                          UPVAL U15
      236 CAPTURE                          UPVAL U5
      237 CAPTURE                          UPVAL U16
      238 CAPTURE                          REF R10
      239 CAPTURE                          UPVAL U4
      240 CAPTURE                          VAL R6
      241 CAPTURE                          UPVAL U6
      242 CAPTURE                          VAL R3
      243 CAPTURE                          VAL R2
      244 MOVE                             R10 R11
      245 GETUPVAL                         R12 17
      246 CALL                             R12 0 1
      247 JUMPIFNOT                        R12 ; [+69]
      248 GETTABLEKS                       R12 R0 K0 ["toolArgs"]
      250 GETTABLEKS                       R12 R12 K1 ["environment"]
      252 GETTABLEKS                       R12 R12 K37 ["getStudioPlayState"]
      254 CALL                             R12 0 1
      255 JUMPIFNOT                        R12 ; [+61]
      256 GETUPVAL                         R13 0
      257 GETTABLEKS                       R13 R13 K4 ["updateJobStatus"]
      259 MOVE                             R14 R1
      260 GETUPVAL                         R15 1
      261 GETTABLEKS                       R15 R15 K26 ["Cancelled"]
      263 CALL                             R13 2 0
      264 LOADNIL                          R13
      265 DUPTABLE                         R14 K42 [{"description", "onRetryText", "onRetryClick", "isRunning"}]
      266 GETUPVAL                         R15 16
      267 LOADK                            R17 K43 ["PrimitiveGen"]
      268 LOADK                            R18 K44 ["GenerationCancelledPlayModeRetryPrompt"]
      269 NAMECALL                         R15 R15 K45 ["getText"]
      271 CALL                             R15 3 1
      272 SETTABLEKS                       R15 R14 K38 ["description"]
      274 GETUPVAL                         R15 16
      275 LOADK                            R17 K43 ["PrimitiveGen"]
      276 LOADK                            R18 K46 ["RetryYes"]
      277 NAMECALL                         R15 R15 K45 ["getText"]
      279 CALL                             R15 3 1
      280 SETTABLEKS                       R15 R14 K39 ["onRetryText"]
      282 NEWCLOSURE                       R15 P3
      283 CAPTURE                          VAL R0
      284 CAPTURE                          REF R13
      285 CAPTURE                          VAL R4
      286 CAPTURE                          UPVAL U5
      287 CAPTURE                          REF R10
      288 SETTABLEKS                       R15 R14 K40 ["onRetryClick"]
      290 LOADB                            R15 0
      291 SETTABLEKS                       R15 R14 K41 ["isRunning"]
      293 MOVE                             R13 R14
      294 GETTABLEKS                       R14 R4 K13 ["setPreviewState"]
      296 GETUPVAL                         R15 5
      297 GETTABLEKS                       R15 R15 K8 ["Failed"]
      299 LOADK                            R16 K47 [""]
      300 MOVE                             R17 R13
      301 CALL                             R14 3 0
      302 MOVE                             R14 R6
      303 GETUPVAL                         R15 6
      304 MOVE                             R16 R3
      305 DUPTABLE                         R17 K27 [{"success", "errorMessage"}]
      306 LOADB                            R18 0
      307 SETTABLEKS                       R18 R17 K18 ["success"]
      309 LOADK                            R18 K48 ["Generation cancelled (Studio left edit mode)"]
      310 SETTABLEKS                       R18 R17 K9 ["errorMessage"]
      312 CALL                             R15 2 -1
      313 CALL                             R14 -1 0
      314 CLOSEUPVALS                      R10
      315 RETURN                           R0 0
      316 CLOSEUPVALS                      R13
      317 MOVE                             R12 R10
      318 CALL                             R12 0 0
      319 CLOSEUPVALS                      R10
      320 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_47:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R5 R1 K1 ["prompt"]
        5 ORK                              R4 R5 K0 [""]
        6 DUPTABLE                         R5 K4 [{"requestId", "conversationId", "prompt"}]
        7 GETTABLEKS                       R7 R0 K5 ["handlerArgs"]
        9 GETTABLEKS                       R7 R7 K6 ["messageGuid"]
       11 ORK                              R6 R7 K0 [""]
       12 SETTABLEKS                       R6 R5 K2 ["requestId"]
       14 GETTABLEKS                       R7 R0 K5 ["handlerArgs"]
       16 GETTABLEKS                       R7 R7 K7 ["sessionId"]
       18 ORK                              R6 R7 K0 [""]
       19 SETTABLEKS                       R6 R5 K3 ["conversationId"]
       21 SETTABLEKS                       R4 R5 K1 ["prompt"]
       23 GETUPVAL                         R6 1
       24 CALL                             R6 0 1
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K8 ["getActiveJobCount"]
       28 CALL                             R7 0 1
       29 JUMPIFNOTLE                      R6 R7 ; [+108]
       31 GETUPVAL                         R8 3
       32 CALL                             R8 0 1
       33 JUMPIFNOT                        R8 ; [+59]
       34 DUPTABLE                         R8 K13 [{"type", "mode", "isError", "errorMessage"}]
       35 GETUPVAL                         R9 4
       36 GETTABLEKS                       R9 R9 K14 ["Type"]
       38 SETTABLEKS                       R9 R8 K9 ["type"]
       40 GETUPVAL                         R9 4
       41 GETTABLEKS                       R9 R9 K15 ["Modes"]
       43 GETTABLEKS                       R9 R9 K16 ["Preparing"]
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
      143 GETUPVAL                         R10 7
      144 GETTABLEKS                       R10 R10 K34 ["getImage"]
      146 MOVE                             R11 R9
      147 CALL                             R10 1 1
      148 MOVE                             R8 R10
      149 DUPTABLE                         R9 K45 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "generationStage", "startTime", "onChipClicked", "retryInfo"}]
      150 GETUPVAL                         R10 4
      151 GETTABLEKS                       R10 R10 K14 ["Type"]
      153 SETTABLEKS                       R10 R9 K9 ["type"]
      155 GETUPVAL                         R10 4
      156 GETTABLEKS                       R10 R10 K15 ["Modes"]
      158 GETTABLEKS                       R10 R10 K46 ["ShowPreview"]
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
      175 LOADK                            R13 K47 ["DefaultDisplayName"]
      176 NAMECALL                         R10 R10 K26 ["getText"]
      178 CALL                             R10 3 1
      179 SETTABLEKS                       R10 R9 K37 ["displayName"]
      181 LOADNIL                          R10
      182 SETTABLEKS                       R10 R9 K38 ["className"]
      184 LOADNIL                          R10
      185 SETTABLEKS                       R10 R9 K39 ["previewImages"]
      187 GETUPVAL                         R10 8
      188 GETTABLEKS                       R10 R10 K48 ["Generating"]
      190 SETTABLEKS                       R10 R9 K40 ["previewState"]
      192 GETUPVAL                         R10 9
      193 GETTABLEKS                       R10 R10 K49 ["Submitting"]
      195 SETTABLEKS                       R10 R9 K41 ["generationStage"]
      197 GETIMPORT                        R10 K52 [os.clock]
      199 CALL                             R10 0 1
      200 SETTABLEKS                       R10 R9 K42 ["startTime"]
      202 LOADNIL                          R10
      203 SETTABLEKS                       R10 R9 K43 ["onChipClicked"]
      205 LOADNIL                          R10
      206 SETTABLEKS                       R10 R9 K44 ["retryInfo"]
      208 GETTABLEKS                       R10 R3 K27 ["replaceContent"]
      210 MOVE                             R11 R9
      211 CALL                             R10 1 0
      212 JUMPIFNOT                        R8 ; [+3]
      213 GETTABLEKS                       R10 R8 K53 ["data"]
      215 JUMP                             ; [+1]
      216 LOADNIL                          R10
      217 LOADK                            R11 K0 [""]
      218 GETUPVAL                         R12 3
      219 CALL                             R12 0 1
      220 JUMPIFNOT                        R12 ; [+62]
      221 LOADB                            R12 0
      222 GETIMPORT                        R13 K55 [pcall]
      224 NEWCLOSURE                       R14 P0
      225 CAPTURE                          UPVAL U10
      226 CAPTURE                          VAL R4
      227 CAPTURE                          VAL R10
      228 CALL                             R13 1 2
      229 MOVE                             R12 R13
      230 MOVE                             R11 R14
      231 JUMPIF                           R12 ; [+91]
      232 GETTABLEKS                       R13 R0 K56 ["toolArgs"]
      234 GETTABLEKS                       R13 R13 K57 ["environment"]
      236 GETTABLEKS                       R13 R13 K58 ["EventLogger"]
      238 GETTABLEKS                       R13 R13 K59 ["logPrimitiveGen"]
      240 GETTABLEKS                       R14 R3 K60 ["setPreviewState"]
      242 GETUPVAL                         R15 8
      243 GETTABLEKS                       R15 R15 K61 ["Failed"]
      245 MOVE                             R16 R11
      246 CALL                             R14 2 0
      247 MOVE                             R14 R13
      248 GETUPVAL                         R15 11
      249 MOVE                             R16 R5
      250 DUPTABLE                         R17 K63 [{"success", "errorMessage"}]
      251 LOADB                            R18 0
      252 SETTABLEKS                       R18 R17 K62 ["success"]
      254 FASTCALL1                        TOSTRING R11 ; [+3]
      255 MOVE                             R19 R11
      256 GETIMPORT                        R18 K65 [tostring]
      258 CALL                             R18 1 1
      259 SETTABLEKS                       R18 R17 K12 ["errorMessage"]
      261 CALL                             R15 2 -1
      262 CALL                             R14 -1 0
      263 GETUPVAL                         R14 6
      264 CALL                             R14 0 1
      265 LOADK                            R17 K66 ["Failed to submit generation job: %*"]
      266 MOVE                             R19 R11
      267 NAMECALL                         R17 R17 K23 ["format"]
      269 CALL                             R17 2 1
      270 MOVE                             R16 R17
      271 NAMECALL                         R14 R14 K28 ["addText"]
      273 CALL                             R14 2 1
      274 LOADB                            R16 1
      275 NAMECALL                         R14 R14 K29 ["setError"]
      277 CALL                             R14 2 1
      278 NAMECALL                         R14 R14 K30 ["build"]
      280 CALL                             R14 1 -1
      281 RETURN                           R14 -1
      282 JUMP                             ; [+40]
      283 GETUPVAL                         R12 12
      284 MOVE                             R13 R4
      285 MOVE                             R14 R10
      286 CALL                             R12 2 1
      287 GETTABLEKS                       R13 R12 K67 ["generationId"]
      289 JUMPIFNOTEQKS                    R13 K0 [""] ; [+31]
      291 GETTABLEKS                       R14 R12 K69 ["errorType"]
      293 ORK                              R13 R14 K68 ["General"]
      294 GETTABLEKS                       R15 R12 K12 ["errorMessage"]
      296 ORK                              R14 R15 K70 ["Unknown error"]
      297 GETGLOBAL                        R15 K31 ["reportGenerationError"]
      299 MOVE                             R16 R13
      300 MOVE                             R17 R14
      301 LOADNIL                          R18
      302 MOVE                             R19 R4
      303 MOVE                             R20 R5
      304 MOVE                             R21 R0
      305 MOVE                             R22 R3
      306 CALL                             R15 7 0
      307 GETUPVAL                         R15 6
      308 CALL                             R15 0 1
      309 MOVE                             R17 R14
      310 NAMECALL                         R15 R15 K28 ["addText"]
      312 CALL                             R15 2 1
      313 LOADB                            R17 1
      314 NAMECALL                         R15 R15 K29 ["setError"]
      316 CALL                             R15 2 1
      317 NAMECALL                         R15 R15 K30 ["build"]
      319 CALL                             R15 1 -1
      320 RETURN                           R15 -1
      321 GETTABLEKS                       R11 R12 K67 ["generationId"]
      323 SETTABLEKS                       R11 R5 K67 ["generationId"]
      325 GETUPVAL                         R12 2
      326 GETTABLEKS                       R12 R12 K71 ["setJob"]
      328 MOVE                             R13 R11
      329 DUPTABLE                         R14 K75 [{"generationId", "status", "prompt", "imageUri", "logs"}]
      330 SETTABLEKS                       R11 R14 K67 ["generationId"]
      332 GETUPVAL                         R15 13
      333 GETTABLEKS                       R15 R15 K76 ["Submitted"]
      335 SETTABLEKS                       R15 R14 K72 ["status"]
      337 SETTABLEKS                       R4 R14 K1 ["prompt"]
      339 GETTABLEKS                       R15 R1 K33 ["attachedImageUri"]
      341 SETTABLEKS                       R15 R14 K73 ["imageUri"]
      343 NEWTABLE                         R15 0 0
      345 SETTABLEKS                       R15 R14 K74 ["logs"]
      347 CALL                             R12 2 0
      348 GETUPVAL                         R12 2
      349 GETTABLEKS                       R12 R12 K77 ["appendLog"]
      351 MOVE                             R13 R11
      352 LOADK                            R15 K78 ["Job submitted with prompt: \"%*\", image: \"%*\", imageMimeType: \"%*\""]
      353 MOVE                             R17 R4
      354 JUMPIFNOT                        R8 ; [+3]
      355 GETTABLEKS                       R18 R8 K53 ["data"]
      357 JUMPIF                           R18 ; [+1]
      358 LOADK                            R18 K79 ["nil"]
      359 JUMPIFNOT                        R8 ; [+3]
      360 GETTABLEKS                       R19 R8 K80 ["mimeType"]
      362 JUMPIF                           R19 ; [+1]
      363 LOADK                            R19 K79 ["nil"]
      364 NAMECALL                         R15 R15 K23 ["format"]
      366 CALL                             R15 4 1
      367 MOVE                             R14 R15
      368 CALL                             R12 2 0
      369 GETIMPORT                        R12 K83 [task.spawn]
      371 GETUPVAL                         R13 14
      372 MOVE                             R14 R0
      373 MOVE                             R15 R11
      374 MOVE                             R16 R4
      375 MOVE                             R17 R5
      376 MOVE                             R18 R3
      377 MOVE                             R19 R2
      378 CALL                             R12 7 0
      379 GETUPVAL                         R12 6
      380 CALL                             R12 0 1
      381 LOADK                            R15 K84 ["Generation job submitted successfully. Generation ID: %*"]
      382 MOVE                             R17 R11
      383 NAMECALL                         R15 R15 K23 ["format"]
      385 CALL                             R15 2 1
      386 MOVE                             R14 R15
      387 NAMECALL                         R12 R12 K28 ["addText"]
      389 CALL                             R12 2 1
      390 NAMECALL                         R12 R12 K30 ["build"]
      392 CALL                             R12 1 -1
      393 RETURN                           R12 -1

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["selectModel"]
        5 DUPTABLE                         R1 K3 [{"modelTag"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["modelTag"]
        9 SETTABLEKS                       R2 R1 K2 ["modelTag"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["updateWidget"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["setPreviewImage"]
        5 GETTABLEKS                       R4 R0 K1 ["index"]
        7 GETTABLEKS                       R5 R0 K2 ["image"]
        9 CALL                             R3 2 0
       10 RETURN                           R0 0

PROTO_52:
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

PROTO_53:
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
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K14 ["createGuestContext"]
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

PROTO_54:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R0 K0 ["Creates procedural 3D objects from primitive parts with configurable attributes. Supports reference images."]
        4 RETURN                           R0 1
        5 LOADK                            R0 K1 ["Generates editable 3D objects with parts. Best for scenery and a blocky look."]
        6 RETURN                           R0 1

PROTO_55:
        0 DUPTABLE                         R2 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K3 ["PrimitiveGen"]
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

PROTO_56:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_57:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["PrimitiveGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_58:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K0 ["define"]
       12 CALL                             R4 0 1
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K1 ["PrimitiveGen"]
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
       64 DUPTABLE                         R6 K24 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       65 LOADK                            R7 K25 ["Primitive Generation"]
       66 SETTABLEKS                       R7 R6 K19 ["title"]
       68 LOADB                            R7 0
       69 SETTABLEKS                       R7 R6 K20 ["readOnlyHint"]
       71 LOADB                            R7 0
       72 SETTABLEKS                       R7 R6 K21 ["destructiveHint"]
       74 LOADB                            R7 0
       75 SETTABLEKS                       R7 R6 K22 ["idempotentHint"]
       77 LOADB                            R7 0
       78 SETTABLEKS                       R7 R6 K23 ["openWorldHint"]
       80 NAMECALL                         R4 R4 K26 ["setAnnotations"]
       82 CALL                             R4 2 1
       83 NAMECALL                         R4 R4 K27 ["build"]
       85 CALL                             R4 1 1
       86 DUPTABLE                         R5 K31 [{"command", "getDescription", "mapToToolCall"}]
       87 GETUPVAL                         R7 5
       88 CALL                             R7 0 1
       89 JUMPIFNOT                        R7 ; [+4]
       90 GETUPVAL                         R6 3
       91 GETTABLEKS                       R6 R6 K1 ["PrimitiveGen"]
       93 JUMP                             ; [+1]
       94 LOADK                            R6 K32 ["primitive"]
       95 SETTABLEKS                       R6 R5 K28 ["command"]
       97 DUPCLOSURE                       R6 K33 [PROTO_54]
       98 CAPTURE                          UPVAL U4
       99 SETTABLEKS                       R6 R5 K29 ["getDescription"]
      101 DUPCLOSURE                       R6 K34 [PROTO_55]
      102 CAPTURE                          UPVAL U3
      103 SETTABLEKS                       R6 R5 K30 ["mapToToolCall"]
      105 DUPTABLE                         R6 K36 [{"transformInitialContent"}]
      106 DUPCLOSURE                       R7 K37 [PROTO_56]
      107 CAPTURE                          UPVAL U6
      108 SETTABLEKS                       R7 R6 K35 ["transformInitialContent"]
      110 DUPTABLE                         R7 K44 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "displayNameFunction", "toolCallOptions"}]
      111 SETTABLEKS                       R4 R7 K38 ["definition"]
      113 NEWTABLE                         R8 0 1
      115 MOVE                             R9 R5
      116 SETLIST                          R8 R9 1 [1]
      118 SETTABLEKS                       R8 R7 K39 ["slashCommands"]
      120 NEWTABLE                         R8 0 1
      122 GETUPVAL                         R9 6
      123 SETLIST                          R8 R9 1 [1]
      125 SETTABLEKS                       R8 R7 K40 ["contentWidgets"]
      127 SETTABLEKS                       R6 R7 K41 ["streamTransform"]
      129 DUPCLOSURE                       R8 K45 [PROTO_57]
      130 CAPTURE                          UPVAL U7
      131 SETTABLEKS                       R8 R7 K42 ["displayNameFunction"]
      133 DUPTABLE                         R8 K47 [{"resetTimeoutOnProgress"}]
      134 LOADB                            R9 1
      135 SETTABLEKS                       R9 R8 K46 ["resetTimeoutOnProgress"]
      137 SETTABLEKS                       R8 R7 K43 ["toolCallOptions"]
      139 RETURN                           R7 1

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
       43 GETTABLEKS                       R7 R0 K10 ["Parent"]
       45 GETTABLEKS                       R7 R7 K17 ["ModelContextProtocol"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETIMPORT                        R8 K1 [script]
       52 GETTABLEKS                       R8 R8 K10 ["Parent"]
       54 GETTABLEKS                       R8 R8 K18 ["PrimitiveGenBridge"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETIMPORT                        R9 K1 [script]
       61 GETTABLEKS                       R9 R9 K10 ["Parent"]
       63 GETTABLEKS                       R9 R9 K19 ["PrimitiveGenBridgeTypes"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETIMPORT                        R10 K1 [script]
       70 GETTABLEKS                       R10 R10 K10 ["Parent"]
       72 GETTABLEKS                       R10 R10 K20 ["PrimitiveGenJobStore"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETIMPORT                        R11 K1 [script]
       79 GETTABLEKS                       R11 R11 K10 ["Parent"]
       81 GETTABLEKS                       R11 R11 K21 ["PrimitiveGenPreviewFetch"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R12 R0 K22 ["Tools"]
       88 GETTABLEKS                       R12 R12 K23 ["ToolTypes"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K9 [require]
       93 GETTABLEKS                       R13 R0 K14 ["Util"]
       95 GETTABLEKS                       R13 R13 K24 ["ToolUtils"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K9 [require]
      100 GETTABLEKS                       R14 R0 K25 ["Resources"]
      102 GETTABLEKS                       R14 R14 K26 ["Localization"]
      104 GETTABLEKS                       R14 R14 K27 ["Translator"]
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
      125 GETTABLEKS                       R18 R0 K31 ["Features"]
      127 GETTABLEKS                       R18 R18 K32 ["Gen3dUtils"]
      129 GETTABLEKS                       R18 R18 K33 ["Gen3dConstants"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K9 [require]
      134 GETTABLEKS                       R19 R0 K34 ["Flags"]
      136 GETTABLEKS                       R19 R19 K35 ["FFlagAssistantMultipleChatPersistence"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K9 [require]
      141 GETTABLEKS                       R20 R0 K34 ["Flags"]
      143 GETTABLEKS                       R20 R20 K36 ["FFlagDebugMockPrimitiveGenBackend"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K9 [require]
      148 GETTABLEKS                       R21 R0 K34 ["Flags"]
      150 GETTABLEKS                       R21 R21 K37 ["FFlagDisablePrimGenNewImageFromBackend"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K9 [require]
      155 GETTABLEKS                       R22 R0 K34 ["Flags"]
      157 GETTABLEKS                       R22 R22 K38 ["FFlagPrimGenAllowReInsert"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K9 [require]
      162 GETTABLEKS                       R23 R0 K34 ["Flags"]
      164 GETTABLEKS                       R23 R23 K39 ["FFlagPrimGenErrorInfo"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K9 [require]
      169 GETTABLEKS                       R24 R0 K34 ["Flags"]
      171 GETTABLEKS                       R24 R24 K40 ["FFlagPrimGenFetchPreviewFromBackend"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K9 [require]
      176 GETTABLEKS                       R25 R0 K34 ["Flags"]
      178 GETTABLEKS                       R25 R25 K41 ["FFlagPrimGenRetryInPlayTest"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K9 [require]
      183 GETTABLEKS                       R26 R0 K34 ["Flags"]
      185 GETTABLEKS                       R26 R26 K42 ["FFlagRefinePrimGenDesc"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K9 [require]
      190 GETTABLEKS                       R27 R0 K34 ["Flags"]
      192 GETTABLEKS                       R27 R27 K43 ["FFlagRenameGenerateCommands"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K9 [require]
      197 GETTABLEKS                       R28 R0 K34 ["Flags"]
      199 GETTABLEKS                       R28 R28 K44 ["FFlagRevertGenerationErrorRefine"]
      201 CALL                             R27 1 1
      202 GETIMPORT                        R28 K9 [require]
      204 GETTABLEKS                       R29 R0 K34 ["Flags"]
      206 GETTABLEKS                       R29 R29 K45 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      208 CALL                             R28 1 1
      209 GETIMPORT                        R29 K9 [require]
      211 GETTABLEKS                       R30 R0 K34 ["Flags"]
      213 GETTABLEKS                       R30 R30 K46 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      215 CALL                             R29 1 1
      216 GETIMPORT                        R30 K9 [require]
      218 GETTABLEKS                       R31 R0 K34 ["Flags"]
      220 GETTABLEKS                       R31 R31 K47 ["FStringMCPAssistantPrimitiveGenServerURL"]
      222 CALL                             R30 1 1
      223 GETTABLEKS                       R31 R16 K48 ["PreviewState"]
      225 GETTABLEKS                       R32 R6 K14 ["Util"]
      227 GETTABLEKS                       R32 R32 K49 ["ToolResult"]
      229 GETTABLEKS                       R33 R6 K50 ["Json"]
      231 GETTABLEKS                       R34 R2 K51 ["Dictionary"]
      233 GETTABLEKS                       R34 R34 K52 ["join"]
      235 GETTABLEKS                       R35 R6 K14 ["Util"]
      237 GETTABLEKS                       R35 R35 K53 ["ToolBuilder"]
      239 GETTABLEKS                       R36 R11 K54 ["ToolNames"]
      241 MOVE                             R38 R20
      242 CALL                             R38 0 1
      243 JUMPIF                           R38 ; [+2]
      244 LOADN                            R37 5
      245 JUMP                             ; [+2]
      246 GETTABLEKS                       R37 R17 K55 ["PREVIEW_IMAGE_COUNT"]
      248 DUPTABLE                         R38 K60 [{"Submitting", "ResolvingDependencies", "DownloadingScript", "Inserting"}]
      249 LOADK                            R41 K29 ["PrimitiveGen"]
      250 LOADK                            R42 K61 ["StageSubmitting"]
      251 NAMECALL                         R39 R13 K62 ["getText"]
      253 CALL                             R39 3 1
      254 SETTABLEKS                       R39 R38 K56 ["Submitting"]
      256 LOADK                            R41 K29 ["PrimitiveGen"]
      257 LOADK                            R42 K63 ["StageResolvingDependencies"]
      258 NAMECALL                         R39 R13 K62 ["getText"]
      260 CALL                             R39 3 1
      261 SETTABLEKS                       R39 R38 K57 ["ResolvingDependencies"]
      263 LOADK                            R41 K29 ["PrimitiveGen"]
      264 LOADK                            R42 K64 ["StageDownloadingScript"]
      265 NAMECALL                         R39 R13 K62 ["getText"]
      267 CALL                             R39 3 1
      268 SETTABLEKS                       R39 R38 K58 ["DownloadingScript"]
      270 LOADK                            R41 K29 ["PrimitiveGen"]
      271 LOADK                            R42 K65 ["StageInserting"]
      272 NAMECALL                         R39 R13 K62 ["getText"]
      274 CALL                             R39 3 1
      275 SETTABLEKS                       R39 R38 K59 ["Inserting"]
      277 DUPTABLE                         R39 K68 [{"WorkflowFailure", "ModerationFailure"}]
      278 LOADK                            R40 K69 ["Workflow Failure"]
      279 SETTABLEKS                       R40 R39 K66 ["WorkflowFailure"]
      281 LOADK                            R40 K70 ["Moderation Failure"]
      282 SETTABLEKS                       R40 R39 K67 ["ModerationFailure"]
      284 DUPTABLE                         R40 K74 [{"Success", "Cancelled", "Failed"}]
      285 LOADK                            R41 K75 ["success"]
      286 SETTABLEKS                       R41 R40 K71 ["Success"]
      288 LOADK                            R41 K76 ["cancelled"]
      289 SETTABLEKS                       R41 R40 K72 ["Cancelled"]
      291 LOADK                            R41 K77 ["failed"]
      292 SETTABLEKS                       R41 R40 K73 ["Failed"]
      294 DUPCLOSURE                       R41 K78 [PROTO_0]
      295 CAPTURE                          VAL R3
      296 DUPTABLE                         R42 K79 [{"Success", "Failed"}]
      297 LOADK                            R43 K75 ["success"]
      298 SETTABLEKS                       R43 R42 K71 ["Success"]
      300 LOADK                            R43 K77 ["failed"]
      301 SETTABLEKS                       R43 R42 K73 ["Failed"]
      303 DUPCLOSURE                       R43 K80 [PROTO_1]
      304 DUPCLOSURE                       R44 K81 [PROTO_2]
      305 CAPTURE                          VAL R5
      306 DUPCLOSURE                       R45 K82 [PROTO_4]
      307 DUPCLOSURE                       R46 K83 [PROTO_5]
      308 DUPCLOSURE                       R47 K84 [PROTO_6]
      309 CAPTURE                          VAL R22
      310 CAPTURE                          VAL R33
      311 CAPTURE                          VAL R12
      312 DUPCLOSURE                       R48 K85 [PROTO_7]
      313 CAPTURE                          VAL R30
      314 CAPTURE                          VAL R3
      315 DUPCLOSURE                       R49 K86 [PROTO_8]
      316 CAPTURE                          VAL R30
      317 CAPTURE                          VAL R3
      318 DUPCLOSURE                       R50 K87 [PROTO_22]
      319 CAPTURE                          VAL R18
      320 CAPTURE                          VAL R16
      321 CAPTURE                          VAL R37
      322 CAPTURE                          VAL R24
      323 CAPTURE                          VAL R21
      324 CAPTURE                          VAL R38
      325 CAPTURE                          VAL R31
      326 DUPCLOSURE                       R51 K88 [PROTO_23]
      327 CAPTURE                          VAL R1
      328 CAPTURE                          VAL R4
      329 CAPTURE                          VAL R30
      330 CAPTURE                          VAL R3
      331 CAPTURE                          VAL R34
      332 CAPTURE                          VAL R48
      333 DUPCLOSURE                       R52 K89 [PROTO_24]
      334 CAPTURE                          VAL R19
      335 CAPTURE                          VAL R3
      336 CAPTURE                          VAL R51
      337 CAPTURE                          VAL R47
      338 DUPCLOSURE                       R53 K90 [PROTO_26]
      339 CAPTURE                          VAL R19
      340 CAPTURE                          VAL R3
      341 CAPTURE                          VAL R51
      342 CAPTURE                          VAL R47
      343 DUPCLOSURE                       R54 K91 [PROTO_28]
      344 CAPTURE                          VAL R3
      345 CAPTURE                          VAL R30
      346 CAPTURE                          VAL R48
      347 CAPTURE                          VAL R40
      348 CAPTURE                          VAL R27
      349 CAPTURE                          VAL R9
      350 CAPTURE                          VAL R47
      351 CAPTURE                          VAL R12
      352 CAPTURE                          VAL R46
      353 CAPTURE                          VAL R23
      354 CAPTURE                          VAL R10
      355 CAPTURE                          VAL R29
      356 DUPCLOSURE                       R55 K92 [PROTO_29]
      357 CAPTURE                          VAL R3
      358 CAPTURE                          VAL R33
      359 DUPCLOSURE                       R56 K93 [PROTO_31]
      360 CAPTURE                          VAL R3
      361 CAPTURE                          VAL R47
      362 DUPCLOSURE                       R57 K94 [PROTO_32]
      363 CAPTURE                          VAL R40
      364 CAPTURE                          VAL R19
      365 CAPTURE                          VAL R3
      366 CAPTURE                          VAL R54
      367 CAPTURE                          VAL R27
      368 CAPTURE                          VAL R38
      369 CAPTURE                          VAL R56
      370 CAPTURE                          VAL R46
      371 CAPTURE                          VAL R55
      372 DUPCLOSURE                       R58 K95 [PROTO_34]
      373 CAPTURE                          VAL R42
      374 GETTABLEKS                       R59 R9 K96 ["JobStatus"]
      376 DUPCLOSURE                       R60 K97 [PROTO_35]
      377 CAPTURE                          VAL R9
      378 CAPTURE                          VAL R59
      379 CAPTURE                          VAL R34
      380 SETGLOBAL                        R60 K98 ["reportGenerationError"]
      382 DUPCLOSURE                       R60 K99 [PROTO_45]
      383 CAPTURE                          VAL R9
      384 CAPTURE                          VAL R59
      385 CAPTURE                          VAL R12
      386 CAPTURE                          VAL R57
      387 CAPTURE                          VAL R27
      388 CAPTURE                          VAL R31
      389 CAPTURE                          VAL R34
      390 CAPTURE                          VAL R40
      391 CAPTURE                          VAL R23
      392 CAPTURE                          VAL R20
      393 CAPTURE                          VAL R10
      394 CAPTURE                          VAL R38
      395 CAPTURE                          VAL R58
      396 CAPTURE                          VAL R42
      397 CAPTURE                          VAL R21
      398 CAPTURE                          VAL R16
      399 CAPTURE                          VAL R13
      400 CAPTURE                          VAL R24
      401 DUPCLOSURE                       R61 K100 [PROTO_47]
      402 CAPTURE                          VAL R50
      403 CAPTURE                          VAL R28
      404 CAPTURE                          VAL R9
      405 CAPTURE                          VAL R27
      406 CAPTURE                          VAL R16
      407 CAPTURE                          VAL R13
      408 CAPTURE                          VAL R32
      409 CAPTURE                          VAL R5
      410 CAPTURE                          VAL R31
      411 CAPTURE                          VAL R38
      412 CAPTURE                          VAL R52
      413 CAPTURE                          VAL R34
      414 CAPTURE                          VAL R53
      415 CAPTURE                          VAL R59
      416 CAPTURE                          VAL R60
      417 DUPCLOSURE                       R62 K101 [PROTO_50]
      418 CAPTURE                          VAL R50
      419 DUPCLOSURE                       R63 K102 [PROTO_51]
      420 CAPTURE                          VAL R50
      421 DUPTABLE                         R64 K105 [{"updateContentHeader", "setPreviewImage"}]
      422 SETTABLEKS                       R62 R64 K103 ["updateContentHeader"]
      424 SETTABLEKS                       R63 R64 K104 ["setPreviewImage"]
      426 DUPCLOSURE                       R65 K106 [PROTO_58]
      427 CAPTURE                          VAL R7
      428 CAPTURE                          VAL R61
      429 CAPTURE                          VAL R35
      430 CAPTURE                          VAL R36
      431 CAPTURE                          VAL R25
      432 CAPTURE                          VAL R26
      433 CAPTURE                          VAL R16
      434 CAPTURE                          VAL R13
      435 DUPTABLE                         R66 K109 [{"bridge", "setupGuest"}]
      436 SETTABLEKS                       R64 R66 K107 ["bridge"]
      438 SETTABLEKS                       R65 R66 K108 ["setupGuest"]
      440 RETURN                           R66 1
