PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["textureGeneration"]
        2 MOVE                             R3 R1
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R0
        5 LOADK                            R6 K1 ["TextureGenServiceMissing"]
        6 CALL                             R4 2 -1
        7 FASTCALL                         ASSERT ; [+2]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 -1 0
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["requestId"]
        2 GETTABLEKS                       R5 R0 K1 ["textPrompt"]
        4 LOADB                            R6 0
        5 FASTCALL1                        TYPEOF R5 ; [+3]
        6 MOVE                             R8 R5
        7 GETIMPORT                        R7 K3 [typeof]
        9 CALL                             R7 1 1
       10 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+7]
       12 LENGTH                           R7 R5
       13 LOADN                            R8 0
       14 JUMPIFLT                         R8 R7 ; [+2]
       16 LOADB                            R6 0 +1
       17 LOADB                            R6 1
       18 GETTABLEKS                       R9 R0 K5 ["hintImage"]
       20 FASTCALL1                        TYPEOF R9 ; [+2]
       21 GETIMPORT                        R8 K3 [typeof]
       23 CALL                             R8 1 1
       24 JUMPIFEQKS                       R8 K6 ["buffer"] ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 OR                               R9 R6 R7
       29 GETUPVAL                         R10 0
       30 MOVE                             R11 R1
       31 LOADK                            R12 K7 ["TextureNoPromptOrImage"]
       32 CALL                             R10 2 -1
       33 FASTCALL                         ASSERT ; [+2]
       34 GETIMPORT                        R8 K9 [assert]
       36 CALL                             R8 -1 0
       37 GETTABLEKS                       R8 R0 K10 ["selectedUniqueId"]
       39 MOVE                             R10 R8
       40 GETUPVAL                         R11 0
       41 MOVE                             R12 R1
       42 LOADK                            R13 K11 ["NoSelection"]
       43 CALL                             R11 2 -1
       44 FASTCALL                         ASSERT ; [+2]
       45 GETIMPORT                        R9 K9 [assert]
       47 CALL                             R9 -1 0
       48 GETTABLEKS                       R10 R1 K12 ["textureGeneration"]
       50 MOVE                             R12 R10
       51 GETUPVAL                         R13 0
       52 MOVE                             R14 R1
       53 LOADK                            R15 K13 ["TextureGenServiceMissing"]
       54 CALL                             R13 2 -1
       55 FASTCALL                         ASSERT ; [+2]
       56 GETIMPORT                        R11 K9 [assert]
       58 CALL                             R11 -1 0
       59 MOVE                             R9 R10
       60 GETTABLEKS                       R10 R2 K14 ["getGenerationSession"]
       62 MOVE                             R11 R4
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R13 R10 K15 ["generationThread"]
       66 JUMPIFEQKNIL                     R13 ; [+2]
       68 LOADB                            R12 0 +1
       69 LOADB                            R12 1
       70 FASTCALL2K                       ASSERT R12 K16 ; [+4]
       72 LOADK                            R13 K16 ["Generation thread already exists for requestId"]
       73 GETIMPORT                        R11 K9 [assert]
       75 CALL                             R11 2 0
       76 GETIMPORT                        R11 K19 [coroutine.running]
       78 CALL                             R11 0 1
       79 SETTABLEKS                       R11 R10 K15 ["generationThread"]
       81 GETTABLEKS                       R11 R1 K20 ["instances"]
       83 GETTABLEKS                       R11 R11 K21 ["getInstanceFromUniqueId"]
       85 MOVE                             R12 R8
       86 CALL                             R11 1 1
       87 MOVE                             R13 R11
       88 GETUPVAL                         R14 0
       89 MOVE                             R15 R1
       90 LOADK                            R16 K11 ["NoSelection"]
       91 CALL                             R14 2 -1
       92 FASTCALL                         ASSERT ; [+2]
       93 GETIMPORT                        R12 K9 [assert]
       95 CALL                             R12 -1 0
       96 SETTABLEKS                       R11 R10 K22 ["sourceInstance"]
       98 GETUPVAL                         R12 1
       99 GETTABLEKS                       R12 R12 K23 ["resolveSingleMeshPart"]
      101 MOVE                             R13 R11
      102 CALL                             R12 1 1
      103 MOVE                             R14 R12
      104 GETUPVAL                         R15 0
      105 MOVE                             R16 R1
      106 LOADK                            R17 K24 ["TextureRequiresSingleMeshPart"]
      107 CALL                             R15 2 -1
      108 FASTCALL                         ASSERT ; [+2]
      109 GETIMPORT                        R13 K9 [assert]
      111 CALL                             R13 -1 0
      112 GETTABLEKS                       R13 R12 K25 ["CFrame"]
      114 SETTABLEKS                       R13 R10 K26 ["sourceMeshCFrame"]
      116 GETUPVAL                         R13 1
      117 GETTABLEKS                       R13 R13 K27 ["exportMeshToGlbAsync"]
      119 MOVE                             R14 R12
      120 GETTABLEKS                       R15 R1 K28 ["meshGen"]
      122 GETTABLEKS                       R15 R15 K27 ["exportMeshToGlbAsync"]
      124 GETUPVAL                         R16 2
      125 CALL                             R16 0 -1
      126 CALL                             R13 -1 2
      127 LOADB                            R16 0
      128 FASTCALL1                        TYPEOF R13 ; [+3]
      129 MOVE                             R18 R13
      130 GETIMPORT                        R17 K3 [typeof]
      132 CALL                             R17 1 1
      133 JUMPIFNOTEQKS                    R17 K4 ["string"] ; [+7]
      135 LENGTH                           R17 R13
      136 LOADN                            R18 0
      137 JUMPIFLT                         R18 R17 ; [+2]
      139 LOADB                            R16 0 +1
      140 LOADB                            R16 1
      141 FASTCALL2K                       ASSERT R16 K29 ; [+4]
      143 LOADK                            R17 K29 ["Failed to export source MeshPart to GLB"]
      144 GETIMPORT                        R15 K9 [assert]
      146 CALL                             R15 2 0
      147 SETTABLEKS                       R14 R10 K30 ["sourceExportScale"]
      149 GETTABLEKS                       R15 R9 K31 ["startAsync"]
      151 DUPTABLE                         R16 K36 [{"glb", "textPrompt", "image", "imageContentType", "model"}]
      152 SETTABLEKS                       R13 R16 K32 ["glb"]
      154 SETTABLEKS                       R5 R16 K1 ["textPrompt"]
      156 GETTABLEKS                       R17 R0 K5 ["hintImage"]
      158 SETTABLEKS                       R17 R16 K33 ["image"]
      160 GETTABLEKS                       R17 R0 K37 ["hintImageContentType"]
      162 SETTABLEKS                       R17 R16 K34 ["imageContentType"]
      164 GETTABLEKS                       R17 R0 K35 ["model"]
      166 SETTABLEKS                       R17 R16 K35 ["model"]
      168 CALL                             R15 1 1
      169 GETTABLEKS                       R16 R15 K38 ["textureGenerationId"]
      171 FASTCALL1                        TYPEOF R16 ; [+3]
      172 MOVE                             R20 R16
      173 GETIMPORT                        R19 K3 [typeof]
      175 CALL                             R19 1 1
      176 JUMPIFEQKS                       R19 K4 ["string"] ; [+2]
      178 LOADB                            R18 0 +1
      179 LOADB                            R18 1
      180 FASTCALL2K                       ASSERT R18 K39 ; [+4]
      182 LOADK                            R19 K39 ["Missing textureGenerationId in startAsync response"]
      183 GETIMPORT                        R17 K9 [assert]
      185 CALL                             R17 2 0
      186 SETTABLEKS                       R16 R10 K40 ["generationId"]
      188 GETUPVAL                         R17 1
      189 GETTABLEKS                       R17 R17 K41 ["pollForCompletedStatus"]
      191 GETTABLEKS                       R18 R9 K42 ["getStatusAsync"]
      193 MOVE                             R19 R16
      194 NEWCLOSURE                       R20 P0
      195 CAPTURE                          UPVAL U0
      196 CAPTURE                          VAL R1
      197 LOADK                            R21 K43 ["FailedToGenerate"]
      198 LOADK                            R22 K44 ["TextureGen"]
      199 CALL                             R17 5 1
      200 SETTABLEKS                       R17 R10 K45 ["modelRbxmUrl"]
      202 GETTABLEKS                       R18 R1 K28 ["meshGen"]
      204 GETTABLEKS                       R18 R18 K46 ["loadModelFromUrlAsync"]
      206 MOVE                             R19 R17
      207 CALL                             R18 1 1
      208 GETTABLEKS                       R20 R11 K47 ["Name"]
      210 LOADK                            R21 K48 [" (Textured)"]
      211 CONCAT                           R19 R20 R21
      212 SETTABLEKS                       R19 R18 K47 ["Name"]
      214 SETTABLEKS                       R18 R10 K49 ["previewAssets"]
      216 MOVE                             R19 R3
      217 JUMPIFNOT                        R19 ; [+2]
      218 GETTABLEKS                       R19 R3 K50 ["setPreviewImage"]
      220 JUMPIFNOT                        R19 ; [+8]
      221 GETTABLEKS                       R20 R1 K51 ["preview"]
      223 GETTABLEKS                       R20 R20 K52 ["capturePreviewImages"]
      225 MOVE                             R21 R18
      226 MOVE                             R22 R19
      227 GETUPVAL                         R23 3
      228 CALL                             R20 3 0
      229 LOADNIL                          R20
      230 SETTABLEKS                       R20 R10 K15 ["generationThread"]
      232 DUPTABLE                         R20 K53 [{"generationId", "modelRbxmUrl"}]
      233 SETTABLEKS                       R16 R20 K40 ["generationId"]
      235 SETTABLEKS                       R17 R20 K45 ["modelRbxmUrl"]
      237 RETURN                           R20 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["cancelGenerationSession"]
        2 GETTABLEKS                       R3 R0 K1 ["requestId"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["useSourceMeshCFrameForPivot"]
        2 JUMPIF                           R3 ; [+2]
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+11]
        6 GETTABLEKS                       R5 R2 K1 ["sourceMeshCFrame"]
        8 JUMPIFNOT                        R5 ; [+8]
        9 GETIMPORT                        R4 K4 [CFrame.new]
       11 GETTABLEKS                       R5 R2 K1 ["sourceMeshCFrame"]
       13 GETTABLEKS                       R5 R5 K5 ["Position"]
       15 CALL                             R4 1 1
       16 RETURN                           R4 1
       17 LOADK                            R7 K6 ["PVInstance"]
       18 NAMECALL                         R5 R1 K7 ["IsA"]
       20 CALL                             R5 2 1
       21 JUMPIFNOT                        R5 ; [+4]
       22 NAMECALL                         R4 R1 K8 ["GetPivot"]
       24 CALL                             R4 1 1
       25 RETURN                           R4 1
       26 LOADNIL                          R4
       27 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["collectFlattenedParts"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 LENGTH                           R5 R2
        6 JUMPIFEQKN                       R5 K1 [1] ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 LOADK                            R6 K2 ["Expected exactly one part when loading textured model asset, got %*"]
       11 LENGTH                           R8 R2
       12 NAMECALL                         R6 R6 K3 ["format"]
       14 CALL                             R6 2 1
       15 MOVE                             R5 R6
       16 FASTCALL2                        ASSERT R4 R5 ; [+3]
       18 GETIMPORT                        R3 K5 [assert]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K6 ["resolveSingleMeshPart"]
       24 GETTABLEN                        R4 R2 1
       25 CALL                             R3 1 1
       26 FASTCALL2K                       ASSERT R3 K7 ; [+5]
       28 MOVE                             R5 R3
       29 LOADK                            R6 K7 ["Textured model asset root is not a MeshPart"]
       30 GETIMPORT                        R4 K5 [assert]
       32 CALL                             R4 2 0
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K8 ["sourceExportScale"]
       36 JUMPIFNOT                        R4 ; [+7]
       37 JUMPIFEQKN                       R4 K1 [1] ; [+6]
       39 GETTABLEKS                       R5 R3 K9 ["Size"]
       41 DIV                              R5 R5 R4
       42 SETTABLEKS                       R5 R3 K9 ["Size"]
       44 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["sourcePivotCFrame"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R4 R1 K0 ["sourcePivotCFrame"]
        5 NAMECALL                         R2 R0 K1 ["PivotTo"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R2 K0 ["getGenerationSession"]
        2 GETTABLEKS                       R5 R0 K1 ["requestId"]
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["insertGeneratedModelAsync"]
        8 MOVE                             R6 R0
        9 MOVE                             R7 R1
       10 MOVE                             R8 R2
       11 DUPTABLE                         R9 K16 [{["requireService"], ["suffix"] = " (Textured)", ["tagKind"] = "TexturedMesh", ["generationType"], ["recordingLabel"] = "Insert AI Textured Model", ["opName"] = "insertTexturedModelAsync", ["computeSourcePivot"], ["assembleResult"], ["applyReplaceTransform"]}]
       12 GETUPVAL                         R10 1
       13 SETTABLEKS                       R10 R9 K3 ["requireService"]
       15 GETUPVAL                         R10 2
       16 GETTABLEKS                       R10 R10 K17 ["Enums"]
       18 GETTABLEKS                       R10 R10 K18 ["GenerationType"]
       20 GETTABLEKS                       R10 R10 K19 ["TextureGen"]
       22 SETTABLEKS                       R10 R9 K8 ["generationType"]
       24 DUPCLOSURE                       R10 K20 [PROTO_4]
       25 CAPTURE                          UPVAL U3
       26 SETTABLEKS                       R10 R9 K13 ["computeSourcePivot"]
       28 NEWCLOSURE                       R10 P1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R4
       31 SETTABLEKS                       R10 R9 K14 ["assembleResult"]
       33 DUPCLOSURE                       R10 K21 [PROTO_6]
       34 SETTABLEKS                       R10 R9 K15 ["applyReplaceTransform"]
       36 MOVE                             R10 R3
       37 CALL                             R5 5 0
       38 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["preview"]
        3 GETTABLEKS                       R0 R0 K1 ["captureSinglePreviewImageAsync"]
        5 GETUPVAL                         R1 1
        6 LOADN                            R2 45
        7 LOADN                            R3 30
        8 CALL                             R0 3 -1
        9 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K2 [{[1] = "png"}]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["instances"]
        2 GETTABLEKS                       R2 R2 K1 ["getInstanceFromUniqueId"]
        4 GETTABLEKS                       R3 R0 K2 ["selectedUniqueId"]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["isTextureableInstance"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 GETIMPORT                        R3 K5 [pcall]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CALL                             R3 1 2
       22 JUMPIFNOT                        R3 ; [+9]
       23 FASTCALL1                        TYPEOF R4 ; [+3]
       24 MOVE                             R6 R4
       25 GETIMPORT                        R5 K7 [typeof]
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKS                    R5 K8 ["string"] ; [+3]
       30 JUMPIFNOTEQKS                    R4 K9 [""] ; [+3]
       32 LOADNIL                          R5
       33 RETURN                           R5 1
       34 GETTABLEKS                       R5 R1 K10 ["preview"]
       36 GETTABLEKS                       R5 R5 K11 ["getImageDataBase64Async"]
       38 JUMPIF                           R5 ; [+6]
       39 GETIMPORT                        R6 K13 [warn]
       41 LOADK                            R7 K14 ["[TextureGen] preview.getImageDataBase64Async unavailable; cannot produce preview image bytes"]
       42 CALL                             R6 1 0
       43 LOADNIL                          R6
       44 RETURN                           R6 1
       45 GETIMPORT                        R6 K5 [pcall]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R4
       50 CALL                             R6 1 2
       51 JUMPIFNOT                        R6 ; [+9]
       52 FASTCALL1                        TYPEOF R7 ; [+3]
       53 MOVE                             R9 R7
       54 GETIMPORT                        R8 K7 [typeof]
       56 CALL                             R8 1 1
       57 JUMPIFNOTEQKS                    R8 K8 ["string"] ; [+3]
       59 JUMPIFNOTEQKS                    R7 K9 [""] ; [+3]
       61 LOADNIL                          R8
       62 RETURN                           R8 1
       63 DUPTABLE                         R8 K18 [{["imageBase64"], ["mimeType"] = "image/png"}]
       64 SETTABLEKS                       R7 R8 K15 ["imageBase64"]
       66 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Gen3dTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["GenerationSessions"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["GenerationUtils"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K9 ["HostSurface"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K10 ["PreviewCarousel"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K11 ["Selection"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETIMPORT                        R8 K1 [script]
       41 GETTABLEKS                       R8 R8 K12 ["Parent"]
       43 GETTABLEKS                       R8 R8 K13 ["TextureGenStrings"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R0 K14 ["Flags"]
       50 GETTABLEKS                       R9 R9 K15 ["getFFlagGen3dExportMeshAtOrigin"]
       52 CALL                             R8 1 1
       53 NEWTABLE                         R9 4 0
       55 GETTABLEKS                       R10 R5 K16 ["VIEW_ANGLES"]
       57 GETTABLEKS                       R11 R3 K17 ["makeTranslator"]
       59 LOADK                            R12 K18 ["TextureGen"]
       60 MOVE                             R13 R7
       61 CALL                             R11 2 1
       62 DUPCLOSURE                       R12 K19 [PROTO_0]
       63 CAPTURE                          VAL R11
       64 DUPCLOSURE                       R13 K20 [PROTO_2]
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R10
       69 SETTABLEKS                       R13 R9 K21 ["generateTextureAsync"]
       71 DUPCLOSURE                       R13 K22 [PROTO_3]
       72 SETTABLEKS                       R13 R9 K23 ["cancelGenerationAsync"]
       74 DUPCLOSURE                       R13 K24 [PROTO_7]
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R8
       79 SETTABLEKS                       R13 R9 K25 ["insertTexturedModelAsync"]
       81 DUPCLOSURE                       R13 K26 [PROTO_10]
       82 CAPTURE                          VAL R6
       83 SETTABLEKS                       R13 R9 K27 ["captureSourceInstanceImageAsync"]
       85 RETURN                           R9 1
