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
       15 JUMPIFNOTEQKS                    R2 K5 [""] ; [+13]
       17 LOADNIL                          R3
       18 LOADK                            R5 K6 ["Failed to snapshot selection: %*"]
       19 FASTCALL1                        TOSTRING R2 ; [+3]
       20 MOVE                             R8 R2
       21 GETIMPORT                        R7 K8 [tostring]
       23 CALL                             R7 1 1
       24 NAMECALL                         R5 R5 K9 ["format"]
       26 CALL                             R5 2 1
       27 MOVE                             R4 R5
       28 RETURN                           R3 2
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K10 ["getImageDataBase64Async"]
       32 JUMPIF                           R3 ; [+3]
       33 LOADNIL                          R4
       34 LOADK                            R5 K11 ["getImageDataBase64Async unavailable (AssistantApplication missing)"]
       35 RETURN                           R4 2
       36 GETIMPORT                        R4 K1 [pcall]
       38 NEWCLOSURE                       R5 P1
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 CALL                             R4 1 2
       42 JUMPIFNOT                        R4 ; [+9]
       43 FASTCALL1                        TYPEOF R5 ; [+3]
       44 MOVE                             R7 R5
       45 GETIMPORT                        R6 K3 [typeof]
       47 CALL                             R6 1 1
       48 JUMPIFNOTEQKS                    R6 K4 ["string"] ; [+3]
       50 JUMPIFNOTEQKS                    R5 K5 [""] ; [+13]
       52 LOADNIL                          R6
       53 LOADK                            R8 K12 ["Failed to encode snapshot: %*"]
       54 FASTCALL1                        TOSTRING R5 ; [+3]
       55 MOVE                             R11 R5
       56 GETIMPORT                        R10 K8 [tostring]
       58 CALL                             R10 1 1
       59 NAMECALL                         R8 R8 K9 ["format"]
       61 CALL                             R8 2 1
       62 MOVE                             R7 R8
       63 RETURN                           R6 2
       64 MOVE                             R6 R5
       65 LOADNIL                          R7
       66 RETURN                           R6 2

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getClassified"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K1 ["kind"]
        6 JUMPIFEQKS                       R3 K2 ["single"] ; [+12]
        8 DUPTABLE                         R3 K6 [{["ok"] = False, ["errorMessage"]}]
        9 LOADK                            R5 K7 ["Selection is '%*'; single MeshPart/Model required"]
       10 GETTABLEKS                       R7 R2 K1 ["kind"]
       12 NAMECALL                         R5 R5 K8 ["format"]
       14 CALL                             R5 2 1
       15 MOVE                             R4 R5
       16 SETTABLEKS                       R4 R3 K5 ["errorMessage"]
       18 RETURN                           R3 1
       19 GETTABLEKS                       R4 R2 K9 ["items"]
       21 GETTABLEN                        R3 R4 1
       22 JUMPIFNOTEQKNIL                  R3 ; [+3]
       24 DUPTABLE                         R4 K11 [{["ok"] = False, ["errorMessage"] = "Selection is empty"}]
       25 RETURN                           R4 1
       26 LOADK                            R7 K12 ["PVInstance"]
       27 NAMECALL                         R5 R3 K13 ["IsA"]
       29 CALL                             R5 2 1
       30 FASTCALL2K                       ASSERT R5 K14 ; [+4]
       32 LOADK                            R6 K14 ["single selection must be a PVInstance"]
       33 GETIMPORT                        R4 K16 [assert]
       35 CALL                             R4 2 0
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K17 ["registerInstance"]
       39 MOVE                             R5 R3
       40 CALL                             R4 1 1
       41 GETUPVAL                         R5 2
       42 MOVE                             R6 R4
       43 MOVE                             R7 R3
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 3
       46 LOADK                            R7 K18 ["TextureGen"]
       47 LOADK                            R8 K19 ["ViewportGenerating"]
       48 CALL                             R6 2 1
       49 GETUPVAL                         R7 4
       50 GETTABLEKS                       R7 R7 K20 ["setStatus"]
       52 MOVE                             R8 R5
       53 LOADK                            R9 K21 ["running"]
       54 MOVE                             R10 R6
       55 DUPTABLE                         R11 K25 [{["onActivated"], ["shimmer"] = True}]
       56 NEWCLOSURE                       R12 P0
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          VAL R4
       59 SETTABLEKS                       R12 R11 K22 ["onActivated"]
       61 CALL                             R7 4 0
       62 GETUPVAL                         R6 6
       63 MOVE                             R7 R3
       64 CALL                             R6 1 2
       65 JUMPIFNOTEQKNIL                  R6 ; [+24]
       67 MOVE                             R8 R7
       68 JUMPIF                           R8 ; [+4]
       69 GETUPVAL                         R8 3
       70 LOADK                            R9 K18 ["TextureGen"]
       71 LOADK                            R10 K26 ["ViewportFailed"]
       72 CALL                             R8 2 1
       73 GETUPVAL                         R9 4
       74 GETTABLEKS                       R9 R9 K20 ["setStatus"]
       76 MOVE                             R10 R5
       77 LOADK                            R11 K27 ["failed"]
       78 MOVE                             R12 R8
       79 DUPTABLE                         R13 K28 [{"onActivated"}]
       80 NEWCLOSURE                       R14 P0
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R4
       83 SETTABLEKS                       R14 R13 K22 ["onActivated"]
       85 CALL                             R9 4 0
       86 DUPTABLE                         R8 K6 [{["ok"] = False, ["errorMessage"]}]
       87 SETTABLEKS                       R7 R8 K5 ["errorMessage"]
       89 RETURN                           R8 1
       90 DUPTABLE                         R8 K33 [{["ok"] = True, ["seedImageBase64"], ["mimeType"] = "image/png", ["selectedUniqueId"]}]
       91 SETTABLEKS                       R6 R8 K29 ["seedImageBase64"]
       93 SETTABLEKS                       R4 R8 K32 ["selectedUniqueId"]
       95 RETURN                           R8 1

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getClassified"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K1 ["kind"]
        6 JUMPIFEQKS                       R3 K2 ["multi"] ; [+12]
        8 DUPTABLE                         R3 K6 [{["ok"] = False, ["errorMessage"]}]
        9 LOADK                            R5 K7 ["Selection is '%*'; multiple MeshPart/Model required"]
       10 GETTABLEKS                       R7 R2 K1 ["kind"]
       12 NAMECALL                         R5 R5 K8 ["format"]
       14 CALL                             R5 2 1
       15 MOVE                             R4 R5
       16 SETTABLEKS                       R4 R3 K5 ["errorMessage"]
       18 RETURN                           R3 1
       19 GETTABLEKS                       R4 R2 K9 ["items"]
       21 LENGTH                           R3 R4
       22 JUMPIFNOTEQKN                    R3 K10 [0] ; [+3]
       24 DUPTABLE                         R3 K12 [{["ok"] = False, ["errorMessage"] = "Selection is empty"}]
       25 RETURN                           R3 1
       26 NEWTABLE                         R3 0 0
       28 GETTABLEKS                       R4 R2 K9 ["items"]
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 LOADK                            R12 K13 ["PVInstance"]
       34 NAMECALL                         R10 R8 K14 ["IsA"]
       36 CALL                             R10 2 1
       37 FASTCALL2K                       ASSERT R10 K15 ; [+4]
       39 LOADK                            R11 K15 ["multi selection must contain only PVInstances"]
       40 GETIMPORT                        R9 K17 [assert]
       42 CALL                             R9 2 0
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R9 R9 K18 ["registerInstance"]
       46 MOVE                             R10 R8
       47 CALL                             R9 1 1
       48 GETUPVAL                         R10 2
       49 MOVE                             R11 R9
       50 MOVE                             R12 R8
       51 CALL                             R10 2 1
       52 GETUPVAL                         R11 3
       53 LOADK                            R12 K19 ["TextureGen"]
       54 LOADK                            R13 K20 ["ViewportGenerating"]
       55 CALL                             R11 2 1
       56 GETUPVAL                         R12 4
       57 GETTABLEKS                       R12 R12 K21 ["setStatus"]
       59 MOVE                             R13 R10
       60 LOADK                            R14 K22 ["running"]
       61 MOVE                             R15 R11
       62 DUPTABLE                         R16 K26 [{["onActivated"], ["shimmer"] = True}]
       63 NEWCLOSURE                       R17 P0
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R9
       66 SETTABLEKS                       R17 R16 K23 ["onActivated"]
       68 CALL                             R12 4 0
       69 DUPTABLE                         R13 K29 [{"uniqueId", "displayName"}]
       70 SETTABLEKS                       R9 R13 K27 ["uniqueId"]
       72 GETTABLEKS                       R14 R8 K30 ["Name"]
       74 SETTABLEKS                       R14 R13 K28 ["displayName"]
       76 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       78 MOVE                             R12 R3
       79 GETIMPORT                        R11 K33 [table.insert]
       81 CALL                             R11 2 0
       82 FORGLOOP                         R4 2 ; [-50]
       84 DUPTABLE                         R4 K35 [{["ok"] = True, ["jobs"]}]
       85 SETTABLEKS                       R3 R4 K34 ["jobs"]
       87 RETURN                           R4 1

