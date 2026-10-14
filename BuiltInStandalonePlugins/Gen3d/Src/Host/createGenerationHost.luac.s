PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["getText"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Contexts"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K1 ["Localization"]
        7 GETTABLEKS                       R0 R0 K2 ["new"]
        9 DUPTABLE                         R1 K7 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Gen3d"}]
       10 GETUPVAL                         R2 1
       11 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       13 GETUPVAL                         R2 2
       14 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       16 CALL                             R0 1 1
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 GETTABLE                         R1 R2 R0
       10 JUMPIFNOT                        R1 ; [+8]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["destroy"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 0
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R2 R0
       19 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["visible"]
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R1 1
        6 GETTABLEKS                       R2 R0 K1 ["selection"]
        8 GETTABLEKS                       R3 R2 K2 ["uniqueId"]
       10 JUMPIFEQKNIL                     R3 ; [+5]
       12 GETTABLEKS                       R3 R2 K2 ["uniqueId"]
       14 LOADB                            R4 1
       15 SETTABLE                         R4 R1 R3
       16 GETTABLEKS                       R3 R2 K3 ["memberUniqueIds"]
       18 JUMPIFEQKNIL                     R3 ; [+10]
       20 GETTABLEKS                       R3 R2 K3 ["memberUniqueIds"]
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 LOADB                            R8 1
       26 SETTABLE                         R8 R1 R7
       27 FORGLOOP                         R3 2 ; [-3]
       29 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 1
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R1 2
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R6 R6 K0 ["setLabelVisible"]
       11 MOVE                             R7 R5
       12 GETUPVAL                         R10 0
       13 GETTABLE                         R9 R10 R4
       14 JUMPIFEQKNIL                     R9 ; [+2]
       16 LOADB                            R8 0 +1
       17 LOADB                            R8 1
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 2 ; [-12]
       21 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
        7 JUMP                             ; [+11]
        8 GETUPVAL                         R3 0
        9 GETTABLE                         R2 R3 R0
       10 JUMPIFNOT                        R2 ; [+8]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["destroy"]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 0
       17 LOADNIL                          R4
       18 SETTABLE                         R4 R3 R0
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K4 ["attachToInstance"]
       22 MOVE                             R3 R1
       23 DUPTABLE                         R4 K7 [{["autoDestroyOnSuccess"] = True}]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K8 ["setLabelVisible"]
       28 MOVE                             R4 R2
       29 GETUPVAL                         R7 2
       30 GETTABLE                         R6 R7 R0
       31 JUMPIFEQKNIL                     R6 ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 CALL                             R3 2 0
       36 GETUPVAL                         R3 0
       37 SETTABLE                         R2 R3 R0
       38 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instances"]
        3 GETTABLEKS                       R1 R1 K1 ["getInstanceFromUniqueId"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMPIFEQKNIL                     R1 ; [+5]
        9 GETTABLEKS                       R2 R1 K2 ["Parent"]
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 NEWTABLE                         R4 0 1
       17 MOVE                             R5 R1
       18 SETLIST                          R4 R5 1 [1]
       20 NAMECALL                         R2 R2 K3 ["Set"]
       22 CALL                             R2 2 0
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K4 ["View"]
       26 GETTABLEKS                       R2 R2 K5 ["sendIntent"]
       28 GETUPVAL                         R3 3
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K6 ["Intents"]
       32 GETTABLEKS                       R4 R4 K7 ["Open"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["setStatus"]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K1 ["running"]
        5 MOVE                             R6 R2
        6 DUPTABLE                         R7 K5 [{["onActivated"], ["shimmer"] = True}]
        7 NEWCLOSURE                       R8 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R8 R7 K2 ["onActivated"]
       12 CALL                             R3 4 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["setStatus"]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K1 ["failed"]
        5 MOVE                             R6 R2
        6 DUPTABLE                         R7 K3 [{"onActivated"}]
        7 NEWCLOSURE                       R8 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R8 R7 K2 ["onActivated"]
       12 CALL                             R3 4 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["setStatus"]
        8 MOVE                             R4 R2
        9 LOADK                            R5 K1 ["failed"]
       10 MOVE                             R6 R1
       11 DUPTABLE                         R7 K3 [{"onActivated"}]
       12 NEWCLOSURE                       R8 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R8 R7 K2 ["onActivated"]
       17 CALL                             R3 4 0
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+9]
        5 GETIMPORT                        R0 K2 [table.remove]
        7 GETUPVAL                         R1 0
        8 LOADN                            R2 1
        9 CALL                             R0 2 1
       10 MOVE                             R1 R0
       11 CALL                             R1 0 0
       12 JUMPBACK                         ; [-13]
       13 LOADB                            R0 0
       14 SETUPVAL                         R0 1
       15 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 0
       10 LOADB                            R1 1
       11 SETUPVAL                         R1 1
       12 GETIMPORT                        R1 K5 [task.spawn]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TextureGenOps"]
        3 GETTABLEKS                       R0 R0 K1 ["revertInsertAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["requestId"]
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R3 3
       11 CALL                             R0 3 -1
       12 RETURN                           R0 -1

PROTO_15:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 2
        8 JUMPIFNOT                        R0 ; [+23]
        9 JUMPIFNOTEQKB                    R1 TRUE ; [+22]
       11 GETUPVAL                         R2 4
       12 FASTCALL1                        TYPEOF R2 ; [+3]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K3 [typeof]
       16 CALL                             R3 1 1
       17 JUMPIFEQKS                       R3 K4 ["string"] ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R4 5
       21 GETTABLE                         R3 R4 R2
       22 JUMPIFNOT                        R3 ; [+38]
       23 GETUPVAL                         R4 6
       24 GETTABLEKS                       R4 R4 K5 ["destroy"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 0
       28 GETUPVAL                         R4 5
       29 LOADNIL                          R5
       30 SETTABLE                         R5 R4 R2
       31 RETURN                           R0 0
       32 GETUPVAL                         R3 5
       33 GETUPVAL                         R4 4
       34 GETTABLE                         R2 R3 R4
       35 JUMPIFNOT                        R2 ; [+25]
       36 JUMPIFNOT                        R0 ; [+5]
       37 GETUPVAL                         R3 7
       38 LOADK                            R4 K6 ["TextureGen"]
       39 LOADK                            R5 K7 ["ViewportFailed"]
       40 CALL                             R3 2 1
       41 JUMP                             ; [+5]
       42 FASTCALL1                        TOSTRING R1 ; [+3]
       43 MOVE                             R4 R1
       44 GETIMPORT                        R3 K9 [tostring]
       46 CALL                             R3 1 1
       47 GETUPVAL                         R4 4
       48 GETUPVAL                         R5 6
       49 GETTABLEKS                       R5 R5 K10 ["setStatus"]
       51 MOVE                             R6 R2
       52 LOADK                            R7 K11 ["failed"]
       53 MOVE                             R8 R3
       54 DUPTABLE                         R9 K13 [{"onActivated"}]
       55 NEWCLOSURE                       R10 P1
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R10 R9 K12 ["onActivated"]
       60 CALL                             R5 4 0
       61 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 GETUPVAL                         R4 7
       11 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       13 MOVE                             R5 R2
       14 GETIMPORT                        R3 K2 [table.insert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 8
       18 JUMPIFNOT                        R3 ; [+1]
       19 RETURN                           R0 0
       20 LOADB                            R3 1
       21 SETUPVAL                         R3 8
       22 GETIMPORT                        R3 K5 [task.spawn]
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["captureSinglePreviewImageAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["Constants"]
        7 GETTABLEKS                       R2 R2 K2 ["SEED_IMAGE_PREVIEW_AZIMUTH"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["Constants"]
       12 GETTABLEKS                       R3 R3 K3 ["SEED_IMAGE_PREVIEW_ELEVATION"]
       14 CALL                             R0 3 -1
       15 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K2 [{[1] = "png"}]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_19:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+9]
        8 FASTCALL1                        TYPEOF R2 ; [+3]
        9 MOVE                             R4 R2
       10 GETIMPORT                        R3 K3 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+3]
       15 JUMPIFNOTEQKS                    R2 K5 [""] ; [+12]
       17 LOADNIL                          R3
       18 LOADK                            R4 K6 ["Failed to snapshot selection: %*"]
       19 FASTCALL1                        TOSTRING R2 ; [+3]
       20 MOVE                             R7 R2
       21 GETIMPORT                        R6 K8 [tostring]
       23 CALL                             R6 1 1
       24 NAMECALL                         R4 R4 K9 ["format"]
       26 CALL                             R4 2 1
       27 RETURN                           R3 2
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K10 ["getImageDataBase64Async"]
       31 JUMPIF                           R3 ; [+3]
       32 LOADNIL                          R4
       33 LOADK                            R5 K11 ["getImageDataBase64Async unavailable (AssistantApplication missing)"]
       34 RETURN                           R4 2
       35 GETIMPORT                        R4 K1 [pcall]
       37 NEWCLOSURE                       R5 P1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 CALL                             R4 1 2
       41 JUMPIFNOT                        R4 ; [+9]
       42 FASTCALL1                        TYPEOF R5 ; [+3]
       43 MOVE                             R7 R5
       44 GETIMPORT                        R6 K3 [typeof]
       46 CALL                             R6 1 1
       47 JUMPIFNOTEQKS                    R6 K4 ["string"] ; [+3]
       49 JUMPIFNOTEQKS                    R5 K5 [""] ; [+12]
       51 LOADNIL                          R6
       52 LOADK                            R7 K12 ["Failed to encode snapshot: %*"]
       53 FASTCALL1                        TOSTRING R5 ; [+3]
       54 MOVE                             R10 R5
       55 GETIMPORT                        R9 K8 [tostring]
       57 CALL                             R9 1 1
       58 NAMECALL                         R7 R7 K9 ["format"]
       60 CALL                             R7 2 1
       61 RETURN                           R6 2
       62 MOVE                             R6 R5
       63 LOADNIL                          R7
       64 RETURN                           R6 2

PROTO_20:
        0 GETUPVAL                         R3 0
        1 LOADNIL                          R4
        2 SETTABLE                         R4 R3 R0
        3 GETUPVAL                         R3 1
        4 LOADNIL                          R4
        5 SETTABLE                         R4 R3 R0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["getFFlagGen3dTextureGenBatchedPreview"]
        9 CALL                             R3 0 1
       10 JUMPIF                           R3 ; [+3]
       11 NEWTABLE                         R3 0 0
       13 RETURN                           R3 1
       14 NEWTABLE                         R3 4 0
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K1 ["meshGen"]
       19 JUMPIFNOT                        R4 ; [+9]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K2 ["TexturePreviewSourceOps"]
       23 GETTABLEKS                       R5 R5 K3 ["prepareSourceAsync"]
       25 MOVE                             R6 R1
       26 MOVE                             R7 R4
       27 CALL                             R5 2 1
       28 JUMP                             ; [+2]
       29 NEWTABLE                         R5 0 0
       31 GETTABLEKS                       R6 R5 K4 ["assetId"]
       33 JUMPIFEQKNIL                     R6 ; [+18]
       35 GETTABLEKS                       R6 R5 K4 ["assetId"]
       37 SETTABLEKS                       R6 R3 K4 ["assetId"]
       39 GETUPVAL                         R6 1
       40 DUPTABLE                         R7 K6 [{"assetId", "scale"}]
       41 GETTABLEKS                       R8 R5 K4 ["assetId"]
       43 SETTABLEKS                       R8 R7 K4 ["assetId"]
       45 GETTABLEKS                       R9 R5 K8 ["assetScale"]
       47 ORK                              R8 R9 K7 [1]
       48 SETTABLEKS                       R8 R7 K5 ["scale"]
       50 SETTABLE                         R7 R6 R0
       51 JUMP                             ; [+23]
       52 GETTABLEKS                       R6 R5 K9 ["glb"]
       54 JUMPIFEQKNIL                     R6 ; [+20]
       56 GETIMPORT                        R6 K12 [buffer.tostring]
       58 GETUPVAL                         R7 4
       59 GETIMPORT                        R9 K14 [buffer.fromstring]
       61 GETTABLEKS                       R10 R5 K9 ["glb"]
       63 CALL                             R9 1 -1
       64 NAMECALL                         R7 R7 K15 ["Base64Encode"]
       66 CALL                             R7 -1 -1
       67 CALL                             R6 -1 1
       68 SETTABLEKS                       R6 R3 K16 ["glbBase64"]
       70 GETTABLEKS                       R6 R5 K17 ["cachedExport"]
       72 JUMPIFNOT                        R6 ; [+2]
       73 GETUPVAL                         R7 0
       74 SETTABLE                         R6 R7 R0
       75 GETUPVAL                         R6 5
       76 GETTABLEKS                       R6 R6 K18 ["getStudioCamera"]
       78 JUMPIFNOT                        R2 ; [+4]
       79 JUMPIFNOT                        R6 ; [+3]
       80 MOVE                             R7 R6
       81 CALL                             R7 0 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R7
       84 JUMPIFEQKNIL                     R7 ; [+13]
       86 GETUPVAL                         R8 2
       87 GETTABLEKS                       R8 R8 K2 ["TexturePreviewSourceOps"]
       89 GETTABLEKS                       R8 R8 K19 ["computeStudioCameraAsync"]
       91 MOVE                             R9 R1
       92 MOVE                             R10 R7
       93 CALL                             R8 2 2
       94 SETTABLEKS                       R8 R3 K20 ["cameraExtrinsic"]
       96 SETTABLEKS                       R9 R3 K21 ["cameraIntrinsic"]
       98 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getClassified"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K1 ["kind"]
        6 JUMPIFEQKS                       R3 K2 ["single"] ; [+11]
        8 DUPTABLE                         R3 K6 [{["ok"] = False, ["errorMessage"]}]
        9 LOADK                            R4 K7 ["Selection is '%*'; single MeshPart/Model required"]
       10 GETTABLEKS                       R6 R2 K1 ["kind"]
       12 NAMECALL                         R4 R4 K8 ["format"]
       14 CALL                             R4 2 1
       15 SETTABLEKS                       R4 R3 K5 ["errorMessage"]
       17 RETURN                           R3 1
       18 GETTABLEKS                       R4 R2 K9 ["items"]
       20 GETTABLEN                        R3 R4 1
       21 JUMPIFNOTEQKNIL                  R3 ; [+3]
       23 DUPTABLE                         R4 K11 [{["ok"] = False, ["errorMessage"] = "Selection is empty"}]
       24 RETURN                           R4 1
       25 LOADK                            R7 K12 ["PVInstance"]
       26 NAMECALL                         R5 R3 K13 ["IsA"]
       28 CALL                             R5 2 1
       29 FASTCALL2K                       ASSERT R5 K14 ; [+4]
       31 LOADK                            R6 K14 ["single selection must be a PVInstance"]
       32 GETIMPORT                        R4 K16 [assert]
       34 CALL                             R4 2 0
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K17 ["registerInstance"]
       38 MOVE                             R5 R3
       39 CALL                             R4 1 1
       40 GETUPVAL                         R5 2
       41 MOVE                             R6 R4
       42 MOVE                             R7 R3
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 3
       45 LOADK                            R7 K18 ["TextureGen"]
       46 LOADK                            R8 K19 ["ViewportGenerating"]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 4
       49 GETTABLEKS                       R7 R7 K20 ["setStatus"]
       51 MOVE                             R8 R5
       52 LOADK                            R9 K21 ["running"]
       53 MOVE                             R10 R6
       54 DUPTABLE                         R11 K25 [{["onActivated"], ["shimmer"] = True}]
       55 NEWCLOSURE                       R12 P0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R12 R11 K22 ["onActivated"]
       60 CALL                             R7 4 0
       61 GETUPVAL                         R6 6
       62 MOVE                             R7 R3
       63 CALL                             R6 1 2
       64 JUMPIFNOTEQKNIL                  R6 ; [+24]
       66 MOVE                             R8 R7
       67 JUMPIF                           R8 ; [+4]
       68 GETUPVAL                         R8 3
       69 LOADK                            R9 K18 ["TextureGen"]
       70 LOADK                            R10 K26 ["ViewportFailed"]
       71 CALL                             R8 2 1
       72 GETUPVAL                         R9 4
       73 GETTABLEKS                       R9 R9 K20 ["setStatus"]
       75 MOVE                             R10 R5
       76 LOADK                            R11 K27 ["failed"]
       77 MOVE                             R12 R8
       78 DUPTABLE                         R13 K28 [{"onActivated"}]
       79 NEWCLOSURE                       R14 P0
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R14 R13 K22 ["onActivated"]
       84 CALL                             R9 4 0
       85 DUPTABLE                         R8 K6 [{["ok"] = False, ["errorMessage"]}]
       86 SETTABLEKS                       R7 R8 K5 ["errorMessage"]
       88 RETURN                           R8 1
       89 GETUPVAL                         R8 7
       90 MOVE                             R9 R4
       91 MOVE                             R10 R3
       92 LOADB                            R11 1
       93 CALL                             R8 3 1
       94 DUPTABLE                         R9 K37 [{["ok"] = True, ["seedImageBase64"], ["mimeType"] = "image/png", ["selectedUniqueId"], ["glbBase64"], ["assetId"], ["cameraExtrinsic"], ["cameraIntrinsic"]}]
       95 SETTABLEKS                       R6 R9 K29 ["seedImageBase64"]
       97 SETTABLEKS                       R4 R9 K32 ["selectedUniqueId"]
       99 GETTABLEKS                       R10 R8 K33 ["glbBase64"]
      101 SETTABLEKS                       R10 R9 K33 ["glbBase64"]
      103 GETTABLEKS                       R10 R8 K34 ["assetId"]
      105 SETTABLEKS                       R10 R9 K34 ["assetId"]
      107 GETTABLEKS                       R10 R8 K35 ["cameraExtrinsic"]
      109 SETTABLEKS                       R10 R9 K35 ["cameraExtrinsic"]
      111 GETTABLEKS                       R10 R8 K36 ["cameraIntrinsic"]
      113 SETTABLEKS                       R10 R9 K36 ["cameraIntrinsic"]
      115 RETURN                           R9 1

PROTO_22:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+17]
        7 GETTABLEKS                       R3 R1 K3 ["uniqueId"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K1 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+9]
       15 GETTABLEKS                       R3 R1 K5 ["hasUsableImages"]
       17 FASTCALL1                        TYPEOF R3 ; [+2]
       18 GETIMPORT                        R2 K1 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFEQKS                       R2 K6 ["boolean"] ; [+2]
       23 RETURN                           R0 0
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R4 R1 K3 ["uniqueId"]
       27 GETTABLE                         R2 R3 R4
       28 JUMPIFNOTEQKNIL                  R2 ; [+2]
       30 RETURN                           R0 0
       31 GETTABLEKS                       R3 R1 K5 ["hasUsableImages"]
       33 JUMPIF                           R3 ; [+40]
       34 GETTABLEKS                       R5 R1 K7 ["errorMessage"]
       36 FASTCALL1                        TYPEOF R5 ; [+2]
       37 GETIMPORT                        R4 K1 [typeof]
       39 CALL                             R4 1 1
       40 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+8]
       42 GETTABLEKS                       R4 R1 K7 ["errorMessage"]
       44 JUMPIFEQKS                       R4 K8 [""] ; [+4]
       46 GETTABLEKS                       R3 R1 K7 ["errorMessage"]
       48 JUMP                             ; [+4]
       49 GETUPVAL                         R3 1
       50 LOADK                            R4 K9 ["TextureGen"]
       51 LOADK                            R5 K10 ["ViewportFailed"]
       52 CALL                             R3 2 1
       53 GETTABLEKS                       R4 R1 K3 ["uniqueId"]
       55 GETUPVAL                         R6 0
       56 GETTABLE                         R5 R6 R4
       57 JUMPIFNOTEQKNIL                  R5 ; [+2]
       59 RETURN                           R0 0
       60 GETUPVAL                         R6 2
       61 GETTABLEKS                       R6 R6 K11 ["setStatus"]
       63 MOVE                             R7 R5
       64 LOADK                            R8 K12 ["failed"]
       65 MOVE                             R9 R3
       66 DUPTABLE                         R10 K14 [{"onActivated"}]
       67 NEWCLOSURE                       R11 P0
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R11 R10 K13 ["onActivated"]
       72 CALL                             R6 4 0
       73 RETURN                           R0 0
       74 GETUPVAL                         R3 4
       75 GETTABLEKS                       R3 R3 K15 ["instances"]
       77 GETTABLEKS                       R3 R3 K16 ["getInstanceFromUniqueId"]
       79 GETTABLEKS                       R4 R1 K3 ["uniqueId"]
       81 CALL                             R3 1 1
       82 JUMPIFNOTEQKNIL                  R3 ; [+2]
       84 RETURN                           R0 0
       85 GETUPVAL                         R4 2
       86 GETTABLEKS                       R4 R4 K11 ["setStatus"]
       88 MOVE                             R5 R2
       89 LOADK                            R6 K17 ["running"]
       90 GETUPVAL                         R7 1
       91 LOADK                            R8 K9 ["TextureGen"]
       92 LOADK                            R9 K18 ["ViewportActionRequired"]
       93 CALL                             R7 2 1
       94 DUPTABLE                         R8 K23 [{["onActivated"], ["emphasized"] = True, ["shimmer"] = False}]
       95 GETTABLEKS                       R10 R1 K3 ["uniqueId"]
       97 NEWCLOSURE                       R9 P0
       98 CAPTURE                          UPVAL U3
       99 CAPTURE                          VAL R10
      100 SETTABLEKS                       R9 R8 K13 ["onActivated"]
      102 CALL                             R4 4 0
      103 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getClassified"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K1 ["kind"]
        6 JUMPIFEQKS                       R3 K2 ["multi"] ; [+11]
        8 DUPTABLE                         R3 K6 [{["ok"] = False, ["errorMessage"]}]
        9 LOADK                            R4 K7 ["Selection is '%*'; multiple MeshPart/Model required"]
       10 GETTABLEKS                       R6 R2 K1 ["kind"]
       12 NAMECALL                         R4 R4 K8 ["format"]
       14 CALL                             R4 2 1
       15 SETTABLEKS                       R4 R3 K5 ["errorMessage"]
       17 RETURN                           R3 1
       18 GETTABLEKS                       R4 R2 K9 ["items"]
       20 LENGTH                           R3 R4
       21 JUMPIFNOTEQKN                    R3 K10 [0] ; [+3]
       23 DUPTABLE                         R3 K12 [{["ok"] = False, ["errorMessage"] = "Selection is empty"}]
       24 RETURN                           R3 1
       25 NEWTABLE                         R3 0 0
       27 GETTABLEKS                       R4 R2 K9 ["items"]
       29 LOADNIL                          R5
       30 LOADNIL                          R6
       31 FORGPREP                         R4
       32 LOADK                            R12 K13 ["PVInstance"]
       33 NAMECALL                         R10 R8 K14 ["IsA"]
       35 CALL                             R10 2 1
       36 FASTCALL2K                       ASSERT R10 K15 ; [+4]
       38 LOADK                            R11 K15 ["multi selection must contain only PVInstances"]
       39 GETIMPORT                        R9 K17 [assert]
       41 CALL                             R9 2 0
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R9 R9 K18 ["registerInstance"]
       45 MOVE                             R10 R8
       46 CALL                             R9 1 1
       47 GETUPVAL                         R10 2
       48 MOVE                             R11 R9
       49 MOVE                             R12 R8
       50 CALL                             R10 2 1
       51 GETUPVAL                         R11 3
       52 LOADK                            R12 K19 ["TextureGen"]
       53 LOADK                            R13 K20 ["ViewportGenerating"]
       54 CALL                             R11 2 1
       55 GETUPVAL                         R12 4
       56 GETTABLEKS                       R12 R12 K21 ["setStatus"]
       58 MOVE                             R13 R10
       59 LOADK                            R14 K22 ["running"]
       60 MOVE                             R15 R11
       61 DUPTABLE                         R16 K26 [{["onActivated"], ["shimmer"] = True}]
       62 NEWCLOSURE                       R17 P0
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R9
       65 SETTABLEKS                       R17 R16 K23 ["onActivated"]
       67 CALL                             R12 4 0
       68 DUPTABLE                         R13 K29 [{"uniqueId", "displayName"}]
       69 SETTABLEKS                       R9 R13 K27 ["uniqueId"]
       71 GETTABLEKS                       R14 R8 K30 ["Name"]
       73 SETTABLEKS                       R14 R13 K28 ["displayName"]
       75 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       77 MOVE                             R12 R3
       78 GETIMPORT                        R11 K33 [table.insert]
       80 CALL                             R11 2 0
       81 FORGLOOP                         R4 2 ; [-50]
       83 DUPTABLE                         R4 K35 [{["ok"] = True, ["jobs"]}]
       84 SETTABLEKS                       R3 R4 K34 ["jobs"]
       86 RETURN                           R4 1

PROTO_24:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R3 R1 K3 ["uniqueId"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K1 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFEQKS                       R2 K4 ["string"] ; [+3]
       15 DUPTABLE                         R2 K9 [{["ok"] = False, ["errorMessage"] = "Invalid GetJobSeed payload"}]
       16 RETURN                           R2 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K10 ["instances"]
       20 GETTABLEKS                       R2 R2 K11 ["getInstanceFromUniqueId"]
       22 GETTABLEKS                       R3 R1 K3 ["uniqueId"]
       24 CALL                             R2 1 1
       25 JUMPIF                           R2 ; [+30]
       26 LOADK                            R3 K12 ["Instance '%*' no longer available"]
       27 GETTABLEKS                       R5 R1 K3 ["uniqueId"]
       29 NAMECALL                         R3 R3 K13 ["format"]
       31 CALL                             R3 2 1
       32 GETTABLEKS                       R4 R1 K3 ["uniqueId"]
       34 GETUPVAL                         R6 1
       35 GETTABLE                         R5 R6 R4
       36 JUMPIFNOTEQKNIL                  R5 ; [+2]
       38 JUMP                             ; [+13]
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K14 ["setStatus"]
       42 MOVE                             R7 R5
       43 LOADK                            R8 K15 ["failed"]
       44 MOVE                             R9 R3
       45 DUPTABLE                         R10 K17 [{"onActivated"}]
       46 NEWCLOSURE                       R11 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       51 CALL                             R6 4 0
       52 DUPTABLE                         R4 K18 [{["ok"] = False, ["errorMessage"]}]
       53 SETTABLEKS                       R3 R4 K7 ["errorMessage"]
       55 RETURN                           R4 1
       56 GETUPVAL                         R3 4
       57 MOVE                             R4 R2
       58 CALL                             R3 1 2
       59 JUMPIFNOTEQKNIL                  R3 ; [+31]
       61 GETTABLEKS                       R5 R1 K3 ["uniqueId"]
       63 MOVE                             R6 R4
       64 JUMPIF                           R6 ; [+4]
       65 GETUPVAL                         R6 5
       66 LOADK                            R7 K19 ["TextureGen"]
       67 LOADK                            R8 K20 ["ViewportFailed"]
       68 CALL                             R6 2 1
       69 GETUPVAL                         R8 1
       70 GETTABLE                         R7 R8 R5
       71 JUMPIFNOTEQKNIL                  R7 ; [+2]
       73 JUMP                             ; [+13]
       74 GETUPVAL                         R8 2
       75 GETTABLEKS                       R8 R8 K14 ["setStatus"]
       77 MOVE                             R9 R7
       78 LOADK                            R10 K15 ["failed"]
       79 MOVE                             R11 R6
       80 DUPTABLE                         R12 K17 [{"onActivated"}]
       81 NEWCLOSURE                       R13 P0
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          VAL R5
       84 SETTABLEKS                       R13 R12 K16 ["onActivated"]
       86 CALL                             R8 4 0
       87 DUPTABLE                         R5 K18 [{["ok"] = False, ["errorMessage"]}]
       88 SETTABLEKS                       R4 R5 K7 ["errorMessage"]
       90 RETURN                           R5 1
       91 GETUPVAL                         R5 6
       92 GETTABLEKS                       R6 R1 K3 ["uniqueId"]
       94 MOVE                             R7 R2
       95 LOADB                            R8 0
       96 CALL                             R5 3 1
       97 DUPTABLE                         R6 K27 [{["ok"] = True, ["seedImageBase64"], ["mimeType"] = "image/png", ["glbBase64"], ["assetId"]}]
       98 SETTABLEKS                       R3 R6 K22 ["seedImageBase64"]
      100 GETTABLEKS                       R7 R5 K25 ["glbBase64"]
      102 SETTABLEKS                       R7 R6 K25 ["glbBase64"]
      104 GETTABLEKS                       R7 R5 K26 ["assetId"]
      106 SETTABLEKS                       R7 R6 K26 ["assetId"]
      108 RETURN                           R6 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TextureGenOps"]
        3 GETTABLEKS                       R0 R0 K1 ["generateTextureAsync"]
        5 DUPTABLE                         R1 K15 [{"requestId", "textPrompt", "hintImage", "hintImageContentType", "selectedUniqueId", "model", "cameraExtrinsic", "cameraIntrinsic", "cachedExport", "cachedAssetId", "cachedAssetScale", "autoSelectView", "telemetryContext"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["requestId"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K3 ["textPrompt"]
       12 GETUPVAL                         R2 3
       13 SETTABLEKS                       R2 R1 K4 ["hintImage"]
       15 GETUPVAL                         R2 4
       16 SETTABLEKS                       R2 R1 K5 ["hintImageContentType"]
       18 GETUPVAL                         R2 5
       19 SETTABLEKS                       R2 R1 K6 ["selectedUniqueId"]
       21 GETUPVAL                         R2 6
       22 SETTABLEKS                       R2 R1 K7 ["model"]
       24 GETUPVAL                         R2 7
       25 SETTABLEKS                       R2 R1 K8 ["cameraExtrinsic"]
       27 GETUPVAL                         R2 8
       28 SETTABLEKS                       R2 R1 K9 ["cameraIntrinsic"]
       30 GETUPVAL                         R2 9
       31 SETTABLEKS                       R2 R1 K10 ["cachedExport"]
       33 GETUPVAL                         R3 10
       34 JUMPIFNOT                        R3 ; [+4]
       35 GETUPVAL                         R2 10
       36 GETTABLEKS                       R2 R2 K16 ["assetId"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R2
       40 SETTABLEKS                       R2 R1 K11 ["cachedAssetId"]
       42 GETUPVAL                         R3 10
       43 JUMPIFNOT                        R3 ; [+4]
       44 GETUPVAL                         R2 10
       45 GETTABLEKS                       R2 R2 K17 ["scale"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R2
       49 SETTABLEKS                       R2 R1 K12 ["cachedAssetScale"]
       51 GETUPVAL                         R2 11
       52 SETTABLEKS                       R2 R1 K13 ["autoSelectView"]
       54 DUPTABLE                         R2 K21 [{["surface"], ["isManualRun"] = True}]
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R3 R3 K22 ["Gen3dTypes"]
       58 GETTABLEKS                       R3 R3 K23 ["Enums"]
       60 GETTABLEKS                       R3 R3 K24 ["TextureGenSurface"]
       62 GETTABLEKS                       R3 R3 K25 ["Gen3dPanel"]
       64 SETTABLEKS                       R3 R2 K18 ["surface"]
       66 SETTABLEKS                       R2 R1 K14 ["telemetryContext"]
       68 GETUPVAL                         R2 12
       69 GETUPVAL                         R3 13
       70 LOADNIL                          R4
       71 CALL                             R0 4 0
       72 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CALL                             R0 1 2
       18 JUMPIF                           R0 ; [+27]
       19 GETUPVAL                         R3 14
       20 GETUPVAL                         R4 5
       21 GETTABLE                         R2 R3 R4
       22 JUMPIFNOT                        R2 ; [+19]
       23 GETUPVAL                         R3 5
       24 FASTCALL1                        TOSTRING R1 ; [+3]
       25 MOVE                             R5 R1
       26 GETIMPORT                        R4 K3 [tostring]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 15
       30 GETTABLEKS                       R5 R5 K4 ["setStatus"]
       32 MOVE                             R6 R2
       33 LOADK                            R7 K5 ["failed"]
       34 MOVE                             R8 R4
       35 DUPTABLE                         R9 K7 [{"onActivated"}]
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          UPVAL U16
       38 CAPTURE                          VAL R3
       39 SETTABLEKS                       R10 R9 K6 ["onActivated"]
       41 CALL                             R5 4 0
       42 GETUPVAL                         R3 17
       43 GETUPVAL                         R4 1
       44 LOADNIL                          R5
       45 SETTABLE                         R5 R3 R4
       46 GETUPVAL                         R2 18
       47 GETUPVAL                         R4 19
       48 GETTABLEKS                       R4 R4 K8 ["TextureGenerationComplete"]
       50 LOADNIL                          R5
       51 DUPTABLE                         R6 K12 [{"requestId", "ok", "errorMessage"}]
       52 GETUPVAL                         R7 1
       53 SETTABLEKS                       R7 R6 K9 ["requestId"]
       55 SETTABLEKS                       R0 R6 K10 ["ok"]
       57 JUMPIFNOT                        R0 ; [+2]
       58 LOADNIL                          R7
       59 JUMP                             ; [+5]
       60 FASTCALL1                        TOSTRING R1 ; [+3]
       61 MOVE                             R8 R1
       62 GETIMPORT                        R7 K3 [tostring]
       64 CALL                             R7 1 1
       65 SETTABLEKS                       R7 R6 K11 ["errorMessage"]
       67 NAMECALL                         R2 R2 K13 ["FireGuest"]
       69 CALL                             R2 4 0
       70 RETURN                           R0 0

PROTO_27:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R1 K3 ["requestId"]
       10 GETTABLEKS                       R3 R1 K4 ["slotIndex"]
       12 GETTABLEKS                       R4 R1 K5 ["imageBase64"]
       14 GETTABLEKS                       R5 R1 K6 ["mimeType"]
       16 GETTABLEKS                       R6 R1 K7 ["prompt"]
       18 GETTABLEKS                       R7 R1 K8 ["selectedUniqueId"]
       20 GETTABLEKS                       R10 R1 K9 ["model"]
       22 FASTCALL1                        TYPEOF R10 ; [+2]
       23 GETIMPORT                        R9 K1 [typeof]
       25 CALL                             R9 1 1
       26 JUMPIFNOTEQKS                    R9 K10 ["string"] ; [+4]
       28 GETTABLEKS                       R8 R1 K9 ["model"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R8
       32 GETTABLEKS                       R11 R1 K11 ["cameraExtrinsic"]
       34 FASTCALL1                        TYPEOF R11 ; [+2]
       35 GETIMPORT                        R10 K1 [typeof]
       37 CALL                             R10 1 1
       38 JUMPIFNOTEQKS                    R10 K2 ["table"] ; [+4]
       40 GETTABLEKS                       R9 R1 K11 ["cameraExtrinsic"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R9
       44 GETTABLEKS                       R12 R1 K12 ["cameraIntrinsic"]
       46 FASTCALL1                        TYPEOF R12 ; [+2]
       47 GETIMPORT                        R11 K1 [typeof]
       49 CALL                             R11 1 1
       50 JUMPIFNOTEQKS                    R11 K2 ["table"] ; [+4]
       52 GETTABLEKS                       R10 R1 K12 ["cameraIntrinsic"]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R10
       56 GETTABLEKS                       R13 R1 K13 ["autoSelectView"]
       58 FASTCALL1                        TYPEOF R13 ; [+2]
       59 GETIMPORT                        R12 K1 [typeof]
       61 CALL                             R12 1 1
       62 JUMPIFNOTEQKS                    R12 K14 ["boolean"] ; [+4]
       64 GETTABLEKS                       R11 R1 K13 ["autoSelectView"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R11
       68 FASTCALL1                        TYPEOF R2 ; [+3]
       69 MOVE                             R13 R2
       70 GETIMPORT                        R12 K1 [typeof]
       72 CALL                             R12 1 1
       73 JUMPIFNOTEQKS                    R12 K10 ["string"] ; [+33]
       75 FASTCALL1                        TYPEOF R3 ; [+3]
       76 MOVE                             R13 R3
       77 GETIMPORT                        R12 K1 [typeof]
       79 CALL                             R12 1 1
       80 JUMPIFNOTEQKS                    R12 K15 ["number"] ; [+26]
       82 FASTCALL1                        TYPEOF R4 ; [+3]
       83 MOVE                             R13 R4
       84 GETIMPORT                        R12 K1 [typeof]
       86 CALL                             R12 1 1
       87 JUMPIFNOTEQKS                    R12 K10 ["string"] ; [+19]
       89 JUMPIFEQKS                       R4 K16 [""] ; [+17]
       91 FASTCALL1                        TYPEOF R6 ; [+3]
       92 MOVE                             R13 R6
       93 GETIMPORT                        R12 K1 [typeof]
       95 CALL                             R12 1 1
       96 JUMPIFNOTEQKS                    R12 K10 ["string"] ; [+10]
       98 FASTCALL1                        TYPEOF R7 ; [+3]
       99 MOVE                             R13 R7
      100 GETIMPORT                        R12 K1 [typeof]
      102 CALL                             R12 1 1
      103 JUMPIFNOTEQKS                    R12 K10 ["string"] ; [+3]
      105 JUMPIFNOTEQKS                    R7 K16 [""] ; [+13]
      107 GETUPVAL                         R12 0
      108 GETUPVAL                         R14 1
      109 GETTABLEKS                       R14 R14 K17 ["TextureGenerationComplete"]
      111 LOADNIL                          R15
      112 DUPTABLE                         R16 K22 [{["requestId"], ["ok"] = False, ["errorMessage"] = "Invalid PickImageAndGenerateTexture payload"}]
      113 SETTABLEKS                       R2 R16 K3 ["requestId"]
      115 NAMECALL                         R12 R12 K23 ["FireGuest"]
      117 CALL                             R12 4 0
      118 RETURN                           R0 0
      119 GETUPVAL                         R12 2
      120 SETTABLE                         R7 R12 R2
      121 GETUPVAL                         R13 3
      122 GETTABLE                         R12 R13 R7
      123 JUMPIFEQKNIL                     R12 ; [+18]
      125 GETUPVAL                         R13 4
      126 LOADK                            R14 K24 ["TextureGen"]
      127 LOADK                            R15 K25 ["ViewportRetexturing"]
      128 CALL                             R13 2 1
      129 GETUPVAL                         R14 5
      130 GETTABLEKS                       R14 R14 K26 ["setStatus"]
      132 MOVE                             R15 R12
      133 LOADK                            R16 K27 ["running"]
      134 MOVE                             R17 R13
      135 DUPTABLE                         R18 K31 [{["onActivated"], ["shimmer"] = True}]
      136 NEWCLOSURE                       R19 P0
      137 CAPTURE                          UPVAL U6
      138 CAPTURE                          VAL R7
      139 SETTABLEKS                       R19 R18 K28 ["onActivated"]
      141 CALL                             R14 4 0
      142 FASTCALL1                        TYPEOF R5 ; [+3]
      143 MOVE                             R15 R5
      144 GETIMPORT                        R14 K1 [typeof]
      146 CALL                             R14 1 1
      147 JUMPIFNOTEQKS                    R14 K10 ["string"] ; [+5]
      149 JUMPIFEQKS                       R5 K16 [""] ; [+3]
      151 MOVE                             R13 R5
      152 JUMP                             ; [+1]
      153 LOADK                            R13 K32 ["image/png"]
      154 GETUPVAL                         R14 7
      155 GETIMPORT                        R16 K35 [buffer.fromstring]
      157 MOVE                             R17 R4
      158 CALL                             R16 1 -1
      159 NAMECALL                         R14 R14 K36 ["Base64Decode"]
      161 CALL                             R14 -1 1
      162 GETUPVAL                         R16 8
      163 GETTABLE                         R15 R16 R7
      164 GETUPVAL                         R16 8
      165 LOADNIL                          R17
      166 SETTABLE                         R17 R16 R7
      167 GETUPVAL                         R17 9
      168 GETTABLE                         R16 R17 R7
      169 GETUPVAL                         R17 9
      170 LOADNIL                          R18
      171 SETTABLE                         R18 R17 R7
      172 GETUPVAL                         R17 10
      173 GETTABLEKS                       R17 R17 K37 ["getFStringTextureGenTexturePromptTemplate"]
      175 CALL                             R17 0 1
      176 GETUPVAL                         R19 10
      177 GETTABLEKS                       R19 R19 K38 ["getFFlagTextureGenTexturePromptTemplateEnabled"]
      179 CALL                             R19 0 1
      180 JUMPIFNOT                        R19 ; [+8]
      181 JUMPIFEQKS                       R17 K16 [""] ; [+7]
      183 GETIMPORT                        R18 K40 [string.format]
      185 MOVE                             R19 R17
      186 MOVE                             R20 R6
      187 CALL                             R18 2 1
      188 JUMP                             ; [+12]
      189 GETUPVAL                         R19 10
      190 GETTABLEKS                       R19 R19 K41 ["getFFlagTextureGenComposerRevamp"]
      192 CALL                             R19 0 1
      193 JUMPIFNOT                        R19 ; [+2]
      194 MOVE                             R18 R6
      195 JUMP                             ; [+5]
      196 GETIMPORT                        R18 K40 [string.format]
      198 LOADK                            R19 K42 ["%s. Do not add any new geometry to the object. Keep the exact alignment of the original image. This is used to generate a texture for a 3D object."]
      199 MOVE                             R20 R6
      200 CALL                             R18 2 1
      201 GETIMPORT                        R19 K45 [task.spawn]
      203 NEWCLOSURE                       R20 P1
      204 CAPTURE                          UPVAL U11
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R18
      207 CAPTURE                          VAL R14
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R8
      211 CAPTURE                          VAL R9
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R16
      215 CAPTURE                          VAL R11
      216 CAPTURE                          UPVAL U12
      217 CAPTURE                          UPVAL U13
      218 CAPTURE                          UPVAL U3
      219 CAPTURE                          UPVAL U5
      220 CAPTURE                          UPVAL U6
      221 CAPTURE                          UPVAL U2
      222 CAPTURE                          UPVAL U0
      223 CAPTURE                          UPVAL U1
      224 CALL                             R19 1 0
      225 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TextureGenOps"]
        3 GETTABLEKS                       R0 R0 K1 ["insertTexturedModelAsync"]
        5 DUPTABLE                         R1 K6 [{["requestId"], ["replaceInPlace"], ["selectInserted"] = False}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["requestId"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K7 ["getFFlagTextureGenStudioReplaceInPlace"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K3 ["replaceInPlace"]
       15 GETUPVAL                         R2 3
       16 GETUPVAL                         R3 4
       17 CALL                             R0 3 0
       18 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 GETUPVAL                         R4 9
       13 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       15 MOVE                             R5 R2
       16 GETIMPORT                        R3 K2 [table.insert]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R3 10
       20 JUMPIFNOT                        R3 ; [+1]
       21 RETURN                           R0 0
       22 LOADB                            R3 1
       23 SETUPVAL                         R3 10
       24 GETIMPORT                        R3 K5 [task.spawn]
       26 NEWCLOSURE                       R4 P1
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U10
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["requestId"]
        2 GETIMPORT                        R2 K2 [pcall]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R2 1 2
       11 GETUPVAL                         R5 4
       12 GETTABLE                         R4 R5 R1
       13 GETUPVAL                         R5 4
       14 LOADNIL                          R6
       15 SETTABLE                         R6 R5 R1
       16 MOVE                             R5 R4
       17 JUMPIFNOT                        R5 ; [+2]
       18 GETUPVAL                         R6 5
       19 GETTABLE                         R5 R6 R4
       20 LOADB                            R6 0
       21 JUMPIFNOT                        R5 ; [+89]
       22 JUMPIFNOT                        R2 ; [+70]
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R7 R7 K3 ["getGenerationSession"]
       26 MOVE                             R8 R1
       27 CALL                             R7 1 1
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K4 ["getFFlagTextureGenRevertAfterInsert"]
       31 CALL                             R8 0 1
       32 JUMPIFNOT                        R8 ; [+16]
       33 LOADB                            R8 0
       34 GETTABLEKS                       R9 R7 K5 ["loadedModel"]
       36 JUMPIFEQKNIL                     R9 ; [+12]
       38 LOADB                            R8 1
       39 GETTABLEKS                       R9 R7 K6 ["replacedInstance"]
       41 JUMPIFNOTEQKNIL                  R9 ; [+7]
       43 GETTABLEKS                       R9 R7 K7 ["reappliedTarget"]
       45 JUMPIFNOTEQKNIL                  R9 ; [+2]
       47 LOADB                            R8 0 +1
       48 LOADB                            R8 1
       49 JUMPIFNOT                        R8 ; [+33]
       50 LOADB                            R6 1
       51 GETTABLEKS                       R9 R7 K5 ["loadedModel"]
       53 GETUPVAL                         R10 6
       54 MOVE                             R11 R4
       55 MOVE                             R12 R9
       56 CALL                             R10 2 1
       57 GETUPVAL                         R11 7
       58 GETTABLEKS                       R11 R11 K8 ["setStatus"]
       60 MOVE                             R12 R10
       61 LOADK                            R13 K9 ["succeeded"]
       62 GETUPVAL                         R14 8
       63 LOADK                            R15 K10 ["TextureGen"]
       64 LOADK                            R16 K11 ["ViewportRetexturingComplete"]
       65 CALL                             R14 2 1
       66 DUPTABLE                         R15 K13 [{"onRevert"}]
       67 NEWCLOSURE                       R16 P1
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          UPVAL U8
       76 CAPTURE                          UPVAL U9
       77 CAPTURE                          UPVAL U10
       78 CAPTURE                          UPVAL U11
       79 SETTABLEKS                       R16 R15 K12 ["onRevert"]
       81 CALL                             R11 4 0
       82 JUMP                             ; [+28]
       83 GETUPVAL                         R9 7
       84 GETTABLEKS                       R9 R9 K8 ["setStatus"]
       86 MOVE                             R10 R5
       87 LOADK                            R11 K9 ["succeeded"]
       88 CALL                             R9 2 0
       89 GETUPVAL                         R9 5
       90 LOADNIL                          R10
       91 SETTABLE                         R10 R9 R4
       92 JUMP                             ; [+18]
       93 FASTCALL1                        TOSTRING R3 ; [+3]
       94 MOVE                             R8 R3
       95 GETIMPORT                        R7 K15 [tostring]
       97 CALL                             R7 1 1
       98 GETUPVAL                         R8 7
       99 GETTABLEKS                       R8 R8 K8 ["setStatus"]
      101 MOVE                             R9 R5
      102 LOADK                            R10 K16 ["failed"]
      103 MOVE                             R11 R7
      104 DUPTABLE                         R12 K18 [{"onActivated"}]
      105 NEWCLOSURE                       R13 P2
      106 CAPTURE                          UPVAL U9
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R13 R12 K17 ["onActivated"]
      110 CALL                             R8 4 0
      111 JUMPIF                           R6 ; [+10]
      112 GETUPVAL                         R7 0
      113 GETTABLEKS                       R7 R7 K19 ["TextureGenOps"]
      115 GETTABLEKS                       R7 R7 K20 ["releaseRevertSnapshot"]
      117 DUPTABLE                         R8 K21 [{"requestId"}]
      118 SETTABLEKS                       R1 R8 K0 ["requestId"]
      120 GETUPVAL                         R9 3
      121 CALL                             R7 2 0
      122 GETUPVAL                         R7 12
      123 GETUPVAL                         R9 13
      124 GETTABLEKS                       R9 R9 K22 ["InsertComplete"]
      126 LOADNIL                          R10
      127 DUPTABLE                         R11 K26 [{"requestId", "ok", "selectedUniqueId", "errorMessage"}]
      128 SETTABLEKS                       R1 R11 K0 ["requestId"]
      130 SETTABLEKS                       R2 R11 K23 ["ok"]
      132 SETTABLEKS                       R4 R11 K24 ["selectedUniqueId"]
      134 JUMPIFNOT                        R2 ; [+2]
      135 LOADNIL                          R12
      136 JUMP                             ; [+5]
      137 FASTCALL1                        TOSTRING R3 ; [+3]
      138 MOVE                             R13 R3
      139 GETIMPORT                        R12 K15 [tostring]
      141 CALL                             R12 1 1
      142 SETTABLEKS                       R12 R11 K25 ["errorMessage"]
      144 NAMECALL                         R7 R7 K27 ["FireGuest"]
      146 CALL                             R7 4 0
      147 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_32:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R1 K3 ["requestId"]
       10 FASTCALL1                        TYPEOF R2 ; [+3]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K1 [typeof]
       14 CALL                             R3 1 1
       15 JUMPIFEQKS                       R3 K4 ["string"] ; [+2]
       17 RETURN                           R0 0
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R1
       21 GETUPVAL                         R5 1
       22 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       24 MOVE                             R6 R3
       25 GETIMPORT                        R4 K6 [table.insert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R4 2
       29 JUMPIFNOT                        R4 ; [+1]
       30 RETURN                           R0 0
       31 LOADB                            R4 1
       32 SETUPVAL                         R4 2
       33 GETIMPORT                        R4 K9 [task.spawn]
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U2
       38 CALL                             R4 1 0
       39 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TextureGenOps"]
        3 GETTABLEKS                       R0 R0 K1 ["cancelGenerationAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["requestId"]
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_34:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R1 K3 ["requestId"]
       10 FASTCALL1                        TYPEOF R2 ; [+3]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K1 [typeof]
       14 CALL                             R3 1 1
       15 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+34]
       17 GETUPVAL                         R5 0
       18 GETTABLE                         R4 R5 R2
       19 JUMPIFNOTEQKNIL                  R4 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 GETIMPORT                        R4 K6 [pcall]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U2
       29 CALL                             R4 1 0
       30 GETUPVAL                         R4 0
       31 LOADNIL                          R5
       32 SETTABLE                         R5 R4 R2
       33 JUMPIFNOT                        R3 ; [+16]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K7 ["getFFlagGen3dTextureGenCancelAbortsJob"]
       37 CALL                             R4 0 1
       38 JUMPIFNOT                        R4 ; [+11]
       39 GETUPVAL                         R4 4
       40 GETUPVAL                         R6 5
       41 GETTABLEKS                       R6 R6 K8 ["TextureGenerationComplete"]
       43 LOADNIL                          R7
       44 DUPTABLE                         R8 K13 [{["requestId"], ["ok"] = False, ["errorMessage"] = "Cancelled"}]
       45 SETTABLEKS                       R2 R8 K3 ["requestId"]
       47 NAMECALL                         R4 R4 K14 ["FireGuest"]
       49 CALL                             R4 4 0
       50 GETTABLEKS                       R3 R1 K15 ["selectedUniqueId"]
       52 FASTCALL1                        TYPEOF R3 ; [+3]
       53 MOVE                             R5 R3
       54 GETIMPORT                        R4 K1 [typeof]
       56 CALL                             R4 1 1
       57 JUMPIFEQKS                       R4 K4 ["string"] ; [+2]
       59 RETURN                           R0 0
       60 GETUPVAL                         R5 6
       61 GETTABLE                         R4 R5 R3
       62 JUMPIFNOT                        R4 ; [+8]
       63 GETUPVAL                         R5 7
       64 GETTABLEKS                       R5 R5 K16 ["destroy"]
       66 MOVE                             R6 R4
       67 CALL                             R5 1 0
       68 GETUPVAL                         R5 6
       69 LOADNIL                          R6
       70 SETTABLE                         R6 R5 R3
       71 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["destroy"]
        7 MOVE                             R6 R4
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-6]
       11 GETIMPORT                        R0 K3 [table.clear]
       13 GETUPVAL                         R1 0
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 2
       16 CALL                             R0 0 0
       17 GETUPVAL                         R0 3
       18 JUMPIFNOT                        R0 ; [+2]
       19 GETUPVAL                         R0 3
       20 CALL                             R0 0 0
       21 GETUPVAL                         R0 4
       22 JUMPIFNOT                        R0 ; [+2]
       23 GETUPVAL                         R0 4
       24 CALL                             R0 0 0
       25 GETUPVAL                         R0 5
       26 JUMPIFNOT                        R0 ; [+2]
       27 GETUPVAL                         R0 5
       28 CALL                             R0 0 0
       29 GETUPVAL                         R0 6
       30 JUMPIFEQKNIL                     R0 ; [+3]
       32 GETUPVAL                         R0 6
       33 CALL                             R0 0 0
       34 GETUPVAL                         R0 7
       35 JUMPIFNOT                        R0 ; [+2]
       36 GETUPVAL                         R0 7
       37 CALL                             R0 0 0
       38 GETUPVAL                         R0 8
       39 JUMPIFNOT                        R0 ; [+2]
       40 GETUPVAL                         R0 8
       41 CALL                             R0 0 0
       42 GETUPVAL                         R0 9
       43 JUMPIFNOT                        R0 ; [+2]
       44 GETUPVAL                         R0 9
       45 CALL                             R0 0 0
       46 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R6 R1 K0 ["preview"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K1 ["createGenerationSessions"]
        5 CALL                             R7 0 1
        6 MOVE                             R8 R5
        7 JUMPIF                           R8 ; [+2]
        8 GETUPVAL                         R8 1
        9 CALL                             R8 0 1
       10 NEWTABLE                         R9 0 0
       12 NEWTABLE                         R10 0 0
       14 NEWTABLE                         R11 0 0
       16 NEWTABLE                         R12 0 0
       18 NEWCLOSURE                       R13 P0
       19 CAPTURE                          VAL R9
       20 CAPTURE                          UPVAL U2
       21 NEWTABLE                         R14 0 0
       23 DUPCLOSURE                       R15 K2 [PROTO_3]
       24 GETUPVAL                         R16 3
       25 GETTABLEKS                       R16 R16 K3 ["View"]
       27 GETTABLEKS                       R16 R16 K4 ["subscribe"]
       29 MOVE                             R17 R4
       30 NEWCLOSURE                       R18 P2
       31 CAPTURE                          REF R14
       32 CAPTURE                          VAL R15
       33 CAPTURE                          VAL R9
       34 CAPTURE                          UPVAL U2
       35 CALL                             R16 2 1
       36 NEWCLOSURE                       R17 P3
       37 CAPTURE                          VAL R9
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          REF R14
       40 NEWCLOSURE                       R18 P4
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R4
       45 NEWCLOSURE                       R19 P5
       46 CAPTURE                          VAL R18
       47 NEWCLOSURE                       R20 P6
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R18
       50 NEWCLOSURE                       R21 P7
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R18
       53 NEWCLOSURE                       R22 P8
       54 CAPTURE                          VAL R9
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          VAL R18
       57 NEWTABLE                         R23 0 0
       59 LOADB                            R24 0
       60 NEWCLOSURE                       R25 P9
       61 CAPTURE                          VAL R23
       62 CAPTURE                          REF R24
       63 NEWCLOSURE                       R26 P10
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R9
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R18
       71 CAPTURE                          VAL R23
       72 CAPTURE                          REF R24
       73 NEWCLOSURE                       R27 P11
       74 CAPTURE                          VAL R6
       75 CAPTURE                          UPVAL U0
       76 NEWCLOSURE                       R28 P12
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R12
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          VAL R1
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R6
       83 GETUPVAL                         R31 6
       84 GETTABLEKS                       R31 R31 K5 ["PrepareGeneration"]
       86 NEWCLOSURE                       R32 P13
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R17
       90 CAPTURE                          VAL R8
       91 CAPTURE                          UPVAL U2
       92 CAPTURE                          VAL R18
       93 CAPTURE                          VAL R27
       94 CAPTURE                          VAL R28
       95 NAMECALL                         R29 R0 K6 ["OnHostInvokeAsync"]
       97 CALL                             R29 3 2
       98 GETUPVAL                         R33 6
       99 GETTABLEKS                       R33 R33 K7 ["ImagePreviewGenerationComplete"]
      101 NEWCLOSURE                       R34 P14
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R8
      104 CAPTURE                          UPVAL U2
      105 CAPTURE                          VAL R18
      106 CAPTURE                          VAL R1
      107 NAMECALL                         R31 R0 K8 ["OnHostEvent"]
      109 CALL                             R31 3 2
      110 GETUPVAL                         R35 6
      111 GETTABLEKS                       R35 R35 K9 ["PrepareBatchGeneration"]
      113 NEWCLOSURE                       R36 P15
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R8
      118 CAPTURE                          UPVAL U2
      119 CAPTURE                          VAL R18
      120 NAMECALL                         R33 R0 K6 ["OnHostInvokeAsync"]
      122 CALL                             R33 3 2
      123 GETUPVAL                         R37 6
      124 GETTABLEKS                       R37 R37 K10 ["GetJobSeed"]
      126 NEWCLOSURE                       R38 P16
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R9
      129 CAPTURE                          UPVAL U2
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R27
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R28
      134 NAMECALL                         R35 R0 K6 ["OnHostInvokeAsync"]
      136 CALL                             R35 3 2
      137 GETUPVAL                         R39 6
      138 GETTABLEKS                       R39 R39 K11 ["PickImageAndGenerateTexture"]
      140 NEWCLOSURE                       R40 P17
      141 CAPTURE                          VAL R0
      142 CAPTURE                          UPVAL U6
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R8
      146 CAPTURE                          UPVAL U2
      147 CAPTURE                          VAL R18
      148 CAPTURE                          UPVAL U5
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R12
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          UPVAL U0
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R7
      155 NAMECALL                         R37 R0 K8 ["OnHostEvent"]
      157 CALL                             R37 3 2
      158 NEWCLOSURE                       R39 P18
      159 CAPTURE                          UPVAL U0
      160 CAPTURE                          UPVAL U7
      161 CAPTURE                          VAL R1
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R17
      166 CAPTURE                          UPVAL U2
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R23
      170 CAPTURE                          REF R24
      171 CAPTURE                          VAL R0
      172 CAPTURE                          UPVAL U6
      173 GETUPVAL                         R42 6
      174 GETTABLEKS                       R42 R42 K12 ["InsertTexturedModel"]
      176 NEWCLOSURE                       R43 P19
      177 CAPTURE                          VAL R39
      178 CAPTURE                          VAL R23
      179 CAPTURE                          REF R24
      180 NAMECALL                         R40 R0 K8 ["OnHostEvent"]
      182 CALL                             R40 3 2
      183 GETUPVAL                         R44 6
      184 GETTABLEKS                       R44 R44 K13 ["CancelGeneration"]
      186 NEWCLOSURE                       R45 P20
      187 CAPTURE                          VAL R10
      188 CAPTURE                          UPVAL U0
      189 CAPTURE                          VAL R7
      190 CAPTURE                          UPVAL U7
      191 CAPTURE                          VAL R0
      192 CAPTURE                          UPVAL U6
      193 CAPTURE                          VAL R9
      194 CAPTURE                          UPVAL U2
      195 NAMECALL                         R42 R0 K8 ["OnHostEvent"]
      197 CALL                             R42 3 2
      198 NEWCLOSURE                       R44 P21
      199 CAPTURE                          VAL R9
      200 CAPTURE                          UPVAL U2
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R30
      203 CAPTURE                          VAL R34
      204 CAPTURE                          VAL R36
      205 CAPTURE                          VAL R32
      206 CAPTURE                          VAL R38
      207 CAPTURE                          VAL R41
      208 CAPTURE                          VAL R43
      209 DUPTABLE                         R45 K15 [{"destroy"}]
      210 SETTABLEKS                       R44 R45 K14 ["destroy"]
      212 CLOSEUPVALS                      R14
      213 RETURN                           R45 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["EncodingService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["Selection"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["DMNetworking"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["Gen3dCore"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Packages"]
       37 GETTABLEKS                       R6 R6 K14 ["LoadingSkeleton3D"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R0 K11 ["Packages"]
       44 GETTABLEKS                       R7 R7 K15 ["StudioFoundation"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R0 K16 ["Src"]
       51 GETTABLEKS                       R8 R8 K17 ["Util"]
       53 GETTABLEKS                       R8 R8 K18 ["CrossDMViewModel"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R0 K19 ["Bin"]
       60 GETTABLEKS                       R9 R9 K20 ["Common"]
       62 GETTABLEKS                       R9 R9 K21 ["defineLuaFlags"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R0 K16 ["Src"]
       69 GETTABLEKS                       R10 R10 K22 ["Networking"]
       71 GETTABLEKS                       R10 R10 K23 ["Events"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R10 R0 K16 ["Src"]
       76 GETTABLEKS                       R10 R10 K24 ["Resources"]
       78 GETTABLEKS                       R10 R10 K25 ["Localization"]
       80 GETTABLEKS                       R10 R10 K26 ["LocalizedStrings"]
       82 GETTABLEKS                       R11 R0 K16 ["Src"]
       84 GETTABLEKS                       R11 R11 K24 ["Resources"]
       86 GETTABLEKS                       R11 R11 K25 ["Localization"]
       88 GETTABLEKS                       R11 R11 K27 ["SourceStrings"]
       90 GETIMPORT                        R12 K10 [require]
       92 GETTABLEKS                       R13 R0 K16 ["Src"]
       94 GETTABLEKS                       R13 R13 K28 ["Types"]
       96 CALL                             R12 1 1
       97 DUPCLOSURE                       R13 K29 [PROTO_1]
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R10
      101 DUPCLOSURE                       R14 K30 [PROTO_36]
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R8
      110 RETURN                           R14 1
