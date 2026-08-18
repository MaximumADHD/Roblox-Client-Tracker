PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["options"]
        3 GETTABLEKS                       R0 R0 K1 ["onSlotsUpdated"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["previewedIndex"]
       10 CALL                             R0 3 0
       11 LOADNIL                          R0
       12 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["orchestrator"]
        2 NAMECALL                         R2 R2 K1 ["getSlots"]
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K3 [pcall]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 CALL                             R3 1 2
       12 JUMPIF                           R3 ; [+9]
       13 GETIMPORT                        R5 K5 [warn]
       15 LOADK                            R7 K6 ["[ImageSelectionController] onSlotsUpdated handler errored: %*"]
       16 MOVE                             R9 R4
       17 NAMECALL                         R7 R7 K7 ["format"]
       19 CALL                             R7 2 1
       20 MOVE                             R6 R7
       21 CALL                             R5 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantGen3DImagePreviewTelemetry"]
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R0 K1 ["options"]
        7 GETTABLEKS                       R3 R3 K2 ["modelFlow"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["get"]
       15 CALL                             R4 0 1
       16 GETTABLEKS                       R4 R4 K4 ["EventLogger"]
       18 GETTABLEKS                       R4 R4 K5 ["logGen3DImageAction"]
       20 DUPTABLE                         R5 K10 [{"studioFlowId", "batchId", "action", "actionOnOptionId", "modelFlow"}]
       21 GETTABLEKS                       R6 R0 K11 ["orchestrator"]
       23 NAMECALL                         R6 R6 K12 ["getStudioFlowId"]
       25 CALL                             R6 1 1
       26 SETTABLEKS                       R6 R5 K6 ["studioFlowId"]
       28 GETTABLEKS                       R6 R0 K11 ["orchestrator"]
       30 NAMECALL                         R6 R6 K13 ["getBatchId"]
       32 CALL                             R6 1 1
       33 SETTABLEKS                       R6 R5 K7 ["batchId"]
       35 SETTABLEKS                       R1 R5 K8 ["action"]
       37 SETTABLEKS                       R2 R5 K9 ["actionOnOptionId"]
       39 SETTABLEKS                       R3 R5 K2 ["modelFlow"]
       41 CALL                             R4 1 0
       42 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantGen3DImagePreviewTelemetry"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["modelFlow"]
        8 JUMPIFNOTEQKNIL                  R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K2 ["get"]
       14 CALL                             R2 0 1
       15 GETTABLEKS                       R2 R2 K3 ["EventLogger"]
       17 GETTABLEKS                       R2 R2 K4 ["logGen3DImageImpression"]
       19 DUPTABLE                         R3 K9 [{"studioFlowId", "batchId", "optionIds", "inputGenerationId", "modelFlow"}]
       20 GETTABLEKS                       R4 R0 K5 ["studioFlowId"]
       22 SETTABLEKS                       R4 R3 K5 ["studioFlowId"]
       24 GETTABLEKS                       R4 R0 K6 ["batchId"]
       26 SETTABLEKS                       R4 R3 K6 ["batchId"]
       28 GETTABLEKS                       R4 R0 K7 ["optionIds"]
       30 SETTABLEKS                       R4 R3 K7 ["optionIds"]
       32 GETTABLEKS                       R4 R0 K8 ["inputGenerationId"]
       34 SETTABLEKS                       R4 R3 K8 ["inputGenerationId"]
       36 SETTABLEKS                       R1 R3 K1 ["modelFlow"]
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["textPrompt"]
        3 FASTCALL1                        TYPEOF R4 ; [+2]
        4 GETIMPORT                        R3 K2 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K3 ["string"] ; [+9]
        9 GETTABLEKS                       R4 R0 K0 ["textPrompt"]
       11 LENGTH                           R3 R4
       12 LOADN                            R4 0
       13 JUMPIFLT                         R4 R3 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       19 LOADK                            R3 K4 ["textPrompt must be a non-empty string"]
       20 GETIMPORT                        R1 K6 [assert]
       22 CALL                             R1 2 0
       23 GETTABLEKS                       R4 R0 K7 ["onSlotsUpdated"]
       25 FASTCALL1                        TYPEOF R4 ; [+2]
       26 GETIMPORT                        R3 K2 [typeof]
       28 CALL                             R3 1 1
       29 JUMPIFEQKS                       R3 K8 ["function"] ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       35 LOADK                            R3 K9 ["onSlotsUpdated callback is required"]
       36 GETIMPORT                        R1 K6 [assert]
       38 CALL                             R1 2 0
       39 GETTABLEKS                       R2 R0 K11 ["slotCount"]
       41 ORK                              R1 R2 K10 [4]
       42 DUPTABLE                         R3 K20 [{["options"], ["orchestrator"] = , ["pickedSlotIndex"] = , ["previewedIndex"] = , ["cancelled"] = False, ["pickSignal"]}]
       43 SETTABLEKS                       R0 R3 K12 ["options"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K21 ["new"]
       48 CALL                             R4 0 1
       49 SETTABLEKS                       R4 R3 K19 ["pickSignal"]
       51 GETUPVAL                         R4 1
       52 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       54 GETIMPORT                        R2 K23 [setmetatable]
       56 CALL                             R2 2 1
       57 GETUPVAL                         R3 2
       58 GETTABLEKS                       R3 R3 K21 ["new"]
       60 DUPTABLE                         R4 K30 [{"slotCount", "textPrompt", "model", "pollIntervalSeconds", "timeoutSeconds", "modelFlow", "onSlotChanged", "onBatchImpression"}]
       61 SETTABLEKS                       R1 R4 K11 ["slotCount"]
       63 GETTABLEKS                       R5 R0 K0 ["textPrompt"]
       65 SETTABLEKS                       R5 R4 K0 ["textPrompt"]
       67 GETTABLEKS                       R5 R0 K24 ["model"]
       69 SETTABLEKS                       R5 R4 K24 ["model"]
       71 GETTABLEKS                       R5 R0 K25 ["pollIntervalSeconds"]
       73 SETTABLEKS                       R5 R4 K25 ["pollIntervalSeconds"]
       75 GETTABLEKS                       R5 R0 K26 ["timeoutSeconds"]
       77 SETTABLEKS                       R5 R4 K26 ["timeoutSeconds"]
       79 GETTABLEKS                       R5 R0 K27 ["modelFlow"]
       81 SETTABLEKS                       R5 R4 K27 ["modelFlow"]
       83 NEWCLOSURE                       R5 P0
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R5 R4 K28 ["onSlotChanged"]
       88 NEWCLOSURE                       R5 P1
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U5
       92 SETTABLEKS                       R5 R4 K29 ["onBatchImpression"]
       94 CALL                             R3 1 1
       95 SETTABLEKS                       R3 R2 K13 ["orchestrator"]
       97 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{"slotIndex", "presignedUrl", "thumbnailContent"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["slotIndex"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["presignedUrl"]
        8 SETTABLEKS                       R2 R1 K1 ["presignedUrl"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K4 ["thumbnailTempId"]
       13 SETTABLEKS                       R2 R1 K2 ["thumbnailContent"]
       15 CALL                             R0 1 0
       16 LOADNIL                          R0
       17 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["cancelled"]
        2 JUMPIF                           R2 ; [+3]
        3 GETTABLEKS                       R2 R0 K1 ["pickedSlotIndex"]
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R0 K2 ["orchestrator"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K3 ["getSlot"]
       12 CALL                             R2 2 1
       13 JUMPIFEQKNIL                     R2 ; [+5]
       15 GETTABLEKS                       R3 R2 K4 ["status"]
       17 JUMPIFEQKS                       R3 K5 ["Ready"] ; [+2]
       19 RETURN                           R0 0
       20 SETTABLEKS                       R1 R0 K1 ["pickedSlotIndex"]
       22 GETUPVAL                         R3 0
       23 MOVE                             R4 R0
       24 LOADK                            R5 K6 ["select"]
       25 GETTABLEKS                       R6 R2 K7 ["imageGenerationId"]
       27 CALL                             R3 3 0
       28 GETTABLEKS                       R3 R0 K8 ["options"]
       30 GETTABLEKS                       R3 R3 K9 ["onImageSelected"]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K10 ["FFlagAssistantImageGenImprovements"]
       35 JUMPIFNOT                        R4 ; [+18]
       36 JUMPIFNOT                        R3 ; [+17]
       37 GETIMPORT                        R4 K12 [pcall]
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 CALL                             R4 1 2
       44 JUMPIF                           R4 ; [+9]
       45 GETIMPORT                        R6 K14 [warn]
       47 LOADK                            R8 K15 ["[ImageSelectionController] onImageSelected handler errored: %*"]
       48 MOVE                             R10 R5
       49 NAMECALL                         R8 R8 K16 ["format"]
       51 CALL                             R8 2 1
       52 MOVE                             R7 R8
       53 CALL                             R6 1 0
       54 GETTABLEKS                       R4 R0 K17 ["pickSignal"]
       56 NAMECALL                         R4 R4 K18 ["Fire"]
       58 CALL                             R4 1 0
       59 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["cancelled"]
        2 JUMPIF                           R2 ; [+3]
        3 GETTABLEKS                       R2 R0 K1 ["pickedSlotIndex"]
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R0 K2 ["orchestrator"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K3 ["getSlot"]
       12 CALL                             R2 2 1
       13 JUMPIFEQKNIL                     R2 ; [+5]
       15 GETTABLEKS                       R3 R2 K4 ["status"]
       17 JUMPIFEQKS                       R3 K5 ["Ready"] ; [+2]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R3 R0 K6 ["previewedIndex"]
       22 JUMPIFNOTEQ                      R3 R1 ; [+2]
       24 RETURN                           R0 0
       25 SETTABLEKS                       R1 R0 K6 ["previewedIndex"]
       27 GETUPVAL                         R3 0
       28 MOVE                             R4 R0
       29 LOADB                            R5 0
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["cancelled"]
        2 JUMPIF                           R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["pickedSlotIndex"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R1 R0 K2 ["previewedIndex"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 RETURN                           R0 0
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K2 ["previewedIndex"]
       15 GETUPVAL                         R1 0
       16 MOVE                             R2 R0
       17 LOADB                            R3 0
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{"slotIndex", "presignedUrl", "thumbnailContent"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["slotIndex"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["presignedUrl"]
        8 SETTABLEKS                       R2 R1 K1 ["presignedUrl"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K4 ["thumbnailTempId"]
       13 SETTABLEKS                       R2 R1 K2 ["thumbnailContent"]
       15 CALL                             R0 1 0
       16 LOADNIL                          R0
       17 RETURN                           R0 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["cancelled"]
        2 JUMPIF                           R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["pickedSlotIndex"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R1 R0 K2 ["previewedIndex"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R0 K3 ["orchestrator"]
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K4 ["getSlot"]
       17 CALL                             R2 2 1
       18 JUMPIFEQKNIL                     R2 ; [+5]
       20 GETTABLEKS                       R3 R2 K5 ["status"]
       22 JUMPIFEQKS                       R3 K6 ["Ready"] ; [+2]
       24 RETURN                           R0 0
       25 SETTABLEKS                       R1 R0 K1 ["pickedSlotIndex"]
       27 GETUPVAL                         R3 0
       28 MOVE                             R4 R0
       29 LOADK                            R5 K7 ["select"]
       30 GETTABLEKS                       R6 R2 K8 ["imageGenerationId"]
       32 CALL                             R3 3 0
       33 GETTABLEKS                       R3 R0 K9 ["options"]
       35 GETTABLEKS                       R3 R3 K10 ["onImageSelected"]
       37 GETUPVAL                         R4 1
       38 GETTABLEKS                       R4 R4 K11 ["FFlagAssistantImageGenImprovements"]
       40 JUMPIFNOT                        R4 ; [+18]
       41 JUMPIFNOT                        R3 ; [+17]
       42 GETIMPORT                        R4 K13 [pcall]
       44 NEWCLOSURE                       R5 P0
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CALL                             R4 1 2
       49 JUMPIF                           R4 ; [+9]
       50 GETIMPORT                        R6 K15 [warn]
       52 LOADK                            R8 K16 ["[ImageSelectionController] onImageSelected handler errored: %*"]
       53 MOVE                             R10 R5
       54 NAMECALL                         R8 R8 K17 ["format"]
       56 CALL                             R8 2 1
       57 MOVE                             R7 R8
       58 CALL                             R6 1 0
       59 GETTABLEKS                       R4 R0 K18 ["pickSignal"]
       61 NAMECALL                         R4 R4 K19 ["Fire"]
       63 CALL                             R4 1 0
       64 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["previewedIndex"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["cancelled"]
        2 JUMPIF                           R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["pickedSlotIndex"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["cancelled"]
       10 GETUPVAL                         R1 0
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["back"]
       13 LOADNIL                          R4
       14 CALL                             R1 3 0
       15 GETTABLEKS                       R1 R0 K3 ["orchestrator"]
       17 NAMECALL                         R1 R1 K4 ["cancel"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K5 ["pickSignal"]
       22 NAMECALL                         R1 R1 K6 ["Fire"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["cancelled"]
        2 JUMPIF                           R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["pickedSlotIndex"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 LOADK                            R3 K2 ["refresh"]
       10 LOADNIL                          R4
       11 CALL                             R1 3 0
       12 GETTABLEKS                       R1 R0 K3 ["orchestrator"]
       14 NAMECALL                         R1 R1 K4 ["start"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 1
       18 MOVE                             R2 R0
       19 LOADB                            R3 1
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["cancelled"]
        2 JUMPIF                           R3 ; [+3]
        3 GETTABLEKS                       R3 R0 K1 ["pickedSlotIndex"]
        5 JUMPIFNOT                        R3 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R0 K2 ["orchestrator"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R3 K3 ["getSlot"]
       12 CALL                             R3 2 1
       13 JUMPIFEQKNIL                     R3 ; [+5]
       15 GETTABLEKS                       R4 R3 K4 ["status"]
       17 JUMPIFEQKS                       R4 K5 ["Ready"] ; [+2]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R4 R3 K6 ["thumbnailBytes"]
       22 JUMPIFNOTEQKNIL                  R4 ; [+11]
       24 GETIMPORT                        R5 K8 [warn]
       26 LOADK                            R7 K9 ["[ImageSelectionController] refine: slot %* is Ready but has no cached bytes"]
       27 MOVE                             R9 R1
       28 NAMECALL                         R7 R7 K10 ["format"]
       30 CALL                             R7 2 1
       31 MOVE                             R6 R7
       32 CALL                             R5 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R5 0
       35 MOVE                             R6 R0
       36 LOADK                            R7 K11 ["refine"]
       37 GETTABLEKS                       R8 R3 K12 ["imageGenerationId"]
       39 CALL                             R5 3 0
       40 LOADNIL                          R5
       41 SETTABLEKS                       R5 R0 K13 ["previewedIndex"]
       43 GETTABLEKS                       R5 R0 K2 ["orchestrator"]
       45 MOVE                             R7 R2
       46 MOVE                             R8 R4
       47 GETTABLEKS                       R9 R3 K12 ["imageGenerationId"]
       49 NAMECALL                         R5 R5 K14 ["startFromImage"]
       51 CALL                             R5 4 0
       52 GETUPVAL                         R5 1
       53 MOVE                             R6 R0
       54 LOADB                            R7 1
       55 CALL                             R5 2 0
       56 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["orchestrator"]
        2 NAMECALL                         R1 R1 K1 ["getSlots"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["orchestrator"]
        2 NAMECALL                         R1 R1 K1 ["start"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 LOADB                            R3 0
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K2 ["pickSignal"]
       11 NAMECALL                         R1 R1 K3 ["Wait"]
       13 CALL                             R1 1 0
       14 GETTABLEKS                       R1 R0 K4 ["cancelled"]
       16 JUMPIFNOT                        R1 ; [+2]
       17 DUPTABLE                         R1 K6 [{["cancelled"] = True}]
       18 RETURN                           R1 1
       19 GETTABLEKS                       R1 R0 K7 ["pickedSlotIndex"]
       21 JUMPIFNOTEQKNIL                  R1 ; [+3]
       23 DUPTABLE                         R2 K11 [{["cancelled"] = False, ["errorMessage"] = "Internal error: no slot picked"}]
       24 RETURN                           R2 1
       25 GETTABLEKS                       R2 R0 K0 ["orchestrator"]
       27 MOVE                             R4 R1
       28 NAMECALL                         R2 R2 K12 ["awaitPickAsync"]
       30 CALL                             R2 2 2
       31 GETTABLEKS                       R4 R0 K0 ["orchestrator"]
       33 NAMECALL                         R4 R4 K13 ["cancel"]
       35 CALL                             R4 1 0
       36 JUMPIF                           R2 ; [+5]
       37 DUPTABLE                         R4 K14 [{["cancelled"] = False, ["errorMessage"]}]
       38 ORK                              R5 R3 K15 ["Failed to fetch selected image"]
       39 SETTABLEKS                       R5 R4 K9 ["errorMessage"]
       41 RETURN                           R4 1
       42 DUPTABLE                         R4 K17 [{["cancelled"] = False, ["imageContent"]}]
       43 SETTABLEKS                       R2 R4 K16 ["imageContent"]
       45 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Signal"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Types"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K1 [script]
       33 LOADK                            R7 K12 ["ImageSelection"]
       34 NAMECALL                         R5 R5 K3 ["FindFirstAncestor"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R5 K13 ["ImageSelectionOrchestrator"]
       41 CALL                             R6 1 1
       42 NEWTABLE                         R7 16 0
       44 SETTABLEKS                       R7 R7 K14 ["__index"]
       46 DUPCLOSURE                       R8 K15 [PROTO_1]
       47 DUPCLOSURE                       R9 K16 [PROTO_2]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R1
       50 DUPCLOSURE                       R10 K17 [PROTO_5]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R1
       57 DUPCLOSURE                       R11 K18 [PROTO_7]
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R11 R7 K19 ["select"]
       62 DUPCLOSURE                       R11 K20 [PROTO_8]
       63 CAPTURE                          VAL R8
       64 SETTABLEKS                       R11 R7 K21 ["previewSlot"]
       66 DUPCLOSURE                       R11 K22 [PROTO_9]
       67 CAPTURE                          VAL R8
       68 SETTABLEKS                       R11 R7 K23 ["clearPreview"]
       70 DUPCLOSURE                       R11 K24 [PROTO_11]
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R11 R7 K25 ["confirm"]
       75 DUPCLOSURE                       R11 K26 [PROTO_12]
       76 SETTABLEKS                       R11 R7 K27 ["getPreviewedIndex"]
       78 DUPCLOSURE                       R11 K28 [PROTO_13]
       79 CAPTURE                          VAL R9
       80 SETTABLEKS                       R11 R7 K29 ["cancel"]
       82 DUPCLOSURE                       R11 K30 [PROTO_14]
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R8
       85 SETTABLEKS                       R11 R7 K31 ["refresh"]
       87 DUPCLOSURE                       R11 K32 [PROTO_15]
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R8
       90 SETTABLEKS                       R11 R7 K33 ["refineAsync"]
       92 DUPCLOSURE                       R11 K34 [PROTO_16]
       93 SETTABLEKS                       R11 R7 K35 ["getSlots"]
       95 DUPCLOSURE                       R11 K36 [PROTO_17]
       96 CAPTURE                          VAL R8
       97 SETTABLEKS                       R11 R7 K37 ["runAsync"]
       99 GETIMPORT                        R11 K40 [table.freeze]
      101 DUPTABLE                         R12 K42 [{"new"}]
      102 SETTABLEKS                       R10 R12 K41 ["new"]
      104 CALL                             R11 1 -1
      105 RETURN                           R11 -1