PROTO_23:
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
       25 JUMPIF                           R2 ; [+31]
       26 LOADK                            R4 K12 ["Instance '%*' no longer available"]
       27 GETTABLEKS                       R6 R1 K3 ["uniqueId"]
       29 NAMECALL                         R4 R4 K13 ["format"]
       31 CALL                             R4 2 1
       32 MOVE                             R3 R4
       33 GETTABLEKS                       R4 R1 K3 ["uniqueId"]
       35 GETUPVAL                         R6 1
       36 GETTABLE                         R5 R6 R4
       37 JUMPIFNOTEQKNIL                  R5 ; [+2]
       39 JUMP                             ; [+13]
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R6 R6 K14 ["setStatus"]
       43 MOVE                             R7 R5
       44 LOADK                            R8 K15 ["failed"]
       45 MOVE                             R9 R3
       46 DUPTABLE                         R10 K17 [{"onActivated"}]
       47 NEWCLOSURE                       R11 P0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R4
       50 SETTABLEKS                       R11 R10 K16 ["onActivated"]
       52 CALL                             R6 4 0
       53 DUPTABLE                         R4 K18 [{["ok"] = False, ["errorMessage"]}]
       54 SETTABLEKS                       R3 R4 K7 ["errorMessage"]
       56 RETURN                           R4 1
       57 GETUPVAL                         R3 4
       58 MOVE                             R4 R2
       59 CALL                             R3 1 2
       60 JUMPIFNOTEQKNIL                  R3 ; [+31]
       62 GETTABLEKS                       R5 R1 K3 ["uniqueId"]
       64 MOVE                             R6 R4
       65 JUMPIF                           R6 ; [+4]
       66 GETUPVAL                         R6 5
       67 LOADK                            R7 K19 ["TextureGen"]
       68 LOADK                            R8 K20 ["ViewportFailed"]
       69 CALL                             R6 2 1
       70 GETUPVAL                         R8 1
       71 GETTABLE                         R7 R8 R5
       72 JUMPIFNOTEQKNIL                  R7 ; [+2]
       74 JUMP                             ; [+13]
       75 GETUPVAL                         R8 2
       76 GETTABLEKS                       R8 R8 K14 ["setStatus"]
       78 MOVE                             R9 R7
       79 LOADK                            R10 K15 ["failed"]
       80 MOVE                             R11 R6
       81 DUPTABLE                         R12 K17 [{"onActivated"}]
       82 NEWCLOSURE                       R13 P0
       83 CAPTURE                          UPVAL U3
       84 CAPTURE                          VAL R5
       85 SETTABLEKS                       R13 R12 K16 ["onActivated"]
       87 CALL                             R8 4 0
       88 DUPTABLE                         R5 K18 [{["ok"] = False, ["errorMessage"]}]
       89 SETTABLEKS                       R4 R5 K7 ["errorMessage"]
       91 RETURN                           R5 1
       92 DUPTABLE                         R5 K25 [{["ok"] = True, ["seedImageBase64"], ["mimeType"] = "image/png"}]
       93 SETTABLEKS                       R3 R5 K22 ["seedImageBase64"]
       95 RETURN                           R5 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TextureGenOps"]
        3 GETTABLEKS                       R0 R0 K1 ["generateTextureAsync"]
        5 DUPTABLE                         R1 K8 [{"requestId", "textPrompt", "hintImage", "hintImageContentType", "selectedUniqueId", "model"}]
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
       25 GETUPVAL                         R3 8
       26 LOADNIL                          R4
       27 CALL                             R0 4 0
       28 RETURN                           R0 0

