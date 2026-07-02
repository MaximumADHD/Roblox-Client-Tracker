PROTO_0:
        0 DUPTABLE                         R4 K7 [{[1], ["studioDefaultName"], ["defaultName"] = "", ["_plugin"], ["_store"], ["_localization"]}]
        1 LOADK                            R7 K8 ["Templates"]
        2 LOADK                            R8 K9 ["LastImported"]
        3 NAMECALL                         R5 R2 K10 ["getText"]
        5 CALL                             R5 3 1
        6 SETTABLEKS                       R5 R4 K0 ["lastImportName"]
        8 LOADK                            R7 K8 ["Templates"]
        9 LOADK                            R8 K11 ["StudioDefault"]
       10 NAMECALL                         R5 R2 K10 ["getText"]
       12 CALL                             R5 3 1
       13 SETTABLEKS                       R5 R4 K1 ["studioDefaultName"]
       15 SETTABLEKS                       R0 R4 K4 ["_plugin"]
       17 SETTABLEKS                       R1 R4 K5 ["_store"]
       19 SETTABLEKS                       R2 R4 K6 ["_localization"]
       21 GETUPVAL                         R5 0
       22 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       24 GETIMPORT                        R3 K13 [setmetatable]
       26 CALL                             R3 2 1
       27 GETTABLEKS                       R5 R3 K4 ["_plugin"]
       29 LOADK                            R7 K14 ["AssetImporter_DefaultPreset"]
       30 NAMECALL                         R5 R5 K15 ["GetSetting"]
       32 CALL                             R5 2 1
       33 JUMPIFNOT                        R5 ; [+7]
       34 GETTABLEKS                       R4 R3 K4 ["_plugin"]
       36 LOADK                            R6 K14 ["AssetImporter_DefaultPreset"]
       37 NAMECALL                         R4 R4 K15 ["GetSetting"]
       39 CALL                             R4 2 1
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R4 R3 K1 ["studioDefaultName"]
       43 SETTABLEKS                       R4 R3 K2 ["defaultName"]
       45 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R1 K0 [""]
        1 SETTABLEKS                       R1 R0 K1 ["defaultName"]
        3 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R2
        1 SETTABLEKS                       R2 R1 K0 ["Material"]
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 LOADNIL                          R7
        8 SETTABLEKS                       R7 R6 K1 ["ImportName"]
       10 LOADNIL                          R7
       11 SETTABLEKS                       R7 R6 K2 ["ShouldImport"]
       13 FORGLOOP                         R2 2 ; [-7]
       15 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["isStudioDefault"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+5]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K1 ["isLastImport"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+2]
       10 LOADB                            R2 0
       11 RETURN                           R2 1
       12 GETTABLEKS                       R2 R0 K2 ["_store"]
       14 NAMECALL                         R2 R2 K3 ["getState"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K4 ["Preview"]
       19 GETTABLEKS                       R2 R2 K5 ["assetImportSession"]
       21 GETTABLEKS                       R3 R0 K2 ["_store"]
       23 NAMECALL                         R3 R3 K3 ["getState"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R3 R3 K4 ["Preview"]
       28 GETTABLEKS                       R3 R3 K6 ["selectedImportItem"]
       30 MOVE                             R6 R3
       31 NAMECALL                         R4 R2 K7 ["CreatePresetFromData"]
       33 CALL                             R4 2 1
       34 MOVE                             R7 R4
       35 NAMECALL                         R5 R0 K8 ["_filter"]
       37 CALL                             R5 2 0
       38 GETUPVAL                         R5 0
       39 MOVE                             R7 R1
       40 NAMECALL                         R5 R5 K9 ["GetPreset"]
       42 CALL                             R5 2 1
       43 GETUPVAL                         R6 1
       44 MOVE                             R7 R5
       45 MOVE                             R8 R4
       46 CALL                             R6 2 1
       47 GETTABLEKS                       R7 R0 K2 ["_store"]
       49 NAMECALL                         R7 R7 K3 ["getState"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R7 R7 K4 ["Preview"]
       54 GETTABLEKS                       R7 R7 K10 ["activeQueueItem"]
       56 JUMPIFNOT                        R7 ; [+11]
       57 GETTABLEKS                       R8 R0 K2 ["_store"]
       59 GETUPVAL                         R10 2
       60 MOVE                             R11 R7
       61 DUPTABLE                         R12 K14 [{["currentPreset"], ["settingsChanged"] = False}]
       62 SETTABLEKS                       R1 R12 K11 ["currentPreset"]
       64 CALL                             R10 2 -1
       65 NAMECALL                         R8 R8 K15 ["dispatch"]
       67 CALL                             R8 -1 0
       68 GETUPVAL                         R8 0
       69 MOVE                             R10 R1
       70 MOVE                             R11 R6
       71 NAMECALL                         R8 R8 K16 ["SavePreset"]
       73 CALL                             R8 3 -1
       74 RETURN                           R8 -1

PROTO_4:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R2 K0 ["CreatePresetFromData"]
        3 CALL                             R3 2 1
        4 MOVE                             R6 R3
        5 NAMECALL                         R4 R0 K1 ["_filter"]
        7 CALL                             R4 2 0
        8 GETUPVAL                         R4 0
        9 LOADK                            R6 K2 ["Last Imported"]
       10 MOVE                             R7 R3
       11 NAMECALL                         R4 R4 K3 ["SavePreset"]
       13 CALL                             R4 3 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_store"]
        2 NAMECALL                         R3 R3 K1 ["getState"]
        4 CALL                             R3 1 1
        5 NEWTABLE                         R4 0 0
        7 GETTABLEKS                       R5 R0 K0 ["_store"]
        9 NAMECALL                         R9 R5 K1 ["getState"]
       11 CALL                             R9 1 1
       12 MOVE                             R6 R9
       13 GETTABLEKS                       R6 R6 K2 ["Sessions"]
       15 GETTABLEKS                       R6 R6 K3 ["sessionQueue"]
       17 LOADNIL                          R7
       18 LOADNIL                          R8
       19 FORGPREP                         R6
       20 NAMECALL                         R12 R5 K1 ["getState"]
       22 CALL                             R12 1 1
       23 GETTABLEKS                       R12 R12 K2 ["Sessions"]
       25 GETTABLEKS                       R12 R12 K3 ["sessionQueue"]
       27 GETTABLE                         R11 R12 R9
       28 GETTABLEKS                       R12 R11 K4 ["currentPreset"]
       30 JUMPIFNOTEQ                      R12 R1 ; [+8]
       32 GETUPVAL                         R14 0
       33 MOVE                             R15 R11
       34 MOVE                             R16 R2
       35 CALL                             R14 2 -1
       36 NAMECALL                         R12 R5 K5 ["dispatch"]
       38 CALL                             R12 -1 0
       39 FORGLOOP                         R6 2 ; [-20]
       41 GETTABLEKS                       R6 R3 K6 ["Dialogs"]
       43 GETTABLEKS                       R6 R6 K7 ["showPreview"]
       45 JUMPIFNOT                        R6 ; [+14]
       46 GETTABLEKS                       R6 R3 K8 ["Preview"]
       48 GETTABLEKS                       R6 R6 K9 ["activeQueueItem"]
       50 GETTABLEKS                       R7 R0 K0 ["_store"]
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R11 R6 K10 ["filepath"]
       55 GETTABLE                         R10 R4 R11
       56 CALL                             R9 1 -1
       57 NAMECALL                         R7 R7 K5 ["dispatch"]
       59 CALL                             R7 -1 0
       60 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R2
        2 NAMECALL                         R3 R3 K0 ["GetPreset"]
        4 CALL                             R3 2 1
        5 GETUPVAL                         R4 0
        6 MOVE                             R6 R2
        7 NAMECALL                         R4 R4 K1 ["RemovePreset"]
        9 CALL                             R4 2 0
       10 GETUPVAL                         R4 0
       11 MOVE                             R6 R1
       12 MOVE                             R7 R3
       13 NAMECALL                         R4 R4 K2 ["SavePreset"]
       15 CALL                             R4 3 0
       16 GETTABLEKS                       R4 R0 K3 ["defaultName"]
       18 JUMPIFNOTEQ                      R4 R2 ; [+10]
       20 GETTABLEKS                       R4 R0 K4 ["_plugin"]
       22 LOADK                            R6 K5 ["AssetImporter_DefaultPreset"]
       23 MOVE                             R7 R1
       24 NAMECALL                         R4 R4 K6 ["SetSetting"]
       26 CALL                             R4 3 0
       27 SETTABLEKS                       R1 R0 K3 ["defaultName"]
       29 MOVE                             R6 R2
       30 DUPTABLE                         R7 K8 [{"currentPreset"}]
       31 SETTABLEKS                       R1 R7 K7 ["currentPreset"]
       33 NAMECALL                         R4 R0 K9 ["_updateQueueItems"]
       35 CALL                             R4 3 0
       36 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["RemovePreset"]
        4 CALL                             R2 2 0
        5 GETTABLEKS                       R2 R0 K1 ["defaultName"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+5]
        9 GETTABLEKS                       R2 R0 K2 ["studioDefaultName"]
       11 SETTABLEKS                       R2 R0 K1 ["defaultName"]
       13 MOVE                             R4 R1
       14 DUPTABLE                         R5 K6 [{["currentPreset"], ["settingsChanged"] = True}]
       15 GETTABLEKS                       R6 R0 K2 ["studioDefaultName"]
       17 SETTABLEKS                       R6 R5 K3 ["currentPreset"]
       19 NAMECALL                         R2 R0 K7 ["_updateQueueItems"]
       21 CALL                             R2 3 0
       22 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_plugin"]
        2 LOADK                            R4 K1 ["AssetImporter_DefaultPreset"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K2 ["SetSetting"]
        6 CALL                             R2 3 0
        7 SETTABLEKS                       R1 R0 K3 ["defaultName"]
        9 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["defaultName"]
        3 JUMPIFEQKS                       R2 K1 [""] ; [+9]
        5 GETTABLEKS                       R2 R0 K0 ["defaultName"]
        7 GETTABLEKS                       R3 R0 K2 ["studioDefaultName"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_store"]
        2 NAMECALL                         R2 R2 K1 ["getState"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R2 R2 K2 ["Dialogs"]
        7 GETTABLEKS                       R2 R2 K3 ["showPreview"]
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 NAMECALL                         R2 R1 K4 ["CreatePresetFromData"]
       13 CALL                             R2 1 1
       14 MOVE                             R3 R2
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 LOADNIL                          R8
       19 SETTABLEKS                       R8 R7 K5 ["ImportName"]
       21 FORGLOOP                         R3 2 ; [-4]
       23 GETTABLEKS                       R3 R0 K0 ["_store"]
       25 NAMECALL                         R3 R3 K1 ["getState"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R3 R3 K6 ["Preview"]
       30 GETTABLEKS                       R3 R3 K7 ["activeQueueItem"]
       32 GETTABLEKS                       R4 R3 K8 ["session"]
       34 MOVE                             R6 R2
       35 NAMECALL                         R4 R4 K9 ["ApplyPreset"]
       37 CALL                             R4 2 0
       38 GETTABLEKS                       R4 R0 K0 ["_store"]
       40 GETUPVAL                         R6 0
       41 MOVE                             R7 R3
       42 NEWTABLE                         R8 0 0
       44 CALL                             R6 2 -1
       45 NAMECALL                         R4 R4 K10 ["dispatch"]
       47 CALL                             R4 -1 0
       48 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["defaultName"]
        2 JUMPIFEQ                         R3 R1 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_12:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["lastImportName"]
        3 JUMPIFEQ                         R3 R1 ; [+5]
        5 JUMPIFEQKS                       R1 K1 ["Last Imported"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_13:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["studioDefaultName"]
        3 JUMPIFEQ                         R3 R1 ; [+5]
        5 JUMPIFEQKS                       R1 K1 ["Studio Default"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_14:
        0 NAMECALL                         R2 R1 K0 ["GetImportTree"]
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 1 0
        5 GETTABLEKS                       R4 R2 K1 ["ImportName"]
        7 SETTABLE                         R4 R3 R2
        8 NAMECALL                         R4 R2 K2 ["GetDescendants"]
       10 CALL                             R4 1 3
       11 FORGPREP                         R4
       12 GETTABLEKS                       R9 R8 K1 ["ImportName"]
       14 SETTABLE                         R9 R3 R8
       15 FORGLOOP                         R4 2 ; [-4]
       17 NAMECALL                         R4 R1 K3 ["Reset"]
       19 CALL                             R4 1 0
       20 GETTABLE                         R4 R3 R2
       21 SETTABLEKS                       R4 R2 K1 ["ImportName"]
       23 NAMECALL                         R4 R1 K0 ["GetImportTree"]
       25 CALL                             R4 1 1
       26 NAMECALL                         R4 R4 K2 ["GetDescendants"]
       28 CALL                             R4 1 3
       29 FORGPREP                         R4
       30 GETTABLE                         R9 R3 R8
       31 SETTABLEKS                       R9 R8 K1 ["ImportName"]
       33 FORGLOOP                         R4 2 ; [-4]
       35 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R3 K3 [{[1], ["settingsChanged"] = False}]
        1 SETTABLEKS                       R1 R3 K0 ["currentPreset"]
        3 GETTABLEKS                       R4 R2 K4 ["session"]
        5 JUMPIFNOT                        R4 ; [+88]
        6 NAMECALL                         R5 R4 K5 ["GetImportTree"]
        8 CALL                             R5 1 1
        9 JUMPIFNOT                        R5 ; [+84]
       10 MOVE                             R7 R4
       11 NAMECALL                         R5 R0 K6 ["reset"]
       13 CALL                             R5 2 0
       14 MOVE                             R8 R1
       15 NAMECALL                         R6 R0 K7 ["isLastImport"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+7]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R7 R0 K8 ["lastImportName"]
       22 NAMECALL                         R5 R5 K9 ["GetPreset"]
       24 CALL                             R5 2 1
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R5 0
       27 MOVE                             R7 R1
       28 NAMECALL                         R5 R5 K9 ["GetPreset"]
       30 CALL                             R5 2 1
       31 MOVE                             R8 R5
       32 NAMECALL                         R6 R4 K10 ["ApplyPreset"]
       34 CALL                             R6 2 0
       35 GETTABLEKS                       R6 R0 K11 ["_store"]
       37 NAMECALL                         R6 R6 K12 ["getState"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R6 R6 K13 ["Dialogs"]
       42 GETTABLEKS                       R6 R6 K14 ["showPreview"]
       44 JUMPIFNOT                        R6 ; [+49]
       45 NEWTABLE                         R6 0 0
       47 GETTABLEKS                       R7 R0 K11 ["_store"]
       49 NAMECALL                         R7 R7 K12 ["getState"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R7 R7 K15 ["Preview"]
       54 GETTABLEKS                       R7 R7 K16 ["importDataChecked"]
       56 MOVE                             R8 R7
       57 LOADNIL                          R9
       58 LOADNIL                          R10
       59 FORGPREP                         R8
       60 GETTABLEKS                       R13 R11 K17 ["ShouldImport"]
       62 SETTABLE                         R13 R6 R11
       63 FORGLOOP                         R8 2 ; [-4]
       65 GETTABLEKS                       R8 R0 K11 ["_store"]
       67 GETUPVAL                         R10 1
       68 MOVE                             R11 R6
       69 CALL                             R10 1 -1
       70 NAMECALL                         R8 R8 K18 ["dispatch"]
       72 CALL                             R8 -1 0
       73 GETTABLEKS                       R8 R0 K11 ["_store"]
       75 NAMECALL                         R8 R8 K12 ["getState"]
       77 CALL                             R8 1 1
       78 GETTABLEKS                       R8 R8 K15 ["Preview"]
       80 GETTABLEKS                       R8 R8 K19 ["selectedImportItem"]
       82 JUMPIFNOT                        R8 ; [+11]
       83 NAMECALL                         R9 R8 K20 ["GetPreview"]
       85 CALL                             R9 1 1
       86 GETTABLEKS                       R10 R0 K11 ["_store"]
       88 GETUPVAL                         R12 2
       89 MOVE                             R13 R9
       90 CALL                             R12 1 -1
       91 NAMECALL                         R10 R10 K18 ["dispatch"]
       93 CALL                             R10 -1 0
       94 GETTABLEKS                       R5 R0 K11 ["_store"]
       96 GETUPVAL                         R7 3
       97 MOVE                             R8 R2
       98 MOVE                             R9 R3
       99 CALL                             R7 2 -1
      100 NAMECALL                         R5 R5 K18 ["dispatch"]
      102 CALL                             R5 -1 -1
      103 RETURN                           R5 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["isStudioDefault"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETUPVAL                         R3 1
        7 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R2 K3 [table.insert]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 0
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R2 K4 ["isLastImport"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+2]
       20 SETUPVAL                         R1 2
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 3
       23 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       25 MOVE                             R4 R1
       26 GETIMPORT                        R2 K3 [table.insert]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_18:
        0 NEWTABLE                         R3 0 0
        2 LOADNIL                          R4
        3 NEWTABLE                         R5 0 0
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K0 ["forEach"]
        8 NAMECALL                         R7 R0 K1 ["getAllPresets"]
       10 CALL                             R7 1 1
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          REF R4
       15 CAPTURE                          VAL R5
       16 CALL                             R6 2 0
       17 JUMPIFNOT                        R4 ; [+7]
       18 FASTCALL2                        TABLE_INSERT R3 R4 ; [+5]
       20 MOVE                             R7 R3
       21 MOVE                             R8 R4
       22 GETIMPORT                        R6 K4 [table.insert]
       24 CALL                             R6 2 0
       25 MOVE                             R6 R5
       26 LOADNIL                          R7
       27 LOADNIL                          R8
       28 FORGPREP                         R6
       29 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       31 MOVE                             R12 R3
       32 MOVE                             R13 R10
       33 GETIMPORT                        R11 K4 [table.insert]
       35 CALL                             R11 2 0
       36 FORGLOOP                         R6 2 ; [-8]
       38 JUMPIFNOT                        R2 ; [+3]
       39 GETTABLEKS                       R6 R2 K5 ["settingsChanged"]
       41 JUMP                             ; [+1]
       42 LOADB                            R6 0
       43 GETUPVAL                         R7 1
       44 MOVE                             R8 R3
       45 NEWCLOSURE                       R9 P1
       46 CAPTURE                          VAL R1
       47 CALL                             R7 2 1
       48 JUMPIFNOT                        R7 ; [+5]
       49 JUMPIFNOT                        R6 ; [+4]
       50 MOVE                             R9 R1
       51 LOADK                            R10 K6 ["*"]
       52 CONCAT                           R8 R9 R10
       53 SETTABLE                         R8 R3 R7
       54 CLOSEUPVALS                      R4
       55 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetAllPresets"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K1 ["Last Imported"]
        6 JUMPIFNOT                        R2 ; [+8]
        7 GETTABLEKS                       R2 R1 K1 ["Last Imported"]
        9 LOADNIL                          R3
       10 SETTABLEKS                       R3 R1 K1 ["Last Imported"]
       12 GETTABLEKS                       R3 R0 K2 ["lastImportName"]
       14 SETTABLE                         R2 R1 R3
       15 GETTABLEKS                       R2 R0 K3 ["studioDefaultName"]
       17 NEWTABLE                         R3 0 0
       19 SETTABLE                         R3 R1 R2
       20 RETURN                           R1 1

PROTO_20:
        0 NAMECALL                         R1 R0 K0 ["getAllPresets"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R4 R0 K1 ["lastImportName"]
        5 GETTABLE                         R3 R1 R4
        6 JUMPIFNOT                        R3 ; [+2]
        7 LOADN                            R2 1
        8 JUMP                             ; [+1]
        9 LOADN                            R2 0
       10 GETUPVAL                         R5 0
       11 CALL                             R5 0 1
       12 GETUPVAL                         R7 1
       13 MOVE                             R8 R1
       14 CALL                             R7 1 1
       15 LENGTH                           R6 R7
       16 SUB                              R4 R5 R6
       17 ADD                              R3 R4 R2
       18 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Utility"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["AssetImportService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K6 ["Src"]
       24 GETTABLEKS                       R4 R4 K11 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["Dash"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R4 K15 ["ContextServices"]
       43 GETTABLEKS                       R6 R6 K16 ["ContextItem"]
       45 GETTABLEKS                       R7 R5 K17 ["join"]
       47 GETTABLEKS                       R8 R5 K18 ["keys"]
       49 GETTABLEKS                       R9 R5 K19 ["findIndex"]
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K6 ["Src"]
       55 GETTABLEKS                       R11 R11 K20 ["Actions"]
       57 GETTABLEKS                       R11 R11 K21 ["SetActiveQueueItem"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R0 K6 ["Src"]
       64 GETTABLEKS                       R12 R12 K22 ["Thunks"]
       66 GETTABLEKS                       R12 R12 K23 ["UpdateQueueItem"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K5 [require]
       71 GETTABLEKS                       R13 R0 K6 ["Src"]
       73 GETTABLEKS                       R13 R13 K22 ["Thunks"]
       75 GETTABLEKS                       R13 R13 K24 ["UpdateChecked"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R14 R0 K6 ["Src"]
       82 GETTABLEKS                       R14 R14 K22 ["Thunks"]
       84 GETTABLEKS                       R14 R14 K25 ["UpdatePreviewInstance"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K5 [require]
       89 GETTABLEKS                       R15 R0 K6 ["Src"]
       91 GETTABLEKS                       R15 R15 K11 ["Types"]
       93 GETTABLEKS                       R15 R15 K26 ["QueuedSession"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K5 [require]
       98 GETTABLEKS                       R16 R0 K6 ["Src"]
      100 GETTABLEKS                       R16 R16 K27 ["Flags"]
      102 GETTABLEKS                       R16 R16 K28 ["getFIntAssetImportMaxPresetCount"]
      104 CALL                             R15 1 1
      105 LOADK                            R18 K29 ["PresetController"]
      106 NAMECALL                         R16 R6 K30 ["extend"]
      108 CALL                             R16 2 1
      109 DUPCLOSURE                       R17 K31 [PROTO_0]
      110 CAPTURE                          VAL R16
      111 SETTABLEKS                       R17 R16 K32 ["new"]
      113 DUPCLOSURE                       R17 K33 [PROTO_1]
      114 SETTABLEKS                       R17 R16 K34 ["destroy"]
      116 DUPCLOSURE                       R17 K35 [PROTO_2]
      117 SETTABLEKS                       R17 R16 K36 ["_filter"]
      119 DUPCLOSURE                       R17 K37 [PROTO_3]
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R11
      123 SETTABLEKS                       R17 R16 K38 ["save"]
      125 DUPCLOSURE                       R17 K39 [PROTO_4]
      126 CAPTURE                          VAL R2
      127 SETTABLEKS                       R17 R16 K40 ["createPresetFromLastImport"]
      129 DUPCLOSURE                       R17 K41 [PROTO_5]
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R10
      132 SETTABLEKS                       R17 R16 K42 ["_updateQueueItems"]
      134 DUPCLOSURE                       R17 K43 [PROTO_6]
      135 CAPTURE                          VAL R2
      136 SETTABLEKS                       R17 R16 K44 ["rename"]
      138 DUPCLOSURE                       R17 K45 [PROTO_7]
      139 CAPTURE                          VAL R2
      140 SETTABLEKS                       R17 R16 K46 ["delete"]
      142 DUPCLOSURE                       R17 K47 [PROTO_8]
      143 SETTABLEKS                       R17 R16 K48 ["setDefault"]
      145 DUPCLOSURE                       R17 K49 [PROTO_9]
      146 SETTABLEKS                       R17 R16 K50 ["hasCustomDefault"]
      148 DUPCLOSURE                       R17 K51 [PROTO_10]
      149 CAPTURE                          VAL R11
      150 SETTABLEKS                       R17 R16 K52 ["applyImportDataToSession"]
      152 DUPCLOSURE                       R17 K53 [PROTO_11]
      153 SETTABLEKS                       R17 R16 K54 ["isDefault"]
      155 DUPCLOSURE                       R17 K55 [PROTO_12]
      156 SETTABLEKS                       R17 R16 K56 ["isLastImport"]
      158 DUPCLOSURE                       R17 K57 [PROTO_13]
      159 SETTABLEKS                       R17 R16 K58 ["isStudioDefault"]
      161 DUPCLOSURE                       R17 K59 [PROTO_14]
      162 SETTABLEKS                       R17 R16 K60 ["reset"]
      164 DUPCLOSURE                       R17 K61 [PROTO_15]
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R11
      169 SETTABLEKS                       R17 R16 K62 ["resolvePreset"]
      171 DUPCLOSURE                       R17 K63 [PROTO_18]
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R9
      174 SETTABLEKS                       R17 R16 K64 ["getNameList"]
      176 DUPCLOSURE                       R17 K65 [PROTO_19]
      177 CAPTURE                          VAL R2
      178 SETTABLEKS                       R17 R16 K66 ["getAllPresets"]
      180 DUPCLOSURE                       R17 K67 [PROTO_20]
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R8
      183 SETTABLEKS                       R17 R16 K68 ["getNumPresetsRemaining"]
      185 RETURN                           R16 1
