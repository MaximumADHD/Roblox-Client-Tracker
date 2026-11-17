PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["translate"]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K1 ["SegmentMesh"]
        5 MOVE                             R5 R1
        6 GETUPVAL                         R8 1
        7 GETTABLE                         R7 R8 R1
        8 OR                               R6 R7 R1
        9 CALL                             R2 4 -1
       10 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 LOADK                            R3 K0 ["MeshPart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 LOADK                            R3 K2 ["Model"]
        7 NAMECALL                         R1 R0 K1 ["IsA"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+2]
       11 LOADNIL                          R1
       12 RETURN                           R1 1
       13 LOADNIL                          R1
       14 NAMECALL                         R2 R0 K3 ["GetDescendants"]
       16 CALL                             R2 1 3
       17 FORGPREP                         R2
       18 LOADK                            R9 K0 ["MeshPart"]
       19 NAMECALL                         R7 R6 K1 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+4]
       23 JUMPIFNOT                        R1 ; [+2]
       24 LOADNIL                          R7
       25 RETURN                           R7 1
       26 MOVE                             R1 R6
       27 FORGLOOP                         R2 2 ; [-10]
       29 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["resolveSingleMeshPart"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["segmentMesh"]
        2 MOVE                             R3 R1
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R0
        5 LOADK                            R6 K1 ["SegmentMeshServiceMissing"]
        6 CALL                             R4 2 -1
        7 FASTCALL                         ASSERT ; [+2]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 -1 0
       11 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 LOADK                            R3 K0 ["BasePart"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+9]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["CFrame"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["Position"]
       14 SUB                              R1 R2 R3
       15 SETTABLEKS                       R1 R0 K2 ["CFrame"]
       17 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["createNormalizedExportClone"]
        3 GETUPVAL                         R1 2
        4 LOADB                            R2 0
        5 LOADB                            R3 0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 4 1
       10 SETUPVAL                         R0 0
       11 GETUPVAL                         R0 4
       12 GETUPVAL                         R1 0
       13 JUMPIF                           R1 ; [+1]
       14 GETUPVAL                         R1 2
       15 LOADK                            R2 K1 ["Gen3d source mesh"]
       16 CALL                             R0 2 -1
       17 RETURN                           R0 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["modelRbxmUrl"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["requestId"]
        2 GETTABLEKS                       R5 R0 K1 ["partNames"]
        4 GETTABLEKS                       R6 R0 K2 ["selectedUniqueId"]
        6 MOVE                             R8 R6
        7 GETUPVAL                         R9 0
        8 MOVE                             R10 R1
        9 LOADK                            R11 K3 ["NoSelection"]
       10 CALL                             R9 2 -1
       11 FASTCALL                         ASSERT ; [+2]
       12 GETIMPORT                        R7 K5 [assert]
       14 CALL                             R7 -1 0
       15 LENGTH                           R9 R5
       16 LOADN                            R10 0
       17 JUMPIFLT                         R10 R9 ; [+2]
       19 LOADB                            R8 0 +1
       20 LOADB                            R8 1
       21 GETUPVAL                         R9 0
       22 MOVE                             R10 R1
       23 LOADK                            R11 K6 ["SegmentNoParts"]
       24 CALL                             R9 2 -1
       25 FASTCALL                         ASSERT ; [+2]
       26 GETIMPORT                        R7 K5 [assert]
       28 CALL                             R7 -1 0
       29 GETTABLEKS                       R7 R1 K7 ["segmentMesh"]
       31 MOVE                             R9 R7
       32 GETUPVAL                         R10 0
       33 MOVE                             R11 R1
       34 LOADK                            R12 K8 ["SegmentMeshServiceMissing"]
       35 CALL                             R10 2 -1
       36 FASTCALL                         ASSERT ; [+2]
       37 GETIMPORT                        R8 K5 [assert]
       39 CALL                             R8 -1 0
       40 GETTABLEKS                       R8 R2 K9 ["getGenerationSession"]
       42 MOVE                             R9 R4
       43 CALL                             R8 1 1
       44 GETTABLEKS                       R11 R8 K10 ["generationThread"]
       46 JUMPIFEQKNIL                     R11 ; [+2]
       48 LOADB                            R10 0 +1
       49 LOADB                            R10 1
       50 FASTCALL2K                       ASSERT R10 K11 ; [+4]
       52 LOADK                            R11 K11 ["Generation thread already exists for requestId"]
       53 GETIMPORT                        R9 K5 [assert]
       55 CALL                             R9 2 0
       56 GETIMPORT                        R9 K14 [coroutine.running]
       58 CALL                             R9 0 1
       59 SETTABLEKS                       R9 R8 K10 ["generationThread"]
       61 GETTABLEKS                       R9 R1 K15 ["instances"]
       63 GETTABLEKS                       R9 R9 K16 ["getInstanceFromUniqueId"]
       65 MOVE                             R10 R6
       66 CALL                             R9 1 1
       67 MOVE                             R11 R9
       68 GETUPVAL                         R12 0
       69 MOVE                             R13 R1
       70 LOADK                            R14 K3 ["NoSelection"]
       71 CALL                             R12 2 -1
       72 FASTCALL                         ASSERT ; [+2]
       73 GETIMPORT                        R10 K5 [assert]
       75 CALL                             R10 -1 0
       76 SETTABLEKS                       R9 R8 K17 ["sourceInstance"]
       78 GETUPVAL                         R11 1
       79 CALL                             R11 0 1
       80 JUMPIFNOT                        R11 ; [+6]
       81 GETUPVAL                         R10 2
       82 GETTABLEKS                       R10 R10 K18 ["resolveSingleMeshPart"]
       84 MOVE                             R11 R9
       85 CALL                             R10 1 1
       86 JUMP                             ; [+3]
       87 GETUPVAL                         R10 3
       88 MOVE                             R11 R9
       89 CALL                             R10 1 1
       90 MOVE                             R12 R10
       91 GETUPVAL                         R13 0
       92 MOVE                             R14 R1
       93 LOADK                            R15 K19 ["SegmentRequiresSingleMeshPart"]
       94 CALL                             R13 2 -1
       95 FASTCALL                         ASSERT ; [+2]
       96 GETIMPORT                        R11 K5 [assert]
       98 CALL                             R11 -1 0
       99 GETTABLEKS                       R11 R10 K20 ["CFrame"]
      101 SETTABLEKS                       R11 R8 K21 ["sourceMeshCFrame"]
      103 LOADNIL                          R11
      104 GETTABLEKS                       R12 R1 K22 ["meshGen"]
      106 GETTABLEKS                       R12 R12 K23 ["publishInstanceAsAssetAsync"]
      108 GETUPVAL                         R13 4
      109 CALL                             R13 0 1
      110 JUMPIFNOT                        R13 ; [+39]
      111 JUMPIFNOT                        R12 ; [+38]
      112 LOADNIL                          R13
      113 NEWCLOSURE                       R15 P0
      114 CAPTURE                          REF R13
      115 CAPTURE                          UPVAL U2
      116 CAPTURE                          VAL R10
      117 CAPTURE                          UPVAL U5
      118 CAPTURE                          VAL R12
      119 FASTPCALL                        pcall 1 ; [+2]
      120 GETIMPORT                        R14 K25 [pcall]
      122 CALL                             R14 1 2
      123 JUMPIFNOT                        R13 ; [+3]
      124 NAMECALL                         R16 R13 K26 ["Destroy"]
      126 CALL                             R16 1 0
      127 JUMPIFNOT                        R14 ; [+9]
      128 FASTCALL1                        TYPEOF R15 ; [+3]
      129 MOVE                             R17 R15
      130 GETIMPORT                        R16 K28 [typeof]
      132 CALL                             R16 1 1
      133 JUMPIFNOTEQKS                    R16 K29 ["number"] ; [+3]
      135 MOVE                             R11 R15
      136 JUMP                             ; [+12]
      137 GETIMPORT                        R16 K31 [warn]
      139 LOADK                            R17 K32 ["[SegmentMesh] asset publish failed, falling back to GLB export: %*"]
      140 FASTCALL1                        TOSTRING R15 ; [+3]
      141 MOVE                             R20 R15
      142 GETIMPORT                        R19 K34 [tostring]
      144 CALL                             R19 1 1
      145 NAMECALL                         R17 R17 K35 ["format"]
      147 CALL                             R17 2 1
      148 CALL                             R16 1 0
      149 CLOSEUPVALS                      R13
      150 LOADNIL                          R13
      151 JUMPIFNOTEQKNIL                  R11 ; [+31]
      153 GETUPVAL                         R14 2
      154 GETTABLEKS                       R14 R14 K36 ["exportMeshToGlbAsync"]
      156 MOVE                             R15 R10
      157 GETTABLEKS                       R16 R1 K22 ["meshGen"]
      159 GETTABLEKS                       R16 R16 K36 ["exportMeshToGlbAsync"]
      161 CALL                             R14 2 1
      162 MOVE                             R13 R14
      163 LOADB                            R15 0
      164 FASTCALL1                        TYPEOF R13 ; [+3]
      165 MOVE                             R17 R13
      166 GETIMPORT                        R16 K28 [typeof]
      168 CALL                             R16 1 1
      169 JUMPIFNOTEQKS                    R16 K37 ["string"] ; [+7]
      171 LENGTH                           R16 R13
      172 LOADN                            R17 0
      173 JUMPIFLT                         R17 R16 ; [+2]
      175 LOADB                            R15 0 +1
      176 LOADB                            R15 1
      177 FASTCALL2K                       ASSERT R15 K38 ; [+4]
      179 LOADK                            R16 K38 ["Failed to export source MeshPart to GLB"]
      180 GETIMPORT                        R14 K5 [assert]
      182 CALL                             R14 2 0
      183 GETTABLEKS                       R14 R7 K39 ["startAsync"]
      185 DUPTABLE                         R15 K43 [{"glb", "assetId", "partNames", "generateTexture"}]
      186 SETTABLEKS                       R13 R15 K40 ["glb"]
      188 SETTABLEKS                       R11 R15 K41 ["assetId"]
      190 SETTABLEKS                       R5 R15 K1 ["partNames"]
      192 GETTABLEKS                       R16 R0 K42 ["generateTexture"]
      194 SETTABLEKS                       R16 R15 K42 ["generateTexture"]
      196 CALL                             R14 1 1
      197 GETTABLEKS                       R15 R14 K44 ["segmentationId"]
      199 FASTCALL1                        TYPEOF R15 ; [+3]
      200 MOVE                             R19 R15
      201 GETIMPORT                        R18 K28 [typeof]
      203 CALL                             R18 1 1
      204 JUMPIFEQKS                       R18 K37 ["string"] ; [+2]
      206 LOADB                            R17 0 +1
      207 LOADB                            R17 1
      208 GETUPVAL                         R18 0
      209 MOVE                             R19 R1
      210 LOADK                            R20 K45 ["FailedToSegment"]
      211 CALL                             R18 2 -1
      212 FASTCALL                         ASSERT ; [+2]
      213 GETIMPORT                        R16 K5 [assert]
      215 CALL                             R16 -1 0
      216 SETTABLEKS                       R15 R8 K46 ["generationId"]
      218 GETUPVAL                         R16 2
      219 GETTABLEKS                       R16 R16 K47 ["pollForCompletedStatus"]
      221 GETTABLEKS                       R17 R7 K48 ["getStatusAsync"]
      223 MOVE                             R18 R15
      224 DUPCLOSURE                       R19 K49 [PROTO_7]
      225 NEWCLOSURE                       R20 P2
      226 CAPTURE                          UPVAL U0
      227 CAPTURE                          VAL R1
      228 LOADK                            R21 K45 ["FailedToSegment"]
      229 LOADK                            R22 K50 ["SegmentMesh"]
      230 CALL                             R16 6 1
      231 SETTABLEKS                       R16 R8 K51 ["modelRbxmUrl"]
      233 GETUPVAL                         R17 6
      234 CALL                             R17 0 1
      235 JUMPIFNOT                        R17 ; [+9]
      236 GETTABLEKS                       R17 R2 K52 ["startPreloadInsertAsync"]
      238 MOVE                             R18 R8
      239 GETTABLEKS                       R19 R7 K53 ["publishAssetAsync"]
      241 GETTABLEKS                       R20 R7 K54 ["loadAssetAsync"]
      243 MOVE                             R21 R15
      244 CALL                             R17 4 0
      245 GETTABLEKS                       R17 R1 K22 ["meshGen"]
      247 GETTABLEKS                       R17 R17 K55 ["loadModelFromUrlAsync"]
      249 MOVE                             R18 R16
      250 CALL                             R17 1 1
      251 GETTABLEKS                       R19 R9 K56 ["Name"]
      253 LOADK                            R20 K57 [" (Segmented)"]
      254 CONCAT                           R18 R19 R20
      255 SETTABLEKS                       R18 R17 K56 ["Name"]
      257 SETTABLEKS                       R17 R8 K58 ["previewAssets"]
      259 NAMECALL                         R19 R17 K59 ["GetChildren"]
      261 CALL                             R19 1 1
      262 LENGTH                           R18 R19
      263 MOVE                             R19 R3
      264 JUMPIFNOT                        R19 ; [+2]
      265 GETTABLEKS                       R19 R3 K60 ["setPreviewImage"]
      267 JUMPIFNOT                        R19 ; [+8]
      268 GETTABLEKS                       R20 R1 K61 ["preview"]
      270 GETTABLEKS                       R20 R20 K62 ["capturePreviewImages"]
      272 MOVE                             R21 R17
      273 MOVE                             R22 R19
      274 GETUPVAL                         R23 7
      275 CALL                             R20 3 0
      276 LOADNIL                          R20
      277 SETTABLEKS                       R20 R8 K10 ["generationThread"]
      279 DUPTABLE                         R20 K64 [{"generationId", "modelRbxmUrl", "childCount"}]
      280 SETTABLEKS                       R15 R20 K46 ["generationId"]
      282 SETTABLEKS                       R16 R20 K51 ["modelRbxmUrl"]
      284 SETTABLEKS                       R18 R20 K63 ["childCount"]
      286 RETURN                           R20 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R1 K0 ["cancelGenerationSession"]
        5 GETTABLEKS                       R3 R0 K1 ["requestId"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0
        9 GETTABLEKS                       R2 R1 K2 ["getGenerationSession"]
       11 GETTABLEKS                       R3 R0 K1 ["requestId"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K3 ["generationThread"]
       16 JUMPIFNOT                        R3 ; [+10]
       17 GETIMPORT                        R4 K6 [coroutine.status]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 1
       21 JUMPIFEQKS                       R4 K7 ["dead"] ; [+5]
       23 GETIMPORT                        R4 K10 [task.cancel]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 0
       27 LOADNIL                          R4
       28 SETTABLEKS                       R4 R2 K3 ["generationThread"]
       30 GETTABLEKS                       R4 R2 K11 ["previewAssets"]
       32 JUMPIFNOT                        R4 ; [+6]
       33 NAMECALL                         R5 R4 K12 ["Destroy"]
       35 CALL                             R5 1 0
       36 LOADNIL                          R5
       37 SETTABLEKS                       R5 R2 K11 ["previewAssets"]
       39 GETTABLEKS                       R5 R1 K13 ["clearGenerationSession"]
       41 GETTABLEKS                       R6 R0 K1 ["requestId"]
       43 CALL                             R5 1 0
       44 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+15]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K2 ["Name"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOT                        R1 ; [+10]
       10 NAMECALL                         R1 R0 K3 ["GetChildren"]
       12 CALL                             R1 1 3
       13 FORGPREP                         R1
       14 GETUPVAL                         R6 1
       15 MOVE                             R7 R5
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 ; [-4]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 2
       21 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       23 MOVE                             R3 R0
       24 GETIMPORT                        R1 K6 [table.insert]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R1
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 MOVE                             R8 R2
       11 MOVE                             R9 R7
       12 CALL                             R8 1 0
       13 FORGLOOP                         R3 2 ; [-4]
       15 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["collectFlattenedParts"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 2
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 RETURN                           R1 1

PROTO_14:
        0 SETTABLEKS                       R1 R0 K0 ["Archivable"]
        2 NAMECALL                         R2 R0 K1 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 SETTABLEKS                       R1 R6 K0 ["Archivable"]
        8 FORGLOOP                         R2 2 ; [-3]
       10 RETURN                           R0 0

PROTO_15:
        0 LOADK                            R5 K0 ["PVInstance"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+1]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["getLocalBoundingBoxSize"]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 LOADN                            R4 0
       13 JUMPIFNOT                        R2 ; [+12]
       14 JUMPIFNOT                        R3 ; [+3]
       15 GETTABLEKS                       R5 R3 K3 ["X"]
       17 JUMP                             ; [+2]
       18 GETTABLEKS                       R5 R2 K3 ["X"]
       20 GETTABLEKS                       R8 R2 K3 ["X"]
       22 DIVK                             R7 R8 K5 [2]
       23 DIVK                             R8 R5 K5 [2]
       24 ADD                              R6 R7 R8
       25 ADDK                             R4 R6 K4 [1]
       26 GETIMPORT                        R8 K8 [CFrame.new]
       28 MOVE                             R9 R4
       29 LOADN                            R10 0
       30 LOADN                            R11 0
       31 CALL                             R8 3 1
       32 MUL                              R7 R1 R8
       33 NAMECALL                         R5 R0 K9 ["PivotTo"]
       35 CALL                             R5 2 0
       36 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["placeAssetNextToSource"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R3 3 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 LOADB                            R7 0
        5 SETTABLEKS                       R7 R6 K0 ["Archivable"]
        7 NAMECALL                         R7 R6 K1 ["GetDescendants"]
        9 CALL                             R7 1 3
       10 FORGPREP                         R7
       11 LOADB                            R12 0
       12 SETTABLEKS                       R12 R11 K0 ["Archivable"]
       14 FORGLOOP                         R7 2 ; [-4]
       16 FORGLOOP                         R2 2 ; [-13]
       18 GETTABLEKS                       R3 R1 K2 ["cleanupWorldWrapper"]
       20 JUMPIFNOT                        R3 ; [+6]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["collectFlattenedParts"]
       24 MOVE                             R3 R0
       25 CALL                             R2 1 1
       26 JUMP                             ; [+1]
       27 MOVE                             R2 R0
       28 LENGTH                           R5 R2
       29 LOADN                            R6 0
       30 JUMPIFLT                         R6 R5 ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       36 LOADK                            R5 K4 ["No parts returned when loading segmented model asset"]
       37 GETIMPORT                        R3 K6 [assert]
       39 CALL                             R3 2 0
       40 GETIMPORT                        R3 K9 [Instance.new]
       42 LOADK                            R4 K10 ["Model"]
       43 CALL                             R3 1 1
       44 MOVE                             R4 R2
       45 LOADNIL                          R5
       46 LOADNIL                          R6
       47 FORGPREP                         R4
       48 LOADB                            R9 1
       49 SETTABLEKS                       R9 R8 K0 ["Archivable"]
       51 NAMECALL                         R9 R8 K1 ["GetDescendants"]
       53 CALL                             R9 1 3
       54 FORGPREP                         R9
       55 LOADB                            R14 1
       56 SETTABLEKS                       R14 R13 K0 ["Archivable"]
       58 FORGLOOP                         R9 2 ; [-4]
       60 SETTABLEKS                       R3 R8 K11 ["Parent"]
       62 FORGLOOP                         R4 2 ; [-15]
       64 MOVE                             R4 R0
       65 LOADNIL                          R5
       66 LOADNIL                          R6
       67 FORGPREP                         R4
       68 GETTABLEKS                       R9 R8 K11 ["Parent"]
       70 JUMPIFNOTEQKNIL                  R9 ; [+4]
       72 NAMECALL                         R9 R8 K12 ["Destroy"]
       74 CALL                             R9 1 0
       75 FORGLOOP                         R4 2 ; [-8]
       77 RETURN                           R3 1

PROTO_19:
        0 GETTABLEKS                       R2 R1 K0 ["sourcePivotCFrame"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R4 R1 K0 ["sourcePivotCFrame"]
        5 NAMECALL                         R2 R0 K1 ["PivotTo"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolveInsertAssetAsync"]
        3 MOVE                             R4 R0
        4 GETTABLEKS                       R5 R1 K1 ["publishAssetAsync"]
        6 GETTABLEKS                       R6 R1 K2 ["loadAssetAsync"]
        8 MOVE                             R7 R2
        9 CALL                             R3 4 -1
       10 RETURN                           R3 -1

PROTO_21:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+15]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["resolveInsertAssetAsync"]
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K1 ["publishAssetAsync"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K2 ["loadAssetAsync"]
       15 GETUPVAL                         R6 4
       16 CALL                             R2 4 2
       17 MOVE                             R0 R2
       18 MOVE                             R1 R3
       19 JUMP                             ; [+13]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K1 ["publishAssetAsync"]
       23 GETUPVAL                         R3 4
       24 CALL                             R2 1 1
       25 MOVE                             R0 R2
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R2 R2 K2 ["loadAssetAsync"]
       29 GETTABLEKS                       R3 R0 K3 ["assetId"]
       31 CALL                             R2 1 1
       32 MOVE                             R1 R2
       33 MOVE                             R2 R1
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 LOADB                            R7 0
       38 SETTABLEKS                       R7 R6 K4 ["Archivable"]
       40 NAMECALL                         R7 R6 K5 ["GetDescendants"]
       42 CALL                             R7 1 3
       43 FORGPREP                         R7
       44 LOADB                            R12 0
       45 SETTABLEKS                       R12 R11 K4 ["Archivable"]
       47 FORGLOOP                         R7 2 ; [-4]
       49 FORGLOOP                         R2 2 ; [-13]
       51 GETUPVAL                         R3 5
       52 GETTABLEKS                       R3 R3 K6 ["cleanupWorldWrapper"]
       54 JUMPIFNOT                        R3 ; [+15]
       55 GETUPVAL                         R4 6
       56 CALL                             R4 0 1
       57 JUMPIFNOT                        R4 ; [+7]
       58 GETUPVAL                         R4 7
       59 GETTABLEKS                       R4 R4 K7 ["collectFlattenedParts"]
       61 MOVE                             R5 R1
       62 CALL                             R4 1 1
       63 MOVE                             R2 R4
       64 JUMP                             ; [+6]
       65 GETUPVAL                         R4 8
       66 MOVE                             R5 R1
       67 CALL                             R4 1 1
       68 MOVE                             R2 R4
       69 JUMP                             ; [+1]
       70 MOVE                             R2 R1
       71 LENGTH                           R5 R2
       72 LOADN                            R6 0
       73 JUMPIFLT                         R6 R5 ; [+2]
       75 LOADB                            R4 0 +1
       76 LOADB                            R4 1
       77 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       79 LOADK                            R5 K8 ["No parts returned when loading segmented model asset"]
       80 GETIMPORT                        R3 K10 [assert]
       82 CALL                             R3 2 0
       83 GETIMPORT                        R3 K13 [Instance.new]
       85 LOADK                            R4 K14 ["Model"]
       86 CALL                             R3 1 1
       87 MOVE                             R4 R2
       88 LOADNIL                          R5
       89 LOADNIL                          R6
       90 FORGPREP                         R4
       91 LOADB                            R9 1
       92 SETTABLEKS                       R9 R8 K4 ["Archivable"]
       94 NAMECALL                         R9 R8 K5 ["GetDescendants"]
       96 CALL                             R9 1 3
       97 FORGPREP                         R9
       98 LOADB                            R14 1
       99 SETTABLEKS                       R14 R13 K4 ["Archivable"]
      101 FORGLOOP                         R9 2 ; [-4]
      103 SETTABLEKS                       R3 R8 K15 ["Parent"]
      105 FORGLOOP                         R4 2 ; [-15]
      107 MOVE                             R4 R1
      108 LOADNIL                          R5
      109 LOADNIL                          R6
      110 FORGPREP                         R4
      111 GETTABLEKS                       R9 R8 K15 ["Parent"]
      113 JUMPIFNOTEQKNIL                  R9 ; [+4]
      115 NAMECALL                         R9 R8 K16 ["Destroy"]
      117 CALL                             R9 1 0
      118 FORGLOOP                         R4 2 ; [-8]
      120 GETUPVAL                         R4 9
      121 JUMPIFNOT                        R4 ; [+3]
      122 GETUPVAL                         R4 9
      123 GETTABLEKS                       R4 R4 K17 ["processLoadedModel"]
      125 JUMPIFNOT                        R4 ; [+3]
      126 MOVE                             R5 R4
      127 MOVE                             R6 R3
      128 CALL                             R5 1 0
      129 GETUPVAL                         R5 5
      130 GETTABLEKS                       R5 R5 K18 ["replaceInPlace"]
      132 JUMPIFNOT                        R5 ; [+7]
      133 GETUPVAL                         R5 10
      134 JUMPIFNOT                        R5 ; [+5]
      135 GETUPVAL                         R7 10
      136 NAMECALL                         R5 R3 K19 ["PivotTo"]
      138 CALL                             R5 2 0
      139 JUMP                             ; [+22]
      140 GETUPVAL                         R5 5
      141 GETTABLEKS                       R5 R5 K18 ["replaceInPlace"]
      143 JUMPIF                           R5 ; [+18]
      144 GETUPVAL                         R5 10
      145 GETUPVAL                         R6 11
      146 GETUPVAL                         R7 6
      147 CALL                             R7 0 1
      148 JUMPIFNOT                        R7 ; [+8]
      149 GETUPVAL                         R7 7
      150 GETTABLEKS                       R7 R7 K20 ["placeAssetNextToSource"]
      152 MOVE                             R8 R3
      153 MOVE                             R9 R5
      154 MOVE                             R10 R6
      155 CALL                             R7 3 0
      156 JUMP                             ; [+5]
      157 GETUPVAL                         R7 12
      158 MOVE                             R8 R3
      159 MOVE                             R9 R5
      160 MOVE                             R10 R6
      161 CALL                             R7 3 0
      162 GETUPVAL                         R5 5
      163 GETTABLEKS                       R5 R5 K18 ["replaceInPlace"]
      165 JUMPIFNOT                        R5 ; [+10]
      166 GETUPVAL                         R5 13
      167 GETTABLEKS                       R5 R5 K21 ["Name"]
      169 SETTABLEKS                       R5 R3 K21 ["Name"]
      171 GETUPVAL                         R5 13
      172 LOADNIL                          R6
      173 SETTABLEKS                       R6 R5 K15 ["Parent"]
      175 JUMP                             ; [+7]
      176 GETUPVAL                         R6 13
      177 GETTABLEKS                       R6 R6 K21 ["Name"]
      179 LOADK                            R7 K22 [" (Segmented)"]
      180 CONCAT                           R5 R6 R7
      181 SETTABLEKS                       R5 R3 K21 ["Name"]
      183 GETUPVAL                         R5 14
      184 JUMPIF                           R5 ; [+2]
      185 GETIMPORT                        R5 K24 [workspace]
      187 SETTABLEKS                       R5 R3 K15 ["Parent"]
      189 GETUPVAL                         R7 15
      190 GETTABLEKS                       R7 R7 K25 ["getUniqueTag"]
      192 LOADK                            R8 K26 ["SegmentedMesh"]
      193 GETUPVAL                         R9 16
      194 CALL                             R7 2 -1
      195 NAMECALL                         R5 R3 K27 ["AddTag"]
      197 CALL                             R5 -1 0
      198 GETUPVAL                         R5 1
      199 GETTABLEKS                       R5 R5 K28 ["markAsAIGeneratedAsset"]
      201 MOVE                             R6 R3
      202 GETTABLEKS                       R7 R0 K29 ["generationId"]
      204 GETUPVAL                         R8 15
      205 GETTABLEKS                       R8 R8 K30 ["Enums"]
      207 GETTABLEKS                       R8 R8 K31 ["GenerationType"]
      209 GETTABLEKS                       R8 R8 K32 ["SegmentMesh"]
      211 CALL                             R5 3 0
      212 GETUPVAL                         R5 2
      213 SETTABLEKS                       R3 R5 K33 ["loadedModel"]
      215 GETUPVAL                         R5 17
      216 GETTABLEKS                       R5 R5 K34 ["selection"]
      218 GETTABLEKS                       R5 R5 K35 ["set"]
      220 NEWTABLE                         R6 0 1
      222 MOVE                             R7 R3
      223 SETLIST                          R6 R7 1 [1]
      225 CALL                             R5 1 0
      226 GETUPVAL                         R5 2
      227 GETTABLEKS                       R5 R5 K36 ["previewAssets"]
      229 JUMPIFNOT                        R5 ; [+7]
      230 NAMECALL                         R6 R5 K16 ["Destroy"]
      232 CALL                             R6 1 0
      233 GETUPVAL                         R6 2
      234 LOADNIL                          R7
      235 SETTABLEKS                       R7 R6 K36 ["previewAssets"]
      237 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["insertSegmentedModelAsync failed (requestId=%*, generationId=%*): %*\n%*"]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 GETIMPORT                        R7 K5 [debug.traceback]
        8 CALL                             R7 0 1
        9 NAMECALL                         R2 R2 K6 ["format"]
       11 CALL                             R2 5 1
       12 CALL                             R1 1 0
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K8 [tostring]
       17 CALL                             R1 1 1
       18 SETUPVAL                         R1 2
       19 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+42]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["insertGeneratedModelAsync"]
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 DUPTABLE                         R8 K15 [{["requireService"], ["suffix"] = " (Segmented)", ["tagKind"] = "SegmentedMesh", ["generationType"], ["recordingLabel"] = "Insert AI Segmented Model", ["opName"] = "insertSegmentedModelAsync", ["computeSourcePivot"], ["assembleResult"], ["applyReplaceTransform"], ["resolveInsertAsync"]}]
       10 GETUPVAL                         R9 2
       11 SETTABLEKS                       R9 R8 K1 ["requireService"]
       13 GETUPVAL                         R9 3
       14 GETTABLEKS                       R9 R9 K16 ["Enums"]
       16 GETTABLEKS                       R9 R9 K17 ["GenerationType"]
       18 GETTABLEKS                       R9 R9 K18 ["SegmentMesh"]
       20 SETTABLEKS                       R9 R8 K6 ["generationType"]
       22 DUPCLOSURE                       R9 K19 [PROTO_17]
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R9 R8 K11 ["computeSourcePivot"]
       26 DUPCLOSURE                       R9 K20 [PROTO_18]
       27 CAPTURE                          UPVAL U1
       28 SETTABLEKS                       R9 R8 K12 ["assembleResult"]
       30 DUPCLOSURE                       R9 K21 [PROTO_19]
       31 SETTABLEKS                       R9 R8 K13 ["applyReplaceTransform"]
       33 GETUPVAL                         R10 5
       34 CALL                             R10 0 1
       35 JUMPIFNOT                        R10 ; [+3]
       36 NEWCLOSURE                       R9 P3
       37 CAPTURE                          VAL R2
       38 JUMP                             ; [+1]
       39 LOADNIL                          R9
       40 SETTABLEKS                       R9 R8 K14 ["resolveInsertAsync"]
       42 MOVE                             R9 R3
       43 CALL                             R4 5 0
       44 RETURN                           R0 0
       45 GETTABLEKS                       R4 R0 K22 ["requestId"]
       47 GETTABLEKS                       R5 R2 K23 ["getGenerationSession"]
       49 MOVE                             R6 R4
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R6 R5 K24 ["generationId"]
       53 FASTCALL1                        TYPEOF R6 ; [+3]
       54 MOVE                             R10 R6
       55 GETIMPORT                        R9 K26 [typeof]
       57 CALL                             R9 1 1
       58 JUMPIFEQKS                       R9 K27 ["string"] ; [+2]
       60 LOADB                            R8 0 +1
       61 LOADB                            R8 1
       62 FASTCALL2K                       ASSERT R8 K28 ; [+4]
       64 LOADK                            R9 K28 ["segmentationId not found in session"]
       65 GETIMPORT                        R7 K30 [assert]
       67 CALL                             R7 2 0
       68 GETTABLEKS                       R7 R5 K31 ["sourceInstance"]
       70 FASTCALL2K                       ASSERT R7 K32 ; [+5]
       72 MOVE                             R9 R7
       73 LOADK                            R10 K32 ["Source instance not found in session"]
       74 GETIMPORT                        R8 K30 [assert]
       76 CALL                             R8 2 0
       77 GETTABLEKS                       R8 R1 K33 ["segmentMesh"]
       79 MOVE                             R10 R8
       80 GETUPVAL                         R11 6
       81 MOVE                             R12 R1
       82 LOADK                            R13 K34 ["SegmentMeshServiceMissing"]
       83 CALL                             R11 2 -1
       84 FASTCALL                         ASSERT ; [+2]
       85 GETIMPORT                        R9 K30 [assert]
       87 CALL                             R9 -1 0
       88 GETTABLEKS                       R9 R7 K35 ["Parent"]
       90 GETTABLEKS                       R11 R0 K36 ["useSourceMeshCFrameForPivot"]
       92 JUMPIFNOT                        R11 ; [+11]
       93 GETTABLEKS                       R11 R5 K37 ["sourceMeshCFrame"]
       95 JUMPIFNOT                        R11 ; [+8]
       96 GETIMPORT                        R10 K40 [CFrame.new]
       98 GETTABLEKS                       R11 R5 K37 ["sourceMeshCFrame"]
      100 GETTABLEKS                       R11 R11 K41 ["Position"]
      102 CALL                             R10 1 1
      103 JUMP                             ; [+10]
      104 LOADK                            R13 K42 ["PVInstance"]
      105 NAMECALL                         R11 R7 K43 ["IsA"]
      107 CALL                             R11 2 1
      108 JUMPIFNOT                        R11 ; [+4]
      109 NAMECALL                         R10 R7 K44 ["GetPivot"]
      111 CALL                             R10 1 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R10
      114 GETUPVAL                         R11 1
      115 GETTABLEKS                       R11 R11 K45 ["getLocalBoundingBoxSize"]
      117 MOVE                             R12 R7
      118 CALL                             R11 1 1
      119 GETTABLEKS                       R12 R1 K46 ["recording"]
      121 LOADB                            R13 0
      122 JUMPIFNOT                        R12 ; [+10]
      123 GETTABLEKS                       R14 R12 K47 ["startRecording"]
      125 MOVE                             R15 R4
      126 LOADK                            R16 K48 ["Insert AI Segmented Model %*"]
      127 MOVE                             R18 R4
      128 NAMECALL                         R16 R16 K49 ["format"]
      130 CALL                             R16 2 1
      131 CALL                             R14 2 1
      132 MOVE                             R13 R14
      133 LOADNIL                          R14
      134 NEWCLOSURE                       R16 P4
      135 CAPTURE                          UPVAL U5
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R0
      141 CAPTURE                          UPVAL U0
      142 CAPTURE                          UPVAL U1
      143 CAPTURE                          UPVAL U7
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R11
      147 CAPTURE                          UPVAL U8
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R9
      150 CAPTURE                          UPVAL U3
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R1
      153 NEWCLOSURE                       R17 P5
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R6
      156 CAPTURE                          REF R14
      157 FASTPCALL                        xpcall 2 ; [+2]
      158 GETIMPORT                        R15 K51 [xpcall]
      160 CALL                             R15 2 0
      161 JUMPIFNOT                        R12 ; [+5]
      162 JUMPIFNOT                        R13 ; [+4]
      163 GETTABLEKS                       R15 R12 K52 ["endRecording"]
      165 MOVE                             R16 R4
      166 CALL                             R15 1 0
      167 JUMPIFEQKNIL                     R14 ; [+6]
      169 GETIMPORT                        R15 K54 [error]
      171 MOVE                             R16 R14
      172 LOADN                            R17 0
      173 CALL                             R15 2 0
      174 CLOSEUPVALS                      R14
      175 RETURN                           R0 0

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
       34 GETIMPORT                        R7 K1 [script]
       36 GETTABLEKS                       R7 R7 K11 ["Parent"]
       38 GETTABLEKS                       R7 R7 K12 ["SegmentMeshStrings"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K13 ["Flags"]
       45 GETTABLEKS                       R8 R8 K14 ["getFFlagGen3dExportMeshAtOrigin"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K13 ["Flags"]
       52 GETTABLEKS                       R9 R9 K15 ["getFFlagGen3dPreloadInsertAsset"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K13 ["Flags"]
       59 GETTABLEKS                       R10 R10 K16 ["getFFlagGen3dSegmentMeshAssetIdUpload"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K5 [require]
       64 GETTABLEKS                       R11 R0 K13 ["Flags"]
       66 GETTABLEKS                       R11 R11 K17 ["getFFlagSegmentMeshSharedGenerationHelpers"]
       68 CALL                             R10 1 1
       69 NEWTABLE                         R11 4 0
       71 GETTABLEKS                       R12 R5 K18 ["VIEW_ANGLES"]
       73 DUPCLOSURE                       R13 K19 [PROTO_0]
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R6
       76 GETTABLEKS                       R14 R3 K20 ["makeTranslator"]
       78 LOADK                            R15 K21 ["SegmentMesh"]
       79 MOVE                             R16 R6
       80 CALL                             R14 2 1
       81 DUPCLOSURE                       R15 K22 [PROTO_1]
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R13
       85 DUPCLOSURE                       R16 K23 [PROTO_2]
       86 DUPCLOSURE                       R17 K24 [PROTO_3]
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R16
       90 DUPCLOSURE                       R18 K25 [PROTO_4]
       91 CAPTURE                          VAL R15
       92 DUPCLOSURE                       R19 K26 [PROTO_9]
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R16
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R12
      101 SETTABLEKS                       R19 R11 K27 ["generateSegmentMeshAsync"]
      103 DUPCLOSURE                       R19 K28 [PROTO_10]
      104 CAPTURE                          VAL R10
      105 SETTABLEKS                       R19 R11 K29 ["cancelSegmentationAsync"]
      107 NEWTABLE                         R19 2 0
      109 LOADB                            R20 1
      110 SETTABLEKS                       R20 R19 K30 ["Roblox Generated Object"]
      112 LOADB                            R20 1
      113 SETTABLEKS                       R20 R19 K31 ["world"]
      115 DUPCLOSURE                       R20 K32 [PROTO_12]
      116 CAPTURE                          VAL R19
      117 DUPCLOSURE                       R21 K33 [PROTO_13]
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R20
      121 DUPCLOSURE                       R22 K34 [PROTO_14]
      122 DUPCLOSURE                       R23 K35 [PROTO_15]
      123 CAPTURE                          VAL R3
      124 DUPCLOSURE                       R24 K36 [PROTO_16]
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R23
      128 DUPCLOSURE                       R25 K37 [PROTO_23]
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R20
      137 CAPTURE                          VAL R23
      138 SETTABLEKS                       R25 R11 K38 ["insertSegmentedModelAsync"]
      140 RETURN                           R11 1
