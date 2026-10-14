PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["MeshId"]
        2 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 GETIMPORT                        R3 K4 [Content.fromUri]
        9 GETTABLEKS                       R4 R0 K0 ["MeshId"]
       11 CALL                             R3 1 -1
       12 NAMECALL                         R1 R1 K5 ["CreateEditableMeshAsync"]
       14 CALL                             R1 -1 -1
       15 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentCamera"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 DUPTABLE                         R1 K5 [{"cframe", "fieldOfView", "viewportWidthPx", "viewportHeightPx"}]
        8 GETTABLEKS                       R2 R0 K6 ["CFrame"]
       10 SETTABLEKS                       R2 R1 K1 ["cframe"]
       12 GETTABLEKS                       R2 R0 K7 ["FieldOfView"]
       14 SETTABLEKS                       R2 R1 K2 ["fieldOfView"]
       16 GETTABLEKS                       R2 R0 K8 ["ViewportSize"]
       18 GETTABLEKS                       R2 R2 K9 ["X"]
       20 SETTABLEKS                       R2 R1 K3 ["viewportWidthPx"]
       22 GETTABLEKS                       R2 R0 K8 ["ViewportSize"]
       24 GETTABLEKS                       R2 R2 K10 ["Y"]
       26 SETTABLEKS                       R2 R1 K4 ["viewportHeightPx"]
       28 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createNormalizedExportClone"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 LOADNIL                          R4
        7 CALL                             R0 4 2
        8 GETUPVAL                         R2 4
        9 MOVE                             R3 R0
       10 JUMPIF                           R3 ; [+1]
       11 GETUPVAL                         R3 1
       12 CALL                             R2 1 1
       13 JUMPIFNOT                        R0 ; [+3]
       14 NAMECALL                         R3 R0 K1 ["Destroy"]
       16 CALL                             R3 1 0
       17 MOVE                             R3 R2
       18 MOVE                             R4 R1
       19 RETURN                           R3 2

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["exportInstanceToGlbAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["exportInstanceToGlbAsync"]
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 LOADNIL                          R5
       10 CALL                             R0 5 -1
       11 RETURN                           R0 -1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["publishInstanceAsAssetAsync"]
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+41]
        5 JUMPIFNOT                        R2 ; [+40]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["resolveTextureGenExportTarget"]
        9 MOVE                             R4 R0
       10 CALL                             R3 1 3
       11 GETIMPORT                        R6 K3 [pcall]
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R5
       18 CAPTURE                          VAL R2
       19 CALL                             R6 1 3
       20 JUMPIFNOT                        R6 ; [+13]
       21 FASTCALL1                        TYPEOF R7 ; [+3]
       22 MOVE                             R10 R7
       23 GETIMPORT                        R9 K5 [typeof]
       25 CALL                             R9 1 1
       26 JUMPIFNOTEQKS                    R9 K6 ["number"] ; [+7]
       28 DUPTABLE                         R9 K9 [{"assetId", "assetScale"}]
       29 SETTABLEKS                       R7 R9 K7 ["assetId"]
       31 SETTABLEKS                       R8 R9 K8 ["assetScale"]
       33 RETURN                           R9 1
       34 GETIMPORT                        R9 K11 [warn]
       36 LOADK                            R10 K12 ["[TexturePreviewSourceOps] asset-id publish failed: %*"]
       37 FASTCALL1                        TOSTRING R7 ; [+3]
       38 MOVE                             R13 R7
       39 GETIMPORT                        R12 K14 [tostring]
       41 CALL                             R12 1 1
       42 NAMECALL                         R10 R10 K15 ["format"]
       44 CALL                             R10 2 1
       45 CALL                             R9 1 0
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K1 ["resolveTextureGenExportTarget"]
       49 MOVE                             R4 R0
       50 CALL                             R3 1 3
       51 GETIMPORT                        R6 K3 [pcall]
       53 NEWCLOSURE                       R7 P1
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 CALL                             R6 1 3
       60 JUMPIFNOT                        R6 ; [+10]
       61 FASTCALL1                        TYPEOF R7 ; [+3]
       62 MOVE                             R10 R7
       63 GETIMPORT                        R9 K5 [typeof]
       65 CALL                             R9 1 1
       66 JUMPIFNOTEQKS                    R9 K16 ["string"] ; [+4]
       68 LENGTH                           R9 R7
       69 JUMPIFNOTEQKN                    R9 K17 [0] ; [+16]
       71 GETIMPORT                        R9 K11 [warn]
       73 LOADK                            R10 K18 ["[TexturePreviewSourceOps] GLB export failed: %*"]
       74 FASTCALL1                        TOSTRING R7 ; [+3]
       75 MOVE                             R13 R7
       76 GETIMPORT                        R12 K14 [tostring]
       78 CALL                             R12 1 1
       79 NAMECALL                         R10 R10 K15 ["format"]
       81 CALL                             R10 2 1
       82 CALL                             R9 1 0
       83 NEWTABLE                         R9 0 0
       85 RETURN                           R9 1
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K19 ["snapshotExportFingerprint"]
       89 MOVE                             R10 R3
       90 CALL                             R9 1 1
       91 DUPTABLE                         R10 K22 [{"glb", "cachedExport"}]
       92 SETTABLEKS                       R7 R10 K20 ["glb"]
       94 JUMPIFNOT                        R9 ; [+14]
       95 DUPTABLE                         R11 K26 [{"glb", "scale", "pivot", "size"}]
       96 SETTABLEKS                       R7 R11 K20 ["glb"]
       98 SETTABLEKS                       R8 R11 K23 ["scale"]
      100 GETTABLEKS                       R12 R9 K24 ["pivot"]
      102 SETTABLEKS                       R12 R11 K24 ["pivot"]
      104 GETTABLEKS                       R12 R9 K25 ["size"]
      106 SETTABLEKS                       R12 R11 K25 ["size"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R11
      110 SETTABLEKS                       R11 R10 K21 ["cachedExport"]
      112 RETURN                           R10 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolveTextureGenExportTransform"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 4
        5 MOVE                             R7 R3
        6 GETTABLEKS                       R8 R1 K1 ["cframe"]
        8 GETTABLEKS                       R8 R8 K2 ["Position"]
       10 CALL                             R7 1 1
       11 MOVE                             R8 R3
       12 OR                               R9 R6 R4
       13 CALL                             R8 1 1
       14 SUB                              R9 R7 R8
       15 GETTABLEKS                       R10 R9 K3 ["Magnitude"]
       17 LOADK                            R11 K4 [0.001]
       18 JUMPIFNOTLT                      R10 R11 ; [+2]
       20 LOADK                            R9 K5 [{0, 0, 1}]
       21 JUMPIFNOT                        R5 ; [+8]
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K6 ["getCameraDistance"]
       25 GETTABLEKS                       R11 R1 K7 ["fieldOfView"]
       27 MOVE                             R12 R5
       28 CALL                             R10 2 1
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R10 R9 K3 ["Magnitude"]
       32 GETUPVAL                         R11 2
       33 CALL                             R11 0 1
       34 GETUPVAL                         R12 0
       35 GETTABLEKS                       R12 R12 K8 ["resolveTextureGenExportTarget"]
       37 MOVE                             R13 R0
       38 CALL                             R12 1 1
       39 JUMPIFNOT                        R11 ; [+9]
       40 GETUPVAL                         R13 0
       41 GETTABLEKS                       R13 R13 K9 ["getFramingPointsAsync"]
       43 MOVE                             R14 R12
       44 MOVE                             R15 R2
       45 JUMPIF                           R15 ; [+1]
       46 GETUPVAL                         R15 3
       47 CALL                             R13 2 1
       48 JUMP                             ; [+5]
       49 GETUPVAL                         R13 0
       50 GETTABLEKS                       R13 R13 K10 ["getWorldAxisAlignedBoundsCorners"]
       52 MOVE                             R14 R12
       53 CALL                             R13 1 1
       54 NEWTABLE                         R14 0 0
       56 JUMPIFNOT                        R13 ; [+14]
       57 MOVE                             R15 R13
       58 LOADNIL                          R16
       59 LOADNIL                          R17
       60 FORGPREP                         R15
       61 MOVE                             R21 R14
       62 MOVE                             R22 R3
       63 MOVE                             R23 R19
       64 CALL                             R22 1 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R20 K13 [table.insert]
       68 CALL                             R20 -1 0
       69 FORGLOOP                         R15 2 ; [-9]
       71 GETUPVAL                         R15 4
       72 GETTABLEKS                       R15 R15 K14 ["fitCameraFraming"]
       74 MOVE                             R16 R14
       75 MOVE                             R17 R8
       76 MOVE                             R18 R9
       77 MOVE                             R19 R10
       78 DUPTABLE                         R20 K16 [{"fovDeg"}]
       79 GETTABLEKS                       R21 R1 K7 ["fieldOfView"]
       81 SETTABLEKS                       R21 R20 K15 ["fovDeg"]
       83 CALL                             R15 5 3
       84 GETTABLEKS                       R19 R9 K17 ["Unit"]
       86 MUL                              R18 R19 R15
       87 ADD                              R7 R8 R18
       88 GETUPVAL                         R18 5
       89 GETTABLEKS                       R18 R18 K18 ["lookAtExtrinsic"]
       91 MOVE                             R19 R7
       92 MOVE                             R20 R8
       93 GETUPVAL                         R21 4
       94 GETTABLEKS                       R21 R21 K19 ["resolveUpVector"]
       96 MOVE                             R22 R9
       97 CALL                             R21 1 -1
       98 CALL                             R18 -1 1
       99 GETUPVAL                         R19 5
      100 GETTABLEKS                       R19 R19 K20 ["fieldOfViewToIntrinsic"]
      102 GETTABLEKS                       R20 R1 K7 ["fieldOfView"]
      104 JUMPIFNOT                        R11 ; [+4]
      105 GETUPVAL                         R21 6
      106 GETTABLEKS                       R21 R21 K21 ["TEXTURE_CAMERA_CANVAS_PX"]
      108 JUMP                             ; [+2]
      109 GETTABLEKS                       R21 R1 K22 ["viewportWidthPx"]
      111 JUMPIFNOT                        R11 ; [+4]
      112 GETUPVAL                         R22 6
      113 GETTABLEKS                       R22 R22 K21 ["TEXTURE_CAMERA_CANVAS_PX"]
      115 JUMP                             ; [+2]
      116 GETTABLEKS                       R22 R1 K23 ["viewportHeightPx"]
      118 JUMPIFNOT                        R11 ; [+5]
      119 GETUPVAL                         R24 6
      120 GETTABLEKS                       R24 R24 K24 ["TEXTURE_CAMERA_SHIFT_SCALE"]
      122 MUL                              R23 R16 R24
      123 JUMP                             ; [+1]
      124 MOVE                             R23 R16
      125 JUMPIFNOT                        R11 ; [+5]
      126 GETUPVAL                         R25 6
      127 GETTABLEKS                       R25 R25 K24 ["TEXTURE_CAMERA_SHIFT_SCALE"]
      129 MUL                              R24 R17 R25
      130 JUMP                             ; [+1]
      131 MOVE                             R24 R17
      132 CALL                             R19 5 1
      133 RETURN                           R18 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AssetService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["Workspace"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Preview"]
       23 GETTABLEKS                       R4 R4 K12 ["AdaptiveFramingOps"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Preview"]
       30 GETTABLEKS                       R5 R5 K13 ["CameraMathOps"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K14 ["Constants"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K10 [require]
       40 GETTABLEKS                       R7 R0 K15 ["GenerationUtils"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K10 [require]
       45 GETTABLEKS                       R8 R0 K16 ["HostSurface"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K10 [require]
       50 GETTABLEKS                       R9 R0 K11 ["Preview"]
       52 GETTABLEKS                       R9 R9 K17 ["PreviewCaptureOps"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K10 [require]
       57 GETTABLEKS                       R10 R0 K18 ["Flags"]
       59 GETTABLEKS                       R10 R10 K19 ["getFFlagGen3dTextureCameraBackendCanvas"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K10 [require]
       64 GETTABLEKS                       R11 R0 K18 ["Flags"]
       66 GETTABLEKS                       R11 R11 K20 ["getFFlagGen3dTextureGenPreviewAssetIdUpload"]
       68 CALL                             R10 1 1
       69 NEWTABLE                         R11 4 0
       71 DUPCLOSURE                       R12 K21 [PROTO_0]
       72 CAPTURE                          VAL R1
       73 DUPCLOSURE                       R13 K22 [PROTO_1]
       74 CAPTURE                          VAL R2
       75 SETTABLEKS                       R13 R11 K23 ["getStudioCamera"]
       77 DUPCLOSURE                       R13 K24 [PROTO_4]
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R6
       80 SETTABLEKS                       R13 R11 K25 ["prepareSourceAsync"]
       82 DUPCLOSURE                       R13 K26 [PROTO_5]
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R5
       90 SETTABLEKS                       R13 R11 K27 ["computeStudioCameraAsync"]
       92 RETURN                           R11 1
