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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_3:
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
       60 DUPTABLE                         R4 K28 [{"slotCount", "textPrompt", "model", "pollIntervalSeconds", "timeoutSeconds", "onSlotChanged"}]
       61 SETTABLEKS                       R1 R4 K11 ["slotCount"]
       63 GETTABLEKS                       R5 R0 K0 ["textPrompt"]
       65 SETTABLEKS                       R5 R4 K0 ["textPrompt"]
       67 GETTABLEKS                       R5 R0 K24 ["model"]
       69 SETTABLEKS                       R5 R4 K24 ["model"]
       71 GETTABLEKS                       R5 R0 K25 ["pollIntervalSeconds"]
       73 SETTABLEKS                       R5 R4 K25 ["pollIntervalSeconds"]
       75 GETTABLEKS                       R5 R0 K26 ["timeoutSeconds"]
       77 SETTABLEKS                       R5 R4 K26 ["timeoutSeconds"]
       79 NEWCLOSURE                       R5 P0
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R5 R4 K27 ["onSlotChanged"]
       84 CALL                             R3 1 1
       85 SETTABLEKS                       R3 R2 K13 ["orchestrator"]
       87 RETURN                           R2 1

PROTO_4:
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

PROTO_5:
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
       22 GETTABLEKS                       R3 R0 K6 ["options"]
       24 GETTABLEKS                       R3 R3 K7 ["onImageSelected"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K8 ["FFlagAssistantImageGenImprovements"]
       29 JUMPIFNOT                        R4 ; [+18]
       30 JUMPIFNOT                        R3 ; [+17]
       31 GETIMPORT                        R4 K10 [pcall]
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CALL                             R4 1 2
       38 JUMPIF                           R4 ; [+9]
       39 GETIMPORT                        R6 K12 [warn]
       41 LOADK                            R8 K13 ["[ImageSelectionController] onImageSelected handler errored: %*"]
       42 MOVE                             R10 R5
       43 NAMECALL                         R8 R8 K14 ["format"]
       45 CALL                             R8 2 1
       46 MOVE                             R7 R8
       47 CALL                             R6 1 0
       48 GETTABLEKS                       R4 R0 K15 ["pickSignal"]
       50 NAMECALL                         R4 R4 K16 ["Fire"]
       52 CALL                             R4 1 0
       53 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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
       27 GETTABLEKS                       R3 R0 K7 ["options"]
       29 GETTABLEKS                       R3 R3 K8 ["onImageSelected"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K9 ["FFlagAssistantImageGenImprovements"]
       34 JUMPIFNOT                        R4 ; [+18]
       35 JUMPIFNOT                        R3 ; [+17]
       36 GETIMPORT                        R4 K11 [pcall]
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 CALL                             R4 1 2
       43 JUMPIF                           R4 ; [+9]
       44 GETIMPORT                        R6 K13 [warn]
       46 LOADK                            R8 K14 ["[ImageSelectionController] onImageSelected handler errored: %*"]
       47 MOVE                             R10 R5
       48 NAMECALL                         R8 R8 K15 ["format"]
       50 CALL                             R8 2 1
       51 MOVE                             R7 R8
       52 CALL                             R6 1 0
       53 GETTABLEKS                       R4 R0 K16 ["pickSignal"]
       55 NAMECALL                         R4 R4 K17 ["Fire"]
       57 CALL                             R4 1 0
       58 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["previewedIndex"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["cancelled"]
        2 JUMPIF                           R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["pickedSlotIndex"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["cancelled"]
       10 GETTABLEKS                       R1 R0 K2 ["orchestrator"]
       12 NAMECALL                         R1 R1 K3 ["cancel"]
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K4 ["pickSignal"]
       17 NAMECALL                         R1 R1 K5 ["Fire"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["cancelled"]
        2 JUMPIF                           R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["pickedSlotIndex"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R1 R0 K2 ["orchestrator"]
        9 NAMECALL                         R1 R1 K3 ["start"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 MOVE                             R2 R0
       14 LOADB                            R3 1
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_13:
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
       34 LOADNIL                          R5
       35 SETTABLEKS                       R5 R0 K11 ["previewedIndex"]
       37 GETTABLEKS                       R5 R0 K2 ["orchestrator"]
       39 MOVE                             R7 R2
       40 MOVE                             R8 R4
       41 NAMECALL                         R5 R5 K12 ["startFromImage"]
       43 CALL                             R5 3 0
       44 GETUPVAL                         R5 0
       45 MOVE                             R6 R0
       46 LOADB                            R7 1
       47 CALL                             R5 2 0
       48 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["orchestrator"]
        2 NAMECALL                         R1 R1 K1 ["getSlots"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_15:
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
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Signal"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Types"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K1 [script]
       26 LOADK                            R6 K10 ["ImageSelection"]
       27 NAMECALL                         R4 R4 K3 ["FindFirstAncestor"]
       29 CALL                             R4 2 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R4 K11 ["ImageSelectionOrchestrator"]
       34 CALL                             R5 1 1
       35 NEWTABLE                         R6 16 0
       37 SETTABLEKS                       R6 R6 K12 ["__index"]
       39 DUPCLOSURE                       R7 K13 [PROTO_1]
       40 DUPCLOSURE                       R8 K14 [PROTO_3]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R7
       45 DUPCLOSURE                       R9 K15 [PROTO_5]
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R9 R6 K16 ["select"]
       49 DUPCLOSURE                       R9 K17 [PROTO_6]
       50 CAPTURE                          VAL R7
       51 SETTABLEKS                       R9 R6 K18 ["previewSlot"]
       53 DUPCLOSURE                       R9 K19 [PROTO_7]
       54 CAPTURE                          VAL R7
       55 SETTABLEKS                       R9 R6 K20 ["clearPreview"]
       57 DUPCLOSURE                       R9 K21 [PROTO_9]
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R9 R6 K22 ["confirm"]
       61 DUPCLOSURE                       R9 K23 [PROTO_10]
       62 SETTABLEKS                       R9 R6 K24 ["getPreviewedIndex"]
       64 DUPCLOSURE                       R9 K25 [PROTO_11]
       65 SETTABLEKS                       R9 R6 K26 ["cancel"]
       67 DUPCLOSURE                       R9 K27 [PROTO_12]
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R9 R6 K28 ["refresh"]
       71 DUPCLOSURE                       R9 K29 [PROTO_13]
       72 CAPTURE                          VAL R7
       73 SETTABLEKS                       R9 R6 K30 ["refineAsync"]
       75 DUPCLOSURE                       R9 K31 [PROTO_14]
       76 SETTABLEKS                       R9 R6 K32 ["getSlots"]
       78 DUPCLOSURE                       R9 K33 [PROTO_15]
       79 CAPTURE                          VAL R7
       80 SETTABLEKS                       R9 R6 K34 ["runAsync"]
       82 GETIMPORT                        R9 K37 [table.freeze]
       84 DUPTABLE                         R10 K39 [{"new"}]
       85 SETTABLEKS                       R8 R10 K38 ["new"]
       87 CALL                             R9 1 -1
       88 RETURN                           R9 -1
