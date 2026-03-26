PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R2 K1 ["environment"]
        4 GETTABLEKS                       R3 R1 K2 ["selection"]
        6 GETTABLEKS                       R2 R3 K3 ["get"]
        8 CALL                             R2 0 1
        9 LENGTH                           R3 R2
       10 JUMPIFNOTEQKN                    R3 K4 [0] ; [+8]
       12 GETIMPORT                        R3 K6 [error]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K7 ["NO_SELECTION_ERROR_MESSAGE"]
       17 LOADN                            R5 0
       18 CALL                             R3 2 0
       19 GETTABLEN                        R3 R2 1
       20 LOADK                            R6 K8 ["Part"]
       21 NAMECALL                         R4 R3 K9 ["IsA"]
       23 CALL                             R4 2 1
       24 JUMPIF                           R4 ; [+7]
       25 GETIMPORT                        R4 K6 [error]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K10 ["INVALID_SELECTION_ERROR_MESSAGE"]
       30 LOADN                            R6 0
       31 CALL                             R4 2 0
       32 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["getGenerationSession"]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 NAMECALL                         R4 R2 K1 ["Clone"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R4 K2 ["Size"]
       13 LOADK                            R7 K3 [{0.02, 0.02, 0.02}]
       14 ADD                              R6 R5 R7
       15 GETUPVAL                         R8 2
       16 GETTABLEKS                       R7 R8 K4 ["createBoundingBoxGhost"]
       18 MOVE                             R8 R6
       19 NAMECALL                         R9 R2 K5 ["GetPivot"]
       21 CALL                             R9 1 -1
       22 CALL                             R7 -1 1
       23 SETTABLEKS                       R7 R3 K6 ["boundingBoxGhost"]
       25 SETTABLEKS                       R4 R3 K7 ["boundingBoxCopy"]
       27 SETTABLEKS                       R2 R3 K8 ["selectedBoundingBox"]
       29 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["tools"]
        3 GETTABLEKS                       R1 R2 K1 ["meshGen"]
        5 GETTABLEKS                       R0 R1 K2 ["generateModelAsync"]
        7 DUPTABLE                         R1 K7 [{"TextPrompt", "Size", "MaxTriangles", "GenerateTextures"}]
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K3 ["TextPrompt"]
       11 GETUPVAL                         R2 2
       12 SETTABLEKS                       R2 R1 K4 ["Size"]
       14 GETUPVAL                         R2 3
       15 SETTABLEKS                       R2 R1 K5 ["MaxTriangles"]
       17 GETUPVAL                         R2 4
       18 SETTABLEKS                       R2 R1 K6 ["GenerateTextures"]
       20 DUPTABLE                         R2 K9 [{"PredefinedSchema"}]
       21 GETUPVAL                         R5 5
       22 GETTABLEKS                       R4 R5 K8 ["PredefinedSchema"]
       24 GETTABLEKS                       R3 R4 K10 ["Body1"]
       26 SETTABLEKS                       R3 R2 K8 ["PredefinedSchema"]
       28 DUPTABLE                         R3 K12 [{"adminOptions"}]
       29 LOADNIL                          R4
       30 SETTABLEKS                       R4 R3 K11 ["adminOptions"]
       32 CALL                             R0 3 2
       33 DUPTABLE                         R2 K15 [{"model", "metadata"}]
       34 SETTABLEKS                       R0 R2 K13 ["model"]
       36 SETTABLEKS                       R1 R2 K14 ["metadata"]
       38 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 2
       10 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 LOADB                            R3 0
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U4
       10 CALL                             R1 1 2
       11 MOVE                             R0 R2
       12 JUMPIFNOT                        R0 ; [+7]
       13 FASTCALL1                        TYPEOF R0 ; [+3]
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K3 [typeof]
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKS                    R1 K4 ["string"] ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R1 R0 K5 ["model"]
       23 GETUPVAL                         R3 5
       24 GETTABLEKS                       R2 R3 K6 ["updatePreviewImages"]
       26 GETUPVAL                         R3 6
       27 MOVE                             R4 R1
       28 CALL                             R2 2 0
       29 GETUPVAL                         R4 6
       30 GETTABLEKS                       R3 R4 K7 ["bridge"]
       32 GETTABLEKS                       R2 R3 K8 ["setPreviewStateAsync"]
       34 DUPTABLE                         R3 K10 [{"state"}]
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R5 R6 K11 ["PreviewState"]
       38 GETTABLEKS                       R4 R5 K12 ["GeneratingTexture"]
       40 SETTABLEKS                       R4 R3 K9 ["state"]
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETTABLEKS                       R3 R0 K1 ["textPrompt"]
        4 GETTABLEKS                       R4 R0 K2 ["size"]
        6 GETTABLEKS                       R5 R0 K3 ["maxTriangles"]
        8 GETTABLEKS                       R6 R0 K4 ["useSelectedBoundingBox"]
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R7 R8 K5 ["getGenerationSession"]
       13 MOVE                             R8 R2
       14 CALL                             R7 1 1
       15 GETTABLEKS                       R10 R7 K6 ["generationThread"]
       17 JUMPIFEQKNIL                     R10 ; [+2]
       19 LOADB                            R9 0 +1
       20 LOADB                            R9 1
       21 FASTCALL2K                       ASSERT R9 K7 ; [+4]
       23 LOADK                            R10 K7 ["Generation thread already exists for requestId"]
       24 GETIMPORT                        R8 K9 [assert]
       26 CALL                             R8 2 0
       27 GETIMPORT                        R8 K12 [coroutine.running]
       29 CALL                             R8 0 1
       30 SETTABLEKS                       R8 R7 K6 ["generationThread"]
       32 GETTABLEKS                       R9 R1 K13 ["toolArgs"]
       34 GETTABLEKS                       R8 R9 K14 ["environment"]
       36 JUMPIFNOT                        R6 ; [+32]
       37 GETUPVAL                         R10 1
       38 MOVE                             R11 R1
       39 CALL                             R10 1 1
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R11 R12 K5 ["getGenerationSession"]
       43 MOVE                             R12 R2
       44 CALL                             R11 1 1
       45 NAMECALL                         R12 R10 K15 ["Clone"]
       47 CALL                             R12 1 1
       48 GETTABLEKS                       R13 R12 K16 ["Size"]
       50 LOADK                            R15 K17 [{0.02, 0.02, 0.02}]
       51 ADD                              R14 R13 R15
       52 GETUPVAL                         R16 2
       53 GETTABLEKS                       R15 R16 K18 ["createBoundingBoxGhost"]
       55 MOVE                             R16 R14
       56 NAMECALL                         R17 R10 K19 ["GetPivot"]
       58 CALL                             R17 1 -1
       59 CALL                             R15 -1 1
       60 SETTABLEKS                       R15 R11 K20 ["boundingBoxGhost"]
       62 SETTABLEKS                       R12 R11 K21 ["boundingBoxCopy"]
       64 SETTABLEKS                       R10 R11 K22 ["selectedBoundingBox"]
       66 MOVE                             R9 R13
       67 JUMPIFNOT                        R9 ; [+1]
       68 MOVE                             R4 R9
       69 NEWCLOSURE                       R9 P0
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R3
       72 CAPTURE                          REF R4
       73 CAPTURE                          VAL R5
       74 CAPTURE                          UPVAL U3
       75 GETIMPORT                        R10 K25 [task.spawn]
       77 NEWCLOSURE                       R11 P1
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R3
       80 CAPTURE                          REF R4
       81 CAPTURE                          VAL R5
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R1
       85 CALL                             R10 1 1
       86 GETIMPORT                        R12 K27 [pcall]
       88 LOADB                            R14 1
       89 NEWCLOSURE                       R13 P2
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R3
       92 CAPTURE                          REF R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R14
       95 CAPTURE                          UPVAL U3
       96 CALL                             R12 1 2
       97 MOVE                             R11 R13
       98 GETIMPORT                        R12 K29 [coroutine.status]
      100 MOVE                             R13 R10
      101 CALL                             R12 1 1
      102 JUMPIFEQKS                       R12 K30 ["dead"] ; [+5]
      104 GETIMPORT                        R12 K32 [task.cancel]
      106 MOVE                             R13 R10
      107 CALL                             R12 1 0
      108 JUMPIFNOT                        R11 ; [+7]
      109 FASTCALL1                        TYPEOF R11 ; [+3]
      110 MOVE                             R13 R11
      111 GETIMPORT                        R12 K34 [typeof]
      113 CALL                             R12 1 1
      114 JUMPIFNOTEQKS                    R12 K35 ["string"] ; [+6]
      116 GETIMPORT                        R12 K37 [error]
      118 MOVE                             R13 R11
      119 LOADN                            R14 0
      120 CALL                             R12 2 0
      121 GETTABLEKS                       R12 R11 K38 ["model"]
      123 SETTABLEKS                       R3 R12 K39 ["Name"]
      125 SETTABLEKS                       R12 R7 K40 ["previewAssets"]
      127 GETUPVAL                         R14 4
      128 GETTABLEKS                       R13 R14 K41 ["updatePreviewImages"]
      130 MOVE                             R14 R1
      131 MOVE                             R15 R12
      132 CALL                             R13 2 0
      133 DUPTABLE                         R13 K43 [{"generationId"}]
      134 GETTABLEKS                       R15 R11 K44 ["metadata"]
      136 GETTABLEKS                       R14 R15 K45 ["UUID"]
      138 SETTABLEKS                       R14 R13 K42 ["generationId"]
      140 CLOSEUPVALS                      R4
      141 RETURN                           R13 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["getGenerationSession"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R3 K2 ["generationThread"]
        9 JUMPIFNOT                        R4 ; [+13]
       10 GETIMPORT                        R5 K5 [coroutine.status]
       12 MOVE                             R6 R4
       13 CALL                             R5 1 1
       14 JUMPIFEQKS                       R5 K6 ["dead"] ; [+5]
       16 GETIMPORT                        R5 K9 [task.cancel]
       18 MOVE                             R6 R4
       19 CALL                             R5 1 0
       20 LOADNIL                          R5
       21 SETTABLEKS                       R5 R3 K2 ["generationThread"]
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 SUBK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 JUMPIFEQKN                       R0 K1 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 JUMPIF                           R0 ; [+2]
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+26]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R0 R1 K2 ["createPublishedMeshPart"]
       14 GETUPVAL                         R1 4
       15 GETUPVAL                         R2 5
       16 GETUPVAL                         R3 1
       17 GETUPVAL                         R4 2
       18 CALL                             R0 4 1
       19 GETUPVAL                         R1 6
       20 MOVE                             R3 R0
       21 NAMECALL                         R1 R1 K3 ["ApplyMesh"]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R2 7
       25 DUPTABLE                         R3 K6 [{"meshId", "textureId"}]
       26 GETUPVAL                         R4 1
       27 SETTABLEKS                       R4 R3 K4 ["meshId"]
       29 GETUPVAL                         R4 2
       30 SETTABLEKS                       R4 R3 K5 ["textureId"]
       32 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       34 GETIMPORT                        R1 K9 [table.insert]
       36 CALL                             R1 2 0
       37 GETUPVAL                         R0 8
       38 SUBK                             R0 R0 K0 [1]
       39 SETUPVAL                         R0 8
       40 GETUPVAL                         R0 9
       41 NAMECALL                         R0 R0 K10 ["Fire"]
       43 CALL                             R0 1 0
       44 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["MeshContent"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R1 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K1 ["CreateEditableMeshAsync"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R2 R3 K2 ["createMeshAsset"]
       13 GETUPVAL                         R3 4
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 SETUPVAL                         R2 2
       17 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 2
        9 JUMPIF                           R0 ; [+9]
       10 GETIMPORT                        R2 K3 [warn]
       12 LOADK                            R4 K4 ["Failed to create mesh asset: %*"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R4 R4 K5 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 5
       20 CALL                             R2 0 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["TextureContent"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R1 1
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K1 ["CreateEditableImageAsync"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R2 R3 K2 ["createImageAsset"]
       13 GETUPVAL                         R3 4
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 SETUPVAL                         R2 2
       17 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 2
        9 JUMPIF                           R0 ; [+9]
       10 GETIMPORT                        R2 K3 [warn]
       12 LOADK                            R4 K4 ["Failed to create image asset: %*"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R4 R4 K5 ["format"]
       16 CALL                             R4 2 1
       17 MOVE                             R3 R4
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 5
       20 CALL                             R2 0 0
       21 RETURN                           R0 0

PROTO_13:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 MOVE                             R7 R5
        6 CALL                             R6 1 0
        7 FORGLOOP                         R1 2 ; [-4]
        9 LOADK                            R3 K1 ["MeshPart"]
       10 NAMECALL                         R1 R0 K2 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 1
       16 ADDK                             R1 R1 K3 [1]
       17 SETUPVAL                         R1 1
       18 LOADN                            R1 2
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          REF R1
       23 CAPTURE                          REF R2
       24 CAPTURE                          REF R3
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U5
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U6
       32 GETIMPORT                        R5 K6 [task.spawn]
       34 NEWCLOSURE                       R6 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          REF R2
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R4
       41 CALL                             R5 1 0
       42 GETIMPORT                        R5 K6 [task.spawn]
       44 NEWCLOSURE                       R6 P2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          REF R3
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          VAL R4
       51 CALL                             R5 1 0
       52 CLOSEUPVALS                      R1
       53 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETTABLEKS                       R3 R0 K1 ["generationId"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K2 ["getGenerationSession"]
        7 MOVE                             R5 R2
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R5 R4 K3 ["previewAssets"]
       11 FASTCALL2K                       ASSERT R5 K4 ; [+5]
       13 MOVE                             R7 R5
       14 LOADK                            R8 K4 ["PreviewAssets not found"]
       15 GETIMPORT                        R6 K6 [assert]
       17 CALL                             R6 2 0
       18 LOADK                            R9 K7 ["PVInstance"]
       19 NAMECALL                         R7 R5 K8 ["IsA"]
       21 CALL                             R7 2 1
       22 FASTCALL2K                       ASSERT R7 K9 ; [+4]
       24 LOADK                            R8 K9 ["PreviewAssets is not a PVInstance"]
       25 GETIMPORT                        R6 K6 [assert]
       27 CALL                             R6 2 0
       28 NEWTABLE                         R6 0 0
       30 LOADN                            R7 0
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R8 R9 K10 ["new"]
       34 CALL                             R8 0 1
       35 NEWCLOSURE                       R9 P0
       36 CAPTURE                          VAL R9
       37 CAPTURE                          REF R7
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R8
       43 CAPTURE                          UPVAL U2
       44 NAMECALL                         R10 R5 K11 ["Clone"]
       46 CALL                             R10 1 1
       47 FASTCALL2K                       ASSERT R10 K12 ; [+5]
       49 MOVE                             R12 R10
       50 LOADK                            R13 K12 ["Failed to clone previewAssets for publishing"]
       51 GETIMPORT                        R11 K6 [assert]
       53 CALL                             R11 2 0
       54 MOVE                             R11 R9
       55 MOVE                             R12 R10
       56 CALL                             R11 1 0
       57 LOADN                            R11 0
       58 JUMPIFNOTLT                      R11 R7 ; [+5]
       60 NAMECALL                         R11 R8 K13 ["Wait"]
       62 CALL                             R11 1 0
       63 JUMPBACK                         ; [-7]
       64 GETTABLEKS                       R11 R0 K14 ["hasPredeterminedSize"]
       66 JUMPIF                           R11 ; [+5]
       67 GETUPVAL                         R12 0
       68 GETTABLEKS                       R11 R12 K15 ["scaleUpToMinimumSize"]
       70 MOVE                             R12 R10
       71 CALL                             R11 1 0
       72 LOADNIL                          R11
       73 SETTABLEKS                       R11 R4 K3 ["previewAssets"]
       75 SETTABLEKS                       R10 R4 K16 ["publishedAssets"]
       77 DUPTABLE                         R11 K18 [{"assets"}]
       78 SETTABLEKS                       R6 R11 K17 ["assets"]
       80 CLOSEUPVALS                      R7
       81 RETURN                           R11 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["getGenerationSession"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R4 R3 K2 ["boundingBoxGhost"]
        9 JUMPIFNOT                        R4 ; [+6]
       10 NAMECALL                         R5 R4 K3 ["Destroy"]
       12 CALL                             R5 1 0
       13 LOADNIL                          R5
       14 SETTABLEKS                       R5 R3 K2 ["boundingBoxGhost"]
       16 GETTABLEKS                       R5 R3 K4 ["boundingBoxCopy"]
       18 JUMPIFNOT                        R5 ; [+6]
       19 NAMECALL                         R6 R5 K3 ["Destroy"]
       21 CALL                             R6 1 0
       22 LOADNIL                          R6
       23 SETTABLEKS                       R6 R3 K4 ["boundingBoxCopy"]
       25 LOADNIL                          R6
       26 SETTABLEKS                       R6 R3 K5 ["selectedBoundingBox"]
       28 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 GETUPVAL                         R0 1
        3 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K0 ["Parent is not found"]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 LOADK                            R3 K3 ["AssistantGenerations"]
       11 NAMECALL                         R1 R0 K4 ["FindFirstChild"]
       13 CALL                             R1 2 1
       14 JUMPIF                           R1 ; [+13]
       15 GETIMPORT                        R2 K7 [Instance.new]
       17 LOADK                            R3 K8 ["Folder"]
       18 CALL                             R2 1 1
       19 LOADK                            R3 K3 ["AssistantGenerations"]
       20 SETTABLEKS                       R3 R2 K9 ["Name"]
       22 LOADB                            R3 0
       23 SETTABLEKS                       R3 R2 K10 ["Archivable"]
       25 SETTABLEKS                       R0 R2 K11 ["Parent"]
       27 MOVE                             R1 R2
       28 FASTCALL2K                       ASSERT R1 K12 ; [+5]
       30 MOVE                             R3 R1
       31 LOADK                            R4 K12 ["Failed to create AssistantGenerations folder"]
       32 GETIMPORT                        R2 K2 [assert]
       34 CALL                             R2 2 0
       35 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETTABLEKS                       R3 R0 K1 ["avoidWorkspace"]
        4 GETTABLEKS                       R5 R1 K2 ["toolArgs"]
        6 GETTABLEKS                       R4 R5 K3 ["environment"]
        8 GETUPVAL                         R5 0
        9 ADDK                             R5 R5 K4 [1]
       10 SETUPVAL                         R5 0
       11 LOADK                            R6 K5 ["Insert AI Generated MeshPart %*"]
       12 GETUPVAL                         R8 0
       13 NAMECALL                         R6 R6 K6 ["format"]
       15 CALL                             R6 2 1
       16 MOVE                             R5 R6
       17 GETTABLEKS                       R6 R4 K7 ["startRecording"]
       19 MOVE                             R7 R2
       20 MOVE                             R8 R5
       21 CALL                             R6 2 0
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K8 ["getGenerationSession"]
       25 MOVE                             R7 R2
       26 CALL                             R6 1 1
       27 GETTABLEKS                       R7 R6 K9 ["publishedAssets"]
       29 FASTCALL2K                       ASSERT R7 K10 ; [+5]
       31 MOVE                             R9 R7
       32 LOADK                            R10 K10 ["PublishedAssets not found"]
       33 GETIMPORT                        R8 K12 [assert]
       35 CALL                             R8 2 0
       36 NAMECALL                         R8 R7 K13 ["Clone"]
       38 CALL                             R8 1 1
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R9 R10 K14 ["addAssistantLink"]
       42 MOVE                             R10 R8
       43 GETUPVAL                         R12 3
       44 GETTABLEKS                       R11 R12 K15 ["getLinkTag"]
       46 MOVE                             R12 R2
       47 CALL                             R11 1 -1
       48 CALL                             R9 -1 0
       49 GETTABLEKS                       R9 R6 K16 ["boundingBoxCopy"]
       51 JUMPIFNOT                        R9 ; [+92]
       52 NAMECALL                         R10 R9 K17 ["GetPivot"]
       54 CALL                             R10 1 1
       55 MOVE                             R13 R10
       56 NAMECALL                         R11 R8 K18 ["PivotTo"]
       58 CALL                             R11 2 0
       59 GETTABLEKS                       R11 R6 K19 ["selectedBoundingBox"]
       61 JUMPIFNOT                        R11 ; [+50]
       62 LOADK                            R15 K20 ["Part"]
       63 NAMECALL                         R13 R9 K21 ["IsA"]
       65 CALL                             R13 2 1
       66 FASTCALL2K                       ASSERT R13 K22 ; [+4]
       68 LOADK                            R14 K22 ["BoundingBoxCopy is not a Part"]
       69 GETIMPORT                        R12 K12 [assert]
       71 CALL                             R12 2 0
       72 LOADK                            R15 K20 ["Part"]
       73 NAMECALL                         R13 R11 K21 ["IsA"]
       75 CALL                             R13 2 1
       76 FASTCALL2K                       ASSERT R13 K23 ; [+4]
       78 LOADK                            R14 K23 ["SelectedBoundingBox is not a Part"]
       79 GETIMPORT                        R12 K12 [assert]
       81 CALL                             R12 2 0
       82 GETTABLEKS                       R12 R11 K24 ["Size"]
       84 GETTABLEKS                       R14 R9 K24 ["Size"]
       86 LOADK                            R15 K25 [0.01]
       87 NAMECALL                         R12 R12 K26 ["FuzzyEq"]
       89 CALL                             R12 3 1
       90 GETTABLEKS                       R13 R11 K27 ["Position"]
       92 GETTABLEKS                       R15 R9 K27 ["Position"]
       94 LOADK                            R16 K25 [0.01]
       95 NAMECALL                         R13 R13 K26 ["FuzzyEq"]
       97 CALL                             R13 3 1
       98 GETTABLEKS                       R14 R11 K28 ["Orientation"]
      100 GETTABLEKS                       R16 R9 K28 ["Orientation"]
      102 LOADK                            R17 K25 [0.01]
      103 NAMECALL                         R14 R14 K26 ["FuzzyEq"]
      105 CALL                             R14 3 1
      106 JUMPIFNOT                        R12 ; [+5]
      107 JUMPIFNOT                        R13 ; [+4]
      108 JUMPIFNOT                        R14 ; [+3]
      109 LOADNIL                          R15
      110 SETTABLEKS                       R15 R11 K29 ["Parent"]
      112 DUPTABLE                         R12 K30 [{"requestId"}]
      113 SETTABLEKS                       R2 R12 K0 ["requestId"]
      115 GETTABLEKS                       R13 R12 K0 ["requestId"]
      117 GETUPVAL                         R15 1
      118 GETTABLEKS                       R14 R15 K8 ["getGenerationSession"]
      120 MOVE                             R15 R13
      121 CALL                             R14 1 1
      122 GETTABLEKS                       R15 R14 K31 ["boundingBoxGhost"]
      124 JUMPIFNOT                        R15 ; [+6]
      125 NAMECALL                         R16 R15 K32 ["Destroy"]
      127 CALL                             R16 1 0
      128 LOADNIL                          R16
      129 SETTABLEKS                       R16 R14 K31 ["boundingBoxGhost"]
      131 GETTABLEKS                       R16 R14 K16 ["boundingBoxCopy"]
      133 JUMPIFNOT                        R16 ; [+6]
      134 NAMECALL                         R17 R16 K32 ["Destroy"]
      136 CALL                             R17 1 0
      137 LOADNIL                          R17
      138 SETTABLEKS                       R17 R14 K16 ["boundingBoxCopy"]
      140 LOADNIL                          R17
      141 SETTABLEKS                       R17 R14 K19 ["selectedBoundingBox"]
      143 JUMP                             ; [+6]
      144 GETUPVAL                         R11 2
      145 GETTABLEKS                       R10 R11 K33 ["setPositionOnGround"]
      147 MOVE                             R11 R8
      148 LOADB                            R12 1
      149 CALL                             R10 2 0
      150 JUMPIFNOT                        R3 ; [+37]
      151 GETUPVAL                         R11 4
      152 JUMPIF                           R11 ; [+1]
      153 GETUPVAL                         R11 5
      154 FASTCALL2K                       ASSERT R11 K34 ; [+5]
      156 MOVE                             R13 R11
      157 LOADK                            R14 K34 ["Parent is not found"]
      158 GETIMPORT                        R12 K12 [assert]
      160 CALL                             R12 2 0
      161 LOADK                            R14 K35 ["AssistantGenerations"]
      162 NAMECALL                         R12 R11 K36 ["FindFirstChild"]
      164 CALL                             R12 2 1
      165 JUMPIF                           R12 ; [+13]
      166 GETIMPORT                        R13 K39 [Instance.new]
      168 LOADK                            R14 K40 ["Folder"]
      169 CALL                             R13 1 1
      170 LOADK                            R14 K35 ["AssistantGenerations"]
      171 SETTABLEKS                       R14 R13 K41 ["Name"]
      173 LOADB                            R14 0
      174 SETTABLEKS                       R14 R13 K42 ["Archivable"]
      176 SETTABLEKS                       R11 R13 K29 ["Parent"]
      178 MOVE                             R12 R13
      179 FASTCALL2K                       ASSERT R12 K43 ; [+5]
      181 MOVE                             R14 R12
      182 LOADK                            R15 K43 ["Failed to create AssistantGenerations folder"]
      183 GETIMPORT                        R13 K12 [assert]
      185 CALL                             R13 2 0
      186 MOVE                             R10 R12
      187 JUMP                             ; [+2]
      188 GETIMPORT                        R10 K45 [workspace]
      190 SETTABLEKS                       R10 R8 K29 ["Parent"]
      192 GETTABLEKS                       R10 R4 K46 ["endRecording"]
      194 MOVE                             R11 R2
      195 CALL                             R10 1 0
      196 DUPTABLE                         R10 K48 [{"fullName"}]
      197 NAMECALL                         R11 R8 K49 ["GetFullName"]
      199 CALL                             R11 1 1
      200 SETTABLEKS                       R11 R10 K47 ["fullName"]
      202 RETURN                           R10 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["getLinkTag"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["getLinkedInstances"]
       10 MOVE                             R5 R3
       11 CALL                             R4 1 1
       12 LENGTH                           R5 R4
       13 JUMPIFNOTEQKN                    R5 K3 [0] ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R6 R1 K4 ["toolArgs"]
       18 GETTABLEKS                       R5 R6 K5 ["environment"]
       20 GETTABLEKS                       R7 R5 K6 ["selection"]
       22 GETTABLEKS                       R6 R7 K7 ["set"]
       24 MOVE                             R7 R4
       25 CALL                             R6 1 0
       26 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTagged"]
        4 CALL                             R0 2 1
        5 LENGTH                           R1 R0
        6 GETUPVAL                         R2 2
        7 LOADN                            R3 1
        8 JUMPIFNOTLT                      R3 R1 ; [+14]
       10 GETUPVAL                         R3 3
       11 LOADK                            R5 K1 ["InstanceChip"]
       12 LOADK                            R6 K2 ["Multiple"]
       13 DUPTABLE                         R7 K5 [{"name", "count"}]
       14 GETUPVAL                         R8 2
       15 SETTABLEKS                       R8 R7 K3 ["name"]
       17 SETTABLEKS                       R1 R7 K4 ["count"]
       19 NAMECALL                         R3 R3 K6 ["getText"]
       21 CALL                             R3 4 1
       22 MOVE                             R2 R3
       23 LOADNIL                          R3
       24 LOADN                            R4 0
       25 JUMPIFNOTLT                      R4 R1 ; [+4]
       27 GETTABLEN                        R4 R0 1
       28 GETTABLEKS                       R3 R4 K7 ["ClassName"]
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R5 R6 K8 ["bridge"]
       33 GETTABLEKS                       R4 R5 K9 ["updateContentHeader"]
       35 DUPTABLE                         R5 K13 [{"newDisplayName", "newClassName", "showChip"}]
       36 SETTABLEKS                       R2 R5 K10 ["newDisplayName"]
       38 SETTABLEKS                       R3 R5 K11 ["newClassName"]
       40 LOADN                            R7 0
       41 JUMPIFLT                         R7 R1 ; [+2]
       43 LOADB                            R6 0 +1
       44 LOADB                            R6 1
       45 SETTABLEKS                       R6 R5 K12 ["showChip"]
       47 CALL                             R4 1 0
       48 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["generationName"]
        2 GETTABLEKS                       R3 R0 K1 ["requestId"]
        4 GETTABLEKS                       R5 R1 K2 ["toolArgs"]
        6 GETTABLEKS                       R4 R5 K3 ["networking"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["getLinkTag"]
       11 MOVE                             R6 R3
       12 CALL                             R5 1 1
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K5 ["observeLinkChanges"]
       16 MOVE                             R7 R4
       17 MOVE                             R8 R5
       18 NEWCLOSURE                       R9 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R5
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R1
       24 CALL                             R6 3 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AssetService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["CollectionService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["CoreGui"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [game]
       27 LOADK                            R6 K10 ["ServerStorage"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R7 R0 K13 ["Guest"]
       35 GETTABLEKS                       R6 R7 K14 ["Environment"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R8 R0 K15 ["Parent"]
       42 GETTABLEKS                       R7 R8 K16 ["Signal"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K12 [require]
       47 GETTABLEKS                       R9 R0 K17 ["Util"]
       49 GETTABLEKS                       R8 R9 K18 ["ToolUtils"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K12 [require]
       54 GETTABLEKS                       R11 R0 K19 ["Resources"]
       56 GETTABLEKS                       R10 R11 K20 ["Localization"]
       58 GETTABLEKS                       R9 R10 K21 ["Translator"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K1 [script]
       63 LOADK                            R11 K22 ["MeshGen"]
       64 NAMECALL                         R9 R9 K3 ["FindFirstAncestor"]
       66 CALL                             R9 2 1
       67 GETIMPORT                        R10 K12 [require]
       69 GETTABLEKS                       R13 R9 K23 ["MeshGenTool"]
       71 GETTABLEKS                       R12 R13 K24 ["MeshGenHost"]
       73 GETTABLEKS                       R11 R12 K25 ["MeshGenAssetManager"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K12 [require]
       78 GETTABLEKS                       R14 R9 K23 ["MeshGenTool"]
       80 GETTABLEKS                       R13 R14 K24 ["MeshGenHost"]
       82 GETTABLEKS                       R12 R13 K26 ["MeshGenBoundingBoxVisualizer"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K12 [require]
       87 GETTABLEKS                       R14 R9 K23 ["MeshGenTool"]
       89 GETTABLEKS                       R13 R14 K27 ["MeshGenBridgeTypes"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K12 [require]
       94 GETTABLEKS                       R14 R9 K28 ["MeshGenConstants"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K12 [require]
       99 GETTABLEKS                       R15 R9 K29 ["MeshGenTypes"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K12 [require]
      104 GETTABLEKS                       R18 R9 K23 ["MeshGenTool"]
      106 GETTABLEKS                       R17 R18 K24 ["MeshGenHost"]
      108 GETTABLEKS                       R16 R17 K30 ["MeshGenViewportUtils"]
      110 CALL                             R15 1 1
      111 GETTABLEKS                       R16 R13 K31 ["Enums"]
      113 LOADN                            R17 0
      114 DUPCLOSURE                       R18 K32 [PROTO_0]
      115 CAPTURE                          VAL R13
      116 DUPCLOSURE                       R19 K33 [PROTO_1]
      117 CAPTURE                          VAL R18
      118 DUPCLOSURE                       R20 K34 [PROTO_2]
      119 CAPTURE                          VAL R18
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R11
      122 DUPCLOSURE                       R21 K35 [PROTO_6]
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R16
      127 CAPTURE                          VAL R15
      128 DUPCLOSURE                       R22 K36 [PROTO_7]
      129 CAPTURE                          VAL R10
      130 DUPCLOSURE                       R23 K37 [PROTO_14]
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R1
      134 DUPCLOSURE                       R24 K38 [PROTO_15]
      135 CAPTURE                          VAL R10
      136 DUPCLOSURE                       R25 K39 [PROTO_16]
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R4
      139 NEWCLOSURE                       R26 P8
      140 CAPTURE                          REF R17
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R4
      146 DUPCLOSURE                       R27 K40 [PROTO_18]
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R7
      149 DUPCLOSURE                       R28 K41 [PROTO_20]
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R8
      154 DUPTABLE                         R29 K50 [{"generateAssetsAsync", "cancelGenerationAsync", "publishAssetsAsync", "removeSelectedBoundsAsync", "insertAssetsAsync", "selectLinkedAssets", "listenToLinkChanges", "validateHasSelectedBoundingBoxAsync"}]
      155 SETTABLEKS                       R21 R29 K42 ["generateAssetsAsync"]
      157 SETTABLEKS                       R22 R29 K43 ["cancelGenerationAsync"]
      159 SETTABLEKS                       R23 R29 K44 ["publishAssetsAsync"]
      161 SETTABLEKS                       R24 R29 K45 ["removeSelectedBoundsAsync"]
      163 SETTABLEKS                       R26 R29 K46 ["insertAssetsAsync"]
      165 SETTABLEKS                       R27 R29 K47 ["selectLinkedAssets"]
      167 SETTABLEKS                       R28 R29 K48 ["listenToLinkChanges"]
      169 SETTABLEKS                       R19 R29 K49 ["validateHasSelectedBoundingBoxAsync"]
      171 DUPTABLE                         R30 K52 [{"bridge"}]
      172 SETTABLEKS                       R29 R30 K51 ["bridge"]
      174 CLOSEUPVALS                      R17
      175 RETURN                           R30 1