PROTO_25:
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
       13 JUMPIF                           R0 ; [+27]
       14 GETUPVAL                         R3 9
       15 GETUPVAL                         R4 5
       16 GETTABLE                         R2 R3 R4
       17 JUMPIFNOT                        R2 ; [+19]
       18 GETUPVAL                         R3 5
       19 FASTCALL1                        TOSTRING R1 ; [+3]
       20 MOVE                             R5 R1
       21 GETIMPORT                        R4 K3 [tostring]
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 10
       25 GETTABLEKS                       R5 R5 K4 ["setStatus"]
       27 MOVE                             R6 R2
       28 LOADK                            R7 K5 ["failed"]
       29 MOVE                             R8 R4
       30 DUPTABLE                         R9 K7 [{"onActivated"}]
       31 NEWCLOSURE                       R10 P1
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R10 R9 K6 ["onActivated"]
       36 CALL                             R5 4 0
       37 GETUPVAL                         R3 12
       38 GETUPVAL                         R4 1
       39 LOADNIL                          R5
       40 SETTABLE                         R5 R3 R4
       41 GETUPVAL                         R2 13
       42 GETUPVAL                         R4 14
       43 GETTABLEKS                       R4 R4 K8 ["TextureGenerationComplete"]
       45 LOADNIL                          R5
       46 DUPTABLE                         R6 K12 [{"requestId", "ok", "errorMessage"}]
       47 GETUPVAL                         R7 1
       48 SETTABLEKS                       R7 R6 K9 ["requestId"]
       50 SETTABLEKS                       R0 R6 K10 ["ok"]
       52 JUMPIFNOT                        R0 ; [+2]
       53 LOADNIL                          R7
       54 JUMP                             ; [+5]
       55 FASTCALL1                        TOSTRING R1 ; [+3]
       56 MOVE                             R8 R1
       57 GETIMPORT                        R7 K3 [tostring]
       59 CALL                             R7 1 1
       60 SETTABLEKS                       R7 R6 K11 ["errorMessage"]
       62 NAMECALL                         R2 R2 K13 ["FireGuest"]
       64 CALL                             R2 4 0
       65 RETURN                           R0 0

