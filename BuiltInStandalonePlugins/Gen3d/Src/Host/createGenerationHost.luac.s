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
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 SETTABLE                         R2 R1 R0
       11 GETUPVAL                         R2 1
       12 GETTABLE                         R1 R2 R0
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K3 ["destroy"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 1
       20 LOADNIL                          R3
       21 SETTABLE                         R3 R2 R0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFFlagTextureGenUpgradeToQuality"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 1
        6 RETURN                           R2 1
        7 GETUPVAL                         R3 1
        8 GETTABLE                         R2 R3 R0
        9 JUMPIFEQ                         R2 R1 ; [+3]
       11 LOADB                            R2 0
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 1
       14 LOADNIL                          R3
       15 SETTABLE                         R3 R2 R0
       16 LOADB                            R2 1
       17 RETURN                           R2 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 JUMP                             ; [+14]
        8 GETUPVAL                         R3 0
        9 LOADNIL                          R4
       10 SETTABLE                         R4 R3 R0
       11 GETUPVAL                         R4 1
       12 GETTABLE                         R3 R4 R0
       13 JUMPIFNOT                        R3 ; [+8]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["destroy"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 GETUPVAL                         R4 1
       20 LOADNIL                          R5
       21 SETTABLE                         R5 R4 R0
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K4 ["attachToInstance"]
       25 MOVE                             R4 R1
       26 DUPTABLE                         R5 K6 [{"autoDestroyOnSuccess"}]
       27 JUMPIFNOTEQKB                    R2 FALSE ; [+2]
       29 LOADB                            R6 0 +1
       30 LOADB                            R6 1
       31 SETTABLEKS                       R6 R5 K5 ["autoDestroyOnSuccess"]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K7 ["setLabelVisible"]
       37 MOVE                             R5 R3
       38 GETUPVAL                         R8 3
       39 GETTABLE                         R7 R8 R0
       40 JUMPIFEQKNIL                     R7 ; [+2]
       42 LOADB                            R6 0 +1
       43 LOADB                            R6 1
       44 CALL                             R4 2 0
       45 GETUPVAL                         R4 1
       46 SETTABLE                         R3 R4 R0
       47 RETURN                           R3 1

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["TextureGen"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["setStatus"]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K1 ["failed"]
        5 MOVE                             R6 R2
        6 DUPTABLE                         R7 K4 [{"onActivated", "closeTooltip"}]
        7 NEWCLOSURE                       R8 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R8 R7 K2 ["onActivated"]
       12 GETUPVAL                         R8 2
       13 LOADK                            R9 K5 ["TextureGen"]
       14 LOADK                            R10 K6 ["ViewportDismiss"]
       15 CALL                             R8 2 1
       16 SETTABLEKS                       R8 R7 K3 ["closeTooltip"]
       18 CALL                             R3 4 0
       19 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["setStatus"]
        8 MOVE                             R4 R2
        9 LOADK                            R5 K1 ["failed"]
       10 MOVE                             R6 R1
       11 DUPTABLE                         R7 K4 [{"onActivated", "closeTooltip"}]
       12 NEWCLOSURE                       R8 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R8 R7 K2 ["onActivated"]
       17 GETUPVAL                         R8 3
       18 LOADK                            R9 K5 ["TextureGen"]
       19 LOADK                            R10 K6 ["ViewportDismiss"]
       20 CALL                             R8 2 1
       21 SETTABLEKS                       R8 R7 K3 ["closeTooltip"]
       23 CALL                             R3 4 0
       24 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R2 ; [+4]
        9 JUMPIFNOTEQKB                    R3 TRUE ; [+3]
       11 LOADB                            R4 1
       12 RETURN                           R4 1
       13 GETUPVAL                         R5 3
       14 GETTABLE                         R4 R5 R0
       15 JUMPIFNOT                        R4 ; [+30]
       16 JUMPIFNOT                        R2 ; [+5]
       17 GETUPVAL                         R5 4
       18 LOADK                            R6 K2 ["TextureGen"]
       19 LOADK                            R7 K3 ["ViewportFailed"]
       20 CALL                             R5 2 1
       21 JUMP                             ; [+5]
       22 FASTCALL1                        TOSTRING R3 ; [+3]
       23 MOVE                             R6 R3
       24 GETIMPORT                        R5 K5 [tostring]
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 5
       28 GETTABLEKS                       R6 R6 K6 ["setStatus"]
       30 MOVE                             R7 R4
       31 LOADK                            R8 K7 ["failed"]
       32 MOVE                             R9 R5
       33 DUPTABLE                         R10 K10 [{"onActivated", "closeTooltip"}]
       34 NEWCLOSURE                       R11 P1
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R11 R10 K8 ["onActivated"]
       39 GETUPVAL                         R11 4
       40 LOADK                            R12 K2 ["TextureGen"]
       41 LOADK                            R13 K11 ["ViewportDismiss"]
       42 CALL                             R11 2 1
       43 SETTABLEKS                       R11 R10 K9 ["closeTooltip"]
       45 CALL                             R6 4 0
       46 LOADB                            R5 0
       47 RETURN                           R5 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["getFFlagTextureGenUpgradeToQuality"]
        5 CALL                             R3 0 1
        6 JUMPIF                           R3 ; [+2]
        7 LOADB                            R0 1
        8 JUMP                             ; [+10]
        9 GETUPVAL                         R4 3
       10 GETTABLE                         R3 R4 R1
       11 JUMPIFEQ                         R3 R2 ; [+3]
       13 LOADB                            R0 0
       14 JUMP                             ; [+4]
       15 GETUPVAL                         R3 3
       16 LOADNIL                          R4
       17 SETTABLE                         R4 R3 R1
       18 LOADB                            R0 1
       19 JUMPIF                           R0 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 4
       22 GETUPVAL                         R1 0
       23 GETUPVAL                         R2 1
       24 CALL                             R0 2 1
       25 JUMPIFNOT                        R0 ; [+23]
       26 GETUPVAL                         R0 0
       27 FASTCALL1                        TYPEOF R0 ; [+3]
       28 MOVE                             R2 R0
       29 GETIMPORT                        R1 K2 [typeof]
       31 CALL                             R1 1 1
       32 JUMPIFEQKS                       R1 K3 ["string"] ; [+2]
       34 RETURN                           R0 0
       35 GETUPVAL                         R1 3
       36 LOADNIL                          R2
       37 SETTABLE                         R2 R1 R0
       38 GETUPVAL                         R2 5
       39 GETTABLE                         R1 R2 R0
       40 JUMPIFNOT                        R1 ; [+8]
       41 GETUPVAL                         R2 6
       42 GETTABLEKS                       R2 R2 K4 ["destroy"]
       44 MOVE                             R3 R1
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 5
       47 LOADNIL                          R3
       48 SETTABLE                         R3 R2 R0
       49 RETURN                           R0 0

PROTO_19:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 GETUPVAL                         R4 5
        9 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       11 MOVE                             R5 R2
       12 GETIMPORT                        R3 K2 [table.insert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 6
       16 JUMPIFNOT                        R3 ; [+1]
       17 RETURN                           R0 0
       18 LOADB                            R3 1
       19 SETUPVAL                         R3 6
       20 GETIMPORT                        R3 K5 [task.spawn]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U6
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K2 [{[1] = "png"}]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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
       40 FASTCALL1                        TYPEOF R4 ; [+3]
       41 MOVE                             R7 R4
       42 GETIMPORT                        R6 K19 [typeof]
       44 CALL                             R6 1 1
       45 JUMPIFEQKS                       R6 K20 ["string"] ; [+2]
       47 JUMP                             ; [+14]
       48 GETUPVAL                         R6 2
       49 LOADNIL                          R7
       50 SETTABLE                         R7 R6 R4
       51 GETUPVAL                         R7 3
       52 GETTABLE                         R6 R7 R4
       53 JUMPIFNOT                        R6 ; [+8]
       54 GETUPVAL                         R7 4
       55 GETTABLEKS                       R7 R7 K21 ["destroy"]
       57 MOVE                             R8 R6
       58 CALL                             R7 1 0
       59 GETUPVAL                         R7 3
       60 LOADNIL                          R8
       61 SETTABLE                         R8 R7 R4
       62 GETUPVAL                         R6 4
       63 GETTABLEKS                       R6 R6 K22 ["attachToInstance"]
       65 MOVE                             R7 R3
       66 DUPTABLE                         R8 K25 [{["autoDestroyOnSuccess"] = True}]
       67 CALL                             R6 2 1
       68 GETUPVAL                         R7 4
       69 GETTABLEKS                       R7 R7 K26 ["setLabelVisible"]
       71 MOVE                             R8 R6
       72 GETUPVAL                         R11 5
       73 GETTABLE                         R10 R11 R4
       74 JUMPIFEQKNIL                     R10 ; [+2]
       76 LOADB                            R9 0 +1
       77 LOADB                            R9 1
       78 CALL                             R7 2 0
       79 GETUPVAL                         R7 3
       80 SETTABLE                         R6 R7 R4
       81 MOVE                             R5 R6
       82 GETUPVAL                         R6 6
       83 LOADK                            R7 K27 ["TextureGen"]
       84 LOADK                            R8 K28 ["ViewportGenerating"]
       85 CALL                             R6 2 1
       86 GETUPVAL                         R7 4
       87 GETTABLEKS                       R7 R7 K29 ["setStatus"]
       89 MOVE                             R8 R5
       90 LOADK                            R9 K30 ["running"]
       91 MOVE                             R10 R6
       92 DUPTABLE                         R11 K33 [{["onActivated"], ["shimmer"] = True}]
       93 NEWCLOSURE                       R12 P0
       94 CAPTURE                          UPVAL U7
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R12 R11 K31 ["onActivated"]
       98 CALL                             R7 4 0
       99 GETUPVAL                         R6 8
      100 MOVE                             R7 R3
      101 CALL                             R6 1 2
      102 JUMPIFNOTEQKNIL                  R6 ; [+30]
      104 MOVE                             R8 R7
      105 JUMPIF                           R8 ; [+4]
      106 GETUPVAL                         R8 6
      107 LOADK                            R9 K27 ["TextureGen"]
      108 LOADK                            R10 K34 ["ViewportFailed"]
      109 CALL                             R8 2 1
      110 GETUPVAL                         R9 4
      111 GETTABLEKS                       R9 R9 K29 ["setStatus"]
      113 MOVE                             R10 R5
      114 LOADK                            R11 K35 ["failed"]
      115 MOVE                             R12 R8
      116 DUPTABLE                         R13 K37 [{"onActivated", "closeTooltip"}]
      117 NEWCLOSURE                       R14 P0
      118 CAPTURE                          UPVAL U7
      119 CAPTURE                          VAL R4
      120 SETTABLEKS                       R14 R13 K31 ["onActivated"]
      122 GETUPVAL                         R14 6
      123 LOADK                            R15 K27 ["TextureGen"]
      124 LOADK                            R16 K38 ["ViewportDismiss"]
      125 CALL                             R14 2 1
      126 SETTABLEKS                       R14 R13 K36 ["closeTooltip"]
      128 CALL                             R9 4 0
      129 DUPTABLE                         R8 K6 [{["ok"] = False, ["errorMessage"]}]
      130 SETTABLEKS                       R7 R8 K5 ["errorMessage"]
      132 RETURN                           R8 1
      133 GETUPVAL                         R8 9
      134 MOVE                             R9 R4
      135 MOVE                             R10 R3
      136 LOADB                            R11 1
      137 CALL                             R8 3 1
      138 DUPTABLE                         R9 K47 [{["ok"] = True, ["seedImageBase64"], ["mimeType"] = "image/png", ["selectedUniqueId"], ["glbBase64"], ["assetId"], ["cameraExtrinsic"], ["cameraIntrinsic"]}]
      139 SETTABLEKS                       R6 R9 K39 ["seedImageBase64"]
      141 SETTABLEKS                       R4 R9 K42 ["selectedUniqueId"]
      143 GETTABLEKS                       R10 R8 K43 ["glbBase64"]
      145 SETTABLEKS                       R10 R9 K43 ["glbBase64"]
      147 GETTABLEKS                       R10 R8 K44 ["assetId"]
      149 SETTABLEKS                       R10 R9 K44 ["assetId"]
      151 GETTABLEKS                       R10 R8 K45 ["cameraExtrinsic"]
      153 SETTABLEKS                       R10 R9 K45 ["cameraExtrinsic"]
      155 GETTABLEKS                       R10 R8 K46 ["cameraIntrinsic"]
      157 SETTABLEKS                       R10 R9 K46 ["cameraIntrinsic"]
      159 RETURN                           R9 1

PROTO_25:
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
       33 JUMPIF                           R3 ; [+46]
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
       66 DUPTABLE                         R10 K15 [{"onActivated", "closeTooltip"}]
       67 NEWCLOSURE                       R11 P0
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R11 R10 K13 ["onActivated"]
       72 GETUPVAL                         R11 1
       73 LOADK                            R12 K9 ["TextureGen"]
       74 LOADK                            R13 K16 ["ViewportDismiss"]
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K14 ["closeTooltip"]
       78 CALL                             R6 4 0
       79 RETURN                           R0 0
       80 GETUPVAL                         R3 4
       81 GETTABLEKS                       R3 R3 K17 ["instances"]
       83 GETTABLEKS                       R3 R3 K18 ["getInstanceFromUniqueId"]
       85 GETTABLEKS                       R4 R1 K3 ["uniqueId"]
       87 CALL                             R3 1 1
       88 JUMPIFNOTEQKNIL                  R3 ; [+2]
       90 RETURN                           R0 0
       91 GETUPVAL                         R4 2
       92 GETTABLEKS                       R4 R4 K11 ["setStatus"]
       94 MOVE                             R5 R2
       95 LOADK                            R6 K19 ["running"]
       96 GETUPVAL                         R7 1
       97 LOADK                            R8 K9 ["TextureGen"]
       98 LOADK                            R9 K20 ["ViewportActionRequired"]
       99 CALL                             R7 2 1
      100 DUPTABLE                         R8 K25 [{["onActivated"], ["emphasized"] = True, ["shimmer"] = False}]
      101 GETTABLEKS                       R10 R1 K3 ["uniqueId"]
      103 NEWCLOSURE                       R9 P0
      104 CAPTURE                          UPVAL U3
      105 CAPTURE                          VAL R10
      106 SETTABLEKS                       R9 R8 K13 ["onActivated"]
      108 CALL                             R4 4 0
      109 RETURN                           R0 0

PROTO_26:
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
       47 FASTCALL1                        TYPEOF R9 ; [+3]
       48 MOVE                             R12 R9
       49 GETIMPORT                        R11 K20 [typeof]
       51 CALL                             R11 1 1
       52 JUMPIFEQKS                       R11 K21 ["string"] ; [+2]
       54 JUMP                             ; [+14]
       55 GETUPVAL                         R11 2
       56 LOADNIL                          R12
       57 SETTABLE                         R12 R11 R9
       58 GETUPVAL                         R12 3
       59 GETTABLE                         R11 R12 R9
       60 JUMPIFNOT                        R11 ; [+8]
       61 GETUPVAL                         R12 4
       62 GETTABLEKS                       R12 R12 K22 ["destroy"]
       64 MOVE                             R13 R11
       65 CALL                             R12 1 0
       66 GETUPVAL                         R12 3
       67 LOADNIL                          R13
       68 SETTABLE                         R13 R12 R9
       69 GETUPVAL                         R11 4
       70 GETTABLEKS                       R11 R11 K23 ["attachToInstance"]
       72 MOVE                             R12 R8
       73 DUPTABLE                         R13 K26 [{["autoDestroyOnSuccess"] = True}]
       74 CALL                             R11 2 1
       75 GETUPVAL                         R12 4
       76 GETTABLEKS                       R12 R12 K27 ["setLabelVisible"]
       78 MOVE                             R13 R11
       79 GETUPVAL                         R16 5
       80 GETTABLE                         R15 R16 R9
       81 JUMPIFEQKNIL                     R15 ; [+2]
       83 LOADB                            R14 0 +1
       84 LOADB                            R14 1
       85 CALL                             R12 2 0
       86 GETUPVAL                         R12 3
       87 SETTABLE                         R11 R12 R9
       88 MOVE                             R10 R11
       89 GETUPVAL                         R11 6
       90 LOADK                            R12 K28 ["TextureGen"]
       91 LOADK                            R13 K29 ["ViewportGenerating"]
       92 CALL                             R11 2 1
       93 GETUPVAL                         R12 4
       94 GETTABLEKS                       R12 R12 K30 ["setStatus"]
       96 MOVE                             R13 R10
       97 LOADK                            R14 K31 ["running"]
       98 MOVE                             R15 R11
       99 DUPTABLE                         R16 K34 [{["onActivated"], ["shimmer"] = True}]
      100 NEWCLOSURE                       R17 P0
      101 CAPTURE                          UPVAL U7
      102 CAPTURE                          VAL R9
      103 SETTABLEKS                       R17 R16 K32 ["onActivated"]
      105 CALL                             R12 4 0
      106 DUPTABLE                         R13 K37 [{"uniqueId", "displayName"}]
      107 SETTABLEKS                       R9 R13 K35 ["uniqueId"]
      109 GETTABLEKS                       R14 R8 K38 ["Name"]
      111 SETTABLEKS                       R14 R13 K36 ["displayName"]
      113 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
      115 MOVE                             R12 R3
      116 GETIMPORT                        R11 K41 [table.insert]
      118 CALL                             R11 2 0
      119 FORGLOOP                         R4 2 ; [-88]
      121 DUPTABLE                         R4 K43 [{["ok"] = True, ["jobs"]}]
      122 SETTABLEKS                       R3 R4 K42 ["jobs"]
      124 RETURN                           R4 1

PROTO_27:
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
       25 JUMPIF                           R2 ; [+36]
       26 LOADK                            R3 K12 ["Instance '%*' no longer available"]
       27 GETTABLEKS                       R5 R1 K3 ["uniqueId"]
       29 NAMECALL                         R3 R3 K13 ["format"]
       31 CALL                             R3 2 1
       32 GETTABLEKS                       R4 R1 K3 ["uniqueId"]
       34 GETUPVAL                         R6 1
       35 GETTABLE                         R5 R6 R4
       36 JUMPIFNOTEQKNIL                  R5 ; [+2]
       38 JUMP                             ; [+19]
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K14 ["setStatus"]
       42 MOVE                             R7 R5
       43 LOADK                            R8 K15 ["failed"]
       44 MOVE                             R9 R3
       45 DUPTABLE                         R10 K18 [{"onActivated", "closeTooltip"}]
       46 NEWCLOSURE                       R11 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       51 GETUPVAL                         R11 4
       52 LOADK                            R12 K19 ["TextureGen"]
       53 LOADK                            R13 K20 ["ViewportDismiss"]
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K17 ["closeTooltip"]
       57 CALL                             R6 4 0
       58 DUPTABLE                         R4 K21 [{["ok"] = False, ["errorMessage"]}]
       59 SETTABLEKS                       R3 R4 K7 ["errorMessage"]
       61 RETURN                           R4 1
       62 GETUPVAL                         R3 5
       63 MOVE                             R4 R2
       64 CALL                             R3 1 2
       65 JUMPIFNOTEQKNIL                  R3 ; [+37]
       67 GETTABLEKS                       R5 R1 K3 ["uniqueId"]
       69 MOVE                             R6 R4
       70 JUMPIF                           R6 ; [+4]
       71 GETUPVAL                         R6 4
       72 LOADK                            R7 K19 ["TextureGen"]
       73 LOADK                            R8 K22 ["ViewportFailed"]
       74 CALL                             R6 2 1
       75 GETUPVAL                         R8 1
       76 GETTABLE                         R7 R8 R5
       77 JUMPIFNOTEQKNIL                  R7 ; [+2]
       79 JUMP                             ; [+19]
       80 GETUPVAL                         R8 2
       81 GETTABLEKS                       R8 R8 K14 ["setStatus"]
       83 MOVE                             R9 R7
       84 LOADK                            R10 K15 ["failed"]
       85 MOVE                             R11 R6
       86 DUPTABLE                         R12 K18 [{"onActivated", "closeTooltip"}]
       87 NEWCLOSURE                       R13 P0
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          VAL R5
       90 SETTABLEKS                       R13 R12 K16 ["onActivated"]
       92 GETUPVAL                         R13 4
       93 LOADK                            R14 K19 ["TextureGen"]
       94 LOADK                            R15 K20 ["ViewportDismiss"]
       95 CALL                             R13 2 1
       96 SETTABLEKS                       R13 R12 K17 ["closeTooltip"]
       98 CALL                             R8 4 0
       99 DUPTABLE                         R5 K21 [{["ok"] = False, ["errorMessage"]}]
      100 SETTABLEKS                       R4 R5 K7 ["errorMessage"]
      102 RETURN                           R5 1
      103 GETUPVAL                         R5 6
      104 GETTABLEKS                       R6 R1 K3 ["uniqueId"]
      106 MOVE                             R7 R2
      107 LOADB                            R8 0
      108 CALL                             R5 3 1
      109 DUPTABLE                         R6 K29 [{["ok"] = True, ["seedImageBase64"], ["mimeType"] = "image/png", ["glbBase64"], ["assetId"]}]
      110 SETTABLEKS                       R3 R6 K24 ["seedImageBase64"]
      112 GETTABLEKS                       R7 R5 K27 ["glbBase64"]
      114 SETTABLEKS                       R7 R6 K27 ["glbBase64"]
      116 GETTABLEKS                       R7 R5 K28 ["assetId"]
      118 SETTABLEKS                       R7 R6 K28 ["assetId"]
      120 RETURN                           R6 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TextureGenOps"]
        3 GETTABLEKS                       R0 R0 K1 ["generateTextureAsync"]
        5 DUPTABLE                         R1 K17 [{"requestId", "textPrompt", "hintImage", "hintImageContentType", "texturePreviewReference", "selectedUniqueId", "model", "cameraExtrinsic", "cameraIntrinsic", "cachedExport", "cachedAssetId", "cachedAssetScale", "autoSelectView", "keepExistingUv", "telemetryContext"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["requestId"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K3 ["textPrompt"]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K4 ["hintImage"]
       15 SETTABLEKS                       R2 R1 K4 ["hintImage"]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K5 ["hintImageContentType"]
       20 SETTABLEKS                       R2 R1 K5 ["hintImageContentType"]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K6 ["texturePreviewReference"]
       25 SETTABLEKS                       R2 R1 K6 ["texturePreviewReference"]
       27 GETUPVAL                         R2 4
       28 SETTABLEKS                       R2 R1 K7 ["selectedUniqueId"]
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K8 ["model"]
       33 SETTABLEKS                       R2 R1 K8 ["model"]
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R2 R2 K9 ["cameraExtrinsic"]
       38 SETTABLEKS                       R2 R1 K9 ["cameraExtrinsic"]
       40 GETUPVAL                         R2 3
       41 GETTABLEKS                       R2 R2 K10 ["cameraIntrinsic"]
       43 SETTABLEKS                       R2 R1 K10 ["cameraIntrinsic"]
       45 GETUPVAL                         R2 5
       46 SETTABLEKS                       R2 R1 K11 ["cachedExport"]
       48 GETUPVAL                         R3 6
       49 JUMPIFNOT                        R3 ; [+4]
       50 GETUPVAL                         R2 6
       51 GETTABLEKS                       R2 R2 K18 ["assetId"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R2
       55 SETTABLEKS                       R2 R1 K12 ["cachedAssetId"]
       57 GETUPVAL                         R3 6
       58 JUMPIFNOT                        R3 ; [+4]
       59 GETUPVAL                         R2 6
       60 GETTABLEKS                       R2 R2 K19 ["scale"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R2
       64 SETTABLEKS                       R2 R1 K13 ["cachedAssetScale"]
       66 GETUPVAL                         R2 3
       67 GETTABLEKS                       R2 R2 K14 ["autoSelectView"]
       69 SETTABLEKS                       R2 R1 K14 ["autoSelectView"]
       71 GETUPVAL                         R2 3
       72 GETTABLEKS                       R2 R2 K15 ["keepExistingUv"]
       74 SETTABLEKS                       R2 R1 K15 ["keepExistingUv"]
       76 DUPTABLE                         R2 K23 [{["surface"], ["isManualRun"] = True}]
       77 GETUPVAL                         R3 0
       78 GETTABLEKS                       R3 R3 K24 ["Gen3dTypes"]
       80 GETTABLEKS                       R3 R3 K25 ["Enums"]
       82 GETTABLEKS                       R3 R3 K26 ["TextureGenSurface"]
       84 GETTABLEKS                       R3 R3 K27 ["Gen3dPanel"]
       86 SETTABLEKS                       R3 R2 K20 ["surface"]
       88 SETTABLEKS                       R2 R1 K16 ["telemetryContext"]
       90 GETUPVAL                         R2 7
       91 GETUPVAL                         R3 8
       92 LOADNIL                          R4
       93 CALL                             R0 4 0
       94 RETURN                           R0 0

PROTO_29:
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
       12 CALL                             R0 1 2
       13 JUMPIF                           R0 ; [+37]
       14 GETUPVAL                         R3 9
       15 GETUPVAL                         R4 4
       16 GETTABLE                         R2 R3 R4
       17 JUMPIFNOT                        R2 ; [+25]
       18 GETUPVAL                         R3 4
       19 FASTCALL1                        TOSTRING R1 ; [+3]
       20 MOVE                             R5 R1
       21 GETIMPORT                        R4 K3 [tostring]
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 10
       25 GETTABLEKS                       R5 R5 K4 ["setStatus"]
       27 MOVE                             R6 R2
       28 LOADK                            R7 K5 ["failed"]
       29 MOVE                             R8 R4
       30 DUPTABLE                         R9 K8 [{"onActivated", "closeTooltip"}]
       31 NEWCLOSURE                       R10 P1
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R10 R9 K6 ["onActivated"]
       36 GETUPVAL                         R10 12
       37 LOADK                            R11 K9 ["TextureGen"]
       38 LOADK                            R12 K10 ["ViewportDismiss"]
       39 CALL                             R10 2 1
       40 SETTABLEKS                       R10 R9 K7 ["closeTooltip"]
       42 CALL                             R5 4 0
       43 GETUPVAL                         R3 13
       44 GETUPVAL                         R4 1
       45 LOADNIL                          R5
       46 SETTABLE                         R5 R3 R4
       47 GETUPVAL                         R3 14
       48 GETUPVAL                         R4 1
       49 LOADNIL                          R5
       50 SETTABLE                         R5 R3 R4
       51 GETUPVAL                         R2 15
       52 GETUPVAL                         R4 16
       53 GETTABLEKS                       R4 R4 K11 ["TextureGenerationComplete"]
       55 LOADNIL                          R5
       56 DUPTABLE                         R6 K15 [{"requestId", "ok", "errorMessage"}]
       57 GETUPVAL                         R7 1
       58 SETTABLEKS                       R7 R6 K12 ["requestId"]
       60 SETTABLEKS                       R0 R6 K13 ["ok"]
       62 JUMPIFNOT                        R0 ; [+2]
       63 LOADNIL                          R7
       64 JUMP                             ; [+5]
       65 FASTCALL1                        TOSTRING R1 ; [+3]
       66 MOVE                             R8 R1
       67 GETIMPORT                        R7 K3 [tostring]
       69 CALL                             R7 1 1
       70 SETTABLEKS                       R7 R6 K14 ["errorMessage"]
       72 NAMECALL                         R2 R2 K16 ["FireGuest"]
       74 CALL                             R2 4 0
       75 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R5 0
        1 SETTABLE                         R1 R5 R0
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K0 ["getFFlagTextureGenUpgradeToQuality"]
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+2]
        7 GETUPVAL                         R5 2
        8 SETTABLE                         R2 R5 R0
        9 GETUPVAL                         R6 3
       10 GETTABLE                         R5 R6 R1
       11 JUMPIFEQKNIL                     R5 ; [+18]
       13 GETUPVAL                         R6 4
       14 LOADK                            R7 K1 ["TextureGen"]
       15 LOADK                            R8 K2 ["ViewportRetexturing"]
       16 CALL                             R6 2 1
       17 GETUPVAL                         R7 5
       18 GETTABLEKS                       R7 R7 K3 ["setStatus"]
       20 MOVE                             R8 R5
       21 LOADK                            R9 K4 ["running"]
       22 MOVE                             R10 R6
       23 DUPTABLE                         R11 K8 [{["onActivated"], ["shimmer"] = True}]
       24 NEWCLOSURE                       R12 P0
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R12 R11 K5 ["onActivated"]
       29 CALL                             R7 4 0
       30 GETTABLEKS                       R6 R2 K9 ["prompt"]
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R7 R7 K10 ["getFStringTextureGenTexturePromptTemplate"]
       35 CALL                             R7 0 1
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R9 R9 K11 ["getFFlagTextureGenTexturePromptTemplateEnabled"]
       39 CALL                             R9 0 1
       40 JUMPIFNOT                        R9 ; [+8]
       41 JUMPIFEQKS                       R7 K12 [""] ; [+7]
       43 GETIMPORT                        R8 K15 [string.format]
       45 MOVE                             R9 R7
       46 MOVE                             R10 R6
       47 CALL                             R8 2 1
       48 JUMP                             ; [+12]
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R9 R9 K16 ["getFFlagTextureGenComposerRevamp"]
       52 CALL                             R9 0 1
       53 JUMPIFNOT                        R9 ; [+2]
       54 MOVE                             R8 R6
       55 JUMP                             ; [+5]
       56 GETIMPORT                        R8 K15 [string.format]
       58 LOADK                            R9 K17 ["%s. Do not add any new geometry to the object. Keep the exact alignment of the original image. This is used to generate a texture for a 3D object."]
       59 MOVE                             R10 R6
       60 CALL                             R8 2 1
       61 GETIMPORT                        R9 K20 [task.spawn]
       63 NEWCLOSURE                       R10 P1
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R4
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          UPVAL U9
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          UPVAL U4
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          UPVAL U2
       79 CAPTURE                          UPVAL U10
       80 CAPTURE                          UPVAL U11
       81 CALL                             R9 1 0
       82 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["getFFlagTextureGenUpgradeToQuality"]
        5 CALL                             R3 0 1
        6 JUMPIF                           R3 ; [+2]
        7 LOADB                            R0 1
        8 JUMP                             ; [+10]
        9 GETUPVAL                         R4 3
       10 GETTABLE                         R3 R4 R1
       11 JUMPIFEQ                         R3 R2 ; [+3]
       13 LOADB                            R0 0
       14 JUMP                             ; [+4]
       15 GETUPVAL                         R3 3
       16 LOADNIL                          R4
       17 SETTABLE                         R4 R3 R1
       18 LOADB                            R0 1
       19 JUMPIFNOT                        R0 ; [+5]
       20 GETUPVAL                         R0 4
       21 GETUPVAL                         R1 0
       22 GETUPVAL                         R2 1
       23 CALL                             R0 2 1
       24 JUMPIF                           R0 ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 5
       27 GETTABLEKS                       R0 R0 K1 ["instances"]
       29 GETTABLEKS                       R0 R0 K2 ["getInstanceFromUniqueId"]
       31 GETUPVAL                         R1 0
       32 CALL                             R0 1 1
       33 JUMPIFEQKNIL                     R0 ; [+6]
       35 LOADK                            R3 K3 ["PVInstance"]
       36 NAMECALL                         R1 R0 K4 ["IsA"]
       38 CALL                             R1 2 1
       39 JUMPIF                           R1 ; [+24]
       40 GETUPVAL                         R1 0
       41 FASTCALL1                        TYPEOF R1 ; [+3]
       42 MOVE                             R3 R1
       43 GETIMPORT                        R2 K6 [typeof]
       45 CALL                             R2 1 1
       46 JUMPIFEQKS                       R2 K7 ["string"] ; [+2]
       48 RETURN                           R0 0
       49 GETUPVAL                         R2 3
       50 LOADNIL                          R3
       51 SETTABLE                         R3 R2 R1
       52 GETUPVAL                         R3 6
       53 GETTABLE                         R2 R3 R1
       54 JUMPIFNOT                        R2 ; [+8]
       55 GETUPVAL                         R3 7
       56 GETTABLEKS                       R3 R3 K8 ["destroy"]
       58 MOVE                             R4 R2
       59 CALL                             R3 1 0
       60 GETUPVAL                         R3 6
       61 LOADNIL                          R4
       62 SETTABLE                         R4 R3 R1
       63 RETURN                           R0 0
       64 GETUPVAL                         R1 8
       65 LOADB                            R3 0
       66 NAMECALL                         R1 R1 K9 ["GenerateGUID"]
       68 CALL                             R1 2 1
       69 GETIMPORT                        R2 K12 [table.clone]
       71 GETUPVAL                         R3 9
       72 CALL                             R2 1 1
       73 GETUPVAL                         R3 10
       74 GETTABLEKS                       R3 R3 K13 ["Constants"]
       76 GETTABLEKS                       R3 R3 K14 ["Enums"]
       78 GETTABLEKS                       R3 R3 K15 ["TextureGenModel"]
       80 GETTABLEKS                       R3 R3 K16 ["RbxTexture2"]
       82 SETTABLEKS                       R3 R2 K17 ["model"]
       84 GETUPVAL                         R3 0
       85 FASTCALL1                        TYPEOF R3 ; [+3]
       86 MOVE                             R5 R3
       87 GETIMPORT                        R4 K6 [typeof]
       89 CALL                             R4 1 1
       90 JUMPIFEQKS                       R4 K7 ["string"] ; [+2]
       92 JUMP                             ; [+14]
       93 GETUPVAL                         R4 3
       94 LOADNIL                          R5
       95 SETTABLE                         R5 R4 R3
       96 GETUPVAL                         R5 6
       97 GETTABLE                         R4 R5 R3
       98 JUMPIFNOT                        R4 ; [+8]
       99 GETUPVAL                         R5 7
      100 GETTABLEKS                       R5 R5 K8 ["destroy"]
      102 MOVE                             R6 R4
      103 CALL                             R5 1 0
      104 GETUPVAL                         R5 6
      105 LOADNIL                          R6
      106 SETTABLE                         R6 R5 R3
      107 GETUPVAL                         R4 7
      108 GETTABLEKS                       R4 R4 K18 ["attachToInstance"]
      110 MOVE                             R5 R0
      111 DUPTABLE                         R6 K21 [{["autoDestroyOnSuccess"] = True}]
      112 CALL                             R4 2 1
      113 GETUPVAL                         R5 7
      114 GETTABLEKS                       R5 R5 K22 ["setLabelVisible"]
      116 MOVE                             R6 R4
      117 GETUPVAL                         R9 11
      118 GETTABLE                         R8 R9 R3
      119 JUMPIFEQKNIL                     R8 ; [+2]
      121 LOADB                            R7 0 +1
      122 LOADB                            R7 1
      123 CALL                             R5 2 0
      124 GETUPVAL                         R5 6
      125 SETTABLE                         R4 R5 R3
      126 GETUPVAL                         R3 12
      127 GETUPVAL                         R5 13
      128 GETTABLEKS                       R5 R5 K23 ["TextureUpgradeStarted"]
      130 LOADNIL                          R6
      131 DUPTABLE                         R7 K26 [{"requestId", "selectedUniqueId"}]
      132 SETTABLEKS                       R1 R7 K24 ["requestId"]
      134 GETUPVAL                         R8 0
      135 SETTABLEKS                       R8 R7 K25 ["selectedUniqueId"]
      137 NAMECALL                         R3 R3 K27 ["FireGuest"]
      139 CALL                             R3 4 0
      140 GETUPVAL                         R3 14
      141 MOVE                             R4 R1
      142 GETUPVAL                         R5 0
      143 MOVE                             R6 R2
      144 LOADNIL                          R7
      145 LOADNIL                          R8
      146 CALL                             R3 5 0
      147 RETURN                           R0 0

PROTO_32:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 GETUPVAL                         R5 12
       17 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       19 MOVE                             R6 R3
       20 GETIMPORT                        R4 K2 [table.insert]
       22 CALL                             R4 2 0
       23 GETUPVAL                         R4 13
       24 JUMPIFNOT                        R4 ; [+1]
       25 RETURN                           R0 0
       26 LOADB                            R4 1
       27 SETUPVAL                         R4 13
       28 GETIMPORT                        R4 K5 [task.spawn]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          UPVAL U12
       32 CAPTURE                          UPVAL U13
       33 CALL                             R4 1 0
       34 RETURN                           R0 0

PROTO_33:
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
       56 LOADNIL                          R11
       57 GETTABLEKS                       R12 R1 K13 ["texturePreviewReference"]
       59 FASTCALL1                        TYPEOF R12 ; [+3]
       60 MOVE                             R14 R12
       61 GETIMPORT                        R13 K1 [typeof]
       63 CALL                             R13 1 1
       64 JUMPIFNOTEQKS                    R13 K2 ["table"] ; [+27]
       66 GETTABLEKS                       R14 R12 K14 ["texturePreviewId"]
       68 FASTCALL1                        TYPEOF R14 ; [+2]
       69 GETIMPORT                        R13 K1 [typeof]
       71 CALL                             R13 1 1
       72 JUMPIFNOTEQKS                    R13 K10 ["string"] ; [+19]
       74 GETTABLEKS                       R14 R12 K15 ["imageIndex"]
       76 FASTCALL1                        TYPEOF R14 ; [+2]
       77 GETIMPORT                        R13 K1 [typeof]
       79 CALL                             R13 1 1
       80 JUMPIFNOTEQKS                    R13 K16 ["number"] ; [+11]
       82 DUPTABLE                         R13 K17 [{"texturePreviewId", "imageIndex"}]
       83 GETTABLEKS                       R14 R12 K14 ["texturePreviewId"]
       85 SETTABLEKS                       R14 R13 K14 ["texturePreviewId"]
       87 GETTABLEKS                       R14 R12 K15 ["imageIndex"]
       89 SETTABLEKS                       R14 R13 K15 ["imageIndex"]
       91 MOVE                             R11 R13
       92 GETTABLEKS                       R15 R1 K18 ["autoSelectView"]
       94 FASTCALL1                        TYPEOF R15 ; [+2]
       95 GETIMPORT                        R14 K1 [typeof]
       97 CALL                             R14 1 1
       98 JUMPIFNOTEQKS                    R14 K19 ["boolean"] ; [+4]
      100 GETTABLEKS                       R13 R1 K18 ["autoSelectView"]
      102 JUMP                             ; [+1]
      103 LOADNIL                          R13
      104 GETTABLEKS                       R16 R1 K20 ["keepExistingUv"]
      106 FASTCALL1                        TYPEOF R16 ; [+2]
      107 GETIMPORT                        R15 K1 [typeof]
      109 CALL                             R15 1 1
      110 JUMPIFNOTEQKS                    R15 K19 ["boolean"] ; [+4]
      112 GETTABLEKS                       R14 R1 K20 ["keepExistingUv"]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R14
      116 FASTCALL1                        TYPEOF R2 ; [+3]
      117 MOVE                             R16 R2
      118 GETIMPORT                        R15 K1 [typeof]
      120 CALL                             R15 1 1
      121 JUMPIFNOTEQKS                    R15 K10 ["string"] ; [+33]
      123 FASTCALL1                        TYPEOF R3 ; [+3]
      124 MOVE                             R16 R3
      125 GETIMPORT                        R15 K1 [typeof]
      127 CALL                             R15 1 1
      128 JUMPIFNOTEQKS                    R15 K16 ["number"] ; [+26]
      130 FASTCALL1                        TYPEOF R4 ; [+3]
      131 MOVE                             R16 R4
      132 GETIMPORT                        R15 K1 [typeof]
      134 CALL                             R15 1 1
      135 JUMPIFNOTEQKS                    R15 K10 ["string"] ; [+19]
      137 JUMPIFEQKS                       R4 K21 [""] ; [+17]
      139 FASTCALL1                        TYPEOF R6 ; [+3]
      140 MOVE                             R16 R6
      141 GETIMPORT                        R15 K1 [typeof]
      143 CALL                             R15 1 1
      144 JUMPIFNOTEQKS                    R15 K10 ["string"] ; [+10]
      146 FASTCALL1                        TYPEOF R7 ; [+3]
      147 MOVE                             R16 R7
      148 GETIMPORT                        R15 K1 [typeof]
      150 CALL                             R15 1 1
      151 JUMPIFNOTEQKS                    R15 K10 ["string"] ; [+3]
      153 JUMPIFNOTEQKS                    R7 K21 [""] ; [+13]
      155 GETUPVAL                         R15 0
      156 GETUPVAL                         R17 1
      157 GETTABLEKS                       R17 R17 K22 ["TextureGenerationComplete"]
      159 LOADNIL                          R18
      160 DUPTABLE                         R19 K27 [{["requestId"], ["ok"] = False, ["errorMessage"] = "Invalid PickImageAndGenerateTexture payload"}]
      161 SETTABLEKS                       R2 R19 K3 ["requestId"]
      163 NAMECALL                         R15 R15 K28 ["FireGuest"]
      165 CALL                             R15 4 0
      166 RETURN                           R0 0
      167 GETUPVAL                         R16 2
      168 GETTABLE                         R15 R16 R7
      169 GETUPVAL                         R16 2
      170 LOADNIL                          R17
      171 SETTABLE                         R17 R16 R7
      172 GETUPVAL                         R17 3
      173 GETTABLE                         R16 R17 R7
      174 GETUPVAL                         R17 3
      175 LOADNIL                          R18
      176 SETTABLE                         R18 R17 R7
      177 GETUPVAL                         R17 4
      178 MOVE                             R18 R2
      179 MOVE                             R19 R7
      180 DUPTABLE                         R20 K31 [{"prompt", "hintImage", "hintImageContentType", "texturePreviewReference", "model", "cameraExtrinsic", "cameraIntrinsic", "autoSelectView", "keepExistingUv"}]
      181 SETTABLEKS                       R6 R20 K7 ["prompt"]
      183 GETUPVAL                         R21 5
      184 GETIMPORT                        R23 K34 [buffer.fromstring]
      186 MOVE                             R24 R4
      187 CALL                             R23 1 -1
      188 NAMECALL                         R21 R21 K35 ["Base64Decode"]
      190 CALL                             R21 -1 1
      191 SETTABLEKS                       R21 R20 K29 ["hintImage"]
      193 FASTCALL1                        TYPEOF R5 ; [+3]
      194 MOVE                             R23 R5
      195 GETIMPORT                        R22 K1 [typeof]
      197 CALL                             R22 1 1
      198 JUMPIFNOTEQKS                    R22 K10 ["string"] ; [+5]
      200 JUMPIFEQKS                       R5 K21 [""] ; [+3]
      202 MOVE                             R21 R5
      203 JUMP                             ; [+1]
      204 LOADK                            R21 K36 ["image/png"]
      205 SETTABLEKS                       R21 R20 K30 ["hintImageContentType"]
      207 SETTABLEKS                       R11 R20 K13 ["texturePreviewReference"]
      209 SETTABLEKS                       R8 R20 K9 ["model"]
      211 SETTABLEKS                       R9 R20 K11 ["cameraExtrinsic"]
      213 SETTABLEKS                       R10 R20 K12 ["cameraIntrinsic"]
      215 SETTABLEKS                       R13 R20 K18 ["autoSelectView"]
      217 SETTABLEKS                       R14 R20 K20 ["keepExistingUv"]
      219 MOVE                             R21 R15
      220 MOVE                             R22 R16
      221 CALL                             R17 5 0
      222 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 CAPTURE                          UPVAL U14
       19 GETUPVAL                         R5 15
       20 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       22 MOVE                             R6 R3
       23 GETIMPORT                        R4 K2 [table.insert]
       25 CALL                             R4 2 0
       26 GETUPVAL                         R4 16
       27 JUMPIFNOT                        R4 ; [+1]
       28 RETURN                           R0 0
       29 LOADB                            R4 1
       30 SETUPVAL                         R4 16
       31 GETIMPORT                        R4 K5 [task.spawn]
       33 NEWCLOSURE                       R5 P1
       34 CAPTURE                          UPVAL U15
       35 CAPTURE                          UPVAL U16
       36 CALL                             R4 1 0
       37 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
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

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["requestId"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 GETUPVAL                         R3 0
        5 LOADNIL                          R4
        6 SETTABLE                         R4 R3 R1
        7 GETIMPORT                        R3 K2 [pcall]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CALL                             R3 1 2
       16 GETUPVAL                         R6 5
       17 GETTABLE                         R5 R6 R1
       18 GETUPVAL                         R6 5
       19 LOADNIL                          R7
       20 SETTABLE                         R7 R6 R1
       21 MOVE                             R6 R5
       22 JUMPIFNOT                        R6 ; [+2]
       23 GETUPVAL                         R7 6
       24 GETTABLE                         R6 R7 R5
       25 LOADB                            R7 0
       26 JUMPIFNOT                        R6 ; [+181]
       27 JUMPIFNOT                        R3 ; [+156]
       28 GETUPVAL                         R8 4
       29 GETTABLEKS                       R8 R8 K3 ["getGenerationSession"]
       31 MOVE                             R9 R1
       32 CALL                             R8 1 1
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R9 R9 K4 ["getFFlagTextureGenRevertAfterInsert"]
       36 CALL                             R9 0 1
       37 JUMPIFNOT                        R9 ; [+16]
       38 LOADB                            R9 0
       39 GETTABLEKS                       R10 R8 K5 ["loadedModel"]
       41 JUMPIFEQKNIL                     R10 ; [+12]
       43 LOADB                            R9 1
       44 GETTABLEKS                       R10 R8 K6 ["replacedInstance"]
       46 JUMPIFNOTEQKNIL                  R10 ; [+7]
       48 GETTABLEKS                       R10 R8 K7 ["reappliedTarget"]
       50 JUMPIFNOTEQKNIL                  R10 ; [+2]
       52 LOADB                            R9 0 +1
       53 LOADB                            R9 1
       54 JUMPIFNOT                        R9 ; [+119]
       55 LOADB                            R7 1
       56 GETTABLEKS                       R10 R8 K5 ["loadedModel"]
       58 GETUPVAL                         R11 7
       59 MOVE                             R12 R5
       60 MOVE                             R13 R10
       61 GETUPVAL                         R15 2
       62 GETTABLEKS                       R15 R15 K8 ["getFFlagTextureGenUpgradeToQuality"]
       64 CALL                             R15 0 1
       65 NOT                              R14 R15
       66 CALL                             R11 3 1
       67 GETUPVAL                         R12 2
       68 GETTABLEKS                       R12 R12 K8 ["getFFlagTextureGenUpgradeToQuality"]
       70 CALL                             R12 0 1
       71 JUMPIFNOT                        R12 ; [+2]
       72 GETUPVAL                         R12 8
       73 SETTABLE                         R1 R12 R5
       74 LOADNIL                          R12
       75 JUMPIFNOT                        R2 ; [+60]
       76 GETTABLEKS                       R13 R2 K9 ["model"]
       78 JUMPIF                           R13 ; [+5]
       79 GETUPVAL                         R13 1
       80 GETTABLEKS                       R13 R13 K10 ["Constants"]
       82 GETTABLEKS                       R13 R13 K11 ["DEFAULT_TEXTURE_GEN_MODEL"]
       84 GETUPVAL                         R14 1
       85 GETTABLEKS                       R14 R14 K10 ["Constants"]
       87 GETTABLEKS                       R14 R14 K12 ["Enums"]
       89 GETTABLEKS                       R14 R14 K13 ["TextureGenModel"]
       91 GETTABLEKS                       R14 R14 K14 ["RbxTexture2"]
       93 JUMPIFEQ                         R13 R14 ; [+42]
       95 NEWTABLE                         R13 0 1
       97 DUPTABLE                         R14 K20 [{["icon"], ["tooltip"], ["testId"] = "TextureGenUpgradeToQuality", ["onActivated"]}]
       98 GETUPVAL                         R15 9
       99 GETTABLEKS                       R15 R15 K12 ["Enums"]
      101 GETTABLEKS                       R15 R15 K21 ["IconName"]
      103 GETTABLEKS                       R15 R15 K22 ["DoubleChevronLargeUp"]
      105 SETTABLEKS                       R15 R14 K15 ["icon"]
      107 GETUPVAL                         R15 10
      108 LOADK                            R16 K23 ["TextureGen"]
      109 LOADK                            R17 K24 ["ViewportUpgradeToQuality"]
      110 CALL                             R15 2 1
      111 SETTABLEKS                       R15 R14 K16 ["tooltip"]
      113 NEWCLOSURE                       R15 P1
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R2
      117 CAPTURE                          UPVAL U2
      118 CAPTURE                          UPVAL U8
      119 CAPTURE                          UPVAL U11
      120 CAPTURE                          UPVAL U3
      121 CAPTURE                          UPVAL U6
      122 CAPTURE                          UPVAL U12
      123 CAPTURE                          UPVAL U13
      124 CAPTURE                          UPVAL U1
      125 CAPTURE                          UPVAL U14
      126 CAPTURE                          UPVAL U15
      127 CAPTURE                          UPVAL U16
      128 CAPTURE                          UPVAL U17
      129 CAPTURE                          UPVAL U18
      130 CAPTURE                          UPVAL U19
      131 SETTABLEKS                       R15 R14 K19 ["onActivated"]
      133 SETLIST                          R13 R14 1 [1]
      135 MOVE                             R12 R13
      136 GETUPVAL                         R13 12
      137 GETTABLEKS                       R13 R13 K25 ["setStatus"]
      139 MOVE                             R14 R11
      140 LOADK                            R15 K26 ["succeeded"]
      141 GETUPVAL                         R16 10
      142 LOADK                            R17 K23 ["TextureGen"]
      143 LOADK                            R18 K27 ["ViewportRetexturingComplete"]
      144 CALL                             R16 2 1
      145 DUPTABLE                         R17 K32 [{"onRevert", "actions", "revertTooltip", "closeTooltip"}]
      146 NEWCLOSURE                       R18 P2
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R1
      149 CAPTURE                          UPVAL U2
      150 CAPTURE                          UPVAL U8
      151 CAPTURE                          UPVAL U11
      152 CAPTURE                          UPVAL U6
      153 CAPTURE                          UPVAL U12
      154 CAPTURE                          UPVAL U18
      155 CAPTURE                          UPVAL U19
      156 SETTABLEKS                       R18 R17 K28 ["onRevert"]
      158 SETTABLEKS                       R12 R17 K29 ["actions"]
      160 GETUPVAL                         R18 10
      161 LOADK                            R19 K23 ["TextureGen"]
      162 LOADK                            R20 K33 ["ViewportRevert"]
      163 CALL                             R18 2 1
      164 SETTABLEKS                       R18 R17 K30 ["revertTooltip"]
      166 GETUPVAL                         R18 10
      167 LOADK                            R19 K23 ["TextureGen"]
      168 LOADK                            R20 K34 ["ViewportKeep"]
      169 CALL                             R18 2 1
      170 SETTABLEKS                       R18 R17 K31 ["closeTooltip"]
      172 CALL                             R13 4 0
      173 JUMP                             ; [+34]
      174 GETUPVAL                         R10 12
      175 GETTABLEKS                       R10 R10 K25 ["setStatus"]
      177 MOVE                             R11 R6
      178 LOADK                            R12 K26 ["succeeded"]
      179 CALL                             R10 2 0
      180 GETUPVAL                         R10 6
      181 LOADNIL                          R11
      182 SETTABLE                         R11 R10 R5
      183 JUMP                             ; [+24]
      184 FASTCALL1                        TOSTRING R4 ; [+3]
      185 MOVE                             R9 R4
      186 GETIMPORT                        R8 K36 [tostring]
      188 CALL                             R8 1 1
      189 GETUPVAL                         R9 12
      190 GETTABLEKS                       R9 R9 K25 ["setStatus"]
      192 MOVE                             R10 R6
      193 LOADK                            R11 K37 ["failed"]
      194 MOVE                             R12 R8
      195 DUPTABLE                         R13 K38 [{"onActivated", "closeTooltip"}]
      196 NEWCLOSURE                       R14 P3
      197 CAPTURE                          UPVAL U20
      198 CAPTURE                          VAL R5
      199 SETTABLEKS                       R14 R13 K19 ["onActivated"]
      201 GETUPVAL                         R14 10
      202 LOADK                            R15 K23 ["TextureGen"]
      203 LOADK                            R16 K39 ["ViewportDismiss"]
      204 CALL                             R14 2 1
      205 SETTABLEKS                       R14 R13 K31 ["closeTooltip"]
      207 CALL                             R9 4 0
      208 JUMPIF                           R7 ; [+10]
      209 GETUPVAL                         R8 1
      210 GETTABLEKS                       R8 R8 K40 ["TextureGenOps"]
      212 GETTABLEKS                       R8 R8 K41 ["releaseRevertSnapshot"]
      214 DUPTABLE                         R9 K42 [{"requestId"}]
      215 SETTABLEKS                       R1 R9 K0 ["requestId"]
      217 GETUPVAL                         R10 4
      218 CALL                             R8 2 0
      219 GETUPVAL                         R8 15
      220 GETUPVAL                         R10 16
      221 GETTABLEKS                       R10 R10 K43 ["InsertComplete"]
      223 LOADNIL                          R11
      224 DUPTABLE                         R12 K47 [{"requestId", "ok", "selectedUniqueId", "errorMessage"}]
      225 SETTABLEKS                       R1 R12 K0 ["requestId"]
      227 SETTABLEKS                       R3 R12 K44 ["ok"]
      229 SETTABLEKS                       R5 R12 K45 ["selectedUniqueId"]
      231 JUMPIFNOT                        R3 ; [+2]
      232 LOADNIL                          R13
      233 JUMP                             ; [+5]
      234 FASTCALL1                        TOSTRING R4 ; [+3]
      235 MOVE                             R14 R4
      236 GETIMPORT                        R13 K36 [tostring]
      238 CALL                             R13 1 1
      239 SETTABLEKS                       R13 R12 K46 ["errorMessage"]
      241 NAMECALL                         R8 R8 K48 ["FireGuest"]
      243 CALL                             R8 4 0
      244 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TextureGenOps"]
        3 GETTABLEKS                       R0 R0 K1 ["cancelGenerationAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["requestId"]
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_41:
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
       15 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+37]
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
       33 GETUPVAL                         R4 3
       34 LOADNIL                          R5
       35 SETTABLE                         R5 R4 R2
       36 JUMPIFNOT                        R3 ; [+16]
       37 GETUPVAL                         R4 4
       38 GETTABLEKS                       R4 R4 K7 ["getFFlagGen3dTextureGenCancelAbortsJob"]
       40 CALL                             R4 0 1
       41 JUMPIFNOT                        R4 ; [+11]
       42 GETUPVAL                         R4 5
       43 GETUPVAL                         R6 6
       44 GETTABLEKS                       R6 R6 K8 ["TextureGenerationComplete"]
       46 LOADNIL                          R7
       47 DUPTABLE                         R8 K13 [{["requestId"], ["ok"] = False, ["errorMessage"] = "Cancelled"}]
       48 SETTABLEKS                       R2 R8 K3 ["requestId"]
       50 NAMECALL                         R4 R4 K14 ["FireGuest"]
       52 CALL                             R4 4 0
       53 GETTABLEKS                       R3 R1 K15 ["selectedUniqueId"]
       55 FASTCALL1                        TYPEOF R3 ; [+3]
       56 MOVE                             R5 R3
       57 GETIMPORT                        R4 K1 [typeof]
       59 CALL                             R4 1 1
       60 JUMPIFEQKS                       R4 K4 ["string"] ; [+2]
       62 RETURN                           R0 0
       63 GETUPVAL                         R4 7
       64 LOADNIL                          R5
       65 SETTABLE                         R5 R4 R3
       66 GETUPVAL                         R5 8
       67 GETTABLE                         R4 R5 R3
       68 JUMPIFNOT                        R4 ; [+8]
       69 GETUPVAL                         R5 9
       70 GETTABLEKS                       R5 R5 K16 ["destroy"]
       72 MOVE                             R6 R4
       73 CALL                             R5 1 0
       74 GETUPVAL                         R5 8
       75 LOADNIL                          R6
       76 SETTABLE                         R6 R5 R3
       77 RETURN                           R0 0

PROTO_42:
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

PROTO_43:
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
       18 NEWTABLE                         R13 0 0
       20 NEWTABLE                         R14 0 0
       22 NEWCLOSURE                       R15 P0
       23 CAPTURE                          VAL R12
       24 CAPTURE                          VAL R9
       25 CAPTURE                          UPVAL U2
       26 NEWCLOSURE                       R16 P1
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R12
       29 NEWTABLE                         R17 0 0
       31 DUPCLOSURE                       R18 K2 [PROTO_4]
       32 GETUPVAL                         R19 4
       33 GETTABLEKS                       R19 R19 K3 ["View"]
       35 GETTABLEKS                       R19 R19 K4 ["subscribe"]
       37 MOVE                             R20 R4
       38 NEWCLOSURE                       R21 P3
       39 CAPTURE                          REF R17
       40 CAPTURE                          VAL R18
       41 CAPTURE                          VAL R9
       42 CAPTURE                          UPVAL U2
       43 CALL                             R19 2 1
       44 NEWCLOSURE                       R20 P4
       45 CAPTURE                          VAL R12
       46 CAPTURE                          VAL R9
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          REF R17
       49 NEWCLOSURE                       R21 P5
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R4
       54 NEWCLOSURE                       R22 P6
       55 CAPTURE                          VAL R21
       56 NEWCLOSURE                       R23 P7
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          VAL R21
       59 NEWCLOSURE                       R24 P8
       60 CAPTURE                          VAL R8
       61 NEWCLOSURE                       R25 P9
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          VAL R21
       64 CAPTURE                          VAL R8
       65 NEWCLOSURE                       R26 P10
       66 CAPTURE                          VAL R9
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          VAL R21
       69 CAPTURE                          VAL R8
       70 NEWTABLE                         R27 0 0
       72 LOADB                            R28 0
       73 NEWCLOSURE                       R29 P11
       74 CAPTURE                          VAL R27
       75 CAPTURE                          REF R28
       76 NEWCLOSURE                       R30 P12
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R8
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          VAL R21
       84 NEWCLOSURE                       R31 P13
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R30
       88 CAPTURE                          VAL R9
       89 CAPTURE                          UPVAL U2
       90 CAPTURE                          VAL R27
       91 CAPTURE                          REF R28
       92 NEWCLOSURE                       R32 P14
       93 CAPTURE                          VAL R6
       94 CAPTURE                          UPVAL U0
       95 NEWCLOSURE                       R33 P15
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R14
       98 CAPTURE                          UPVAL U0
       99 CAPTURE                          VAL R1
      100 CAPTURE                          UPVAL U6
      101 CAPTURE                          VAL R6
      102 GETUPVAL                         R36 7
      103 GETTABLEKS                       R36 R36 K5 ["PrepareGeneration"]
      105 NEWCLOSURE                       R37 P16
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R9
      110 CAPTURE                          UPVAL U2
      111 CAPTURE                          REF R17
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R21
      114 CAPTURE                          VAL R32
      115 CAPTURE                          VAL R33
      116 NAMECALL                         R34 R0 K6 ["OnHostInvokeAsync"]
      118 CALL                             R34 3 2
      119 GETUPVAL                         R38 7
      120 GETTABLEKS                       R38 R38 K7 ["ImagePreviewGenerationComplete"]
      122 NEWCLOSURE                       R39 P17
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R8
      125 CAPTURE                          UPVAL U2
      126 CAPTURE                          VAL R21
      127 CAPTURE                          VAL R1
      128 NAMECALL                         R36 R0 K8 ["OnHostEvent"]
      130 CALL                             R36 3 2
      131 GETUPVAL                         R40 7
      132 GETTABLEKS                       R40 R40 K9 ["PrepareBatchGeneration"]
      134 NEWCLOSURE                       R41 P18
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R9
      139 CAPTURE                          UPVAL U2
      140 CAPTURE                          REF R17
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R21
      143 NAMECALL                         R38 R0 K6 ["OnHostInvokeAsync"]
      145 CALL                             R38 3 2
      146 GETUPVAL                         R42 7
      147 GETTABLEKS                       R42 R42 K10 ["GetJobSeed"]
      149 NEWCLOSURE                       R43 P19
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R9
      152 CAPTURE                          UPVAL U2
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R32
      156 CAPTURE                          VAL R33
      157 NAMECALL                         R40 R0 K6 ["OnHostInvokeAsync"]
      159 CALL                             R40 3 2
      160 NEWCLOSURE                       R42 P20
      161 CAPTURE                          VAL R10
      162 CAPTURE                          UPVAL U3
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R8
      166 CAPTURE                          UPVAL U2
      167 CAPTURE                          VAL R21
      168 CAPTURE                          UPVAL U0
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R0
      172 CAPTURE                          UPVAL U7
      173 NEWCLOSURE                       R43 P21
      174 CAPTURE                          UPVAL U3
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R30
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R9
      179 CAPTURE                          UPVAL U2
      180 CAPTURE                          UPVAL U8
      181 CAPTURE                          UPVAL U0
      182 CAPTURE                          REF R17
      183 CAPTURE                          VAL R0
      184 CAPTURE                          UPVAL U7
      185 CAPTURE                          VAL R42
      186 CAPTURE                          VAL R27
      187 CAPTURE                          REF R28
      188 GETUPVAL                         R46 7
      189 GETTABLEKS                       R46 R46 K11 ["PickImageAndGenerateTexture"]
      191 NEWCLOSURE                       R47 P22
      192 CAPTURE                          VAL R0
      193 CAPTURE                          UPVAL U7
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R42
      197 CAPTURE                          UPVAL U6
      198 NAMECALL                         R44 R0 K8 ["OnHostEvent"]
      200 CALL                             R44 3 2
      201 NEWCLOSURE                       R46 P23
      202 CAPTURE                          VAL R11
      203 CAPTURE                          UPVAL U0
      204 CAPTURE                          UPVAL U3
      205 CAPTURE                          VAL R1
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R20
      210 CAPTURE                          VAL R12
      211 CAPTURE                          UPVAL U9
      212 CAPTURE                          VAL R8
      213 CAPTURE                          VAL R30
      214 CAPTURE                          UPVAL U2
      215 CAPTURE                          UPVAL U8
      216 CAPTURE                          REF R17
      217 CAPTURE                          VAL R0
      218 CAPTURE                          UPVAL U7
      219 CAPTURE                          VAL R42
      220 CAPTURE                          VAL R27
      221 CAPTURE                          REF R28
      222 CAPTURE                          VAL R21
      223 GETUPVAL                         R49 7
      224 GETTABLEKS                       R49 R49 K12 ["InsertTexturedModel"]
      226 NEWCLOSURE                       R50 P24
      227 CAPTURE                          VAL R46
      228 CAPTURE                          VAL R27
      229 CAPTURE                          REF R28
      230 NAMECALL                         R47 R0 K8 ["OnHostEvent"]
      232 CALL                             R47 3 2
      233 GETUPVAL                         R51 7
      234 GETTABLEKS                       R51 R51 K13 ["CancelGeneration"]
      236 NEWCLOSURE                       R52 P25
      237 CAPTURE                          VAL R10
      238 CAPTURE                          UPVAL U0
      239 CAPTURE                          VAL R7
      240 CAPTURE                          VAL R11
      241 CAPTURE                          UPVAL U3
      242 CAPTURE                          VAL R0
      243 CAPTURE                          UPVAL U7
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R9
      246 CAPTURE                          UPVAL U2
      247 NAMECALL                         R49 R0 K8 ["OnHostEvent"]
      249 CALL                             R49 3 2
      250 NEWCLOSURE                       R51 P26
      251 CAPTURE                          VAL R9
      252 CAPTURE                          UPVAL U2
      253 CAPTURE                          VAL R19
      254 CAPTURE                          VAL R35
      255 CAPTURE                          VAL R39
      256 CAPTURE                          VAL R41
      257 CAPTURE                          VAL R37
      258 CAPTURE                          VAL R45
      259 CAPTURE                          VAL R48
      260 CAPTURE                          VAL R50
      261 DUPTABLE                         R52 K15 [{"destroy"}]
      262 SETTABLEKS                       R51 R52 K14 ["destroy"]
      264 CLOSEUPVALS                      R17
      265 RETURN                           R52 1

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
       15 LOADK                            R4 K8 ["HttpService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["Selection"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Packages"]
       29 GETTABLEKS                       R5 R5 K13 ["DMNetworking"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Packages"]
       36 GETTABLEKS                       R6 R6 K14 ["Foundation"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R0 K12 ["Packages"]
       43 GETTABLEKS                       R7 R7 K15 ["Gen3dCore"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K11 [require]
       48 GETTABLEKS                       R8 R0 K12 ["Packages"]
       50 GETTABLEKS                       R8 R8 K16 ["LoadingSkeleton3D"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K11 [require]
       55 GETTABLEKS                       R9 R0 K12 ["Packages"]
       57 GETTABLEKS                       R9 R9 K17 ["StudioFoundation"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K11 [require]
       62 GETTABLEKS                       R10 R0 K18 ["Src"]
       64 GETTABLEKS                       R10 R10 K19 ["Util"]
       66 GETTABLEKS                       R10 R10 K20 ["CrossDMViewModel"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K11 [require]
       71 GETTABLEKS                       R11 R0 K21 ["Bin"]
       73 GETTABLEKS                       R11 R11 K22 ["Common"]
       75 GETTABLEKS                       R11 R11 K23 ["defineLuaFlags"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K11 [require]
       80 GETTABLEKS                       R12 R0 K18 ["Src"]
       82 GETTABLEKS                       R12 R12 K24 ["Networking"]
       84 GETTABLEKS                       R12 R12 K25 ["Events"]
       86 CALL                             R11 1 1
       87 GETTABLEKS                       R12 R0 K18 ["Src"]
       89 GETTABLEKS                       R12 R12 K26 ["Resources"]
       91 GETTABLEKS                       R12 R12 K27 ["Localization"]
       93 GETTABLEKS                       R12 R12 K28 ["LocalizedStrings"]
       95 GETTABLEKS                       R13 R0 K18 ["Src"]
       97 GETTABLEKS                       R13 R13 K26 ["Resources"]
       99 GETTABLEKS                       R13 R13 K27 ["Localization"]
      101 GETTABLEKS                       R13 R13 K29 ["SourceStrings"]
      103 GETIMPORT                        R14 K11 [require]
      105 GETTABLEKS                       R15 R0 K18 ["Src"]
      107 GETTABLEKS                       R15 R15 K30 ["Types"]
      109 CALL                             R14 1 1
      110 DUPCLOSURE                       R15 K31 [PROTO_1]
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R12
      114 DUPCLOSURE                       R16 K32 [PROTO_43]
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R5
      125 RETURN                           R16 1
