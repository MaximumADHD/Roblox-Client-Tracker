PROTO_0:
        0 DUPTABLE                         R0 K11 [{[1] = "Idle", ["requestId"] = "", ["prompt"] = "", ["model"] = "", ["slots"], ["pickedSlotIndex"] = , ["errorMessage"] = , ["failureReason"] = }]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K6 ["slots"]
        5 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 LOADN                            R1 4
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 DUPTABLE                         R6 K3 [{[1], ["status"] = "Pending"}]
        7 SETTABLEKS                       R3 R6 K0 ["index"]
        9 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
       11 MOVE                             R5 R0
       12 GETIMPORT                        R4 K6 [table.insert]
       14 CALL                             R4 2 0
       15 FORNLOOP                         R1
       16 RETURN                           R0 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["Ready"] ; [+3]
        2 LOADK                            R1 K0 ["Ready"]
        3 RETURN                           R1 1
        4 JUMPIFEQKS                       R0 K1 ["Failed"] ; [+3]
        6 JUMPIFNOTEQKS                    R0 K2 ["Cancelled"] ; [+3]
        8 LOADK                            R1 K1 ["Failed"]
        9 RETURN                           R1 1
       10 JUMPIFNOTEQKS                    R0 K3 ["Generating"] ; [+3]
       12 LOADK                            R1 K4 ["Downloading"]
       13 RETURN                           R1 1
       14 LOADK                            R1 K5 ["Pending"]
       15 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["thumbnailTempId"]
        2 GETTABLEKS                       R2 R0 K1 ["thumbnailBase64"]
        4 DUPTABLE                         R3 K11 [{["index"], ["status"], ["presignedUrl"], ["imageId"], ["imageBase64"], ["mimeType"] = "image/png", ["errorMessage"], ["failureReason"]}]
        5 GETTABLEKS                       R4 R0 K2 ["index"]
        7 SETTABLEKS                       R4 R3 K2 ["index"]
        9 GETTABLEKS                       R5 R0 K3 ["status"]
       11 JUMPIFNOTEQKS                    R5 K12 ["Ready"] ; [+3]
       13 LOADK                            R4 K12 ["Ready"]
       14 JUMP                             ; [+11]
       15 JUMPIFEQKS                       R5 K13 ["Failed"] ; [+3]
       17 JUMPIFNOTEQKS                    R5 K14 ["Cancelled"] ; [+3]
       19 LOADK                            R4 K13 ["Failed"]
       20 JUMP                             ; [+5]
       21 JUMPIFNOTEQKS                    R5 K15 ["Generating"] ; [+3]
       23 LOADK                            R4 K16 ["Downloading"]
       24 JUMP                             ; [+1]
       25 LOADK                            R4 K17 ["Pending"]
       26 SETTABLEKS                       R4 R3 K3 ["status"]
       28 GETTABLEKS                       R4 R0 K4 ["presignedUrl"]
       30 SETTABLEKS                       R4 R3 K4 ["presignedUrl"]
       32 SETTABLEKS                       R1 R3 K5 ["imageId"]
       34 SETTABLEKS                       R2 R3 K6 ["imageBase64"]
       36 GETTABLEKS                       R4 R0 K9 ["errorMessage"]
       38 SETTABLEKS                       R4 R3 K9 ["errorMessage"]
       40 GETTABLEKS                       R5 R0 K3 ["status"]
       42 JUMPIFNOTEQKS                    R5 K13 ["Failed"] ; [+10]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K18 ["GenerationUtils"]
       47 GETTABLEKS                       R4 R4 K19 ["classifyFailureReason"]
       49 GETTABLEKS                       R5 R0 K9 ["errorMessage"]
       51 CALL                             R4 1 1
       52 JUMP                             ; [+1]
       53 LOADNIL                          R4
       54 SETTABLEKS                       R4 R3 K10 ["failureReason"]
       56 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["requestId"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+2]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R2
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["cancel"]
        8 CALL                             R5 0 0
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["current"]
       12 LOADNIL                          R6
       13 SETTABLE                         R6 R5 R3
       14 FORGLOOP                         R0 2 ; [-9]
       16 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ok"]
        3 JUMPIFNOT                        R1 ; [+22]
        4 DUPTABLE                         R1 K11 [{["stage"] = "Inserting", ["requestId"], ["prompt"], ["model"], ["slots"], ["pickedSlotIndex"], ["errorMessage"] = , ["failureReason"] = }]
        5 GETTABLEKS                       R2 R0 K3 ["requestId"]
        7 SETTABLEKS                       R2 R1 K3 ["requestId"]
        9 GETTABLEKS                       R2 R0 K4 ["prompt"]
       11 SETTABLEKS                       R2 R1 K4 ["prompt"]
       13 GETTABLEKS                       R2 R0 K5 ["model"]
       15 SETTABLEKS                       R2 R1 K5 ["model"]
       17 GETTABLEKS                       R2 R0 K6 ["slots"]
       19 SETTABLEKS                       R2 R1 K6 ["slots"]
       21 GETTABLEKS                       R2 R0 K7 ["pickedSlotIndex"]
       23 SETTABLEKS                       R2 R1 K7 ["pickedSlotIndex"]
       25 RETURN                           R1 1
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K8 ["errorMessage"]
       29 ORK                              R1 R2 K12 ["Texture generation failed"]
       30 DUPTABLE                         R2 K14 [{["stage"] = "Failed", ["requestId"], ["prompt"], ["model"], ["slots"], ["pickedSlotIndex"], ["errorMessage"], ["failureReason"]}]
       31 GETTABLEKS                       R3 R0 K3 ["requestId"]
       33 SETTABLEKS                       R3 R2 K3 ["requestId"]
       35 GETTABLEKS                       R3 R0 K4 ["prompt"]
       37 SETTABLEKS                       R3 R2 K4 ["prompt"]
       39 GETTABLEKS                       R3 R0 K5 ["model"]
       41 SETTABLEKS                       R3 R2 K5 ["model"]
       43 GETTABLEKS                       R3 R0 K6 ["slots"]
       45 SETTABLEKS                       R3 R2 K6 ["slots"]
       47 GETTABLEKS                       R3 R0 K7 ["pickedSlotIndex"]
       49 SETTABLEKS                       R3 R2 K7 ["pickedSlotIndex"]
       51 SETTABLEKS                       R1 R2 K8 ["errorMessage"]
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R3 R3 K15 ["GenerationUtils"]
       56 GETTABLEKS                       R3 R3 K16 ["classifyFailureReason"]
       58 MOVE                             R4 R1
       59 CALL                             R3 1 1
       60 SETTABLEKS                       R3 R2 K10 ["failureReason"]
       62 RETURN                           R2 1