PROTO_26:
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
       32 FASTCALL1                        TYPEOF R2 ; [+3]
       33 MOVE                             R10 R2
       34 GETIMPORT                        R9 K1 [typeof]
       36 CALL                             R9 1 1
       37 JUMPIFNOTEQKS                    R9 K10 ["string"] ; [+33]
       39 FASTCALL1                        TYPEOF R3 ; [+3]
       40 MOVE                             R10 R3
       41 GETIMPORT                        R9 K1 [typeof]
       43 CALL                             R9 1 1
       44 JUMPIFNOTEQKS                    R9 K11 ["number"] ; [+26]
       46 FASTCALL1                        TYPEOF R4 ; [+3]
       47 MOVE                             R10 R4
       48 GETIMPORT                        R9 K1 [typeof]
       50 CALL                             R9 1 1
       51 JUMPIFNOTEQKS                    R9 K10 ["string"] ; [+19]
       53 JUMPIFEQKS                       R4 K12 [""] ; [+17]
       55 FASTCALL1                        TYPEOF R6 ; [+3]
       56 MOVE                             R10 R6
       57 GETIMPORT                        R9 K1 [typeof]
       59 CALL                             R9 1 1
       60 JUMPIFNOTEQKS                    R9 K10 ["string"] ; [+10]
       62 FASTCALL1                        TYPEOF R7 ; [+3]
       63 MOVE                             R10 R7
       64 GETIMPORT                        R9 K1 [typeof]
       66 CALL                             R9 1 1
       67 JUMPIFNOTEQKS                    R9 K10 ["string"] ; [+3]
       69 JUMPIFNOTEQKS                    R7 K12 [""] ; [+13]
       71 GETUPVAL                         R9 0
       72 GETUPVAL                         R11 1
       73 GETTABLEKS                       R11 R11 K13 ["TextureGenerationComplete"]
       75 LOADNIL                          R12
       76 DUPTABLE                         R13 K18 [{["requestId"], ["ok"] = False, ["errorMessage"] = "Invalid PickImageAndGenerateTexture payload"}]
       77 SETTABLEKS                       R2 R13 K3 ["requestId"]
       79 NAMECALL                         R9 R9 K19 ["FireGuest"]
       81 CALL                             R9 4 0
       82 RETURN                           R0 0
       83 GETUPVAL                         R9 2
       84 SETTABLE                         R7 R9 R2
       85 GETUPVAL                         R10 3
       86 GETTABLE                         R9 R10 R7
       87 JUMPIFEQKNIL                     R9 ; [+18]
       89 GETUPVAL                         R10 4
       90 LOADK                            R11 K20 ["TextureGen"]
       91 LOADK                            R12 K21 ["ViewportRetexturing"]
       92 CALL                             R10 2 1
       93 GETUPVAL                         R11 5
       94 GETTABLEKS                       R11 R11 K22 ["setStatus"]
       96 MOVE                             R12 R9
       97 LOADK                            R13 K23 ["running"]
       98 MOVE                             R14 R10
       99 DUPTABLE                         R15 K27 [{["onActivated"], ["shimmer"] = True}]
      100 NEWCLOSURE                       R16 P0
      101 CAPTURE                          UPVAL U6
      102 CAPTURE                          VAL R7
      103 SETTABLEKS                       R16 R15 K24 ["onActivated"]
      105 CALL                             R11 4 0
      106 FASTCALL1                        TYPEOF R5 ; [+3]
      107 MOVE                             R12 R5
      108 GETIMPORT                        R11 K1 [typeof]
      110 CALL                             R11 1 1
      111 JUMPIFNOTEQKS                    R11 K10 ["string"] ; [+5]
      113 JUMPIFEQKS                       R5 K12 [""] ; [+3]
      115 MOVE                             R10 R5
      116 JUMP                             ; [+1]
      117 LOADK                            R10 K28 ["image/png"]
      118 GETUPVAL                         R11 7
      119 GETIMPORT                        R13 K31 [buffer.fromstring]
      121 MOVE                             R14 R4
      122 CALL                             R13 1 -1
      123 NAMECALL                         R11 R11 K32 ["Base64Decode"]
      125 CALL                             R11 -1 1
      126 GETUPVAL                         R12 8
      127 GETTABLEKS                       R12 R12 K33 ["getFStringTextureGenTexturePromptTemplate"]
      129 CALL                             R12 0 1
      130 GETUPVAL                         R14 8
      131 GETTABLEKS                       R14 R14 K34 ["getFFlagTextureGenTexturePromptTemplateEnabled"]
      133 CALL                             R14 0 1
      134 JUMPIFNOT                        R14 ; [+8]
      135 JUMPIFEQKS                       R12 K12 [""] ; [+7]
      137 GETIMPORT                        R13 K36 [string.format]
      139 MOVE                             R14 R12
      140 MOVE                             R15 R6
      141 CALL                             R13 2 1
      142 JUMP                             ; [+5]
      143 GETIMPORT                        R13 K36 [string.format]
      145 LOADK                            R14 K37 ["%s. Do not add any new geometry to the object. Keep the exact alignment of the original image. This is used to generate a texture for a 3D object."]
      146 MOVE                             R15 R6
      147 CALL                             R13 2 1
      148 GETIMPORT                        R14 K40 [task.spawn]
      150 NEWCLOSURE                       R15 P1
      151 CAPTURE                          UPVAL U9
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R8
      158 CAPTURE                          UPVAL U10
      159 CAPTURE                          UPVAL U11
      160 CAPTURE                          UPVAL U3
      161 CAPTURE                          UPVAL U5
      162 CAPTURE                          UPVAL U6
      163 CAPTURE                          UPVAL U2
      164 CAPTURE                          UPVAL U0
      165 CAPTURE                          UPVAL U1
      166 CALL                             R14 1 0
      167 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TextureGenOps"]
        3 GETTABLEKS                       R0 R0 K1 ["cancelGenerationAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["requestId"]
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_33:
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
       15 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+11]
       17 GETIMPORT                        R3 K6 [pcall]
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U1
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 2
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R3 R2
       27 GETTABLEKS                       R3 R1 K7 ["selectedUniqueId"]
       29 FASTCALL1                        TYPEOF R3 ; [+3]
       30 MOVE                             R5 R3
       31 GETIMPORT                        R4 K1 [typeof]
       33 CALL                             R4 1 1
       34 JUMPIFEQKS                       R4 K4 ["string"] ; [+2]
       36 RETURN                           R0 0
       37 GETUPVAL                         R5 3
       38 GETTABLE                         R4 R5 R3
       39 JUMPIFNOT                        R4 ; [+8]
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K8 ["destroy"]
       43 MOVE                             R6 R4
       44 CALL                             R5 1 0
       45 GETUPVAL                         R5 3
       46 LOADNIL                          R6
       47 SETTABLE                         R6 R5 R3
       48 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
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
       14 NEWCLOSURE                       R11 P0
       15 CAPTURE                          VAL R9
       16 CAPTURE                          UPVAL U2
       17 NEWTABLE                         R12 0 0
       19 DUPCLOSURE                       R13 K2 [PROTO_3]
       20 GETUPVAL                         R14 3
       21 GETTABLEKS                       R14 R14 K3 ["View"]
       23 GETTABLEKS                       R14 R14 K4 ["subscribe"]
       25 MOVE                             R15 R4
       26 NEWCLOSURE                       R16 P2
       27 CAPTURE                          REF R12
       28 CAPTURE                          VAL R13
       29 CAPTURE                          VAL R9
       30 CAPTURE                          UPVAL U2
       31 CALL                             R14 2 1
       32 NEWCLOSURE                       R15 P3
       33 CAPTURE                          VAL R9
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          REF R12
       36 NEWCLOSURE                       R16 P4
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R4
       41 NEWCLOSURE                       R17 P5
       42 CAPTURE                          VAL R16
       43 NEWCLOSURE                       R18 P6
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R16
       46 NEWCLOSURE                       R19 P7
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          VAL R16
       49 NEWCLOSURE                       R20 P8
       50 CAPTURE                          VAL R9
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R16
       53 NEWTABLE                         R21 0 0
       55 LOADB                            R22 0
       56 NEWCLOSURE                       R23 P9
       57 CAPTURE                          VAL R21
       58 CAPTURE                          REF R22
       59 NEWCLOSURE                       R24 P10
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R9
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R16
       67 CAPTURE                          VAL R21
       68 CAPTURE                          REF R22
       69 NEWCLOSURE                       R25 P11
       70 CAPTURE                          VAL R6
       71 CAPTURE                          UPVAL U0
       72 GETUPVAL                         R28 5
       73 GETTABLEKS                       R28 R28 K5 ["PrepareGeneration"]
       75 NEWCLOSURE                       R29 P12
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R8
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          VAL R16
       82 CAPTURE                          VAL R25
       83 NAMECALL                         R26 R0 K6 ["OnHostInvokeAsync"]
       85 CALL                             R26 3 2
       86 GETUPVAL                         R30 5
       87 GETTABLEKS                       R30 R30 K7 ["ImagePreviewGenerationComplete"]
       89 NEWCLOSURE                       R31 P13
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R8
       92 CAPTURE                          UPVAL U2
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R1
       95 NAMECALL                         R28 R0 K8 ["OnHostEvent"]
       97 CALL                             R28 3 2
       98 GETUPVAL                         R32 5
       99 GETTABLEKS                       R32 R32 K9 ["PrepareBatchGeneration"]
      101 NEWCLOSURE                       R33 P14
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R8
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          VAL R16
      108 NAMECALL                         R30 R0 K6 ["OnHostInvokeAsync"]
      110 CALL                             R30 3 2
      111 GETUPVAL                         R34 5
      112 GETTABLEKS                       R34 R34 K10 ["GetJobSeed"]
      114 NEWCLOSURE                       R35 P15
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R9
      117 CAPTURE                          UPVAL U2
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R25
      120 CAPTURE                          VAL R8
      121 NAMECALL                         R32 R0 K6 ["OnHostInvokeAsync"]
      123 CALL                             R32 3 2
      124 GETUPVAL                         R36 5
      125 GETTABLEKS                       R36 R36 K11 ["PickImageAndGenerateTexture"]
      127 NEWCLOSURE                       R37 P16
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U5
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R8
      133 CAPTURE                          UPVAL U2
      134 CAPTURE                          VAL R16
      135 CAPTURE                          UPVAL U6
      136 CAPTURE                          UPVAL U7
      137 CAPTURE                          UPVAL U0
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R7
      140 NAMECALL                         R34 R0 K8 ["OnHostEvent"]
      142 CALL                             R34 3 2
      143 NEWCLOSURE                       R36 P17
      144 CAPTURE                          UPVAL U0
      145 CAPTURE                          UPVAL U7
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R15
      151 CAPTURE                          UPVAL U2
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R21
      155 CAPTURE                          REF R22
      156 CAPTURE                          VAL R0
      157 CAPTURE                          UPVAL U5
      158 GETUPVAL                         R39 5
      159 GETTABLEKS                       R39 R39 K12 ["InsertTexturedModel"]
      161 NEWCLOSURE                       R40 P18
      162 CAPTURE                          VAL R36
      163 CAPTURE                          VAL R21
      164 CAPTURE                          REF R22
      165 NAMECALL                         R37 R0 K8 ["OnHostEvent"]
      167 CALL                             R37 3 2
      168 GETUPVAL                         R41 5
      169 GETTABLEKS                       R41 R41 K13 ["CancelGeneration"]
      171 NEWCLOSURE                       R42 P19
      172 CAPTURE                          UPVAL U0
      173 CAPTURE                          VAL R7
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R9
      176 CAPTURE                          UPVAL U2
      177 NAMECALL                         R39 R0 K8 ["OnHostEvent"]
      179 CALL                             R39 3 2
      180 NEWCLOSURE                       R41 P20
      181 CAPTURE                          VAL R9
      182 CAPTURE                          UPVAL U2
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R27
      185 CAPTURE                          VAL R31
      186 CAPTURE                          VAL R33
      187 CAPTURE                          VAL R29
      188 CAPTURE                          VAL R35
      189 CAPTURE                          VAL R38
      190 CAPTURE                          VAL R40
      191 DUPTABLE                         R42 K15 [{"destroy"}]
      192 SETTABLEKS                       R41 R42 K14 ["destroy"]
      194 CLOSEUPVALS                      R12
      195 RETURN                           R42 1

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
      101 DUPCLOSURE                       R14 K30 [PROTO_35]
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R8
      110 RETURN                           R14 1
