PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R3 R3 K1 ["environment"]
        4 GETTABLEKS                       R3 R3 K2 ["instances"]
        6 GETTABLEKS                       R3 R3 K3 ["getInstanceFromUniqueId"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 JUMPIF                           R3 ; [+7]
       11 GETIMPORT                        R4 K5 [error]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K6 ["NO_SELECTION_ERROR_MESSAGE"]
       16 LOADN                            R6 0
       17 CALL                             R4 2 0
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K7 ["BOUNDING_BOX_INSTANCE_TYPE"]
       21 NAMECALL                         R4 R3 K8 ["IsA"]
       23 CALL                             R4 2 1
       24 JUMPIF                           R4 ; [+7]
       25 GETIMPORT                        R4 K5 [error]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K9 ["INVALID_SELECTION_ERROR_MESSAGE"]
       30 LOADN                            R6 0
       31 CALL                             R4 2 0
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R4 R4 K10 ["getGenerationSession"]
       35 MOVE                             R5 R1
       36 CALL                             R4 1 1
       37 NAMECALL                         R5 R3 K11 ["Clone"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R5 K12 ["Size"]
       42 LOADK                            R8 K13 [{0.02, 0.02, 0.02}]
       43 ADD                              R7 R6 R8
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R8 R8 K14 ["createBoundingBoxGhost"]
       47 MOVE                             R9 R7
       48 NAMECALL                         R10 R5 K15 ["GetPivot"]
       50 CALL                             R10 1 -1
       51 CALL                             R8 -1 1
       52 SETTABLEKS                       R8 R4 K16 ["boundingBoxGhost"]
       54 SETTABLEKS                       R5 R4 K17 ["boundingBoxCopy"]
       56 SETTABLEKS                       R3 R4 K18 ["selectedBoundingBox"]
       58 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["meshGen"]
        5 GETTABLEKS                       R0 R0 K2 ["generateModelAsync"]
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
       21 GETUPVAL                         R3 5
       22 GETTABLEKS                       R3 R3 K8 ["PredefinedSchema"]
       24 GETTABLEKS                       R3 R3 K10 ["Body1"]
       26 SETTABLEKS                       R3 R2 K8 ["PredefinedSchema"]
       28 DUPTABLE                         R3 K12 [{"adminOptions"}]
       29 LOADNIL                          R4
       30 SETTABLEKS                       R4 R3 K11 ["adminOptions"]
       32 CALL                             R0 3 2
       33 DUPTABLE                         R2 K15 [{"model", "metadata"}]
       34 SETTABLEKS                       R0 R2 K13 ["model"]
       36 SETTABLEKS                       R1 R2 K14 ["metadata"]
       38 RETURN                           R2 1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["bridge"]
        3 GETTABLEKS                       R2 R2 K1 ["setPreviewImage"]
        5 DUPTABLE                         R3 K4 [{"index", "image"}]
        6 SETTABLEKS                       R0 R3 K2 ["index"]
        8 SETTABLEKS                       R1 R3 K3 ["image"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETTABLEKS                       R3 R0 K1 ["textPrompt"]
        4 GETTABLEKS                       R4 R0 K2 ["size"]
        6 GETTABLEKS                       R5 R0 K3 ["maxTriangles"]
        8 GETTABLEKS                       R6 R0 K4 ["selectedUniqueId"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K5 ["getGenerationSession"]
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
       32 GETTABLEKS                       R8 R1 K13 ["toolArgs"]
       34 GETTABLEKS                       R8 R8 K14 ["environment"]
       36 JUMPIFNOT                        R6 ; [+7]
       37 GETUPVAL                         R9 1
       38 MOVE                             R10 R1
       39 MOVE                             R11 R2
       40 MOVE                             R12 R6
       41 CALL                             R9 3 1
       42 JUMPIFNOT                        R9 ; [+1]
       43 MOVE                             R4 R9
       44 NEWCLOSURE                       R9 P0
       45 CAPTURE                          VAL R8
       46 CAPTURE                          VAL R3
       47 CAPTURE                          REF R4
       48 CAPTURE                          VAL R5
       49 CAPTURE                          UPVAL U2
       50 GETIMPORT                        R11 K16 [pcall]
       52 LOADB                            R13 1
       53 NEWCLOSURE                       R12 P1
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R3
       56 CAPTURE                          REF R4
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R13
       59 CAPTURE                          UPVAL U2
       60 CALL                             R11 1 2
       61 MOVE                             R10 R12
       62 JUMPIFNOT                        R10 ; [+7]
       63 FASTCALL1                        TYPEOF R10 ; [+3]
       64 MOVE                             R12 R10
       65 GETIMPORT                        R11 K18 [typeof]
       67 CALL                             R11 1 1
       68 JUMPIFNOTEQKS                    R11 K19 ["string"] ; [+6]
       70 GETIMPORT                        R11 K21 [error]
       72 MOVE                             R12 R10
       73 LOADN                            R13 0
       74 CALL                             R11 2 0
       75 GETTABLEKS                       R11 R10 K22 ["model"]
       77 SETTABLEKS                       R3 R11 K23 ["Name"]
       79 SETTABLEKS                       R11 R7 K24 ["previewAssets"]
       81 GETTABLEKS                       R12 R1 K25 ["handlerArgs"]
       83 GETTABLEKS                       R12 R12 K26 ["isThirdPartyRequest"]
       85 JUMPIF                           R12 ; [+7]
       86 GETUPVAL                         R12 3
       87 GETTABLEKS                       R12 R12 K27 ["capturePreviewImages"]
       89 MOVE                             R13 R11
       90 NEWCLOSURE                       R14 P2
       91 CAPTURE                          VAL R1
       92 CALL                             R12 2 0
       93 DUPTABLE                         R12 K29 [{"generationId"}]
       94 GETTABLEKS                       R13 R10 K30 ["metadata"]
       96 GETTABLEKS                       R13 R13 K31 ["UUID"]
       98 SETTABLEKS                       R13 R12 K28 ["generationId"]
      100 CLOSEUPVALS                      R4
      101 RETURN                           R12 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getGenerationSession"]
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

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETTABLEKS                       R3 R0 K1 ["generationId"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["getGenerationSession"]
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
       28 GETTABLEKS                       R6 R1 K10 ["toolArgs"]
       30 GETTABLEKS                       R6 R6 K11 ["environment"]
       32 GETTABLEKS                       R6 R6 K12 ["tools"]
       34 GETTABLEKS                       R6 R6 K13 ["meshGen"]
       36 GETTABLEKS                       R7 R6 K14 ["publishModelAsync"]
       38 MOVE                             R8 R3
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R8 R6 K15 ["loadAssetAsync"]
       42 GETTABLEKS                       R10 R7 K16 ["assetId"]
       44 FASTCALL1                        TOSTRING R10 ; [+2]
       45 GETIMPORT                        R9 K18 [tostring]
       47 CALL                             R9 1 1
       48 CALL                             R8 1 1
       49 LOADNIL                          R9
       50 LENGTH                           R10 R8
       51 LOADN                            R11 1
       52 JUMPIFNOTLT                      R11 R10 ; [+15]
       54 GETIMPORT                        R10 K21 [Instance.new]
       56 LOADK                            R11 K22 ["Model"]
       57 CALL                             R10 1 1
       58 MOVE                             R9 R10
       59 MOVE                             R10 R8
       60 LOADNIL                          R11
       61 LOADNIL                          R12
       62 FORGPREP                         R10
       63 SETTABLEKS                       R9 R14 K23 ["Parent"]
       65 FORGLOOP                         R10 2 ; [-3]
       67 JUMP                             ; [+23]
       68 LENGTH                           R10 R8
       69 JUMPIFNOTEQKN                    R10 K24 [1] ; [+17]
       71 GETTABLEN                        R10 R8 1
       72 LOADK                            R13 K7 ["PVInstance"]
       73 NAMECALL                         R11 R10 K8 ["IsA"]
       75 CALL                             R11 2 1
       76 JUMPIFNOT                        R11 ; [+2]
       77 MOVE                             R9 R10
       78 JUMP                             ; [+12]
       79 GETIMPORT                        R11 K21 [Instance.new]
       81 LOADK                            R12 K22 ["Model"]
       82 CALL                             R11 1 1
       83 MOVE                             R9 R11
       84 SETTABLEKS                       R9 R10 K23 ["Parent"]
       86 JUMP                             ; [+4]
       87 GETIMPORT                        R10 K26 [error]
       89 LOADK                            R11 K27 ["No instances were loaded from the published asset"]
       90 CALL                             R10 1 0
       91 GETTABLEKS                       R10 R5 K28 ["Name"]
       93 SETTABLEKS                       R10 R9 K28 ["Name"]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K29 ["markAsAIGeneratedAsset"]
       98 MOVE                             R11 R9
       99 MOVE                             R12 R3
      100 CALL                             R10 2 0
      101 NEWTABLE                         R10 0 0
      103 NAMECALL                         R11 R9 K30 ["GetDescendants"]
      105 CALL                             R11 1 1
      106 FASTCALL2                        TABLE_INSERT R11 R9 ; [+5]
      108 MOVE                             R13 R11
      109 MOVE                             R14 R9
      110 GETIMPORT                        R12 K33 [table.insert]
      112 CALL                             R12 2 0
      113 MOVE                             R12 R11
      114 LOADNIL                          R13
      115 LOADNIL                          R14
      116 FORGPREP                         R12
      117 LOADK                            R19 K34 ["MeshPart"]
      118 NAMECALL                         R17 R16 K8 ["IsA"]
      120 CALL                             R17 2 1
      121 JUMPIFNOT                        R17 ; [+15]
      122 DUPTABLE                         R19 K37 [{"meshId", "textureId"}]
      123 GETTABLEKS                       R20 R16 K38 ["MeshId"]
      125 SETTABLEKS                       R20 R19 K35 ["meshId"]
      127 GETTABLEKS                       R20 R16 K39 ["TextureID"]
      129 SETTABLEKS                       R20 R19 K36 ["textureId"]
      131 FASTCALL2                        TABLE_INSERT R10 R19 ; [+4]
      133 MOVE                             R18 R10
      134 GETIMPORT                        R17 K33 [table.insert]
      136 CALL                             R17 2 0
      137 FORGLOOP                         R12 2 ; [-21]
      139 GETTABLEKS                       R12 R0 K40 ["hasPredeterminedSize"]
      141 JUMPIF                           R12 ; [+5]
      142 GETUPVAL                         R12 0
      143 GETTABLEKS                       R12 R12 K41 ["scaleUpToMinimumSize"]
      145 MOVE                             R13 R9
      146 CALL                             R12 1 0
      147 LOADNIL                          R12
      148 SETTABLEKS                       R12 R4 K3 ["previewAssets"]
      150 SETTABLEKS                       R9 R4 K42 ["publishedAssets"]
      152 DUPTABLE                         R12 K44 [{"assets"}]
      153 SETTABLEKS                       R10 R12 K43 ["assets"]
      155 RETURN                           R12 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getGenerationSession"]
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

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETTABLEKS                       R3 R1 K1 ["toolArgs"]
        4 GETTABLEKS                       R3 R3 K2 ["environment"]
        6 GETUPVAL                         R4 0
        7 ADDK                             R4 R4 K3 [1]
        8 SETUPVAL                         R4 0
        9 LOADK                            R5 K4 ["Insert AI Generated MeshPart %*"]
       10 GETUPVAL                         R7 0
       11 NAMECALL                         R5 R5 K5 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 GETTABLEKS                       R5 R3 K6 ["startRecording"]
       17 MOVE                             R6 R2
       18 MOVE                             R7 R4
       19 CALL                             R5 2 0
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K7 ["getGenerationSession"]
       23 MOVE                             R6 R2
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R6 R5 K8 ["publishedAssets"]
       27 FASTCALL2K                       ASSERT R6 K9 ; [+5]
       29 MOVE                             R8 R6
       30 LOADK                            R9 K9 ["PublishedAssets not found"]
       31 GETIMPORT                        R7 K11 [assert]
       33 CALL                             R7 2 0
       34 NAMECALL                         R7 R6 K12 ["Clone"]
       36 CALL                             R7 1 1
       37 GETUPVAL                         R10 2
       38 GETTABLEKS                       R10 R10 K13 ["getLinkTag"]
       40 MOVE                             R11 R2
       41 CALL                             R10 1 -1
       42 NAMECALL                         R8 R7 K14 ["AddTag"]
       44 CALL                             R8 -1 0
       45 GETTABLEKS                       R8 R5 K15 ["boundingBoxCopy"]
       47 JUMPIFNOT                        R8 ; [+82]
       48 NAMECALL                         R9 R8 K16 ["GetPivot"]
       50 CALL                             R9 1 1
       51 MOVE                             R12 R9
       52 NAMECALL                         R10 R7 K17 ["PivotTo"]
       54 CALL                             R10 2 0
       55 GETTABLEKS                       R10 R5 K18 ["selectedBoundingBox"]
       57 JUMPIFNOT                        R10 ; [+40]
       58 LOADK                            R13 K19 ["Part"]
       59 NAMECALL                         R11 R8 K20 ["IsA"]
       61 CALL                             R11 2 1
       62 JUMPIFNOT                        R11 ; [+35]
       63 LOADK                            R13 K19 ["Part"]
       64 NAMECALL                         R11 R10 K20 ["IsA"]
       66 CALL                             R11 2 1
       67 JUMPIFNOT                        R11 ; [+30]
       68 GETTABLEKS                       R11 R10 K21 ["Size"]
       70 GETTABLEKS                       R13 R8 K21 ["Size"]
       72 LOADK                            R14 K22 [0.01]
       73 NAMECALL                         R11 R11 K23 ["FuzzyEq"]
       75 CALL                             R11 3 1
       76 GETTABLEKS                       R12 R10 K24 ["Position"]
       78 GETTABLEKS                       R14 R8 K24 ["Position"]
       80 LOADK                            R15 K22 [0.01]
       81 NAMECALL                         R12 R12 K23 ["FuzzyEq"]
       83 CALL                             R12 3 1
       84 GETTABLEKS                       R13 R10 K25 ["Orientation"]
       86 GETTABLEKS                       R15 R8 K25 ["Orientation"]
       88 LOADK                            R16 K22 [0.01]
       89 NAMECALL                         R13 R13 K23 ["FuzzyEq"]
       91 CALL                             R13 3 1
       92 JUMPIFNOT                        R11 ; [+5]
       93 JUMPIFNOT                        R12 ; [+4]
       94 JUMPIFNOT                        R13 ; [+3]
       95 LOADNIL                          R14
       96 SETTABLEKS                       R14 R10 K26 ["Parent"]
       98 DUPTABLE                         R11 K27 [{"requestId"}]
       99 SETTABLEKS                       R2 R11 K0 ["requestId"]
      101 GETTABLEKS                       R12 R11 K0 ["requestId"]
      103 GETUPVAL                         R13 1
      104 GETTABLEKS                       R13 R13 K7 ["getGenerationSession"]
      106 MOVE                             R14 R12
      107 CALL                             R13 1 1
      108 GETTABLEKS                       R14 R13 K28 ["boundingBoxGhost"]
      110 JUMPIFNOT                        R14 ; [+6]
      111 NAMECALL                         R15 R14 K29 ["Destroy"]
      113 CALL                             R15 1 0
      114 LOADNIL                          R15
      115 SETTABLEKS                       R15 R13 K28 ["boundingBoxGhost"]
      117 GETTABLEKS                       R15 R13 K15 ["boundingBoxCopy"]
      119 JUMPIFNOT                        R15 ; [+6]
      120 NAMECALL                         R16 R15 K29 ["Destroy"]
      122 CALL                             R16 1 0
      123 LOADNIL                          R16
      124 SETTABLEKS                       R16 R13 K15 ["boundingBoxCopy"]
      126 LOADNIL                          R16
      127 SETTABLEKS                       R16 R13 K18 ["selectedBoundingBox"]
      129 JUMP                             ; [+6]
      130 GETUPVAL                         R9 3
      131 GETTABLEKS                       R9 R9 K30 ["setPositionOnGround"]
      133 MOVE                             R10 R7
      134 LOADB                            R11 1
      135 CALL                             R9 2 0
      136 GETIMPORT                        R9 K32 [workspace]
      138 SETTABLEKS                       R9 R7 K26 ["Parent"]
      140 GETTABLEKS                       R9 R3 K33 ["endRecording"]
      142 MOVE                             R10 R2
      143 CALL                             R9 1 0
      144 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["requestId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getLinkTag"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 1
        8 MOVE                             R6 R3
        9 NAMECALL                         R4 R4 K2 ["GetTagged"]
       11 CALL                             R4 2 1
       12 LENGTH                           R5 R4
       13 JUMPIFNOTEQKN                    R5 K3 [0] ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R5 R1 K4 ["toolArgs"]
       18 GETTABLEKS                       R5 R5 K5 ["environment"]
       20 GETTABLEKS                       R6 R5 K6 ["selection"]
       22 GETTABLEKS                       R6 R6 K7 ["set"]
       24 MOVE                             R7 R4
       25 CALL                             R6 1 0
       26 RETURN                           R0 0

PROTO_10:
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
       30 GETUPVAL                         R4 4
       31 GETTABLEKS                       R4 R4 K8 ["bridge"]
       33 GETTABLEKS                       R4 R4 K9 ["updateContentHeader"]
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

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["generationName"]
        2 GETTABLEKS                       R3 R0 K1 ["requestId"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["getLinkTag"]
        7 MOVE                             R5 R3
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["observeTagChanges"]
       12 MOVE                             R6 R4
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R1
       19 CALL                             R5 2 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["toolArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["environment"]
        4 GETTABLEKS                       R2 R1 K2 ["selection"]
        6 GETTABLEKS                       R2 R2 K3 ["get"]
        8 CALL                             R2 0 1
        9 LENGTH                           R3 R2
       10 JUMPIFEQKN                       R3 K4 [1] ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEN                        R3 R2 1
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K5 ["BOUNDING_BOX_INSTANCE_TYPE"]
       17 NAMECALL                         R4 R3 K6 ["IsA"]
       19 CALL                             R4 2 1
       20 JUMPIF                           R4 ; [+1]
       21 RETURN                           R0 0
       22 GETTABLEKS                       R4 R1 K7 ["instances"]
       24 GETTABLEKS                       R4 R4 K8 ["getUniqueId"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 1
       28 DUPTABLE                         R5 K12 [{"uniqueId", "name", "className"}]
       29 SETTABLEKS                       R4 R5 K9 ["uniqueId"]
       31 GETTABLEKS                       R6 R3 K13 ["Name"]
       33 SETTABLEKS                       R6 R5 K10 ["name"]
       35 GETTABLEKS                       R6 R3 K14 ["ClassName"]
       37 SETTABLEKS                       R6 R5 K11 ["className"]
       39 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R3 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Util"]
       24 GETTABLEKS                       R4 R4 K13 ["Tagging"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K14 ["ToolUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K15 ["Resources"]
       38 GETTABLEKS                       R6 R6 K16 ["Localization"]
       40 GETTABLEKS                       R6 R6 K17 ["Translator"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K18 ["Types"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K1 [script]
       50 LOADK                            R9 K19 ["MeshGen"]
       51 NAMECALL                         R7 R7 K3 ["FindFirstAncestor"]
       53 CALL                             R7 2 1
       54 GETIMPORT                        R8 K9 [require]
       56 GETTABLEKS                       R9 R7 K20 ["MeshGenTool"]
       58 GETTABLEKS                       R9 R9 K21 ["MeshGenHost"]
       60 GETTABLEKS                       R9 R9 K22 ["MeshGenAssetManager"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K9 [require]
       65 GETTABLEKS                       R10 R7 K20 ["MeshGenTool"]
       67 GETTABLEKS                       R10 R10 K21 ["MeshGenHost"]
       69 GETTABLEKS                       R10 R10 K23 ["MeshGenBoundingBoxVisualizer"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K9 [require]
       74 GETTABLEKS                       R11 R7 K20 ["MeshGenTool"]
       76 GETTABLEKS                       R11 R11 K24 ["MeshGenBridgeTypes"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K9 [require]
       81 GETTABLEKS                       R12 R7 K25 ["MeshGenConstants"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K9 [require]
       86 GETTABLEKS                       R13 R7 K26 ["MeshGenTypes"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K9 [require]
       91 GETTABLEKS                       R14 R0 K27 ["Features"]
       93 GETTABLEKS                       R14 R14 K28 ["Gen3dUtils"]
       95 GETTABLEKS                       R14 R14 K29 ["ViewportPreviewUtils"]
       97 CALL                             R13 1 1
       98 GETTABLEKS                       R14 R11 K30 ["Enums"]
      100 LOADN                            R15 0
      101 DUPCLOSURE                       R16 K31 [PROTO_0]
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R9
      105 DUPCLOSURE                       R17 K32 [PROTO_4]
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R13
      110 DUPCLOSURE                       R18 K33 [PROTO_5]
      111 CAPTURE                          VAL R8
      112 DUPCLOSURE                       R19 K34 [PROTO_6]
      113 CAPTURE                          VAL R8
      114 DUPCLOSURE                       R20 K35 [PROTO_7]
      115 CAPTURE                          VAL R8
      116 NEWCLOSURE                       R21 P5
      117 CAPTURE                          REF R15
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R4
      121 DUPCLOSURE                       R22 K36 [PROTO_9]
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R1
      124 DUPCLOSURE                       R23 K37 [PROTO_11]
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R5
      129 DUPCLOSURE                       R24 K38 [PROTO_12]
      130 CAPTURE                          VAL R11
      131 DUPTABLE                         R25 K47 [{"generateAssetsAsync", "cancelGenerationAsync", "publishAssetsAsync", "removeSelectedBoundsAsync", "insertAssetsAsync", "selectLinkedAssets", "listenToLinkChanges", "getSelectedBoundingBox"}]
      132 SETTABLEKS                       R17 R25 K39 ["generateAssetsAsync"]
      134 SETTABLEKS                       R18 R25 K40 ["cancelGenerationAsync"]
      136 SETTABLEKS                       R19 R25 K41 ["publishAssetsAsync"]
      138 SETTABLEKS                       R20 R25 K42 ["removeSelectedBoundsAsync"]
      140 SETTABLEKS                       R21 R25 K43 ["insertAssetsAsync"]
      142 SETTABLEKS                       R22 R25 K44 ["selectLinkedAssets"]
      144 SETTABLEKS                       R23 R25 K45 ["listenToLinkChanges"]
      146 SETTABLEKS                       R24 R25 K46 ["getSelectedBoundingBox"]
      148 DUPTABLE                         R26 K49 [{"bridge"}]
      149 SETTABLEKS                       R25 R26 K48 ["bridge"]
      151 CLOSEUPVALS                      R15
      152 RETURN                           R26 1
