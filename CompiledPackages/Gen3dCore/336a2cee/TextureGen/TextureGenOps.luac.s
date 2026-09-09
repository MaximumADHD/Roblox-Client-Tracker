PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETIMPORT                        R1 K1 [warn]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["Archivable"]
        2 NAMECALL                         R2 R0 K1 ["GetDescendants"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 SETTABLEKS                       R1 R6 K0 ["Archivable"]
        8 FORGLOOP                         R2 2 ; [-3]
       10 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["createPlan"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K1 ["reapplyPlan"]
        8 RETURN                           R0 0

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
      125 GETUPVAL                         R15 3
      126 CALL                             R15 0 1
      127 JUMPIFNOT                        R15 ; [+3]
      128 NEWCLOSURE                       R14 P0
      129 CAPTURE                          VAL R10
      130 CAPTURE                          UPVAL U4
      131 LOADNIL                          R15
      132 LOADN                            R16 1
      133 JUMPIFNOT                        R12 ; [+21]
      134 GETTABLEKS                       R17 R12 K27 ["CFrame"]
      136 SETTABLEKS                       R17 R10 K28 ["sourceMeshCFrame"]
      138 GETUPVAL                         R17 1
      139 GETTABLEKS                       R17 R17 K29 ["exportInstanceToGlbAsync"]
      141 MOVE                             R18 R12
      142 GETTABLEKS                       R19 R1 K30 ["meshGen"]
      144 GETTABLEKS                       R19 R19 K29 ["exportInstanceToGlbAsync"]
      146 GETUPVAL                         R20 5
      147 CALL                             R20 0 1
      148 GETUPVAL                         R21 5
      149 CALL                             R21 0 1
      150 MOVE                             R22 R14
      151 CALL                             R17 5 2
      152 MOVE                             R15 R17
      153 MOVE                             R16 R18
      154 JUMP                             ; [+13]
      155 GETUPVAL                         R17 1
      156 GETTABLEKS                       R17 R17 K29 ["exportInstanceToGlbAsync"]
      158 MOVE                             R18 R11
      159 GETTABLEKS                       R19 R1 K30 ["meshGen"]
      161 GETTABLEKS                       R19 R19 K29 ["exportInstanceToGlbAsync"]
      163 LOADB                            R20 1
      164 LOADNIL                          R21
      165 MOVE                             R22 R14
      166 CALL                             R17 5 1
      167 MOVE                             R15 R17
      168 LOADB                            R18 0
      169 FASTCALL1                        TYPEOF R15 ; [+3]
      170 MOVE                             R20 R15
      171 GETIMPORT                        R19 K3 [typeof]
      173 CALL                             R19 1 1
      174 JUMPIFNOTEQKS                    R19 K4 ["string"] ; [+7]
      176 LENGTH                           R19 R15
      177 LOADN                            R20 0
      178 JUMPIFLT                         R20 R19 ; [+2]
      180 LOADB                            R18 0 +1
      181 LOADB                            R18 1
      182 FASTCALL2K                       ASSERT R18 K31 ; [+4]
      184 LOADK                            R19 K31 ["Failed to export source to GLB"]
      185 GETIMPORT                        R17 K9 [assert]
      187 CALL                             R17 2 0
      188 SETTABLEKS                       R16 R10 K32 ["sourceExportScale"]
      190 GETTABLEKS                       R17 R9 K33 ["startAsync"]
      192 DUPTABLE                         R18 K38 [{"glb", "textPrompt", "image", "imageContentType", "model"}]
      193 SETTABLEKS                       R15 R18 K34 ["glb"]
      195 SETTABLEKS                       R5 R18 K1 ["textPrompt"]
      197 GETTABLEKS                       R19 R0 K5 ["hintImage"]
      199 SETTABLEKS                       R19 R18 K35 ["image"]
      201 GETTABLEKS                       R19 R0 K39 ["hintImageContentType"]
      203 SETTABLEKS                       R19 R18 K36 ["imageContentType"]
      205 GETTABLEKS                       R19 R0 K37 ["model"]
      207 SETTABLEKS                       R19 R18 K37 ["model"]
      209 CALL                             R17 1 1
      210 GETTABLEKS                       R18 R17 K40 ["textureGenerationId"]
      212 FASTCALL1                        TYPEOF R18 ; [+3]
      213 MOVE                             R22 R18
      214 GETIMPORT                        R21 K3 [typeof]
      216 CALL                             R21 1 1
      217 JUMPIFEQKS                       R21 K4 ["string"] ; [+2]
      219 LOADB                            R20 0 +1
      220 LOADB                            R20 1
      221 FASTCALL2K                       ASSERT R20 K41 ; [+4]
      223 LOADK                            R21 K41 ["Missing textureGenerationId in startAsync response"]
      224 GETIMPORT                        R19 K9 [assert]
      226 CALL                             R19 2 0
      227 SETTABLEKS                       R18 R10 K42 ["generationId"]
      229 GETUPVAL                         R19 1
      230 GETTABLEKS                       R19 R19 K43 ["pollForCompletedStatus"]
      232 GETTABLEKS                       R20 R9 K44 ["getStatusAsync"]
      234 MOVE                             R21 R18
      235 DUPCLOSURE                       R22 K45 [PROTO_5]
      236 NEWCLOSURE                       R23 P2
      237 CAPTURE                          UPVAL U0
      238 CAPTURE                          VAL R1
      239 LOADK                            R24 K46 ["FailedToGenerate"]
      240 LOADK                            R25 K47 ["TextureGen"]
      241 CALL                             R19 6 1
      242 SETTABLEKS                       R19 R10 K48 ["modelRbxmUrl"]
      244 GETUPVAL                         R20 6
      245 CALL                             R20 0 1
      246 JUMPIFNOT                        R20 ; [+9]
      247 GETTABLEKS                       R20 R2 K49 ["startPreloadInsertAsync"]
      249 MOVE                             R21 R10
      250 GETTABLEKS                       R22 R9 K50 ["publishAssetAsync"]
      252 GETTABLEKS                       R23 R9 K51 ["loadAssetAsync"]
      254 MOVE                             R24 R18
      255 CALL                             R20 4 0
      256 GETTABLEKS                       R20 R1 K30 ["meshGen"]
      258 GETTABLEKS                       R20 R20 K52 ["loadModelFromUrlAsync"]
      260 MOVE                             R21 R19
      261 CALL                             R20 1 1
      262 GETTABLEKS                       R22 R11 K53 ["Name"]
      264 LOADK                            R23 K54 [" (Textured)"]
      265 CONCAT                           R21 R22 R23
      266 SETTABLEKS                       R21 R20 K53 ["Name"]
      268 SETTABLEKS                       R20 R10 K55 ["previewAssets"]
      270 MOVE                             R21 R3
      271 JUMPIFNOT                        R21 ; [+2]
      272 GETTABLEKS                       R21 R3 K56 ["setPreviewImage"]
      274 JUMPIFNOT                        R21 ; [+8]
      275 GETTABLEKS                       R22 R1 K57 ["preview"]
      277 GETTABLEKS                       R22 R22 K58 ["capturePreviewImages"]
      279 MOVE                             R23 R20
      280 MOVE                             R24 R21
      281 GETUPVAL                         R25 7
      282 CALL                             R22 3 0
      283 LOADNIL                          R22
      284 SETTABLEKS                       R22 R10 K15 ["generationThread"]
      286 DUPTABLE                         R22 K59 [{"generationId", "modelRbxmUrl"}]
      287 SETTABLEKS                       R18 R22 K42 ["generationId"]
      289 SETTABLEKS                       R19 R22 K48 ["modelRbxmUrl"]
      291 RETURN                           R22 1

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["cancelGenerationSession"]
        2 GETTABLEKS                       R3 R0 K1 ["requestId"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["reapplyPlan"]
        3 JUMPIF                           R2 ; [+2]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["recording"]
        9 JUMPIF                           R3 ; [+9]
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+4]
       13 GETIMPORT                        R3 K3 [warn]
       15 LOADK                            R4 K4 ["[TextureGen] no change-history recording available; falling back to replacing the source"]
       16 CALL                             R3 1 0
       17 LOADNIL                          R3
       18 RETURN                           R3 1
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K5 ["resolveIncomingParts"]
       22 MOVE                             R4 R0
       23 MOVE                             R5 R2
       24 CALL                             R3 2 1
       25 JUMPIF                           R3 ; [+26]
       26 GETUPVAL                         R4 2
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+21]
       29 GETIMPORT                        R4 K3 [warn]
       31 LOADK                            R9 K6 ["[TextureGen] could not match %* exported mesh(es) to the generated asset by name; "]
       32 GETTABLEKS                       R12 R2 K7 ["tokens"]
       34 LENGTH                           R11 R12
       35 NAMECALL                         R9 R9 K8 ["format"]
       37 CALL                             R9 2 1
       38 MOVE                             R6 R9
       39 LOADK                            R7 K9 ["falling back to replacing the source\n"]
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K10 ["describeMatchFailure"]
       43 MOVE                             R9 R2
       44 GETTABLEKS                       R10 R1 K11 ["sourceInstance"]
       46 MOVE                             R11 R0
       47 CALL                             R8 3 1
       48 CONCAT                           R5 R6 R8
       49 CALL                             R4 1 0
       50 LOADNIL                          R4
       51 RETURN                           R4 1
       52 GETUPVAL                         R4 3
       53 GETTABLEKS                       R4 R4 K12 ["canApplyPlan"]
       55 GETTABLEKS                       R5 R1 K11 ["sourceInstance"]
       57 MOVE                             R6 R2
       58 LOADB                            R7 1
       59 CALL                             R4 3 1
       60 JUMPIF                           R4 ; [+9]
       61 GETUPVAL                         R4 2
       62 CALL                             R4 0 1
       63 JUMPIFNOT                        R4 ; [+4]
       64 GETIMPORT                        R4 K3 [warn]
       66 LOADK                            R5 K13 ["[TextureGen] source mesh structure changed since generation (or is skinned/rigged); falling back to replacing the source"]
       67 CALL                             R4 1 0
       68 LOADNIL                          R4
       69 RETURN                           R4 1
       70 GETTABLEKS                       R4 R1 K11 ["sourceInstance"]
       72 GETTABLEKS                       R5 R1 K14 ["replaceInPlace"]
       74 JUMPIF                           R5 ; [+14]
       75 GETUPVAL                         R5 4
       76 GETTABLEKS                       R5 R5 K15 ["cloneAsArchivable"]
       78 GETTABLEKS                       R6 R1 K11 ["sourceInstance"]
       80 LOADB                            R7 1
       81 CALL                             R5 2 1
       82 JUMPIF                           R5 ; [+2]
       83 LOADNIL                          R6
       84 RETURN                           R6 1
       85 MOVE                             R4 R5
       86 GETUPVAL                         R6 0
       87 SETTABLEKS                       R5 R6 K16 ["reappliedClone"]
       89 GETUPVAL                         R5 3
       90 GETTABLEKS                       R5 R5 K17 ["applyPlan"]
       92 MOVE                             R6 R4
       93 MOVE                             R7 R2
       94 MOVE                             R8 R3
       95 CALL                             R5 3 1
       96 JUMPIF                           R5 ; [+13]
       97 GETUPVAL                         R5 0
       98 GETTABLEKS                       R5 R5 K16 ["reappliedClone"]
      100 JUMPIFNOT                        R5 ; [+7]
      101 NAMECALL                         R6 R5 K18 ["Destroy"]
      103 CALL                             R6 1 0
      104 GETUPVAL                         R6 0
      105 LOADNIL                          R7
      106 SETTABLEKS                       R7 R6 K16 ["reappliedClone"]
      108 LOADNIL                          R6
      109 RETURN                           R6 1
      110 GETTABLEKS                       R5 R1 K14 ["replaceInPlace"]
      112 JUMPIF                           R5 ; [+24]
      113 GETUPVAL                         R5 4
      114 GETTABLEKS                       R5 R5 K19 ["placeAssetNextToSource"]
      116 MOVE                             R6 R4
      117 GETTABLEKS                       R7 R1 K20 ["sourcePivotCFrame"]
      119 GETTABLEKS                       R8 R1 K21 ["sourceLocalSize"]
      121 CALL                             R5 3 0
      122 GETTABLEKS                       R6 R1 K11 ["sourceInstance"]
      124 GETTABLEKS                       R6 R6 K22 ["Name"]
      126 LOADK                            R7 K23 [" (Textured)"]
      127 CONCAT                           R5 R6 R7
      128 SETTABLEKS                       R5 R4 K22 ["Name"]
      130 GETTABLEKS                       R5 R1 K24 ["sourceParent"]
      132 JUMPIF                           R5 ; [+2]
      133 GETIMPORT                        R5 K26 [workspace]
      135 SETTABLEKS                       R5 R4 K27 ["Parent"]
      137 NAMECALL                         R5 R0 K18 ["Destroy"]
      139 CALL                             R5 1 0
      140 GETUPVAL                         R5 0
      141 SETTABLEKS                       R4 R5 K28 ["reappliedTarget"]
      143 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+5]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["stripTokenNames"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 0
       10 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolveInsertAssetAsync"]
        3 MOVE                             R4 R0
        4 GETTABLEKS                       R5 R1 K1 ["publishAssetAsync"]
        6 GETTABLEKS                       R6 R1 K2 ["loadAssetAsync"]
        8 MOVE                             R7 R2
        9 CALL                             R3 4 -1
       10 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R3 R2 K0 ["reapplyPlan"]
        2 JUMPIFNOT                        R3 ; [+17]
        3 GETTABLEKS                       R4 R2 K1 ["sourceMeshCFrame"]
        5 JUMPIFNOT                        R4 ; [+3]
        6 GETTABLEKS                       R3 R2 K1 ["sourceMeshCFrame"]
        8 RETURN                           R3 1
        9 LOADK                            R6 K2 ["PVInstance"]
       10 NAMECALL                         R4 R1 K3 ["IsA"]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R4 ; [+4]
       14 NAMECALL                         R3 R1 K4 ["GetPivot"]
       16 CALL                             R3 1 1
       17 RETURN                           R3 1
       18 LOADNIL                          R3
       19 RETURN                           R3 1
       20 GETTABLEKS                       R3 R0 K5 ["useSourceMeshCFrameForPivot"]
       22 JUMPIF                           R3 ; [+2]
       23 GETUPVAL                         R3 0
       24 CALL                             R3 0 1
       25 JUMPIFNOT                        R3 ; [+11]
       26 GETTABLEKS                       R5 R2 K1 ["sourceMeshCFrame"]
       28 JUMPIFNOT                        R5 ; [+8]
       29 GETIMPORT                        R4 K8 [CFrame.new]
       31 GETTABLEKS                       R5 R2 K1 ["sourceMeshCFrame"]
       33 GETTABLEKS                       R5 R5 K9 ["Position"]
       35 CALL                             R4 1 1
       36 RETURN                           R4 1
       37 LOADK                            R7 K2 ["PVInstance"]
       38 NAMECALL                         R5 R1 K3 ["IsA"]
       40 CALL                             R5 2 1
       41 JUMPIFNOT                        R5 ; [+4]
       42 NAMECALL                         R4 R1 K4 ["GetPivot"]
       44 CALL                             R4 1 1
       45 RETURN                           R4 1
       46 LOADNIL                          R4
       47 RETURN                           R4 1

PROTO_13:
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

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["sourcePivotCFrame"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["isMultiMeshSource"]
        7 JUMPIFNOT                        R3 ; [+18]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["reapplyPlan"]
       11 JUMPIFNOT                        R4 ; [+2]
       12 MOVE                             R3 R2
       13 JUMP                             ; [+5]
       14 GETIMPORT                        R3 K5 [CFrame.new]
       16 GETTABLEKS                       R4 R2 K6 ["Position"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K7 ["applyWorldTransform"]
       22 MOVE                             R5 R0
       23 MOVE                             R6 R3
       24 CALL                             R4 2 0
       25 RETURN                           R0 0
       26 MOVE                             R5 R2
       27 NAMECALL                         R3 R0 K8 ["PivotTo"]
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

PROTO_15:
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
       25 GETIMPORT                        R4 K7 [CFrame.new]
       27 LOADN                            R7 0
       28 LOADN                            R8 0
       29 FASTCALL3                        VECTOR R3 R7 R8
       31 MOVE                             R6 R3
       32 GETIMPORT                        R5 K9 [Vector3.new]
       34 CALL                             R5 3 1
       35 CALL                             R4 1 1
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K10 ["reapplyPlan"]
       39 JUMPIFNOT                        R6 ; [+2]
       40 MUL                              R5 R1 R4
       41 JUMP                             ; [+6]
       42 GETIMPORT                        R6 K7 [CFrame.new]
       44 GETTABLEKS                       R7 R1 K11 ["Position"]
       46 CALL                             R6 1 1
       47 MUL                              R5 R6 R4
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K12 ["applyWorldTransform"]
       51 MOVE                             R7 R0
       52 MOVE                             R8 R5
       53 CALL                             R6 2 0
       54 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R4 R2 K0 ["getGenerationSession"]
        2 GETTABLEKS                       R5 R0 K1 ["requestId"]
        4 CALL                             R4 1 1
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R4
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K2 ["insertGeneratedModelAsync"]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R1
       16 MOVE                             R9 R2
       17 DUPTABLE                         R10 K19 [{["requireService"], ["applyInPlace"], ["suffix"] = " (Textured)", ["tagKind"] = "TexturedMesh", ["generationType"], ["recordingLabel"] = "Insert AI Textured Model", ["opName"] = "insertTexturedModelAsync", ["resolveInsertAsync"], ["computeSourcePivot"], ["assembleResult"], ["applyReplaceTransform"], ["placeBesideSource"]}]
       18 GETUPVAL                         R11 3
       19 SETTABLEKS                       R11 R10 K3 ["requireService"]
       21 GETUPVAL                         R12 4
       22 CALL                             R12 0 1
       23 JUMPIFNOT                        R12 ; [+4]
       24 NEWCLOSURE                       R11 P1
       25 CAPTURE                          VAL R5
       26 CAPTURE                          UPVAL U1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R11
       29 SETTABLEKS                       R11 R10 K4 ["applyInPlace"]
       31 GETUPVAL                         R11 5
       32 GETTABLEKS                       R11 R11 K20 ["Enums"]
       34 GETTABLEKS                       R11 R11 K21 ["GenerationType"]
       36 GETTABLEKS                       R11 R11 K22 ["TextureGen"]
       38 SETTABLEKS                       R11 R10 K9 ["generationType"]
       40 GETUPVAL                         R12 6
       41 CALL                             R12 0 1
       42 JUMPIFNOT                        R12 ; [+3]
       43 NEWCLOSURE                       R11 P2
       44 CAPTURE                          VAL R2
       45 JUMP                             ; [+1]
       46 LOADNIL                          R11
       47 SETTABLEKS                       R11 R10 K14 ["resolveInsertAsync"]
       49 DUPCLOSURE                       R11 K23 [PROTO_12]
       50 CAPTURE                          UPVAL U7
       51 SETTABLEKS                       R11 R10 K15 ["computeSourcePivot"]
       53 NEWCLOSURE                       R11 P4
       54 CAPTURE                          VAL R4
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U8
       57 SETTABLEKS                       R11 R10 K16 ["assembleResult"]
       59 NEWCLOSURE                       R11 P5
       60 CAPTURE                          VAL R4
       61 CAPTURE                          UPVAL U2
       62 SETTABLEKS                       R11 R10 K17 ["applyReplaceTransform"]
       64 NEWCLOSURE                       R11 P6
       65 CAPTURE                          VAL R4
       66 CAPTURE                          UPVAL U2
       67 SETTABLEKS                       R11 R10 K18 ["placeBesideSource"]
       69 MOVE                             R11 R3
       70 CALL                             R6 5 0
       71 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["reappliedTarget"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETTABLEKS                       R2 R0 K1 ["reappliedClone"]
        7 JUMPIFNOT                        R2 ; [+13]
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K2 ["Parent"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["releaseReapplyPlan"]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["requestId"]
       17 CALL                             R3 1 0
       18 GETTABLEKS                       R3 R0 K5 ["sourceInstance"]
       20 RETURN                           R3 1
       21 GETTABLEKS                       R3 R0 K6 ["reapplyPlan"]
       23 JUMPIFNOT                        R3 ; [+7]
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K7 ["revertPlan"]
       27 MOVE                             R5 R1
       28 MOVE                             R6 R3
       29 CALL                             R4 2 1
       30 JUMPIF                           R4 ; [+9]
       31 GETUPVAL                         R4 3
       32 CALL                             R4 0 1
       33 JUMPIFNOT                        R4 ; [+4]
       34 GETIMPORT                        R4 K9 [warn]
       36 LOADK                            R5 K10 ["[TextureGen] could not restore the original meshes; leaving the textured result in place"]
       37 CALL                             R4 1 0
       38 LOADNIL                          R4
       39 RETURN                           R4 1
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K11 ["restoreAIGeneratedMarks"]
       43 MOVE                             R5 R1
       44 GETTABLEKS                       R6 R0 K12 ["priorAIMarks"]
       46 CALL                             R4 2 0
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R6 R6 K13 ["getUniqueTag"]
       50 LOADK                            R7 K14 ["TexturedMesh"]
       51 GETUPVAL                         R8 1
       52 GETTABLEKS                       R8 R8 K4 ["requestId"]
       54 CALL                             R6 2 -1
       55 NAMECALL                         R4 R1 K15 ["RemoveTag"]
       57 CALL                             R4 -1 0
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K3 ["releaseReapplyPlan"]
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K4 ["requestId"]
       64 CALL                             R4 1 0
       65 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["revertInsertedModelAsync"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 DUPTABLE                         R7 K6 [{["recordingLabel"] = "Revert AI Textured Model", ["opName"] = "revertInsertAsync", ["revertInPlace"]}]
        7 GETUPVAL                         R9 1
        8 CALL                             R9 0 1
        9 JUMPIFNOT                        R9 ; [+7]
       10 NEWCLOSURE                       R8 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 JUMP                             ; [+1]
       17 LOADNIL                          R8
       18 SETTABLEKS                       R8 R7 K5 ["revertInPlace"]
       20 CALL                             R3 4 -1
       21 RETURN                           R3 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R2 R1 K0 ["releaseReapplyPlan"]
        5 GETTABLEKS                       R3 R0 K1 ["requestId"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K2 [{[1] = "png"}]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_22:
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
       34 GETTABLEKS                       R7 R0 K11 ["MeshReapply"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R0 K12 ["PreviewCarousel"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R0 K13 ["Selection"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETIMPORT                        R10 K1 [script]
       51 GETTABLEKS                       R10 R10 K14 ["Parent"]
       53 GETTABLEKS                       R10 R10 K15 ["TextureGenStrings"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Flags"]
       60 GETTABLEKS                       R11 R11 K17 ["getFFlagDebugReapplyInPlace"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R0 K16 ["Flags"]
       67 GETTABLEKS                       R12 R12 K18 ["getFFlagGen3dExportMeshAtOrigin"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R13 R0 K16 ["Flags"]
       74 GETTABLEKS                       R13 R13 K19 ["getFFlagGen3dPreloadInsertAsset"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K5 [require]
       79 GETTABLEKS                       R14 R0 K16 ["Flags"]
       81 GETTABLEKS                       R14 R14 K20 ["getFFlagGen3dTextureGenMultiMeshExport"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K5 [require]
       86 GETTABLEKS                       R15 R0 K16 ["Flags"]
       88 GETTABLEKS                       R15 R15 K21 ["getFFlagGen3dTextureGenReapplyMeshInPlace"]
       90 CALL                             R14 1 1
       91 DUPCLOSURE                       R15 K22 [PROTO_0]
       92 CAPTURE                          VAL R10
       93 NEWTABLE                         R16 8 0
       95 GETTABLEKS                       R17 R7 K23 ["VIEW_ANGLES"]
       97 GETTABLEKS                       R18 R4 K24 ["makeTranslator"]
       99 LOADK                            R19 K25 ["TextureGen"]
      100 MOVE                             R20 R9
      101 CALL                             R18 2 1
      102 DUPCLOSURE                       R19 K26 [PROTO_1]
      103 CAPTURE                          VAL R18
      104 DUPCLOSURE                       R20 K27 [PROTO_2]
      105 DUPCLOSURE                       R21 K28 [PROTO_3]
      106 DUPCLOSURE                       R22 K29 [PROTO_7]
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R17
      115 SETTABLEKS                       R22 R16 K30 ["generateTextureAsync"]
      117 DUPCLOSURE                       R22 K31 [PROTO_8]
      118 SETTABLEKS                       R22 R16 K32 ["cancelGenerationAsync"]
      120 DUPCLOSURE                       R22 K33 [PROTO_16]
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R19
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R21
      130 SETTABLEKS                       R22 R16 K34 ["insertTexturedModelAsync"]
      132 DUPCLOSURE                       R22 K35 [PROTO_18]
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R2
      138 SETTABLEKS                       R22 R16 K36 ["revertInsertAsync"]
      140 DUPCLOSURE                       R22 K37 [PROTO_19]
      141 CAPTURE                          VAL R14
      142 SETTABLEKS                       R22 R16 K38 ["releaseRevertSnapshot"]
      144 DUPCLOSURE                       R22 K39 [PROTO_22]
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R1
      147 SETTABLEKS                       R22 R16 K40 ["captureSourceInstanceImageAsync"]
      149 RETURN                           R16 1
