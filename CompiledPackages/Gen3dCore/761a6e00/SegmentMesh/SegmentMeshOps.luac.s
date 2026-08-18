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
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_4:
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
       79 GETUPVAL                         R10 1
       80 MOVE                             R11 R9
       81 CALL                             R10 1 1
       82 MOVE                             R12 R10
       83 GETUPVAL                         R13 0
       84 MOVE                             R14 R1
       85 LOADK                            R15 K18 ["SegmentRequiresSingleMeshPart"]
       86 CALL                             R13 2 -1
       87 FASTCALL                         ASSERT ; [+2]
       88 GETIMPORT                        R11 K5 [assert]
       90 CALL                             R11 -1 0
       91 GETTABLEKS                       R11 R1 K19 ["meshGen"]
       93 GETTABLEKS                       R11 R11 K20 ["exportMeshToGlbAsync"]
       95 MOVE                             R12 R10
       96 CALL                             R11 1 1
       97 LOADB                            R13 0
       98 FASTCALL1                        TYPEOF R11 ; [+3]
       99 MOVE                             R15 R11
      100 GETIMPORT                        R14 K22 [typeof]
      102 CALL                             R14 1 1
      103 JUMPIFNOTEQKS                    R14 K23 ["string"] ; [+7]
      105 LENGTH                           R14 R11
      106 LOADN                            R15 0
      107 JUMPIFLT                         R15 R14 ; [+2]
      109 LOADB                            R13 0 +1
      110 LOADB                            R13 1
      111 FASTCALL2K                       ASSERT R13 K24 ; [+4]
      113 LOADK                            R14 K24 ["Failed to export source MeshPart to GLB"]
      114 GETIMPORT                        R12 K5 [assert]
      116 CALL                             R12 2 0
      117 GETTABLEKS                       R12 R7 K25 ["startAsync"]
      119 DUPTABLE                         R13 K28 [{"glb", "partNames", "generateTexture"}]
      120 SETTABLEKS                       R11 R13 K26 ["glb"]
      122 SETTABLEKS                       R5 R13 K1 ["partNames"]
      124 GETTABLEKS                       R14 R0 K27 ["generateTexture"]
      126 SETTABLEKS                       R14 R13 K27 ["generateTexture"]
      128 CALL                             R12 1 1
      129 GETTABLEKS                       R13 R12 K29 ["ok"]
      131 JUMPIF                           R13 ; [+25]
      132 GETIMPORT                        R13 K31 [error]
      134 GETUPVAL                         R18 2
      135 GETTABLEKS                       R18 R18 K32 ["translate"]
      137 MOVE                             R19 R1
      138 LOADK                            R20 K33 ["SegmentMesh"]
      139 LOADK                            R21 K34 ["FailedToSegment"]
      140 GETUPVAL                         R24 3
      141 GETTABLEKS                       R23 R24 K34 ["FailedToSegment"]
      143 ORK                              R22 R23 K34 ["FailedToSegment"]
      144 CALL                             R18 4 1
      145 MOVE                             R15 R18
      146 LOADK                            R16 K35 [": "]
      147 GETTABLEKS                       R19 R12 K37 ["errorMessage"]
      149 ORK                              R18 R19 K36 ["unknown"]
      150 FASTCALL1                        TOSTRING R18 ; [+2]
      151 GETIMPORT                        R17 K39 [tostring]
      153 CALL                             R17 1 1
      154 CONCAT                           R14 R15 R17
      155 LOADN                            R15 0
      156 CALL                             R13 2 0
      157 GETTABLEKS                       R13 R12 K40 ["segmentationId"]
      159 FASTCALL1                        TYPEOF R13 ; [+3]
      160 MOVE                             R17 R13
      161 GETIMPORT                        R16 K22 [typeof]
      163 CALL                             R16 1 1
      164 JUMPIFEQKS                       R16 K23 ["string"] ; [+2]
      166 LOADB                            R15 0 +1
      167 LOADB                            R15 1
      168 FASTCALL2K                       ASSERT R15 K41 ; [+4]
      170 LOADK                            R16 K41 ["Missing segmentationId in startAsync response"]
      171 GETIMPORT                        R14 K5 [assert]
      173 CALL                             R14 2 0
      174 SETTABLEKS                       R13 R8 K42 ["generationId"]
      176 GETUPVAL                         R14 4
      177 GETTABLEKS                       R14 R14 K43 ["pollForCompletedStatus"]
      179 GETTABLEKS                       R15 R7 K44 ["getStatusAsync"]
      181 MOVE                             R16 R13
      182 NEWCLOSURE                       R17 P0
      183 CAPTURE                          UPVAL U0
      184 CAPTURE                          VAL R1
      185 LOADK                            R18 K34 ["FailedToSegment"]
      186 LOADK                            R19 K33 ["SegmentMesh"]
      187 CALL                             R14 5 1
      188 SETTABLEKS                       R14 R8 K45 ["modelRbxmUrl"]
      190 GETTABLEKS                       R15 R1 K19 ["meshGen"]
      192 GETTABLEKS                       R15 R15 K46 ["loadModelFromUrlAsync"]
      194 MOVE                             R16 R14
      195 CALL                             R15 1 1
      196 GETTABLEKS                       R17 R9 K47 ["Name"]
      198 LOADK                            R18 K48 [" (Segmented)"]
      199 CONCAT                           R16 R17 R18
      200 SETTABLEKS                       R16 R15 K47 ["Name"]
      202 SETTABLEKS                       R15 R8 K49 ["previewAssets"]
      204 NAMECALL                         R17 R15 K50 ["GetChildren"]
      206 CALL                             R17 1 1
      207 LENGTH                           R16 R17
      208 MOVE                             R17 R3
      209 JUMPIFNOT                        R17 ; [+2]
      210 GETTABLEKS                       R17 R3 K51 ["setPreviewImage"]
      212 JUMPIFNOT                        R17 ; [+8]
      213 GETTABLEKS                       R18 R1 K52 ["preview"]
      215 GETTABLEKS                       R18 R18 K53 ["capturePreviewImages"]
      217 MOVE                             R19 R15
      218 MOVE                             R20 R17
      219 GETUPVAL                         R21 5
      220 CALL                             R18 3 0
      221 LOADNIL                          R18
      222 SETTABLEKS                       R18 R8 K10 ["generationThread"]
      224 DUPTABLE                         R18 K55 [{"generationId", "modelRbxmUrl", "childCount"}]
      225 SETTABLEKS                       R13 R18 K42 ["generationId"]
      227 SETTABLEKS                       R14 R18 K45 ["modelRbxmUrl"]
      229 SETTABLEKS                       R16 R18 K54 ["childCount"]
      231 RETURN                           R18 1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["getGenerationSession"]
        2 GETTABLEKS                       R3 R0 K1 ["requestId"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R2 K2 ["generationThread"]
        7 JUMPIFNOT                        R3 ; [+10]
        8 GETIMPORT                        R4 K5 [coroutine.status]
       10 MOVE                             R5 R3
       11 CALL                             R4 1 1
       12 JUMPIFEQKS                       R4 K6 ["dead"] ; [+5]
       14 GETIMPORT                        R4 K9 [task.cancel]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 0
       18 LOADNIL                          R4
       19 SETTABLEKS                       R4 R2 K2 ["generationThread"]
       21 GETTABLEKS                       R4 R2 K10 ["previewAssets"]
       23 JUMPIFNOT                        R4 ; [+6]
       24 NAMECALL                         R5 R4 K11 ["Destroy"]
       26 CALL                             R5 1 0
       27 LOADNIL                          R5
       28 SETTABLEKS                       R5 R2 K10 ["previewAssets"]
       30 GETTABLEKS                       R5 R1 K12 ["clearGenerationSession"]
       32 GETTABLEKS                       R6 R0 K1 ["requestId"]
       34 CALL                             R5 1 0
       35 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 NAMECALL                         R1 R0 K2 ["GetChildren"]
        7 CALL                             R1 1 3
        8 FORGPREP                         R1
        9 GETUPVAL                         R6 0
       10 MOVE                             R7 R5
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 ; [-4]
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R1 K5 [table.insert]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R1
        5 MOVE                             R3 R0
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 MOVE                             R8 R2
       10 MOVE                             R9 R7
       11 CALL                             R8 1 0
       12 FORGLOOP                         R3 2 ; [-4]
       14 RETURN                           R1 1

PROTO_8:
        0 SETTABLEKS                       R1 R0 K0 ["Archivable"]
        2 NAMECALL                         R2 R0 K1 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 SETTABLEKS                       R1 R6 K0 ["Archivable"]
        8 FORGLOOP                         R2 2 ; [-3]
       10 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 LENGTH                           R3 R0
        4 LOADN                            R4 0
        5 JUMPIFLT                         R4 R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K0 ; [+4]
       11 LOADK                            R3 K0 ["No parts returned when loading segmented model asset"]
       12 GETIMPORT                        R1 K2 [assert]
       14 CALL                             R1 2 0
       15 GETIMPORT                        R1 K5 [Instance.new]
       17 LOADK                            R2 K6 ["Model"]
       18 CALL                             R1 1 1
       19 MOVE                             R2 R0
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 LOADB                            R7 1
       24 SETTABLEKS                       R7 R6 K7 ["Archivable"]
       26 NAMECALL                         R7 R6 K8 ["GetDescendants"]
       28 CALL                             R7 1 3
       29 FORGPREP                         R7
       30 LOADB                            R12 1
       31 SETTABLEKS                       R12 R11 K7 ["Archivable"]
       33 FORGLOOP                         R7 2 ; [-4]
       35 SETTABLEKS                       R1 R6 K9 ["Parent"]
       37 FORGLOOP                         R2 2 ; [-15]
       39 GETUPVAL                         R2 1
       40 LOADNIL                          R3
       41 LOADNIL                          R4
       42 FORGPREP                         R2
       43 GETTABLEKS                       R7 R6 K9 ["Parent"]
       45 JUMPIFNOTEQKNIL                  R7 ; [+4]
       47 NAMECALL                         R7 R6 K10 ["Destroy"]
       49 CALL                             R7 1 0
       50 FORGLOOP                         R2 2 ; [-8]
       52 GETUPVAL                         R2 2
       53 JUMPIFNOT                        R2 ; [+3]
       54 GETUPVAL                         R2 2
       55 GETTABLEKS                       R2 R2 K11 ["processLoadedModel"]
       57 JUMPIFNOT                        R2 ; [+3]
       58 MOVE                             R3 R2
       59 MOVE                             R4 R1
       60 CALL                             R3 1 0
       61 GETUPVAL                         R3 3
       62 GETTABLEKS                       R3 R3 K12 ["replaceInPlace"]
       64 JUMPIFNOT                        R3 ; [+7]
       65 GETUPVAL                         R3 4
       66 JUMPIFNOT                        R3 ; [+5]
       67 GETUPVAL                         R5 4
       68 NAMECALL                         R3 R1 K13 ["PivotTo"]
       70 CALL                             R3 2 0
       71 JUMP                             ; [+9]
       72 GETUPVAL                         R3 3
       73 GETTABLEKS                       R3 R3 K12 ["replaceInPlace"]
       75 JUMPIF                           R3 ; [+5]
       76 GETUPVAL                         R3 5
       77 MOVE                             R4 R1
       78 GETUPVAL                         R5 4
       79 GETUPVAL                         R6 6
       80 CALL                             R3 3 0
       81 GETUPVAL                         R3 7
       82 GETTABLEKS                       R3 R3 K14 ["getLocalBoundingBoxSize"]
       84 MOVE                             R4 R1
       85 CALL                             R3 1 1
       86 GETUPVAL                         R4 6
       87 JUMPIFNOT                        R4 ; [+14]
       88 JUMPIFNOT                        R3 ; [+13]
       89 GETUPVAL                         R4 7
       90 GETTABLEKS                       R4 R4 K15 ["guessAxisFlipCFrame"]
       92 GETUPVAL                         R5 6
       93 MOVE                             R6 R3
       94 CALL                             R4 2 1
       95 NAMECALL                         R8 R1 K16 ["GetPivot"]
       97 CALL                             R8 1 1
       98 MUL                              R7 R8 R4
       99 NAMECALL                         R5 R1 K13 ["PivotTo"]
      101 CALL                             R5 2 0
      102 GETUPVAL                         R4 3
      103 GETTABLEKS                       R4 R4 K12 ["replaceInPlace"]
      105 JUMPIFNOT                        R4 ; [+10]
      106 GETUPVAL                         R4 8
      107 GETTABLEKS                       R4 R4 K17 ["Name"]
      109 SETTABLEKS                       R4 R1 K17 ["Name"]
      111 GETUPVAL                         R4 8
      112 LOADNIL                          R5
      113 SETTABLEKS                       R5 R4 K9 ["Parent"]
      115 JUMP                             ; [+7]
      116 GETUPVAL                         R5 8
      117 GETTABLEKS                       R5 R5 K17 ["Name"]
      119 LOADK                            R6 K18 [" (Segmented)"]
      120 CONCAT                           R4 R5 R6
      121 SETTABLEKS                       R4 R1 K17 ["Name"]
      123 GETUPVAL                         R4 9
      124 JUMPIF                           R4 ; [+2]
      125 GETIMPORT                        R4 K20 [workspace]
      127 SETTABLEKS                       R4 R1 K9 ["Parent"]
      129 GETUPVAL                         R6 10
      130 GETTABLEKS                       R6 R6 K21 ["getUniqueTag"]
      132 LOADK                            R7 K22 ["SegmentedMesh"]
      133 GETUPVAL                         R8 11
      134 CALL                             R6 2 -1
      135 NAMECALL                         R4 R1 K23 ["AddTag"]
      137 CALL                             R4 -1 0
      138 GETUPVAL                         R4 12
      139 GETTABLEKS                       R4 R4 K24 ["markAsAIGeneratedAsset"]
      141 MOVE                             R5 R1
      142 GETUPVAL                         R6 13
      143 GETTABLEKS                       R6 R6 K25 ["generationId"]
      145 GETUPVAL                         R7 10
      146 GETTABLEKS                       R7 R7 K26 ["Enums"]
      148 GETTABLEKS                       R7 R7 K27 ["GenerationType"]
      150 GETTABLEKS                       R7 R7 K28 ["SegmentMesh"]
      152 CALL                             R4 3 0
      153 GETUPVAL                         R4 14
      154 SETTABLEKS                       R1 R4 K29 ["loadedModel"]
      156 GETUPVAL                         R4 15
      157 GETTABLEKS                       R4 R4 K30 ["selection"]
      159 GETTABLEKS                       R4 R4 K31 ["set"]
      161 NEWTABLE                         R5 0 1
      163 MOVE                             R6 R1
      164 SETLIST                          R5 R6 1 [1]
      166 CALL                             R4 1 0
      167 GETUPVAL                         R4 14
      168 GETTABLEKS                       R4 R4 K32 ["previewAssets"]
      170 JUMPIFNOT                        R4 ; [+7]
      171 NAMECALL                         R5 R4 K10 ["Destroy"]
      173 CALL                             R5 1 0
      174 GETUPVAL                         R5 14
      175 LOADNIL                          R6
      176 SETTABLEKS                       R6 R5 K32 ["previewAssets"]
      178 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R2 K0 ["%*\n%*"]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R5 K3 [debug.traceback]
        4 CALL                             R5 0 1
        5 NAMECALL                         R2 R2 K4 ["format"]
        7 CALL                             R2 3 1
        8 MOVE                             R1 R2
        9 SETUPVAL                         R1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["requestId"]
        2 GETTABLEKS                       R5 R2 K1 ["getGenerationSession"]
        4 MOVE                             R6 R4
        5 CALL                             R5 1 1
        6 GETTABLEKS                       R6 R5 K2 ["generationId"]
        8 FASTCALL1                        TYPEOF R6 ; [+3]
        9 MOVE                             R10 R6
       10 GETIMPORT                        R9 K4 [typeof]
       12 CALL                             R9 1 1
       13 JUMPIFEQKS                       R9 K5 ["string"] ; [+2]
       15 LOADB                            R8 0 +1
       16 LOADB                            R8 1
       17 FASTCALL2K                       ASSERT R8 K6 ; [+4]
       19 LOADK                            R9 K6 ["segmentationId not found in session"]
       20 GETIMPORT                        R7 K8 [assert]
       22 CALL                             R7 2 0
       23 GETTABLEKS                       R7 R5 K9 ["sourceInstance"]
       25 FASTCALL2K                       ASSERT R7 K10 ; [+5]
       27 MOVE                             R9 R7
       28 LOADK                            R10 K10 ["Source instance not found in session"]
       29 GETIMPORT                        R8 K8 [assert]
       31 CALL                             R8 2 0
       32 GETTABLEKS                       R9 R1 K11 ["segmentMesh"]
       34 MOVE                             R11 R9
       35 GETUPVAL                         R12 0
       36 MOVE                             R13 R1
       37 LOADK                            R14 K12 ["SegmentMeshServiceMissing"]
       38 CALL                             R12 2 -1
       39 FASTCALL                         ASSERT ; [+2]
       40 GETIMPORT                        R10 K8 [assert]
       42 CALL                             R10 -1 0
       43 MOVE                             R8 R9
       44 GETTABLEKS                       R9 R7 K13 ["Parent"]
       46 LOADK                            R13 K14 ["PVInstance"]
       47 NAMECALL                         R11 R7 K15 ["IsA"]
       49 CALL                             R11 2 1
       50 JUMPIFNOT                        R11 ; [+4]
       51 NAMECALL                         R10 R7 K16 ["GetPivot"]
       53 CALL                             R10 1 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R10
       56 GETUPVAL                         R11 1
       57 GETTABLEKS                       R11 R11 K17 ["getLocalBoundingBoxSize"]
       59 MOVE                             R12 R7
       60 CALL                             R11 1 1
       61 GETTABLEKS                       R12 R1 K18 ["recording"]
       63 JUMPIFNOT                        R12 ; [+10]
       64 GETTABLEKS                       R13 R12 K19 ["startRecording"]
       66 MOVE                             R14 R4
       67 LOADK                            R16 K20 ["Insert AI Segmented Model %*"]
       68 MOVE                             R18 R4
       69 NAMECALL                         R16 R16 K21 ["format"]
       71 CALL                             R16 2 1
       72 MOVE                             R15 R16
       73 CALL                             R13 2 0
       74 GETTABLEKS                       R13 R8 K22 ["publishAssetAsync"]
       76 MOVE                             R14 R6
       77 CALL                             R13 1 1
       78 GETTABLEKS                       R14 R8 K23 ["loadAssetAsync"]
       80 GETTABLEKS                       R15 R13 K24 ["assetId"]
       82 CALL                             R14 1 1
       83 MOVE                             R15 R14
       84 LOADNIL                          R16
       85 LOADNIL                          R17
       86 FORGPREP                         R15
       87 LOADB                            R20 0
       88 SETTABLEKS                       R20 R19 K25 ["Archivable"]
       90 NAMECALL                         R20 R19 K26 ["GetDescendants"]
       92 CALL                             R20 1 3
       93 FORGPREP                         R20
       94 LOADB                            R25 0
       95 SETTABLEKS                       R25 R24 K25 ["Archivable"]
       97 FORGLOOP                         R20 2 ; [-4]
       99 FORGLOOP                         R15 2 ; [-13]
      101 LOADNIL                          R15
      102 GETIMPORT                        R16 K28 [xpcall]
      104 NEWCLOSURE                       R17 P0
      105 CAPTURE                          UPVAL U2
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R10
      110 CAPTURE                          UPVAL U3
      111 CAPTURE                          VAL R11
      112 CAPTURE                          UPVAL U1
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R9
      115 CAPTURE                          UPVAL U4
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R1
      121 NEWCLOSURE                       R18 P1
      122 CAPTURE                          REF R15
      123 CALL                             R16 2 0
      124 JUMPIFNOT                        R12 ; [+4]
      125 GETTABLEKS                       R16 R12 K29 ["endRecording"]
      127 MOVE                             R17 R4
      128 CALL                             R16 1 0
      129 JUMPIFEQKNIL                     R15 ; [+6]
      131 GETIMPORT                        R16 K31 [error]
      133 MOVE                             R17 R15
      134 LOADN                            R18 0
      135 CALL                             R16 2 0
      136 CLOSEUPVALS                      R15
      137 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Gen3dTypes"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K6 ["GenerationSessions"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K4 ["Parent"]
       31 GETTABLEKS                       R3 R3 K7 ["GenerationUtils"]
       33 CALL                             R2 1 1
       34 GETIMPORT                        R3 K1 [require]
       36 GETIMPORT                        R4 K3 [script]
       38 GETTABLEKS                       R4 R4 K4 ["Parent"]
       40 GETTABLEKS                       R4 R4 K4 ["Parent"]
       42 GETTABLEKS                       R4 R4 K8 ["HostSurface"]
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K1 [require]
       47 GETIMPORT                        R5 K3 [script]
       49 GETTABLEKS                       R5 R5 K4 ["Parent"]
       51 GETTABLEKS                       R5 R5 K4 ["Parent"]
       53 GETTABLEKS                       R5 R5 K9 ["PreviewCarousel"]
       55 CALL                             R4 1 1
       56 GETIMPORT                        R5 K1 [require]
       58 GETIMPORT                        R6 K3 [script]
       60 GETTABLEKS                       R6 R6 K4 ["Parent"]
       62 GETTABLEKS                       R6 R6 K10 ["SegmentMeshStrings"]
       64 CALL                             R5 1 1
       65 NEWTABLE                         R6 4 0
       67 GETTABLEKS                       R7 R4 K11 ["VIEW_ANGLES"]
       69 DUPCLOSURE                       R8 K12 [PROTO_0]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R5
       72 DUPCLOSURE                       R9 K13 [PROTO_1]
       73 CAPTURE                          VAL R8
       74 DUPCLOSURE                       R10 K14 [PROTO_2]
       75 DUPCLOSURE                       R11 K15 [PROTO_4]
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R7
       82 SETTABLEKS                       R11 R6 K16 ["generateSegmentMeshAsync"]
       84 DUPCLOSURE                       R11 K17 [PROTO_5]
       85 SETTABLEKS                       R11 R6 K18 ["cancelSegmentationAsync"]
       87 DUPCLOSURE                       R11 K19 [PROTO_7]
       88 DUPCLOSURE                       R12 K20 [PROTO_8]
       89 DUPCLOSURE                       R13 K21 [PROTO_9]
       90 CAPTURE                          VAL R2
       91 DUPCLOSURE                       R14 K22 [PROTO_12]
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R0
       97 SETTABLEKS                       R14 R6 K23 ["insertSegmentedModelAsync"]
       99 RETURN                           R6 1
