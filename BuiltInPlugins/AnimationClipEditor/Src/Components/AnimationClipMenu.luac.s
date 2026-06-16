PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Plugin"]
        5 NAMECALL                         R0 R0 K2 ["get"]
        7 CALL                             R0 1 1
        8 LOADK                            R3 K3 ["AssetExportController"]
        9 NAMECALL                         R1 R0 K4 ["GetPluginComponent"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["props"]
       17 GETTABLEKS                       R2 R2 K5 ["AnimationData"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K0 ["props"]
       22 GETTABLEKS                       R3 R3 K6 ["RootInstance"]
       24 JUMPIFNOT                        R2 ; [+1]
       25 JUMPIF                           R3 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K0 ["props"]
       30 GETTABLEKS                       R4 R4 K7 ["StepAnimation"]
       32 LOADN                            R5 0
       33 CALL                             R4 1 0
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K8 ["toKeyframeSequence"]
       37 MOVE                             R5 R2
       38 MOVE                             R6 R3
       39 CALL                             R4 2 1
       40 MOVE                             R7 R3
       41 MOVE                             R8 R4
       42 NAMECALL                         R5 R1 K9 ["RequestAnimationExportAsync"]
       44 CALL                             R5 3 0
       45 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["hasInternalPermission"]
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+5]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 SETTABLEKS                       R1 R0 K1 ["exportGltf"]
       14 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 DUPCLOSURE                       R2 K2 [PROTO_2]
        3 CALL                             R1 1 2
        4 AND                              R3 R1 R2
        5 SETTABLEKS                       R3 R0 K3 ["hasInternalPermission"]
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Data"]
        3 GETTABLEKS                       R2 R2 K1 ["Animation"]
        5 GETTABLEKS                       R2 R2 K2 ["Name"]
        7 GETTABLEKS                       R3 R0 K0 ["Data"]
        9 GETTABLEKS                       R3 R3 K3 ["IsLegacyAnimSaves"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["OnLoadRequested"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["getAnimSaves"]
        9 GETTABLEKS                       R5 R1 K4 ["RootInstance"]
       11 CALL                             R4 1 1
       12 DUPTABLE                         R5 K8 [{"Text", "Data", "OnItemClicked"}]
       13 LOADK                            R8 K9 ["Menu"]
       14 LOADK                            R9 K10 ["Load"]
       15 NAMECALL                         R6 R2 K11 ["getText"]
       17 CALL                             R6 3 1
       18 SETTABLEKS                       R6 R5 K5 ["Text"]
       20 LOADNIL                          R6
       21 SETTABLEKS                       R6 R5 K6 ["Data"]
       23 LOADNIL                          R6
       24 SETTABLEKS                       R6 R5 K7 ["OnItemClicked"]
       26 LENGTH                           R6 R4
       27 LOADN                            R7 0
       28 JUMPIFNOTLT                      R7 R6 ; [+43]
       30 GETIMPORT                        R6 K13 [ipairs]
       32 MOVE                             R7 R4
       33 CALL                             R6 1 3
       34 FORGPREP_INEXT                   R6
       35 GETTABLEKS                       R11 R10 K14 ["animation"]
       37 GETTABLEKS                       R11 R11 K15 ["Name"]
       39 GETTABLEKS                       R12 R10 K16 ["isLegacyAnimSaves"]
       41 JUMPIFNOT                        R12 ; [+3]
       42 MOVE                             R12 R11
       43 LOADK                            R13 K17 [" *"]
       44 CONCAT                           R11 R12 R13
       45 DUPTABLE                         R14 K8 [{"Text", "Data", "OnItemClicked"}]
       46 SETTABLEKS                       R11 R14 K5 ["Text"]
       48 DUPTABLE                         R15 K20 [{"Animation", "IsLegacyAnimSaves"}]
       49 GETTABLEKS                       R16 R10 K14 ["animation"]
       51 SETTABLEKS                       R16 R15 K18 ["Animation"]
       53 GETTABLEKS                       R16 R10 K16 ["isLegacyAnimSaves"]
       55 SETTABLEKS                       R16 R15 K19 ["IsLegacyAnimSaves"]
       57 SETTABLEKS                       R15 R14 K6 ["Data"]
       59 NEWCLOSURE                       R15 P0
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R15 R14 K7 ["OnItemClicked"]
       63 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       65 MOVE                             R13 R5
       66 GETIMPORT                        R12 K23 [table.insert]
       68 CALL                             R12 2 0
       69 FORGLOOP                         R6 2 [inext] ; [-35]
       71 RETURN                           R5 1
       72 LOADB                            R6 0
       73 SETTABLEKS                       R6 R5 K24 ["Enabled"]
       75 RETURN                           R5 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnOverwriteRequested"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Data"]
        2 GETTABLEKS                       R1 R1 K1 ["Animation"]
        4 GETTABLEKS                       R1 R1 K2 ["Name"]
        6 GETTABLEKS                       R2 R0 K0 ["Data"]
        8 GETTABLEKS                       R2 R2 K3 ["IsLegacyAnimSaves"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K4 ["OnOverwriteRequested"]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R2
       15 CALL                             R3 2 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["getAnimSaves"]
        7 GETTABLEKS                       R4 R1 K3 ["RootInstance"]
        9 CALL                             R3 1 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R5 1 1
       14 LOADK                            R9 K4 ["Menu"]
       15 LOADK                            R10 K5 ["SaveAs"]
       16 NAMECALL                         R7 R2 K6 ["getText"]
       18 CALL                             R7 3 1
       19 SETTABLEKS                       R7 R5 K7 ["Text"]
       21 DUPTABLE                         R6 K9 [{"Text", "OnItemClicked"}]
       22 LOADK                            R9 K4 ["Menu"]
       23 LOADK                            R10 K10 ["New"]
       24 NAMECALL                         R7 R2 K6 ["getText"]
       26 CALL                             R7 3 1
       27 SETTABLEKS                       R7 R6 K7 ["Text"]
       29 GETTABLEKS                       R7 R1 K11 ["OnSaveAsRequested"]
       31 SETTABLEKS                       R7 R6 K8 ["OnItemClicked"]
       33 SETLIST                          R5 R6 1 [1]
       35 LENGTH                           R6 R3
       36 LOADN                            R7 0
       37 JUMPIFNOTLT                      R7 R6 ; [+10]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K12 ["MENU_SEPARATOR"]
       42 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       44 MOVE                             R7 R5
       45 GETIMPORT                        R6 K15 [table.insert]
       47 CALL                             R6 2 0
       48 GETIMPORT                        R6 K17 [ipairs]
       50 MOVE                             R7 R3
       51 CALL                             R6 1 3
       52 FORGPREP_INEXT                   R6
       53 GETTABLEKS                       R11 R10 K18 ["animation"]
       55 GETTABLEKS                       R11 R11 K19 ["Name"]
       57 GETTABLEKS                       R12 R10 K20 ["isLegacyAnimSaves"]
       59 JUMPIFNOT                        R12 ; [+3]
       60 MOVE                             R12 R11
       61 LOADK                            R13 K21 [" *"]
       62 CONCAT                           R11 R12 R13
       63 DUPTABLE                         R14 K23 [{"Text", "Data", "OnItemClicked"}]
       64 SETTABLEKS                       R11 R14 K7 ["Text"]
       66 DUPTABLE                         R15 K26 [{"Animation", "IsLegacyAnimSaves"}]
       67 GETTABLEKS                       R16 R10 K18 ["animation"]
       69 SETTABLEKS                       R16 R15 K24 ["Animation"]
       71 GETTABLEKS                       R16 R10 K20 ["isLegacyAnimSaves"]
       73 SETTABLEKS                       R16 R15 K25 ["IsLegacyAnimSaves"]
       75 SETTABLEKS                       R15 R14 K22 ["Data"]
       77 NEWCLOSURE                       R15 P1
       78 CAPTURE                          VAL R1
       79 SETTABLEKS                       R15 R14 K8 ["OnItemClicked"]
       81 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
       83 MOVE                             R13 R5
       84 GETIMPORT                        R12 K15 [table.insert]
       86 CALL                             R12 2 0
       87 FORGLOOP                         R6 2 [inext] ; [-35]
       89 RETURN                           R5 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 NEWTABLE                         R3 1 1
        6 LOADK                            R7 K2 ["Menu"]
        7 LOADK                            R8 K3 ["Import"]
        8 NAMECALL                         R5 R2 K4 ["getText"]
       10 CALL                             R5 3 1
       11 SETTABLEKS                       R5 R3 K5 ["Text"]
       13 DUPTABLE                         R4 K7 [{"Text", "OnItemClicked"}]
       14 LOADK                            R7 K2 ["Menu"]
       15 LOADK                            R8 K8 ["FromRoblox"]
       16 NAMECALL                         R5 R2 K4 ["getText"]
       18 CALL                             R5 3 1
       19 SETTABLEKS                       R5 R4 K5 ["Text"]
       21 GETTABLEKS                       R5 R1 K9 ["OnImportRequested"]
       23 SETTABLEKS                       R5 R4 K6 ["OnItemClicked"]
       25 SETLIST                          R3 R4 1 [1]
       27 GETUPVAL                         R4 0
       28 CALL                             R4 0 1
       29 JUMPIFNOT                        R4 ; [+19]
       30 DUPTABLE                         R6 K7 [{"Text", "OnItemClicked"}]
       31 LOADK                            R9 K2 ["Menu"]
       32 LOADK                            R10 K10 ["FromFile"]
       33 NAMECALL                         R7 R2 K4 ["getText"]
       35 CALL                             R7 3 1
       36 SETTABLEKS                       R7 R6 K5 ["Text"]
       38 GETTABLEKS                       R7 R1 K11 ["OnImportFromFileRequested"]
       40 SETTABLEKS                       R7 R6 K6 ["OnItemClicked"]
       42 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       44 MOVE                             R5 R3
       45 GETIMPORT                        R4 K14 [table.insert]
       47 CALL                             R4 2 0
       48 JUMP                             ; [+18]
       49 DUPTABLE                         R6 K7 [{"Text", "OnItemClicked"}]
       50 LOADK                            R9 K2 ["Menu"]
       51 LOADK                            R10 K15 ["FromFBX"]
       52 NAMECALL                         R7 R2 K4 ["getText"]
       54 CALL                             R7 3 1
       55 SETTABLEKS                       R7 R6 K5 ["Text"]
       57 GETTABLEKS                       R7 R1 K16 ["OnImportFbxRequested"]
       59 SETTABLEKS                       R7 R6 K6 ["OnItemClicked"]
       61 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       63 MOVE                             R5 R3
       64 GETIMPORT                        R4 K14 [table.insert]
       66 CALL                             R4 2 0
       67 GETUPVAL                         R4 1
       68 JUMPIFNOT                        R4 ; [+31]
       69 DUPTABLE                         R6 K18 [{"Text", "OnItemClicked", "Enabled"}]
       70 LOADK                            R9 K2 ["Menu"]
       71 LOADK                            R10 K19 ["CreateFromVideo"]
       72 NAMECALL                         R7 R2 K4 ["getText"]
       74 CALL                             R7 3 1
       75 SETTABLEKS                       R7 R6 K5 ["Text"]
       77 GETTABLEKS                       R7 R1 K20 ["OnCreateFromVideoRequested"]
       79 SETTABLEKS                       R7 R6 K6 ["OnItemClicked"]
       81 LOADB                            R7 0
       82 GETTABLEKS                       R8 R1 K21 ["RootInstance"]
       84 JUMPIFEQKNIL                     R8 ; [+7]
       86 GETUPVAL                         R7 2
       87 GETTABLEKS                       R7 R7 K22 ["isR15Humanoid"]
       89 GETTABLEKS                       R8 R1 K21 ["RootInstance"]
       91 CALL                             R7 1 1
       92 SETTABLEKS                       R7 R6 K17 ["Enabled"]
       94 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       96 MOVE                             R5 R3
       97 GETIMPORT                        R4 K14 [table.insert]
       99 CALL                             R4 2 0
      100 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Data"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["SetPriority"]
        6 GETTABLEKS                       R4 R1 K3 ["AnimationData"]
        8 MOVE                             R5 R4
        9 JUMPIFNOT                        R5 ; [+7]
       10 GETTABLEKS                       R5 R4 K4 ["Metadata"]
       12 JUMPIFNOT                        R5 ; [+4]
       13 GETTABLEKS                       R5 R4 K4 ["Metadata"]
       15 GETTABLEKS                       R5 R5 K5 ["Priority"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R3
       19 DUPTABLE                         R7 K7 [{"Text"}]
       20 LOADK                            R10 K8 ["Menu"]
       21 LOADK                            R11 K2 ["SetPriority"]
       22 NAMECALL                         R8 R2 K9 ["getText"]
       24 CALL                             R8 3 1
       25 SETTABLEKS                       R8 R7 K6 ["Text"]
       27 NEWTABLE                         R8 0 7
       29 GETIMPORT                        R9 K13 [Enum.AnimationPriority.Core]
       31 GETIMPORT                        R10 K15 [Enum.AnimationPriority.Idle]
       33 GETIMPORT                        R11 K17 [Enum.AnimationPriority.Movement]
       35 GETIMPORT                        R12 K19 [Enum.AnimationPriority.Action]
       37 GETIMPORT                        R13 K21 [Enum.AnimationPriority.Action2]
       39 GETIMPORT                        R14 K23 [Enum.AnimationPriority.Action3]
       41 GETIMPORT                        R15 K25 [Enum.AnimationPriority.Action4]
       43 SETLIST                          R8 R9 7 [1]
       45 MOVE                             R9 R8
       46 LOADNIL                          R10
       47 LOADNIL                          R11
       48 FORGPREP                         R9
       49 DUPTABLE                         R16 K29 [{"Text", "Data", "Checked", "OnItemClicked"}]
       50 LOADK                            R19 K8 ["Menu"]
       51 GETTABLEKS                       R20 R13 K30 ["Name"]
       53 NAMECALL                         R17 R2 K9 ["getText"]
       55 CALL                             R17 3 1
       56 SETTABLEKS                       R17 R16 K6 ["Text"]
       58 SETTABLEKS                       R13 R16 K26 ["Data"]
       60 JUMPIFEQ                         R5 R13 ; [+2]
       62 LOADB                            R17 0 +1
       63 LOADB                            R17 1
       64 SETTABLEKS                       R17 R16 K27 ["Checked"]
       66 SETTABLEKS                       R6 R16 K28 ["OnItemClicked"]
       68 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
       70 MOVE                             R15 R7
       71 GETIMPORT                        R14 K33 [table.insert]
       73 CALL                             R14 2 0
       74 FORGLOOP                         R9 2 ; [-26]
       76 RETURN                           R7 1

PROTO_12:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R4 K1 ["Localization"]
        4 DUPTABLE                         R5 K5 [{"Text", "Enabled", "OnItemClicked"}]
        5 LOADK                            R8 K6 ["Menu"]
        6 MOVE                             R9 R1
        7 NAMECALL                         R6 R4 K7 ["getText"]
        9 CALL                             R6 3 1
       10 SETTABLEKS                       R6 R5 K2 ["Text"]
       12 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       14 LOADB                            R6 0 +1
       15 LOADB                            R6 1
       16 SETTABLEKS                       R6 R5 K3 ["Enabled"]
       18 SETTABLEKS                       R2 R5 K4 ["OnItemClicked"]
       20 RETURN                           R5 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K1 ["OnSaveAsRequested"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["SaveAnimation"]
       11 GETUPVAL                         R1 0
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["Analytics"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["Localization"]
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ExportAnimation"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["Analytics"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["Localization"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnCreateNewRequested"]
        4 GETTABLEKS                       R3 R1 K2 ["OnReduceKeyframesRequested"]
        6 GETTABLEKS                       R4 R1 K3 ["OnSanitizeAnimation"]
        8 GETTABLEKS                       R5 R1 K4 ["OnGenerateControlRigData"]
       10 GETTABLEKS                       R6 R1 K5 ["CurrentAnimation"]
       12 GETTABLEKS                       R7 R1 K6 ["AnimationData"]
       14 GETTABLEKS                       R8 R1 K7 ["RootInstance"]
       16 GETTABLEKS                       R9 R1 K8 ["Plugin"]
       18 GETTABLEKS                       R11 R1 K9 ["PlayState"]
       20 GETUPVAL                         R12 0
       21 GETTABLEKS                       R12 R12 K10 ["PLAY_STATE"]
       23 GETTABLEKS                       R12 R12 K11 ["Record"]
       25 JUMPIFEQ                         R11 R12 ; [+2]
       27 LOADB                            R10 0 +1
       28 LOADB                            R10 1
       29 MOVE                             R11 R7
       30 JUMPIFNOT                        R11 ; [+12]
       31 GETTABLEKS                       R11 R7 K12 ["Metadata"]
       33 JUMPIFNOT                        R11 ; [+9]
       34 LOADB                            R11 0
       35 GETTABLEKS                       R12 R7 K12 ["Metadata"]
       37 GETTABLEKS                       R12 R12 K13 ["EndTick"]
       39 LOADN                            R13 0
       40 JUMPIFNOTLT                      R13 R12 ; [+2]
       42 NOT                              R11 R10
       43 LOADB                            R12 0
       44 JUMPIFEQKNIL                     R8 ; [+9]
       46 LOADB                            R12 0
       47 JUMPIFEQKNIL                     R7 ; [+6]
       49 GETUPVAL                         R12 1
       50 GETTABLEKS                       R12 R12 K14 ["isChannelAnimation"]
       52 MOVE                             R13 R7
       53 CALL                             R12 1 1
       54 NEWTABLE                         R13 0 12
       56 NAMECALL                         R14 R0 K15 ["makeLoadMenu"]
       58 CALL                             R14 1 1
       59 LOADK                            R17 K16 ["Save"]
       60 NEWCLOSURE                       R18 P0
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R1
       63 NAMECALL                         R15 R0 K17 ["makeAction"]
       65 CALL                             R15 3 1
       66 NAMECALL                         R16 R0 K18 ["makeSaveAsMenu"]
       68 CALL                             R16 1 1
       69 GETUPVAL                         R17 0
       70 GETTABLEKS                       R17 R17 K19 ["MENU_SEPARATOR"]
       72 NAMECALL                         R18 R0 K20 ["makeImportMenu"]
       74 CALL                             R18 1 1
       75 LOADK                            R21 K21 ["PublishToRoblox"]
       76 NEWCLOSURE                       R22 P1
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R9
       79 NAMECALL                         R19 R0 K17 ["makeAction"]
       81 CALL                             R19 3 1
       82 GETUPVAL                         R20 0
       83 GETTABLEKS                       R20 R20 K19 ["MENU_SEPARATOR"]
       85 LOADK                            R23 K22 ["CreateNew"]
       86 MOVE                             R24 R2
       87 NAMECALL                         R21 R0 K17 ["makeAction"]
       89 CALL                             R21 3 1
       90 GETUPVAL                         R22 0
       91 GETTABLEKS                       R22 R22 K19 ["MENU_SEPARATOR"]
       93 NAMECALL                         R23 R0 K23 ["makePriorityMenu"]
       95 CALL                             R23 1 1
       96 GETUPVAL                         R24 0
       97 GETTABLEKS                       R24 R24 K19 ["MENU_SEPARATOR"]
       99 LOADK                            R27 K24 ["OptimizeKeyframes"]
      100 MOVE                             R28 R3
      101 MOVE                             R29 R11
      102 NAMECALL                         R25 R0 K17 ["makeAction"]
      104 CALL                             R25 4 -1
      105 SETLIST                          R13 R14 -1 [1]
      107 GETUPVAL                         R14 2
      108 CALL                             R14 0 1
      109 JUMPIFNOT                        R14 ; [+14]
      110 GETUPVAL                         R14 3
      111 CALL                             R14 0 1
      112 JUMPIFNOT                        R14 ; [+11]
      113 MOVE                             R15 R13
      114 LOADK                            R18 K25 ["Export"]
      115 GETTABLEKS                       R19 R0 K26 ["exportGltf"]
      117 NAMECALL                         R16 R0 K17 ["makeAction"]
      119 CALL                             R16 3 -1
      120 FASTCALL                         TABLE_INSERT ; [+2]
      121 GETIMPORT                        R14 K29 [table.insert]
      123 CALL                             R14 -1 0
      124 GETUPVAL                         R14 4
      125 CALL                             R14 0 1
      126 JUMPIFNOT                        R14 ; [+11]
      127 MOVE                             R15 R13
      128 LOADK                            R18 K30 ["GenerateControlRigData"]
      129 MOVE                             R19 R5
      130 MOVE                             R20 R12
      131 NAMECALL                         R16 R0 K17 ["makeAction"]
      133 CALL                             R16 4 -1
      134 FASTCALL                         TABLE_INSERT ; [+2]
      135 GETIMPORT                        R14 K29 [table.insert]
      137 CALL                             R14 -1 0
      138 GETTABLEKS                       R14 R0 K31 ["hasInternalPermission"]
      140 JUMPIFNOT                        R14 ; [+12]
      141 DUPTABLE                         R16 K34 [{"Text", "OnItemClicked"}]
      142 LOADK                            R17 K35 ["[INTERNAL] Sanitize animation"]
      143 SETTABLEKS                       R17 R16 K32 ["Text"]
      145 SETTABLEKS                       R4 R16 K33 ["OnItemClicked"]
      147 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
      149 MOVE                             R15 R13
      150 GETIMPORT                        R14 K29 [table.insert]
      152 CALL                             R14 2 0
      153 RETURN                           R13 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ShowMenu"]
        4 JUMPIFNOT                        R2 ; [+16]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K5 [{"Actions", "OnMenuOpened"}]
       10 NAMECALL                         R6 R0 K6 ["makeMenuActions"]
       12 CALL                             R6 1 1
       13 SETTABLEKS                       R6 R5 K3 ["Actions"]
       15 GETTABLEKS                       R6 R1 K4 ["OnMenuOpened"]
       17 SETTABLEKS                       R6 R5 K4 ["OnMenuOpened"]
       19 CALL                             R3 2 1
       20 JUMPIF                           R3 ; [+1]
       21 LOADNIL                          R3
       22 RETURN                           R3 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["Status"]
        2 DUPTABLE                         R3 K5 [{"AnimationData", "EditorMode", "PlayState", "RootInstance"}]
        3 GETTABLEKS                       R4 R0 K1 ["AnimationData"]
        5 SETTABLEKS                       R4 R3 K1 ["AnimationData"]
        7 GETTABLEKS                       R4 R2 K2 ["EditorMode"]
        9 SETTABLEKS                       R4 R3 K2 ["EditorMode"]
       11 GETTABLEKS                       R4 R2 K3 ["PlayState"]
       13 SETTABLEKS                       R4 R3 K3 ["PlayState"]
       15 GETTABLEKS                       R4 R2 K4 ["RootInstance"]
       17 SETTABLEKS                       R4 R3 K4 ["RootInstance"]
       19 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 CALL                             R1 -1 0
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K1 [{"Priority"}]
        7 SETTABLEKS                       R0 R3 K0 ["Priority"]
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R1 K5 [{"ExportAnimation", "SaveAnimation", "SetEditorMode", "SetPriority", "StepAnimation"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ExportAnimation"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SaveAnimation"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetEditorMode"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 SETTABLEKS                       R2 R1 K3 ["SetPriority"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U5
       25 SETTABLEKS                       R2 R1 K4 ["StepAnimation"]
       27 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["RigInfo"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["RigUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K11 ["Util"]
       52 GETTABLEKS                       R7 R7 K14 ["RigSerialization"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K10 ["Src"]
       59 GETTABLEKS                       R8 R8 K11 ["Util"]
       61 GETTABLEKS                       R8 R8 K15 ["Constants"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R3 K16 ["ContextServices"]
       66 GETTABLEKS                       R9 R8 K17 ["withContext"]
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K10 ["Src"]
       72 GETTABLEKS                       R11 R11 K18 ["Components"]
       74 GETTABLEKS                       R11 R11 K19 ["ContextMenu"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K10 ["Src"]
       81 GETTABLEKS                       R12 R12 K20 ["Thunks"]
       83 GETTABLEKS                       R12 R12 K21 ["Exporting"]
       85 GETTABLEKS                       R12 R12 K22 ["SaveAnimation"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K10 ["Src"]
       92 GETTABLEKS                       R13 R13 K20 ["Thunks"]
       94 GETTABLEKS                       R13 R13 K21 ["Exporting"]
       96 GETTABLEKS                       R13 R13 K23 ["ExportAnimation"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K10 ["Src"]
      103 GETTABLEKS                       R14 R14 K20 ["Thunks"]
      105 GETTABLEKS                       R14 R14 K24 ["Playback"]
      107 GETTABLEKS                       R14 R14 K25 ["StepAnimation"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R15 R0 K10 ["Src"]
      114 GETTABLEKS                       R15 R15 K20 ["Thunks"]
      116 GETTABLEKS                       R15 R15 K26 ["History"]
      118 GETTABLEKS                       R15 R15 K27 ["AddWaypoint"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K10 ["Src"]
      125 GETTABLEKS                       R16 R16 K20 ["Thunks"]
      127 GETTABLEKS                       R16 R16 K28 ["UpdateMetadata"]
      129 CALL                             R15 1 1
      130 GETIMPORT                        R16 K5 [require]
      132 GETTABLEKS                       R17 R0 K10 ["Src"]
      134 GETTABLEKS                       R17 R17 K29 ["Actions"]
      136 GETTABLEKS                       R17 R17 K30 ["SetEditorMode"]
      138 CALL                             R16 1 1
      139 GETIMPORT                        R17 K5 [require]
      141 GETTABLEKS                       R18 R0 K10 ["Src"]
      143 GETTABLEKS                       R18 R18 K11 ["Util"]
      145 GETTABLEKS                       R18 R18 K31 ["AnimationData"]
      147 CALL                             R17 1 1
      148 GETIMPORT                        R18 K33 [game]
      150 LOADK                            R20 K34 ["AnimationFromVideoCreatorServiceInAnimationEditor"]
      151 LOADB                            R21 0
      152 NAMECALL                         R18 R18 K35 ["DefineFastFlag"]
      154 CALL                             R18 3 1
      155 GETIMPORT                        R19 K5 [require]
      157 GETTABLEKS                       R20 R0 K36 ["LuaFlags"]
      159 GETTABLEKS                       R20 R20 K37 ["GetFFlagImportFromFileWithRestPoseInAnimationEditor"]
      161 CALL                             R19 1 1
      162 GETIMPORT                        R20 K5 [require]
      164 GETTABLEKS                       R21 R0 K36 ["LuaFlags"]
      166 GETTABLEKS                       R21 R21 K38 ["GetFFlagControlRig"]
      168 CALL                             R20 1 1
      169 GETIMPORT                        R21 K5 [require]
      171 GETTABLEKS                       R22 R0 K36 ["LuaFlags"]
      173 GETTABLEKS                       R22 R22 K39 ["GetFFlagAnimationExportSupport"]
      175 CALL                             R21 1 1
      176 GETIMPORT                        R22 K5 [require]
      178 GETTABLEKS                       R23 R0 K36 ["LuaFlags"]
      180 GETTABLEKS                       R23 R23 K40 ["GetFFlagAnimationExportUI"]
      182 CALL                             R22 1 1
      183 GETTABLEKS                       R23 R1 K41 ["PureComponent"]
      185 LOADK                            R25 K42 ["AnimationClipMenu"]
      186 NAMECALL                         R23 R23 K43 ["extend"]
      188 CALL                             R23 2 1
      189 DUPCLOSURE                       R24 K44 [PROTO_1]
      190 CAPTURE                          VAL R21
      191 CAPTURE                          VAL R22
      192 CAPTURE                          VAL R6
      193 SETTABLEKS                       R24 R23 K45 ["init"]
      195 DUPCLOSURE                       R24 K46 [PROTO_3]
      196 SETTABLEKS                       R24 R23 K47 ["didMount"]
      198 DUPCLOSURE                       R24 K48 [PROTO_5]
      199 CAPTURE                          VAL R5
      200 SETTABLEKS                       R24 R23 K49 ["makeLoadMenu"]
      202 DUPCLOSURE                       R24 K50 [PROTO_8]
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R7
      205 SETTABLEKS                       R24 R23 K51 ["makeSaveAsMenu"]
      207 DUPCLOSURE                       R24 K52 [PROTO_9]
      208 CAPTURE                          VAL R19
      209 CAPTURE                          VAL R18
      210 CAPTURE                          VAL R4
      211 SETTABLEKS                       R24 R23 K53 ["makeImportMenu"]
      213 DUPCLOSURE                       R24 K54 [PROTO_11]
      214 SETTABLEKS                       R24 R23 K55 ["makePriorityMenu"]
      216 DUPCLOSURE                       R24 K56 [PROTO_12]
      217 SETTABLEKS                       R24 R23 K57 ["makeAction"]
      219 DUPCLOSURE                       R24 K58 [PROTO_15]
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R17
      222 CAPTURE                          VAL R21
      223 CAPTURE                          VAL R22
      224 CAPTURE                          VAL R20
      225 SETTABLEKS                       R24 R23 K59 ["makeMenuActions"]
      227 DUPCLOSURE                       R24 K60 [PROTO_16]
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R10
      230 SETTABLEKS                       R24 R23 K61 ["render"]
      232 MOVE                             R24 R9
      233 DUPTABLE                         R25 K65 [{"Localization", "Plugin", "Analytics"}]
      234 GETTABLEKS                       R26 R8 K62 ["Localization"]
      236 SETTABLEKS                       R26 R25 K62 ["Localization"]
      238 GETTABLEKS                       R26 R8 K63 ["Plugin"]
      240 SETTABLEKS                       R26 R25 K63 ["Plugin"]
      242 GETTABLEKS                       R26 R8 K64 ["Analytics"]
      244 SETTABLEKS                       R26 R25 K64 ["Analytics"]
      246 CALL                             R24 1 1
      247 MOVE                             R25 R23
      248 CALL                             R24 1 1
      249 MOVE                             R23 R24
      250 DUPCLOSURE                       R24 K66 [PROTO_17]
      251 DUPCLOSURE                       R25 K67 [PROTO_23]
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R11
      254 CAPTURE                          VAL R16
      255 CAPTURE                          VAL R14
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R13
      258 GETTABLEKS                       R26 R2 K68 ["connect"]
      260 MOVE                             R27 R24
      261 MOVE                             R28 R25
      262 CALL                             R26 2 1
      263 MOVE                             R27 R23
      264 CALL                             R26 1 -1
      265 RETURN                           R26 -1
