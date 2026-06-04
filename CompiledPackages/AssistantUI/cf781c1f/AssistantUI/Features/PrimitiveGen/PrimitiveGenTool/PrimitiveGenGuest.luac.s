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
        5 LOADN                            R3 5
        6 LOADK                            R4 K4 [""]
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 SETTABLEKS                       R1 R0 K0 ["previewImages"]
       11 FASTCALL2K                       ASSERT R1 K5 ; [+5]
       13 MOVE                             R3 R1
       14 LOADK                            R4 K5 ["previewImages should be initialized"]
       15 GETIMPORT                        R2 K7 [assert]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 0
       19 GETUPVAL                         R3 1
       20 SETTABLE                         R3 R1 R2
       21 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R3 0
        1 LOADN                            R4 1
        2 JUMPIFNOTLE                      R4 R0 ; [+6]
        4 LOADN                            R4 5
        5 JUMPIFLE                         R0 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K0 ; [+4]
       11 LOADK                            R4 K0 ["Index out of bounds for preview images"]
       12 GETIMPORT                        R2 K2 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 0
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

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
       16 CAPTURE                          VAL R2
       17 NEWCLOSURE                       R7 P5
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U5
       23 DUPTABLE                         R8 K8 [{"updateWidget", "replaceContent", "setPreviewState", "setPreviewImage", "setGenerationError", "setGenerationStage"}]
       24 SETTABLEKS                       R2 R8 K2 ["updateWidget"]
       26 SETTABLEKS                       R3 R8 K3 ["replaceContent"]
       28 SETTABLEKS                       R4 R8 K4 ["setPreviewState"]
       30 SETTABLEKS                       R6 R8 K5 ["setPreviewImage"]
       32 SETTABLEKS                       R5 R8 K6 ["setGenerationError"]
       34 SETTABLEKS                       R7 R8 K7 ["setGenerationStage"]
       36 RETURN                           R8 1

PROTO_23:
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

