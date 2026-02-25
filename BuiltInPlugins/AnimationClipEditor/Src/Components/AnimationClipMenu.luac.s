PROTO_0:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["hasInternalPermission"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 DUPCLOSURE                       R2 K2 [PROTO_1]
        3 CALL                             R1 1 2
        4 AND                              R3 R1 R2
        5 SETTABLEKS                       R3 R0 K3 ["hasInternalPermission"]
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R4 R0 K0 ["Data"]
        3 GETTABLEKS                       R3 R4 K1 ["Animation"]
        5 GETTABLEKS                       R2 R3 K2 ["Name"]
        7 GETTABLEKS                       R4 R0 K0 ["Data"]
        9 GETTABLEKS                       R3 R4 K3 ["IsLegacyAnimSaves"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["OnLoadRequested"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["getAnimSaves"]
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
       35 GETTABLEKS                       R12 R10 K14 ["animation"]
       37 GETTABLEKS                       R11 R12 K15 ["Name"]
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

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnOverwriteRequested"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["Data"]
        2 GETTABLEKS                       R2 R3 K1 ["Animation"]
        4 GETTABLEKS                       R1 R2 K2 ["Name"]
        6 GETTABLEKS                       R3 R0 K0 ["Data"]
        8 GETTABLEKS                       R2 R3 K3 ["IsLegacyAnimSaves"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K4 ["OnOverwriteRequested"]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R2
       15 CALL                             R3 2 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["getAnimSaves"]
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
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R8 R9 K12 ["MENU_SEPARATOR"]
       42 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       44 MOVE                             R7 R5
       45 GETIMPORT                        R6 K15 [table.insert]
       47 CALL                             R6 2 0
       48 GETIMPORT                        R6 K17 [ipairs]
       50 MOVE                             R7 R3
       51 CALL                             R6 1 3
       52 FORGPREP_INEXT                   R6
       53 GETTABLEKS                       R12 R10 K18 ["animation"]
       55 GETTABLEKS                       R11 R12 K19 ["Name"]
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

PROTO_8:
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
       68 JUMPIFNOT                        R4 ; [+26]
       69 DUPTABLE                         R6 K18 [{"Text", "OnItemClicked", "Enabled"}]
       70 LOADK                            R9 K2 ["Menu"]
       71 LOADK                            R10 K19 ["CreateFromVideo"]
       72 NAMECALL                         R7 R2 K4 ["getText"]
       74 CALL                             R7 3 1
       75 SETTABLEKS                       R7 R6 K5 ["Text"]
       77 GETTABLEKS                       R7 R1 K20 ["OnCreateFromVideoRequested"]
       79 SETTABLEKS                       R7 R6 K6 ["OnItemClicked"]
       81 GETUPVAL                         R8 2
       82 GETTABLEKS                       R7 R8 K21 ["isR15Humanoid"]
       84 GETTABLEKS                       R8 R1 K22 ["RootInstance"]
       86 CALL                             R7 1 1
       87 SETTABLEKS                       R7 R6 K17 ["Enabled"]
       89 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       91 MOVE                             R5 R3
       92 GETIMPORT                        R4 K14 [table.insert]
       94 CALL                             R4 2 0
       95 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Data"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["SetPriority"]
        6 GETTABLEKS                       R4 R1 K3 ["AnimationData"]
        8 MOVE                             R5 R4
        9 JUMPIFNOT                        R5 ; [+7]
       10 GETTABLEKS                       R5 R4 K4 ["Metadata"]
       12 JUMPIFNOT                        R5 ; [+4]
       13 GETTABLEKS                       R6 R4 K4 ["Metadata"]
       15 GETTABLEKS                       R5 R6 K5 ["Priority"]
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

PROTO_11:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R5 K1 ["Localization"]
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K1 ["OnSaveAsRequested"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K2 ["SaveAnimation"]
       11 GETUPVAL                         R1 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K3 ["Analytics"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K4 ["Localization"]
       18 CALL                             R0 3 0
       19 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ExportAnimation"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["Analytics"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["Localization"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_14:
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
       20 GETUPVAL                         R14 0
       21 GETTABLEKS                       R13 R14 K10 ["PLAY_STATE"]
       23 GETTABLEKS                       R12 R13 K11 ["Record"]
       25 JUMPIFEQ                         R11 R12 ; [+2]
       27 LOADB                            R10 0 +1
       28 LOADB                            R10 1
       29 MOVE                             R11 R7
       30 JUMPIFNOT                        R11 ; [+12]
       31 GETTABLEKS                       R11 R7 K12 ["Metadata"]
       33 JUMPIFNOT                        R11 ; [+9]
       34 LOADB                            R11 0
       35 GETTABLEKS                       R13 R7 K12 ["Metadata"]
       37 GETTABLEKS                       R12 R13 K13 ["EndTick"]
       39 LOADN                            R13 0
       40 JUMPIFNOTLT                      R13 R12 ; [+2]
       42 NOT                              R11 R10
       43 LOADB                            R12 0
       44 JUMPIFEQKNIL                     R8 ; [+9]
       46 LOADB                            R12 0
       47 JUMPIFEQKNIL                     R7 ; [+6]
       49 GETUPVAL                         R13 1
       50 GETTABLEKS                       R12 R13 K14 ["isChannelAnimation"]
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
       69 GETUPVAL                         R18 0
       70 GETTABLEKS                       R17 R18 K19 ["MENU_SEPARATOR"]
       72 NAMECALL                         R18 R0 K20 ["makeImportMenu"]
       74 CALL                             R18 1 1
       75 LOADK                            R21 K21 ["PublishToRoblox"]
       76 NEWCLOSURE                       R22 P1
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R9
       79 NAMECALL                         R19 R0 K17 ["makeAction"]
       81 CALL                             R19 3 1
       82 GETUPVAL                         R21 0
       83 GETTABLEKS                       R20 R21 K19 ["MENU_SEPARATOR"]
       85 LOADK                            R23 K22 ["CreateNew"]
       86 MOVE                             R24 R2
       87 NAMECALL                         R21 R0 K17 ["makeAction"]
       89 CALL                             R21 3 1
       90 GETUPVAL                         R23 0
       91 GETTABLEKS                       R22 R23 K19 ["MENU_SEPARATOR"]
       93 NAMECALL                         R23 R0 K23 ["makePriorityMenu"]
       95 CALL                             R23 1 1
       96 GETUPVAL                         R25 0
       97 GETTABLEKS                       R24 R25 K19 ["MENU_SEPARATOR"]
       99 LOADK                            R27 K24 ["OptimizeKeyframes"]
      100 MOVE                             R28 R3
      101 MOVE                             R29 R11
      102 NAMECALL                         R25 R0 K17 ["makeAction"]
      104 CALL                             R25 4 -1
      105 SETLIST                          R13 R14 -1 [1]
      107 GETUPVAL                         R14 2
      108 CALL                             R14 0 1
      109 JUMPIFNOT                        R14 ; [+11]
      110 MOVE                             R15 R13
      111 LOADK                            R18 K25 ["GenerateControlRigData"]
      112 MOVE                             R19 R5
      113 MOVE                             R20 R12
      114 NAMECALL                         R16 R0 K17 ["makeAction"]
      116 CALL                             R16 4 -1
      117 FASTCALL                         TABLE_INSERT ; [+2]
      118 GETIMPORT                        R14 K28 [table.insert]
      120 CALL                             R14 -1 0
      121 GETTABLEKS                       R14 R0 K29 ["hasInternalPermission"]
      123 JUMPIFNOT                        R14 ; [+12]
      124 DUPTABLE                         R16 K32 [{"Text", "OnItemClicked"}]
      125 LOADK                            R17 K33 ["[INTERNAL] Sanitize animation"]
      126 SETTABLEKS                       R17 R16 K30 ["Text"]
      128 SETTABLEKS                       R4 R16 K31 ["OnItemClicked"]
      130 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
      132 MOVE                             R15 R13
      133 GETIMPORT                        R14 K28 [table.insert]
      135 CALL                             R14 2 0
      136 RETURN                           R13 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ShowMenu"]
        4 JUMPIFNOT                        R2 ; [+16]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["createElement"]
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 DUPTABLE                         R1 K4 [{"ExportAnimation", "SaveAnimation", "SetEditorMode", "SetPriority"}]
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
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Util"]
       34 GETTABLEKS                       R5 R6 K12 ["RigInfo"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K11 ["Util"]
       43 GETTABLEKS                       R6 R7 K13 ["RigUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K10 ["Src"]
       50 GETTABLEKS                       R8 R9 K11 ["Util"]
       52 GETTABLEKS                       R7 R8 K14 ["Constants"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R3 K15 ["ContextServices"]
       57 GETTABLEKS                       R8 R7 K16 ["withContext"]
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R12 R0 K10 ["Src"]
       63 GETTABLEKS                       R11 R12 K17 ["Components"]
       65 GETTABLEKS                       R10 R11 K18 ["ContextMenu"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R14 R0 K10 ["Src"]
       72 GETTABLEKS                       R13 R14 K19 ["Thunks"]
       74 GETTABLEKS                       R12 R13 K20 ["Exporting"]
       76 GETTABLEKS                       R11 R12 K21 ["SaveAnimation"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R15 R0 K10 ["Src"]
       83 GETTABLEKS                       R14 R15 K19 ["Thunks"]
       85 GETTABLEKS                       R13 R14 K20 ["Exporting"]
       87 GETTABLEKS                       R12 R13 K22 ["ExportAnimation"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R16 R0 K10 ["Src"]
       94 GETTABLEKS                       R15 R16 K19 ["Thunks"]
       96 GETTABLEKS                       R14 R15 K23 ["History"]
       98 GETTABLEKS                       R13 R14 K24 ["AddWaypoint"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R16 R0 K10 ["Src"]
      105 GETTABLEKS                       R15 R16 K19 ["Thunks"]
      107 GETTABLEKS                       R14 R15 K25 ["UpdateMetadata"]
      109 CALL                             R13 1 1
      110 GETIMPORT                        R14 K5 [require]
      112 GETTABLEKS                       R17 R0 K10 ["Src"]
      114 GETTABLEKS                       R16 R17 K26 ["Actions"]
      116 GETTABLEKS                       R15 R16 K27 ["SetEditorMode"]
      118 CALL                             R14 1 1
      119 GETIMPORT                        R15 K5 [require]
      121 GETTABLEKS                       R18 R0 K10 ["Src"]
      123 GETTABLEKS                       R17 R18 K11 ["Util"]
      125 GETTABLEKS                       R16 R17 K28 ["AnimationData"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K30 [game]
      130 LOADK                            R18 K31 ["AnimationFromVideoCreatorServiceInAnimationEditor"]
      131 LOADB                            R19 0
      132 NAMECALL                         R16 R16 K32 ["DefineFastFlag"]
      134 CALL                             R16 3 1
      135 GETIMPORT                        R17 K5 [require]
      137 GETTABLEKS                       R19 R0 K33 ["LuaFlags"]
      139 GETTABLEKS                       R18 R19 K34 ["GetFFlagImportFromFileWithRestPoseInAnimationEditor"]
      141 CALL                             R17 1 1
      142 GETIMPORT                        R18 K5 [require]
      144 GETTABLEKS                       R20 R0 K33 ["LuaFlags"]
      146 GETTABLEKS                       R19 R20 K35 ["GetFFlagControlRig"]
      148 CALL                             R18 1 1
      149 GETTABLEKS                       R19 R1 K36 ["PureComponent"]
      151 LOADK                            R21 K37 ["AnimationClipMenu"]
      152 NAMECALL                         R19 R19 K38 ["extend"]
      154 CALL                             R19 2 1
      155 DUPCLOSURE                       R20 K39 [PROTO_0]
      156 SETTABLEKS                       R20 R19 K40 ["init"]
      158 DUPCLOSURE                       R20 K41 [PROTO_2]
      159 SETTABLEKS                       R20 R19 K42 ["didMount"]
      161 DUPCLOSURE                       R20 K43 [PROTO_4]
      162 CAPTURE                          VAL R5
      163 SETTABLEKS                       R20 R19 K44 ["makeLoadMenu"]
      165 DUPCLOSURE                       R20 K45 [PROTO_7]
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R6
      168 SETTABLEKS                       R20 R19 K46 ["makeSaveAsMenu"]
      170 DUPCLOSURE                       R20 K47 [PROTO_8]
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R4
      174 SETTABLEKS                       R20 R19 K48 ["makeImportMenu"]
      176 DUPCLOSURE                       R20 K49 [PROTO_10]
      177 SETTABLEKS                       R20 R19 K50 ["makePriorityMenu"]
      179 DUPCLOSURE                       R20 K51 [PROTO_11]
      180 SETTABLEKS                       R20 R19 K52 ["makeAction"]
      182 DUPCLOSURE                       R20 K53 [PROTO_14]
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R18
      186 SETTABLEKS                       R20 R19 K54 ["makeMenuActions"]
      188 DUPCLOSURE                       R20 K55 [PROTO_15]
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R9
      191 SETTABLEKS                       R20 R19 K56 ["render"]
      193 MOVE                             R20 R8
      194 DUPTABLE                         R21 K60 [{"Localization", "Plugin", "Analytics"}]
      195 GETTABLEKS                       R22 R7 K57 ["Localization"]
      197 SETTABLEKS                       R22 R21 K57 ["Localization"]
      199 GETTABLEKS                       R22 R7 K58 ["Plugin"]
      201 SETTABLEKS                       R22 R21 K58 ["Plugin"]
      203 GETTABLEKS                       R22 R7 K59 ["Analytics"]
      205 SETTABLEKS                       R22 R21 K59 ["Analytics"]
      207 CALL                             R20 1 1
      208 MOVE                             R21 R19
      209 CALL                             R20 1 1
      210 MOVE                             R19 R20
      211 DUPCLOSURE                       R20 K61 [PROTO_16]
      212 DUPCLOSURE                       R21 K62 [PROTO_21]
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R12
      217 CAPTURE                          VAL R13
      218 GETTABLEKS                       R22 R2 K63 ["connect"]
      220 MOVE                             R23 R20
      221 MOVE                             R24 R21
      222 CALL                             R22 2 1
      223 MOVE                             R23 R19
      224 CALL                             R22 1 -1
      225 RETURN                           R22 -1
