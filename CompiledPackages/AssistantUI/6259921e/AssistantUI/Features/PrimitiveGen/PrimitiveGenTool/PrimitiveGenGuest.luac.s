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
       35 GETUPVAL                         R1 5
       36 SETTABLEKS                       R1 R0 K15 ["generationId"]
       38 RETURN                           R0 0

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
       16 GETUPVAL                         R1 2
       17 SETTABLEKS                       R1 R0 K6 ["generationId"]
       19 RETURN                           R0 0

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
       25 JUMPIFNOTEQ                      R1 R2 ; [+73]
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
       87 CALL                             R1 0 1
       88 JUMPIF                           R1 ; [+90]
       89 GETUPVAL                         R1 15
       90 GETUPVAL                         R2 16
       91 GETUPVAL                         R3 17
       92 DUPTABLE                         R4 K18 [{"success"}]
       93 LOADB                            R5 1
       94 SETTABLEKS                       R5 R4 K17 ["success"]
       96 CALL                             R2 2 -1
       97 CALL                             R1 -1 0
       98 JUMP                             ; [+80]
       99 GETUPVAL                         R1 14
      100 CALL                             R1 0 1
      101 JUMPIFNOT                        R1 ; [+23]
      102 GETUPVAL                         R1 0
      103 GETTABLEKS                       R1 R1 K0 ["updateJobStatus"]
      105 GETUPVAL                         R2 1
      106 GETUPVAL                         R3 2
      107 GETTABLEKS                       R3 R3 K19 ["Failed"]
      109 DUPTABLE                         R4 K21 [{"errorMessage"}]
      110 GETTABLEKS                       R5 R0 K22 ["errorText"]
      112 SETTABLEKS                       R5 R4 K20 ["errorMessage"]
      114 CALL                             R1 3 0
      115 GETUPVAL                         R1 3
      116 GETTABLEKS                       R1 R1 K23 ["setPreviewState"]
      118 GETUPVAL                         R2 11
      119 GETTABLEKS                       R2 R2 K19 ["Failed"]
      121 GETTABLEKS                       R3 R0 K22 ["errorText"]
      123 CALL                             R1 2 0
      124 JUMP                             ; [+54]
      125 LOADK                            R2 K24 ["Execute generated code failed with error: %*, generationId=%*"]
      126 GETTABLEKS                       R4 R0 K22 ["errorText"]
      128 GETUPVAL                         R5 1
      129 NAMECALL                         R2 R2 K10 ["format"]
      131 CALL                             R2 3 1
      132 MOVE                             R1 R2
      133 GETUPVAL                         R2 9
      134 CALL                             R2 0 1
      135 JUMPIFNOT                        R2 ; [+33]
      136 DUPTABLE                         R2 K28 [{"description", "onRetryText", "onRetryClick"}]
      137 GETUPVAL                         R3 12
      138 LOADK                            R5 K29 ["PrimitiveGen"]
      139 LOADK                            R6 K30 ["InsertionFailedRetryPrompt"]
      140 NAMECALL                         R3 R3 K31 ["getText"]
      142 CALL                             R3 3 1
      143 SETTABLEKS                       R3 R2 K25 ["description"]
      145 GETUPVAL                         R3 12
      146 LOADK                            R5 K29 ["PrimitiveGen"]
      147 LOADK                            R6 K32 ["RetryYes"]
      148 NAMECALL                         R3 R3 K31 ["getText"]
      150 CALL                             R3 3 1
      151 SETTABLEKS                       R3 R2 K26 ["onRetryText"]
      153 NEWCLOSURE                       R3 P2
      154 CAPTURE                          UPVAL U13
      155 SETTABLEKS                       R3 R2 K27 ["onRetryClick"]
      157 GETGLOBAL                        R3 K33 ["reportGenerationError"]
      159 LOADK                            R4 K34 ["General"]
      160 MOVE                             R5 R1
      161 GETUPVAL                         R6 1
      162 GETUPVAL                         R7 18
      163 GETUPVAL                         R8 17
      164 GETUPVAL                         R9 6
      165 GETUPVAL                         R10 3
      166 MOVE                             R11 R2
      167 CALL                             R3 8 0
      168 JUMP                             ; [+10]
      169 GETGLOBAL                        R2 K33 ["reportGenerationError"]
      171 LOADK                            R3 K34 ["General"]
      172 MOVE                             R4 R1
      173 GETUPVAL                         R5 1
      174 GETUPVAL                         R6 18
      175 GETUPVAL                         R7 17
      176 GETUPVAL                         R8 6
      177 GETUPVAL                         R9 3
      178 CALL                             R2 7 0
      179 GETUPVAL                         R1 14
      180 CALL                             R1 0 1
      181 JUMPIFNOT                        R1 ; [+30]
      182 GETUPVAL                         R1 15
      183 GETUPVAL                         R2 16
      184 GETUPVAL                         R3 17
      185 DUPTABLE                         R4 K35 [{"success", "errorMessage"}]
      186 GETTABLEKS                       R6 R0 K3 ["status"]
      188 GETUPVAL                         R7 8
      189 GETTABLEKS                       R7 R7 K4 ["Success"]
      191 JUMPIFEQ                         R6 R7 ; [+2]
      193 LOADB                            R5 0 +1
      194 LOADB                            R5 1
      195 SETTABLEKS                       R5 R4 K17 ["success"]
      197 GETTABLEKS                       R6 R0 K3 ["status"]
      199 GETUPVAL                         R7 8
      200 GETTABLEKS                       R7 R7 K19 ["Failed"]
      202 JUMPIFNOTEQ                      R6 R7 ; [+4]
      204 GETTABLEKS                       R5 R0 K22 ["errorText"]
      206 JUMP                             ; [+1]
      207 LOADNIL                          R5
      208 SETTABLEKS                       R5 R4 K20 ["errorMessage"]
      210 CALL                             R2 2 -1
      211 CALL                             R1 -1 0
      212 RETURN                           R0 0

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
        6 DUPTABLE                         R5 K5 [{"requestId", "conversationId", "prompt", "hasImage"}]
        7 GETTABLEKS                       R7 R0 K6 ["handlerArgs"]
        9 GETTABLEKS                       R7 R7 K7 ["messageGuid"]
       11 ORK                              R6 R7 K0 [""]
       12 SETTABLEKS                       R6 R5 K2 ["requestId"]
       14 GETTABLEKS                       R7 R0 K6 ["handlerArgs"]
       16 GETTABLEKS                       R7 R7 K8 ["sessionId"]
       18 ORK                              R6 R7 K0 [""]
       19 SETTABLEKS                       R6 R5 K3 ["conversationId"]
       21 SETTABLEKS                       R4 R5 K1 ["prompt"]
       23 GETTABLEKS                       R7 R1 K9 ["attachedImageUri"]
       25 JUMPIFNOTEQKNIL                  R7 ; [+2]
       27 LOADB                            R6 0 +1
       28 LOADB                            R6 1
       29 SETTABLEKS                       R6 R5 K4 ["hasImage"]
       31 GETUPVAL                         R6 1
       32 CALL                             R6 0 1
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K10 ["getActiveJobCount"]
       36 CALL                             R7 0 1
       37 JUMPIFNOTLE                      R6 R7 ; [+108]
       39 GETUPVAL                         R8 3
       40 CALL                             R8 0 1
       41 JUMPIFNOT                        R8 ; [+59]
       42 DUPTABLE                         R8 K15 [{"type", "mode", "isError", "errorMessage"}]
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K16 ["Type"]
       46 SETTABLEKS                       R9 R8 K11 ["type"]
       48 GETUPVAL                         R9 4
       49 GETTABLEKS                       R9 R9 K17 ["Modes"]
       51 GETTABLEKS                       R9 R9 K18 ["Preparing"]
       53 SETTABLEKS                       R9 R8 K12 ["mode"]
       55 LOADB                            R9 1
       56 SETTABLEKS                       R9 R8 K13 ["isError"]
       58 GETUPVAL                         R9 5
       59 LOADK                            R11 K19 ["PrimitiveGen"]
       60 LOADK                            R12 K20 ["MaxConcurrentJobsError"]
       61 DUPTABLE                         R13 K23 [{"activeCount", "maxConcurrentJobs"}]
       62 GETIMPORT                        R14 K26 [string.format]
       64 LOADK                            R15 K27 ["%d"]
       65 MOVE                             R16 R7
       66 CALL                             R14 2 1
       67 SETTABLEKS                       R14 R13 K21 ["activeCount"]
       69 GETIMPORT                        R14 K26 [string.format]
       71 LOADK                            R15 K27 ["%d"]
       72 MOVE                             R16 R6
       73 CALL                             R14 2 1
       74 SETTABLEKS                       R14 R13 K22 ["maxConcurrentJobs"]
       76 NAMECALL                         R9 R9 K28 ["getText"]
       78 CALL                             R9 4 1
       79 SETTABLEKS                       R9 R8 K14 ["errorMessage"]
       81 GETTABLEKS                       R9 R3 K29 ["replaceContent"]
       83 MOVE                             R10 R8
       84 CALL                             R9 1 0
       85 GETUPVAL                         R9 6
       86 CALL                             R9 0 1
       87 GETTABLEKS                       R12 R8 K14 ["errorMessage"]
       89 ORK                              R11 R12 K0 [""]
       90 NAMECALL                         R9 R9 K30 ["addText"]
       92 CALL                             R9 2 1
       93 LOADB                            R11 1
       94 NAMECALL                         R9 R9 K31 ["setError"]
       96 CALL                             R9 2 1
       97 NAMECALL                         R9 R9 K32 ["build"]
       99 CALL                             R9 1 -1
      100 RETURN                           R9 -1
      101 GETUPVAL                         R8 5
      102 LOADK                            R10 K19 ["PrimitiveGen"]
      103 LOADK                            R11 K20 ["MaxConcurrentJobsError"]
      104 DUPTABLE                         R12 K23 [{"activeCount", "maxConcurrentJobs"}]
      105 GETIMPORT                        R13 K26 [string.format]
      107 LOADK                            R14 K27 ["%d"]
      108 MOVE                             R15 R7
      109 CALL                             R13 2 1
      110 SETTABLEKS                       R13 R12 K21 ["activeCount"]
      112 GETIMPORT                        R13 K26 [string.format]
      114 LOADK                            R14 K27 ["%d"]
      115 MOVE                             R15 R6
      116 CALL                             R13 2 1
      117 SETTABLEKS                       R13 R12 K22 ["maxConcurrentJobs"]
      119 NAMECALL                         R8 R8 K28 ["getText"]
      121 CALL                             R8 4 1
      122 GETGLOBAL                        R9 K33 ["reportGenerationError"]
      124 LOADK                            R10 K34 ["TooManyRequests"]
      125 MOVE                             R11 R8
      126 LOADNIL                          R12
      127 MOVE                             R13 R4
      128 MOVE                             R14 R5
      129 MOVE                             R15 R0
      130 MOVE                             R16 R3
      131 CALL                             R9 7 0
      132 GETUPVAL                         R9 6
      133 CALL                             R9 0 1
      134 MOVE                             R11 R8
      135 NAMECALL                         R9 R9 K30 ["addText"]
      137 CALL                             R9 2 1
      138 LOADB                            R11 1
      139 NAMECALL                         R9 R9 K31 ["setError"]
      141 CALL                             R9 2 1
      142 NAMECALL                         R9 R9 K32 ["build"]
      144 CALL                             R9 1 -1
      145 RETURN                           R9 -1
      146 GETTABLEKS                       R9 R1 K9 ["attachedImageUri"]
      148 JUMPIF                           R9 ; [+2]
      149 LOADNIL                          R8
      150 JUMP                             ; [+6]
      151 GETUPVAL                         R10 7
      152 GETTABLEKS                       R10 R10 K35 ["getImage"]
      154 MOVE                             R11 R9
      155 CALL                             R10 1 1
      156 MOVE                             R8 R10
      157 DUPTABLE                         R9 K47 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "generationStage", "startTime", "onChipClicked", "retryInfo", "generationId"}]
      158 GETUPVAL                         R10 4
      159 GETTABLEKS                       R10 R10 K16 ["Type"]
      161 SETTABLEKS                       R10 R9 K11 ["type"]
      163 GETUPVAL                         R10 4
      164 GETTABLEKS                       R10 R10 K17 ["Modes"]
      166 GETTABLEKS                       R10 R10 K48 ["ShowPreview"]
      168 SETTABLEKS                       R10 R9 K12 ["mode"]
      170 LOADB                            R10 0
      171 SETTABLEKS                       R10 R9 K36 ["expanded"]
      173 SETTABLEKS                       R4 R9 K37 ["name"]
      175 LENGTH                           R11 R4
      176 LOADN                            R12 0
      177 JUMPIFNOTLT                      R12 R11 ; [+3]
      179 MOVE                             R10 R4
      180 JUMP                             ; [+6]
      181 GETUPVAL                         R10 5
      182 LOADK                            R12 K19 ["PrimitiveGen"]
      183 LOADK                            R13 K49 ["DefaultDisplayName"]
      184 NAMECALL                         R10 R10 K28 ["getText"]
      186 CALL                             R10 3 1
      187 SETTABLEKS                       R10 R9 K38 ["displayName"]
      189 LOADNIL                          R10
      190 SETTABLEKS                       R10 R9 K39 ["className"]
      192 LOADNIL                          R10
      193 SETTABLEKS                       R10 R9 K40 ["previewImages"]
      195 GETUPVAL                         R10 8
      196 GETTABLEKS                       R10 R10 K50 ["Generating"]
      198 SETTABLEKS                       R10 R9 K41 ["previewState"]
      200 GETUPVAL                         R10 9
      201 GETTABLEKS                       R10 R10 K51 ["Submitting"]
      203 SETTABLEKS                       R10 R9 K42 ["generationStage"]
      205 GETIMPORT                        R10 K54 [os.clock]
      207 CALL                             R10 0 1
      208 SETTABLEKS                       R10 R9 K43 ["startTime"]
      210 LOADNIL                          R10
      211 SETTABLEKS                       R10 R9 K44 ["onChipClicked"]
      213 LOADNIL                          R10
      214 SETTABLEKS                       R10 R9 K45 ["retryInfo"]
      216 LOADK                            R10 K0 [""]
      217 SETTABLEKS                       R10 R9 K46 ["generationId"]
      219 GETTABLEKS                       R10 R3 K29 ["replaceContent"]
      221 MOVE                             R11 R9
      222 CALL                             R10 1 0
      223 JUMPIFNOT                        R8 ; [+3]
      224 GETTABLEKS                       R10 R8 K55 ["data"]
      226 JUMP                             ; [+1]
      227 LOADNIL                          R10
      228 LOADK                            R11 K0 [""]
      229 GETUPVAL                         R12 3
      230 CALL                             R12 0 1
      231 JUMPIFNOT                        R12 ; [+62]
      232 LOADB                            R12 0
      233 GETIMPORT                        R13 K57 [pcall]
      235 NEWCLOSURE                       R14 P0
      236 CAPTURE                          UPVAL U10
      237 CAPTURE                          VAL R4
      238 CAPTURE                          VAL R10
      239 CALL                             R13 1 2
      240 MOVE                             R12 R13
      241 MOVE                             R11 R14
      242 JUMPIF                           R12 ; [+91]
      243 GETTABLEKS                       R13 R0 K58 ["toolArgs"]
      245 GETTABLEKS                       R13 R13 K59 ["environment"]
      247 GETTABLEKS                       R13 R13 K60 ["EventLogger"]
      249 GETTABLEKS                       R13 R13 K61 ["logPrimitiveGen"]
      251 GETTABLEKS                       R14 R3 K62 ["setPreviewState"]
      253 GETUPVAL                         R15 8
      254 GETTABLEKS                       R15 R15 K63 ["Failed"]
      256 MOVE                             R16 R11
      257 CALL                             R14 2 0
      258 MOVE                             R14 R13
      259 GETUPVAL                         R15 11
      260 MOVE                             R16 R5
      261 DUPTABLE                         R17 K65 [{"success", "errorMessage"}]
      262 LOADB                            R18 0
      263 SETTABLEKS                       R18 R17 K64 ["success"]
      265 FASTCALL1                        TOSTRING R11 ; [+3]
      266 MOVE                             R19 R11
      267 GETIMPORT                        R18 K67 [tostring]
      269 CALL                             R18 1 1
      270 SETTABLEKS                       R18 R17 K14 ["errorMessage"]
      272 CALL                             R15 2 -1
      273 CALL                             R14 -1 0
      274 GETUPVAL                         R14 6
      275 CALL                             R14 0 1
      276 LOADK                            R17 K68 ["Failed to submit generation job: %*"]
      277 MOVE                             R19 R11
      278 NAMECALL                         R17 R17 K25 ["format"]
      280 CALL                             R17 2 1
      281 MOVE                             R16 R17
      282 NAMECALL                         R14 R14 K30 ["addText"]
      284 CALL                             R14 2 1
      285 LOADB                            R16 1
      286 NAMECALL                         R14 R14 K31 ["setError"]
      288 CALL                             R14 2 1
      289 NAMECALL                         R14 R14 K32 ["build"]
      291 CALL                             R14 1 -1
      292 RETURN                           R14 -1
      293 JUMP                             ; [+40]
      294 GETUPVAL                         R12 12
      295 MOVE                             R13 R4
      296 MOVE                             R14 R10
      297 CALL                             R12 2 1
      298 GETTABLEKS                       R13 R12 K46 ["generationId"]
      300 JUMPIFNOTEQKS                    R13 K0 [""] ; [+31]
      302 GETTABLEKS                       R14 R12 K70 ["errorType"]
      304 ORK                              R13 R14 K69 ["General"]
      305 GETTABLEKS                       R15 R12 K14 ["errorMessage"]
      307 ORK                              R14 R15 K71 ["Unknown error"]
      308 GETGLOBAL                        R15 K33 ["reportGenerationError"]
      310 MOVE                             R16 R13
      311 MOVE                             R17 R14
      312 LOADNIL                          R18
      313 MOVE                             R19 R4
      314 MOVE                             R20 R5
      315 MOVE                             R21 R0
      316 MOVE                             R22 R3
      317 CALL                             R15 7 0
      318 GETUPVAL                         R15 6
      319 CALL                             R15 0 1
      320 MOVE                             R17 R14
      321 NAMECALL                         R15 R15 K30 ["addText"]
      323 CALL                             R15 2 1
      324 LOADB                            R17 1
      325 NAMECALL                         R15 R15 K31 ["setError"]
      327 CALL                             R15 2 1
      328 NAMECALL                         R15 R15 K32 ["build"]
      330 CALL                             R15 1 -1
      331 RETURN                           R15 -1
      332 GETTABLEKS                       R11 R12 K46 ["generationId"]
      334 SETTABLEKS                       R11 R5 K46 ["generationId"]
      336 GETUPVAL                         R12 2
      337 GETTABLEKS                       R12 R12 K72 ["setJob"]
      339 MOVE                             R13 R11
      340 DUPTABLE                         R14 K76 [{"generationId", "status", "prompt", "imageUri", "logs"}]
      341 SETTABLEKS                       R11 R14 K46 ["generationId"]
      343 GETUPVAL                         R15 13
      344 GETTABLEKS                       R15 R15 K77 ["Submitted"]
      346 SETTABLEKS                       R15 R14 K73 ["status"]
      348 SETTABLEKS                       R4 R14 K1 ["prompt"]
      350 GETTABLEKS                       R15 R1 K9 ["attachedImageUri"]
      352 SETTABLEKS                       R15 R14 K74 ["imageUri"]
      354 NEWTABLE                         R15 0 0
      356 SETTABLEKS                       R15 R14 K75 ["logs"]
      358 CALL                             R12 2 0
      359 GETUPVAL                         R12 2
      360 GETTABLEKS                       R12 R12 K78 ["appendLog"]
      362 MOVE                             R13 R11
      363 LOADK                            R15 K79 ["Job submitted with prompt: \"%*\", image: \"%*\", imageMimeType: \"%*\""]
      364 MOVE                             R17 R4
      365 JUMPIFNOT                        R8 ; [+3]
      366 GETTABLEKS                       R18 R8 K55 ["data"]
      368 JUMPIF                           R18 ; [+1]
      369 LOADK                            R18 K80 ["nil"]
      370 JUMPIFNOT                        R8 ; [+3]
      371 GETTABLEKS                       R19 R8 K81 ["mimeType"]
      373 JUMPIF                           R19 ; [+1]
      374 LOADK                            R19 K80 ["nil"]
      375 NAMECALL                         R15 R15 K25 ["format"]
      377 CALL                             R15 4 1
      378 MOVE                             R14 R15
      379 CALL                             R12 2 0
      380 GETIMPORT                        R12 K84 [task.spawn]
      382 GETUPVAL                         R13 14
      383 MOVE                             R14 R0
      384 MOVE                             R15 R11
      385 MOVE                             R16 R4
      386 MOVE                             R17 R5
      387 MOVE                             R18 R3
      388 MOVE                             R19 R2
      389 CALL                             R12 7 0
      390 GETUPVAL                         R12 6
      391 CALL                             R12 0 1
      392 LOADK                            R15 K85 ["Generation job submitted successfully. Generation ID: %*"]
      393 MOVE                             R17 R11
      394 NAMECALL                         R15 R15 K25 ["format"]
      396 CALL                             R15 2 1
      397 MOVE                             R14 R15
      398 NAMECALL                         R12 R12 K30 ["addText"]
      400 CALL                             R12 2 1
      401 NAMECALL                         R12 R12 K32 ["build"]
      403 CALL                             R12 1 -1
      404 RETURN                           R12 -1

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
        1 LOADNIL                          R4
        2 SETTABLEKS                       R4 R3 K0 ["uiMessageId"]
        4 SETTABLEKS                       R0 R3 K1 ["uiContentId"]
        6 LOADNIL                          R4
        7 SETTABLEKS                       R4 R3 K2 ["messageGuid"]
        9 LOADNIL                          R4
       10 SETTABLEKS                       R4 R3 K3 ["sessionId"]
       12 LOADB                            R4 0
       13 SETTABLEKS                       R4 R3 K4 ["isThirdPartyRequest"]
       15 DUPTABLE                         R4 K7 [{"handlerArgs"}]
       16 GETIMPORT                        R5 K10 [table.clone]
       18 MOVE                             R6 R3
       19 CALL                             R5 1 1
       20 SETTABLEKS                       R5 R4 K6 ["handlerArgs"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K11 ["createGuestContext"]
       25 GETUPVAL                         R6 1
       26 MOVE                             R7 R4
       27 GETUPVAL                         R8 2
       28 LOADNIL                          R9
       29 CALL                             R5 4 1
       30 MOVE                             R2 R5
       31 GETTABLEKS                       R3 R2 K12 ["bridge"]
       33 GETTABLEKS                       R3 R3 K13 ["listenToLinkChanges"]
       35 DUPTABLE                         R4 K16 [{"generationId", "name"}]
       36 GETTABLEKS                       R5 R1 K14 ["generationId"]
       38 SETTABLEKS                       R5 R4 K14 ["generationId"]
       40 GETTABLEKS                       R5 R1 K17 ["displayName"]
       42 SETTABLEKS                       R5 R4 K15 ["name"]
       44 CALL                             R3 1 0
       45 RETURN                           R0 0

PROTO_54:
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

PROTO_55:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R0 K0 ["Creates procedural 3D objects from primitive parts with configurable attributes. Supports reference images."]
        4 RETURN                           R0 1
        5 LOADK                            R0 K1 ["Generates editable 3D objects with parts. Best for scenery and a blocky look."]
        6 RETURN                           R0 1

PROTO_56:
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

PROTO_57:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["Modes"]
        9 GETTABLEKS                       R1 R1 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_58:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["PrimitiveGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_59:
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
       33 GETUPVAL                         R7 7
       34 CALL                             R7 0 1
       35 JUMPIFNOT                        R7 ; [+2]
       36 LOADK                            R6 K5 ["Creates 3D objects built from primitive parts (blocks, spheres, cylinders, wedges) as a ProceduralModel with configurable attributes.\nUse this tool when the user wants to:\n- Create or build a 3D object, model, character, creature, vehicle, building, scenery, or any physical thing in the workspace\n- Generate something from a reference image\n- Create an object with tunable parameters (e.g. \"add attributes to control head size, arm length, color\")\n- Build anything described as \"procedural\", \"parametric\", \"configurable\", or \"with attributes\"\n\nThe output is a ProceduralModel: a scripted model whose appearance is controlled by user-editable attributes (like size, color, proportions). The user can tweak these attributes after generation without regenerating.\n\nThe tool automatically inserts the generated model into the workspace. You do not need to run any code afterward.\n"]
       37 JUMP                             ; [+1]
       38 LOADK                            R6 K6 ["ONLY call this tool when the user EXPLICITLY requests to create something using primitive shapes, blocks, or geometric parts.\nTrigger phrases include: \"make with primitives\", \"using primitive shapes\", \"with blocks\", \"using parts\", \"geometric shapes\", \"build with cubes/spheres/cylinders\", \"primitive model\".\nDO NOT use this tool for generic requests like \"make a car\" or \"create a house\" - only use it when primitives are specifically requested.\nIf the user has provided a reference image, pass the image URI to this tool using the attachedImageUri parameter.\nThe tool will automatically add the generated code to the user's workspace, so you do not need to do anything to run the code.\n"]
       39 NAMECALL                         R4 R4 K7 ["setDescription"]
       41 CALL                             R4 2 1
       42 LOADK                            R6 K8 ["prompt"]
       43 DUPTABLE                         R7 K11 [{"type", "description"}]
       44 LOADK                            R8 K12 ["string"]
       45 SETTABLEKS                       R8 R7 K9 ["type"]
       47 GETUPVAL                         R9 7
       48 CALL                             R9 0 1
       49 JUMPIFNOT                        R9 ; [+2]
       50 LOADK                            R8 K13 ["A text description of what to create and what attributes to expose.\nPass the user's own words. If they mention specific configurable properties (e.g. \"head size\", \"arm length\", \"wheel count\"), include those in the prompt so the generated model exposes them as editable attributes.\nIf an image is attached and the user gave no text description, pass an empty string.\nDo NOT describe or interpret the attached image — only pass the user's own words.\n"]
       51 JUMP                             ; [+1]
       52 LOADK                            R8 K14 ["The user's EXACT text description of what to create. \nCRITICAL: Do NOT describe or interpret the attached image. Do NOT generate your own description.\n- Only use the user's own words, never your interpretation of the image.\n"]
       53 SETTABLEKS                       R8 R7 K10 ["description"]
       55 NAMECALL                         R4 R4 K15 ["addArgument"]
       57 CALL                             R4 3 1
       58 LOADK                            R6 K16 ["attachedImageUri"]
       59 DUPTABLE                         R7 K11 [{"type", "description"}]
       60 LOADK                            R8 K12 ["string"]
       61 SETTABLEKS                       R8 R7 K9 ["type"]
       63 GETUPVAL                         R9 7
       64 CALL                             R9 0 1
       65 JUMPIFNOT                        R9 ; [+2]
       66 LOADK                            R8 K17 ["The image URI (IMAGEID_<id>) from the user's attached image. Always pass this when the user provides a reference image."]
       67 JUMP                             ; [+1]
       68 LOADK                            R8 K18 ["The image URI (IMAGEID_<id>) referencing the attached image from user input."]
       69 SETTABLEKS                       R8 R7 K10 ["description"]
       71 NAMECALL                         R4 R4 K19 ["addOptionalArgument"]
       73 CALL                             R4 3 1
       74 MOVE                             R6 R3
       75 NAMECALL                         R4 R4 K20 ["setHandler"]
       77 CALL                             R4 2 1
       78 DUPTABLE                         R6 K26 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       79 LOADK                            R7 K27 ["Primitive Generation"]
       80 SETTABLEKS                       R7 R6 K21 ["title"]
       82 LOADB                            R7 0
       83 SETTABLEKS                       R7 R6 K22 ["readOnlyHint"]
       85 LOADB                            R7 0
       86 SETTABLEKS                       R7 R6 K23 ["destructiveHint"]
       88 LOADB                            R7 0
       89 SETTABLEKS                       R7 R6 K24 ["idempotentHint"]
       91 LOADB                            R7 0
       92 SETTABLEKS                       R7 R6 K25 ["openWorldHint"]
       94 NAMECALL                         R4 R4 K28 ["setAnnotations"]
       96 CALL                             R4 2 1
       97 NAMECALL                         R4 R4 K29 ["build"]
       99 CALL                             R4 1 1
      100 DUPTABLE                         R5 K33 [{"command", "getDescription", "mapToToolCall"}]
      101 GETUPVAL                         R7 8
      102 CALL                             R7 0 1
      103 JUMPIFNOT                        R7 ; [+4]
      104 GETUPVAL                         R6 6
      105 GETTABLEKS                       R6 R6 K3 ["PrimitiveGen"]
      107 JUMP                             ; [+1]
      108 LOADK                            R6 K34 ["primitive"]
      109 SETTABLEKS                       R6 R5 K30 ["command"]
      111 DUPCLOSURE                       R6 K35 [PROTO_55]
      112 CAPTURE                          UPVAL U7
      113 SETTABLEKS                       R6 R5 K31 ["getDescription"]
      115 DUPCLOSURE                       R6 K36 [PROTO_56]
      116 CAPTURE                          UPVAL U6
      117 SETTABLEKS                       R6 R5 K32 ["mapToToolCall"]
      119 DUPTABLE                         R6 K38 [{"transformInitialContent"}]
      120 DUPCLOSURE                       R7 K39 [PROTO_57]
      121 CAPTURE                          UPVAL U3
      122 SETTABLEKS                       R7 R6 K37 ["transformInitialContent"]
      124 DUPTABLE                         R7 K46 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "displayNameFunction", "toolCallOptions"}]
      125 SETTABLEKS                       R4 R7 K40 ["definition"]
      127 NEWTABLE                         R8 0 1
      129 MOVE                             R9 R5
      130 SETLIST                          R8 R9 1 [1]
      132 SETTABLEKS                       R8 R7 K41 ["slashCommands"]
      134 NEWTABLE                         R8 0 1
      136 GETUPVAL                         R9 3
      137 SETLIST                          R8 R9 1 [1]
      139 SETTABLEKS                       R8 R7 K42 ["contentWidgets"]
      141 SETTABLEKS                       R6 R7 K43 ["streamTransform"]
      143 DUPCLOSURE                       R8 K47 [PROTO_58]
      144 CAPTURE                          UPVAL U9
      145 SETTABLEKS                       R8 R7 K44 ["displayNameFunction"]
      147 DUPTABLE                         R8 K49 [{"resetTimeoutOnProgress"}]
      148 LOADB                            R9 1
      149 SETTABLEKS                       R9 R8 K48 ["resetTimeoutOnProgress"]
      151 SETTABLEKS                       R8 R7 K45 ["toolCallOptions"]
      153 RETURN                           R7 1

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
       86 GETTABLEKS                       R12 R0 K14 ["Util"]
       88 GETTABLEKS                       R12 R12 K22 ["Serializer"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K9 [require]
       93 GETTABLEKS                       R13 R0 K23 ["Tools"]
       95 GETTABLEKS                       R13 R13 K24 ["ToolTypes"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K9 [require]
      100 GETTABLEKS                       R14 R0 K14 ["Util"]
      102 GETTABLEKS                       R14 R14 K25 ["ToolUtils"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K9 [require]
      107 GETTABLEKS                       R15 R0 K26 ["Resources"]
      109 GETTABLEKS                       R15 R15 K27 ["Localization"]
      111 GETTABLEKS                       R15 R15 K28 ["Translator"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K9 [require]
      116 GETTABLEKS                       R16 R0 K29 ["Types"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K1 [script]
      121 LOADK                            R18 K30 ["PrimitiveGen"]
      122 NAMECALL                         R16 R16 K3 ["FindFirstAncestor"]
      124 CALL                             R16 2 1
      125 GETIMPORT                        R17 K9 [require]
      127 GETTABLEKS                       R18 R16 K31 ["PrimitiveGenContentWidget"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K9 [require]
      132 GETTABLEKS                       R19 R0 K32 ["Features"]
      134 GETTABLEKS                       R19 R19 K33 ["Gen3dUtils"]
      136 GETTABLEKS                       R19 R19 K34 ["Gen3dConstants"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K9 [require]
      141 GETTABLEKS                       R20 R0 K35 ["Flags"]
      143 GETTABLEKS                       R20 R20 K36 ["FFlagAssistantMultipleChatPersistence"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K9 [require]
      148 GETTABLEKS                       R21 R0 K35 ["Flags"]
      150 GETTABLEKS                       R21 R21 K37 ["FFlagDebugMockPrimitiveGenBackend"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K9 [require]
      155 GETTABLEKS                       R22 R0 K35 ["Flags"]
      157 GETTABLEKS                       R22 R22 K38 ["FFlagDisablePrimGenNewImageFromBackend"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K9 [require]
      162 GETTABLEKS                       R23 R0 K35 ["Flags"]
      164 GETTABLEKS                       R23 R23 K39 ["FFlagPrimGenAllowReInsert"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K9 [require]
      169 GETTABLEKS                       R24 R0 K35 ["Flags"]
      171 GETTABLEKS                       R24 R24 K40 ["FFlagPrimGenErrorInfo"]
      173 CALL                             R23 1 1
      174 GETIMPORT                        R24 K9 [require]
      176 GETTABLEKS                       R25 R0 K35 ["Flags"]
      178 GETTABLEKS                       R25 R25 K41 ["FFlagPrimGenFetchPreviewFromBackend"]
      180 CALL                             R24 1 1
      181 GETIMPORT                        R25 K9 [require]
      183 GETTABLEKS                       R26 R0 K35 ["Flags"]
      185 GETTABLEKS                       R26 R26 K42 ["FFlagPrimGenRetryInPlayTest"]
      187 CALL                             R25 1 1
      188 GETIMPORT                        R26 K9 [require]
      190 GETTABLEKS                       R27 R0 K35 ["Flags"]
      192 GETTABLEKS                       R27 R27 K43 ["FFlagRefinePrimGenDesc"]
      194 CALL                             R26 1 1
      195 GETIMPORT                        R27 K9 [require]
      197 GETTABLEKS                       R28 R0 K35 ["Flags"]
      199 GETTABLEKS                       R28 R28 K44 ["FFlagRenameGenerateCommands"]
      201 CALL                             R27 1 1
      202 GETIMPORT                        R28 K9 [require]
      204 GETTABLEKS                       R29 R0 K35 ["Flags"]
      206 GETTABLEKS                       R29 R29 K45 ["FFlagRevertGenerationErrorRefine"]
      208 CALL                             R28 1 1
      209 GETIMPORT                        R29 K9 [require]
      211 GETTABLEKS                       R30 R0 K35 ["Flags"]
      213 GETTABLEKS                       R30 R30 K46 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      215 CALL                             R29 1 1
      216 GETIMPORT                        R30 K9 [require]
      218 GETTABLEKS                       R31 R0 K35 ["Flags"]
      220 GETTABLEKS                       R31 R31 K47 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      222 CALL                             R30 1 1
      223 GETIMPORT                        R31 K9 [require]
      225 GETTABLEKS                       R32 R0 K35 ["Flags"]
      227 GETTABLEKS                       R32 R32 K48 ["FStringMCPAssistantPrimitiveGenServerURL"]
      229 CALL                             R31 1 1
      230 GETTABLEKS                       R32 R17 K49 ["PreviewState"]
      232 GETTABLEKS                       R33 R6 K14 ["Util"]
      234 GETTABLEKS                       R33 R33 K50 ["ToolResult"]
      236 GETTABLEKS                       R34 R6 K51 ["Json"]
      238 GETTABLEKS                       R35 R2 K52 ["Dictionary"]
      240 GETTABLEKS                       R35 R35 K53 ["join"]
      242 GETTABLEKS                       R36 R6 K14 ["Util"]
      244 GETTABLEKS                       R36 R36 K54 ["ToolBuilder"]
      246 GETTABLEKS                       R37 R12 K55 ["ToolNames"]
      248 MOVE                             R39 R21
      249 CALL                             R39 0 1
      250 JUMPIF                           R39 ; [+2]
      251 LOADN                            R38 5
      252 JUMP                             ; [+2]
      253 GETTABLEKS                       R38 R18 K56 ["PREVIEW_IMAGE_COUNT"]
      255 DUPTABLE                         R39 K61 [{"Submitting", "ResolvingDependencies", "DownloadingScript", "Inserting"}]
      256 LOADK                            R42 K30 ["PrimitiveGen"]
      257 LOADK                            R43 K62 ["StageSubmitting"]
      258 NAMECALL                         R40 R14 K63 ["getText"]
      260 CALL                             R40 3 1
      261 SETTABLEKS                       R40 R39 K57 ["Submitting"]
      263 LOADK                            R42 K30 ["PrimitiveGen"]
      264 LOADK                            R43 K64 ["StageResolvingDependencies"]
      265 NAMECALL                         R40 R14 K63 ["getText"]
      267 CALL                             R40 3 1
      268 SETTABLEKS                       R40 R39 K58 ["ResolvingDependencies"]
      270 LOADK                            R42 K30 ["PrimitiveGen"]
      271 LOADK                            R43 K65 ["StageDownloadingScript"]
      272 NAMECALL                         R40 R14 K63 ["getText"]
      274 CALL                             R40 3 1
      275 SETTABLEKS                       R40 R39 K59 ["DownloadingScript"]
      277 LOADK                            R42 K30 ["PrimitiveGen"]
      278 LOADK                            R43 K66 ["StageInserting"]
      279 NAMECALL                         R40 R14 K63 ["getText"]
      281 CALL                             R40 3 1
      282 SETTABLEKS                       R40 R39 K60 ["Inserting"]
      284 DUPTABLE                         R40 K69 [{"WorkflowFailure", "ModerationFailure"}]
      285 LOADK                            R41 K70 ["Workflow Failure"]
      286 SETTABLEKS                       R41 R40 K67 ["WorkflowFailure"]
      288 LOADK                            R41 K71 ["Moderation Failure"]
      289 SETTABLEKS                       R41 R40 K68 ["ModerationFailure"]
      291 DUPTABLE                         R41 K75 [{"Success", "Cancelled", "Failed"}]
      292 LOADK                            R42 K76 ["success"]
      293 SETTABLEKS                       R42 R41 K72 ["Success"]
      295 LOADK                            R42 K77 ["cancelled"]
      296 SETTABLEKS                       R42 R41 K73 ["Cancelled"]
      298 LOADK                            R42 K78 ["failed"]
      299 SETTABLEKS                       R42 R41 K74 ["Failed"]
      301 DUPCLOSURE                       R42 K79 [PROTO_0]
      302 CAPTURE                          VAL R3
      303 DUPTABLE                         R43 K80 [{"Success", "Failed"}]
      304 LOADK                            R44 K76 ["success"]
      305 SETTABLEKS                       R44 R43 K72 ["Success"]
      307 LOADK                            R44 K78 ["failed"]
      308 SETTABLEKS                       R44 R43 K74 ["Failed"]
      310 DUPCLOSURE                       R44 K81 [PROTO_1]
      311 DUPCLOSURE                       R45 K82 [PROTO_2]
      312 CAPTURE                          VAL R5
      313 DUPCLOSURE                       R46 K83 [PROTO_4]
      314 DUPCLOSURE                       R47 K84 [PROTO_5]
      315 DUPCLOSURE                       R48 K85 [PROTO_6]
      316 CAPTURE                          VAL R23
      317 CAPTURE                          VAL R34
      318 CAPTURE                          VAL R13
      319 DUPCLOSURE                       R49 K86 [PROTO_7]
      320 CAPTURE                          VAL R31
      321 CAPTURE                          VAL R3
      322 DUPCLOSURE                       R50 K87 [PROTO_8]
      323 CAPTURE                          VAL R31
      324 CAPTURE                          VAL R3
      325 DUPCLOSURE                       R51 K88 [PROTO_22]
      326 CAPTURE                          VAL R19
      327 CAPTURE                          VAL R17
      328 CAPTURE                          VAL R38
      329 CAPTURE                          VAL R25
      330 CAPTURE                          VAL R22
      331 CAPTURE                          VAL R39
      332 CAPTURE                          VAL R32
      333 DUPCLOSURE                       R52 K89 [PROTO_23]
      334 CAPTURE                          VAL R1
      335 CAPTURE                          VAL R4
      336 CAPTURE                          VAL R31
      337 CAPTURE                          VAL R3
      338 CAPTURE                          VAL R35
      339 CAPTURE                          VAL R49
      340 DUPCLOSURE                       R53 K90 [PROTO_24]
      341 CAPTURE                          VAL R20
      342 CAPTURE                          VAL R3
      343 CAPTURE                          VAL R52
      344 CAPTURE                          VAL R48
      345 DUPCLOSURE                       R54 K91 [PROTO_26]
      346 CAPTURE                          VAL R20
      347 CAPTURE                          VAL R3
      348 CAPTURE                          VAL R52
      349 CAPTURE                          VAL R48
      350 DUPCLOSURE                       R55 K92 [PROTO_28]
      351 CAPTURE                          VAL R3
      352 CAPTURE                          VAL R31
      353 CAPTURE                          VAL R49
      354 CAPTURE                          VAL R41
      355 CAPTURE                          VAL R28
      356 CAPTURE                          VAL R9
      357 CAPTURE                          VAL R48
      358 CAPTURE                          VAL R13
      359 CAPTURE                          VAL R47
      360 CAPTURE                          VAL R24
      361 CAPTURE                          VAL R10
      362 CAPTURE                          VAL R30
      363 DUPCLOSURE                       R56 K93 [PROTO_29]
      364 CAPTURE                          VAL R3
      365 CAPTURE                          VAL R34
      366 DUPCLOSURE                       R57 K94 [PROTO_31]
      367 CAPTURE                          VAL R3
      368 CAPTURE                          VAL R48
      369 DUPCLOSURE                       R58 K95 [PROTO_32]
      370 CAPTURE                          VAL R41
      371 CAPTURE                          VAL R20
      372 CAPTURE                          VAL R3
      373 CAPTURE                          VAL R55
      374 CAPTURE                          VAL R28
      375 CAPTURE                          VAL R39
      376 CAPTURE                          VAL R57
      377 CAPTURE                          VAL R47
      378 CAPTURE                          VAL R56
      379 DUPCLOSURE                       R59 K96 [PROTO_34]
      380 CAPTURE                          VAL R43
      381 GETTABLEKS                       R60 R9 K97 ["JobStatus"]
      383 DUPCLOSURE                       R61 K98 [PROTO_35]
      384 CAPTURE                          VAL R9
      385 CAPTURE                          VAL R60
      386 CAPTURE                          VAL R35
      387 SETGLOBAL                        R61 K99 ["reportGenerationError"]
      389 DUPCLOSURE                       R61 K100 [PROTO_45]
      390 CAPTURE                          VAL R9
      391 CAPTURE                          VAL R60
      392 CAPTURE                          VAL R13
      393 CAPTURE                          VAL R58
      394 CAPTURE                          VAL R28
      395 CAPTURE                          VAL R32
      396 CAPTURE                          VAL R35
      397 CAPTURE                          VAL R41
      398 CAPTURE                          VAL R24
      399 CAPTURE                          VAL R21
      400 CAPTURE                          VAL R10
      401 CAPTURE                          VAL R39
      402 CAPTURE                          VAL R59
      403 CAPTURE                          VAL R43
      404 CAPTURE                          VAL R22
      405 CAPTURE                          VAL R17
      406 CAPTURE                          VAL R14
      407 CAPTURE                          VAL R25
      408 DUPCLOSURE                       R62 K101 [PROTO_47]
      409 CAPTURE                          VAL R51
      410 CAPTURE                          VAL R29
      411 CAPTURE                          VAL R9
      412 CAPTURE                          VAL R28
      413 CAPTURE                          VAL R17
      414 CAPTURE                          VAL R14
      415 CAPTURE                          VAL R33
      416 CAPTURE                          VAL R5
      417 CAPTURE                          VAL R32
      418 CAPTURE                          VAL R39
      419 CAPTURE                          VAL R53
      420 CAPTURE                          VAL R35
      421 CAPTURE                          VAL R54
      422 CAPTURE                          VAL R60
      423 CAPTURE                          VAL R61
      424 DUPCLOSURE                       R63 K102 [PROTO_50]
      425 CAPTURE                          VAL R51
      426 DUPCLOSURE                       R64 K103 [PROTO_51]
      427 CAPTURE                          VAL R51
      428 DUPTABLE                         R65 K106 [{"updateContentHeader", "setPreviewImage"}]
      429 SETTABLEKS                       R63 R65 K104 ["updateContentHeader"]
      431 SETTABLEKS                       R64 R65 K105 ["setPreviewImage"]
      433 DUPCLOSURE                       R66 K107 [PROTO_59]
      434 CAPTURE                          VAL R7
      435 CAPTURE                          VAL R19
      436 CAPTURE                          VAL R11
      437 CAPTURE                          VAL R17
      438 CAPTURE                          VAL R62
      439 CAPTURE                          VAL R36
      440 CAPTURE                          VAL R37
      441 CAPTURE                          VAL R26
      442 CAPTURE                          VAL R27
      443 CAPTURE                          VAL R14
      444 DUPTABLE                         R67 K110 [{"bridge", "setupGuest"}]
      445 SETTABLEKS                       R65 R67 K108 ["bridge"]
      447 SETTABLEKS                       R66 R67 K109 ["setupGuest"]
      449 RETURN                           R67 1