PROTO_24:
        0 JUMPIFNOT                        R1 ; [+10]
        1 GETUPVAL                         R2 0
        2 GETIMPORT                        R4 K2 [buffer.fromstring]
        4 GETTABLEKS                       R5 R1 K3 ["data"]
        6 CALL                             R4 1 -1
        7 NAMECALL                         R2 R2 K4 ["Base64Decode"]
        9 CALL                             R2 -1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K5 ["new"]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R5 2
       17 CALL                             R5 0 1
       18 JUMPIFEQKS                       R5 K6 [""] ; [+3]
       20 MOVE                             R4 R5
       21 JUMP                             ; [+11]
       22 LOADK                            R6 K7 ["%*/cube-generation-gateway/api/v1/primitive-generations"]
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R8 R8 K8 ["get"]
       26 CALL                             R8 0 1
       27 GETTABLEKS                       R8 R8 K9 ["apisUrl"]
       29 NAMECALL                         R6 R6 K10 ["format"]
       31 CALL                             R6 2 1
       32 MOVE                             R4 R6
       33 LOADB                            R7 1
       34 NAMECALL                         R5 R3 K11 ["forceMultipart"]
       36 CALL                             R5 2 0
       37 LOADK                            R7 K12 ["TextPrompt"]
       38 MOVE                             R8 R0
       39 NAMECALL                         R5 R3 K13 ["addField"]
       41 CALL                             R5 3 0
       42 GETUPVAL                         R5 4
       43 CALL                             R5 0 1
       44 JUMPIFNOT                        R5 ; [+36]
       45 JUMPIFNOT                        R1 ; [+47]
       46 JUMPIFNOT                        R2 ; [+46]
       47 GETTABLEKS                       R5 R1 K14 ["mimeType"]
       49 JUMPIFEQKS                       R5 K15 ["image/jpeg"] ; [+3]
       51 JUMPIFNOTEQKS                    R5 K16 ["image/jpg"] ; [+3]
       53 LOADK                            R6 K17 ["image.jpg"]
       54 JUMP                             ; [+14]
       55 JUMPIFNOTEQKS                    R5 K18 ["image/png"] ; [+3]
       57 LOADK                            R6 K19 ["image.png"]
       58 JUMP                             ; [+10]
       59 GETIMPORT                        R7 K21 [error]
       61 LOADK                            R9 K22 ["Unsupported PrimitiveGen image MIME type: %*"]
       62 MOVE                             R11 R5
       63 NAMECALL                         R9 R9 K10 ["format"]
       65 CALL                             R9 2 1
       66 MOVE                             R8 R9
       67 CALL                             R7 1 0
       68 LOADNIL                          R6
       69 LOADK                            R9 K23 ["Image"]
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R10 R10 K24 ["file"]
       73 MOVE                             R11 R6
       74 MOVE                             R12 R2
       75 MOVE                             R13 R5
       76 CALL                             R10 3 -1
       77 NAMECALL                         R7 R3 K25 ["addFile"]
       79 CALL                             R7 -1 0
       80 JUMP                             ; [+12]
       81 JUMPIFNOT                        R2 ; [+11]
       82 LOADK                            R7 K23 ["Image"]
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R8 R8 K24 ["file"]
       86 LOADK                            R9 K19 ["image.png"]
       87 MOVE                             R10 R2
       88 LOADK                            R11 K18 ["image/png"]
       89 CALL                             R8 3 -1
       90 NAMECALL                         R5 R3 K25 ["addFile"]
       92 CALL                             R5 -1 0
       93 MOVE                             R7 R4
       94 LOADK                            R8 K26 ["POST"]
       95 NAMECALL                         R5 R3 K27 ["buildRequest"]
       97 CALL                             R5 3 1
       98 GETUPVAL                         R6 5
       99 GETTABLEKS                       R7 R5 K28 ["Headers"]
      101 GETUPVAL                         R8 6
      102 CALL                             R8 0 1
      103 CALL                             R6 2 1
      104 SETTABLEKS                       R6 R5 K28 ["Headers"]
      106 RETURN                           R5 1

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
       32 JUMPIFNOTLT                      R7 R9 ; [+276]
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
       51 JUMPIF                           R9 ; [+18]
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
       66 LOADK                            R12 K16 ["General"]
       67 SETTABLEKS                       R12 R11 K12 ["errorType"]
       69 RETURN                           R11 1
       70 GETTABLEKS                       R11 R10 K17 ["Success"]
       72 JUMPIF                           R11 ; [+77]
       73 GETUPVAL                         R11 4
       74 GETTABLEKS                       R11 R11 K18 ["appendLog"]
       76 MOVE                             R12 R0
       77 LOADK                            R14 K19 ["Error while polling job status:%*"]
       78 GETTABLEKS                       R16 R10 K20 ["Body"]
       80 NAMECALL                         R14 R14 K5 ["format"]
       82 CALL                             R14 2 1
       83 MOVE                             R13 R14
       84 CALL                             R11 2 0
       85 GETUPVAL                         R11 5
       86 MOVE                             R12 R10
       87 LOADK                            R14 K21 ["pollJobStatus error (statusCode=%*), jobId=%*"]
       88 GETTABLEKS                       R16 R10 K22 ["StatusCode"]
       90 MOVE                             R17 R0
       91 NAMECALL                         R14 R14 K5 ["format"]
       93 CALL                             R14 3 1
       94 MOVE                             R13 R14
       95 CALL                             R11 2 1
       96 LOADK                            R12 K16 ["General"]
       97 GETIMPORT                        R13 K25 [string.lower]
       99 GETTABLEKS                       R15 R11 K26 ["developerMessage"]
      101 ORK                              R14 R15 K2 [""]
      102 CALL                             R13 1 1
      103 LOADNIL                          R14
      104 GETIMPORT                        R15 K28 [string.find]
      106 MOVE                             R16 R13
      107 LOADK                            R17 K29 ["moderation"]
      108 CALL                             R15 2 1
      109 JUMPIF                           R15 ; [+6]
      110 GETIMPORT                        R15 K28 [string.find]
      112 MOVE                             R16 R13
      113 LOADK                            R17 K30 ["moderated"]
      114 CALL                             R15 2 1
      115 JUMPIFNOT                        R15 ; [+9]
      116 LOADK                            R12 K31 ["ModerationFailed"]
      117 LOADK                            R15 K32 ["Error while polling job status: (code 0001) id=%*"]
      118 GETTABLEKS                       R17 R11 K33 ["primitiveGenerationId"]
      120 NAMECALL                         R15 R15 K5 ["format"]
      122 CALL                             R15 2 1
      123 MOVE                             R14 R15
      124 JUMP                             ; [+14]
      125 LOADK                            R15 K34 ["Error while polling job status: status=%* message=%* id=%*"]
      126 GETTABLEKS                       R17 R10 K22 ["StatusCode"]
      128 GETUPVAL                         R18 6
      129 GETTABLEKS                       R18 R18 K35 ["toString"]
      131 MOVE                             R19 R11
      132 CALL                             R18 1 1
      133 GETTABLEKS                       R19 R11 K33 ["primitiveGenerationId"]
      135 NAMECALL                         R15 R15 K5 ["format"]
      137 CALL                             R15 4 1
      138 MOVE                             R14 R15
      139 DUPTABLE                         R15 K13 [{"status", "errorText", "errorType"}]
      140 GETUPVAL                         R16 3
      141 GETTABLEKS                       R16 R16 K14 ["Failed"]
      143 SETTABLEKS                       R16 R15 K6 ["status"]
      145 SETTABLEKS                       R14 R15 K11 ["errorText"]
      147 SETTABLEKS                       R12 R15 K12 ["errorType"]
      149 RETURN                           R15 1
      150 GETUPVAL                         R11 5
      151 MOVE                             R12 R10
      152 LOADK                            R14 K36 ["pollJobStatus (statusCode=%*), jobId=%*"]
      153 GETTABLEKS                       R16 R10 K22 ["StatusCode"]
      155 MOVE                             R17 R0
      156 NAMECALL                         R14 R14 K5 ["format"]
      158 CALL                             R14 3 1
      159 MOVE                             R13 R14
      160 CALL                             R11 2 1
      161 GETTABLEKS                       R12 R11 K37 ["currentStage"]
      163 GETTABLEKS                       R14 R11 K6 ["status"]
      165 ORK                              R13 R14 K38 ["unknown"]
      166 JUMPIFNOT                        R3 ; [+5]
      167 MOVE                             R14 R3
      168 ADDK                             R15 R7 K39 [1]
      169 MOVE                             R16 R13
      170 MOVE                             R17 R12
      171 CALL                             R14 3 0
      172 JUMPIFNOT                        R2 ; [+7]
      173 JUMPIFNOT                        R12 ; [+6]
      174 JUMPIFEQ                         R12 R8 ; [+5]
      176 MOVE                             R8 R12
      177 MOVE                             R14 R2
      178 MOVE                             R15 R12
      179 CALL                             R14 1 0
      180 GETIMPORT                        R15 K25 [string.lower]
      182 MOVE                             R16 R13
      183 CALL                             R15 1 1
      184 GETIMPORT                        R16 K25 [string.lower]
      186 LOADK                            R17 K40 ["failed"]
      187 CALL                             R16 1 1
      188 JUMPIFEQ                         R15 R16 ; [+2]
      190 LOADB                            R14 0 +1
      191 LOADB                            R14 1
      192 JUMPIFNOT                        R14 ; [+12]
      193 GETUPVAL                         R14 7
      194 LOADK                            R16 K41 ["Job failed with status: %* and stage: %*, generationId=%*"]
      195 MOVE                             R18 R13
      196 GETTABLEKS                       R19 R11 K37 ["currentStage"]
      198 MOVE                             R20 R0
      199 NAMECALL                         R16 R16 K5 ["format"]
      201 CALL                             R16 4 1
      202 MOVE                             R15 R16
      203 CALL                             R14 1 -1
      204 RETURN                           R14 -1
      205 GETIMPORT                        R15 K25 [string.lower]
      207 MOVE                             R16 R13
      208 CALL                             R15 1 1
      209 GETIMPORT                        R16 K25 [string.lower]
      211 LOADK                            R17 K42 ["completed"]
      212 CALL                             R16 1 1
      213 JUMPIFEQ                         R15 R16 ; [+2]
      215 LOADB                            R14 0 +1
      216 LOADB                            R14 1
      217 JUMPIFNOT                        R14 ; [+73]
      218 GETTABLEKS                       R16 R11 K43 ["result"]
      220 FASTCALL1                        TYPE R16 ; [+2]
      221 GETIMPORT                        R15 K45 [type]
      223 CALL                             R15 1 1
      224 JUMPIFNOTEQKS                    R15 K46 ["table"] ; [+4]
      226 GETTABLEKS                       R14 R11 K43 ["result"]
      228 JUMP                             ; [+2]
      229 NEWTABLE                         R14 0 0
      231 GETUPVAL                         R15 4
      232 GETTABLEKS                       R15 R15 K18 ["appendLog"]
      234 MOVE                             R16 R0
      235 LOADK                            R18 K47 ["Polling job resultData:%*"]
      236 GETUPVAL                         R20 6
      237 GETTABLEKS                       R20 R20 K35 ["toString"]
      239 MOVE                             R21 R14
      240 CALL                             R20 1 1
      241 NAMECALL                         R18 R18 K5 ["format"]
      243 CALL                             R18 2 1
      244 MOVE                             R17 R18
      245 CALL                             R15 2 0
      246 GETTABLEKS                       R15 R14 K48 ["script"]
      248 JUMPIFNOT                        R15 ; [+2]
      249 JUMPIFNOTEQKS                    R15 K2 [""] ; [+15]
      251 GETUPVAL                         R16 7
      252 LOADK                            R18 K49 ["No script URL found in completed job response: %*, generationId=%*"]
      253 GETUPVAL                         R20 6
      254 GETTABLEKS                       R20 R20 K35 ["toString"]
      256 MOVE                             R21 R14
      257 CALL                             R20 1 1
      258 MOVE                             R21 R0
      259 NAMECALL                         R18 R18 K5 ["format"]
      261 CALL                             R18 3 1
      262 MOVE                             R17 R18
      263 CALL                             R16 1 -1
      264 RETURN                           R16 -1
      265 GETTABLEKS                       R16 R14 K50 ["dependencyVersion"]
      267 GETTABLEKS                       R17 R14 K51 ["dependencies"]
      269 GETUPVAL                         R18 8
      270 GETTABLEKS                       R18 R18 K52 ["parseScriptPreviewS3Urls"]
      272 MOVE                             R19 R14
      273 CALL                             R18 1 1
      274 DUPTABLE                         R19 K55 [{"status", "currentStage", "scriptUrl", "dependencyVersion", "dependencies", "scriptPreviewS3Urls"}]
      275 GETUPVAL                         R20 3
      276 GETTABLEKS                       R20 R20 K17 ["Success"]
      278 SETTABLEKS                       R20 R19 K6 ["status"]
      280 SETTABLEKS                       R12 R19 K37 ["currentStage"]
      282 SETTABLEKS                       R15 R19 K53 ["scriptUrl"]
      284 SETTABLEKS                       R16 R19 K50 ["dependencyVersion"]
      286 SETTABLEKS                       R17 R19 K51 ["dependencies"]
      288 SETTABLEKS                       R18 R19 K54 ["scriptPreviewS3Urls"]
      290 RETURN                           R19 1
      291 MOVE                             R14 R1
      292 CALL                             R14 0 1
      293 JUMPIFNOT                        R14 ; [+7]
      294 DUPTABLE                         R14 K7 [{"status"}]
      295 GETUPVAL                         R15 3
      296 GETTABLEKS                       R15 R15 K8 ["Cancelled"]
      298 SETTABLEKS                       R15 R14 K6 ["status"]
      300 RETURN                           R14 1
      301 ADDK                             R7 R7 K39 [1]
      302 GETIMPORT                        R14 K58 [task.wait]
      304 GETUPVAL                         R16 9
      305 CALL                             R16 0 1
      306 DIVK                             R15 R16 K59 [1000]
      307 CALL                             R14 1 0
      308 JUMPBACK                         ; [-278]
      309 DUPTABLE                         R9 K13 [{"status", "errorText", "errorType"}]
      310 GETUPVAL                         R10 3
      311 GETTABLEKS                       R10 R10 K14 ["Failed"]
      313 SETTABLEKS                       R10 R9 K6 ["status"]
      315 LOADK                            R11 K60 ["Polling timed out after %* attempts, generationId=%*"]
      316 LOADN                            R13 44
      317 MOVE                             R14 R0
      318 NAMECALL                         R11 R11 K5 ["format"]
      320 CALL                             R11 3 1
      321 MOVE                             R10 R11
      322 SETTABLEKS                       R10 R9 K11 ["errorText"]
      324 LOADK                            R10 K16 ["General"]
      325 SETTABLEKS                       R10 R9 K12 ["errorType"]
      327 RETURN                           R9 1

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
      104 GETUPVAL                         R2 9
      105 CALL                             R2 0 1
      106 JUMPIFNOT                        R2 ; [+33]
      107 DUPTABLE                         R2 K24 [{"description", "onRetryText", "onRetryClick"}]
      108 GETUPVAL                         R3 12
      109 LOADK                            R5 K25 ["PrimitiveGen"]
      110 LOADK                            R6 K26 ["InsertionFailedRetryPrompt"]
      111 NAMECALL                         R3 R3 K27 ["getText"]
      113 CALL                             R3 3 1
      114 SETTABLEKS                       R3 R2 K21 ["description"]
      116 GETUPVAL                         R3 12
      117 LOADK                            R5 K25 ["PrimitiveGen"]
      118 LOADK                            R6 K28 ["RetryYes"]
      119 NAMECALL                         R3 R3 K27 ["getText"]
      121 CALL                             R3 3 1
      122 SETTABLEKS                       R3 R2 K22 ["onRetryText"]
      124 NEWCLOSURE                       R3 P2
      125 CAPTURE                          UPVAL U13
      126 SETTABLEKS                       R3 R2 K23 ["onRetryClick"]
      128 GETGLOBAL                        R3 K29 ["reportGenerationError"]
      130 LOADK                            R4 K30 ["General"]
      131 MOVE                             R5 R1
      132 GETUPVAL                         R6 1
      133 GETUPVAL                         R7 17
      134 GETUPVAL                         R8 16
      135 GETUPVAL                         R9 6
      136 GETUPVAL                         R10 3
      137 MOVE                             R11 R2
      138 CALL                             R3 8 0
      139 RETURN                           R0 0
      140 GETGLOBAL                        R2 K29 ["reportGenerationError"]
      142 LOADK                            R3 K30 ["General"]
      143 MOVE                             R4 R1
      144 GETUPVAL                         R5 1
      145 GETUPVAL                         R6 17
      146 GETUPVAL                         R7 16
      147 GETUPVAL                         R8 6
      148 GETUPVAL                         R9 3
      149 CALL                             R2 7 0
      150 RETURN                           R0 0

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
       30 JUMPIF                           R8 ; [+15]
       31 GETGLOBAL                        R10 K8 ["reportGenerationError"]
       33 LOADK                            R11 K9 ["General"]
       34 FASTCALL1                        TOSTRING R9 ; [+3]
       35 MOVE                             R13 R9
       36 GETIMPORT                        R12 K11 [tostring]
       38 CALL                             R12 1 1
       39 MOVE                             R13 R1
       40 MOVE                             R14 R2
       41 MOVE                             R15 R3
       42 MOVE                             R16 R0
       43 MOVE                             R17 R4
       44 CALL                             R10 7 0
       45 RETURN                           R0 0
       46 GETTABLEKS                       R10 R9 K12 ["status"]
       48 GETUPVAL                         R11 4
       49 GETTABLEKS                       R11 R11 K13 ["Failed"]
       51 JUMPIFNOTEQ                      R10 R11 ; [+14]
       53 GETGLOBAL                        R10 K8 ["reportGenerationError"]
       55 GETTABLEKS                       R11 R9 K14 ["errorType"]
       57 GETTABLEKS                       R12 R9 K15 ["errorText"]
       59 MOVE                             R13 R1
       60 MOVE                             R14 R2
       61 MOVE                             R15 R3
       62 MOVE                             R16 R0
       63 MOVE                             R17 R4
       64 CALL                             R10 7 0
       65 RETURN                           R0 0
       66 GETTABLEKS                       R10 R9 K12 ["status"]
       68 GETUPVAL                         R11 4
       69 GETTABLEKS                       R11 R11 K16 ["Cancelled"]
       71 JUMPIFNOTEQ                      R10 R11 ; [+28]
       73 GETUPVAL                         R10 0
       74 GETTABLEKS                       R10 R10 K4 ["updateJobStatus"]
       76 MOVE                             R11 R1
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R12 R12 K16 ["Cancelled"]
       80 CALL                             R10 2 0
       81 GETTABLEKS                       R10 R4 K17 ["setPreviewState"]
       83 GETUPVAL                         R11 5
       84 GETTABLEKS                       R11 R11 K16 ["Cancelled"]
       86 CALL                             R10 1 0
       87 MOVE                             R10 R6
       88 GETUPVAL                         R11 6
       89 MOVE                             R12 R3
       90 DUPTABLE                         R13 K20 [{"success", "errorMessage"}]
       91 LOADB                            R14 0
       92 SETTABLEKS                       R14 R13 K18 ["success"]
       94 LOADK                            R14 K21 ["Generation cancelled by user"]
       95 SETTABLEKS                       R14 R13 K19 ["errorMessage"]
       97 CALL                             R11 2 -1
       98 CALL                             R10 -1 0
       99 RETURN                           R0 0
      100 GETTABLEKS                       R10 R9 K12 ["status"]
      102 GETUPVAL                         R11 4
      103 GETTABLEKS                       R11 R11 K22 ["Success"]
      105 JUMPIFNOTEQ                      R10 R11 ; [+34]
      107 GETTABLEKS                       R10 R9 K23 ["scriptPreviewS3Urls"]
      109 JUMPIFNOT                        R10 ; [+30]
      110 GETTABLEKS                       R11 R9 K23 ["scriptPreviewS3Urls"]
      112 LENGTH                           R10 R11
      113 LOADN                            R11 0
      114 JUMPIFNOTLT                      R11 R10 ; [+25]
      116 GETTABLEKS                       R10 R9 K23 ["scriptPreviewS3Urls"]
      118 GETIMPORT                        R11 K26 [table.create]
      120 LENGTH                           R12 R10
      121 CALL                             R11 1 1
      122 LENGTH                           R14 R10
      123 LOADN                            R12 1
      124 LOADN                            R13 255
      125 FORNPREP                         R12
      126 GETTABLE                         R17 R10 R14
      127 FASTCALL2                        TABLE_INSERT R11 R17 ; [+4]
      129 MOVE                             R16 R11
      130 GETIMPORT                        R15 K28 [table.insert]
      132 CALL                             R15 2 0
      133 FORNLOOP                         R12
      134 GETUPVAL                         R12 7
      135 GETTABLEKS                       R12 R12 K29 ["fetchPreviewImages"]
      137 MOVE                             R13 R11
      138 MOVE                             R14 R4
      139 CALL                             R12 2 0
      140 LOADNIL                          R10
      141 NEWCLOSURE                       R11 P2
      142 CAPTURE                          UPVAL U0
      143 CAPTURE                          VAL R1
      144 CAPTURE                          UPVAL U1
      145 CAPTURE                          VAL R4
      146 CAPTURE                          UPVAL U8
      147 CAPTURE                          UPVAL U9
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R9
      150 CAPTURE                          UPVAL U10
      151 CAPTURE                          UPVAL U11
      152 CAPTURE                          UPVAL U12
      153 CAPTURE                          UPVAL U5
      154 CAPTURE                          UPVAL U13
      155 CAPTURE                          REF R10
      156 CAPTURE                          VAL R6
      157 CAPTURE                          UPVAL U6
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R2
      160 MOVE                             R10 R11
      161 GETUPVAL                         R12 14
      162 CALL                             R12 0 1
      163 JUMPIFNOT                        R12 ; [+69]
      164 GETTABLEKS                       R12 R0 K0 ["toolArgs"]
      166 GETTABLEKS                       R12 R12 K1 ["environment"]
      168 GETTABLEKS                       R12 R12 K30 ["getStudioPlayState"]
      170 CALL                             R12 0 1
      171 JUMPIFNOT                        R12 ; [+61]
      172 GETUPVAL                         R13 0
      173 GETTABLEKS                       R13 R13 K4 ["updateJobStatus"]
      175 MOVE                             R14 R1
      176 GETUPVAL                         R15 1
      177 GETTABLEKS                       R15 R15 K16 ["Cancelled"]
      179 CALL                             R13 2 0
      180 LOADNIL                          R13
      181 DUPTABLE                         R14 K35 [{"description", "onRetryText", "onRetryClick", "isRunning"}]
      182 GETUPVAL                         R15 13
      183 LOADK                            R17 K36 ["PrimitiveGen"]
      184 LOADK                            R18 K37 ["GenerationCancelledPlayModeRetryPrompt"]
      185 NAMECALL                         R15 R15 K38 ["getText"]
      187 CALL                             R15 3 1
      188 SETTABLEKS                       R15 R14 K31 ["description"]
      190 GETUPVAL                         R15 13
      191 LOADK                            R17 K36 ["PrimitiveGen"]
      192 LOADK                            R18 K39 ["RetryYes"]
      193 NAMECALL                         R15 R15 K38 ["getText"]
      195 CALL                             R15 3 1
      196 SETTABLEKS                       R15 R14 K32 ["onRetryText"]
      198 NEWCLOSURE                       R15 P3
      199 CAPTURE                          VAL R0
      200 CAPTURE                          REF R13
      201 CAPTURE                          VAL R4
      202 CAPTURE                          UPVAL U5
      203 CAPTURE                          REF R10
      204 SETTABLEKS                       R15 R14 K33 ["onRetryClick"]
      206 LOADB                            R15 0
      207 SETTABLEKS                       R15 R14 K34 ["isRunning"]
      209 MOVE                             R13 R14
      210 GETTABLEKS                       R14 R4 K17 ["setPreviewState"]
      212 GETUPVAL                         R15 5
      213 GETTABLEKS                       R15 R15 K13 ["Failed"]
      215 LOADK                            R16 K40 [""]
      216 MOVE                             R17 R13
      217 CALL                             R14 3 0
      218 MOVE                             R14 R6
      219 GETUPVAL                         R15 6
      220 MOVE                             R16 R3
      221 DUPTABLE                         R17 K20 [{"success", "errorMessage"}]
      222 LOADB                            R18 0
      223 SETTABLEKS                       R18 R17 K18 ["success"]
      225 LOADK                            R18 K41 ["Generation cancelled (Studio left edit mode)"]
      226 SETTABLEKS                       R18 R17 K19 ["errorMessage"]
      228 CALL                             R15 2 -1
      229 CALL                             R14 -1 0
      230 CLOSEUPVALS                      R10
      231 RETURN                           R0 0
      232 CLOSEUPVALS                      R13
      233 MOVE                             R12 R10
      234 CALL                             R12 0 0
      235 CLOSEUPVALS                      R10
      236 RETURN                           R0 0

