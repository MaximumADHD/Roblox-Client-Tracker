PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["Root"]
        6 DUPTABLE                         R4 K5 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
        7 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        9 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       11 GETTABLEKS                       R6 R0 K6 ["canToggle"]
       13 JUMPIFNOT                        R6 ; [+3]
       14 GETTABLEKS                       R5 R0 K2 ["expanded"]
       16 JUMP                             ; [+1]
       17 LOADB                            R5 0
       18 SETTABLEKS                       R5 R4 K2 ["expanded"]
       20 GETTABLEKS                       R5 R0 K3 ["contentId"]
       22 SETTABLEKS                       R5 R4 K3 ["contentId"]
       24 GETTABLEKS                       R5 R0 K4 ["editThisContent"]
       26 SETTABLEKS                       R5 R4 K4 ["editThisContent"]
       28 DUPTABLE                         R5 K10 [{"Header", "Content", "Persist"}]
       29 GETUPVAL                         R6 1
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K7 ["Header"]
       33 DUPTABLE                         R8 K13 [{"IsDisabled", "LayoutOrder", "testId"}]
       34 GETTABLEKS                       R10 R0 K6 ["canToggle"]
       36 NOT                              R9 R10
       37 SETTABLEKS                       R9 R8 K11 ["IsDisabled"]
       39 MOVE                             R9 R1
       40 CALL                             R9 0 1
       41 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       43 GETUPVAL                         R9 3
       44 GETTABLEKS                       R9 R9 K14 ["MeshGen"]
       46 GETTABLEKS                       R9 R9 K15 ["Expand"]
       48 SETTABLEKS                       R9 R8 K12 ["testId"]
       50 GETTABLEKS                       R9 R0 K16 ["headerChildren"]
       52 CALL                             R6 3 1
       53 SETTABLEKS                       R6 R5 K7 ["Header"]
       55 GETTABLEKS                       R6 R0 K17 ["children"]
       57 JUMPIFNOT                        R6 ; [+12]
       58 GETUPVAL                         R6 1
       59 GETUPVAL                         R7 2
       60 GETTABLEKS                       R7 R7 K8 ["Content"]
       62 DUPTABLE                         R8 K20 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
       63 MOVE                             R9 R1
       64 CALL                             R9 0 1
       65 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       67 GETTABLEKS                       R9 R0 K17 ["children"]
       69 CALL                             R6 3 1
       70 SETTABLEKS                       R6 R5 K8 ["Content"]
       72 GETTABLEKS                       R6 R0 K21 ["persistChildren"]
       74 SETTABLEKS                       R6 R5 K9 ["Persist"]
       76 CALL                             R2 3 -1
       77 RETURN                           R2 -1

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"Preparing", "FailedToGenerate", "ToolRejected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["MeshGen"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["MeshGen"]
       11 LOADK                            R4 K1 ["FailedToGenerate"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["FailedToGenerate"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["MeshGen"]
       19 LOADK                            R4 K2 ["ToolRejected"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["ToolRejected"]
       25 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["FailedToGenerate"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["toolResult"]
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["ToolRejected"]
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K3 ["Preparing"]
       17 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K3 ["isError"]
       15 LOADB                            R3 0
       16 GETTABLEKS                       R4 R0 K4 ["toolResult"]
       18 JUMPIFNOTEQKNIL                  R4 ; [+2]
       20 NOT                              R3 R2
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 GETUPVAL                         R5 2
       26 CALL                             R5 0 1
       27 GETUPVAL                         R6 3
       28 GETUPVAL                         R7 4
       29 GETUPVAL                         R8 5
       30 GETTABLEKS                       R8 R8 K5 ["assign"]
       32 DUPTABLE                         R9 K9 [{["canToggle"] = False, ["headerChildren"]}]
       33 DUPTABLE                         R10 K11 [{"Text"}]
       34 GETUPVAL                         R11 3
       35 GETUPVAL                         R12 6
       36 DUPTABLE                         R13 K15 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
       37 JUMPIFNOT                        R2 ; [+3]
       38 GETTABLEKS                       R14 R1 K16 ["FailedToGenerate"]
       40 JUMP                             ; [+8]
       41 GETTABLEKS                       R15 R0 K4 ["toolResult"]
       43 JUMPIFNOT                        R15 ; [+3]
       44 GETTABLEKS                       R14 R1 K17 ["ToolRejected"]
       46 JUMP                             ; [+2]
       47 GETTABLEKS                       R14 R1 K18 ["Preparing"]
       49 SETTABLEKS                       R14 R13 K10 ["Text"]
       51 MOVE                             R14 R5
       52 CALL                             R14 0 1
       53 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       55 DUPTABLE                         R14 K20 [{"Shimmer"}]
       56 MOVE                             R15 R3
       57 JUMPIFNOT                        R15 ; [+3]
       58 GETUPVAL                         R15 3
       59 GETUPVAL                         R16 7
       60 CALL                             R15 1 1
       61 SETTABLEKS                       R15 R14 K19 ["Shimmer"]
       63 CALL                             R11 3 1
       64 SETTABLEKS                       R11 R10 K10 ["Text"]
       66 SETTABLEKS                       R10 R9 K8 ["headerChildren"]
       68 MOVE                             R10 R0
       69 CALL                             R8 2 -1
       70 CALL                             R6 -1 -1
       71 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["FIntConvAIMeshGenGenerationRetryLimit"]
        4 JUMPIFNOTLE                      R1 R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R2 0
        9 ADDK                             R1 R2 K1 [1]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K2 ["retryGeneration"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETTABLEKS                       R3 R0 K0 ["generationRetryCount"]
        4 LOADK                            R4 K0 ["generationRetryCount"]
        5 CALL                             R1 3 2
        6 ORK                              R3 R1 K1 [0]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R6 0 3
       17 MOVE                             R7 R3
       18 MOVE                             R8 R2
       19 GETTABLEKS                       R9 R0 K3 ["retryGeneration"]
       21 SETLIST                          R6 R7 3 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K4 ["FIntConvAIMeshGenGenerationRetryLimit"]
       27 JUMPIFLT                         R3 R6 ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 MOVE                             R6 R5
       32 MOVE                             R7 R4
       33 RETURN                           R6 2

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["FIntConvAIMeshGenPublishAttemptLimit"]
        4 JUMPIFNOTLE                      R1 R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R2 0
        9 ADDK                             R1 R2 K1 [1]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K2 ["publishAssets"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETTABLEKS                       R3 R0 K0 ["publishAttemptCount"]
        4 LOADK                            R4 K0 ["publishAttemptCount"]
        5 CALL                             R1 3 2
        6 ORK                              R3 R1 K1 [0]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R6 0 3
       17 MOVE                             R7 R3
       18 MOVE                             R8 R2
       19 GETTABLEKS                       R9 R0 K3 ["publishAssets"]
       21 SETLIST                          R6 R7 3 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K4 ["FIntConvAIMeshGenPublishAttemptLimit"]
       27 JUMPIFLT                         R3 R6 ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 MOVE                             R6 R5
       32 MOVE                             R7 R4
       33 RETURN                           R6 2

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["previewImages"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 NEWTABLE                         R0 0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["previewImages"]
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 JUMPIFEQKS                       R5 K1 [""] ; [+8]
       16 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       18 MOVE                             R7 R0
       19 MOVE                             R8 R5
       20 GETIMPORT                        R6 K4 [table.insert]
       22 CALL                             R6 2 0
       23 FORGLOOP                         R1 2 ; [-10]
       25 LENGTH                           R2 R0
       26 LOADN                            R3 0
       27 JUMPIFNOTLT                      R3 R2 ; [+3]
       29 MOVE                             R1 R0
       30 RETURN                           R1 1
       31 LOADNIL                          R1
       32 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantMeshGenCarouselPreview"]
        3 JUMPIF                           R1 ; [+16]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["useMemo"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R3 0 1
       11 GETTABLEKS                       R4 R0 K2 ["previewImages"]
       13 SETLIST                          R3 R4 1 [1]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 2
       17 MOVE                             R3 R1
       18 CALL                             R2 1 1
       19 RETURN                           R2 1
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K3 ["useCarouselPreviewImage"]
       23 GETTABLEKS                       R2 R0 K2 ["previewImages"]
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cancelGeneration"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAssets"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["addToPlace"]
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["addToPlace"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 0
       12 LOADB                            R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantMeshGenCarouselPreview"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["current"]
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETIMPORT                        R0 K4 [task.cancel]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K1 ["current"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 2
       19 GETIMPORT                        R1 K6 [task.delay]
       21 LOADN                            R2 5
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U1
       25 CALL                             R1 2 1
       26 SETTABLEKS                       R1 R0 K1 ["current"]
       28 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["decrement"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["increment"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_18:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
        3 MULK                             R1 R2 K0 [0.08]
        4 LOADN                            R3 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K2 ["current"]
        8 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       10 GETIMPORT                        R2 K5 [math.max]
       12 CALL                             R2 2 1
       13 DIV                              R0 R1 R2
       14 GETIMPORT                        R1 K8 [task.wait]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K9 ["increment"]
       21 CALL                             R1 0 0
       22 JUMPBACK                         ; [-23]
       23 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantMeshGenCarouselPreview"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["exists"]
        9 JUMPIFNOT                        R0 ; [+2]
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+2]
       12 LOADNIL                          R0
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K2 ["countRef"]
       17 GETIMPORT                        R1 K5 [task.delay]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K7 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
       22 MULK                             R2 R3 K6 [0.08]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 CALL                             R1 2 1
       28 NEWCLOSURE                       R2 P1
       29 CAPTURE                          VAL R1
       30 RETURN                           R2 1

PROTO_22:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantMeshGenCarouselPreview"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["current"]
        8 GETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["previewState"]
       12 SETTABLEKS                       R2 R1 K1 ["current"]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K3 ["PreviewState"]
       17 GETTABLEKS                       R1 R1 K4 ["Inserting"]
       19 JUMPIFNOTEQ                      R0 R1 ; [+19]
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K2 ["previewState"]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K3 ["PreviewState"]
       27 GETTABLEKS                       R2 R2 K5 ["Published"]
       29 JUMPIFNOTEQ                      R1 R2 ; [+9]
       31 GETUPVAL                         R1 2
       32 GETTABLEKS                       R1 R1 K6 ["editThisContent"]
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K7 ["contentId"]
       37 DUPCLOSURE                       R3 K8 [PROTO_22]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K1 ["http"]
        6 GETTABLEKS                       R2 R2 K2 ["openUrl"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_25:
        0 NEWTABLE                         R0 16 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
        5 GETTABLEKS                       R1 R1 K1 ["GeneratingMesh"]
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K2 ["MeshGen"]
        9 LOADK                            R5 K1 ["GeneratingMesh"]
       10 NAMECALL                         R2 R2 K3 ["getText"]
       12 CALL                             R2 3 1
       13 SETTABLE                         R2 R0 R1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       17 GETTABLEKS                       R1 R1 K4 ["GeneratingTexture"]
       19 GETUPVAL                         R2 1
       20 LOADK                            R4 K2 ["MeshGen"]
       21 LOADK                            R5 K4 ["GeneratingTexture"]
       22 NAMECALL                         R2 R2 K3 ["getText"]
       24 CALL                             R2 3 1
       25 SETTABLE                         R2 R0 R1
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       29 GETTABLEKS                       R1 R1 K5 ["GenerationFailed"]
       31 NEWTABLE                         R2 2 0
       33 LOADB                            R3 0
       34 GETUPVAL                         R4 1
       35 LOADK                            R6 K2 ["MeshGen"]
       36 LOADK                            R7 K6 ["MeshGenerationFailed"]
       37 NAMECALL                         R4 R4 K3 ["getText"]
       39 CALL                             R4 3 1
       40 SETTABLE                         R4 R2 R3
       41 LOADB                            R3 1
       42 GETUPVAL                         R4 1
       43 LOADK                            R6 K2 ["MeshGen"]
       44 LOADK                            R7 K7 ["TextureGenerationFailed"]
       45 NAMECALL                         R4 R4 K3 ["getText"]
       47 CALL                             R4 3 1
       48 SETTABLE                         R4 R2 R3
       49 SETTABLE                         R2 R0 R1
       50 GETUPVAL                         R1 0
       51 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       53 GETTABLEKS                       R1 R1 K8 ["Generated"]
       55 GETUPVAL                         R2 1
       56 LOADK                            R4 K2 ["MeshGen"]
       57 LOADK                            R5 K8 ["Generated"]
       58 NAMECALL                         R2 R2 K3 ["getText"]
       60 CALL                             R2 3 1
       61 SETTABLE                         R2 R0 R1
       62 GETUPVAL                         R1 0
       63 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       65 GETTABLEKS                       R1 R1 K9 ["Publishing"]
       67 GETUPVAL                         R2 1
       68 LOADK                            R4 K2 ["MeshGen"]
       69 LOADK                            R5 K9 ["Publishing"]
       70 NAMECALL                         R2 R2 K3 ["getText"]
       72 CALL                             R2 3 1
       73 SETTABLE                         R2 R0 R1
       74 GETUPVAL                         R1 0
       75 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       77 GETTABLEKS                       R1 R1 K10 ["PublishFailed"]
       79 GETUPVAL                         R2 1
       80 LOADK                            R4 K2 ["MeshGen"]
       81 LOADK                            R5 K10 ["PublishFailed"]
       82 NAMECALL                         R2 R2 K3 ["getText"]
       84 CALL                             R2 3 1
       85 SETTABLE                         R2 R0 R1
       86 GETUPVAL                         R1 0
       87 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       89 GETTABLEKS                       R1 R1 K11 ["Published"]
       91 GETUPVAL                         R2 1
       92 LOADK                            R4 K2 ["MeshGen"]
       93 LOADK                            R5 K11 ["Published"]
       94 NAMECALL                         R2 R2 K3 ["getText"]
       96 CALL                             R2 3 1
       97 SETTABLE                         R2 R0 R1
       98 GETUPVAL                         R1 0
       99 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
      101 GETTABLEKS                       R1 R1 K12 ["Inserting"]
      103 GETUPVAL                         R2 1
      104 LOADK                            R4 K2 ["MeshGen"]
      105 LOADK                            R5 K12 ["Inserting"]
      106 NAMECALL                         R2 R2 K3 ["getText"]
      108 CALL                             R2 3 1
      109 SETTABLE                         R2 R0 R1
      110 GETUPVAL                         R1 0
      111 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
      113 GETTABLEKS                       R1 R1 K13 ["InsertFailed"]
      115 GETUPVAL                         R2 1
      116 LOADK                            R4 K2 ["MeshGen"]
      117 LOADK                            R5 K13 ["InsertFailed"]
      118 NAMECALL                         R2 R2 K3 ["getText"]
      120 CALL                             R2 3 1
      121 SETTABLE                         R2 R0 R1
      122 NEWTABLE                         R1 8 0
      124 GETUPVAL                         R2 0
      125 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      127 GETTABLEKS                       R2 R2 K5 ["GenerationFailed"]
      129 GETUPVAL                         R3 1
      130 LOADK                            R5 K2 ["MeshGen"]
      131 LOADK                            R6 K5 ["GenerationFailed"]
      132 NAMECALL                         R3 R3 K3 ["getText"]
      134 CALL                             R3 3 1
      135 SETTABLE                         R3 R1 R2
      136 GETUPVAL                         R2 0
      137 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      139 GETTABLEKS                       R2 R2 K15 ["GenerationModerated"]
      141 GETUPVAL                         R3 1
      142 LOADK                            R5 K2 ["MeshGen"]
      143 LOADK                            R6 K15 ["GenerationModerated"]
      144 DUPTABLE                         R7 K17 [{"link"}]
      145 GETUPVAL                         R8 2
      146 GETTABLEKS                       R8 R8 K18 ["FStringConvAIMeshGenModerationUrl"]
      148 SETTABLEKS                       R8 R7 K16 ["link"]
      150 NAMECALL                         R3 R3 K3 ["getText"]
      152 CALL                             R3 4 1
      153 SETTABLE                         R3 R1 R2
      154 GETUPVAL                         R2 0
      155 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      157 GETTABLEKS                       R2 R2 K19 ["GenerationCanceled"]
      159 GETUPVAL                         R3 1
      160 LOADK                            R5 K2 ["MeshGen"]
      161 LOADK                            R6 K19 ["GenerationCanceled"]
      162 NAMECALL                         R3 R3 K3 ["getText"]
      164 CALL                             R3 3 1
      165 SETTABLE                         R3 R1 R2
      166 GETUPVAL                         R2 0
      167 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      169 GETTABLEKS                       R2 R2 K10 ["PublishFailed"]
      171 GETUPVAL                         R3 1
      172 LOADK                            R5 K2 ["MeshGen"]
      173 LOADK                            R6 K10 ["PublishFailed"]
      174 NAMECALL                         R3 R3 K3 ["getText"]
      176 CALL                             R3 3 1
      177 SETTABLE                         R3 R1 R2
      178 GETUPVAL                         R2 0
      179 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      181 GETTABLEKS                       R2 R2 K20 ["AssetPermissionCreationFailed"]
      183 GETUPVAL                         R3 1
      184 LOADK                            R5 K2 ["MeshGen"]
      185 LOADK                            R6 K20 ["AssetPermissionCreationFailed"]
      186 NAMECALL                         R3 R3 K3 ["getText"]
      188 CALL                             R3 3 1
      189 SETTABLE                         R3 R1 R2
      190 GETUPVAL                         R2 0
      191 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      193 GETTABLEKS                       R2 R2 K13 ["InsertFailed"]
      195 GETUPVAL                         R3 1
      196 LOADK                            R5 K2 ["MeshGen"]
      197 LOADK                            R6 K13 ["InsertFailed"]
      198 NAMECALL                         R3 R3 K3 ["getText"]
      200 CALL                             R3 3 1
      201 SETTABLE                         R3 R1 R2
      202 DUPTABLE                         R2 K25 [{"PreviewStateHeaderText", "FailureMessageText", "UnknownError", "Buttons"}]
      203 SETTABLEKS                       R0 R2 K21 ["PreviewStateHeaderText"]
      205 SETTABLEKS                       R1 R2 K22 ["FailureMessageText"]
      207 GETUPVAL                         R3 1
      208 LOADK                            R5 K2 ["MeshGen"]
      209 LOADK                            R6 K23 ["UnknownError"]
      210 NAMECALL                         R3 R3 K3 ["getText"]
      212 CALL                             R3 3 1
      213 SETTABLEKS                       R3 R2 K23 ["UnknownError"]
      215 DUPTABLE                         R3 K31 [{"Cancel", "Regenerate", "Publish", "AddToPlace", "TryAgain"}]
      216 GETUPVAL                         R4 1
      217 LOADK                            R6 K2 ["MeshGen"]
      218 LOADK                            R7 K26 ["Cancel"]
      219 NAMECALL                         R4 R4 K3 ["getText"]
      221 CALL                             R4 3 1
      222 SETTABLEKS                       R4 R3 K26 ["Cancel"]
      224 GETUPVAL                         R4 1
      225 LOADK                            R6 K2 ["MeshGen"]
      226 LOADK                            R7 K27 ["Regenerate"]
      227 NAMECALL                         R4 R4 K3 ["getText"]
      229 CALL                             R4 3 1
      230 SETTABLEKS                       R4 R3 K27 ["Regenerate"]
      232 GETUPVAL                         R4 1
      233 LOADK                            R6 K2 ["MeshGen"]
      234 LOADK                            R7 K28 ["Publish"]
      235 NAMECALL                         R4 R4 K3 ["getText"]
      237 CALL                             R4 3 1
      238 SETTABLEKS                       R4 R3 K28 ["Publish"]
      240 GETUPVAL                         R4 1
      241 LOADK                            R6 K2 ["MeshGen"]
      242 LOADK                            R7 K29 ["AddToPlace"]
      243 NAMECALL                         R4 R4 K3 ["getText"]
      245 CALL                             R4 3 1
      246 SETTABLEKS                       R4 R3 K29 ["AddToPlace"]
      248 GETUPVAL                         R4 1
      249 LOADK                            R6 K2 ["MeshGen"]
      250 LOADK                            R7 K30 ["TryAgain"]
      251 NAMECALL                         R4 R4 K3 ["getText"]
      253 CALL                             R4 3 1
      254 SETTABLEKS                       R4 R3 K30 ["TryAgain"]
      256 SETTABLEKS                       R3 R2 K24 ["Buttons"]
      258 RETURN                           R2 1

PROTO_26:
        0 DUPTABLE                         R0 K1 [{"Layout"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R2 K2 ["UIListLayout"]
        3 DUPTABLE                         R3 K5 [{"FillDirection", "SortOrder"}]
        4 GETIMPORT                        R4 K8 [Enum.FillDirection.Horizontal]
        6 SETTABLEKS                       R4 R3 K3 ["FillDirection"]
        8 GETIMPORT                        R4 K10 [Enum.SortOrder.LayoutOrder]
       10 SETTABLEKS                       R4 R3 K4 ["SortOrder"]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K0 ["Layout"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K11 ["images"]
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 FORGPREP                         R1
       21 JUMPIFEQKS                       R5 K12 [""] ; [+23]
       23 LOADK                            R7 K13 ["preload_%*"]
       24 MOVE                             R9 R4
       25 NAMECALL                         R7 R7 K14 ["format"]
       27 CALL                             R7 2 1
       28 MOVE                             R6 R7
       29 GETUPVAL                         R7 0
       30 LOADK                            R8 K15 ["ImageLabel"]
       31 DUPTABLE                         R9 K22 [{["BackgroundTransparency"] = 1, ["ImageTransparency"] = 0.9, ["Image"], ["Size"], ["LayoutOrder"]}]
       32 SETTABLEKS                       R5 R9 K20 ["Image"]
       34 GETIMPORT                        R10 K25 [UDim2.fromOffset]
       36 LOADN                            R11 4
       37 LOADN                            R12 4
       38 CALL                             R10 2 1
       39 SETTABLEKS                       R10 R9 K21 ["Size"]
       41 SETTABLEKS                       R4 R9 K9 ["LayoutOrder"]
       43 CALL                             R7 2 1
       44 SETTABLE                         R7 R0 R6
       45 FORGLOOP                         R1 2 ; [-25]
       47 GETUPVAL                         R1 0
       48 LOADK                            R2 K26 ["Frame"]
       49 DUPTABLE                         R3 K30 [{["BackgroundTransparency"] = 1, ["ClipsDescendants"] = False, ["Position"], ["Size"]}]
       50 GETIMPORT                        R4 K25 [UDim2.fromOffset]
       52 LOADN                            R5 0
       53 LOADN                            R6 0
       54 CALL                             R4 2 1
       55 SETTABLEKS                       R4 R3 K29 ["Position"]
       57 GETIMPORT                        R4 K25 [UDim2.fromOffset]
       59 LOADN                            R5 0
       60 LOADN                            R6 0
       61 CALL                             R4 2 1
       62 SETTABLEKS                       R4 R3 K21 ["Size"]
       64 MOVE                             R4 R0
       65 CALL                             R1 3 -1
       66 RETURN                           R1 -1

PROTO_27:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"icon", "size", "onActivated", "LayoutOrder"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K5 ["Enums"]
        8 GETTABLEKS                       R4 R4 K6 ["IconName"]
       10 GETTABLEKS                       R4 R4 K7 ["ChevronLargeLeft"]
       12 SETTABLEKS                       R4 R3 K0 ["icon"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K5 ["Enums"]
       17 GETTABLEKS                       R4 R4 K8 ["InputSize"]
       19 GETTABLEKS                       R4 R4 K9 ["Small"]
       21 SETTABLEKS                       R4 R3 K1 ["size"]
       23 GETUPVAL                         R4 3
       24 SETTABLEKS                       R4 R3 K2 ["onActivated"]
       26 GETUPVAL                         R4 4
       27 CALL                             R4 0 1
       28 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K10 ["LastPreview"]
       33 GETUPVAL                         R1 0
       34 GETUPVAL                         R2 5
       35 DUPTABLE                         R3 K19 [{["tag"] = "fill size-0-full radius-small", ["Image"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["ScaleType"], ["LayoutOrder"], ["testId"]}]
       36 GETUPVAL                         R4 6
       37 GETTABLEKS                       R4 R4 K20 ["current"]
       39 SETTABLEKS                       R4 R3 K13 ["Image"]
       41 GETIMPORT                        R4 K23 [Color3.fromRGB]
       43 LOADN                            R5 0
       44 LOADN                            R6 0
       45 LOADN                            R7 0
       46 CALL                             R4 3 1
       47 SETTABLEKS                       R4 R3 K14 ["BackgroundColor3"]
       49 GETIMPORT                        R4 K26 [Enum.ScaleType.Fit]
       51 SETTABLEKS                       R4 R3 K17 ["ScaleType"]
       53 GETUPVAL                         R4 4
       54 CALL                             R4 0 1
       55 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       57 GETUPVAL                         R4 7
       58 GETTABLEKS                       R4 R4 K27 ["MeshGen"]
       60 GETTABLEKS                       R4 R4 K28 ["PreviewImage"]
       62 SETTABLEKS                       R4 R3 K18 ["testId"]
       64 DUPTABLE                         R4 K30 [{"PreloadTray"}]
       65 GETUPVAL                         R6 8
       66 GETTABLEKS                       R6 R6 K31 ["FFlagAssistantMeshGenCarouselPreview"]
       68 JUMPIFNOT                        R6 ; [+9]
       69 GETUPVAL                         R6 6
       70 GETTABLEKS                       R6 R6 K32 ["images"]
       72 JUMPIFNOT                        R6 ; [+5]
       73 NEWCLOSURE                       R5 P0
       74 CAPTURE                          UPVAL U0
       75 CAPTURE                          UPVAL U6
       76 CALL                             R5 0 1
       77 JUMPIF                           R5 ; [+1]
       78 LOADNIL                          R5
       79 SETTABLEKS                       R5 R4 K29 ["PreloadTray"]
       81 CALL                             R1 3 1
       82 SETTABLEKS                       R1 R0 K28 ["PreviewImage"]
       84 GETUPVAL                         R1 0
       85 GETUPVAL                         R2 1
       86 DUPTABLE                         R3 K4 [{"icon", "size", "onActivated", "LayoutOrder"}]
       87 GETUPVAL                         R4 2
       88 GETTABLEKS                       R4 R4 K5 ["Enums"]
       90 GETTABLEKS                       R4 R4 K6 ["IconName"]
       92 GETTABLEKS                       R4 R4 K33 ["ChevronLargeRight"]
       94 SETTABLEKS                       R4 R3 K0 ["icon"]
       96 GETUPVAL                         R4 2
       97 GETTABLEKS                       R4 R4 K5 ["Enums"]
       99 GETTABLEKS                       R4 R4 K8 ["InputSize"]
      101 GETTABLEKS                       R4 R4 K9 ["Small"]
      103 SETTABLEKS                       R4 R3 K1 ["size"]
      105 GETUPVAL                         R4 9
      106 SETTABLEKS                       R4 R3 K2 ["onActivated"]
      108 GETUPVAL                         R4 4
      109 CALL                             R4 0 1
      110 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
      112 CALL                             R1 2 1
      113 SETTABLEKS                       R1 R0 K34 ["NextPreview"]
      115 RETURN                           R0 1

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["previewState"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["PreviewState"]
        5 GETTABLEKS                       R3 R3 K2 ["GeneratingMesh"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETTABLEKS                       R3 R0 K0 ["previewState"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K1 ["PreviewState"]
       16 GETTABLEKS                       R4 R4 K3 ["GeneratingTexture"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 GETTABLEKS                       R4 R0 K0 ["previewState"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K1 ["PreviewState"]
       27 GETTABLEKS                       R5 R5 K4 ["GenerationFailed"]
       29 JUMPIFEQ                         R4 R5 ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 GETTABLEKS                       R5 R0 K0 ["previewState"]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K1 ["PreviewState"]
       38 GETTABLEKS                       R6 R6 K5 ["Generated"]
       40 JUMPIFEQ                         R5 R6 ; [+2]
       42 LOADB                            R4 0 +1
       43 LOADB                            R4 1
       44 GETTABLEKS                       R6 R0 K0 ["previewState"]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K1 ["PreviewState"]
       49 GETTABLEKS                       R7 R7 K6 ["Publishing"]
       51 JUMPIFEQ                         R6 R7 ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 GETTABLEKS                       R7 R0 K0 ["previewState"]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K1 ["PreviewState"]
       60 GETTABLEKS                       R8 R8 K7 ["PublishFailed"]
       62 JUMPIFEQ                         R7 R8 ; [+2]
       64 LOADB                            R6 0 +1
       65 LOADB                            R6 1
       66 GETTABLEKS                       R8 R0 K0 ["previewState"]
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R9 R9 K1 ["PreviewState"]
       71 GETTABLEKS                       R9 R9 K8 ["Published"]
       73 JUMPIFEQ                         R8 R9 ; [+2]
       75 LOADB                            R7 0 +1
       76 LOADB                            R7 1
       77 GETTABLEKS                       R9 R0 K0 ["previewState"]
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K1 ["PreviewState"]
       82 GETTABLEKS                       R10 R10 K9 ["Inserting"]
       84 JUMPIFEQ                         R9 R10 ; [+2]
       86 LOADB                            R8 0 +1
       87 LOADB                            R8 1
       88 GETTABLEKS                       R10 R0 K0 ["previewState"]
       90 GETUPVAL                         R11 0
       91 GETTABLEKS                       R11 R11 K1 ["PreviewState"]
       93 GETTABLEKS                       R11 R11 K10 ["InsertFailed"]
       95 JUMPIFEQ                         R10 R11 ; [+2]
       97 LOADB                            R9 0 +1
       98 LOADB                            R9 1
       99 GETTABLEKS                       R11 R0 K11 ["failureReason"]
      101 GETUPVAL                         R12 0
      102 GETTABLEKS                       R12 R12 K12 ["FailureReason"]
      104 GETTABLEKS                       R12 R12 K13 ["GenerationCanceled"]
      106 JUMPIFEQ                         R11 R12 ; [+2]
      108 LOADB                            R10 0 +1
      109 LOADB                            R10 1
      110 GETUPVAL                         R11 1
      111 MOVE                             R12 R0
      112 CALL                             R11 1 2
      113 GETUPVAL                         R13 2
      114 MOVE                             R14 R0
      115 CALL                             R13 1 2
      116 GETUPVAL                         R15 3
      117 GETTABLEKS                       R15 R15 K14 ["useState"]
      119 LOADB                            R16 0
      120 CALL                             R15 1 2
      121 GETUPVAL                         R17 3
      122 GETTABLEKS                       R17 R17 K15 ["useCallback"]
      124 NEWCLOSURE                       R18 P0
      125 CAPTURE                          VAL R0
      126 NEWTABLE                         R19 0 1
      128 GETTABLEKS                       R20 R0 K16 ["cancelGeneration"]
      130 SETLIST                          R19 R20 1 [1]
      132 CALL                             R17 2 1
      133 GETUPVAL                         R18 3
      134 GETTABLEKS                       R18 R18 K15 ["useCallback"]
      136 NEWCLOSURE                       R19 P1
      137 CAPTURE                          VAL R0
      138 NEWTABLE                         R20 0 1
      140 GETTABLEKS                       R21 R0 K17 ["insertAssets"]
      142 SETLIST                          R20 R21 1 [1]
      144 CALL                             R18 2 1
      145 GETUPVAL                         R19 3
      146 GETTABLEKS                       R19 R19 K15 ["useCallback"]
      148 NEWCLOSURE                       R20 P2
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R0
      151 NEWTABLE                         R21 0 1
      153 GETTABLEKS                       R22 R0 K18 ["addToPlace"]
      155 SETLIST                          R21 R22 1 [1]
      157 CALL                             R19 2 1
      158 GETUPVAL                         R20 4
      159 MOVE                             R21 R0
      160 CALL                             R20 1 1
      161 GETUPVAL                         R21 3
      162 GETTABLEKS                       R21 R21 K14 ["useState"]
      164 LOADB                            R22 0
      165 CALL                             R21 1 2
      166 GETUPVAL                         R23 3
      167 GETTABLEKS                       R23 R23 K19 ["useRef"]
      169 LOADNIL                          R24
      170 CALL                             R23 1 1
      171 GETUPVAL                         R24 3
      172 GETTABLEKS                       R24 R24 K15 ["useCallback"]
      174 NEWCLOSURE                       R25 P3
      175 CAPTURE                          UPVAL U5
      176 CAPTURE                          VAL R22
      177 CAPTURE                          VAL R23
      178 NEWTABLE                         R26 0 0
      180 CALL                             R24 2 1
      181 GETUPVAL                         R25 3
      182 GETTABLEKS                       R25 R25 K15 ["useCallback"]
      184 NEWCLOSURE                       R26 P4
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R24
      187 NEWTABLE                         R27 0 2
      189 GETTABLEKS                       R28 R20 K20 ["decrement"]
      191 MOVE                             R29 R24
      192 SETLIST                          R27 R28 2 [1]
      194 CALL                             R25 2 1
      195 GETUPVAL                         R26 3
      196 GETTABLEKS                       R26 R26 K15 ["useCallback"]
      198 NEWCLOSURE                       R27 P5
      199 CAPTURE                          VAL R20
      200 CAPTURE                          VAL R24
      201 NEWTABLE                         R28 0 2
      203 GETTABLEKS                       R29 R20 K21 ["increment"]
      205 MOVE                             R30 R24
      206 SETLIST                          R28 R29 2 [1]
      208 CALL                             R26 2 1
      209 GETUPVAL                         R27 3
      210 GETTABLEKS                       R27 R27 K22 ["useEffect"]
      212 NEWCLOSURE                       R28 P6
      213 CAPTURE                          VAL R23
      214 NEWTABLE                         R29 0 0
      216 CALL                             R27 2 0
      217 GETUPVAL                         R27 3
      218 GETTABLEKS                       R27 R27 K22 ["useEffect"]
      220 NEWCLOSURE                       R28 P7
      221 CAPTURE                          UPVAL U5
      222 CAPTURE                          VAL R20
      223 CAPTURE                          VAL R21
      224 CAPTURE                          UPVAL U6
      225 NEWTABLE                         R29 0 3
      227 GETTABLEKS                       R30 R20 K23 ["exists"]
      229 GETTABLEKS                       R31 R20 K21 ["increment"]
      231 MOVE                             R32 R21
      232 SETLIST                          R29 R30 3 [1]
      234 CALL                             R27 2 0
      235 GETUPVAL                         R27 3
      236 GETTABLEKS                       R27 R27 K19 ["useRef"]
      238 GETTABLEKS                       R28 R0 K0 ["previewState"]
      240 CALL                             R27 1 1
      241 GETUPVAL                         R28 3
      242 GETTABLEKS                       R28 R28 K22 ["useEffect"]
      244 NEWCLOSURE                       R29 P8
      245 CAPTURE                          UPVAL U5
      246 CAPTURE                          VAL R27
      247 CAPTURE                          VAL R0
      248 CAPTURE                          UPVAL U0
      249 NEWTABLE                         R30 0 3
      251 GETTABLEKS                       R31 R0 K0 ["previewState"]
      253 GETTABLEKS                       R32 R0 K24 ["editThisContent"]
      255 GETTABLEKS                       R33 R0 K25 ["contentId"]
      257 SETLIST                          R30 R31 3 [1]
      259 CALL                             R28 2 0
      260 GETUPVAL                         R28 7
      261 GETTABLEKS                       R29 R0 K26 ["className"]
      263 CALL                             R28 1 1
      264 GETUPVAL                         R29 3
      265 GETTABLEKS                       R29 R29 K15 ["useCallback"]
      267 DUPCLOSURE                       R30 K27 [PROTO_24]
      268 CAPTURE                          UPVAL U8
      269 NEWTABLE                         R31 0 0
      271 CALL                             R29 2 1
      272 GETUPVAL                         R30 3
      273 GETTABLEKS                       R30 R30 K28 ["useMemo"]
      275 DUPCLOSURE                       R31 K29 [PROTO_25]
      276 CAPTURE                          UPVAL U0
      277 CAPTURE                          UPVAL U9
      278 CAPTURE                          UPVAL U5
      279 NEWTABLE                         R32 0 1
      281 GETUPVAL                         R33 9
      282 GETTABLEKS                       R33 R33 K30 ["locale"]
      284 SETLIST                          R32 R33 1 [1]
      286 CALL                             R30 2 1
      287 LOADNIL                          R31
      288 GETTABLEKS                       R32 R0 K0 ["previewState"]
      290 GETUPVAL                         R33 0
      291 GETTABLEKS                       R33 R33 K1 ["PreviewState"]
      293 GETTABLEKS                       R33 R33 K4 ["GenerationFailed"]
      295 JUMPIFNOTEQ                      R32 R33 ; [+10]
      297 GETTABLEKS                       R33 R30 K31 ["PreviewStateHeaderText"]
      299 GETTABLEKS                       R34 R0 K0 ["previewState"]
      301 GETTABLE                         R32 R33 R34
      302 GETTABLEKS                       R33 R20 K23 ["exists"]
      304 GETTABLE                         R31 R32 R33
      305 JUMP                             ; [+5]
      306 GETTABLEKS                       R32 R30 K31 ["PreviewStateHeaderText"]
      308 GETTABLEKS                       R33 R0 K0 ["previewState"]
      310 GETTABLE                         R31 R32 R33
      311 JUMPIF                           R4 ; [+1]
      312 JUMPIFNOT                        R7 ; [+8]
      313 GETTABLEKS                       R32 R0 K32 ["shouldShowChip"]
      315 JUMPIF                           R32 ; [+5]
      316 MOVE                             R32 R31
      317 LOADK                            R33 K33 [" "]
      318 GETTABLEKS                       R34 R0 K34 ["displayName"]
      320 CONCAT                           R31 R32 R34
      321 MOVE                             R32 R1
      322 JUMPIF                           R32 ; [+5]
      323 MOVE                             R32 R2
      324 JUMPIF                           R32 ; [+3]
      325 MOVE                             R32 R5
      326 JUMPIF                           R32 ; [+1]
      327 MOVE                             R32 R8
      328 MOVE                             R33 R3
      329 JUMPIF                           R33 ; [+3]
      330 MOVE                             R33 R6
      331 JUMPIF                           R33 ; [+1]
      332 MOVE                             R33 R9
      333 OR                               R34 R1 R2
      334 MOVE                             R35 R3
      335 JUMPIFNOT                        R35 ; [+3]
      336 MOVE                             R35 R11
      337 JUMPIFNOT                        R35 ; [+1]
      338 NOT                              R35 R10
      339 JUMPIF                           R4 ; [+2]
      340 MOVE                             R36 R6
      341 JUMPIFNOT                        R36 ; [+6]
      342 MOVE                             R36 R13
      343 JUMPIFNOT                        R36 ; [+4]
      344 GETUPVAL                         R37 5
      345 GETTABLEKS                       R37 R37 K35 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      347 NOT                              R36 R37
      348 JUMPIF                           R7 ; [+2]
      349 MOVE                             R37 R9
      350 JUMPIFNOT                        R37 ; [+4]
      351 GETUPVAL                         R38 5
      352 GETTABLEKS                       R38 R38 K35 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      354 NOT                              R37 R38
      355 GETUPVAL                         R38 5
      356 GETTABLEKS                       R38 R38 K35 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      358 JUMPIFNOT                        R38 ; [+10]
      359 LOADB                            R38 0
      360 GETTABLEKS                       R39 R0 K18 ["addToPlace"]
      362 JUMPIFEQKNIL                     R39 ; [+6]
      364 MOVE                             R38 R4
      365 JUMPIF                           R38 ; [+3]
      366 MOVE                             R38 R6
      367 JUMPIF                           R38 ; [+1]
      368 MOVE                             R38 R9
      369 LOADNIL                          R39
      370 GETUPVAL                         R40 5
      371 GETTABLEKS                       R40 R40 K36 ["FFlagAssistantMeshGenCarouselPreview"]
      373 JUMPIFNOT                        R40 ; [+61]
      374 GETTABLEKS                       R40 R20 K37 ["images"]
      376 JUMPIFNOT                        R40 ; [+58]
      377 NEWTABLE                         R40 0 0
      379 GETUPVAL                         R41 10
      380 GETTABLEKS                       R41 R41 K38 ["getBatch0Indices"]
      382 GETTABLEKS                       R44 R20 K37 ["images"]
      384 LENGTH                           R42 R44
      385 CALL                             R41 1 3
      386 FORGPREP                         R41
      387 GETTABLEKS                       R47 R20 K37 ["images"]
      389 GETTABLE                         R46 R47 R45
      390 JUMPIFNOT                        R46 ; [+29]
      391 JUMPIFEQKS                       R46 K39 [""] ; [+28]
      393 LOADK                            R48 K40 ["persist_%*"]
      394 MOVE                             R50 R45
      395 NAMECALL                         R48 R48 K41 ["format"]
      397 CALL                             R48 2 1
      398 MOVE                             R47 R48
      399 GETUPVAL                         R48 11
      400 LOADK                            R49 K42 ["ImageLabel"]
      401 DUPTABLE                         R50 K50 [{["BackgroundTransparency"] = 1, ["Image"], ["Position"], ["Size"], ["ZIndex"] = -10}]
      402 SETTABLEKS                       R46 R50 K45 ["Image"]
      404 GETIMPORT                        R51 K53 [UDim2.fromOffset]
      406 LOADN                            R52 0
      407 LOADN                            R53 0
      408 CALL                             R51 2 1
      409 SETTABLEKS                       R51 R50 K46 ["Position"]
      411 GETIMPORT                        R51 K53 [UDim2.fromOffset]
      413 LOADN                            R52 2
      414 LOADN                            R53 2
      415 CALL                             R51 2 1
      416 SETTABLEKS                       R51 R50 K47 ["Size"]
      418 CALL                             R48 2 1
      419 SETTABLE                         R48 R40 R47
      420 FORGLOOP                         R41 2 ; [-34]
      422 GETUPVAL                         R41 11
      423 LOADK                            R42 K54 ["Frame"]
      424 DUPTABLE                         R43 K57 [{["BackgroundTransparency"] = 1, ["Size"], ["ClipsDescendants"] = True}]
      425 GETIMPORT                        R44 K53 [UDim2.fromOffset]
      427 LOADN                            R45 0
      428 LOADN                            R46 0
      429 CALL                             R44 2 1
      430 SETTABLEKS                       R44 R43 K47 ["Size"]
      432 MOVE                             R44 R40
      433 CALL                             R41 3 1
      434 MOVE                             R39 R41
      435 GETUPVAL                         R40 12
      436 CALL                             R40 0 1
      437 GETUPVAL                         R41 11
      438 GETUPVAL                         R42 13
      439 GETUPVAL                         R43 14
      440 GETTABLEKS                       R43 R43 K58 ["assign"]
      442 DUPTABLE                         R44 K62 [{["canToggle"] = True, ["persistChildren"], ["headerChildren"]}]
      443 SETTABLEKS                       R39 R44 K60 ["persistChildren"]
      445 DUPTABLE                         R45 K65 [{"Text", "ChipArea"}]
      446 GETUPVAL                         R46 11
      447 GETUPVAL                         R47 15
      448 DUPTABLE                         R48 K69 [{["tag"] = "size-0-0 auto-xy text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      449 SETTABLEKS                       R31 R48 K63 ["Text"]
      451 MOVE                             R49 R40
      452 CALL                             R49 0 1
      453 SETTABLEKS                       R49 R48 K68 ["LayoutOrder"]
      455 DUPTABLE                         R49 K71 [{"Shimmer"}]
      456 MOVE                             R50 R32
      457 JUMPIFNOT                        R50 ; [+3]
      458 GETUPVAL                         R50 11
      459 GETUPVAL                         R51 16
      460 CALL                             R50 1 1
      461 SETTABLEKS                       R50 R49 K70 ["Shimmer"]
      463 CALL                             R46 3 1
      464 SETTABLEKS                       R46 R45 K63 ["Text"]
      466 GETTABLEKS                       R46 R0 K32 ["shouldShowChip"]
      468 JUMPIFNOT                        R46 ; [+48]
      469 GETUPVAL                         R46 11
      470 GETUPVAL                         R47 17
      471 DUPTABLE                         R48 K73 [{["tag"] = "align-x-left align-y-center fill", ["LayoutOrder"]}]
      472 MOVE                             R49 R40
      473 CALL                             R49 0 1
      474 SETTABLEKS                       R49 R48 K68 ["LayoutOrder"]
      476 DUPTABLE                         R49 K75 [{"AssetLink"}]
      477 GETUPVAL                         R50 11
      478 GETUPVAL                         R51 18
      479 DUPTABLE                         R52 K82 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"], ["LayoutOrder"]}]
      480 GETTABLEKS                       R53 R0 K34 ["displayName"]
      482 SETTABLEKS                       R53 R52 K76 ["text"]
      484 GETTABLEKS                       R53 R28 K45 ["Image"]
      486 SETTABLEKS                       R53 R52 K77 ["leading"]
      488 GETTABLEKS                       R53 R0 K83 ["onChipClicked"]
      490 SETTABLEKS                       R53 R52 K78 ["onActivated"]
      492 GETUPVAL                         R53 19
      493 GETTABLEKS                       R53 R53 K84 ["Enums"]
      495 GETTABLEKS                       R53 R53 K85 ["ChipSize"]
      497 GETTABLEKS                       R53 R53 K86 ["Small"]
      499 SETTABLEKS                       R53 R52 K81 ["size"]
      501 MOVE                             R53 R40
      502 CALL                             R53 0 1
      503 SETTABLEKS                       R53 R52 K68 ["LayoutOrder"]
      505 DUPTABLE                         R53 K71 [{"Shimmer"}]
      506 MOVE                             R54 R32
      507 JUMPIFNOT                        R54 ; [+3]
      508 GETUPVAL                         R54 11
      509 GETUPVAL                         R55 16
      510 CALL                             R54 1 1
      511 SETTABLEKS                       R54 R53 K70 ["Shimmer"]
      513 CALL                             R50 3 1
      514 SETTABLEKS                       R50 R49 K74 ["AssetLink"]
      516 CALL                             R46 3 1
      517 SETTABLEKS                       R46 R45 K64 ["ChipArea"]
      519 SETTABLEKS                       R45 R44 K61 ["headerChildren"]
      521 MOVE                             R45 R0
      522 CALL                             R43 2 1
      523 DUPTABLE                         R44 K89 [{"Preview", "InfoBar"}]
      524 JUMPIFNOT                        R3 ; [+2]
      525 LOADNIL                          R45
      526 JUMP                             ; [+68]
      527 GETTABLEKS                       R46 R20 K23 ["exists"]
      529 JUMPIF                           R46 ; [+27]
      530 GETUPVAL                         R45 11
      531 GETUPVAL                         R46 20
      532 DUPTABLE                         R47 K91 [{"Size", "radius", "LayoutOrder"}]
      533 GETIMPORT                        R48 K93 [UDim2.new]
      535 LOADN                            R49 1
      536 LOADN                            R50 0
      537 LOADN                            R51 0
      538 GETUPVAL                         R52 21
      539 CALL                             R48 4 1
      540 SETTABLEKS                       R48 R47 K47 ["Size"]
      542 GETUPVAL                         R48 19
      543 GETTABLEKS                       R48 R48 K84 ["Enums"]
      545 GETTABLEKS                       R48 R48 K94 ["Radius"]
      547 GETTABLEKS                       R48 R48 K86 ["Small"]
      549 SETTABLEKS                       R48 R47 K90 ["radius"]
      551 MOVE                             R48 R40
      552 CALL                             R48 0 1
      553 SETTABLEKS                       R48 R47 K68 ["LayoutOrder"]
      555 CALL                             R45 2 1
      556 JUMP                             ; [+38]
      557 GETUPVAL                         R45 11
      558 GETUPVAL                         R46 17
      559 DUPTABLE                         R47 K95 [{"tag", "Size", "LayoutOrder"}]
      560 GETUPVAL                         R49 5
      561 GETTABLEKS                       R49 R49 K96 ["FFlagSegmentationFastFollow"]
      563 JUMPIFNOT                        R49 ; [+2]
      564 LOADK                            R48 K97 ["row flex-x-between align-x-center align-y-center size-full-0 padding-x-small padding-y-small radius-small bg-shift-200"]
      565 JUMP                             ; [+1]
      566 LOADK                            R48 K98 ["row flex-x-between align-x-center align-y-center size-full-0 auto-y padding-x-small padding-y-small radius-small bg-shift-200"]
      567 SETTABLEKS                       R48 R47 K66 ["tag"]
      569 GETIMPORT                        R48 K93 [UDim2.new]
      571 LOADN                            R49 1
      572 LOADN                            R50 0
      573 LOADN                            R51 0
      574 GETUPVAL                         R52 21
      575 CALL                             R48 4 1
      576 SETTABLEKS                       R48 R47 K47 ["Size"]
      578 MOVE                             R48 R40
      579 CALL                             R48 0 1
      580 SETTABLEKS                       R48 R47 K68 ["LayoutOrder"]
      582 NEWCLOSURE                       R48 P11
      583 CAPTURE                          UPVAL U11
      584 CAPTURE                          UPVAL U22
      585 CAPTURE                          UPVAL U19
      586 CAPTURE                          VAL R25
      587 CAPTURE                          VAL R40
      588 CAPTURE                          UPVAL U23
      589 CAPTURE                          VAL R20
      590 CAPTURE                          UPVAL U24
      591 CAPTURE                          UPVAL U5
      592 CAPTURE                          VAL R26
      593 CALL                             R48 0 1
      594 CALL                             R45 3 1
      595 SETTABLEKS                       R45 R44 K87 ["Preview"]
      597 GETUPVAL                         R45 11
      598 GETUPVAL                         R46 17
      599 DUPTABLE                         R47 K100 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      600 MOVE                             R48 R40
      601 CALL                             R48 0 1
      602 SETTABLEKS                       R48 R47 K68 ["LayoutOrder"]
      604 DUPTABLE                         R48 K103 [{"LeftSpace", "Buttons"}]
      605 GETUPVAL                         R49 11
      606 GETUPVAL                         R50 17
      607 DUPTABLE                         R51 K105 [{["tag"] = "fill size-0-800 auto-y", ["LayoutOrder"]}]
      608 MOVE                             R52 R40
      609 CALL                             R52 0 1
      610 SETTABLEKS                       R52 R51 K68 ["LayoutOrder"]
      612 DUPTABLE                         R52 K107 [{"FailureMessage"}]
      613 MOVE                             R53 R33
      614 JUMPIFNOT                        R53 ; [+73]
      615 GETUPVAL                         R53 11
      616 GETUPVAL                         R54 17
      617 DUPTABLE                         R55 K109 [{["tag"] = "row align-y-center gap-xsmall size-full-full auto-y", ["LayoutOrder"]}]
      618 MOVE                             R56 R40
      619 CALL                             R56 0 1
      620 SETTABLEKS                       R56 R55 K68 ["LayoutOrder"]
      622 DUPTABLE                         R56 K112 [{"ErrorIcon", "TextContainer"}]
      623 GETUPVAL                         R57 11
      624 GETUPVAL                         R58 25
      625 DUPTABLE                         R59 K114 [{"name", "size", "LayoutOrder"}]
      626 GETUPVAL                         R60 19
      627 GETTABLEKS                       R60 R60 K84 ["Enums"]
      629 GETTABLEKS                       R60 R60 K115 ["IconName"]
      631 GETTABLEKS                       R60 R60 K116 ["TriangleExclamation"]
      633 SETTABLEKS                       R60 R59 K113 ["name"]
      635 GETUPVAL                         R60 19
      636 GETTABLEKS                       R60 R60 K84 ["Enums"]
      638 GETTABLEKS                       R60 R60 K117 ["IconSize"]
      640 GETTABLEKS                       R60 R60 K118 ["Medium"]
      642 SETTABLEKS                       R60 R59 K81 ["size"]
      644 MOVE                             R60 R40
      645 CALL                             R60 0 1
      646 SETTABLEKS                       R60 R59 K68 ["LayoutOrder"]
      648 CALL                             R57 2 1
      649 SETTABLEKS                       R57 R56 K110 ["ErrorIcon"]
      651 GETUPVAL                         R57 11
      652 GETUPVAL                         R58 17
      653 DUPTABLE                         R59 K120 [{["tag"] = "shrink size-full-0 auto-y", ["LayoutOrder"]}]
      654 MOVE                             R60 R40
      655 CALL                             R60 0 1
      656 SETTABLEKS                       R60 R59 K68 ["LayoutOrder"]
      658 DUPTABLE                         R60 K121 [{"Text"}]
      659 GETUPVAL                         R61 11
      660 GETUPVAL                         R62 26
      661 DUPTABLE                         R63 K124 [{"markdown", "linkCallback", "LayoutOrder"}]
      662 GETTABLEKS                       R65 R0 K11 ["failureReason"]
      664 JUMPIFNOT                        R65 ; [+6]
      665 GETTABLEKS                       R65 R30 K125 ["FailureMessageText"]
      667 GETTABLEKS                       R66 R0 K11 ["failureReason"]
      669 GETTABLE                         R64 R65 R66
      670 JUMPIF                           R64 ; [+2]
      671 GETTABLEKS                       R64 R30 K126 ["UnknownError"]
      673 SETTABLEKS                       R64 R63 K122 ["markdown"]
      675 SETTABLEKS                       R29 R63 K123 ["linkCallback"]
      677 MOVE                             R64 R40
      678 CALL                             R64 0 1
      679 SETTABLEKS                       R64 R63 K68 ["LayoutOrder"]
      681 CALL                             R61 2 1
      682 SETTABLEKS                       R61 R60 K63 ["Text"]
      684 CALL                             R57 3 1
      685 SETTABLEKS                       R57 R56 K111 ["TextContainer"]
      687 CALL                             R53 3 1
      688 SETTABLEKS                       R53 R52 K106 ["FailureMessage"]
      690 CALL                             R49 3 1
      691 SETTABLEKS                       R49 R48 K101 ["LeftSpace"]
      693 GETUPVAL                         R49 11
      694 GETUPVAL                         R50 17
      695 DUPTABLE                         R51 K128 [{["tag"] = "row gap-small auto-xy", ["LayoutOrder"]}]
      696 MOVE                             R52 R40
      697 CALL                             R52 0 1
      698 SETTABLEKS                       R52 R51 K68 ["LayoutOrder"]
      700 DUPTABLE                         R52 K134 [{"CancelButton", "RegenerateButton", "PublishButton", "InsertButton", "AddToPlaceButton"}]
      701 MOVE                             R53 R34
      702 JUMPIFNOT                        R53 ; [+34]
      703 GETUPVAL                         R53 11
      704 GETUPVAL                         R54 27
      705 DUPTABLE                         R55 K136 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      706 GETTABLEKS                       R56 R30 K102 ["Buttons"]
      708 GETTABLEKS                       R56 R56 K137 ["Cancel"]
      710 SETTABLEKS                       R56 R55 K76 ["text"]
      712 GETUPVAL                         R56 19
      713 GETTABLEKS                       R56 R56 K84 ["Enums"]
      715 GETTABLEKS                       R56 R56 K138 ["InputSize"]
      717 GETTABLEKS                       R56 R56 K86 ["Small"]
      719 SETTABLEKS                       R56 R55 K81 ["size"]
      721 GETUPVAL                         R56 19
      722 GETTABLEKS                       R56 R56 K84 ["Enums"]
      724 GETTABLEKS                       R56 R56 K139 ["ButtonVariant"]
      726 GETTABLEKS                       R56 R56 K140 ["Standard"]
      728 SETTABLEKS                       R56 R55 K135 ["variant"]
      730 SETTABLEKS                       R17 R55 K78 ["onActivated"]
      732 MOVE                             R56 R40
      733 CALL                             R56 0 1
      734 SETTABLEKS                       R56 R55 K68 ["LayoutOrder"]
      736 CALL                             R53 2 1
      737 SETTABLEKS                       R53 R52 K129 ["CancelButton"]
      739 MOVE                             R53 R35
      740 JUMPIFNOT                        R53 ; [+34]
      741 GETUPVAL                         R53 11
      742 GETUPVAL                         R54 27
      743 DUPTABLE                         R55 K136 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      744 GETTABLEKS                       R56 R30 K102 ["Buttons"]
      746 GETTABLEKS                       R56 R56 K141 ["Regenerate"]
      748 SETTABLEKS                       R56 R55 K76 ["text"]
      750 GETUPVAL                         R56 19
      751 GETTABLEKS                       R56 R56 K84 ["Enums"]
      753 GETTABLEKS                       R56 R56 K138 ["InputSize"]
      755 GETTABLEKS                       R56 R56 K86 ["Small"]
      757 SETTABLEKS                       R56 R55 K81 ["size"]
      759 GETUPVAL                         R56 19
      760 GETTABLEKS                       R56 R56 K84 ["Enums"]
      762 GETTABLEKS                       R56 R56 K139 ["ButtonVariant"]
      764 GETTABLEKS                       R56 R56 K140 ["Standard"]
      766 SETTABLEKS                       R56 R55 K135 ["variant"]
      768 SETTABLEKS                       R12 R55 K78 ["onActivated"]
      770 MOVE                             R56 R40
      771 CALL                             R56 0 1
      772 SETTABLEKS                       R56 R55 K68 ["LayoutOrder"]
      774 CALL                             R53 2 1
      775 SETTABLEKS                       R53 R52 K130 ["RegenerateButton"]
      777 MOVE                             R53 R36
      778 JUMPIFNOT                        R53 ; [+42]
      779 GETUPVAL                         R53 11
      780 GETUPVAL                         R54 27
      781 DUPTABLE                         R55 K143 [{"text", "size", "variant", "isLoading", "onActivated", "LayoutOrder"}]
      782 JUMPIFNOT                        R33 ; [+5]
      783 GETTABLEKS                       R56 R30 K102 ["Buttons"]
      785 GETTABLEKS                       R56 R56 K144 ["TryAgain"]
      787 JUMP                             ; [+4]
      788 GETTABLEKS                       R56 R30 K102 ["Buttons"]
      790 GETTABLEKS                       R56 R56 K145 ["Publish"]
      792 SETTABLEKS                       R56 R55 K76 ["text"]
      794 GETUPVAL                         R56 19
      795 GETTABLEKS                       R56 R56 K84 ["Enums"]
      797 GETTABLEKS                       R56 R56 K138 ["InputSize"]
      799 GETTABLEKS                       R56 R56 K86 ["Small"]
      801 SETTABLEKS                       R56 R55 K81 ["size"]
      803 GETUPVAL                         R56 19
      804 GETTABLEKS                       R56 R56 K84 ["Enums"]
      806 GETTABLEKS                       R56 R56 K139 ["ButtonVariant"]
      808 GETTABLEKS                       R56 R56 K146 ["Emphasis"]
      810 SETTABLEKS                       R56 R55 K135 ["variant"]
      812 SETTABLEKS                       R5 R55 K142 ["isLoading"]
      814 SETTABLEKS                       R14 R55 K78 ["onActivated"]
      816 MOVE                             R56 R40
      817 CALL                             R56 0 1
      818 SETTABLEKS                       R56 R55 K68 ["LayoutOrder"]
      820 CALL                             R53 2 1
      821 SETTABLEKS                       R53 R52 K131 ["PublishButton"]
      823 MOVE                             R53 R37
      824 JUMPIFNOT                        R53 ; [+42]
      825 GETUPVAL                         R53 11
      826 GETUPVAL                         R54 27
      827 DUPTABLE                         R55 K143 [{"text", "size", "variant", "isLoading", "onActivated", "LayoutOrder"}]
      828 JUMPIFNOT                        R33 ; [+5]
      829 GETTABLEKS                       R56 R30 K102 ["Buttons"]
      831 GETTABLEKS                       R56 R56 K144 ["TryAgain"]
      833 JUMP                             ; [+4]
      834 GETTABLEKS                       R56 R30 K102 ["Buttons"]
      836 GETTABLEKS                       R56 R56 K147 ["AddToPlace"]
      838 SETTABLEKS                       R56 R55 K76 ["text"]
      840 GETUPVAL                         R56 19
      841 GETTABLEKS                       R56 R56 K84 ["Enums"]
      843 GETTABLEKS                       R56 R56 K138 ["InputSize"]
      845 GETTABLEKS                       R56 R56 K86 ["Small"]
      847 SETTABLEKS                       R56 R55 K81 ["size"]
      849 GETUPVAL                         R56 19
      850 GETTABLEKS                       R56 R56 K84 ["Enums"]
      852 GETTABLEKS                       R56 R56 K139 ["ButtonVariant"]
      854 GETTABLEKS                       R56 R56 K146 ["Emphasis"]
      856 SETTABLEKS                       R56 R55 K135 ["variant"]
      858 SETTABLEKS                       R8 R55 K142 ["isLoading"]
      860 SETTABLEKS                       R18 R55 K78 ["onActivated"]
      862 MOVE                             R56 R40
      863 CALL                             R56 0 1
      864 SETTABLEKS                       R56 R55 K68 ["LayoutOrder"]
      866 CALL                             R53 2 1
      867 SETTABLEKS                       R53 R52 K132 ["InsertButton"]
      869 MOVE                             R53 R38
      870 JUMPIFNOT                        R53 ; [+45]
      871 GETUPVAL                         R53 11
      872 GETUPVAL                         R54 27
      873 DUPTABLE                         R55 K149 [{"text", "size", "variant", "isLoading", "isDisabled", "onActivated", "LayoutOrder"}]
      874 JUMPIFNOT                        R33 ; [+5]
      875 GETTABLEKS                       R56 R30 K102 ["Buttons"]
      877 GETTABLEKS                       R56 R56 K144 ["TryAgain"]
      879 JUMP                             ; [+4]
      880 GETTABLEKS                       R56 R30 K102 ["Buttons"]
      882 GETTABLEKS                       R56 R56 K147 ["AddToPlace"]
      884 SETTABLEKS                       R56 R55 K76 ["text"]
      886 GETUPVAL                         R56 19
      887 GETTABLEKS                       R56 R56 K84 ["Enums"]
      889 GETTABLEKS                       R56 R56 K138 ["InputSize"]
      891 GETTABLEKS                       R56 R56 K86 ["Small"]
      893 SETTABLEKS                       R56 R55 K81 ["size"]
      895 GETUPVAL                         R56 19
      896 GETTABLEKS                       R56 R56 K84 ["Enums"]
      898 GETTABLEKS                       R56 R56 K139 ["ButtonVariant"]
      900 GETTABLEKS                       R56 R56 K146 ["Emphasis"]
      902 SETTABLEKS                       R56 R55 K135 ["variant"]
      904 OR                               R56 R5 R8
      905 SETTABLEKS                       R56 R55 K142 ["isLoading"]
      907 SETTABLEKS                       R15 R55 K148 ["isDisabled"]
      909 SETTABLEKS                       R19 R55 K78 ["onActivated"]
      911 MOVE                             R56 R40
      912 CALL                             R56 0 1
      913 SETTABLEKS                       R56 R55 K68 ["LayoutOrder"]
      915 CALL                             R53 2 1
      916 SETTABLEKS                       R53 R52 K133 ["AddToPlaceButton"]
      918 CALL                             R49 3 1
      919 SETTABLEKS                       R49 R48 K102 ["Buttons"]
      921 CALL                             R45 3 1
      922 SETTABLEKS                       R45 R44 K88 ["InfoBar"]
      924 CALL                             R41 3 -1
      925 RETURN                           R41 -1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        5 GETTABLEKS                       R1 R1 K1 ["isError"]
        7 GETTABLEKS                       R2 R0 K2 ["mode"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Preparing"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+15]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K4 ["join"]
       17 MOVE                             R3 R0
       18 DUPTABLE                         R4 K5 [{"isError"}]
       19 SETTABLEKS                       R1 R4 K1 ["isError"]
       21 CALL                             R2 2 1
       22 MOVE                             R0 R2
       23 GETUPVAL                         R2 2
       24 GETUPVAL                         R3 3
       25 MOVE                             R4 R0
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1
       28 GETTABLEKS                       R2 R0 K2 ["mode"]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K6 ["ShowPreview"]
       33 JUMPIFNOTEQ                      R2 R3 ; [+6]
       35 GETUPVAL                         R2 2
       36 GETUPVAL                         R3 4
       37 MOVE                             R4 R0
       38 CALL                             R2 2 -1
       39 RETURN                           R2 -1
       40 LOADNIL                          R2
       41 RETURN                           R2 1

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["mode"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ShowPreview"]
        5 JUMPIFEQ                         R1 R2 ; [+8]
        7 DUPTABLE                         R1 K2 [{"mode"}]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["Preparing"]
       11 SETTABLEKS                       R2 R1 K0 ["mode"]
       13 RETURN                           R1 1
       14 DUPTABLE                         R1 K12 [{"mode", "name", "previewImages", "previewState", "failureReason", "generationRetryCount", "publishAttemptCount", "validatedArgs", "generationMeta"}]
       15 GETTABLEKS                       R2 R0 K0 ["mode"]
       17 SETTABLEKS                       R2 R1 K0 ["mode"]
       19 GETTABLEKS                       R2 R0 K4 ["name"]
       21 SETTABLEKS                       R2 R1 K4 ["name"]
       23 GETTABLEKS                       R2 R0 K5 ["previewImages"]
       25 SETTABLEKS                       R2 R1 K5 ["previewImages"]
       27 GETTABLEKS                       R2 R0 K6 ["previewState"]
       29 SETTABLEKS                       R2 R1 K6 ["previewState"]
       31 GETTABLEKS                       R2 R0 K7 ["failureReason"]
       33 SETTABLEKS                       R2 R1 K7 ["failureReason"]
       35 GETTABLEKS                       R2 R0 K8 ["generationRetryCount"]
       37 SETTABLEKS                       R2 R1 K8 ["generationRetryCount"]
       39 GETTABLEKS                       R2 R0 K9 ["publishAttemptCount"]
       41 SETTABLEKS                       R2 R1 K9 ["publishAttemptCount"]
       43 GETTABLEKS                       R2 R0 K10 ["validatedArgs"]
       45 SETTABLEKS                       R2 R1 K10 ["validatedArgs"]
       47 GETTABLEKS                       R2 R0 K11 ["generationMeta"]
       49 SETTABLEKS                       R2 R1 K11 ["generationMeta"]
       51 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R2 R0 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["ShowPreview"]
        5 JUMPIFEQ                         R2 R3 ; [+8]
        7 DUPTABLE                         R2 K6 [{["type"] = "MeshGen", [2], ["isError"] = True}]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K7 ["Preparing"]
       11 SETTABLEKS                       R3 R2 K0 ["mode"]
       13 RETURN                           R2 1
       14 DUPTABLE                         R2 K27 [{["type"] = "MeshGen", [2], ["expanded"] = False, ["name"], ["displayName"], ["className"] = , ["previewImages"], ["previewState"], ["failureReason"], ["generationRetryCount"], ["publishAttemptCount"], ["validatedArgs"], ["generationMeta"], ["retryGeneration"], ["cancelGeneration"], ["publishAssets"], ["insertAssets"], ["shouldShowChip"] = False, ["onChipClicked"]}]
       15 GETTABLEKS                       R3 R0 K0 ["mode"]
       17 SETTABLEKS                       R3 R2 K0 ["mode"]
       19 GETTABLEKS                       R3 R0 K10 ["name"]
       21 SETTABLEKS                       R3 R2 K10 ["name"]
       23 GETTABLEKS                       R3 R0 K10 ["name"]
       25 SETTABLEKS                       R3 R2 K11 ["displayName"]
       27 GETTABLEKS                       R3 R0 K14 ["previewImages"]
       29 SETTABLEKS                       R3 R2 K14 ["previewImages"]
       31 GETTABLEKS                       R3 R0 K15 ["previewState"]
       33 SETTABLEKS                       R3 R2 K15 ["previewState"]
       35 GETTABLEKS                       R3 R0 K16 ["failureReason"]
       37 SETTABLEKS                       R3 R2 K16 ["failureReason"]
       39 GETTABLEKS                       R3 R0 K17 ["generationRetryCount"]
       41 SETTABLEKS                       R3 R2 K17 ["generationRetryCount"]
       43 GETTABLEKS                       R3 R0 K18 ["publishAttemptCount"]
       45 SETTABLEKS                       R3 R2 K18 ["publishAttemptCount"]
       47 GETTABLEKS                       R3 R0 K19 ["validatedArgs"]
       49 SETTABLEKS                       R3 R2 K19 ["validatedArgs"]
       51 GETTABLEKS                       R3 R0 K20 ["generationMeta"]
       53 SETTABLEKS                       R3 R2 K20 ["generationMeta"]
       55 GETUPVAL                         R3 1
       56 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
       58 LOADK                            R4 K21 ["retryGeneration"]
       59 CALL                             R3 1 1
       60 SETTABLEKS                       R3 R2 K21 ["retryGeneration"]
       62 GETUPVAL                         R3 1
       63 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
       65 LOADK                            R4 K22 ["cancelGeneration"]
       66 CALL                             R3 1 1
       67 SETTABLEKS                       R3 R2 K22 ["cancelGeneration"]
       69 GETUPVAL                         R3 1
       70 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
       72 LOADK                            R4 K23 ["publishAssets"]
       73 CALL                             R3 1 1
       74 SETTABLEKS                       R3 R2 K23 ["publishAssets"]
       76 GETUPVAL                         R3 1
       77 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
       79 LOADK                            R4 K24 ["insertAssets"]
       80 CALL                             R3 1 1
       81 SETTABLEKS                       R3 R2 K24 ["insertAssets"]
       83 GETUPVAL                         R3 1
       84 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
       86 LOADK                            R4 K26 ["onChipClicked"]
       87 CALL                             R3 1 1
       88 SETTABLEKS                       R3 R2 K26 ["onChipClicked"]
       90 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Guest"]
       25 GETTABLEKS                       R4 R4 K11 ["Environment"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Components"]
       39 GETTABLEKS                       R6 R6 K13 ["MarkdownText"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Components"]
       60 GETTABLEKS                       R9 R9 K16 ["ShimmerGradient"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K17 ["Util"]
       67 GETTABLEKS                       R10 R10 K18 ["TestIds"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K19 ["Resources"]
       74 GETTABLEKS                       R11 R11 K20 ["Localization"]
       76 GETTABLEKS                       R11 R11 K21 ["Translator"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K22 ["Types"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       88 GETTABLEKS                       R13 R13 K24 ["useClassIcon"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K23 ["Hooks"]
       95 GETTABLEKS                       R14 R14 K25 ["useContentPropState"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K23 ["Hooks"]
      102 GETTABLEKS                       R15 R15 K26 ["useWrappingIndex"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K1 [script]
      107 LOADK                            R17 K27 ["MeshGen"]
      108 NAMECALL                         R15 R15 K3 ["FindFirstAncestor"]
      110 CALL                             R15 2 1
      111 GETIMPORT                        R16 K5 [require]
      113 GETTABLEKS                       R17 R15 K28 ["MeshGenConstants"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R18 R15 K29 ["MeshGenTypes"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K5 [require]
      123 GETTABLEKS                       R19 R0 K30 ["Features"]
      125 GETTABLEKS                       R19 R19 K31 ["Gen3dUtils"]
      127 GETTABLEKS                       R19 R19 K32 ["ViewportPreviewUtils"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K5 [require]
      132 GETTABLEKS                       R20 R0 K33 ["Flags"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K5 [require]
      137 GETTABLEKS                       R21 R0 K17 ["Util"]
      139 GETTABLEKS                       R21 R21 K34 ["Serializer"]
      141 GETTABLEKS                       R21 R21 K35 ["SerializerTypes"]
      143 CALL                             R20 1 1
      144 GETTABLEKS                       R21 R4 K36 ["Button"]
      146 GETTABLEKS                       R22 R4 K37 ["Chip"]
      148 GETTABLEKS                       R23 R4 K38 ["Icon"]
      150 GETTABLEKS                       R24 R4 K39 ["IconButton"]
      152 GETTABLEKS                       R25 R4 K40 ["Image"]
      154 GETTABLEKS                       R26 R4 K41 ["Skeleton"]
      156 GETTABLEKS                       R27 R4 K42 ["Text"]
      158 GETTABLEKS                       R28 R4 K43 ["View"]
      160 GETTABLEKS                       R29 R7 K44 ["createNextOrder"]
      162 GETTABLEKS                       R30 R6 K45 ["createElement"]
      164 GETTABLEKS                       R31 R16 K46 ["Enums"]
      166 GETTABLEKS                       R32 R16 K47 ["PREVIEW_HEIGHT"]
      168 DUPTABLE                         R33 K50 [{["Preparing"] = "Preparing", ["ShowPreview"] = "ShowPreview"}]
      169 DUPCLOSURE                       R34 K51 [PROTO_0]
      170 CAPTURE                          VAL R29
      171 CAPTURE                          VAL R30
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R9
      174 DUPCLOSURE                       R35 K52 [PROTO_3]
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R29
      178 CAPTURE                          VAL R30
      179 CAPTURE                          VAL R34
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R27
      182 CAPTURE                          VAL R8
      183 DUPCLOSURE                       R36 K53 [PROTO_5]
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R6
      186 CAPTURE                          VAL R19
      187 DUPCLOSURE                       R37 K54 [PROTO_7]
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R19
      191 DUPCLOSURE                       R38 K55 [PROTO_9]
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R18
      196 DUPCLOSURE                       R39 K56 [PROTO_28]
      197 CAPTURE                          VAL R31
      198 CAPTURE                          VAL R36
      199 CAPTURE                          VAL R37
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R38
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R16
      204 CAPTURE                          VAL R12
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R10
      207 CAPTURE                          VAL R18
      208 CAPTURE                          VAL R30
      209 CAPTURE                          VAL R29
      210 CAPTURE                          VAL R34
      211 CAPTURE                          VAL R2
      212 CAPTURE                          VAL R27
      213 CAPTURE                          VAL R8
      214 CAPTURE                          VAL R28
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R4
      217 CAPTURE                          VAL R26
      218 CAPTURE                          VAL R32
      219 CAPTURE                          VAL R24
      220 CAPTURE                          VAL R25
      221 CAPTURE                          VAL R9
      222 CAPTURE                          VAL R23
      223 CAPTURE                          VAL R5
      224 CAPTURE                          VAL R21
      225 DUPCLOSURE                       R40 K57 [PROTO_29]
      226 CAPTURE                          VAL R33
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R30
      229 CAPTURE                          VAL R35
      230 CAPTURE                          VAL R39
      231 DUPTABLE                         R41 K60 [{"toMeta", "fromMeta"}]
      232 DUPCLOSURE                       R42 K61 [PROTO_30]
      233 CAPTURE                          VAL R33
      234 SETTABLEKS                       R42 R41 K58 ["toMeta"]
      236 DUPCLOSURE                       R42 K62 [PROTO_31]
      237 CAPTURE                          VAL R33
      238 CAPTURE                          VAL R7
      239 SETTABLEKS                       R42 R41 K59 ["fromMeta"]
      241 DUPTABLE                         R42 K67 [{["Type"] = "MeshGen", ["ContentWidget"], ["Serialization"], ["Modes"]}]
      242 GETTABLEKS                       R43 R6 K68 ["memo"]
      244 MOVE                             R44 R40
      245 CALL                             R43 1 1
      246 SETTABLEKS                       R43 R42 K64 ["ContentWidget"]
      248 SETTABLEKS                       R41 R42 K65 ["Serialization"]
      250 SETTABLEKS                       R33 R42 K66 ["Modes"]
      252 RETURN                           R42 1