PROTO_10:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R3 R1 K3 ["requestId"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K1 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFEQKS                       R2 K4 ["string"] ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R1 K3 ["requestId"]
       18 GETTABLEKS                       R3 R1 K5 ["ok"]
       20 JUMPIFNOT                        R3 ; [+16]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K6 ["current"]
       24 GETTABLE                         R3 R4 R2
       25 JUMPIFNOT                        R3 ; [+11]
       26 GETUPVAL                         R3 1
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K7 ["InsertTexturedModel"]
       30 LOADNIL                          R6
       31 DUPTABLE                         R7 K8 [{"requestId"}]
       32 SETTABLEKS                       R2 R7 K3 ["requestId"]
       34 NAMECALL                         R3 R3 K9 ["FireHost"]
       36 CALL                             R3 4 0
       37 NEWCLOSURE                       R3 P0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U3
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K6 ["current"]
       43 GETTABLE                         R4 R5 R2
       44 JUMPIF                           R4 ; [+1]
       45 RETURN                           R0 0
       46 GETUPVAL                         R5 4
       47 MOVE                             R6 R4
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CALL                             R5 2 0
       52 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ok"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["errorMessage"]
       10 ORK                              R1 R2 K1 ["Insertion failed"]
       11 DUPTABLE                         R2 K11 [{["stage"] = "Failed", ["requestId"], ["prompt"], ["model"], ["slots"], ["pickedSlotIndex"], ["errorMessage"], ["failureReason"]}]
       12 GETTABLEKS                       R3 R0 K5 ["requestId"]
       14 SETTABLEKS                       R3 R2 K5 ["requestId"]
       16 GETTABLEKS                       R3 R0 K6 ["prompt"]
       18 SETTABLEKS                       R3 R2 K6 ["prompt"]
       20 GETTABLEKS                       R3 R0 K7 ["model"]
       22 SETTABLEKS                       R3 R2 K7 ["model"]
       24 GETTABLEKS                       R3 R0 K8 ["slots"]
       26 SETTABLEKS                       R3 R2 K8 ["slots"]
       28 GETTABLEKS                       R3 R0 K9 ["pickedSlotIndex"]
       30 SETTABLEKS                       R3 R2 K9 ["pickedSlotIndex"]
       32 SETTABLEKS                       R1 R2 K2 ["errorMessage"]
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R3 R3 K12 ["GenerationUtils"]
       37 GETTABLEKS                       R3 R3 K13 ["classifyFailureReason"]
       39 MOVE                             R4 R1
       40 CALL                             R3 1 1
       41 SETTABLEKS                       R3 R2 K10 ["failureReason"]
       43 RETURN                           R2 1

PROTO_12:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R3 R1 K3 ["requestId"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K1 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFEQKS                       R2 K4 ["string"] ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R1 K3 ["requestId"]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K5 ["current"]
       25 GETTABLE                         R4 R5 R2
       26 JUMPIF                           R4 ; [+1]
       27 JUMP                             ; [+6]
       28 GETUPVAL                         R5 3
       29 MOVE                             R6 R4
       30 NEWCLOSURE                       R7 P1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CALL                             R5 2 0
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R3 R3 K5 ["current"]
       37 LOADNIL                          R4
       38 SETTABLE                         R4 R3 R2
       39 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["TextureGenerationComplete"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
       15 CALL                             R0 3 2
       16 GETUPVAL                         R2 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K2 ["InsertComplete"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U4
       25 NAMECALL                         R2 R2 K1 ["OnGuestEvent"]
       27 CALL                             R2 3 2
       28 NEWCLOSURE                       R4 P2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 RETURN                           R4 1

PROTO_15:
        0 DUPTABLE                         R0 K10 [{[1] = "GeneratingImages", ["requestId"], ["prompt"], ["model"], ["slots"], ["pickedSlotIndex"] = , ["errorMessage"] = , ["failureReason"] = }]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K2 ["requestId"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K3 ["prompt"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K4 ["model"]
       10 GETUPVAL                         R1 3
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K5 ["slots"]
       14 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["PrepareGeneration"]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 2
        6 NAMECALL                         R0 R0 K1 ["InvokeHostAsync"]
        8 CALL                             R0 4 -1
        9 RETURN                           R0 -1

PROTO_17:
        0 DUPTABLE                         R1 K9 [{[1] = "Failed", ["requestId"], ["prompt"], ["model"], ["slots"], ["pickedSlotIndex"], ["errorMessage"], ["failureReason"]}]
        1 GETTABLEKS                       R2 R0 K2 ["requestId"]
        3 SETTABLEKS                       R2 R1 K2 ["requestId"]
        5 GETTABLEKS                       R2 R0 K3 ["prompt"]
        7 SETTABLEKS                       R2 R1 K3 ["prompt"]
        9 GETTABLEKS                       R2 R0 K4 ["model"]
       11 SETTABLEKS                       R2 R1 K4 ["model"]
       13 GETTABLEKS                       R2 R0 K5 ["slots"]
       15 SETTABLEKS                       R2 R1 K5 ["slots"]
       17 GETTABLEKS                       R2 R0 K6 ["pickedSlotIndex"]
       19 SETTABLEKS                       R2 R1 K6 ["pickedSlotIndex"]
       21 GETUPVAL                         R2 0
       22 SETTABLEKS                       R2 R1 K7 ["errorMessage"]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K10 ["GenerationUtils"]
       27 GETTABLEKS                       R2 R2 K11 ["classifyFailureReason"]
       29 GETUPVAL                         R3 0
       30 CALL                             R2 1 1
       31 SETTABLEKS                       R2 R1 K8 ["failureReason"]
       33 RETURN                           R1 1

PROTO_18:
        0 DUPTABLE                         R1 K10 [{[1] = "Failed", ["requestId"], ["prompt"], ["model"], ["slots"], ["pickedSlotIndex"], ["errorMessage"] = "Host PrepareGeneration response missing fields", ["failureReason"]}]
        1 GETTABLEKS                       R2 R0 K2 ["requestId"]
        3 SETTABLEKS                       R2 R1 K2 ["requestId"]
        5 GETTABLEKS                       R2 R0 K3 ["prompt"]
        7 SETTABLEKS                       R2 R1 K3 ["prompt"]
        9 GETTABLEKS                       R2 R0 K4 ["model"]
       11 SETTABLEKS                       R2 R1 K4 ["model"]
       13 GETTABLEKS                       R2 R0 K5 ["slots"]
       15 SETTABLEKS                       R2 R1 K5 ["slots"]
       17 GETTABLEKS                       R2 R0 K6 ["pickedSlotIndex"]
       19 SETTABLEKS                       R2 R1 K6 ["pickedSlotIndex"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K11 ["GenerationUtils"]
       24 GETTABLEKS                       R2 R2 K12 ["classifyFailureReason"]
       26 LOADK                            R3 K8 ["Host PrepareGeneration response missing fields"]
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R1 K9 ["failureReason"]
       30 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R2 R1 K0 ["requestId"]
        5 GETUPVAL                         R3 1
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 RETURN                           R0 1
        9 GETIMPORT                        R2 K3 [table.clone]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 LOADNIL                          R4
       15 SETTABLE                         R4 R2 R3
       16 GETUPVAL                         R3 2
       17 SETTABLE                         R1 R2 R3
       18 RETURN                           R2 1

PROTO_20:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["slots"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 SETTABLE                         R3 R1 R2
        8 GETTABLEKS                       R2 R0 K4 ["stage"]
       10 GETTABLEKS                       R3 R0 K4 ["stage"]
       12 JUMPIFNOTEQKS                    R3 K5 ["GeneratingImages"] ; [+7]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K6 ["status"]
       17 JUMPIFNOTEQKS                    R3 K7 ["Ready"] ; [+2]
       19 LOADK                            R2 K8 ["PickingImage"]
       20 DUPTABLE                         R3 K15 [{"stage", "requestId", "prompt", "model", "slots", "pickedSlotIndex", "errorMessage", "failureReason"}]
       21 SETTABLEKS                       R2 R3 K4 ["stage"]
       23 GETTABLEKS                       R4 R0 K9 ["requestId"]
       25 SETTABLEKS                       R4 R3 K9 ["requestId"]
       27 GETTABLEKS                       R4 R0 K10 ["prompt"]
       29 SETTABLEKS                       R4 R3 K10 ["prompt"]
       31 GETTABLEKS                       R4 R0 K11 ["model"]
       33 SETTABLEKS                       R4 R3 K11 ["model"]
       35 SETTABLEKS                       R1 R3 K3 ["slots"]
       37 GETTABLEKS                       R4 R0 K12 ["pickedSlotIndex"]
       39 SETTABLEKS                       R4 R3 K12 ["pickedSlotIndex"]
       41 GETTABLEKS                       R4 R0 K13 ["errorMessage"]
       43 SETTABLEKS                       R4 R3 K13 ["errorMessage"]
       45 GETTABLEKS                       R4 R0 K14 ["failureReason"]
       47 SETTABLEKS                       R4 R3 K14 ["failureReason"]
       49 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R2 K0 ["status"]
        6 SETTABLE                         R4 R3 R0
        7 GETUPVAL                         R3 2
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R1
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R6 R6 K1 ["current"]
       15 GETTABLE                         R5 R6 R3
       16 JUMPIF                           R5 ; [+1]
       17 JUMP                             ; [+6]
       18 GETUPVAL                         R6 4
       19 MOVE                             R7 R5
       20 NEWCLOSURE                       R8 P1
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R4
       23 CALL                             R6 2 0
       24 GETUPVAL                         R3 5
       25 JUMPIFNOT                        R3 ; [+1]
       26 RETURN                           R0 0
       27 LOADB                            R3 1
       28 LOADB                            R4 0
       29 GETUPVAL                         R5 1
       30 LOADNIL                          R6
       31 LOADNIL                          R7
       32 FORGPREP                         R5
       33 JUMPIFNOTEQKS                    R9 K2 ["Ready"] ; [+3]
       35 LOADB                            R4 1
       36 JUMP                             ; [+3]
       37 JUMPIFEQKS                       R9 K3 ["Failed"] ; [+2]
       39 LOADB                            R3 0
       40 FORGLOOP                         R5 2 ; [-8]
       42 GETUPVAL                         R7 6
       43 GETTABLEKS                       R7 R7 K1 ["current"]
       45 GETUPVAL                         R8 7
       46 GETTABLE                         R6 R7 R8
       47 GETUPVAL                         R7 8
       48 JUMPIFEQ                         R6 R7 ; [+2]
       50 LOADB                            R5 0 +1
       51 LOADB                            R5 1
       52 JUMPIF                           R4 ; [+1]
       53 JUMPIFNOT                        R3 ; [+17]
       54 JUMPIFNOT                        R5 ; [+16]
       55 LOADB                            R6 1
       56 SETUPVAL                         R6 5
       57 GETUPVAL                         R6 9
       58 GETUPVAL                         R8 10
       59 GETTABLEKS                       R8 R8 K4 ["ImagePreviewGenerationComplete"]
       61 LOADNIL                          R9
       62 DUPTABLE                         R10 K7 [{"uniqueId", "hasUsableImages"}]
       63 GETUPVAL                         R11 7
       64 SETTABLEKS                       R11 R10 K5 ["uniqueId"]
       66 SETTABLEKS                       R4 R10 K6 ["hasUsableImages"]
       68 NAMECALL                         R6 R6 K8 ["FireHost"]
       70 CALL                             R6 4 0
       71 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+10]
        8 FASTCALL1                        TYPEOF R1 ; [+3]
        9 MOVE                             R3 R1
       10 GETIMPORT                        R2 K3 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K4 ["table"] ; [+4]
       15 GETTABLEKS                       R2 R1 K5 ["ok"]
       17 JUMPIF                           R2 ; [+33]
       18 FASTCALL1                        TYPEOF R1 ; [+3]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R3 K3 [typeof]
       22 CALL                             R3 1 1
       23 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+5]
       25 GETTABLEKS                       R3 R1 K7 ["errorMessage"]
       27 ORK                              R2 R3 K6 ["Host seed capture failed"]
       28 JUMP                             ; [+5]
       29 FASTCALL1                        TOSTRING R1 ; [+3]
       30 MOVE                             R3 R1
       31 GETIMPORT                        R2 K9 [tostring]
       33 CALL                             R2 1 1
       34 GETUPVAL                         R3 3
       35 NEWCLOSURE                       R4 P1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U4
       38 GETUPVAL                         R6 5
       39 GETTABLEKS                       R6 R6 K10 ["current"]
       41 GETTABLE                         R5 R6 R3
       42 JUMPIF                           R5 ; [+1]
       43 RETURN                           R0 0
       44 GETUPVAL                         R6 6
       45 MOVE                             R7 R5
       46 NEWCLOSURE                       R8 P2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CALL                             R6 2 0
       50 RETURN                           R0 0
       51 GETTABLEKS                       R2 R1 K11 ["seedImageBase64"]
       53 GETTABLEKS                       R3 R1 K12 ["selectedUniqueId"]
       55 FASTCALL1                        TYPEOF R2 ; [+3]
       56 MOVE                             R5 R2
       57 GETIMPORT                        R4 K3 [typeof]
       59 CALL                             R4 1 1
       60 JUMPIFNOTEQKS                    R4 K13 ["string"] ; [+8]
       62 FASTCALL1                        TYPEOF R3 ; [+3]
       63 MOVE                             R5 R3
       64 GETIMPORT                        R4 K3 [typeof]
       66 CALL                             R4 1 1
       67 JUMPIFEQKS                       R4 K13 ["string"] ; [+17]
       69 GETUPVAL                         R4 3
       70 DUPCLOSURE                       R5 K14 [PROTO_18]
       71 CAPTURE                          UPVAL U4
       72 GETUPVAL                         R7 5
       73 GETTABLEKS                       R7 R7 K10 ["current"]
       75 GETTABLE                         R6 R7 R4
       76 JUMPIF                           R6 ; [+1]
       77 RETURN                           R0 0
       78 GETUPVAL                         R7 6
       79 MOVE                             R8 R6
       80 NEWCLOSURE                       R9 P2
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R5
       83 CALL                             R7 2 0
       84 RETURN                           R0 0
       85 GETUPVAL                         R4 7
       86 JUMPIFEQ                         R3 R4 ; [+28]
       88 GETUPVAL                         R4 8
       89 NEWCLOSURE                       R5 P4
       90 CAPTURE                          UPVAL U7
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          VAL R3
       93 CALL                             R4 1 0
       94 GETUPVAL                         R5 9
       95 GETTABLEKS                       R5 R5 K10 ["current"]
       97 GETUPVAL                         R6 7
       98 GETTABLE                         R4 R5 R6
       99 JUMPIFNOT                        R4 ; [+10]
      100 GETUPVAL                         R5 9
      101 GETTABLEKS                       R5 R5 K10 ["current"]
      103 GETUPVAL                         R6 7
      104 LOADNIL                          R7
      105 SETTABLE                         R7 R5 R6
      106 GETUPVAL                         R5 9
      107 GETTABLEKS                       R5 R5 K10 ["current"]
      109 SETTABLE                         R4 R5 R3
      110 GETUPVAL                         R5 5
      111 GETTABLEKS                       R5 R5 K10 ["current"]
      113 GETUPVAL                         R6 3
      114 SETTABLE                         R3 R5 R6
      115 GETUPVAL                         R4 10
      116 GETIMPORT                        R6 K17 [buffer.fromstring]
      118 MOVE                             R7 R2
      119 CALL                             R6 1 -1
      120 NAMECALL                         R4 R4 K18 ["Base64Decode"]
      122 CALL                             R4 -1 1
      123 GETUPVAL                         R6 11
      124 GETTABLEKS                       R6 R6 K19 ["getFFlagTextureGenImageGenPromptTemplateEnabled"]
      126 CALL                             R6 0 1
      127 JUMPIFNOT                        R6 ; [+10]
      128 GETUPVAL                         R5 12
      129 GETTABLEKS                       R5 R5 K20 ["apply"]
      131 GETUPVAL                         R6 11
      132 GETTABLEKS                       R6 R6 K21 ["getFStringTextureGenImageGenPromptTemplate"]
      134 CALL                             R6 0 1
      135 GETUPVAL                         R7 2
      136 CALL                             R5 2 1
      137 JUMP                             ; [+1]
      138 GETUPVAL                         R5 2
      139 NEWTABLE                         R6 0 0
      141 LOADK                            R7 K22 ["Pending"]
      142 SETTABLEN                        R7 R6 1
      143 LOADK                            R7 K22 ["Pending"]
      144 SETTABLEN                        R7 R6 2
      145 LOADK                            R7 K22 ["Pending"]
      146 SETTABLEN                        R7 R6 3
      147 LOADK                            R7 K22 ["Pending"]
      148 SETTABLEN                        R7 R6 4
      149 LOADB                            R7 0
      150 LOADNIL                          R8
      151 GETUPVAL                         R9 13
      152 GETTABLEKS                       R9 R9 K23 ["createOrchestrator"]
      154 GETUPVAL                         R10 14
      155 CALL                             R10 0 1
      156 DUPTABLE                         R11 K35 [{["slotCount"] = 4, ["textPrompt"], ["model"], ["seedImage"], ["extraImages"], ["pollIntervalSeconds"] = 2, ["timeoutSeconds"] = 180, ["onSlotChanged"]}]
      157 SETTABLEKS                       R5 R11 K26 ["textPrompt"]
      159 GETUPVAL                         R12 11
      160 GETTABLEKS                       R12 R12 K36 ["getFStringAssistantTextureGenImageGenModelOverride"]
      162 CALL                             R12 0 1
      163 SETTABLEKS                       R12 R11 K27 ["model"]
      165 SETTABLEKS                       R4 R11 K28 ["seedImage"]
      167 GETUPVAL                         R12 15
      168 SETTABLEKS                       R12 R11 K29 ["extraImages"]
      170 NEWCLOSURE                       R12 P5
      171 CAPTURE                          UPVAL U16
      172 CAPTURE                          VAL R6
      173 CAPTURE                          UPVAL U3
      174 CAPTURE                          UPVAL U5
      175 CAPTURE                          UPVAL U6
      176 CAPTURE                          REF R7
      177 CAPTURE                          UPVAL U9
      178 CAPTURE                          VAL R3
      179 CAPTURE                          REF R8
      180 CAPTURE                          UPVAL U0
      181 CAPTURE                          UPVAL U1
      182 SETTABLEKS                       R12 R11 K34 ["onSlotChanged"]
      184 CALL                             R9 2 1
      185 MOVE                             R8 R9
      186 GETUPVAL                         R9 9
      187 GETTABLEKS                       R9 R9 K10 ["current"]
      189 SETTABLE                         R8 R9 R3
      190 GETTABLEKS                       R9 R8 K37 ["start"]
      192 CALL                             R9 0 0
      193 CLOSEUPVALS                      R7
      194 RETURN                           R0 0

PROTO_23:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+1]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["toImageGenEntries"]
        6 MOVE                             R5 R2
        7 CALL                             R4 1 1
        8 GETUPVAL                         R5 2
        9 JUMPIFNOT                        R5 ; [+4]
       10 JUMPIFNOTEQKS                    R0 K1 [""] ; [+4]
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R5 3
       16 LOADB                            R7 0
       17 NAMECALL                         R5 R5 K2 ["GenerateGUID"]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K3 ["resolveWirePrompt"]
       23 MOVE                             R7 R0
       24 CALL                             R6 1 1
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R8 R8 K4 ["current"]
       28 JUMPIFEQKS                       R8 K1 [""] ; [+5]
       30 GETUPVAL                         R7 4
       31 GETTABLEKS                       R7 R7 K4 ["current"]
       33 JUMP                             ; [+1]
       34 MOVE                             R7 R5
       35 GETUPVAL                         R8 5
       36 GETTABLEKS                       R8 R8 K4 ["current"]
       38 SETTABLE                         R7 R8 R5
       39 GETUPVAL                         R9 6
       40 GETTABLEKS                       R9 R9 K4 ["current"]
       42 GETTABLE                         R8 R9 R7
       43 JUMPIFNOT                        R8 ; [+8]
       44 GETTABLEKS                       R9 R8 K5 ["cancel"]
       46 CALL                             R9 0 0
       47 GETUPVAL                         R9 6
       48 GETTABLEKS                       R9 R9 K4 ["current"]
       50 LOADNIL                          R10
       51 SETTABLE                         R10 R9 R7
       52 GETUPVAL                         R9 7
       53 MOVE                             R10 R7
       54 NEWCLOSURE                       R11 P0
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R3
       58 CAPTURE                          UPVAL U8
       59 CALL                             R9 2 0
       60 GETIMPORT                        R9 K8 [task.spawn]
       62 NEWCLOSURE                       R10 P1
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          UPVAL U9
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R5
       67 CAPTURE                          UPVAL U10
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          VAL R7
       71 CAPTURE                          UPVAL U11
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          UPVAL U12
       74 CAPTURE                          UPVAL U13
       75 CAPTURE                          UPVAL U14
       76 CAPTURE                          UPVAL U15
       77 CAPTURE                          UPVAL U16
       78 CAPTURE                          VAL R4
       79 CAPTURE                          UPVAL U17
       80 CALL                             R9 1 0
       81 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R0 K10 [{[1] = "GeneratingTexture", ["requestId"], ["prompt"], ["model"], ["slots"], ["pickedSlotIndex"], ["errorMessage"] = , ["failureReason"] = }]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["requestId"]
        4 SETTABLEKS                       R1 R0 K2 ["requestId"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["prompt"]
        9 SETTABLEKS                       R1 R0 K3 ["prompt"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K4 ["model"]
       14 SETTABLEKS                       R1 R0 K4 ["model"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K5 ["slots"]
       19 SETTABLEKS                       R1 R0 K5 ["slots"]
       21 GETUPVAL                         R1 1
       22 SETTABLEKS                       R1 R0 K6 ["pickedSlotIndex"]
       24 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K0 ["current"]
       12 GETTABLE                         R2 R3 R1
       13 JUMPIFNOT                        R2 ; [+4]
       14 GETTABLEKS                       R3 R2 K2 ["stage"]
       16 JUMPIFEQKS                       R3 K3 ["PickingImage"] ; [+2]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R4 R2 K4 ["slots"]
       21 GETTABLE                         R3 R4 R0
       22 JUMPIFNOT                        R3 ; [+4]
       23 GETTABLEKS                       R4 R3 K5 ["status"]
       25 JUMPIFEQKS                       R4 K6 ["Ready"] ; [+2]
       27 RETURN                           R0 0
       28 GETTABLEKS                       R5 R3 K7 ["imageBase64"]
       30 FASTCALL1                        TYPEOF R5 ; [+2]
       31 GETIMPORT                        R4 K9 [typeof]
       33 CALL                             R4 1 1
       34 JUMPIFNOTEQKS                    R4 K10 ["string"] ; [+5]
       36 GETTABLEKS                       R4 R3 K7 ["imageBase64"]
       38 JUMPIFNOTEQKS                    R4 K1 [""] ; [+2]
       40 RETURN                           R0 0
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K0 ["current"]
       44 GETTABLE                         R4 R5 R1
       45 JUMPIFNOT                        R4 ; [+8]
       46 GETTABLEKS                       R5 R4 K11 ["cancel"]
       48 CALL                             R5 0 0
       49 GETUPVAL                         R5 3
       50 GETTABLEKS                       R5 R5 K0 ["current"]
       52 LOADNIL                          R6
       53 SETTABLE                         R6 R5 R1
       54 GETUPVAL                         R5 4
       55 MOVE                             R6 R1
       56 NEWCLOSURE                       R7 P0
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R0
       59 CALL                             R5 2 0
       60 GETUPVAL                         R5 0
       61 GETUPVAL                         R7 5
       62 GETTABLEKS                       R7 R7 K12 ["PickImageAndGenerateTexture"]
       64 LOADNIL                          R8
       65 DUPTABLE                         R9 K19 [{"requestId", "slotIndex", "imageBase64", "mimeType", "prompt", "selectedUniqueId", "model"}]
       66 GETTABLEKS                       R10 R2 K13 ["requestId"]
       68 SETTABLEKS                       R10 R9 K13 ["requestId"]
       70 SETTABLEKS                       R0 R9 K14 ["slotIndex"]
       72 GETTABLEKS                       R10 R3 K7 ["imageBase64"]
       74 SETTABLEKS                       R10 R9 K7 ["imageBase64"]
       76 GETTABLEKS                       R11 R3 K15 ["mimeType"]
       78 ORK                              R10 R11 K20 ["image/png"]
       79 SETTABLEKS                       R10 R9 K15 ["mimeType"]
       81 GETUPVAL                         R10 6
       82 GETTABLEKS                       R10 R10 K21 ["resolveWirePrompt"]
       84 GETTABLEKS                       R11 R2 K16 ["prompt"]
       86 CALL                             R10 1 1
       87 SETTABLEKS                       R10 R9 K16 ["prompt"]
       89 SETTABLEKS                       R1 R9 K17 ["selectedUniqueId"]
       91 GETTABLEKS                       R10 R2 K18 ["model"]
       93 SETTABLEKS                       R10 R9 K18 ["model"]
       95 NAMECALL                         R5 R5 K22 ["FireHost"]
       97 CALL                             R5 4 0
       98 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["prompt"]
        4 SETTABLEKS                       R2 R1 K0 ["prompt"]
        6 GETTABLEKS                       R2 R0 K1 ["model"]
        8 SETTABLEKS                       R2 R1 K1 ["model"]
       10 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKS                    R0 K1 [""] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["current"]
        9 GETTABLE                         R1 R2 R0
       10 JUMPIFNOT                        R1 ; [+8]
       11 GETTABLEKS                       R2 R1 K2 ["cancel"]
       13 CALL                             R2 0 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K0 ["current"]
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R2 R0
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K0 ["current"]
       22 GETTABLE                         R2 R3 R0
       23 GETUPVAL                         R3 3
       24 JUMPIFNOT                        R3 ; [+18]
       25 GETUPVAL                         R3 3
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R5 R5 K3 ["CancelGeneration"]
       29 LOADNIL                          R6
       30 DUPTABLE                         R7 K6 [{"requestId", "selectedUniqueId"}]
       31 JUMPIFNOT                        R2 ; [+3]
       32 GETTABLEKS                       R8 R2 K4 ["requestId"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R8
       36 SETTABLEKS                       R8 R7 K4 ["requestId"]
       38 SETTABLEKS                       R0 R7 K5 ["selectedUniqueId"]
       40 NAMECALL                         R3 R3 K7 ["FireHost"]
       42 CALL                             R3 4 0
       43 GETUPVAL                         R3 5
       44 MOVE                             R4 R0
       45 DUPCLOSURE                       R5 K8 [PROTO_26]
       46 CAPTURE                          UPVAL U6
       47 CALL                             R3 2 0
       48 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["stage"]
        2 JUMPIFEQKS                       R1 K1 ["Idle"] ; [+6]
        4 GETTABLEKS                       R1 R0 K0 ["stage"]
        6 JUMPIFEQKS                       R1 K2 ["Failed"] ; [+2]
        8 RETURN                           R0 1
        9 GETIMPORT                        R1 K5 [table.clone]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 0
       14 SETTABLEKS                       R2 R1 K6 ["prompt"]
       16 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["stage"]
        2 JUMPIFEQKS                       R1 K1 ["Idle"] ; [+6]
        4 GETTABLEKS                       R1 R0 K0 ["stage"]
        6 JUMPIFEQKS                       R1 K2 ["Failed"] ; [+2]
        8 RETURN                           R0 1
        9 GETIMPORT                        R1 K5 [table.clone]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 0
       14 SETTABLEKS                       R2 R1 K6 ["model"]
       16 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["current"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_32:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["stage"]
        8 JUMPIFEQKS                       R7 K1 ["Idle"] ; [+6]
       10 GETTABLEKS                       R7 R6 K0 ["stage"]
       12 JUMPIFEQKS                       R7 K2 ["Failed"] ; [+2]
       14 SETTABLE                         R6 R1 R5
       15 FORGLOOP                         R2 2 ; [-10]
       17 RETURN                           R1 1

PROTO_33:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["current"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["stage"]
       10 JUMPIFEQKS                       R6 K2 ["Idle"] ; [+7]
       12 GETTABLEKS                       R6 R5 K1 ["stage"]
       14 JUMPIFEQKS                       R6 K3 ["Failed"] ; [+3]
       16 LOADB                            R6 1
       17 SETTABLE                         R6 R0 R4
       18 FORGLOOP                         R1 2 ; [-11]
       20 GETUPVAL                         R1 1
       21 DUPCLOSURE                       R2 K4 [PROTO_32]
       22 CALL                             R1 1 0
       23 RETURN                           R0 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 CALL                             R3 0 1
        7 OR                               R4 R1 R3
        8 GETTABLEKS                       R5 R4 K1 ["sessions"]
       10 GETTABLEKS                       R6 R4 K2 ["setSessions"]
       12 GETTABLEKS                       R7 R4 K3 ["sessionsRef"]
       14 GETTABLEKS                       R8 R4 K4 ["updateSession"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K5 ["useRef"]
       19 MOVE                             R10 R0
       20 CALL                             R9 1 1
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K6 ["useEffect"]
       24 NEWCLOSURE                       R11 P0
       25 CAPTURE                          VAL R9
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R12 0 1
       29 MOVE                             R13 R0
       30 SETLIST                          R12 R13 1 [1]
       32 CALL                             R10 2 0
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K5 ["useRef"]
       36 NEWTABLE                         R11 0 0
       38 CALL                             R10 1 1
       39 NEWCLOSURE                       R11 P1
       40 CAPTURE                          VAL R10
       41 CAPTURE                          VAL R8
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R12 R12 K5 ["useRef"]
       45 NEWTABLE                         R13 0 0
       47 CALL                             R12 1 1
       48 GETUPVAL                         R13 0
       49 GETTABLEKS                       R13 R13 K6 ["useEffect"]
       51 NEWCLOSURE                       R14 P2
       52 CAPTURE                          VAL R12
       53 NEWTABLE                         R15 0 0
       55 CALL                             R13 2 0
       56 GETUPVAL                         R13 0
       57 GETTABLEKS                       R13 R13 K6 ["useEffect"]
       59 NEWCLOSURE                       R14 P3
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          VAL R10
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          VAL R8
       65 CAPTURE                          UPVAL U5
       66 NEWTABLE                         R15 0 1
       68 MOVE                             R16 R2
       69 SETLIST                          R15 R16 1 [1]
       71 CALL                             R13 2 0
       72 NEWCLOSURE                       R13 P4
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          VAL R2
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R8
       81 CAPTURE                          UPVAL U9
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R6
       85 CAPTURE                          UPVAL U10
       86 CAPTURE                          UPVAL U11
       87 CAPTURE                          UPVAL U12
       88 CAPTURE                          UPVAL U13
       89 CAPTURE                          UPVAL U14
       90 CAPTURE                          UPVAL U15
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R14 R14 K7 ["useCallback"]
       94 MOVE                             R15 R13
       95 NEWTABLE                         R16 0 1
       97 MOVE                             R17 R2
       98 SETLIST                          R16 R17 1 [1]
      100 CALL                             R14 2 1
      101 GETUPVAL                         R15 0
      102 GETTABLEKS                       R15 R15 K7 ["useCallback"]
      104 NEWCLOSURE                       R16 P5
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R8
      110 CAPTURE                          UPVAL U3
      111 CAPTURE                          UPVAL U7
      112 NEWTABLE                         R17 0 1
      114 MOVE                             R18 R2
      115 SETLIST                          R17 R18 1 [1]
      117 CALL                             R15 2 1
      118 GETUPVAL                         R16 0
      119 GETTABLEKS                       R16 R16 K7 ["useCallback"]
      121 NEWCLOSURE                       R17 P6
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R2
      126 CAPTURE                          UPVAL U3
      127 CAPTURE                          VAL R8
      128 CAPTURE                          UPVAL U5
      129 NEWTABLE                         R18 0 1
      131 MOVE                             R19 R2
      132 SETLIST                          R18 R19 1 [1]
      134 CALL                             R16 2 1
      135 GETUPVAL                         R17 0
      136 GETTABLEKS                       R17 R17 K7 ["useCallback"]
      138 NEWCLOSURE                       R18 P7
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R9
      141 NEWTABLE                         R19 0 0
      143 CALL                             R17 2 1
      144 GETUPVAL                         R18 0
      145 GETTABLEKS                       R18 R18 K7 ["useCallback"]
      147 NEWCLOSURE                       R19 P8
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R9
      150 NEWTABLE                         R20 0 0
      152 CALL                             R18 2 1
      153 GETUPVAL                         R19 0
      154 GETTABLEKS                       R19 R19 K7 ["useCallback"]
      156 NEWCLOSURE                       R20 P9
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R6
      159 NEWTABLE                         R21 0 0
      161 CALL                             R19 2 1
      162 GETTABLE                         R20 R5 R0
      163 JUMPIF                           R20 ; [+2]
      164 GETUPVAL                         R20 5
      165 CALL                             R20 0 1
      166 DUPTABLE                         R21 K15 [{"state", "startGeneration", "setPrompt", "setModel", "discardParkedSessions", "pickSlot", "cancel"}]
      167 SETTABLEKS                       R20 R21 K8 ["state"]
      169 SETTABLEKS                       R14 R21 K9 ["startGeneration"]
      171 SETTABLEKS                       R17 R21 K10 ["setPrompt"]
      173 SETTABLEKS                       R18 R21 K11 ["setModel"]
      175 SETTABLEKS                       R19 R21 K12 ["discardParkedSessions"]
      177 SETTABLEKS                       R15 R21 K13 ["pickSlot"]
      179 SETTABLEKS                       R16 R21 K14 ["cancel"]
      181 RETURN                           R21 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["HttpService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K9 [game]
       22 LOADK                            R5 K12 ["EncodingService"]
       23 NAMECALL                         R3 R3 K11 ["GetService"]
       25 CALL                             R3 2 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Src"]
       37 GETTABLEKS                       R6 R6 K15 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K16 ["NetworkingContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Src"]
       46 GETTABLEKS                       R7 R7 K17 ["Networking"]
       48 GETTABLEKS                       R7 R7 K18 ["Events"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K13 ["Src"]
       55 GETTABLEKS                       R8 R8 K19 ["Util"]
       57 GETTABLEKS                       R8 R8 K20 ["ReferenceImageUtil"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K13 ["Src"]
       64 GETTABLEKS                       R9 R9 K21 ["Hooks"]
       66 GETTABLEKS                       R9 R9 K22 ["useGenerationSessions"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K23 ["Bin"]
       73 GETTABLEKS                       R10 R10 K24 ["Common"]
       75 GETTABLEKS                       R10 R10 K25 ["defineLuaFlags"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K6 ["Packages"]
       82 GETTABLEKS                       R11 R11 K26 ["Gen3dCore"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K13 ["Src"]
       89 GETTABLEKS                       R12 R12 K27 ["Guest"]
       91 GETTABLEKS                       R12 R12 K28 ["buildImageSelectionServices"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K6 ["Packages"]
       98 GETTABLEKS                       R13 R13 K29 ["_Index"]
      100 GETTABLEKS                       R13 R13 K30 ["AssistantUI"]
      102 GETTABLEKS                       R13 R13 K30 ["AssistantUI"]
      104 GETTABLEKS                       R13 R13 K19 ["Util"]
      106 GETTABLEKS                       R13 R13 K31 ["Gen3dUtils"]
      108 GETTABLEKS                       R13 R13 K32 ["PromptTemplate"]
      110 CALL                             R12 1 1
      111 GETTABLEKS                       R13 R10 K33 ["Constants"]
      113 GETTABLEKS                       R13 R13 K34 ["DEFAULT_TEXTURE_GEN_MODEL"]
      115 GETTABLEKS                       R14 R10 K35 ["ImageSelectionOps"]
      117 DUPCLOSURE                       R15 K36 [PROTO_0]
      118 DUPCLOSURE                       R16 K37 [PROTO_1]
      119 DUPCLOSURE                       R17 K38 [PROTO_2]
      120 DUPCLOSURE                       R18 K39 [PROTO_3]
      121 CAPTURE                          VAL R10
      122 DUPCLOSURE                       R19 K40 [PROTO_34]
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R18
      139 RETURN                           R19 1