PROTO_46:
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
       37 JUMPIFNOTLE                      R6 R7 ; [+46]
       39 GETUPVAL                         R8 3
       40 LOADK                            R10 K11 ["PrimitiveGen"]
       41 LOADK                            R11 K12 ["MaxConcurrentJobsError"]
       42 DUPTABLE                         R12 K15 [{"activeCount", "maxConcurrentJobs"}]
       43 GETIMPORT                        R13 K18 [string.format]
       45 LOADK                            R14 K19 ["%d"]
       46 MOVE                             R15 R7
       47 CALL                             R13 2 1
       48 SETTABLEKS                       R13 R12 K13 ["activeCount"]
       50 GETIMPORT                        R13 K18 [string.format]
       52 LOADK                            R14 K19 ["%d"]
       53 MOVE                             R15 R6
       54 CALL                             R13 2 1
       55 SETTABLEKS                       R13 R12 K14 ["maxConcurrentJobs"]
       57 NAMECALL                         R8 R8 K20 ["getText"]
       59 CALL                             R8 4 1
       60 GETGLOBAL                        R9 K21 ["reportGenerationError"]
       62 LOADK                            R10 K22 ["TooManyRequests"]
       63 MOVE                             R11 R8
       64 LOADNIL                          R12
       65 MOVE                             R13 R4
       66 MOVE                             R14 R5
       67 MOVE                             R15 R0
       68 MOVE                             R16 R3
       69 CALL                             R9 7 0
       70 GETUPVAL                         R9 4
       71 CALL                             R9 0 1
       72 MOVE                             R11 R8
       73 NAMECALL                         R9 R9 K23 ["addText"]
       75 CALL                             R9 2 1
       76 LOADB                            R11 1
       77 NAMECALL                         R9 R9 K24 ["setError"]
       79 CALL                             R9 2 1
       80 NAMECALL                         R9 R9 K25 ["build"]
       82 CALL                             R9 1 -1
       83 RETURN                           R9 -1
       84 GETTABLEKS                       R9 R1 K9 ["attachedImageUri"]
       86 JUMPIF                           R9 ; [+2]
       87 LOADNIL                          R8
       88 JUMP                             ; [+6]
       89 GETUPVAL                         R10 5
       90 GETTABLEKS                       R10 R10 K26 ["getImage"]
       92 MOVE                             R11 R9
       93 CALL                             R10 1 1
       94 MOVE                             R8 R10
       95 DUPTABLE                         R9 K40 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "generationStage", "startTime", "onChipClicked", "retryInfo", "generationId"}]
       96 GETUPVAL                         R10 6
       97 GETTABLEKS                       R10 R10 K41 ["Type"]
       99 SETTABLEKS                       R10 R9 K27 ["type"]
      101 GETUPVAL                         R10 6
      102 GETTABLEKS                       R10 R10 K42 ["Modes"]
      104 GETTABLEKS                       R10 R10 K43 ["ShowPreview"]
      106 SETTABLEKS                       R10 R9 K28 ["mode"]
      108 LOADB                            R10 0
      109 SETTABLEKS                       R10 R9 K29 ["expanded"]
      111 SETTABLEKS                       R4 R9 K30 ["name"]
      113 LENGTH                           R11 R4
      114 LOADN                            R12 0
      115 JUMPIFNOTLT                      R12 R11 ; [+3]
      117 MOVE                             R10 R4
      118 JUMP                             ; [+6]
      119 GETUPVAL                         R10 3
      120 LOADK                            R12 K11 ["PrimitiveGen"]
      121 LOADK                            R13 K44 ["DefaultDisplayName"]
      122 NAMECALL                         R10 R10 K20 ["getText"]
      124 CALL                             R10 3 1
      125 SETTABLEKS                       R10 R9 K31 ["displayName"]
      127 LOADNIL                          R10
      128 SETTABLEKS                       R10 R9 K32 ["className"]
      130 LOADNIL                          R10
      131 SETTABLEKS                       R10 R9 K33 ["previewImages"]
      133 GETUPVAL                         R10 7
      134 GETTABLEKS                       R10 R10 K45 ["Generating"]
      136 SETTABLEKS                       R10 R9 K34 ["previewState"]
      138 GETUPVAL                         R10 8
      139 GETTABLEKS                       R10 R10 K46 ["Submitting"]
      141 SETTABLEKS                       R10 R9 K35 ["generationStage"]
      143 GETIMPORT                        R10 K49 [os.clock]
      145 CALL                             R10 0 1
      146 SETTABLEKS                       R10 R9 K36 ["startTime"]
      148 LOADNIL                          R10
      149 SETTABLEKS                       R10 R9 K37 ["onChipClicked"]
      151 LOADNIL                          R10
      152 SETTABLEKS                       R10 R9 K38 ["retryInfo"]
      154 LOADK                            R10 K0 [""]
      155 SETTABLEKS                       R10 R9 K39 ["generationId"]
      157 GETTABLEKS                       R10 R3 K50 ["replaceContent"]
      159 MOVE                             R11 R9
      160 CALL                             R10 1 0
      161 LOADK                            R10 K0 [""]
      162 GETUPVAL                         R11 9
      163 MOVE                             R12 R4
      164 MOVE                             R13 R8
      165 CALL                             R11 2 1
      166 GETTABLEKS                       R12 R11 K39 ["generationId"]
      168 JUMPIFNOTEQKS                    R12 K0 [""] ; [+31]
      170 GETTABLEKS                       R13 R11 K52 ["errorType"]
      172 ORK                              R12 R13 K51 ["General"]
      173 GETTABLEKS                       R14 R11 K54 ["errorMessage"]
      175 ORK                              R13 R14 K53 ["Unknown error"]
      176 GETGLOBAL                        R14 K21 ["reportGenerationError"]
      178 MOVE                             R15 R12
      179 MOVE                             R16 R13
      180 LOADNIL                          R17
      181 MOVE                             R18 R4
      182 MOVE                             R19 R5
      183 MOVE                             R20 R0
      184 MOVE                             R21 R3
      185 CALL                             R14 7 0
      186 GETUPVAL                         R14 4
      187 CALL                             R14 0 1
      188 MOVE                             R16 R13
      189 NAMECALL                         R14 R14 K23 ["addText"]
      191 CALL                             R14 2 1
      192 LOADB                            R16 1
      193 NAMECALL                         R14 R14 K24 ["setError"]
      195 CALL                             R14 2 1
      196 NAMECALL                         R14 R14 K25 ["build"]
      198 CALL                             R14 1 -1
      199 RETURN                           R14 -1
      200 GETTABLEKS                       R10 R11 K39 ["generationId"]
      202 SETTABLEKS                       R10 R5 K39 ["generationId"]
      204 GETUPVAL                         R12 2
      205 GETTABLEKS                       R12 R12 K55 ["setJob"]
      207 MOVE                             R13 R10
      208 DUPTABLE                         R14 K59 [{"generationId", "status", "prompt", "imageUri", "logs"}]
      209 SETTABLEKS                       R10 R14 K39 ["generationId"]
      211 GETUPVAL                         R15 10
      212 GETTABLEKS                       R15 R15 K60 ["Submitted"]
      214 SETTABLEKS                       R15 R14 K56 ["status"]
      216 SETTABLEKS                       R4 R14 K1 ["prompt"]
      218 GETTABLEKS                       R15 R1 K9 ["attachedImageUri"]
      220 SETTABLEKS                       R15 R14 K57 ["imageUri"]
      222 NEWTABLE                         R15 0 0
      224 SETTABLEKS                       R15 R14 K58 ["logs"]
      226 CALL                             R12 2 0
      227 GETUPVAL                         R12 2
      228 GETTABLEKS                       R12 R12 K61 ["appendLog"]
      230 MOVE                             R13 R10
      231 LOADK                            R15 K62 ["Job submitted with prompt: \"%*\", image: \"%*\", imageMimeType: \"%*\""]
      232 MOVE                             R17 R4
      233 JUMPIFNOT                        R8 ; [+3]
      234 GETTABLEKS                       R18 R8 K63 ["data"]
      236 JUMPIF                           R18 ; [+1]
      237 LOADK                            R18 K64 ["nil"]
      238 JUMPIFNOT                        R8 ; [+3]
      239 GETTABLEKS                       R19 R8 K65 ["mimeType"]
      241 JUMPIF                           R19 ; [+1]
      242 LOADK                            R19 K64 ["nil"]
      243 NAMECALL                         R15 R15 K17 ["format"]
      245 CALL                             R15 4 1
      246 MOVE                             R14 R15
      247 CALL                             R12 2 0
      248 GETIMPORT                        R12 K68 [task.spawn]
      250 GETUPVAL                         R13 11
      251 MOVE                             R14 R0
      252 MOVE                             R15 R10
      253 MOVE                             R16 R4
      254 MOVE                             R17 R5
      255 MOVE                             R18 R3
      256 MOVE                             R19 R2
      257 CALL                             R12 7 0
      258 GETUPVAL                         R12 4
      259 CALL                             R12 0 1
      260 LOADK                            R15 K69 ["Generation job submitted successfully. Generation ID: %*"]
      261 MOVE                             R17 R10
      262 NAMECALL                         R15 R15 K17 ["format"]
      264 CALL                             R15 2 1
      265 MOVE                             R14 R15
      266 NAMECALL                         R12 R12 K23 ["addText"]
      268 CALL                             R12 2 1
      269 NAMECALL                         R12 R12 K25 ["build"]
      271 CALL                             R12 1 -1
      272 RETURN                           R12 -1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["selectModel"]
        5 DUPTABLE                         R1 K3 [{"modelTag"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["modelTag"]
        9 SETTABLEKS                       R2 R1 K2 ["modelTag"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["updateWidget"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["setPreviewImage"]
        5 GETTABLEKS                       R4 R0 K1 ["index"]
        7 GETTABLEKS                       R5 R0 K2 ["image"]
        9 CALL                             R3 2 0
       10 RETURN                           R0 0

PROTO_51:
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

PROTO_52:
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
      101 GETUPVAL                         R6 6
      102 GETTABLEKS                       R6 R6 K3 ["PrimitiveGen"]
      104 SETTABLEKS                       R6 R5 K30 ["command"]
      106 DUPCLOSURE                       R6 K34 [PROTO_54]
      107 CAPTURE                          UPVAL U7
      108 SETTABLEKS                       R6 R5 K31 ["getDescription"]
      110 DUPCLOSURE                       R6 K35 [PROTO_55]
      111 CAPTURE                          UPVAL U6
      112 SETTABLEKS                       R6 R5 K32 ["mapToToolCall"]
      114 DUPTABLE                         R6 K37 [{"transformInitialContent"}]
      115 DUPCLOSURE                       R7 K38 [PROTO_56]
      116 CAPTURE                          UPVAL U3
      117 SETTABLEKS                       R7 R6 K36 ["transformInitialContent"]
      119 DUPTABLE                         R7 K45 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "displayNameFunction", "toolCallOptions"}]
      120 SETTABLEKS                       R4 R7 K39 ["definition"]
      122 NEWTABLE                         R8 0 1
      124 MOVE                             R9 R5
      125 SETLIST                          R8 R9 1 [1]
      127 SETTABLEKS                       R8 R7 K40 ["slashCommands"]
      129 NEWTABLE                         R8 0 1
      131 GETUPVAL                         R9 3
      132 SETLIST                          R8 R9 1 [1]
      134 SETTABLEKS                       R8 R7 K41 ["contentWidgets"]
      136 SETTABLEKS                       R6 R7 K42 ["streamTransform"]
      138 DUPCLOSURE                       R8 K46 [PROTO_57]
      139 CAPTURE                          UPVAL U8
      140 SETTABLEKS                       R8 R7 K43 ["displayNameFunction"]
      142 DUPTABLE                         R8 K48 [{"resetTimeoutOnProgress"}]
      143 LOADB                            R9 1
      144 SETTABLEKS                       R9 R8 K47 ["resetTimeoutOnProgress"]
      146 SETTABLEKS                       R8 R7 K44 ["toolCallOptions"]
      148 RETURN                           R7 1

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
      132 GETTABLEKS                       R19 R0 K32 ["Flags"]
      134 GETTABLEKS                       R19 R19 K33 ["FFlagAssistantMultipleChatPersistence"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K9 [require]
      139 GETTABLEKS                       R20 R0 K32 ["Flags"]
      141 GETTABLEKS                       R20 R20 K34 ["FFlagDebugMockPrimitiveGenBackend"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K9 [require]
      146 GETTABLEKS                       R21 R0 K32 ["Flags"]
      148 GETTABLEKS                       R21 R21 K35 ["FFlagPrimGenAllowReInsert"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K9 [require]
      153 GETTABLEKS                       R22 R0 K32 ["Flags"]
      155 GETTABLEKS                       R22 R22 K36 ["FFlagPrimGenAnnotateRightMimeType"]
      157 CALL                             R21 1 1
      158 GETIMPORT                        R22 K9 [require]
      160 GETTABLEKS                       R23 R0 K32 ["Flags"]
      162 GETTABLEKS                       R23 R23 K37 ["FFlagPrimGenRetryInPlayTest"]
      164 CALL                             R22 1 1
      165 GETIMPORT                        R23 K9 [require]
      167 GETTABLEKS                       R24 R0 K32 ["Flags"]
      169 GETTABLEKS                       R24 R24 K38 ["FFlagRefinePrimGenDesc"]
      171 CALL                             R23 1 1
      172 GETIMPORT                        R24 K9 [require]
      174 GETTABLEKS                       R25 R0 K32 ["Flags"]
      176 GETTABLEKS                       R25 R25 K39 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      178 CALL                             R24 1 1
      179 GETIMPORT                        R25 K9 [require]
      181 GETTABLEKS                       R26 R0 K32 ["Flags"]
      183 GETTABLEKS                       R26 R26 K40 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      185 CALL                             R25 1 1
      186 GETIMPORT                        R26 K9 [require]
      188 GETTABLEKS                       R27 R0 K32 ["Flags"]
      190 GETTABLEKS                       R27 R27 K41 ["FStringMCPAssistantPrimitiveGenServerURL"]
      192 CALL                             R26 1 1
      193 GETTABLEKS                       R27 R17 K42 ["PreviewState"]
      195 GETTABLEKS                       R28 R6 K14 ["Util"]
      197 GETTABLEKS                       R28 R28 K43 ["ToolResult"]
      199 GETTABLEKS                       R29 R6 K44 ["Json"]
      201 GETTABLEKS                       R30 R2 K45 ["Dictionary"]
      203 GETTABLEKS                       R30 R30 K46 ["join"]
      205 GETTABLEKS                       R31 R6 K14 ["Util"]
      207 GETTABLEKS                       R31 R31 K47 ["ToolBuilder"]
      209 GETTABLEKS                       R32 R12 K48 ["ToolNames"]
      211 DUPTABLE                         R33 K53 [{"Submitting", "ResolvingDependencies", "DownloadingScript", "Inserting"}]
      212 LOADK                            R36 K30 ["PrimitiveGen"]
      213 LOADK                            R37 K54 ["StageSubmitting"]
      214 NAMECALL                         R34 R14 K55 ["getText"]
      216 CALL                             R34 3 1
      217 SETTABLEKS                       R34 R33 K49 ["Submitting"]
      219 LOADK                            R36 K30 ["PrimitiveGen"]
      220 LOADK                            R37 K56 ["StageResolvingDependencies"]
      221 NAMECALL                         R34 R14 K55 ["getText"]
      223 CALL                             R34 3 1
      224 SETTABLEKS                       R34 R33 K50 ["ResolvingDependencies"]
      226 LOADK                            R36 K30 ["PrimitiveGen"]
      227 LOADK                            R37 K57 ["StageDownloadingScript"]
      228 NAMECALL                         R34 R14 K55 ["getText"]
      230 CALL                             R34 3 1
      231 SETTABLEKS                       R34 R33 K51 ["DownloadingScript"]
      233 LOADK                            R36 K30 ["PrimitiveGen"]
      234 LOADK                            R37 K58 ["StageInserting"]
      235 NAMECALL                         R34 R14 K55 ["getText"]
      237 CALL                             R34 3 1
      238 SETTABLEKS                       R34 R33 K52 ["Inserting"]
      240 DUPTABLE                         R34 K61 [{"WorkflowFailure", "ModerationFailure"}]
      241 LOADK                            R35 K62 ["Workflow Failure"]
      242 SETTABLEKS                       R35 R34 K59 ["WorkflowFailure"]
      244 LOADK                            R35 K63 ["Moderation Failure"]
      245 SETTABLEKS                       R35 R34 K60 ["ModerationFailure"]
      247 DUPTABLE                         R35 K67 [{"Success", "Cancelled", "Failed"}]
      248 LOADK                            R36 K68 ["success"]
      249 SETTABLEKS                       R36 R35 K64 ["Success"]
      251 LOADK                            R36 K69 ["cancelled"]
      252 SETTABLEKS                       R36 R35 K65 ["Cancelled"]
      254 LOADK                            R36 K70 ["failed"]
      255 SETTABLEKS                       R36 R35 K66 ["Failed"]
      257 DUPCLOSURE                       R36 K71 [PROTO_0]
      258 CAPTURE                          VAL R3
      259 DUPTABLE                         R37 K72 [{"Success", "Failed"}]
      260 LOADK                            R38 K68 ["success"]
      261 SETTABLEKS                       R38 R37 K64 ["Success"]
      263 LOADK                            R38 K70 ["failed"]
      264 SETTABLEKS                       R38 R37 K66 ["Failed"]
      266 DUPCLOSURE                       R38 K73 [PROTO_1]
      267 DUPCLOSURE                       R39 K74 [PROTO_2]
      268 CAPTURE                          VAL R5
      269 DUPCLOSURE                       R40 K75 [PROTO_4]
      270 DUPCLOSURE                       R41 K76 [PROTO_5]
      271 DUPCLOSURE                       R42 K77 [PROTO_6]
      272 CAPTURE                          VAL R13
      273 CAPTURE                          VAL R29
      274 DUPCLOSURE                       R43 K78 [PROTO_7]
      275 CAPTURE                          VAL R26
      276 CAPTURE                          VAL R3
      277 DUPCLOSURE                       R44 K79 [PROTO_8]
      278 CAPTURE                          VAL R26
      279 CAPTURE                          VAL R3
      280 DUPCLOSURE                       R45 K80 [PROTO_22]
      281 CAPTURE                          VAL R18
      282 CAPTURE                          VAL R17
      283 CAPTURE                          VAL R22
      284 CAPTURE                          VAL R20
      285 CAPTURE                          VAL R33
      286 CAPTURE                          VAL R27
      287 DUPCLOSURE                       R46 K81 [PROTO_23]
      288 DUPCLOSURE                       R47 K82 [PROTO_24]
      289 CAPTURE                          VAL R1
      290 CAPTURE                          VAL R4
      291 CAPTURE                          VAL R26
      292 CAPTURE                          VAL R3
      293 CAPTURE                          VAL R21
      294 CAPTURE                          VAL R30
      295 CAPTURE                          VAL R43
      296 DUPCLOSURE                       R48 K83 [PROTO_26]
      297 CAPTURE                          VAL R19
      298 CAPTURE                          VAL R3
      299 CAPTURE                          VAL R47
      300 CAPTURE                          VAL R42
      301 DUPCLOSURE                       R49 K84 [PROTO_28]
      302 CAPTURE                          VAL R3
      303 CAPTURE                          VAL R26
      304 CAPTURE                          VAL R43
      305 CAPTURE                          VAL R35
      306 CAPTURE                          VAL R9
      307 CAPTURE                          VAL R42
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R41
      310 CAPTURE                          VAL R10
      311 CAPTURE                          VAL R25
      312 DUPCLOSURE                       R50 K85 [PROTO_29]
      313 CAPTURE                          VAL R3
      314 CAPTURE                          VAL R29
      315 DUPCLOSURE                       R51 K86 [PROTO_31]
      316 CAPTURE                          VAL R3
      317 CAPTURE                          VAL R42
      318 DUPCLOSURE                       R52 K87 [PROTO_32]
      319 CAPTURE                          VAL R35
      320 CAPTURE                          VAL R19
      321 CAPTURE                          VAL R3
      322 CAPTURE                          VAL R49
      323 CAPTURE                          VAL R33
      324 CAPTURE                          VAL R51
      325 CAPTURE                          VAL R41
      326 CAPTURE                          VAL R50
      327 DUPCLOSURE                       R53 K88 [PROTO_34]
      328 CAPTURE                          VAL R37
      329 GETTABLEKS                       R54 R9 K89 ["JobStatus"]
      331 DUPCLOSURE                       R55 K90 [PROTO_35]
      332 CAPTURE                          VAL R9
      333 CAPTURE                          VAL R54
      334 CAPTURE                          VAL R30
      335 SETGLOBAL                        R55 K91 ["reportGenerationError"]
      337 DUPCLOSURE                       R55 K92 [PROTO_45]
      338 CAPTURE                          VAL R9
      339 CAPTURE                          VAL R54
      340 CAPTURE                          VAL R13
      341 CAPTURE                          VAL R52
      342 CAPTURE                          VAL R35
      343 CAPTURE                          VAL R27
      344 CAPTURE                          VAL R30
      345 CAPTURE                          VAL R10
      346 CAPTURE                          VAL R33
      347 CAPTURE                          VAL R53
      348 CAPTURE                          VAL R37
      349 CAPTURE                          VAL R20
      350 CAPTURE                          VAL R17
      351 CAPTURE                          VAL R14
      352 CAPTURE                          VAL R22
      353 DUPCLOSURE                       R56 K93 [PROTO_46]
      354 CAPTURE                          VAL R45
      355 CAPTURE                          VAL R24
      356 CAPTURE                          VAL R9
      357 CAPTURE                          VAL R14
      358 CAPTURE                          VAL R28
      359 CAPTURE                          VAL R5
      360 CAPTURE                          VAL R17
      361 CAPTURE                          VAL R27
      362 CAPTURE                          VAL R33
      363 CAPTURE                          VAL R48
      364 CAPTURE                          VAL R54
      365 CAPTURE                          VAL R55
      366 DUPCLOSURE                       R57 K94 [PROTO_49]
      367 CAPTURE                          VAL R45
      368 DUPCLOSURE                       R58 K95 [PROTO_50]
      369 CAPTURE                          VAL R45
      370 DUPTABLE                         R59 K98 [{"updateContentHeader", "setPreviewImage"}]
      371 SETTABLEKS                       R57 R59 K96 ["updateContentHeader"]
      373 SETTABLEKS                       R58 R59 K97 ["setPreviewImage"]
      375 DUPCLOSURE                       R60 K99 [PROTO_58]
      376 CAPTURE                          VAL R7
      377 CAPTURE                          VAL R18
      378 CAPTURE                          VAL R11
      379 CAPTURE                          VAL R17
      380 CAPTURE                          VAL R56
      381 CAPTURE                          VAL R31
      382 CAPTURE                          VAL R32
      383 CAPTURE                          VAL R23
      384 CAPTURE                          VAL R14
      385 DUPTABLE                         R61 K102 [{"bridge", "setupGuest"}]
      386 SETTABLEKS                       R59 R61 K100 ["bridge"]
      388 SETTABLEKS                       R60 R61 K101 ["setupGuest"]
      390 RETURN                           R61 1
