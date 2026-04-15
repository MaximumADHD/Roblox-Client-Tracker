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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["generationStage"]
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_18:
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
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R2
       15 NEWCLOSURE                       R6 P4
       16 CAPTURE                          VAL R2
       17 DUPTABLE                         R7 K7 [{"updateWidget", "replaceContent", "setPreviewState", "setPreviewImage", "setGenerationStage"}]
       18 SETTABLEKS                       R2 R7 K2 ["updateWidget"]
       20 SETTABLEKS                       R3 R7 K3 ["replaceContent"]
       22 SETTABLEKS                       R4 R7 K4 ["setPreviewState"]
       24 SETTABLEKS                       R5 R7 K5 ["setPreviewImage"]
       26 SETTABLEKS                       R6 R7 K6 ["setGenerationStage"]
       28 RETURN                           R7 1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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
       32 JUMPIFNOTLT                      R7 R9 ; [+227]
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
       51 JUMPIF                           R9 ; [+12]
       52 LOADK                            R12 K11 ["Sending HTTP request failed: %*, generationId=%*"]
       53 MOVE                             R14 R10
       54 MOVE                             R15 R0
       55 NAMECALL                         R12 R12 K5 ["format"]
       57 CALL                             R12 3 1
       58 MOVE                             R11 R12
       59 GETIMPORT                        R12 K13 [error]
       61 MOVE                             R13 R11
       62 LOADN                            R14 0
       63 CALL                             R12 2 0
       64 GETTABLEKS                       R11 R10 K14 ["Success"]
       66 JUMPIF                           R11 ; [+41]
       67 GETUPVAL                         R12 4
       68 GETTABLEKS                       R11 R12 K15 ["appendLog"]
       70 MOVE                             R12 R0
       71 LOADK                            R14 K16 ["Error while polling job status:%*"]
       72 GETTABLEKS                       R16 R10 K17 ["Body"]
       74 NAMECALL                         R14 R14 K5 ["format"]
       76 CALL                             R14 2 1
       77 MOVE                             R13 R14
       78 CALL                             R11 2 0
       79 GETUPVAL                         R11 5
       80 MOVE                             R12 R10
       81 LOADK                            R14 K18 ["pollJobStatus error (statusCode=%*), jobId=%*"]
       82 GETTABLEKS                       R16 R10 K19 ["StatusCode"]
       84 MOVE                             R17 R0
       85 NAMECALL                         R14 R14 K5 ["format"]
       87 CALL                             R14 3 1
       88 MOVE                             R13 R14
       89 CALL                             R11 2 1
       90 LOADK                            R13 K20 ["Error while polling job status: status=%* message=%*:%* id=%*"]
       91 GETTABLEKS                       R15 R10 K19 ["StatusCode"]
       93 GETTABLEKS                       R16 R11 K21 ["message"]
       95 GETTABLEKS                       R17 R11 K22 ["details"]
       97 GETTABLEKS                       R18 R11 K23 ["primitiveGenerationId"]
       99 NAMECALL                         R13 R13 K5 ["format"]
      101 CALL                             R13 5 1
      102 MOVE                             R12 R13
      103 GETIMPORT                        R13 K13 [error]
      105 MOVE                             R14 R12
      106 LOADN                            R15 0
      107 CALL                             R13 2 0
      108 GETUPVAL                         R11 5
      109 MOVE                             R12 R10
      110 LOADK                            R14 K24 ["pollJobStatus (statusCode=%*), jobId=%*"]
      111 GETTABLEKS                       R16 R10 K19 ["StatusCode"]
      113 MOVE                             R17 R0
      114 NAMECALL                         R14 R14 K5 ["format"]
      116 CALL                             R14 3 1
      117 MOVE                             R13 R14
      118 CALL                             R11 2 1
      119 GETTABLEKS                       R12 R11 K25 ["currentStage"]
      121 GETTABLEKS                       R14 R11 K6 ["status"]
      123 ORK                              R13 R14 K26 ["unknown"]
      124 JUMPIFNOT                        R3 ; [+5]
      125 MOVE                             R14 R3
      126 ADDK                             R15 R7 K27 [1]
      127 MOVE                             R16 R13
      128 MOVE                             R17 R12
      129 CALL                             R14 3 0
      130 JUMPIFNOT                        R2 ; [+7]
      131 JUMPIFNOT                        R12 ; [+6]
      132 JUMPIFEQ                         R12 R8 ; [+5]
      134 MOVE                             R8 R12
      135 MOVE                             R14 R2
      136 MOVE                             R15 R12
      137 CALL                             R14 1 0
      138 GETIMPORT                        R15 K30 [string.lower]
      140 MOVE                             R16 R13
      141 CALL                             R15 1 1
      142 GETIMPORT                        R16 K30 [string.lower]
      144 LOADK                            R17 K31 ["failed"]
      145 CALL                             R16 1 1
      146 JUMPIFEQ                         R15 R16 ; [+2]
      148 LOADB                            R14 0 +1
      149 LOADB                            R14 1
      150 JUMPIFNOT                        R14 ; [+12]
      151 GETUPVAL                         R14 6
      152 LOADK                            R16 K32 ["Job failed with status: %* and stage: %*, generationId=%*"]
      153 MOVE                             R18 R13
      154 GETTABLEKS                       R19 R11 K25 ["currentStage"]
      156 MOVE                             R20 R0
      157 NAMECALL                         R16 R16 K5 ["format"]
      159 CALL                             R16 4 1
      160 MOVE                             R15 R16
      161 CALL                             R14 1 -1
      162 RETURN                           R14 -1
      163 GETIMPORT                        R15 K30 [string.lower]
      165 MOVE                             R16 R13
      166 CALL                             R15 1 1
      167 GETIMPORT                        R16 K30 [string.lower]
      169 LOADK                            R17 K33 ["completed"]
      170 CALL                             R16 1 1
      171 JUMPIFEQ                         R15 R16 ; [+2]
      173 LOADB                            R14 0 +1
      174 LOADB                            R14 1
      175 JUMPIFNOT                        R14 ; [+66]
      176 GETTABLEKS                       R16 R11 K34 ["result"]
      178 FASTCALL1                        TYPE R16 ; [+2]
      179 GETIMPORT                        R15 K36 [type]
      181 CALL                             R15 1 1
      182 JUMPIFNOTEQKS                    R15 K37 ["table"] ; [+4]
      184 GETTABLEKS                       R14 R11 K34 ["result"]
      186 JUMP                             ; [+2]
      187 NEWTABLE                         R14 0 0
      189 GETUPVAL                         R16 4
      190 GETTABLEKS                       R15 R16 K15 ["appendLog"]
      192 MOVE                             R16 R0
      193 LOADK                            R18 K38 ["Polling job resultData:%*"]
      194 GETUPVAL                         R21 7
      195 GETTABLEKS                       R20 R21 K39 ["toString"]
      197 MOVE                             R21 R14
      198 CALL                             R20 1 1
      199 NAMECALL                         R18 R18 K5 ["format"]
      201 CALL                             R18 2 1
      202 MOVE                             R17 R18
      203 CALL                             R15 2 0
      204 GETTABLEKS                       R15 R14 K40 ["script"]
      206 JUMPIFNOT                        R15 ; [+2]
      207 JUMPIFNOTEQKS                    R15 K2 [""] ; [+15]
      209 GETUPVAL                         R16 6
      210 LOADK                            R18 K41 ["No script URL found in completed job response: %*, generationId=%*"]
      211 GETUPVAL                         R21 7
      212 GETTABLEKS                       R20 R21 K39 ["toString"]
      214 MOVE                             R21 R14
      215 CALL                             R20 1 1
      216 MOVE                             R21 R0
      217 NAMECALL                         R18 R18 K5 ["format"]
      219 CALL                             R18 3 1
      220 MOVE                             R17 R18
      221 CALL                             R16 1 -1
      222 RETURN                           R16 -1
      223 GETTABLEKS                       R16 R14 K42 ["dependencyVersion"]
      225 GETTABLEKS                       R17 R14 K43 ["dependencies"]
      227 DUPTABLE                         R18 K45 [{"status", "currentStage", "scriptUrl", "dependencyVersion", "dependencies"}]
      228 GETUPVAL                         R20 3
      229 GETTABLEKS                       R19 R20 K14 ["Success"]
      231 SETTABLEKS                       R19 R18 K6 ["status"]
      233 SETTABLEKS                       R12 R18 K25 ["currentStage"]
      235 SETTABLEKS                       R15 R18 K44 ["scriptUrl"]
      237 SETTABLEKS                       R16 R18 K42 ["dependencyVersion"]
      239 SETTABLEKS                       R17 R18 K43 ["dependencies"]
      241 RETURN                           R18 1
      242 MOVE                             R14 R1
      243 CALL                             R14 0 1
      244 JUMPIFNOT                        R14 ; [+7]
      245 DUPTABLE                         R14 K7 [{"status"}]
      246 GETUPVAL                         R16 3
      247 GETTABLEKS                       R15 R16 K8 ["Cancelled"]
      249 SETTABLEKS                       R15 R14 K6 ["status"]
      251 RETURN                           R14 1
      252 ADDK                             R7 R7 K27 [1]
      253 GETIMPORT                        R14 K48 [task.wait]
      255 GETUPVAL                         R16 8
      256 CALL                             R16 0 1
      257 DIVK                             R15 R16 K49 [1000]
      258 CALL                             R14 1 0
      259 JUMPBACK                         ; [-229]
      260 GETUPVAL                         R9 6
      261 LOADK                            R11 K50 ["Polling timed out after %* attempts, generationId=%*"]
      262 LOADN                            R13 44
      263 MOVE                             R14 R0
      264 NAMECALL                         R11 R11 K5 ["format"]
      266 CALL                             R11 3 1
      267 MOVE                             R10 R11
      268 CALL                             R9 1 -1
      269 RETURN                           R9 -1

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 MOVE                             R4 R1
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+7]
        3 DUPTABLE                         R4 K1 [{"status"}]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["Cancelled"]
        7 SETTABLEKS                       R5 R4 K0 ["status"]
        9 RETURN                           R4 1
       10 GETUPVAL                         R4 1
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+13]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R5 R6 K3 ["get"]
       16 CALL                             R5 0 1
       17 GETTABLEKS                       R4 R5 K4 ["getMockPrimGenBackendData"]
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
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K2 ["Cancelled"]
       37 JUMPIFNOTEQ                      R5 R6 ; [+8]
       39 DUPTABLE                         R5 K1 [{"status"}]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K2 ["Cancelled"]
       43 SETTABLEKS                       R6 R5 K0 ["status"]
       45 RETURN                           R5 1
       46 GETTABLEKS                       R5 R4 K8 ["dependencies"]
       48 JUMPIFNOT                        R5 ; [+8]
       49 GETTABLEKS                       R7 R4 K8 ["dependencies"]
       51 LENGTH                           R6 R7
       52 LOADN                            R7 0
       53 JUMPIFLT                         R7 R6 ; [+2]
       55 LOADB                            R5 0 +1
       56 LOADB                            R5 1
       57 LOADNIL                          R6
       58 JUMPIFNOT                        R5 ; [+19]
       59 MOVE                             R7 R2
       60 GETUPVAL                         R9 4
       61 GETTABLEKS                       R8 R9 K9 ["ResolvingDependencies"]
       63 CALL                             R7 1 0
       64 GETTABLEKS                       R8 R4 K8 ["dependencies"]
       66 FASTCALL2K                       ASSERT R8 K10 ; [+4]
       68 LOADK                            R9 K10 ["Dependencies are required"]
       69 GETIMPORT                        R7 K12 [assert]
       71 CALL                             R7 2 0
       72 GETUPVAL                         R7 5
       73 MOVE                             R8 R0
       74 GETTABLEKS                       R9 R4 K8 ["dependencies"]
       76 CALL                             R7 2 1
       77 MOVE                             R6 R7
       78 GETTABLEKS                       R7 R4 K13 ["scriptUrl"]
       80 JUMPIF                           R7 ; [+4]
       81 GETUPVAL                         R7 6
       82 LOADK                            R8 K14 ["No script URL found in response"]
       83 CALL                             R7 1 -1
       84 RETURN                           R7 -1
       85 MOVE                             R7 R2
       86 GETUPVAL                         R9 4
       87 GETTABLEKS                       R8 R9 K15 ["DownloadingScript"]
       89 CALL                             R7 1 0
       90 GETUPVAL                         R7 7
       91 GETTABLEKS                       R8 R4 K13 ["scriptUrl"]
       93 CALL                             R7 1 1
       94 DUPTABLE                         R8 K19 [{"status", "luauCode", "dependencyVersion", "resolvedDependencies"}]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R9 R10 K20 ["Success"]
       98 SETTABLEKS                       R9 R8 K0 ["status"]
      100 SETTABLEKS                       R7 R8 K16 ["luauCode"]
      102 GETTABLEKS                       R9 R4 K17 ["dependencyVersion"]
      104 SETTABLEKS                       R9 R8 K17 ["dependencyVersion"]
      106 SETTABLEKS                       R6 R8 K18 ["resolvedDependencies"]
      108 RETURN                           R8 1

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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
       21 CALL                             R0 6 -1
       22 RETURN                           R0 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Inserted"]
        3 SETTABLEKS                       R1 R0 K1 ["previewState"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["resultName"]
        8 SETTABLEKS                       R1 R0 K3 ["displayName"]
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K4 ["expanded"]
       13 RETURN                           R0 0

PROTO_33:
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
       30 JUMPIF                           R8 ; [+63]
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R10 R11 K4 ["updateJobStatus"]
       34 MOVE                             R11 R1
       35 GETUPVAL                         R13 1
       36 GETTABLEKS                       R12 R13 K8 ["Failed"]
       38 DUPTABLE                         R13 K10 [{"errorMessage"}]
       39 FASTCALL1                        TOSTRING R9 ; [+3]
       40 MOVE                             R15 R9
       41 GETIMPORT                        R14 K12 [tostring]
       43 CALL                             R14 1 1
       44 SETTABLEKS                       R14 R13 K9 ["errorMessage"]
       46 CALL                             R10 3 0
       47 GETTABLEKS                       R10 R4 K13 ["setPreviewState"]
       49 GETUPVAL                         R12 4
       50 GETTABLEKS                       R11 R12 K8 ["Failed"]
       52 FASTCALL1                        TOSTRING R9 ; [+3]
       53 MOVE                             R13 R9
       54 GETIMPORT                        R12 K12 [tostring]
       56 CALL                             R12 1 1
       57 CALL                             R10 2 0
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R10 R11 K14 ["appendLog"]
       61 MOVE                             R11 R1
       62 LOADK                            R13 K15 ["Generation failed with error: %*"]
       63 FASTCALL1                        TOSTRING R9 ; [+3]
       64 MOVE                             R16 R9
       65 GETIMPORT                        R15 K12 [tostring]
       67 CALL                             R15 1 1
       68 NAMECALL                         R13 R13 K16 ["format"]
       70 CALL                             R13 2 1
       71 MOVE                             R12 R13
       72 CALL                             R10 2 0
       73 MOVE                             R10 R6
       74 GETUPVAL                         R11 5
       75 MOVE                             R12 R3
       76 DUPTABLE                         R13 K20 [{"generationId", "success", "errorMessage", "prompt"}]
       77 SETTABLEKS                       R1 R13 K17 ["generationId"]
       79 LOADB                            R14 0
       80 SETTABLEKS                       R14 R13 K18 ["success"]
       82 FASTCALL1                        TOSTRING R9 ; [+3]
       83 MOVE                             R15 R9
       84 GETIMPORT                        R14 K12 [tostring]
       86 CALL                             R14 1 1
       87 SETTABLEKS                       R14 R13 K9 ["errorMessage"]
       89 SETTABLEKS                       R2 R13 K19 ["prompt"]
       91 CALL                             R11 2 -1
       92 CALL                             R10 -1 0
       93 RETURN                           R0 0
       94 GETTABLEKS                       R10 R9 K21 ["status"]
       96 GETUPVAL                         R12 6
       97 GETTABLEKS                       R11 R12 K22 ["Cancelled"]
       99 JUMPIFNOTEQ                      R10 R11 ; [+28]
      101 GETUPVAL                         R11 0
      102 GETTABLEKS                       R10 R11 K4 ["updateJobStatus"]
      104 MOVE                             R11 R1
      105 GETUPVAL                         R13 1
      106 GETTABLEKS                       R12 R13 K22 ["Cancelled"]
      108 CALL                             R10 2 0
      109 GETTABLEKS                       R10 R4 K13 ["setPreviewState"]
      111 GETUPVAL                         R12 4
      112 GETTABLEKS                       R11 R12 K22 ["Cancelled"]
      114 CALL                             R10 1 0
      115 MOVE                             R10 R6
      116 GETUPVAL                         R11 5
      117 MOVE                             R12 R3
      118 DUPTABLE                         R13 K23 [{"success", "errorMessage"}]
      119 LOADB                            R14 0
      120 SETTABLEKS                       R14 R13 K18 ["success"]
      122 LOADK                            R14 K24 ["Generation cancelled by user"]
      123 SETTABLEKS                       R14 R13 K9 ["errorMessage"]
      125 CALL                             R11 2 -1
      126 CALL                             R10 -1 0
      127 RETURN                           R0 0
      128 GETUPVAL                         R11 0
      129 GETTABLEKS                       R10 R11 K4 ["updateJobStatus"]
      131 MOVE                             R11 R1
      132 GETUPVAL                         R13 1
      133 GETTABLEKS                       R12 R13 K25 ["Inserting"]
      135 CALL                             R10 2 0
      136 GETTABLEKS                       R10 R4 K26 ["setGenerationStage"]
      138 GETUPVAL                         R12 7
      139 GETTABLEKS                       R11 R12 K25 ["Inserting"]
      141 CALL                             R10 1 0
      142 GETUPVAL                         R10 8
      143 MOVE                             R11 R0
      144 MOVE                             R12 R1
      145 MOVE                             R13 R9
      146 CALL                             R10 3 1
      147 GETTABLEKS                       R11 R10 K21 ["status"]
      149 GETUPVAL                         R13 9
      150 GETTABLEKS                       R12 R13 K27 ["Success"]
      152 JUMPIFNOTEQ                      R11 R12 ; [+42]
      154 GETUPVAL                         R12 0
      155 GETTABLEKS                       R11 R12 K4 ["updateJobStatus"]
      157 MOVE                             R12 R1
      158 GETUPVAL                         R14 1
      159 GETTABLEKS                       R13 R14 K28 ["Completed"]
      161 DUPTABLE                         R14 K31 [{"resultName", "modelFullName"}]
      162 GETTABLEKS                       R15 R10 K29 ["resultName"]
      164 SETTABLEKS                       R15 R14 K29 ["resultName"]
      166 LOADK                            R16 K32 ["Workspace.%*"]
      167 GETTABLEKS                       R18 R10 K29 ["resultName"]
      169 NAMECALL                         R16 R16 K16 ["format"]
      171 CALL                             R16 2 1
      172 MOVE                             R15 R16
      173 SETTABLEKS                       R15 R14 K30 ["modelFullName"]
      175 CALL                             R11 3 0
      176 GETTABLEKS                       R11 R4 K33 ["updateWidget"]
      178 NEWCLOSURE                       R12 P2
      179 CAPTURE                          UPVAL U4
      180 CAPTURE                          VAL R10
      181 CALL                             R11 1 0
      182 GETTABLEKS                       R12 R0 K34 ["bridge"]
      184 GETTABLEKS                       R11 R12 K35 ["listenToLinkChanges"]
      186 DUPTABLE                         R12 K37 [{"generationId", "name"}]
      187 SETTABLEKS                       R1 R12 K17 ["generationId"]
      189 GETTABLEKS                       R13 R10 K29 ["resultName"]
      191 SETTABLEKS                       R13 R12 K36 ["name"]
      193 CALL                             R11 1 0
      194 JUMP                             ; [+21]
      195 GETUPVAL                         R12 0
      196 GETTABLEKS                       R11 R12 K4 ["updateJobStatus"]
      198 MOVE                             R12 R1
      199 GETUPVAL                         R14 1
      200 GETTABLEKS                       R13 R14 K8 ["Failed"]
      202 DUPTABLE                         R14 K10 [{"errorMessage"}]
      203 GETTABLEKS                       R15 R10 K38 ["errorText"]
      205 SETTABLEKS                       R15 R14 K9 ["errorMessage"]
      207 CALL                             R11 3 0
      208 GETTABLEKS                       R11 R4 K13 ["setPreviewState"]
      210 GETUPVAL                         R13 4
      211 GETTABLEKS                       R12 R13 K8 ["Failed"]
      213 GETTABLEKS                       R13 R10 K38 ["errorText"]
      215 CALL                             R11 2 0
      216 MOVE                             R11 R6
      217 GETUPVAL                         R12 5
      218 MOVE                             R13 R3
      219 DUPTABLE                         R14 K23 [{"success", "errorMessage"}]
      220 GETTABLEKS                       R16 R10 K21 ["status"]
      222 GETUPVAL                         R18 9
      223 GETTABLEKS                       R17 R18 K27 ["Success"]
      225 JUMPIFEQ                         R16 R17 ; [+2]
      227 LOADB                            R15 0 +1
      228 LOADB                            R15 1
      229 SETTABLEKS                       R15 R14 K18 ["success"]
      231 GETTABLEKS                       R16 R10 K21 ["status"]
      233 GETUPVAL                         R18 9
      234 GETTABLEKS                       R17 R18 K8 ["Failed"]
      236 JUMPIFNOTEQ                      R16 R17 ; [+4]
      238 GETTABLEKS                       R15 R10 K38 ["errorText"]
      240 JUMP                             ; [+1]
      241 LOADNIL                          R15
      242 SETTABLEKS                       R15 R14 K9 ["errorMessage"]
      244 CALL                             R12 2 -1
      245 CALL                             R11 -1 0
      246 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 CALL                             R4 0 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K0 ["getActiveJobCount"]
        8 CALL                             R5 0 1
        9 JUMPIFNOTLE                      R4 R5 ; [+50]
       11 DUPTABLE                         R6 K5 [{"type", "mode", "isError", "errorMessage"}]
       12 GETUPVAL                         R8 3
       13 GETTABLEKS                       R7 R8 K6 ["Type"]
       15 SETTABLEKS                       R7 R6 K1 ["type"]
       17 GETUPVAL                         R9 3
       18 GETTABLEKS                       R8 R9 K7 ["Modes"]
       20 GETTABLEKS                       R7 R8 K8 ["Preparing"]
       22 SETTABLEKS                       R7 R6 K2 ["mode"]
       24 LOADB                            R7 1
       25 SETTABLEKS                       R7 R6 K3 ["isError"]
       27 GETUPVAL                         R7 4
       28 LOADK                            R9 K9 ["PrimitiveGen"]
       29 LOADK                            R10 K10 ["MaxConcurrentJobsError"]
       30 DUPTABLE                         R11 K13 [{"activeCount", "maxConcurrentJobs"}]
       31 SETTABLEKS                       R5 R11 K11 ["activeCount"]
       33 SETTABLEKS                       R4 R11 K12 ["maxConcurrentJobs"]
       35 NAMECALL                         R7 R7 K14 ["getText"]
       37 CALL                             R7 4 1
       38 SETTABLEKS                       R7 R6 K4 ["errorMessage"]
       40 GETTABLEKS                       R7 R3 K15 ["replaceContent"]
       42 MOVE                             R8 R6
       43 CALL                             R7 1 0
       44 GETUPVAL                         R7 5
       45 CALL                             R7 0 1
       46 GETTABLEKS                       R10 R6 K4 ["errorMessage"]
       48 ORK                              R9 R10 K16 [""]
       49 NAMECALL                         R7 R7 K17 ["addText"]
       51 CALL                             R7 2 1
       52 LOADB                            R9 1
       53 NAMECALL                         R7 R7 K18 ["setError"]
       55 CALL                             R7 2 1
       56 NAMECALL                         R7 R7 K19 ["build"]
       58 CALL                             R7 1 -1
       59 RETURN                           R7 -1
       60 GETTABLEKS                       R7 R1 K20 ["prompt"]
       62 ORK                              R6 R7 K16 [""]
       63 GETTABLEKS                       R8 R1 K21 ["attachedImageUri"]
       65 JUMPIF                           R8 ; [+2]
       66 LOADNIL                          R7
       67 JUMP                             ; [+6]
       68 GETUPVAL                         R10 6
       69 GETTABLEKS                       R9 R10 K22 ["getImage"]
       71 MOVE                             R10 R8
       72 CALL                             R9 1 1
       73 MOVE                             R7 R9
       74 DUPTABLE                         R8 K25 [{"requestId", "conversationId", "prompt"}]
       75 GETTABLEKS                       R11 R0 K26 ["handlerArgs"]
       77 GETTABLEKS                       R10 R11 K27 ["messageGuid"]
       79 ORK                              R9 R10 K16 [""]
       80 SETTABLEKS                       R9 R8 K23 ["requestId"]
       82 GETTABLEKS                       R11 R0 K26 ["handlerArgs"]
       84 GETTABLEKS                       R10 R11 K28 ["sessionId"]
       86 ORK                              R9 R10 K16 [""]
       87 SETTABLEKS                       R9 R8 K24 ["conversationId"]
       89 SETTABLEKS                       R6 R8 K20 ["prompt"]
       91 DUPTABLE                         R9 K38 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "generationStage", "startTime", "onChipClicked"}]
       92 GETUPVAL                         R11 3
       93 GETTABLEKS                       R10 R11 K6 ["Type"]
       95 SETTABLEKS                       R10 R9 K1 ["type"]
       97 GETUPVAL                         R12 3
       98 GETTABLEKS                       R11 R12 K7 ["Modes"]
      100 GETTABLEKS                       R10 R11 K39 ["ShowPreview"]
      102 SETTABLEKS                       R10 R9 K2 ["mode"]
      104 LOADB                            R10 0
      105 SETTABLEKS                       R10 R9 K29 ["expanded"]
      107 SETTABLEKS                       R6 R9 K30 ["name"]
      109 LENGTH                           R11 R6
      110 LOADN                            R12 0
      111 JUMPIFNOTLT                      R12 R11 ; [+3]
      113 MOVE                             R10 R6
      114 JUMP                             ; [+6]
      115 GETUPVAL                         R10 4
      116 LOADK                            R12 K9 ["PrimitiveGen"]
      117 LOADK                            R13 K40 ["DefaultDisplayName"]
      118 NAMECALL                         R10 R10 K14 ["getText"]
      120 CALL                             R10 3 1
      121 SETTABLEKS                       R10 R9 K31 ["displayName"]
      123 LOADNIL                          R10
      124 SETTABLEKS                       R10 R9 K32 ["className"]
      126 LOADNIL                          R10
      127 SETTABLEKS                       R10 R9 K33 ["previewImages"]
      129 GETUPVAL                         R11 7
      130 GETTABLEKS                       R10 R11 K41 ["Generating"]
      132 SETTABLEKS                       R10 R9 K34 ["previewState"]
      134 GETUPVAL                         R11 8
      135 GETTABLEKS                       R10 R11 K42 ["Submitting"]
      137 SETTABLEKS                       R10 R9 K35 ["generationStage"]
      139 GETIMPORT                        R10 K45 [os.clock]
      141 CALL                             R10 0 1
      142 SETTABLEKS                       R10 R9 K36 ["startTime"]
      144 LOADNIL                          R10
      145 SETTABLEKS                       R10 R9 K37 ["onChipClicked"]
      147 GETTABLEKS                       R10 R3 K15 ["replaceContent"]
      149 MOVE                             R11 R9
      150 CALL                             R10 1 0
      151 JUMPIFNOT                        R7 ; [+3]
      152 GETTABLEKS                       R10 R7 K46 ["data"]
      154 JUMP                             ; [+1]
      155 LOADNIL                          R10
      156 GETIMPORT                        R11 K48 [pcall]
      158 NEWCLOSURE                       R12 P0
      159 CAPTURE                          UPVAL U9
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R10
      162 CALL                             R11 1 2
      163 JUMPIF                           R11 ; [+50]
      164 GETTABLEKS                       R16 R0 K49 ["toolArgs"]
      166 GETTABLEKS                       R15 R16 K50 ["environment"]
      168 GETTABLEKS                       R14 R15 K51 ["EventLogger"]
      170 GETTABLEKS                       R13 R14 K52 ["logPrimitiveGen"]
      172 GETTABLEKS                       R14 R3 K53 ["setPreviewState"]
      174 GETUPVAL                         R16 7
      175 GETTABLEKS                       R15 R16 K54 ["Failed"]
      177 MOVE                             R16 R12
      178 CALL                             R14 2 0
      179 MOVE                             R14 R13
      180 GETUPVAL                         R15 10
      181 MOVE                             R16 R8
      182 DUPTABLE                         R17 K56 [{"success", "errorMessage"}]
      183 LOADB                            R18 0
      184 SETTABLEKS                       R18 R17 K55 ["success"]
      186 FASTCALL1                        TOSTRING R12 ; [+3]
      187 MOVE                             R19 R12
      188 GETIMPORT                        R18 K58 [tostring]
      190 CALL                             R18 1 1
      191 SETTABLEKS                       R18 R17 K4 ["errorMessage"]
      193 CALL                             R15 2 -1
      194 CALL                             R14 -1 0
      195 GETUPVAL                         R14 5
      196 CALL                             R14 0 1
      197 LOADK                            R17 K59 ["Failed to submit generation job: %*"]
      198 MOVE                             R19 R12
      199 NAMECALL                         R17 R17 K60 ["format"]
      201 CALL                             R17 2 1
      202 MOVE                             R16 R17
      203 NAMECALL                         R14 R14 K17 ["addText"]
      205 CALL                             R14 2 1
      206 LOADB                            R16 1
      207 NAMECALL                         R14 R14 K18 ["setError"]
      209 CALL                             R14 2 1
      210 NAMECALL                         R14 R14 K19 ["build"]
      212 CALL                             R14 1 -1
      213 RETURN                           R14 -1
      214 SETTABLEKS                       R12 R8 K61 ["generationId"]
      216 GETUPVAL                         R14 2
      217 GETTABLEKS                       R13 R14 K62 ["setJob"]
      219 MOVE                             R14 R12
      220 DUPTABLE                         R15 K66 [{"generationId", "status", "prompt", "imageUri", "logs"}]
      221 SETTABLEKS                       R12 R15 K61 ["generationId"]
      223 GETUPVAL                         R17 11
      224 GETTABLEKS                       R16 R17 K67 ["Submitted"]
      226 SETTABLEKS                       R16 R15 K63 ["status"]
      228 SETTABLEKS                       R6 R15 K20 ["prompt"]
      230 GETTABLEKS                       R16 R1 K21 ["attachedImageUri"]
      232 SETTABLEKS                       R16 R15 K64 ["imageUri"]
      234 NEWTABLE                         R16 0 0
      236 SETTABLEKS                       R16 R15 K65 ["logs"]
      238 CALL                             R13 2 0
      239 GETUPVAL                         R14 2
      240 GETTABLEKS                       R13 R14 K68 ["appendLog"]
      242 MOVE                             R14 R12
      243 LOADK                            R16 K69 ["Job submitted with prompt: \"%*\", image: \"%*\", imageMimeType: \"%*\""]
      244 MOVE                             R18 R6
      245 JUMPIFNOT                        R7 ; [+3]
      246 GETTABLEKS                       R19 R7 K46 ["data"]
      248 JUMPIF                           R19 ; [+1]
      249 LOADK                            R19 K70 ["nil"]
      250 JUMPIFNOT                        R7 ; [+3]
      251 GETTABLEKS                       R20 R7 K71 ["mimeType"]
      253 JUMPIF                           R20 ; [+1]
      254 LOADK                            R20 K70 ["nil"]
      255 NAMECALL                         R16 R16 K60 ["format"]
      257 CALL                             R16 4 1
      258 MOVE                             R15 R16
      259 CALL                             R13 2 0
      260 GETIMPORT                        R13 K74 [task.spawn]
      262 GETUPVAL                         R14 12
      263 MOVE                             R15 R0
      264 MOVE                             R16 R12
      265 MOVE                             R17 R6
      266 MOVE                             R18 R8
      267 MOVE                             R19 R3
      268 MOVE                             R20 R2
      269 CALL                             R13 7 0
      270 GETUPVAL                         R13 5
      271 CALL                             R13 0 1
      272 LOADK                            R16 K75 ["Generation job submitted successfully. Generation ID: %*"]
      273 MOVE                             R18 R12
      274 NAMECALL                         R16 R16 K60 ["format"]
      276 CALL                             R16 2 1
      277 MOVE                             R15 R16
      278 NAMECALL                         R13 R13 K17 ["addText"]
      280 CALL                             R13 2 1
      281 NAMECALL                         R13 R13 K19 ["build"]
      283 CALL                             R13 1 -1
      284 RETURN                           R13 -1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["bridge"]
        3 GETTABLEKS                       R0 R1 K1 ["selectModel"]
        5 DUPTABLE                         R1 K3 [{"modelTag"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["modelTag"]
        9 SETTABLEKS                       R2 R1 K2 ["modelTag"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["updateWidget"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["setPreviewImage"]
        5 GETTABLEKS                       R4 R0 K1 ["index"]
        7 GETTABLEKS                       R5 R0 K2 ["image"]
        9 CALL                             R3 2 0
       10 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R0 K0 ["Creates procedural 3D objects from primitive parts with configurable attributes. Supports reference images."]
        4 RETURN                           R0 1
        5 LOADK                            R0 K1 ["Generates editable 3D objects with parts. Best for scenery and a blocky look."]
        6 RETURN                           R0 1

PROTO_43:
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

PROTO_44:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["Modes"]
        9 GETTABLEKS                       R1 R2 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["PrimitiveGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_46:
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
       78 DUPCLOSURE                       R6 K25 [PROTO_42]
       79 CAPTURE                          UPVAL U4
       80 SETTABLEKS                       R6 R5 K21 ["getDescription"]
       82 DUPCLOSURE                       R6 K26 [PROTO_43]
       83 CAPTURE                          UPVAL U3
       84 SETTABLEKS                       R6 R5 K22 ["mapToToolCall"]
       86 DUPTABLE                         R6 K28 [{"transformInitialContent"}]
       87 DUPCLOSURE                       R7 K29 [PROTO_44]
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
      110 DUPCLOSURE                       R8 K37 [PROTO_45]
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
       77 GETTABLEKS                       R12 R0 K21 ["Tools"]
       79 GETTABLEKS                       R11 R12 K22 ["ToolTypes"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R13 R0 K14 ["Util"]
       86 GETTABLEKS                       R12 R13 K23 ["ToolUtils"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETTABLEKS                       R15 R0 K24 ["Resources"]
       93 GETTABLEKS                       R14 R15 K25 ["Localization"]
       95 GETTABLEKS                       R13 R14 K26 ["Translator"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K9 [require]
      100 GETTABLEKS                       R14 R0 K27 ["Types"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K1 [script]
      105 LOADK                            R16 K28 ["PrimitiveGen"]
      106 NAMECALL                         R14 R14 K3 ["FindFirstAncestor"]
      108 CALL                             R14 2 1
      109 GETIMPORT                        R15 K9 [require]
      111 GETTABLEKS                       R16 R14 K29 ["PrimitiveGenContentWidget"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K9 [require]
      116 GETTABLEKS                       R19 R0 K30 ["Features"]
      118 GETTABLEKS                       R18 R19 K31 ["Gen3dUtils"]
      120 GETTABLEKS                       R17 R18 K32 ["Gen3dConstants"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K9 [require]
      125 GETTABLEKS                       R19 R0 K33 ["Flags"]
      127 GETTABLEKS                       R18 R19 K34 ["FFlagAssistantMultipleChatPersistence"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K9 [require]
      132 GETTABLEKS                       R20 R0 K33 ["Flags"]
      134 GETTABLEKS                       R19 R20 K35 ["FFlagDebugMockPrimitiveGenBackend"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K9 [require]
      139 GETTABLEKS                       R21 R0 K33 ["Flags"]
      141 GETTABLEKS                       R20 R21 K36 ["FFlagPrimGenErrorInfo"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K9 [require]
      146 GETTABLEKS                       R22 R0 K33 ["Flags"]
      148 GETTABLEKS                       R21 R22 K37 ["FFlagRefinePrimGenDesc"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K9 [require]
      153 GETTABLEKS                       R23 R0 K33 ["Flags"]
      155 GETTABLEKS                       R22 R23 K38 ["FFlagRenameGenerateCommands"]
      157 CALL                             R21 1 1
      158 GETIMPORT                        R22 K9 [require]
      160 GETTABLEKS                       R24 R0 K33 ["Flags"]
      162 GETTABLEKS                       R23 R24 K39 ["FIntAssistantPrimitiveGenMaxConcurrentJobs"]
      164 CALL                             R22 1 1
      165 GETIMPORT                        R23 K9 [require]
      167 GETTABLEKS                       R25 R0 K33 ["Flags"]
      169 GETTABLEKS                       R24 R25 K40 ["FIntAssistantPrimitiveGenPollIntervalMs"]
      171 CALL                             R23 1 1
      172 GETIMPORT                        R24 K9 [require]
      174 GETTABLEKS                       R26 R0 K33 ["Flags"]
      176 GETTABLEKS                       R25 R26 K41 ["FStringMCPAssistantPrimitiveGenServerURL"]
      178 CALL                             R24 1 1
      179 GETTABLEKS                       R25 R15 K42 ["PreviewState"]
      181 GETTABLEKS                       R27 R6 K14 ["Util"]
      183 GETTABLEKS                       R26 R27 K43 ["ToolResult"]
      185 GETTABLEKS                       R27 R6 K44 ["Json"]
      187 GETTABLEKS                       R29 R2 K45 ["Dictionary"]
      189 GETTABLEKS                       R28 R29 K46 ["join"]
      191 GETTABLEKS                       R30 R6 K14 ["Util"]
      193 GETTABLEKS                       R29 R30 K47 ["ToolBuilder"]
      195 GETTABLEKS                       R30 R10 K48 ["ToolNames"]
      197 GETTABLEKS                       R31 R16 K49 ["PREVIEW_IMAGE_COUNT"]
      199 DUPTABLE                         R32 K54 [{"Submitting", "ResolvingDependencies", "DownloadingScript", "Inserting"}]
      200 LOADK                            R35 K28 ["PrimitiveGen"]
      201 LOADK                            R36 K55 ["StageSubmitting"]
      202 NAMECALL                         R33 R12 K56 ["getText"]
      204 CALL                             R33 3 1
      205 SETTABLEKS                       R33 R32 K50 ["Submitting"]
      207 LOADK                            R35 K28 ["PrimitiveGen"]
      208 LOADK                            R36 K57 ["StageResolvingDependencies"]
      209 NAMECALL                         R33 R12 K56 ["getText"]
      211 CALL                             R33 3 1
      212 SETTABLEKS                       R33 R32 K51 ["ResolvingDependencies"]
      214 LOADK                            R35 K28 ["PrimitiveGen"]
      215 LOADK                            R36 K58 ["StageDownloadingScript"]
      216 NAMECALL                         R33 R12 K56 ["getText"]
      218 CALL                             R33 3 1
      219 SETTABLEKS                       R33 R32 K52 ["DownloadingScript"]
      221 LOADK                            R35 K28 ["PrimitiveGen"]
      222 LOADK                            R36 K59 ["StageInserting"]
      223 NAMECALL                         R33 R12 K56 ["getText"]
      225 CALL                             R33 3 1
      226 SETTABLEKS                       R33 R32 K53 ["Inserting"]
      228 DUPTABLE                         R33 K62 [{"WorkflowFailure", "ModerationFailure"}]
      229 LOADK                            R34 K63 ["Workflow Failure"]
      230 SETTABLEKS                       R34 R33 K60 ["WorkflowFailure"]
      232 LOADK                            R34 K64 ["Moderation Failure"]
      233 SETTABLEKS                       R34 R33 K61 ["ModerationFailure"]
      235 DUPTABLE                         R34 K67 [{"Success", "Cancelled"}]
      236 LOADK                            R35 K68 ["success"]
      237 SETTABLEKS                       R35 R34 K65 ["Success"]
      239 LOADK                            R35 K69 ["cancelled"]
      240 SETTABLEKS                       R35 R34 K66 ["Cancelled"]
      242 DUPCLOSURE                       R35 K70 [PROTO_0]
      243 CAPTURE                          VAL R3
      244 DUPTABLE                         R36 K72 [{"Success", "Failed"}]
      245 LOADK                            R37 K68 ["success"]
      246 SETTABLEKS                       R37 R36 K65 ["Success"]
      248 LOADK                            R37 K73 ["failed"]
      249 SETTABLEKS                       R37 R36 K71 ["Failed"]
      251 DUPCLOSURE                       R37 K74 [PROTO_1]
      252 DUPCLOSURE                       R38 K75 [PROTO_2]
      253 CAPTURE                          VAL R5
      254 DUPCLOSURE                       R39 K76 [PROTO_4]
      255 DUPCLOSURE                       R40 K77 [PROTO_5]
      256 DUPCLOSURE                       R41 K78 [PROTO_6]
      257 CAPTURE                          VAL R19
      258 CAPTURE                          VAL R27
      259 CAPTURE                          VAL R11
      260 DUPCLOSURE                       R42 K79 [PROTO_7]
      261 CAPTURE                          VAL R24
      262 CAPTURE                          VAL R3
      263 DUPCLOSURE                       R43 K80 [PROTO_8]
      264 CAPTURE                          VAL R24
      265 CAPTURE                          VAL R3
      266 DUPCLOSURE                       R44 K81 [PROTO_18]
      267 CAPTURE                          VAL R17
      268 CAPTURE                          VAL R31
      269 DUPCLOSURE                       R45 K82 [PROTO_19]
      270 CAPTURE                          VAL R1
      271 CAPTURE                          VAL R4
      272 CAPTURE                          VAL R24
      273 CAPTURE                          VAL R3
      274 CAPTURE                          VAL R28
      275 CAPTURE                          VAL R42
      276 DUPCLOSURE                       R46 K83 [PROTO_20]
      277 CAPTURE                          VAL R18
      278 CAPTURE                          VAL R3
      279 CAPTURE                          VAL R45
      280 CAPTURE                          VAL R41
      281 DUPCLOSURE                       R47 K84 [PROTO_22]
      282 CAPTURE                          VAL R3
      283 CAPTURE                          VAL R24
      284 CAPTURE                          VAL R42
      285 CAPTURE                          VAL R34
      286 CAPTURE                          VAL R9
      287 CAPTURE                          VAL R41
      288 CAPTURE                          VAL R40
      289 CAPTURE                          VAL R11
      290 CAPTURE                          VAL R23
      291 DUPCLOSURE                       R48 K85 [PROTO_23]
      292 CAPTURE                          VAL R3
      293 CAPTURE                          VAL R27
      294 DUPCLOSURE                       R49 K86 [PROTO_25]
      295 CAPTURE                          VAL R3
      296 CAPTURE                          VAL R41
      297 DUPCLOSURE                       R50 K87 [PROTO_26]
      298 CAPTURE                          VAL R34
      299 CAPTURE                          VAL R18
      300 CAPTURE                          VAL R3
      301 CAPTURE                          VAL R47
      302 CAPTURE                          VAL R32
      303 CAPTURE                          VAL R49
      304 CAPTURE                          VAL R40
      305 CAPTURE                          VAL R48
      306 DUPCLOSURE                       R51 K88 [PROTO_28]
      307 CAPTURE                          VAL R36
      308 GETTABLEKS                       R52 R9 K89 ["JobStatus"]
      310 DUPCLOSURE                       R53 K90 [PROTO_33]
      311 CAPTURE                          VAL R9
      312 CAPTURE                          VAL R52
      313 CAPTURE                          VAL R11
      314 CAPTURE                          VAL R50
      315 CAPTURE                          VAL R25
      316 CAPTURE                          VAL R28
      317 CAPTURE                          VAL R34
      318 CAPTURE                          VAL R32
      319 CAPTURE                          VAL R51
      320 CAPTURE                          VAL R36
      321 DUPCLOSURE                       R54 K91 [PROTO_35]
      322 CAPTURE                          VAL R44
      323 CAPTURE                          VAL R22
      324 CAPTURE                          VAL R9
      325 CAPTURE                          VAL R15
      326 CAPTURE                          VAL R12
      327 CAPTURE                          VAL R26
      328 CAPTURE                          VAL R5
      329 CAPTURE                          VAL R25
      330 CAPTURE                          VAL R32
      331 CAPTURE                          VAL R46
      332 CAPTURE                          VAL R28
      333 CAPTURE                          VAL R52
      334 CAPTURE                          VAL R53
      335 DUPCLOSURE                       R55 K92 [PROTO_38]
      336 CAPTURE                          VAL R44
      337 DUPCLOSURE                       R56 K93 [PROTO_39]
      338 CAPTURE                          VAL R44
      339 DUPTABLE                         R57 K96 [{"updateContentHeader", "setPreviewImage"}]
      340 SETTABLEKS                       R55 R57 K94 ["updateContentHeader"]
      342 SETTABLEKS                       R56 R57 K95 ["setPreviewImage"]
      344 DUPCLOSURE                       R58 K97 [PROTO_46]
      345 CAPTURE                          VAL R7
      346 CAPTURE                          VAL R54
      347 CAPTURE                          VAL R29
      348 CAPTURE                          VAL R30
      349 CAPTURE                          VAL R20
      350 CAPTURE                          VAL R21
      351 CAPTURE                          VAL R15
      352 CAPTURE                          VAL R12
      353 DUPTABLE                         R59 K100 [{"bridge", "setupGuest"}]
      354 SETTABLEKS                       R57 R59 K98 ["bridge"]
      356 SETTABLEKS                       R58 R59 K99 ["setupGuest"]
      358 RETURN                           R59 1
