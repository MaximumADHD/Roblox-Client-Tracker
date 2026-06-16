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
       57 JUMPIFNOT                        R6 ; [+15]
       58 GETUPVAL                         R6 1
       59 GETUPVAL                         R7 2
       60 GETTABLEKS                       R7 R7 K8 ["Content"]
       62 DUPTABLE                         R8 K19 [{"tag", "LayoutOrder"}]
       63 LOADK                            R9 K20 ["col size-0-0 fill auto-y gap-small"]
       64 SETTABLEKS                       R9 R8 K18 ["tag"]
       66 MOVE                             R9 R1
       67 CALL                             R9 0 1
       68 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       70 GETTABLEKS                       R9 R0 K17 ["children"]
       72 CALL                             R6 3 1
       73 SETTABLEKS                       R6 R5 K8 ["Content"]
       75 GETTABLEKS                       R6 R0 K21 ["persistChildren"]
       77 SETTABLEKS                       R6 R5 K9 ["Persist"]
       79 CALL                             R2 3 -1
       80 RETURN                           R2 -1

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
       32 DUPTABLE                         R9 K8 [{"canToggle", "headerChildren"}]
       33 LOADB                            R10 0
       34 SETTABLEKS                       R10 R9 K6 ["canToggle"]
       36 DUPTABLE                         R10 K10 [{"Text"}]
       37 GETUPVAL                         R11 3
       38 GETUPVAL                         R12 6
       39 DUPTABLE                         R13 K13 [{"tag", "Text", "LayoutOrder"}]
       40 LOADK                            R14 K14 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
       41 SETTABLEKS                       R14 R13 K11 ["tag"]
       43 JUMPIFNOT                        R2 ; [+3]
       44 GETTABLEKS                       R14 R1 K15 ["FailedToGenerate"]
       46 JUMP                             ; [+8]
       47 GETTABLEKS                       R15 R0 K4 ["toolResult"]
       49 JUMPIFNOT                        R15 ; [+3]
       50 GETTABLEKS                       R14 R1 K16 ["ToolRejected"]
       52 JUMP                             ; [+2]
       53 GETTABLEKS                       R14 R1 K17 ["Preparing"]
       55 SETTABLEKS                       R14 R13 K9 ["Text"]
       57 MOVE                             R14 R5
       58 CALL                             R14 0 1
       59 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
       61 DUPTABLE                         R14 K19 [{"Shimmer"}]
       62 MOVE                             R15 R3
       63 JUMPIFNOT                        R15 ; [+3]
       64 GETUPVAL                         R15 3
       65 GETUPVAL                         R16 7
       66 CALL                             R15 1 1
       67 SETTABLEKS                       R15 R14 K18 ["Shimmer"]
       69 CALL                             R11 3 1
       70 SETTABLEKS                       R11 R10 K9 ["Text"]
       72 SETTABLEKS                       R10 R9 K7 ["headerChildren"]
       74 MOVE                             R10 R0
       75 CALL                             R8 2 -1
       76 CALL                             R6 -1 -1
       77 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 JUMPIFNOTLE                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 0
        8 ADDK                             R1 R2 K0 [1]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K1 ["retryGeneration"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

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
       25 CALL                             R6 0 1
       26 JUMPIFLT                         R3 R6 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 MOVE                             R6 R5
       31 MOVE                             R7 R4
       32 RETURN                           R6 2

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 JUMPIFNOTLE                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 0
        8 ADDK                             R1 R2 K0 [1]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 3
       11 GETTABLEKS                       R0 R0 K1 ["publishAssets"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

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
       25 CALL                             R6 0 1
       26 JUMPIFLT                         R3 R6 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 MOVE                             R6 R5
       31 MOVE                             R7 R4
       32 RETURN                           R6 2

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
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+16]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 NEWTABLE                         R3 0 1
       10 GETTABLEKS                       R4 R0 K1 ["previewImages"]
       12 SETLIST                          R3 R4 1 [1]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 2
       16 MOVE                             R3 R1
       17 CALL                             R2 1 1
       18 RETURN                           R2 1
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K2 ["useCarouselPreviewImage"]
       22 GETTABLEKS                       R2 R0 K1 ["previewImages"]
       24 CALL                             R1 1 -1
       25 RETURN                           R1 -1

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
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K0 ["current"]
       10 JUMPIFNOT                        R0 ; [+6]
       11 GETIMPORT                        R0 K3 [task.cancel]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K0 ["current"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 2
       18 GETIMPORT                        R1 K5 [task.delay]
       20 LOADN                            R2 5
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U1
       24 CALL                             R1 2 1
       25 SETTABLEKS                       R1 R0 K0 ["current"]
       27 RETURN                           R0 0

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
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["exists"]
        8 JUMPIFNOT                        R0 ; [+2]
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+2]
       11 LOADNIL                          R0
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K1 ["countRef"]
       16 GETIMPORT                        R1 K4 [task.delay]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K6 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
       21 MULK                             R2 R3 K5 [0.08]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U1
       26 CALL                             R1 2 1
       27 NEWCLOSURE                       R2 P1
       28 CAPTURE                          VAL R1
       29 RETURN                           R2 1

PROTO_22:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["previewState"]
       11 SETTABLEKS                       R2 R1 K0 ["current"]
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K2 ["PreviewState"]
       16 GETTABLEKS                       R1 R1 K3 ["Inserting"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+19]
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R1 K1 ["previewState"]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K2 ["PreviewState"]
       26 GETTABLEKS                       R2 R2 K4 ["Published"]
       28 JUMPIFNOTEQ                      R1 R2 ; [+9]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K5 ["editThisContent"]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K6 ["contentId"]
       36 DUPCLOSURE                       R3 K7 [PROTO_22]
       37 CALL                             R1 2 0
       38 RETURN                           R0 0

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
      146 CALL                             R8 0 1
      147 SETTABLEKS                       R8 R7 K16 ["link"]
      149 NAMECALL                         R3 R3 K3 ["getText"]
      151 CALL                             R3 4 1
      152 SETTABLE                         R3 R1 R2
      153 GETUPVAL                         R2 0
      154 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      156 GETTABLEKS                       R2 R2 K18 ["GenerationCanceled"]
      158 GETUPVAL                         R3 1
      159 LOADK                            R5 K2 ["MeshGen"]
      160 LOADK                            R6 K18 ["GenerationCanceled"]
      161 NAMECALL                         R3 R3 K3 ["getText"]
      163 CALL                             R3 3 1
      164 SETTABLE                         R3 R1 R2
      165 GETUPVAL                         R2 0
      166 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      168 GETTABLEKS                       R2 R2 K10 ["PublishFailed"]
      170 GETUPVAL                         R3 1
      171 LOADK                            R5 K2 ["MeshGen"]
      172 LOADK                            R6 K10 ["PublishFailed"]
      173 NAMECALL                         R3 R3 K3 ["getText"]
      175 CALL                             R3 3 1
      176 SETTABLE                         R3 R1 R2
      177 GETUPVAL                         R2 0
      178 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      180 GETTABLEKS                       R2 R2 K19 ["AssetPermissionCreationFailed"]
      182 GETUPVAL                         R3 1
      183 LOADK                            R5 K2 ["MeshGen"]
      184 LOADK                            R6 K19 ["AssetPermissionCreationFailed"]
      185 NAMECALL                         R3 R3 K3 ["getText"]
      187 CALL                             R3 3 1
      188 SETTABLE                         R3 R1 R2
      189 GETUPVAL                         R2 0
      190 GETTABLEKS                       R2 R2 K14 ["FailureReason"]
      192 GETTABLEKS                       R2 R2 K13 ["InsertFailed"]
      194 GETUPVAL                         R3 1
      195 LOADK                            R5 K2 ["MeshGen"]
      196 LOADK                            R6 K13 ["InsertFailed"]
      197 NAMECALL                         R3 R3 K3 ["getText"]
      199 CALL                             R3 3 1
      200 SETTABLE                         R3 R1 R2
      201 DUPTABLE                         R2 K24 [{"PreviewStateHeaderText", "FailureMessageText", "UnknownError", "Buttons"}]
      202 SETTABLEKS                       R0 R2 K20 ["PreviewStateHeaderText"]
      204 SETTABLEKS                       R1 R2 K21 ["FailureMessageText"]
      206 GETUPVAL                         R3 1
      207 LOADK                            R5 K2 ["MeshGen"]
      208 LOADK                            R6 K22 ["UnknownError"]
      209 NAMECALL                         R3 R3 K3 ["getText"]
      211 CALL                             R3 3 1
      212 SETTABLEKS                       R3 R2 K22 ["UnknownError"]
      214 DUPTABLE                         R3 K30 [{"Cancel", "Regenerate", "Publish", "AddToPlace", "TryAgain"}]
      215 GETUPVAL                         R4 1
      216 LOADK                            R6 K2 ["MeshGen"]
      217 LOADK                            R7 K25 ["Cancel"]
      218 NAMECALL                         R4 R4 K3 ["getText"]
      220 CALL                             R4 3 1
      221 SETTABLEKS                       R4 R3 K25 ["Cancel"]
      223 GETUPVAL                         R4 1
      224 LOADK                            R6 K2 ["MeshGen"]
      225 LOADK                            R7 K26 ["Regenerate"]
      226 NAMECALL                         R4 R4 K3 ["getText"]
      228 CALL                             R4 3 1
      229 SETTABLEKS                       R4 R3 K26 ["Regenerate"]
      231 GETUPVAL                         R4 1
      232 LOADK                            R6 K2 ["MeshGen"]
      233 LOADK                            R7 K27 ["Publish"]
      234 NAMECALL                         R4 R4 K3 ["getText"]
      236 CALL                             R4 3 1
      237 SETTABLEKS                       R4 R3 K27 ["Publish"]
      239 GETUPVAL                         R4 1
      240 LOADK                            R6 K2 ["MeshGen"]
      241 LOADK                            R7 K28 ["AddToPlace"]
      242 NAMECALL                         R4 R4 K3 ["getText"]
      244 CALL                             R4 3 1
      245 SETTABLEKS                       R4 R3 K28 ["AddToPlace"]
      247 GETUPVAL                         R4 1
      248 LOADK                            R6 K2 ["MeshGen"]
      249 LOADK                            R7 K29 ["TryAgain"]
      250 NAMECALL                         R4 R4 K3 ["getText"]
      252 CALL                             R4 3 1
      253 SETTABLEKS                       R4 R3 K29 ["TryAgain"]
      255 SETTABLEKS                       R3 R2 K23 ["Buttons"]
      257 RETURN                           R2 1

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
       21 JUMPIFEQKS                       R5 K12 [""] ; [+29]
       23 LOADK                            R7 K13 ["preload_%*"]
       24 MOVE                             R9 R4
       25 NAMECALL                         R7 R7 K14 ["format"]
       27 CALL                             R7 2 1
       28 MOVE                             R6 R7
       29 GETUPVAL                         R7 0
       30 LOADK                            R8 K15 ["ImageLabel"]
       31 DUPTABLE                         R9 K20 [{"BackgroundTransparency", "ImageTransparency", "Image", "Size", "LayoutOrder"}]
       32 LOADN                            R10 1
       33 SETTABLEKS                       R10 R9 K16 ["BackgroundTransparency"]
       35 LOADK                            R10 K21 [0.9]
       36 SETTABLEKS                       R10 R9 K17 ["ImageTransparency"]
       38 SETTABLEKS                       R5 R9 K18 ["Image"]
       40 GETIMPORT                        R10 K24 [UDim2.fromOffset]
       42 LOADN                            R11 4
       43 LOADN                            R12 4
       44 CALL                             R10 2 1
       45 SETTABLEKS                       R10 R9 K19 ["Size"]
       47 SETTABLEKS                       R4 R9 K9 ["LayoutOrder"]
       49 CALL                             R7 2 1
       50 SETTABLE                         R7 R0 R6
       51 FORGLOOP                         R1 2 ; [-31]
       53 GETUPVAL                         R1 0
       54 LOADK                            R2 K25 ["Frame"]
       55 DUPTABLE                         R3 K28 [{"BackgroundTransparency", "ClipsDescendants", "Position", "Size"}]
       56 LOADN                            R4 1
       57 SETTABLEKS                       R4 R3 K16 ["BackgroundTransparency"]
       59 LOADB                            R4 0
       60 SETTABLEKS                       R4 R3 K26 ["ClipsDescendants"]
       62 GETIMPORT                        R4 K24 [UDim2.fromOffset]
       64 LOADN                            R5 0
       65 LOADN                            R6 0
       66 CALL                             R4 2 1
       67 SETTABLEKS                       R4 R3 K27 ["Position"]
       69 GETIMPORT                        R4 K24 [UDim2.fromOffset]
       71 LOADN                            R5 0
       72 LOADN                            R6 0
       73 CALL                             R4 2 1
       74 SETTABLEKS                       R4 R3 K19 ["Size"]
       76 MOVE                             R4 R0
       77 CALL                             R1 3 -1
       78 RETURN                           R1 -1

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
       35 DUPTABLE                         R3 K17 [{"tag", "Image", "BackgroundColor3", "BackgroundTransparency", "ScaleType", "LayoutOrder", "testId"}]
       36 LOADK                            R4 K18 ["size-0-full fill radius-small"]
       37 SETTABLEKS                       R4 R3 K11 ["tag"]
       39 GETUPVAL                         R4 6
       40 GETTABLEKS                       R4 R4 K19 ["current"]
       42 SETTABLEKS                       R4 R3 K12 ["Image"]
       44 GETIMPORT                        R4 K22 [Color3.fromRGB]
       46 LOADN                            R5 0
       47 LOADN                            R6 0
       48 LOADN                            R7 0
       49 CALL                             R4 3 1
       50 SETTABLEKS                       R4 R3 K13 ["BackgroundColor3"]
       52 LOADN                            R4 0
       53 SETTABLEKS                       R4 R3 K14 ["BackgroundTransparency"]
       55 GETIMPORT                        R4 K25 [Enum.ScaleType.Fit]
       57 SETTABLEKS                       R4 R3 K15 ["ScaleType"]
       59 GETUPVAL                         R4 4
       60 CALL                             R4 0 1
       61 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       63 GETUPVAL                         R4 7
       64 GETTABLEKS                       R4 R4 K26 ["MeshGen"]
       66 GETTABLEKS                       R4 R4 K27 ["PreviewImage"]
       68 SETTABLEKS                       R4 R3 K16 ["testId"]
       70 DUPTABLE                         R4 K29 [{"PreloadTray"}]
       71 GETUPVAL                         R6 8
       72 CALL                             R6 0 1
       73 JUMPIFNOT                        R6 ; [+9]
       74 GETUPVAL                         R6 6
       75 GETTABLEKS                       R6 R6 K30 ["images"]
       77 JUMPIFNOT                        R6 ; [+5]
       78 NEWCLOSURE                       R5 P0
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          UPVAL U6
       81 CALL                             R5 0 1
       82 JUMPIF                           R5 ; [+1]
       83 LOADNIL                          R5
       84 SETTABLEKS                       R5 R4 K28 ["PreloadTray"]
       86 CALL                             R1 3 1
       87 SETTABLEKS                       R1 R0 K27 ["PreviewImage"]
       89 GETUPVAL                         R1 0
       90 GETUPVAL                         R2 1
       91 DUPTABLE                         R3 K4 [{"icon", "size", "onActivated", "LayoutOrder"}]
       92 GETUPVAL                         R4 2
       93 GETTABLEKS                       R4 R4 K5 ["Enums"]
       95 GETTABLEKS                       R4 R4 K6 ["IconName"]
       97 GETTABLEKS                       R4 R4 K31 ["ChevronLargeRight"]
       99 SETTABLEKS                       R4 R3 K0 ["icon"]
      101 GETUPVAL                         R4 2
      102 GETTABLEKS                       R4 R4 K5 ["Enums"]
      104 GETTABLEKS                       R4 R4 K8 ["InputSize"]
      106 GETTABLEKS                       R4 R4 K9 ["Small"]
      108 SETTABLEKS                       R4 R3 K1 ["size"]
      110 GETUPVAL                         R4 9
      111 SETTABLEKS                       R4 R3 K2 ["onActivated"]
      113 GETUPVAL                         R4 4
      114 CALL                             R4 0 1
      115 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
      117 CALL                             R1 2 1
      118 SETTABLEKS                       R1 R0 K32 ["NextPreview"]
      120 RETURN                           R0 1

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
      278 CAPTURE                          UPVAL U10
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
      341 JUMPIFNOT                        R36 ; [+5]
      342 MOVE                             R36 R13
      343 JUMPIFNOT                        R36 ; [+3]
      344 GETUPVAL                         R37 11
      345 CALL                             R37 0 1
      346 NOT                              R36 R37
      347 JUMPIF                           R7 ; [+2]
      348 MOVE                             R37 R9
      349 JUMPIFNOT                        R37 ; [+3]
      350 GETUPVAL                         R38 11
      351 CALL                             R38 0 1
      352 NOT                              R37 R38
      353 GETUPVAL                         R38 11
      354 CALL                             R38 0 1
      355 JUMPIFNOT                        R38 ; [+10]
      356 LOADB                            R38 0
      357 GETTABLEKS                       R39 R0 K18 ["addToPlace"]
      359 JUMPIFEQKNIL                     R39 ; [+6]
      361 MOVE                             R38 R4
      362 JUMPIF                           R38 ; [+3]
      363 MOVE                             R38 R6
      364 JUMPIF                           R38 ; [+1]
      365 MOVE                             R38 R9
      366 LOADNIL                          R39
      367 GETUPVAL                         R40 5
      368 CALL                             R40 0 1
      369 JUMPIFNOT                        R40 ; [+73]
      370 GETTABLEKS                       R40 R20 K35 ["images"]
      372 JUMPIFNOT                        R40 ; [+70]
      373 NEWTABLE                         R40 0 0
      375 GETUPVAL                         R41 12
      376 GETTABLEKS                       R41 R41 K36 ["getBatch0Indices"]
      378 GETTABLEKS                       R44 R20 K35 ["images"]
      380 LENGTH                           R42 R44
      381 CALL                             R41 1 3
      382 FORGPREP                         R41
      383 GETTABLEKS                       R47 R20 K35 ["images"]
      385 GETTABLE                         R46 R47 R45
      386 JUMPIFNOT                        R46 ; [+35]
      387 JUMPIFEQKS                       R46 K37 [""] ; [+34]
      389 LOADK                            R48 K38 ["persist_%*"]
      390 MOVE                             R50 R45
      391 NAMECALL                         R48 R48 K39 ["format"]
      393 CALL                             R48 2 1
      394 MOVE                             R47 R48
      395 GETUPVAL                         R48 13
      396 LOADK                            R49 K40 ["ImageLabel"]
      397 DUPTABLE                         R50 K46 [{"BackgroundTransparency", "Image", "Position", "Size", "ZIndex"}]
      398 LOADN                            R51 1
      399 SETTABLEKS                       R51 R50 K41 ["BackgroundTransparency"]
      401 SETTABLEKS                       R46 R50 K42 ["Image"]
      403 GETIMPORT                        R51 K49 [UDim2.fromOffset]
      405 LOADN                            R52 0
      406 LOADN                            R53 0
      407 CALL                             R51 2 1
      408 SETTABLEKS                       R51 R50 K43 ["Position"]
      410 GETIMPORT                        R51 K49 [UDim2.fromOffset]
      412 LOADN                            R52 2
      413 LOADN                            R53 2
      414 CALL                             R51 2 1
      415 SETTABLEKS                       R51 R50 K44 ["Size"]
      417 LOADN                            R51 246
      418 SETTABLEKS                       R51 R50 K45 ["ZIndex"]
      420 CALL                             R48 2 1
      421 SETTABLE                         R48 R40 R47
      422 FORGLOOP                         R41 2 ; [-40]
      424 GETUPVAL                         R41 13
      425 LOADK                            R42 K50 ["Frame"]
      426 DUPTABLE                         R43 K52 [{"BackgroundTransparency", "Size", "ClipsDescendants"}]
      427 LOADN                            R44 1
      428 SETTABLEKS                       R44 R43 K41 ["BackgroundTransparency"]
      430 GETIMPORT                        R44 K49 [UDim2.fromOffset]
      432 LOADN                            R45 0
      433 LOADN                            R46 0
      434 CALL                             R44 2 1
      435 SETTABLEKS                       R44 R43 K44 ["Size"]
      437 LOADB                            R44 1
      438 SETTABLEKS                       R44 R43 K51 ["ClipsDescendants"]
      440 MOVE                             R44 R40
      441 CALL                             R41 3 1
      442 MOVE                             R39 R41
      443 GETUPVAL                         R40 14
      444 CALL                             R40 0 1
      445 GETUPVAL                         R41 13
      446 GETUPVAL                         R42 15
      447 GETUPVAL                         R43 16
      448 GETTABLEKS                       R43 R43 K53 ["assign"]
      450 DUPTABLE                         R44 K57 [{"canToggle", "persistChildren", "headerChildren"}]
      451 LOADB                            R45 1
      452 SETTABLEKS                       R45 R44 K54 ["canToggle"]
      454 SETTABLEKS                       R39 R44 K55 ["persistChildren"]
      456 DUPTABLE                         R45 K60 [{"Text", "ChipArea"}]
      457 GETUPVAL                         R46 13
      458 GETUPVAL                         R47 17
      459 DUPTABLE                         R48 K63 [{"tag", "Text", "LayoutOrder"}]
      460 LOADK                            R49 K64 ["size-0-0 auto-xy text-label-small content-default text-truncate-end"]
      461 SETTABLEKS                       R49 R48 K61 ["tag"]
      463 SETTABLEKS                       R31 R48 K58 ["Text"]
      465 MOVE                             R49 R40
      466 CALL                             R49 0 1
      467 SETTABLEKS                       R49 R48 K62 ["LayoutOrder"]
      469 DUPTABLE                         R49 K66 [{"Shimmer"}]
      470 MOVE                             R50 R32
      471 JUMPIFNOT                        R50 ; [+3]
      472 GETUPVAL                         R50 13
      473 GETUPVAL                         R51 18
      474 CALL                             R50 1 1
      475 SETTABLEKS                       R50 R49 K65 ["Shimmer"]
      477 CALL                             R46 3 1
      478 SETTABLEKS                       R46 R45 K58 ["Text"]
      480 GETTABLEKS                       R46 R0 K32 ["shouldShowChip"]
      482 JUMPIFNOT                        R46 ; [+54]
      483 GETUPVAL                         R46 13
      484 GETUPVAL                         R47 19
      485 DUPTABLE                         R48 K67 [{"tag", "LayoutOrder"}]
      486 LOADK                            R49 K68 ["fill align-x-left align-y-center"]
      487 SETTABLEKS                       R49 R48 K61 ["tag"]
      489 MOVE                             R49 R40
      490 CALL                             R49 0 1
      491 SETTABLEKS                       R49 R48 K62 ["LayoutOrder"]
      493 DUPTABLE                         R49 K70 [{"AssetLink"}]
      494 GETUPVAL                         R50 13
      495 GETUPVAL                         R51 20
      496 DUPTABLE                         R52 K76 [{"text", "leading", "onActivated", "isChecked", "size", "LayoutOrder"}]
      497 GETTABLEKS                       R53 R0 K34 ["displayName"]
      499 SETTABLEKS                       R53 R52 K71 ["text"]
      501 GETTABLEKS                       R53 R28 K42 ["Image"]
      503 SETTABLEKS                       R53 R52 K72 ["leading"]
      505 GETTABLEKS                       R53 R0 K77 ["onChipClicked"]
      507 SETTABLEKS                       R53 R52 K73 ["onActivated"]
      509 LOADB                            R53 0
      510 SETTABLEKS                       R53 R52 K74 ["isChecked"]
      512 GETUPVAL                         R53 21
      513 GETTABLEKS                       R53 R53 K78 ["Enums"]
      515 GETTABLEKS                       R53 R53 K79 ["ChipSize"]
      517 GETTABLEKS                       R53 R53 K80 ["Small"]
      519 SETTABLEKS                       R53 R52 K75 ["size"]
      521 MOVE                             R53 R40
      522 CALL                             R53 0 1
      523 SETTABLEKS                       R53 R52 K62 ["LayoutOrder"]
      525 DUPTABLE                         R53 K66 [{"Shimmer"}]
      526 MOVE                             R54 R32
      527 JUMPIFNOT                        R54 ; [+3]
      528 GETUPVAL                         R54 13
      529 GETUPVAL                         R55 18
      530 CALL                             R54 1 1
      531 SETTABLEKS                       R54 R53 K65 ["Shimmer"]
      533 CALL                             R50 3 1
      534 SETTABLEKS                       R50 R49 K69 ["AssetLink"]
      536 CALL                             R46 3 1
      537 SETTABLEKS                       R46 R45 K59 ["ChipArea"]
      539 SETTABLEKS                       R45 R44 K56 ["headerChildren"]
      541 MOVE                             R45 R0
      542 CALL                             R43 2 1
      543 DUPTABLE                         R44 K83 [{"Preview", "InfoBar"}]
      544 JUMPIFNOT                        R3 ; [+2]
      545 LOADNIL                          R45
      546 JUMP                             ; [+62]
      547 GETTABLEKS                       R46 R20 K23 ["exists"]
      549 JUMPIF                           R46 ; [+27]
      550 GETUPVAL                         R45 13
      551 GETUPVAL                         R46 22
      552 DUPTABLE                         R47 K85 [{"Size", "radius", "LayoutOrder"}]
      553 GETIMPORT                        R48 K87 [UDim2.new]
      555 LOADN                            R49 1
      556 LOADN                            R50 0
      557 LOADN                            R51 0
      558 GETUPVAL                         R52 23
      559 CALL                             R48 4 1
      560 SETTABLEKS                       R48 R47 K44 ["Size"]
      562 GETUPVAL                         R48 21
      563 GETTABLEKS                       R48 R48 K78 ["Enums"]
      565 GETTABLEKS                       R48 R48 K88 ["Radius"]
      567 GETTABLEKS                       R48 R48 K80 ["Small"]
      569 SETTABLEKS                       R48 R47 K84 ["radius"]
      571 MOVE                             R48 R40
      572 CALL                             R48 0 1
      573 SETTABLEKS                       R48 R47 K62 ["LayoutOrder"]
      575 CALL                             R45 2 1
      576 JUMP                             ; [+32]
      577 GETUPVAL                         R45 13
      578 GETUPVAL                         R46 19
      579 DUPTABLE                         R47 K89 [{"tag", "Size", "LayoutOrder"}]
      580 LOADK                            R48 K90 ["row size-full-0 auto-y bg-shift-200 radius-small align-x-center align-y-center flex-x-between padding-x-small padding-y-small"]
      581 SETTABLEKS                       R48 R47 K61 ["tag"]
      583 GETIMPORT                        R48 K87 [UDim2.new]
      585 LOADN                            R49 1
      586 LOADN                            R50 0
      587 LOADN                            R51 0
      588 GETUPVAL                         R52 23
      589 CALL                             R48 4 1
      590 SETTABLEKS                       R48 R47 K44 ["Size"]
      592 MOVE                             R48 R40
      593 CALL                             R48 0 1
      594 SETTABLEKS                       R48 R47 K62 ["LayoutOrder"]
      596 NEWCLOSURE                       R48 P11
      597 CAPTURE                          UPVAL U13
      598 CAPTURE                          UPVAL U24
      599 CAPTURE                          UPVAL U21
      600 CAPTURE                          VAL R25
      601 CAPTURE                          VAL R40
      602 CAPTURE                          UPVAL U25
      603 CAPTURE                          VAL R20
      604 CAPTURE                          UPVAL U26
      605 CAPTURE                          UPVAL U5
      606 CAPTURE                          VAL R26
      607 CALL                             R48 0 1
      608 CALL                             R45 3 1
      609 SETTABLEKS                       R45 R44 K81 ["Preview"]
      611 GETUPVAL                         R45 13
      612 GETUPVAL                         R46 19
      613 DUPTABLE                         R47 K67 [{"tag", "LayoutOrder"}]
      614 LOADK                            R48 K91 ["size-full-0 auto-y gap-small row align-y-center"]
      615 SETTABLEKS                       R48 R47 K61 ["tag"]
      617 MOVE                             R48 R40
      618 CALL                             R48 0 1
      619 SETTABLEKS                       R48 R47 K62 ["LayoutOrder"]
      621 DUPTABLE                         R48 K94 [{"LeftSpace", "Buttons"}]
      622 GETUPVAL                         R49 13
      623 GETUPVAL                         R50 19
      624 DUPTABLE                         R51 K67 [{"tag", "LayoutOrder"}]
      625 LOADK                            R52 K95 ["fill size-0-800 auto-y"]
      626 SETTABLEKS                       R52 R51 K61 ["tag"]
      628 MOVE                             R52 R40
      629 CALL                             R52 0 1
      630 SETTABLEKS                       R52 R51 K62 ["LayoutOrder"]
      632 DUPTABLE                         R52 K97 [{"FailureMessage"}]
      633 MOVE                             R53 R33
      634 JUMPIFNOT                        R53 ; [+79]
      635 GETUPVAL                         R53 13
      636 GETUPVAL                         R54 19
      637 DUPTABLE                         R55 K67 [{"tag", "LayoutOrder"}]
      638 LOADK                            R56 K98 ["size-full-full auto-y row gap-xsmall align-y-center"]
      639 SETTABLEKS                       R56 R55 K61 ["tag"]
      641 MOVE                             R56 R40
      642 CALL                             R56 0 1
      643 SETTABLEKS                       R56 R55 K62 ["LayoutOrder"]
      645 DUPTABLE                         R56 K101 [{"ErrorIcon", "TextContainer"}]
      646 GETUPVAL                         R57 13
      647 GETUPVAL                         R58 27
      648 DUPTABLE                         R59 K103 [{"name", "size", "LayoutOrder"}]
      649 GETUPVAL                         R60 21
      650 GETTABLEKS                       R60 R60 K78 ["Enums"]
      652 GETTABLEKS                       R60 R60 K104 ["IconName"]
      654 GETTABLEKS                       R60 R60 K105 ["TriangleExclamation"]
      656 SETTABLEKS                       R60 R59 K102 ["name"]
      658 GETUPVAL                         R60 21
      659 GETTABLEKS                       R60 R60 K78 ["Enums"]
      661 GETTABLEKS                       R60 R60 K106 ["IconSize"]
      663 GETTABLEKS                       R60 R60 K107 ["Medium"]
      665 SETTABLEKS                       R60 R59 K75 ["size"]
      667 MOVE                             R60 R40
      668 CALL                             R60 0 1
      669 SETTABLEKS                       R60 R59 K62 ["LayoutOrder"]
      671 CALL                             R57 2 1
      672 SETTABLEKS                       R57 R56 K99 ["ErrorIcon"]
      674 GETUPVAL                         R57 13
      675 GETUPVAL                         R58 19
      676 DUPTABLE                         R59 K67 [{"tag", "LayoutOrder"}]
      677 LOADK                            R60 K108 ["shrink size-full-0 auto-y"]
      678 SETTABLEKS                       R60 R59 K61 ["tag"]
      680 MOVE                             R60 R40
      681 CALL                             R60 0 1
      682 SETTABLEKS                       R60 R59 K62 ["LayoutOrder"]
      684 DUPTABLE                         R60 K109 [{"Text"}]
      685 GETUPVAL                         R61 13
      686 GETUPVAL                         R62 28
      687 DUPTABLE                         R63 K112 [{"markdown", "linkCallback", "LayoutOrder"}]
      688 GETTABLEKS                       R65 R0 K11 ["failureReason"]
      690 JUMPIFNOT                        R65 ; [+6]
      691 GETTABLEKS                       R65 R30 K113 ["FailureMessageText"]
      693 GETTABLEKS                       R66 R0 K11 ["failureReason"]
      695 GETTABLE                         R64 R65 R66
      696 JUMPIF                           R64 ; [+2]
      697 GETTABLEKS                       R64 R30 K114 ["UnknownError"]
      699 SETTABLEKS                       R64 R63 K110 ["markdown"]
      701 SETTABLEKS                       R29 R63 K111 ["linkCallback"]
      703 MOVE                             R64 R40
      704 CALL                             R64 0 1
      705 SETTABLEKS                       R64 R63 K62 ["LayoutOrder"]
      707 CALL                             R61 2 1
      708 SETTABLEKS                       R61 R60 K58 ["Text"]
      710 CALL                             R57 3 1
      711 SETTABLEKS                       R57 R56 K100 ["TextContainer"]
      713 CALL                             R53 3 1
      714 SETTABLEKS                       R53 R52 K96 ["FailureMessage"]
      716 CALL                             R49 3 1
      717 SETTABLEKS                       R49 R48 K92 ["LeftSpace"]
      719 GETUPVAL                         R49 13
      720 GETUPVAL                         R50 19
      721 DUPTABLE                         R51 K67 [{"tag", "LayoutOrder"}]
      722 LOADK                            R52 K115 ["auto-xy row gap-small"]
      723 SETTABLEKS                       R52 R51 K61 ["tag"]
      725 MOVE                             R52 R40
      726 CALL                             R52 0 1
      727 SETTABLEKS                       R52 R51 K62 ["LayoutOrder"]
      729 DUPTABLE                         R52 K121 [{"CancelButton", "RegenerateButton", "PublishButton", "InsertButton", "AddToPlaceButton"}]
      730 MOVE                             R53 R34
      731 JUMPIFNOT                        R53 ; [+34]
      732 GETUPVAL                         R53 13
      733 GETUPVAL                         R54 29
      734 DUPTABLE                         R55 K123 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      735 GETTABLEKS                       R56 R30 K93 ["Buttons"]
      737 GETTABLEKS                       R56 R56 K124 ["Cancel"]
      739 SETTABLEKS                       R56 R55 K71 ["text"]
      741 GETUPVAL                         R56 21
      742 GETTABLEKS                       R56 R56 K78 ["Enums"]
      744 GETTABLEKS                       R56 R56 K125 ["InputSize"]
      746 GETTABLEKS                       R56 R56 K80 ["Small"]
      748 SETTABLEKS                       R56 R55 K75 ["size"]
      750 GETUPVAL                         R56 21
      751 GETTABLEKS                       R56 R56 K78 ["Enums"]
      753 GETTABLEKS                       R56 R56 K126 ["ButtonVariant"]
      755 GETTABLEKS                       R56 R56 K127 ["Standard"]
      757 SETTABLEKS                       R56 R55 K122 ["variant"]
      759 SETTABLEKS                       R17 R55 K73 ["onActivated"]
      761 MOVE                             R56 R40
      762 CALL                             R56 0 1
      763 SETTABLEKS                       R56 R55 K62 ["LayoutOrder"]
      765 CALL                             R53 2 1
      766 SETTABLEKS                       R53 R52 K116 ["CancelButton"]
      768 MOVE                             R53 R35
      769 JUMPIFNOT                        R53 ; [+34]
      770 GETUPVAL                         R53 13
      771 GETUPVAL                         R54 29
      772 DUPTABLE                         R55 K123 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      773 GETTABLEKS                       R56 R30 K93 ["Buttons"]
      775 GETTABLEKS                       R56 R56 K128 ["Regenerate"]
      777 SETTABLEKS                       R56 R55 K71 ["text"]
      779 GETUPVAL                         R56 21
      780 GETTABLEKS                       R56 R56 K78 ["Enums"]
      782 GETTABLEKS                       R56 R56 K125 ["InputSize"]
      784 GETTABLEKS                       R56 R56 K80 ["Small"]
      786 SETTABLEKS                       R56 R55 K75 ["size"]
      788 GETUPVAL                         R56 21
      789 GETTABLEKS                       R56 R56 K78 ["Enums"]
      791 GETTABLEKS                       R56 R56 K126 ["ButtonVariant"]
      793 GETTABLEKS                       R56 R56 K127 ["Standard"]
      795 SETTABLEKS                       R56 R55 K122 ["variant"]
      797 SETTABLEKS                       R12 R55 K73 ["onActivated"]
      799 MOVE                             R56 R40
      800 CALL                             R56 0 1
      801 SETTABLEKS                       R56 R55 K62 ["LayoutOrder"]
      803 CALL                             R53 2 1
      804 SETTABLEKS                       R53 R52 K117 ["RegenerateButton"]
      806 MOVE                             R53 R36
      807 JUMPIFNOT                        R53 ; [+42]
      808 GETUPVAL                         R53 13
      809 GETUPVAL                         R54 29
      810 DUPTABLE                         R55 K130 [{"text", "size", "variant", "isLoading", "onActivated", "LayoutOrder"}]
      811 JUMPIFNOT                        R33 ; [+5]
      812 GETTABLEKS                       R56 R30 K93 ["Buttons"]
      814 GETTABLEKS                       R56 R56 K131 ["TryAgain"]
      816 JUMP                             ; [+4]
      817 GETTABLEKS                       R56 R30 K93 ["Buttons"]
      819 GETTABLEKS                       R56 R56 K132 ["Publish"]
      821 SETTABLEKS                       R56 R55 K71 ["text"]
      823 GETUPVAL                         R56 21
      824 GETTABLEKS                       R56 R56 K78 ["Enums"]
      826 GETTABLEKS                       R56 R56 K125 ["InputSize"]
      828 GETTABLEKS                       R56 R56 K80 ["Small"]
      830 SETTABLEKS                       R56 R55 K75 ["size"]
      832 GETUPVAL                         R56 21
      833 GETTABLEKS                       R56 R56 K78 ["Enums"]
      835 GETTABLEKS                       R56 R56 K126 ["ButtonVariant"]
      837 GETTABLEKS                       R56 R56 K133 ["Emphasis"]
      839 SETTABLEKS                       R56 R55 K122 ["variant"]
      841 SETTABLEKS                       R5 R55 K129 ["isLoading"]
      843 SETTABLEKS                       R14 R55 K73 ["onActivated"]
      845 MOVE                             R56 R40
      846 CALL                             R56 0 1
      847 SETTABLEKS                       R56 R55 K62 ["LayoutOrder"]
      849 CALL                             R53 2 1
      850 SETTABLEKS                       R53 R52 K118 ["PublishButton"]
      852 MOVE                             R53 R37
      853 JUMPIFNOT                        R53 ; [+42]
      854 GETUPVAL                         R53 13
      855 GETUPVAL                         R54 29
      856 DUPTABLE                         R55 K130 [{"text", "size", "variant", "isLoading", "onActivated", "LayoutOrder"}]
      857 JUMPIFNOT                        R33 ; [+5]
      858 GETTABLEKS                       R56 R30 K93 ["Buttons"]
      860 GETTABLEKS                       R56 R56 K131 ["TryAgain"]
      862 JUMP                             ; [+4]
      863 GETTABLEKS                       R56 R30 K93 ["Buttons"]
      865 GETTABLEKS                       R56 R56 K134 ["AddToPlace"]
      867 SETTABLEKS                       R56 R55 K71 ["text"]
      869 GETUPVAL                         R56 21
      870 GETTABLEKS                       R56 R56 K78 ["Enums"]
      872 GETTABLEKS                       R56 R56 K125 ["InputSize"]
      874 GETTABLEKS                       R56 R56 K80 ["Small"]
      876 SETTABLEKS                       R56 R55 K75 ["size"]
      878 GETUPVAL                         R56 21
      879 GETTABLEKS                       R56 R56 K78 ["Enums"]
      881 GETTABLEKS                       R56 R56 K126 ["ButtonVariant"]
      883 GETTABLEKS                       R56 R56 K133 ["Emphasis"]
      885 SETTABLEKS                       R56 R55 K122 ["variant"]
      887 SETTABLEKS                       R8 R55 K129 ["isLoading"]
      889 SETTABLEKS                       R18 R55 K73 ["onActivated"]
      891 MOVE                             R56 R40
      892 CALL                             R56 0 1
      893 SETTABLEKS                       R56 R55 K62 ["LayoutOrder"]
      895 CALL                             R53 2 1
      896 SETTABLEKS                       R53 R52 K119 ["InsertButton"]
      898 MOVE                             R53 R38
      899 JUMPIFNOT                        R53 ; [+45]
      900 GETUPVAL                         R53 13
      901 GETUPVAL                         R54 29
      902 DUPTABLE                         R55 K136 [{"text", "size", "variant", "isLoading", "isDisabled", "onActivated", "LayoutOrder"}]
      903 JUMPIFNOT                        R33 ; [+5]
      904 GETTABLEKS                       R56 R30 K93 ["Buttons"]
      906 GETTABLEKS                       R56 R56 K131 ["TryAgain"]
      908 JUMP                             ; [+4]
      909 GETTABLEKS                       R56 R30 K93 ["Buttons"]
      911 GETTABLEKS                       R56 R56 K134 ["AddToPlace"]
      913 SETTABLEKS                       R56 R55 K71 ["text"]
      915 GETUPVAL                         R56 21
      916 GETTABLEKS                       R56 R56 K78 ["Enums"]
      918 GETTABLEKS                       R56 R56 K125 ["InputSize"]
      920 GETTABLEKS                       R56 R56 K80 ["Small"]
      922 SETTABLEKS                       R56 R55 K75 ["size"]
      924 GETUPVAL                         R56 21
      925 GETTABLEKS                       R56 R56 K78 ["Enums"]
      927 GETTABLEKS                       R56 R56 K126 ["ButtonVariant"]
      929 GETTABLEKS                       R56 R56 K133 ["Emphasis"]
      931 SETTABLEKS                       R56 R55 K122 ["variant"]
      933 OR                               R56 R5 R8
      934 SETTABLEKS                       R56 R55 K129 ["isLoading"]
      936 SETTABLEKS                       R15 R55 K135 ["isDisabled"]
      938 SETTABLEKS                       R19 R55 K73 ["onActivated"]
      940 MOVE                             R56 R40
      941 CALL                             R56 0 1
      942 SETTABLEKS                       R56 R55 K62 ["LayoutOrder"]
      944 CALL                             R53 2 1
      945 SETTABLEKS                       R53 R52 K120 ["AddToPlaceButton"]
      947 CALL                             R49 3 1
      948 SETTABLEKS                       R49 R48 K93 ["Buttons"]
      950 CALL                             R45 3 1
      951 SETTABLEKS                       R45 R44 K82 ["InfoBar"]
      953 CALL                             R41 3 -1
      954 RETURN                           R41 -1

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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["ShowPreview"]
       13 JUMPIFEQ                         R1 R2 ; [+8]
       15 DUPTABLE                         R1 K5 [{"mode"}]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K6 ["Preparing"]
       19 SETTABLEKS                       R2 R1 K3 ["mode"]
       21 RETURN                           R1 1
       22 DUPTABLE                         R1 K15 [{"mode", "name", "previewImages", "previewState", "failureReason", "generationRetryCount", "publishAttemptCount", "validatedArgs", "generationMeta"}]
       23 GETTABLEKS                       R2 R0 K3 ["mode"]
       25 SETTABLEKS                       R2 R1 K3 ["mode"]
       27 GETTABLEKS                       R2 R0 K7 ["name"]
       29 SETTABLEKS                       R2 R1 K7 ["name"]
       31 GETTABLEKS                       R2 R0 K8 ["previewImages"]
       33 SETTABLEKS                       R2 R1 K8 ["previewImages"]
       35 GETTABLEKS                       R2 R0 K9 ["previewState"]
       37 SETTABLEKS                       R2 R1 K9 ["previewState"]
       39 GETTABLEKS                       R2 R0 K10 ["failureReason"]
       41 SETTABLEKS                       R2 R1 K10 ["failureReason"]
       43 GETTABLEKS                       R2 R0 K11 ["generationRetryCount"]
       45 SETTABLEKS                       R2 R1 K11 ["generationRetryCount"]
       47 GETTABLEKS                       R2 R0 K12 ["publishAttemptCount"]
       49 SETTABLEKS                       R2 R1 K12 ["publishAttemptCount"]
       51 GETTABLEKS                       R2 R0 K13 ["validatedArgs"]
       53 SETTABLEKS                       R2 R1 K13 ["validatedArgs"]
       55 GETTABLEKS                       R2 R0 K14 ["generationMeta"]
       57 SETTABLEKS                       R2 R1 K14 ["generationMeta"]
       59 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["ShowPreview"]
       13 JUMPIFEQ                         R2 R3 ; [+14]
       15 DUPTABLE                         R2 K7 [{"type", "mode", "isError"}]
       16 LOADK                            R3 K8 ["MeshGen"]
       17 SETTABLEKS                       R3 R2 K5 ["type"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K9 ["Preparing"]
       22 SETTABLEKS                       R3 R2 K3 ["mode"]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R2 K6 ["isError"]
       27 RETURN                           R2 1
       28 DUPTABLE                         R2 K27 [{"type", "mode", "expanded", "name", "displayName", "className", "previewImages", "previewState", "failureReason", "generationRetryCount", "publishAttemptCount", "validatedArgs", "generationMeta", "retryGeneration", "cancelGeneration", "publishAssets", "insertAssets", "shouldShowChip", "onChipClicked"}]
       29 LOADK                            R3 K8 ["MeshGen"]
       30 SETTABLEKS                       R3 R2 K5 ["type"]
       32 GETTABLEKS                       R3 R0 K3 ["mode"]
       34 SETTABLEKS                       R3 R2 K3 ["mode"]
       36 LOADB                            R3 0
       37 SETTABLEKS                       R3 R2 K10 ["expanded"]
       39 GETTABLEKS                       R3 R0 K11 ["name"]
       41 SETTABLEKS                       R3 R2 K11 ["name"]
       43 GETTABLEKS                       R3 R0 K11 ["name"]
       45 SETTABLEKS                       R3 R2 K12 ["displayName"]
       47 LOADNIL                          R3
       48 SETTABLEKS                       R3 R2 K13 ["className"]
       50 GETTABLEKS                       R3 R0 K14 ["previewImages"]
       52 SETTABLEKS                       R3 R2 K14 ["previewImages"]
       54 GETTABLEKS                       R3 R0 K15 ["previewState"]
       56 SETTABLEKS                       R3 R2 K15 ["previewState"]
       58 GETTABLEKS                       R3 R0 K16 ["failureReason"]
       60 SETTABLEKS                       R3 R2 K16 ["failureReason"]
       62 GETTABLEKS                       R3 R0 K17 ["generationRetryCount"]
       64 SETTABLEKS                       R3 R2 K17 ["generationRetryCount"]
       66 GETTABLEKS                       R3 R0 K18 ["publishAttemptCount"]
       68 SETTABLEKS                       R3 R2 K18 ["publishAttemptCount"]
       70 GETTABLEKS                       R3 R0 K19 ["validatedArgs"]
       72 SETTABLEKS                       R3 R2 K19 ["validatedArgs"]
       74 GETTABLEKS                       R3 R0 K20 ["generationMeta"]
       76 SETTABLEKS                       R3 R2 K20 ["generationMeta"]
       78 GETUPVAL                         R3 2
       79 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
       81 LOADK                            R4 K21 ["retryGeneration"]
       82 CALL                             R3 1 1
       83 SETTABLEKS                       R3 R2 K21 ["retryGeneration"]
       85 GETUPVAL                         R3 2
       86 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
       88 LOADK                            R4 K22 ["cancelGeneration"]
       89 CALL                             R3 1 1
       90 SETTABLEKS                       R3 R2 K22 ["cancelGeneration"]
       92 GETUPVAL                         R3 2
       93 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
       95 LOADK                            R4 K23 ["publishAssets"]
       96 CALL                             R3 1 1
       97 SETTABLEKS                       R3 R2 K23 ["publishAssets"]
       99 GETUPVAL                         R3 2
      100 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
      102 LOADK                            R4 K24 ["insertAssets"]
      103 CALL                             R3 1 1
      104 SETTABLEKS                       R3 R2 K24 ["insertAssets"]
      106 LOADB                            R3 0
      107 SETTABLEKS                       R3 R2 K25 ["shouldShowChip"]
      109 GETUPVAL                         R3 2
      110 GETTABLEKS                       R3 R3 K28 ["createUnimplemented"]
      112 LOADK                            R4 K26 ["onChipClicked"]
      113 CALL                             R3 1 1
      114 SETTABLEKS                       R3 R2 K26 ["onChipClicked"]
      116 RETURN                           R2 1

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
      132 GETTABLEKS                       R20 R0 K17 ["Util"]
      134 GETTABLEKS                       R20 R20 K33 ["Serializer"]
      136 GETTABLEKS                       R20 R20 K34 ["SerializerTypes"]
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K5 [require]
      141 GETTABLEKS                       R21 R0 K35 ["Flags"]
      143 GETTABLEKS                       R21 R21 K36 ["FFlagAssistantMeshGenCarouselPreview"]
      145 CALL                             R20 1 1
      146 GETIMPORT                        R21 K5 [require]
      148 GETTABLEKS                       R22 R0 K35 ["Flags"]
      150 GETTABLEKS                       R22 R22 K37 ["FFlagAssistantMeshGenCombinedAddToPlace"]
      152 CALL                             R21 1 1
      153 GETIMPORT                        R22 K5 [require]
      155 GETTABLEKS                       R23 R0 K35 ["Flags"]
      157 GETTABLEKS                       R23 R23 K38 ["FFlagAssistantMultipleChatPersistence"]
      159 CALL                             R22 1 1
      160 GETIMPORT                        R23 K5 [require]
      162 GETTABLEKS                       R24 R0 K35 ["Flags"]
      164 GETTABLEKS                       R24 R24 K39 ["FIntConvAIMeshGenGenerationRetryLimit"]
      166 CALL                             R23 1 1
      167 GETIMPORT                        R24 K5 [require]
      169 GETTABLEKS                       R25 R0 K35 ["Flags"]
      171 GETTABLEKS                       R25 R25 K40 ["FIntConvAIMeshGenPublishAttemptLimit"]
      173 CALL                             R24 1 1
      174 GETIMPORT                        R25 K5 [require]
      176 GETTABLEKS                       R26 R0 K35 ["Flags"]
      178 GETTABLEKS                       R26 R26 K41 ["FStringConvAIMeshGenModerationUrl"]
      180 CALL                             R25 1 1
      181 GETTABLEKS                       R26 R4 K42 ["Button"]
      183 GETTABLEKS                       R27 R4 K43 ["Chip"]
      185 GETTABLEKS                       R28 R4 K44 ["Icon"]
      187 GETTABLEKS                       R29 R4 K45 ["IconButton"]
      189 GETTABLEKS                       R30 R4 K46 ["Image"]
      191 GETTABLEKS                       R31 R4 K47 ["Skeleton"]
      193 GETTABLEKS                       R32 R4 K48 ["Text"]
      195 GETTABLEKS                       R33 R4 K49 ["View"]
      197 GETTABLEKS                       R34 R7 K50 ["createNextOrder"]
      199 GETTABLEKS                       R35 R6 K51 ["createElement"]
      201 GETTABLEKS                       R36 R16 K52 ["Enums"]
      203 GETTABLEKS                       R37 R16 K53 ["PREVIEW_HEIGHT"]
      205 DUPTABLE                         R38 K56 [{"Preparing", "ShowPreview"}]
      206 LOADK                            R39 K54 ["Preparing"]
      207 SETTABLEKS                       R39 R38 K54 ["Preparing"]
      209 LOADK                            R39 K55 ["ShowPreview"]
      210 SETTABLEKS                       R39 R38 K55 ["ShowPreview"]
      212 DUPCLOSURE                       R39 K57 [PROTO_0]
      213 CAPTURE                          VAL R34
      214 CAPTURE                          VAL R35
      215 CAPTURE                          VAL R1
      216 CAPTURE                          VAL R9
      217 DUPCLOSURE                       R40 K58 [PROTO_3]
      218 CAPTURE                          VAL R6
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R34
      221 CAPTURE                          VAL R35
      222 CAPTURE                          VAL R39
      223 CAPTURE                          VAL R2
      224 CAPTURE                          VAL R32
      225 CAPTURE                          VAL R8
      226 DUPCLOSURE                       R41 K59 [PROTO_5]
      227 CAPTURE                          VAL R13
      228 CAPTURE                          VAL R6
      229 CAPTURE                          VAL R23
      230 DUPCLOSURE                       R42 K60 [PROTO_7]
      231 CAPTURE                          VAL R13
      232 CAPTURE                          VAL R6
      233 CAPTURE                          VAL R24
      234 DUPCLOSURE                       R43 K61 [PROTO_9]
      235 CAPTURE                          VAL R20
      236 CAPTURE                          VAL R6
      237 CAPTURE                          VAL R14
      238 CAPTURE                          VAL R18
      239 DUPCLOSURE                       R44 K62 [PROTO_28]
      240 CAPTURE                          VAL R36
      241 CAPTURE                          VAL R41
      242 CAPTURE                          VAL R42
      243 CAPTURE                          VAL R6
      244 CAPTURE                          VAL R43
      245 CAPTURE                          VAL R20
      246 CAPTURE                          VAL R16
      247 CAPTURE                          VAL R12
      248 CAPTURE                          VAL R3
      249 CAPTURE                          VAL R10
      250 CAPTURE                          VAL R25
      251 CAPTURE                          VAL R21
      252 CAPTURE                          VAL R18
      253 CAPTURE                          VAL R35
      254 CAPTURE                          VAL R34
      255 CAPTURE                          VAL R39
      256 CAPTURE                          VAL R2
      257 CAPTURE                          VAL R32
      258 CAPTURE                          VAL R8
      259 CAPTURE                          VAL R33
      260 CAPTURE                          VAL R27
      261 CAPTURE                          VAL R4
      262 CAPTURE                          VAL R31
      263 CAPTURE                          VAL R37
      264 CAPTURE                          VAL R29
      265 CAPTURE                          VAL R30
      266 CAPTURE                          VAL R9
      267 CAPTURE                          VAL R28
      268 CAPTURE                          VAL R5
      269 CAPTURE                          VAL R26
      270 DUPCLOSURE                       R45 K63 [PROTO_29]
      271 CAPTURE                          VAL R38
      272 CAPTURE                          VAL R2
      273 CAPTURE                          VAL R35
      274 CAPTURE                          VAL R40
      275 CAPTURE                          VAL R44
      276 DUPTABLE                         R46 K66 [{"toMeta", "fromMeta"}]
      277 DUPCLOSURE                       R47 K67 [PROTO_30]
      278 CAPTURE                          VAL R22
      279 CAPTURE                          VAL R38
      280 SETTABLEKS                       R47 R46 K64 ["toMeta"]
      282 DUPCLOSURE                       R47 K68 [PROTO_31]
      283 CAPTURE                          VAL R22
      284 CAPTURE                          VAL R38
      285 CAPTURE                          VAL R7
      286 SETTABLEKS                       R47 R46 K65 ["fromMeta"]
      288 DUPTABLE                         R47 K73 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      289 LOADK                            R48 K27 ["MeshGen"]
      290 SETTABLEKS                       R48 R47 K69 ["Type"]
      292 GETTABLEKS                       R48 R6 K74 ["memo"]
      294 MOVE                             R49 R45
      295 CALL                             R48 1 1
      296 SETTABLEKS                       R48 R47 K70 ["ContentWidget"]
      298 SETTABLEKS                       R46 R47 K71 ["Serialization"]
      300 SETTABLEKS                       R38 R47 K72 ["Modes"]
      302 RETURN                           R47 1
