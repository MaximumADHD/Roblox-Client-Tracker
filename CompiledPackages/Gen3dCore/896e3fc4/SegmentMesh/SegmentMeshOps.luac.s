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
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_6:
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
       29 GETTABLEKS                       R8 R1 K7 ["segmentMesh"]
       31 MOVE                             R10 R8
       32 GETUPVAL                         R11 0
       33 MOVE                             R12 R1
       34 LOADK                            R13 K8 ["SegmentMeshServiceMissing"]
       35 CALL                             R11 2 -1
       36 FASTCALL                         ASSERT ; [+2]
       37 GETIMPORT                        R9 K5 [assert]
       39 CALL                             R9 -1 0
       40 MOVE                             R7 R8
       41 GETTABLEKS                       R8 R2 K9 ["getGenerationSession"]
       43 MOVE                             R9 R4
       44 CALL                             R8 1 1
       45 GETTABLEKS                       R11 R8 K10 ["generationThread"]
       47 JUMPIFEQKNIL                     R11 ; [+2]
       49 LOADB                            R10 0 +1
       50 LOADB                            R10 1
       51 FASTCALL2K                       ASSERT R10 K11 ; [+4]
       53 LOADK                            R11 K11 ["Generation thread already exists for requestId"]
       54 GETIMPORT                        R9 K5 [assert]
       56 CALL                             R9 2 0
       57 GETIMPORT                        R9 K14 [coroutine.running]
       59 CALL                             R9 0 1
       60 SETTABLEKS                       R9 R8 K10 ["generationThread"]
       62 GETTABLEKS                       R9 R1 K15 ["instances"]
       64 GETTABLEKS                       R9 R9 K16 ["getInstanceFromUniqueId"]
       66 MOVE                             R10 R6
       67 CALL                             R9 1 1
       68 MOVE                             R11 R9
       69 GETUPVAL                         R12 0
       70 MOVE                             R13 R1
       71 LOADK                            R14 K3 ["NoSelection"]
       72 CALL                             R12 2 -1
       73 FASTCALL                         ASSERT ; [+2]
       74 GETIMPORT                        R10 K5 [assert]
       76 CALL                             R10 -1 0
       77 SETTABLEKS                       R9 R8 K17 ["sourceInstance"]
       79 GETUPVAL                         R11 1
       80 CALL                             R11 0 1
       81 JUMPIFNOT                        R11 ; [+6]
       82 GETUPVAL                         R10 2
       83 GETTABLEKS                       R10 R10 K18 ["resolveSingleMeshPart"]
       85 MOVE                             R11 R9
       86 CALL                             R10 1 1
       87 JUMP                             ; [+3]
       88 GETUPVAL                         R10 3
       89 MOVE                             R11 R9
       90 CALL                             R10 1 1
       91 MOVE                             R12 R10
       92 GETUPVAL                         R13 0
       93 MOVE                             R14 R1
       94 LOADK                            R15 K19 ["SegmentRequiresSingleMeshPart"]
       95 CALL                             R13 2 -1
       96 FASTCALL                         ASSERT ; [+2]
       97 GETIMPORT                        R11 K5 [assert]
       99 CALL                             R11 -1 0
      100 GETTABLEKS                       R11 R10 K20 ["CFrame"]
      102 SETTABLEKS                       R11 R8 K21 ["sourceMeshCFrame"]
      104 GETUPVAL                         R11 2
      105 GETTABLEKS                       R11 R11 K22 ["exportMeshToGlbAsync"]
      107 MOVE                             R12 R10
      108 GETTABLEKS                       R13 R1 K23 ["meshGen"]
      110 GETTABLEKS                       R13 R13 K22 ["exportMeshToGlbAsync"]
      112 CALL                             R11 2 1
      113 LOADB                            R13 0
      114 FASTCALL1                        TYPEOF R11 ; [+3]
      115 MOVE                             R15 R11
      116 GETIMPORT                        R14 K25 [typeof]
      118 CALL                             R14 1 1
      119 JUMPIFNOTEQKS                    R14 K26 ["string"] ; [+7]
      121 LENGTH                           R14 R11
      122 LOADN                            R15 0
      123 JUMPIFLT                         R15 R14 ; [+2]
      125 LOADB                            R13 0 +1
      126 LOADB                            R13 1
      127 FASTCALL2K                       ASSERT R13 K27 ; [+4]
      129 LOADK                            R14 K27 ["Failed to export source MeshPart to GLB"]
      130 GETIMPORT                        R12 K5 [assert]
      132 CALL                             R12 2 0
      133 GETTABLEKS                       R12 R7 K28 ["startAsync"]
      135 DUPTABLE                         R13 K31 [{"glb", "partNames", "generateTexture"}]
      136 SETTABLEKS                       R11 R13 K29 ["glb"]
      138 SETTABLEKS                       R5 R13 K1 ["partNames"]
      140 GETTABLEKS                       R14 R0 K30 ["generateTexture"]
      142 SETTABLEKS                       R14 R13 K30 ["generateTexture"]
      144 CALL                             R12 1 1
      145 GETTABLEKS                       R13 R12 K32 ["segmentationId"]
      147 FASTCALL1                        TYPEOF R13 ; [+3]
      148 MOVE                             R17 R13
      149 GETIMPORT                        R16 K25 [typeof]
      151 CALL                             R16 1 1
      152 JUMPIFEQKS                       R16 K26 ["string"] ; [+2]
      154 LOADB                            R15 0 +1
      155 LOADB                            R15 1
      156 FASTCALL2K                       ASSERT R15 K33 ; [+4]
      158 LOADK                            R16 K33 ["Missing segmentationId in startAsync response"]
      159 GETIMPORT                        R14 K5 [assert]
      161 CALL                             R14 2 0
      162 SETTABLEKS                       R13 R8 K34 ["generationId"]
      164 GETUPVAL                         R14 2
      165 GETTABLEKS                       R14 R14 K35 ["pollForCompletedStatus"]
      167 GETTABLEKS                       R15 R7 K36 ["getStatusAsync"]
      169 MOVE                             R16 R13
      170 NEWCLOSURE                       R17 P0
      171 CAPTURE                          UPVAL U0
      172 CAPTURE                          VAL R1
      173 LOADK                            R18 K37 ["FailedToSegment"]
      174 LOADK                            R19 K38 ["SegmentMesh"]
      175 CALL                             R14 5 1
      176 SETTABLEKS                       R14 R8 K39 ["modelRbxmUrl"]
      178 GETTABLEKS                       R15 R1 K23 ["meshGen"]
      180 GETTABLEKS                       R15 R15 K40 ["loadModelFromUrlAsync"]
      182 MOVE                             R16 R14
      183 CALL                             R15 1 1
      184 GETTABLEKS                       R17 R9 K41 ["Name"]
      186 LOADK                            R18 K42 [" (Segmented)"]
      187 CONCAT                           R16 R17 R18
      188 SETTABLEKS                       R16 R15 K41 ["Name"]
      190 SETTABLEKS                       R15 R8 K43 ["previewAssets"]
      192 NAMECALL                         R17 R15 K44 ["GetChildren"]
      194 CALL                             R17 1 1
      195 LENGTH                           R16 R17
      196 MOVE                             R17 R3
      197 JUMPIFNOT                        R17 ; [+2]
      198 GETTABLEKS                       R17 R3 K45 ["setPreviewImage"]
      200 JUMPIFNOT                        R17 ; [+8]
      201 GETTABLEKS                       R18 R1 K46 ["preview"]
      203 GETTABLEKS                       R18 R18 K47 ["capturePreviewImages"]
      205 MOVE                             R19 R15
      206 MOVE                             R20 R17
      207 GETUPVAL                         R21 4
      208 CALL                             R18 3 0
      209 LOADNIL                          R18
      210 SETTABLEKS                       R18 R8 K10 ["generationThread"]
      212 DUPTABLE                         R18 K49 [{"generationId", "modelRbxmUrl", "childCount"}]
      213 SETTABLEKS                       R13 R18 K34 ["generationId"]
      215 SETTABLEKS                       R14 R18 K39 ["modelRbxmUrl"]
      217 SETTABLEKS                       R16 R18 K48 ["childCount"]
      219 RETURN                           R18 1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 SETTABLEKS                       R1 R0 K0 ["Archivable"]
        2 NAMECALL                         R2 R0 K1 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 SETTABLEKS                       R1 R6 K0 ["Archivable"]
        8 FORGLOOP                         R2 2 ; [-3]
       10 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["sourcePivotCFrame"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R4 R1 K0 ["sourcePivotCFrame"]
        5 NAMECALL                         R2 R0 K1 ["PivotTo"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishAssetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["loadAssetAsync"]
        8 GETTABLEKS                       R2 R0 K2 ["assetId"]
       10 CALL                             R1 1 1
       11 MOVE                             R2 R1
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 LOADB                            R7 0
       16 SETTABLEKS                       R7 R6 K3 ["Archivable"]
       18 NAMECALL                         R7 R6 K4 ["GetDescendants"]
       20 CALL                             R7 1 3
       21 FORGPREP                         R7
       22 LOADB                            R12 0
       23 SETTABLEKS                       R12 R11 K3 ["Archivable"]
       25 FORGLOOP                         R7 2 ; [-4]
       27 FORGLOOP                         R2 2 ; [-13]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K5 ["cleanupWorldWrapper"]
       32 JUMPIFNOT                        R3 ; [+13]
       33 GETUPVAL                         R3 3
       34 CALL                             R3 0 1
       35 JUMPIFNOT                        R3 ; [+6]
       36 GETUPVAL                         R2 4
       37 GETTABLEKS                       R2 R2 K6 ["collectFlattenedParts"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 1
       41 JUMP                             ; [+5]
       42 GETUPVAL                         R2 5
       43 MOVE                             R3 R1
       44 CALL                             R2 1 1
       45 JUMP                             ; [+1]
       46 MOVE                             R2 R1
       47 LENGTH                           R5 R2
       48 LOADN                            R6 0
       49 JUMPIFLT                         R6 R5 ; [+2]
       51 LOADB                            R4 0 +1
       52 LOADB                            R4 1
       53 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       55 LOADK                            R5 K7 ["No parts returned when loading segmented model asset"]
       56 GETIMPORT                        R3 K9 [assert]
       58 CALL                             R3 2 0
       59 GETIMPORT                        R3 K12 [Instance.new]
       61 LOADK                            R4 K13 ["Model"]
       62 CALL                             R3 1 1
       63 MOVE                             R4 R2
       64 LOADNIL                          R5
       65 LOADNIL                          R6
       66 FORGPREP                         R4
       67 LOADB                            R9 1
       68 SETTABLEKS                       R9 R8 K3 ["Archivable"]
       70 NAMECALL                         R9 R8 K4 ["GetDescendants"]
       72 CALL                             R9 1 3
       73 FORGPREP                         R9
       74 LOADB                            R14 1
       75 SETTABLEKS                       R14 R13 K3 ["Archivable"]
       77 FORGLOOP                         R9 2 ; [-4]
       79 SETTABLEKS                       R3 R8 K14 ["Parent"]
       81 FORGLOOP                         R4 2 ; [-15]
       83 MOVE                             R4 R1
       84 LOADNIL                          R5
       85 LOADNIL                          R6
       86 FORGPREP                         R4
       87 GETTABLEKS                       R9 R8 K14 ["Parent"]
       89 JUMPIFNOTEQKNIL                  R9 ; [+4]
       91 NAMECALL                         R9 R8 K15 ["Destroy"]
       93 CALL                             R9 1 0
       94 FORGLOOP                         R4 2 ; [-8]
       96 GETUPVAL                         R4 6
       97 JUMPIFNOT                        R4 ; [+3]
       98 GETUPVAL                         R4 6
       99 GETTABLEKS                       R4 R4 K16 ["processLoadedModel"]
      101 JUMPIFNOT                        R4 ; [+3]
      102 MOVE                             R5 R4
      103 MOVE                             R6 R3
      104 CALL                             R5 1 0
      105 GETUPVAL                         R5 2
      106 GETTABLEKS                       R5 R5 K17 ["replaceInPlace"]
      108 JUMPIFNOT                        R5 ; [+7]
      109 GETUPVAL                         R5 7
      110 JUMPIFNOT                        R5 ; [+5]
      111 GETUPVAL                         R7 7
      112 NAMECALL                         R5 R3 K18 ["PivotTo"]
      114 CALL                             R5 2 0
      115 JUMP                             ; [+22]
      116 GETUPVAL                         R5 2
      117 GETTABLEKS                       R5 R5 K17 ["replaceInPlace"]
      119 JUMPIF                           R5 ; [+18]
      120 GETUPVAL                         R5 7
      121 GETUPVAL                         R6 8
      122 GETUPVAL                         R7 3
      123 CALL                             R7 0 1
      124 JUMPIFNOT                        R7 ; [+8]
      125 GETUPVAL                         R7 4
      126 GETTABLEKS                       R7 R7 K19 ["placeAssetNextToSource"]
      128 MOVE                             R8 R3
      129 MOVE                             R9 R5
      130 MOVE                             R10 R6
      131 CALL                             R7 3 0
      132 JUMP                             ; [+5]
      133 GETUPVAL                         R7 9
      134 MOVE                             R8 R3
      135 MOVE                             R9 R5
      136 MOVE                             R10 R6
      137 CALL                             R7 3 0
      138 GETUPVAL                         R5 2
      139 GETTABLEKS                       R5 R5 K17 ["replaceInPlace"]
      141 JUMPIFNOT                        R5 ; [+10]
      142 GETUPVAL                         R5 10
      143 GETTABLEKS                       R5 R5 K20 ["Name"]
      145 SETTABLEKS                       R5 R3 K20 ["Name"]
      147 GETUPVAL                         R5 10
      148 LOADNIL                          R6
      149 SETTABLEKS                       R6 R5 K14 ["Parent"]
      151 JUMP                             ; [+7]
      152 GETUPVAL                         R6 10
      153 GETTABLEKS                       R6 R6 K20 ["Name"]
      155 LOADK                            R7 K21 [" (Segmented)"]
      156 CONCAT                           R5 R6 R7
      157 SETTABLEKS                       R5 R3 K20 ["Name"]
      159 GETUPVAL                         R5 11
      160 JUMPIF                           R5 ; [+2]
      161 GETIMPORT                        R5 K23 [workspace]
      163 SETTABLEKS                       R5 R3 K14 ["Parent"]
      165 GETUPVAL                         R7 12
      166 GETTABLEKS                       R7 R7 K24 ["getUniqueTag"]
      168 LOADK                            R8 K25 ["SegmentedMesh"]
      169 GETUPVAL                         R9 13
      170 CALL                             R7 2 -1
      171 NAMECALL                         R5 R3 K26 ["AddTag"]
      173 CALL                             R5 -1 0
      174 GETUPVAL                         R5 14
      175 GETTABLEKS                       R5 R5 K27 ["markAsAIGeneratedAsset"]
      177 MOVE                             R6 R3
      178 GETTABLEKS                       R7 R0 K28 ["generationId"]
      180 GETUPVAL                         R8 12
      181 GETTABLEKS                       R8 R8 K29 ["Enums"]
      183 GETTABLEKS                       R8 R8 K30 ["GenerationType"]
      185 GETTABLEKS                       R8 R8 K31 ["SegmentMesh"]
      187 CALL                             R5 3 0
      188 GETUPVAL                         R5 15
      189 SETTABLEKS                       R3 R5 K32 ["loadedModel"]
      191 GETUPVAL                         R5 16
      192 GETTABLEKS                       R5 R5 K33 ["selection"]
      194 GETTABLEKS                       R5 R5 K34 ["set"]
      196 NEWTABLE                         R6 0 1
      198 MOVE                             R7 R3
      199 SETLIST                          R6 R7 1 [1]
      201 CALL                             R5 1 0
      202 GETUPVAL                         R5 15
      203 GETTABLEKS                       R5 R5 K35 ["previewAssets"]
      205 JUMPIFNOT                        R5 ; [+7]
      206 NAMECALL                         R6 R5 K15 ["Destroy"]
      208 CALL                             R6 1 0
      209 GETUPVAL                         R6 15
      210 LOADNIL                          R7
      211 SETTABLEKS                       R7 R6 K35 ["previewAssets"]
      213 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["insertSegmentedModelAsync failed (requestId=%*, generationId=%*): %*\n%*"]
        3 GETUPVAL                         R5 0
        4 GETUPVAL                         R6 1
        5 MOVE                             R7 R0
        6 GETIMPORT                        R8 K5 [debug.traceback]
        8 CALL                             R8 0 1
        9 NAMECALL                         R3 R3 K6 ["format"]
       11 CALL                             R3 5 1
       12 MOVE                             R2 R3
       13 CALL                             R1 1 0
       14 FASTCALL1                        TOSTRING R0 ; [+3]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K8 [tostring]
       18 CALL                             R1 1 1
       19 SETUPVAL                         R1 2
       20 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+33]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["insertGeneratedModelAsync"]
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 DUPTABLE                         R8 K14 [{["requireService"], ["suffix"] = " (Segmented)", ["tagKind"] = "SegmentedMesh", ["generationType"], ["recordingLabel"] = "Insert AI Segmented Model", ["opName"] = "insertSegmentedModelAsync", ["computeSourcePivot"], ["assembleResult"], ["applyReplaceTransform"]}]
       10 GETUPVAL                         R9 2
       11 SETTABLEKS                       R9 R8 K1 ["requireService"]
       13 GETUPVAL                         R9 3
       14 GETTABLEKS                       R9 R9 K15 ["Enums"]
       16 GETTABLEKS                       R9 R9 K16 ["GenerationType"]
       18 GETTABLEKS                       R9 R9 K17 ["SegmentMesh"]
       20 SETTABLEKS                       R9 R8 K6 ["generationType"]
       22 DUPCLOSURE                       R9 K18 [PROTO_14]
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R9 R8 K11 ["computeSourcePivot"]
       26 DUPCLOSURE                       R9 K19 [PROTO_15]
       27 CAPTURE                          UPVAL U1
       28 SETTABLEKS                       R9 R8 K12 ["assembleResult"]
       30 DUPCLOSURE                       R9 K20 [PROTO_16]
       31 SETTABLEKS                       R9 R8 K13 ["applyReplaceTransform"]
       33 MOVE                             R9 R3
       34 CALL                             R4 5 0
       35 RETURN                           R0 0
       36 GETTABLEKS                       R4 R0 K21 ["requestId"]
       38 GETTABLEKS                       R5 R2 K22 ["getGenerationSession"]
       40 MOVE                             R6 R4
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K23 ["generationId"]
       44 FASTCALL1                        TYPEOF R6 ; [+3]
       45 MOVE                             R10 R6
       46 GETIMPORT                        R9 K25 [typeof]
       48 CALL                             R9 1 1
       49 JUMPIFEQKS                       R9 K26 ["string"] ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 FASTCALL2K                       ASSERT R8 K27 ; [+4]
       55 LOADK                            R9 K27 ["segmentationId not found in session"]
       56 GETIMPORT                        R7 K29 [assert]
       58 CALL                             R7 2 0
       59 GETTABLEKS                       R7 R5 K30 ["sourceInstance"]
       61 FASTCALL2K                       ASSERT R7 K31 ; [+5]
       63 MOVE                             R9 R7
       64 LOADK                            R10 K31 ["Source instance not found in session"]
       65 GETIMPORT                        R8 K29 [assert]
       67 CALL                             R8 2 0
       68 GETTABLEKS                       R9 R1 K32 ["segmentMesh"]
       70 MOVE                             R11 R9
       71 GETUPVAL                         R12 5
       72 MOVE                             R13 R1
       73 LOADK                            R14 K33 ["SegmentMeshServiceMissing"]
       74 CALL                             R12 2 -1
       75 FASTCALL                         ASSERT ; [+2]
       76 GETIMPORT                        R10 K29 [assert]
       78 CALL                             R10 -1 0
       79 MOVE                             R8 R9
       80 GETTABLEKS                       R9 R7 K34 ["Parent"]
       82 GETTABLEKS                       R11 R0 K35 ["useSourceMeshCFrameForPivot"]
       84 JUMPIFNOT                        R11 ; [+11]
       85 GETTABLEKS                       R11 R5 K36 ["sourceMeshCFrame"]
       87 JUMPIFNOT                        R11 ; [+8]
       88 GETIMPORT                        R10 K39 [CFrame.new]
       90 GETTABLEKS                       R11 R5 K36 ["sourceMeshCFrame"]
       92 GETTABLEKS                       R11 R11 K40 ["Position"]
       94 CALL                             R10 1 1
       95 JUMP                             ; [+10]
       96 LOADK                            R13 K41 ["PVInstance"]
       97 NAMECALL                         R11 R7 K42 ["IsA"]
       99 CALL                             R11 2 1
      100 JUMPIFNOT                        R11 ; [+4]
      101 NAMECALL                         R10 R7 K43 ["GetPivot"]
      103 CALL                             R10 1 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R10
      106 GETUPVAL                         R11 1
      107 GETTABLEKS                       R11 R11 K44 ["getLocalBoundingBoxSize"]
      109 MOVE                             R12 R7
      110 CALL                             R11 1 1
      111 GETTABLEKS                       R12 R1 K45 ["recording"]
      113 LOADB                            R13 0
      114 JUMPIFNOT                        R12 ; [+11]
      115 GETTABLEKS                       R14 R12 K46 ["startRecording"]
      117 MOVE                             R15 R4
      118 LOADK                            R17 K47 ["Insert AI Segmented Model %*"]
      119 MOVE                             R19 R4
      120 NAMECALL                         R17 R17 K48 ["format"]
      122 CALL                             R17 2 1
      123 MOVE                             R16 R17
      124 CALL                             R14 2 1
      125 MOVE                             R13 R14
      126 LOADNIL                          R14
      127 GETIMPORT                        R15 K50 [xpcall]
      129 NEWCLOSURE                       R16 P3
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U0
      134 CAPTURE                          UPVAL U1
      135 CAPTURE                          UPVAL U6
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R11
      139 CAPTURE                          UPVAL U7
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R9
      142 CAPTURE                          UPVAL U3
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R1
      147 NEWCLOSURE                       R17 P4
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R6
      150 CAPTURE                          REF R14
      151 CALL                             R15 2 0
      152 JUMPIFNOT                        R12 ; [+5]
      153 JUMPIFNOT                        R13 ; [+4]
      154 GETTABLEKS                       R15 R12 K51 ["endRecording"]
      156 MOVE                             R16 R4
      157 CALL                             R15 1 0
      158 JUMPIFEQKNIL                     R14 ; [+6]
      160 GETIMPORT                        R15 K53 [error]
      162 MOVE                             R16 R14
      163 LOADN                            R17 0
      164 CALL                             R15 2 0
      165 CLOSEUPVALS                      R14
      166 RETURN                           R0 0

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
       52 GETTABLEKS                       R9 R9 K15 ["getFFlagSegmentMeshSharedGenerationHelpers"]
       54 CALL                             R8 1 1
       55 NEWTABLE                         R9 4 0
       57 GETTABLEKS                       R10 R5 K16 ["VIEW_ANGLES"]
       59 DUPCLOSURE                       R11 K17 [PROTO_0]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R6
       62 GETTABLEKS                       R12 R3 K18 ["makeTranslator"]
       64 LOADK                            R13 K19 ["SegmentMesh"]
       65 MOVE                             R14 R6
       66 CALL                             R12 2 1
       67 DUPCLOSURE                       R13 K20 [PROTO_1]
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R11
       71 DUPCLOSURE                       R14 K21 [PROTO_2]
       72 DUPCLOSURE                       R15 K22 [PROTO_3]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R14
       76 DUPCLOSURE                       R16 K23 [PROTO_4]
       77 CAPTURE                          VAL R13
       78 DUPCLOSURE                       R17 K24 [PROTO_6]
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R10
       84 SETTABLEKS                       R17 R9 K25 ["generateSegmentMeshAsync"]
       86 DUPCLOSURE                       R17 K26 [PROTO_7]
       87 CAPTURE                          VAL R8
       88 SETTABLEKS                       R17 R9 K27 ["cancelSegmentationAsync"]
       90 NEWTABLE                         R17 2 0
       92 LOADB                            R18 1
       93 SETTABLEKS                       R18 R17 K28 ["Roblox Generated Object"]
       95 LOADB                            R18 1
       96 SETTABLEKS                       R18 R17 K29 ["world"]
       98 DUPCLOSURE                       R18 K30 [PROTO_9]
       99 CAPTURE                          VAL R17
      100 DUPCLOSURE                       R19 K31 [PROTO_10]
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R18
      104 DUPCLOSURE                       R20 K32 [PROTO_11]
      105 DUPCLOSURE                       R21 K33 [PROTO_12]
      106 CAPTURE                          VAL R3
      107 DUPCLOSURE                       R22 K34 [PROTO_13]
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R21
      111 DUPCLOSURE                       R23 K35 [PROTO_19]
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R18
      119 CAPTURE                          VAL R21
      120 SETTABLEKS                       R23 R9 K36 ["insertSegmentedModelAsync"]
      122 RETURN                           R9 1
