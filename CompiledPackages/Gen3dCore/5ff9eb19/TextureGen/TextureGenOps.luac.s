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
        0 SETTABLEKS                       R1 R0 K0 ["Archivable"]
        2 NAMECALL                         R2 R0 K1 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 SETTABLEKS                       R1 R6 K0 ["Archivable"]
        8 FORGLOOP                         R2 2 ; [-3]
       10 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R4 K0 ["BasePart"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 SETTABLEKS                       R1 R0 K2 ["Anchored"]
        7 NAMECALL                         R2 R0 K3 ["GetDescendants"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 LOADK                            R9 K0 ["BasePart"]
       12 NAMECALL                         R7 R6 K1 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+2]
       16 SETTABLEKS                       R1 R6 K2 ["Anchored"]
       18 FORGLOOP                         R2 2 ; [-8]
       20 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["modelRbxmUrl"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_5:
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
      103 NOT                              R13 R12
      104 JUMPIFNOT                        R13 ; [+8]
      105 GETUPVAL                         R13 2
      106 CALL                             R13 0 1
      107 JUMPIFNOT                        R13 ; [+5]
      108 GETUPVAL                         R13 1
      109 GETTABLEKS                       R13 R13 K24 ["isMultiMeshModel"]
      111 MOVE                             R14 R11
      112 CALL                             R13 1 1
      113 OR                               R15 R12 R13
      114 GETUPVAL                         R16 0
      115 MOVE                             R17 R1
      116 LOADK                            R18 K25 ["TextureRequiresSingleMeshPart"]
      117 CALL                             R16 2 -1
      118 FASTCALL                         ASSERT ; [+2]
      119 GETIMPORT                        R14 K9 [assert]
      121 CALL                             R14 -1 0
      122 SETTABLEKS                       R13 R10 K26 ["isMultiMeshSource"]
      124 LOADNIL                          R14
      125 LOADN                            R15 1
      126 JUMPIFNOT                        R12 ; [+20]
      127 GETTABLEKS                       R16 R12 K27 ["CFrame"]
      129 SETTABLEKS                       R16 R10 K28 ["sourceMeshCFrame"]
      131 GETUPVAL                         R16 1
      132 GETTABLEKS                       R16 R16 K29 ["exportInstanceToGlbAsync"]
      134 MOVE                             R17 R12
      135 GETTABLEKS                       R18 R1 K30 ["meshGen"]
      137 GETTABLEKS                       R18 R18 K29 ["exportInstanceToGlbAsync"]
      139 GETUPVAL                         R19 3
      140 CALL                             R19 0 1
      141 GETUPVAL                         R20 3
      142 CALL                             R20 0 -1
      143 CALL                             R16 -1 2
      144 MOVE                             R14 R16
      145 MOVE                             R15 R17
      146 JUMP                             ; [+11]
      147 GETUPVAL                         R16 1
      148 GETTABLEKS                       R16 R16 K29 ["exportInstanceToGlbAsync"]
      150 MOVE                             R17 R11
      151 GETTABLEKS                       R18 R1 K30 ["meshGen"]
      153 GETTABLEKS                       R18 R18 K29 ["exportInstanceToGlbAsync"]
      155 LOADB                            R19 1
      156 CALL                             R16 3 1
      157 MOVE                             R14 R16
      158 LOADB                            R17 0
      159 FASTCALL1                        TYPEOF R14 ; [+3]
      160 MOVE                             R19 R14
      161 GETIMPORT                        R18 K3 [typeof]
      163 CALL                             R18 1 1
      164 JUMPIFNOTEQKS                    R18 K4 ["string"] ; [+7]
      166 LENGTH                           R18 R14
      167 LOADN                            R19 0
      168 JUMPIFLT                         R19 R18 ; [+2]
      170 LOADB                            R17 0 +1
      171 LOADB                            R17 1
      172 FASTCALL2K                       ASSERT R17 K31 ; [+4]
      174 LOADK                            R18 K31 ["Failed to export source to GLB"]
      175 GETIMPORT                        R16 K9 [assert]
      177 CALL                             R16 2 0
      178 SETTABLEKS                       R15 R10 K32 ["sourceExportScale"]
      180 GETTABLEKS                       R16 R9 K33 ["startAsync"]
      182 DUPTABLE                         R17 K38 [{"glb", "textPrompt", "image", "imageContentType", "model"}]
      183 SETTABLEKS                       R14 R17 K34 ["glb"]
      185 SETTABLEKS                       R5 R17 K1 ["textPrompt"]
      187 GETTABLEKS                       R18 R0 K5 ["hintImage"]
      189 SETTABLEKS                       R18 R17 K35 ["image"]
      191 GETTABLEKS                       R18 R0 K39 ["hintImageContentType"]
      193 SETTABLEKS                       R18 R17 K36 ["imageContentType"]
      195 GETTABLEKS                       R18 R0 K37 ["model"]
      197 SETTABLEKS                       R18 R17 K37 ["model"]
      199 CALL                             R16 1 1
      200 GETTABLEKS                       R17 R16 K40 ["textureGenerationId"]
      202 FASTCALL1                        TYPEOF R17 ; [+3]
      203 MOVE                             R21 R17
      204 GETIMPORT                        R20 K3 [typeof]
      206 CALL                             R20 1 1
      207 JUMPIFEQKS                       R20 K4 ["string"] ; [+2]
      209 LOADB                            R19 0 +1
      210 LOADB                            R19 1
      211 FASTCALL2K                       ASSERT R19 K41 ; [+4]
      213 LOADK                            R20 K41 ["Missing textureGenerationId in startAsync response"]
      214 GETIMPORT                        R18 K9 [assert]
      216 CALL                             R18 2 0
      217 SETTABLEKS                       R17 R10 K42 ["generationId"]
      219 GETUPVAL                         R18 1
      220 GETTABLEKS                       R18 R18 K43 ["pollForCompletedStatus"]
      222 GETTABLEKS                       R19 R9 K44 ["getStatusAsync"]
      224 MOVE                             R20 R17
      225 DUPCLOSURE                       R21 K45 [PROTO_3]
      226 NEWCLOSURE                       R22 P1
      227 CAPTURE                          UPVAL U0
      228 CAPTURE                          VAL R1
      229 LOADK                            R23 K46 ["FailedToGenerate"]
      230 LOADK                            R24 K47 ["TextureGen"]
      231 CALL                             R18 6 1
      232 SETTABLEKS                       R18 R10 K48 ["modelRbxmUrl"]
      234 GETUPVAL                         R19 4
      235 CALL                             R19 0 1
      236 JUMPIFNOT                        R19 ; [+9]
      237 GETTABLEKS                       R19 R2 K49 ["startPreloadInsertAsync"]
      239 MOVE                             R20 R10
      240 GETTABLEKS                       R21 R9 K50 ["publishAssetAsync"]
      242 GETTABLEKS                       R22 R9 K51 ["loadAssetAsync"]
      244 MOVE                             R23 R17
      245 CALL                             R19 4 0
      246 GETTABLEKS                       R19 R1 K30 ["meshGen"]
      248 GETTABLEKS                       R19 R19 K52 ["loadModelFromUrlAsync"]
      250 MOVE                             R20 R18
      251 CALL                             R19 1 1
      252 GETTABLEKS                       R21 R11 K53 ["Name"]
      254 LOADK                            R22 K54 [" (Textured)"]
      255 CONCAT                           R20 R21 R22
      256 SETTABLEKS                       R20 R19 K53 ["Name"]
      258 SETTABLEKS                       R19 R10 K55 ["previewAssets"]
      260 MOVE                             R20 R3
      261 JUMPIFNOT                        R20 ; [+2]
      262 GETTABLEKS                       R20 R3 K56 ["setPreviewImage"]
      264 JUMPIFNOT                        R20 ; [+8]
      265 GETTABLEKS                       R21 R1 K57 ["preview"]
      267 GETTABLEKS                       R21 R21 K58 ["capturePreviewImages"]
      269 MOVE                             R22 R19
      270 MOVE                             R23 R20
      271 GETUPVAL                         R24 5
      272 CALL                             R21 3 0
      273 LOADNIL                          R21
      274 SETTABLEKS                       R21 R10 K15 ["generationThread"]
      276 DUPTABLE                         R21 K59 [{"generationId", "modelRbxmUrl"}]
      277 SETTABLEKS                       R17 R21 K42 ["generationId"]
      279 SETTABLEKS                       R18 R21 K48 ["modelRbxmUrl"]
      281 RETURN                           R21 1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["cancelGenerationSession"]
        2 GETTABLEKS                       R3 R0 K1 ["requestId"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolveInsertAssetAsync"]
        3 MOVE                             R4 R0
        4 GETTABLEKS                       R5 R1 K1 ["publishAssetAsync"]
        6 GETTABLEKS                       R6 R1 K2 ["loadAssetAsync"]
        8 MOVE                             R7 R2
        9 CALL                             R3 4 -1
       10 RETURN                           R3 -1

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isMultiMeshSource"]
        3 JUMPIFNOT                        R2 ; [+77]
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 LOADB                            R7 0
        9 SETTABLEKS                       R7 R6 K1 ["Archivable"]
       11 NAMECALL                         R7 R6 K2 ["GetDescendants"]
       13 CALL                             R7 1 3
       14 FORGPREP                         R7
       15 LOADB                            R12 0
       16 SETTABLEKS                       R12 R11 K1 ["Archivable"]
       18 FORGLOOP                         R7 2 ; [-4]
       20 FORGLOOP                         R2 2 ; [-13]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K3 ["collectFlattenedParts"]
       25 MOVE                             R3 R0
       26 CALL                             R2 1 1
       27 LENGTH                           R5 R2
       28 LOADN                            R6 0
       29 JUMPIFLT                         R6 R5 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       35 LOADK                            R5 K4 ["No parts returned when loading textured model asset"]
       36 GETIMPORT                        R3 K6 [assert]
       38 CALL                             R3 2 0
       39 GETIMPORT                        R3 K9 [Instance.new]
       41 LOADK                            R4 K10 ["Model"]
       42 CALL                             R3 1 1
       43 MOVE                             R4 R2
       44 LOADNIL                          R5
       45 LOADNIL                          R6
       46 FORGPREP                         R4
       47 LOADB                            R9 1
       48 SETTABLEKS                       R9 R8 K1 ["Archivable"]
       50 NAMECALL                         R9 R8 K2 ["GetDescendants"]
       52 CALL                             R9 1 3
       53 FORGPREP                         R9
       54 LOADB                            R14 1
       55 SETTABLEKS                       R14 R13 K1 ["Archivable"]
       57 FORGLOOP                         R9 2 ; [-4]
       59 GETUPVAL                         R9 2
       60 MOVE                             R10 R8
       61 LOADB                            R11 1
       62 CALL                             R9 2 0
       63 SETTABLEKS                       R3 R8 K11 ["Parent"]
       65 FORGLOOP                         R4 2 ; [-19]
       67 MOVE                             R4 R0
       68 LOADNIL                          R5
       69 LOADNIL                          R6
       70 FORGPREP                         R4
       71 GETTABLEKS                       R9 R8 K11 ["Parent"]
       73 JUMPIFNOTEQKNIL                  R9 ; [+4]
       75 NAMECALL                         R9 R8 K12 ["Destroy"]
       77 CALL                             R9 1 0
       78 FORGLOOP                         R4 2 ; [-8]
       80 RETURN                           R3 1
       81 GETUPVAL                         R2 1
       82 GETTABLEKS                       R2 R2 K3 ["collectFlattenedParts"]
       84 MOVE                             R3 R0
       85 CALL                             R2 1 1
       86 LENGTH                           R5 R2
       87 JUMPIFEQKN                       R5 K13 [1] ; [+2]
       89 LOADB                            R4 0 +1
       90 LOADB                            R4 1
       91 LOADK                            R6 K14 ["Expected exactly one part when loading textured model asset, got %*"]
       92 LENGTH                           R8 R2
       93 NAMECALL                         R6 R6 K15 ["format"]
       95 CALL                             R6 2 1
       96 MOVE                             R5 R6
       97 FASTCALL2                        ASSERT R4 R5 ; [+3]
       99 GETIMPORT                        R3 K6 [assert]
      101 CALL                             R3 2 0
      102 GETUPVAL                         R3 1
      103 GETTABLEKS                       R3 R3 K16 ["resolveSingleMeshPart"]
      105 GETTABLEN                        R4 R2 1
      106 CALL                             R3 1 1
      107 FASTCALL2K                       ASSERT R3 K17 ; [+5]
      109 MOVE                             R5 R3
      110 LOADK                            R6 K17 ["Textured model asset root is not a MeshPart"]
      111 GETIMPORT                        R4 K6 [assert]
      113 CALL                             R4 2 0
      114 GETUPVAL                         R4 0
      115 GETTABLEKS                       R4 R4 K18 ["sourceExportScale"]
      117 JUMPIFNOT                        R4 ; [+7]
      118 JUMPIFEQKN                       R4 K13 [1] ; [+6]
      120 GETTABLEKS                       R5 R3 K19 ["Size"]
      122 DIV                              R5 R5 R4
      123 SETTABLEKS                       R5 R3 K19 ["Size"]
      125 RETURN                           R3 1

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["sourcePivotCFrame"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["isMultiMeshSource"]
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["translateAssetBy"]
       11 MOVE                             R3 R0
       12 GETTABLEKS                       R4 R1 K0 ["sourcePivotCFrame"]
       14 GETTABLEKS                       R4 R4 K3 ["Position"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R4 R1 K0 ["sourcePivotCFrame"]
       20 NAMECALL                         R2 R0 K4 ["PivotTo"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isMultiMeshSource"]
        3 JUMPIF                           R3 ; [+8]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["placeAssetNextToSource"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 0
       11 RETURN                           R0 0
       12 JUMPIFNOT                        R1 ; [+5]
       13 LOADK                            R5 K2 ["PVInstance"]
       14 NAMECALL                         R3 R0 K3 ["IsA"]
       16 CALL                             R3 2 1
       17 JUMPIF                           R3 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["computeBesideSourceOffsetX"]
       22 MOVE                             R4 R0
       23 MOVE                             R5 R2
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K5 ["translateAssetBy"]
       28 MOVE                             R5 R0
       29 GETTABLEKS                       R7 R1 K6 ["Position"]
       31 LOADN                            R10 0
       32 LOADN                            R11 0
       33 FASTCALL3                        VECTOR R3 R10 R11
       35 MOVE                             R9 R3
       36 GETIMPORT                        R8 K9 [Vector3.new]
       38 CALL                             R8 3 1
       39 ADD                              R6 R7 R8
       40 CALL                             R4 2 0
       41 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R4 R2 K0 ["getGenerationSession"]
        2 GETTABLEKS                       R5 R0 K1 ["requestId"]
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["insertGeneratedModelAsync"]
        8 MOVE                             R6 R0
        9 MOVE                             R7 R1
       10 MOVE                             R8 R2
       11 DUPTABLE                         R9 K18 [{["requireService"], ["suffix"] = " (Textured)", ["tagKind"] = "TexturedMesh", ["generationType"], ["recordingLabel"] = "Insert AI Textured Model", ["opName"] = "insertTexturedModelAsync", ["resolveInsertAsync"], ["computeSourcePivot"], ["assembleResult"], ["applyReplaceTransform"], ["placeBesideSource"]}]
       12 GETUPVAL                         R10 1
       13 SETTABLEKS                       R10 R9 K3 ["requireService"]
       15 GETUPVAL                         R10 2
       16 GETTABLEKS                       R10 R10 K19 ["Enums"]
       18 GETTABLEKS                       R10 R10 K20 ["GenerationType"]
       20 GETTABLEKS                       R10 R10 K21 ["TextureGen"]
       22 SETTABLEKS                       R10 R9 K8 ["generationType"]
       24 GETUPVAL                         R11 3
       25 CALL                             R11 0 1
       26 JUMPIFNOT                        R11 ; [+3]
       27 NEWCLOSURE                       R10 P0
       28 CAPTURE                          VAL R2
       29 JUMP                             ; [+1]
       30 LOADNIL                          R10
       31 SETTABLEKS                       R10 R9 K13 ["resolveInsertAsync"]
       33 DUPCLOSURE                       R10 K22 [PROTO_8]
       34 CAPTURE                          UPVAL U4
       35 SETTABLEKS                       R10 R9 K14 ["computeSourcePivot"]
       37 NEWCLOSURE                       R10 P2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U5
       41 SETTABLEKS                       R10 R9 K15 ["assembleResult"]
       43 NEWCLOSURE                       R10 P3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          UPVAL U0
       46 SETTABLEKS                       R10 R9 K16 ["applyReplaceTransform"]
       48 NEWCLOSURE                       R10 P4
       49 CAPTURE                          VAL R4
       50 CAPTURE                          UPVAL U0
       51 SETTABLEKS                       R10 R9 K17 ["placeBesideSource"]
       53 MOVE                             R10 R3
       54 CALL                             R5 5 0
       55 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["revertInsertedModelAsync"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 DUPTABLE                         R7 K5 [{["recordingLabel"] = "Revert AI Textured Model", ["opName"] = "revertInsertAsync"}]
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["preview"]
        3 GETTABLEKS                       R0 R0 K1 ["captureSinglePreviewImageAsync"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["SEED_IMAGE_PREVIEW_AZIMUTH"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["SEED_IMAGE_PREVIEW_ELEVATION"]
       12 CALL                             R0 3 -1
       13 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K2 [{[1] = "png"}]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_16:
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
       21 CAPTURE                          UPVAL U1
       22 CALL                             R3 1 2
       23 JUMPIFNOT                        R3 ; [+9]
       24 FASTCALL1                        TYPEOF R4 ; [+3]
       25 MOVE                             R6 R4
       26 GETIMPORT                        R5 K7 [typeof]
       28 CALL                             R5 1 1
       29 JUMPIFNOTEQKS                    R5 K8 ["string"] ; [+3]
       31 JUMPIFNOTEQKS                    R4 K9 [""] ; [+3]
       33 LOADNIL                          R5
       34 RETURN                           R5 1
       35 GETTABLEKS                       R5 R1 K10 ["preview"]
       37 GETTABLEKS                       R5 R5 K11 ["getImageDataBase64Async"]
       39 JUMPIF                           R5 ; [+6]
       40 GETIMPORT                        R6 K13 [warn]
       42 LOADK                            R7 K14 ["[TextureGen] preview.getImageDataBase64Async unavailable; cannot produce preview image bytes"]
       43 CALL                             R6 1 0
       44 LOADNIL                          R6
       45 RETURN                           R6 1
       46 GETIMPORT                        R6 K5 [pcall]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R4
       51 CALL                             R6 1 2
       52 JUMPIFNOT                        R6 ; [+9]
       53 FASTCALL1                        TYPEOF R7 ; [+3]
       54 MOVE                             R9 R7
       55 GETIMPORT                        R8 K7 [typeof]
       57 CALL                             R8 1 1
       58 JUMPIFNOTEQKS                    R8 K8 ["string"] ; [+3]
       60 JUMPIFNOTEQKS                    R7 K9 [""] ; [+3]
       62 LOADNIL                          R8
       63 RETURN                           R8 1
       64 DUPTABLE                         R8 K18 [{["imageBase64"], ["mimeType"] = "image/png"}]
       65 SETTABLEKS                       R7 R8 K15 ["imageBase64"]
       67 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Gen3dTypes"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["GenerationSessions"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K9 ["GenerationUtils"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K10 ["HostSurface"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K11 ["PreviewCarousel"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R0 K12 ["Selection"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETIMPORT                        R9 K1 [script]
       46 GETTABLEKS                       R9 R9 K13 ["Parent"]
       48 GETTABLEKS                       R9 R9 K14 ["TextureGenStrings"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K5 [require]
       53 GETTABLEKS                       R10 R0 K15 ["Flags"]
       55 GETTABLEKS                       R10 R10 K16 ["getFFlagGen3dExportMeshAtOrigin"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R0 K15 ["Flags"]
       62 GETTABLEKS                       R11 R11 K17 ["getFFlagGen3dPreloadInsertAsset"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R12 R0 K15 ["Flags"]
       69 GETTABLEKS                       R12 R12 K18 ["getFFlagGen3dTextureGenMultiMeshExport"]
       71 CALL                             R11 1 1
       72 NEWTABLE                         R12 8 0
       74 GETTABLEKS                       R13 R6 K19 ["VIEW_ANGLES"]
       76 GETTABLEKS                       R14 R4 K20 ["makeTranslator"]
       78 LOADK                            R15 K21 ["TextureGen"]
       79 MOVE                             R16 R8
       80 CALL                             R14 2 1
       81 DUPCLOSURE                       R15 K22 [PROTO_0]
       82 CAPTURE                          VAL R14
       83 DUPCLOSURE                       R16 K23 [PROTO_1]
       84 DUPCLOSURE                       R17 K24 [PROTO_2]
       85 DUPCLOSURE                       R18 K25 [PROTO_5]
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R13
       92 SETTABLEKS                       R18 R12 K26 ["generateTextureAsync"]
       94 DUPCLOSURE                       R18 K27 [PROTO_6]
       95 SETTABLEKS                       R18 R12 K28 ["cancelGenerationAsync"]
       97 DUPCLOSURE                       R18 K29 [PROTO_12]
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R17
      104 SETTABLEKS                       R18 R12 K30 ["insertTexturedModelAsync"]
      106 DUPCLOSURE                       R18 K31 [PROTO_13]
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R18 R12 K32 ["revertInsertAsync"]
      110 DUPCLOSURE                       R18 K33 [PROTO_16]
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R1
      113 SETTABLEKS                       R18 R12 K34 ["captureSourceInstanceImageAsync"]
      115 RETURN                           R12 1
