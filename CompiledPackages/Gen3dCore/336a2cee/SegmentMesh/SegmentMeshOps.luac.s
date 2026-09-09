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
        0 GETTABLEKS                       R1 R0 K0 ["modelRbxmUrl"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_7:
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
      156 GETUPVAL                         R16 0
      157 MOVE                             R17 R1
      158 LOADK                            R18 K33 ["FailedToSegment"]
      159 CALL                             R16 2 -1
      160 FASTCALL                         ASSERT ; [+2]
      161 GETIMPORT                        R14 K5 [assert]
      163 CALL                             R14 -1 0
      164 SETTABLEKS                       R13 R8 K34 ["generationId"]
      166 GETUPVAL                         R14 2
      167 GETTABLEKS                       R14 R14 K35 ["pollForCompletedStatus"]
      169 GETTABLEKS                       R15 R7 K36 ["getStatusAsync"]
      171 MOVE                             R16 R13
      172 DUPCLOSURE                       R17 K37 [PROTO_5]
      173 NEWCLOSURE                       R18 P1
      174 CAPTURE                          UPVAL U0
      175 CAPTURE                          VAL R1
      176 LOADK                            R19 K33 ["FailedToSegment"]
      177 LOADK                            R20 K38 ["SegmentMesh"]
      178 CALL                             R14 6 1
      179 SETTABLEKS                       R14 R8 K39 ["modelRbxmUrl"]
      181 GETUPVAL                         R15 4
      182 CALL                             R15 0 1
      183 JUMPIFNOT                        R15 ; [+9]
      184 GETTABLEKS                       R15 R2 K40 ["startPreloadInsertAsync"]
      186 MOVE                             R16 R8
      187 GETTABLEKS                       R17 R7 K41 ["publishAssetAsync"]
      189 GETTABLEKS                       R18 R7 K42 ["loadAssetAsync"]
      191 MOVE                             R19 R13
      192 CALL                             R15 4 0
      193 GETTABLEKS                       R15 R1 K23 ["meshGen"]
      195 GETTABLEKS                       R15 R15 K43 ["loadModelFromUrlAsync"]
      197 MOVE                             R16 R14
      198 CALL                             R15 1 1
      199 GETTABLEKS                       R17 R9 K44 ["Name"]
      201 LOADK                            R18 K45 [" (Segmented)"]
      202 CONCAT                           R16 R17 R18
      203 SETTABLEKS                       R16 R15 K44 ["Name"]
      205 SETTABLEKS                       R15 R8 K46 ["previewAssets"]
      207 NAMECALL                         R17 R15 K47 ["GetChildren"]
      209 CALL                             R17 1 1
      210 LENGTH                           R16 R17
      211 MOVE                             R17 R3
      212 JUMPIFNOT                        R17 ; [+2]
      213 GETTABLEKS                       R17 R3 K48 ["setPreviewImage"]
      215 JUMPIFNOT                        R17 ; [+8]
      216 GETTABLEKS                       R18 R1 K49 ["preview"]
      218 GETTABLEKS                       R18 R18 K50 ["capturePreviewImages"]
      220 MOVE                             R19 R15
      221 MOVE                             R20 R17
      222 GETUPVAL                         R21 5
      223 CALL                             R18 3 0
      224 LOADNIL                          R18
      225 SETTABLEKS                       R18 R8 K10 ["generationThread"]
      227 DUPTABLE                         R18 K52 [{"generationId", "modelRbxmUrl", "childCount"}]
      228 SETTABLEKS                       R13 R18 K34 ["generationId"]
      230 SETTABLEKS                       R14 R18 K39 ["modelRbxmUrl"]
      232 SETTABLEKS                       R16 R18 K51 ["childCount"]
      234 RETURN                           R18 1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 SETTABLEKS                       R1 R0 K0 ["Archivable"]
        2 NAMECALL                         R2 R0 K1 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 SETTABLEKS                       R1 R6 K0 ["Archivable"]
        8 FORGLOOP                         R2 2 ; [-3]
       10 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETTABLEKS                       R2 R1 K0 ["sourcePivotCFrame"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R4 R1 K0 ["sourcePivotCFrame"]
        5 NAMECALL                         R2 R0 K1 ["PivotTo"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolveInsertAssetAsync"]
        3 MOVE                             R4 R0
        4 GETTABLEKS                       R5 R1 K1 ["publishAssetAsync"]
        6 GETTABLEKS                       R6 R1 K2 ["loadAssetAsync"]
        8 MOVE                             R7 R2
        9 CALL                             R3 4 -1
       10 RETURN                           R3 -1

PROTO_19:
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
       54 JUMPIFNOT                        R3 ; [+16]
       55 MOVE                             R3 R1
       56 GETUPVAL                         R4 6
       57 CALL                             R4 0 1
       58 JUMPIFNOT                        R4 ; [+7]
       59 GETUPVAL                         R4 7
       60 GETTABLEKS                       R4 R4 K7 ["collectFlattenedParts"]
       62 MOVE                             R5 R3
       63 CALL                             R4 1 1
       64 MOVE                             R2 R4
       65 JUMP                             ; [+6]
       66 GETUPVAL                         R4 8
       67 MOVE                             R5 R3
       68 CALL                             R4 1 1
       69 MOVE                             R2 R4
       70 JUMP                             ; [+1]
       71 MOVE                             R2 R1
       72 LENGTH                           R5 R2
       73 LOADN                            R6 0
       74 JUMPIFLT                         R6 R5 ; [+2]
       76 LOADB                            R4 0 +1
       77 LOADB                            R4 1
       78 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       80 LOADK                            R5 K8 ["No parts returned when loading segmented model asset"]
       81 GETIMPORT                        R3 K10 [assert]
       83 CALL                             R3 2 0
       84 GETIMPORT                        R3 K13 [Instance.new]
       86 LOADK                            R4 K14 ["Model"]
       87 CALL                             R3 1 1
       88 MOVE                             R4 R2
       89 LOADNIL                          R5
       90 LOADNIL                          R6
       91 FORGPREP                         R4
       92 LOADB                            R9 1
       93 SETTABLEKS                       R9 R8 K4 ["Archivable"]
       95 NAMECALL                         R9 R8 K5 ["GetDescendants"]
       97 CALL                             R9 1 3
       98 FORGPREP                         R9
       99 LOADB                            R14 1
      100 SETTABLEKS                       R14 R13 K4 ["Archivable"]
      102 FORGLOOP                         R9 2 ; [-4]
      104 SETTABLEKS                       R3 R8 K15 ["Parent"]
      106 FORGLOOP                         R4 2 ; [-15]
      108 MOVE                             R4 R1
      109 LOADNIL                          R5
      110 LOADNIL                          R6
      111 FORGPREP                         R4
      112 GETTABLEKS                       R9 R8 K15 ["Parent"]
      114 JUMPIFNOTEQKNIL                  R9 ; [+4]
      116 NAMECALL                         R9 R8 K16 ["Destroy"]
      118 CALL                             R9 1 0
      119 FORGLOOP                         R4 2 ; [-8]
      121 GETUPVAL                         R4 9
      122 JUMPIFNOT                        R4 ; [+3]
      123 GETUPVAL                         R4 9
      124 GETTABLEKS                       R4 R4 K17 ["processLoadedModel"]
      126 JUMPIFNOT                        R4 ; [+3]
      127 MOVE                             R5 R4
      128 MOVE                             R6 R3
      129 CALL                             R5 1 0
      130 GETUPVAL                         R5 5
      131 GETTABLEKS                       R5 R5 K18 ["replaceInPlace"]
      133 JUMPIFNOT                        R5 ; [+7]
      134 GETUPVAL                         R5 10
      135 JUMPIFNOT                        R5 ; [+5]
      136 GETUPVAL                         R7 10
      137 NAMECALL                         R5 R3 K19 ["PivotTo"]
      139 CALL                             R5 2 0
      140 JUMP                             ; [+22]
      141 GETUPVAL                         R5 5
      142 GETTABLEKS                       R5 R5 K18 ["replaceInPlace"]
      144 JUMPIF                           R5 ; [+18]
      145 GETUPVAL                         R5 10
      146 GETUPVAL                         R6 11
      147 GETUPVAL                         R7 6
      148 CALL                             R7 0 1
      149 JUMPIFNOT                        R7 ; [+8]
      150 GETUPVAL                         R7 7
      151 GETTABLEKS                       R7 R7 K20 ["placeAssetNextToSource"]
      153 MOVE                             R8 R3
      154 MOVE                             R9 R5
      155 MOVE                             R10 R6
      156 CALL                             R7 3 0
      157 JUMP                             ; [+5]
      158 GETUPVAL                         R7 12
      159 MOVE                             R8 R3
      160 MOVE                             R9 R5
      161 MOVE                             R10 R6
      162 CALL                             R7 3 0
      163 GETUPVAL                         R5 5
      164 GETTABLEKS                       R5 R5 K18 ["replaceInPlace"]
      166 JUMPIFNOT                        R5 ; [+10]
      167 GETUPVAL                         R5 13
      168 GETTABLEKS                       R5 R5 K21 ["Name"]
      170 SETTABLEKS                       R5 R3 K21 ["Name"]
      172 GETUPVAL                         R5 13
      173 LOADNIL                          R6
      174 SETTABLEKS                       R6 R5 K15 ["Parent"]
      176 JUMP                             ; [+7]
      177 GETUPVAL                         R6 13
      178 GETTABLEKS                       R6 R6 K21 ["Name"]
      180 LOADK                            R7 K22 [" (Segmented)"]
      181 CONCAT                           R5 R6 R7
      182 SETTABLEKS                       R5 R3 K21 ["Name"]
      184 GETUPVAL                         R5 14
      185 JUMPIF                           R5 ; [+2]
      186 GETIMPORT                        R5 K24 [workspace]
      188 SETTABLEKS                       R5 R3 K15 ["Parent"]
      190 GETUPVAL                         R7 15
      191 GETTABLEKS                       R7 R7 K25 ["getUniqueTag"]
      193 LOADK                            R8 K26 ["SegmentedMesh"]
      194 GETUPVAL                         R9 16
      195 CALL                             R7 2 -1
      196 NAMECALL                         R5 R3 K27 ["AddTag"]
      198 CALL                             R5 -1 0
      199 GETUPVAL                         R5 1
      200 GETTABLEKS                       R5 R5 K28 ["markAsAIGeneratedAsset"]
      202 MOVE                             R6 R3
      203 GETTABLEKS                       R7 R0 K29 ["generationId"]
      205 GETUPVAL                         R8 15
      206 GETTABLEKS                       R8 R8 K30 ["Enums"]
      208 GETTABLEKS                       R8 R8 K31 ["GenerationType"]
      210 GETTABLEKS                       R8 R8 K32 ["SegmentMesh"]
      212 CALL                             R5 3 0
      213 GETUPVAL                         R5 2
      214 SETTABLEKS                       R3 R5 K33 ["loadedModel"]
      216 GETUPVAL                         R5 17
      217 GETTABLEKS                       R5 R5 K34 ["selection"]
      219 GETTABLEKS                       R5 R5 K35 ["set"]
      221 NEWTABLE                         R6 0 1
      223 MOVE                             R7 R3
      224 SETLIST                          R6 R7 1 [1]
      226 CALL                             R5 1 0
      227 GETUPVAL                         R5 2
      228 GETTABLEKS                       R5 R5 K36 ["previewAssets"]
      230 JUMPIFNOT                        R5 ; [+7]
      231 NAMECALL                         R6 R5 K16 ["Destroy"]
      233 CALL                             R6 1 0
      234 GETUPVAL                         R6 2
      235 LOADNIL                          R7
      236 SETTABLEKS                       R7 R6 K36 ["previewAssets"]
      238 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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
       22 DUPCLOSURE                       R9 K19 [PROTO_15]
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R9 R8 K11 ["computeSourcePivot"]
       26 DUPCLOSURE                       R9 K20 [PROTO_16]
       27 CAPTURE                          UPVAL U1
       28 SETTABLEKS                       R9 R8 K12 ["assembleResult"]
       30 DUPCLOSURE                       R9 K21 [PROTO_17]
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
       77 GETTABLEKS                       R9 R1 K33 ["segmentMesh"]
       79 MOVE                             R11 R9
       80 GETUPVAL                         R12 6
       81 MOVE                             R13 R1
       82 LOADK                            R14 K34 ["SegmentMeshServiceMissing"]
       83 CALL                             R12 2 -1
       84 FASTCALL                         ASSERT ; [+2]
       85 GETIMPORT                        R10 K30 [assert]
       87 CALL                             R10 -1 0
       88 MOVE                             R8 R9
       89 GETTABLEKS                       R9 R7 K35 ["Parent"]
       91 GETTABLEKS                       R11 R0 K36 ["useSourceMeshCFrameForPivot"]
       93 JUMPIFNOT                        R11 ; [+11]
       94 GETTABLEKS                       R11 R5 K37 ["sourceMeshCFrame"]
       96 JUMPIFNOT                        R11 ; [+8]
       97 GETIMPORT                        R10 K40 [CFrame.new]
       99 GETTABLEKS                       R11 R5 K37 ["sourceMeshCFrame"]
      101 GETTABLEKS                       R11 R11 K41 ["Position"]
      103 CALL                             R10 1 1
      104 JUMP                             ; [+10]
      105 LOADK                            R13 K42 ["PVInstance"]
      106 NAMECALL                         R11 R7 K43 ["IsA"]
      108 CALL                             R11 2 1
      109 JUMPIFNOT                        R11 ; [+4]
      110 NAMECALL                         R10 R7 K44 ["GetPivot"]
      112 CALL                             R10 1 1
      113 JUMP                             ; [+1]
      114 LOADNIL                          R10
      115 GETUPVAL                         R11 1
      116 GETTABLEKS                       R11 R11 K45 ["getLocalBoundingBoxSize"]
      118 MOVE                             R12 R7
      119 CALL                             R11 1 1
      120 GETTABLEKS                       R12 R1 K46 ["recording"]
      122 LOADB                            R13 0
      123 JUMPIFNOT                        R12 ; [+11]
      124 GETTABLEKS                       R14 R12 K47 ["startRecording"]
      126 MOVE                             R15 R4
      127 LOADK                            R17 K48 ["Insert AI Segmented Model %*"]
      128 MOVE                             R19 R4
      129 NAMECALL                         R17 R17 K49 ["format"]
      131 CALL                             R17 2 1
      132 MOVE                             R16 R17
      133 CALL                             R14 2 1
      134 MOVE                             R13 R14
      135 LOADNIL                          R14
      136 GETIMPORT                        R15 K51 [xpcall]
      138 NEWCLOSURE                       R16 P4
      139 CAPTURE                          UPVAL U5
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U0
      146 CAPTURE                          UPVAL U1
      147 CAPTURE                          UPVAL U7
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R11
      151 CAPTURE                          UPVAL U8
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R9
      154 CAPTURE                          UPVAL U3
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R1
      157 NEWCLOSURE                       R17 P5
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R6
      160 CAPTURE                          REF R14
      161 CALL                             R15 2 0
      162 JUMPIFNOT                        R12 ; [+5]
      163 JUMPIFNOT                        R13 ; [+4]
      164 GETTABLEKS                       R15 R12 K52 ["endRecording"]
      166 MOVE                             R16 R4
      167 CALL                             R15 1 0
      168 JUMPIFEQKNIL                     R14 ; [+6]
      170 GETIMPORT                        R15 K54 [error]
      172 MOVE                             R16 R14
      173 LOADN                            R17 0
      174 CALL                             R15 2 0
      175 CLOSEUPVALS                      R14
      176 RETURN                           R0 0

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
       59 GETTABLEKS                       R10 R10 K16 ["getFFlagSegmentMeshSharedGenerationHelpers"]
       61 CALL                             R9 1 1
       62 NEWTABLE                         R10 4 0
       64 GETTABLEKS                       R11 R5 K17 ["VIEW_ANGLES"]
       66 DUPCLOSURE                       R12 K18 [PROTO_0]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R6
       69 GETTABLEKS                       R13 R3 K19 ["makeTranslator"]
       71 LOADK                            R14 K20 ["SegmentMesh"]
       72 MOVE                             R15 R6
       73 CALL                             R13 2 1
       74 DUPCLOSURE                       R14 K21 [PROTO_1]
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R12
       78 DUPCLOSURE                       R15 K22 [PROTO_2]
       79 DUPCLOSURE                       R16 K23 [PROTO_3]
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R15
       83 DUPCLOSURE                       R17 K24 [PROTO_4]
       84 CAPTURE                          VAL R14
       85 DUPCLOSURE                       R18 K25 [PROTO_7]
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R11
       92 SETTABLEKS                       R18 R10 K26 ["generateSegmentMeshAsync"]
       94 DUPCLOSURE                       R18 K27 [PROTO_8]
       95 CAPTURE                          VAL R9
       96 SETTABLEKS                       R18 R10 K28 ["cancelSegmentationAsync"]
       98 NEWTABLE                         R18 2 0
      100 LOADB                            R19 1
      101 SETTABLEKS                       R19 R18 K29 ["Roblox Generated Object"]
      103 LOADB                            R19 1
      104 SETTABLEKS                       R19 R18 K30 ["world"]
      106 DUPCLOSURE                       R19 K31 [PROTO_10]
      107 CAPTURE                          VAL R18
      108 DUPCLOSURE                       R20 K32 [PROTO_11]
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R19
      112 DUPCLOSURE                       R21 K33 [PROTO_12]
      113 DUPCLOSURE                       R22 K34 [PROTO_13]
      114 CAPTURE                          VAL R3
      115 DUPCLOSURE                       R23 K35 [PROTO_14]
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R22
      119 DUPCLOSURE                       R24 K36 [PROTO_21]
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R22
      129 SETTABLEKS                       R24 R10 K37 ["insertSegmentedModelAsync"]
      131 RETURN                           R10 1
