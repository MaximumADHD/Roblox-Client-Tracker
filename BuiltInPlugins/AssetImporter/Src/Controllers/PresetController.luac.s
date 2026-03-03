PROTO_0:
        0 DUPTABLE                         R4 K6 [{"lastImportName", "studioDefaultName", "defaultName", "_plugin", "_store", "_localization"}]
        1 LOADK                            R7 K7 ["Templates"]
        2 LOADK                            R8 K8 ["LastImported"]
        3 NAMECALL                         R5 R2 K9 ["getText"]
        5 CALL                             R5 3 1
        6 SETTABLEKS                       R5 R4 K0 ["lastImportName"]
        8 LOADK                            R7 K7 ["Templates"]
        9 LOADK                            R8 K10 ["StudioDefault"]
       10 NAMECALL                         R5 R2 K9 ["getText"]
       12 CALL                             R5 3 1
       13 SETTABLEKS                       R5 R4 K1 ["studioDefaultName"]
       15 LOADK                            R5 K11 [""]
       16 SETTABLEKS                       R5 R4 K2 ["defaultName"]
       18 SETTABLEKS                       R0 R4 K3 ["_plugin"]
       20 SETTABLEKS                       R1 R4 K4 ["_store"]
       22 SETTABLEKS                       R2 R4 K5 ["_localization"]
       24 GETUPVAL                         R5 0
       25 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       27 GETIMPORT                        R3 K13 [setmetatable]
       29 CALL                             R3 2 1
       30 GETTABLEKS                       R5 R3 K3 ["_plugin"]
       32 LOADK                            R7 K14 ["AssetImporter_DefaultPreset"]
       33 NAMECALL                         R5 R5 K15 ["GetSetting"]
       35 CALL                             R5 2 1
       36 JUMPIFNOT                        R5 ; [+7]
       37 GETTABLEKS                       R4 R3 K3 ["_plugin"]
       39 LOADK                            R6 K14 ["AssetImporter_DefaultPreset"]
       40 NAMECALL                         R4 R4 K15 ["GetSetting"]
       42 CALL                             R4 2 1
       43 JUMP                             ; [+2]
       44 GETTABLEKS                       R4 R3 K1 ["studioDefaultName"]
       46 SETTABLEKS                       R4 R3 K2 ["defaultName"]
       48 RETURN                           R3 1

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
       12 GETTABLEKS                       R4 R0 K2 ["_store"]
       14 NAMECALL                         R4 R4 K3 ["getState"]
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R3 R4 K4 ["Preview"]
       19 GETTABLEKS                       R2 R3 K5 ["assetImportSession"]
       21 GETTABLEKS                       R5 R0 K2 ["_store"]
       23 NAMECALL                         R5 R5 K3 ["getState"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R4 R5 K4 ["Preview"]
       28 GETTABLEKS                       R3 R4 K6 ["selectedImportItem"]
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
       47 GETTABLEKS                       R9 R0 K2 ["_store"]
       49 NAMECALL                         R9 R9 K3 ["getState"]
       51 CALL                             R9 1 1
       52 GETTABLEKS                       R8 R9 K4 ["Preview"]
       54 GETTABLEKS                       R7 R8 K10 ["activeQueueItem"]
       56 JUMPIFNOT                        R7 ; [+14]
       57 GETTABLEKS                       R8 R0 K2 ["_store"]
       59 GETUPVAL                         R10 2
       60 MOVE                             R11 R7
       61 DUPTABLE                         R12 K13 [{"currentPreset", "settingsChanged"}]
       62 SETTABLEKS                       R1 R12 K11 ["currentPreset"]
       64 LOADB                            R13 0
       65 SETTABLEKS                       R13 R12 K12 ["settingsChanged"]
       67 CALL                             R10 2 -1
       68 NAMECALL                         R8 R8 K14 ["dispatch"]
       70 CALL                             R8 -1 0
       71 GETUPVAL                         R8 0
       72 MOVE                             R10 R1
       73 MOVE                             R11 R6
       74 NAMECALL                         R8 R8 K15 ["SavePreset"]
       76 CALL                             R8 3 -1
       77 RETURN                           R8 -1

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["_store"]
        2 NAMECALL                         R4 R4 K1 ["getState"]
        4 CALL                             R4 1 1
        5 GETTABLEKS                       R3 R4 K2 ["Preview"]
        7 GETTABLEKS                       R2 R3 K3 ["assetImportSession"]
        9 MOVE                             R5 R1
       10 NAMECALL                         R3 R2 K4 ["CreatePresetFromData"]
       12 CALL                             R3 2 1
       13 MOVE                             R6 R3
       14 NAMECALL                         R4 R0 K5 ["_filter"]
       16 CALL                             R4 2 0
       17 GETUPVAL                         R4 0
       18 LOADK                            R6 K6 ["Last Imported"]
       19 MOVE                             R7 R3
       20 NAMECALL                         R4 R4 K7 ["SavePreset"]
       22 CALL                             R4 3 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_store"]
        2 NAMECALL                         R3 R3 K1 ["getState"]
        4 CALL                             R3 1 1
        5 NEWTABLE                         R4 0 0
        7 GETTABLEKS                       R5 R0 K0 ["_store"]
        9 NAMECALL                         R10 R5 K1 ["getState"]
       11 CALL                             R10 1 1
       12 GETTABLEKS                       R9 R10 K2 ["Sessions"]
       14 GETTABLEKS                       R6 R9 K3 ["sessionQueue"]
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 NAMECALL                         R14 R5 K1 ["getState"]
       21 CALL                             R14 1 1
       22 GETTABLEKS                       R13 R14 K2 ["Sessions"]
       24 GETTABLEKS                       R12 R13 K3 ["sessionQueue"]
       26 GETTABLE                         R11 R12 R9
       27 GETTABLEKS                       R12 R11 K4 ["currentPreset"]
       29 JUMPIFNOTEQ                      R12 R1 ; [+8]
       31 GETUPVAL                         R14 0
       32 MOVE                             R15 R11
       33 MOVE                             R16 R2
       34 CALL                             R14 2 -1
       35 NAMECALL                         R12 R5 K5 ["dispatch"]
       37 CALL                             R12 -1 0
       38 FORGLOOP                         R6 2 ; [-20]
       40 GETTABLEKS                       R7 R3 K6 ["Dialogs"]
       42 GETTABLEKS                       R6 R7 K7 ["showPreview"]
       44 JUMPIFNOT                        R6 ; [+14]
       45 GETTABLEKS                       R7 R3 K8 ["Preview"]
       47 GETTABLEKS                       R6 R7 K9 ["activeQueueItem"]
       49 GETTABLEKS                       R7 R0 K0 ["_store"]
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R11 R6 K10 ["filepath"]
       54 GETTABLE                         R10 R4 R11
       55 CALL                             R9 1 -1
       56 NAMECALL                         R7 R7 K5 ["dispatch"]
       58 CALL                             R7 -1 0
       59 RETURN                           R0 0

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
       14 DUPTABLE                         R5 K5 [{"currentPreset", "settingsChanged"}]
       15 GETTABLEKS                       R6 R0 K2 ["studioDefaultName"]
       17 SETTABLEKS                       R6 R5 K3 ["currentPreset"]
       19 LOADB                            R6 1
       20 SETTABLEKS                       R6 R5 K4 ["settingsChanged"]
       22 NAMECALL                         R2 R0 K6 ["_updateQueueItems"]
       24 CALL                             R2 3 0
       25 RETURN                           R0 0

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
        0 GETTABLEKS                       R6 R0 K0 ["_store"]
        2 NAMECALL                         R6 R6 K1 ["getState"]
        4 CALL                             R6 1 1
        5 GETTABLEKS                       R5 R6 K2 ["Sessions"]
        7 GETTABLEKS                       R4 R5 K3 ["sessionQueue"]
        9 MOVE                             R5 R4
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETTABLEKS                       R10 R9 K4 ["state"]
       15 GETUPVAL                         R13 0
       16 GETTABLEKS                       R12 R13 K5 ["SessionState"]
       18 GETTABLEKS                       R11 R12 K6 ["Parsed"]
       20 JUMPIFNOTEQ                      R10 R11 ; [+23]
       22 MOVE                             R10 R2
       23 GETTABLEKS                       R11 R9 K7 ["filepath"]
       25 MOVE                             R12 R3
       26 CALL                             R10 2 0
       27 GETTABLEKS                       R12 R0 K0 ["_store"]
       29 NAMECALL                         R12 R12 K1 ["getState"]
       31 CALL                             R12 1 1
       32 GETTABLEKS                       R11 R12 K2 ["Sessions"]
       34 GETTABLEKS                       R10 R11 K3 ["sessionQueue"]
       36 GETTABLEKS                       R11 R9 K7 ["filepath"]
       38 GETTABLE                         R9 R10 R11
       39 MOVE                             R12 R1
       40 MOVE                             R13 R9
       41 NAMECALL                         R10 R0 K8 ["resolvePreset"]
       43 CALL                             R10 3 0
       44 FORGLOOP                         R5 2 ; [-32]
       46 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R4 R0 K0 ["_store"]
        2 NAMECALL                         R4 R4 K1 ["getState"]
        4 CALL                             R4 1 1
        5 GETTABLEKS                       R3 R4 K2 ["Dialogs"]
        7 GETTABLEKS                       R2 R3 K3 ["showPreview"]
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
       23 GETTABLEKS                       R5 R0 K0 ["_store"]
       25 NAMECALL                         R5 R5 K1 ["getState"]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R4 R5 K6 ["Preview"]
       30 GETTABLEKS                       R3 R4 K7 ["activeQueueItem"]
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

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["defaultName"]
        2 JUMPIFEQ                         R3 R1 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_13:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["lastImportName"]
        3 JUMPIFEQ                         R3 R1 ; [+5]
        5 JUMPIFEQKS                       R1 K1 ["Last Imported"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_14:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["studioDefaultName"]
        3 JUMPIFEQ                         R3 R1 ; [+5]
        5 JUMPIFEQKS                       R1 K1 ["Studio Default"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_15:
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

PROTO_16:
        0 DUPTABLE                         R3 K2 [{"currentPreset", "settingsChanged"}]
        1 SETTABLEKS                       R1 R3 K0 ["currentPreset"]
        3 LOADB                            R4 0
        4 SETTABLEKS                       R4 R3 K1 ["settingsChanged"]
        6 GETTABLEKS                       R4 R2 K3 ["session"]
        8 JUMPIFNOT                        R4 ; [+88]
        9 NAMECALL                         R5 R4 K4 ["GetImportTree"]
       11 CALL                             R5 1 1
       12 JUMPIFNOT                        R5 ; [+84]
       13 MOVE                             R7 R4
       14 NAMECALL                         R5 R0 K5 ["reset"]
       16 CALL                             R5 2 0
       17 MOVE                             R8 R1
       18 NAMECALL                         R6 R0 K6 ["isLastImport"]
       20 CALL                             R6 2 1
       21 JUMPIFNOT                        R6 ; [+7]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R7 R0 K7 ["lastImportName"]
       25 NAMECALL                         R5 R5 K8 ["GetPreset"]
       27 CALL                             R5 2 1
       28 JUMP                             ; [+5]
       29 GETUPVAL                         R5 0
       30 MOVE                             R7 R1
       31 NAMECALL                         R5 R5 K8 ["GetPreset"]
       33 CALL                             R5 2 1
       34 MOVE                             R8 R5
       35 NAMECALL                         R6 R4 K9 ["ApplyPreset"]
       37 CALL                             R6 2 0
       38 GETTABLEKS                       R8 R0 K10 ["_store"]
       40 NAMECALL                         R8 R8 K11 ["getState"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R7 R8 K12 ["Dialogs"]
       45 GETTABLEKS                       R6 R7 K13 ["showPreview"]
       47 JUMPIFNOT                        R6 ; [+49]
       48 NEWTABLE                         R6 0 0
       50 GETTABLEKS                       R9 R0 K10 ["_store"]
       52 NAMECALL                         R9 R9 K11 ["getState"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R8 R9 K14 ["Preview"]
       57 GETTABLEKS                       R7 R8 K15 ["importDataChecked"]
       59 MOVE                             R8 R7
       60 LOADNIL                          R9
       61 LOADNIL                          R10
       62 FORGPREP                         R8
       63 GETTABLEKS                       R13 R11 K16 ["ShouldImport"]
       65 SETTABLE                         R13 R6 R11
       66 FORGLOOP                         R8 2 ; [-4]
       68 GETTABLEKS                       R8 R0 K10 ["_store"]
       70 GETUPVAL                         R10 1
       71 MOVE                             R11 R6
       72 CALL                             R10 1 -1
       73 NAMECALL                         R8 R8 K17 ["dispatch"]
       75 CALL                             R8 -1 0
       76 GETTABLEKS                       R10 R0 K10 ["_store"]
       78 NAMECALL                         R10 R10 K11 ["getState"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R9 R10 K14 ["Preview"]
       83 GETTABLEKS                       R8 R9 K18 ["selectedImportItem"]
       85 JUMPIFNOT                        R8 ; [+11]
       86 NAMECALL                         R9 R8 K19 ["GetPreview"]
       88 CALL                             R9 1 1
       89 GETTABLEKS                       R10 R0 K10 ["_store"]
       91 GETUPVAL                         R12 2
       92 MOVE                             R13 R9
       93 CALL                             R12 1 -1
       94 NAMECALL                         R10 R10 K17 ["dispatch"]
       96 CALL                             R10 -1 0
       97 GETTABLEKS                       R5 R0 K10 ["_store"]
       99 GETUPVAL                         R7 3
      100 MOVE                             R8 R2
      101 MOVE                             R9 R3
      102 CALL                             R7 2 -1
      103 NAMECALL                         R5 R5 K17 ["dispatch"]
      105 CALL                             R5 -1 -1
      106 RETURN                           R5 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R4 R0 K0 ["getAllPresets"]
        3 CALL                             R4 1 -1
        4 CALL                             R3 -1 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R4 R2 K1 ["settingsChanged"]
        8 JUMP                             ; [+1]
        9 LOADB                            R4 0
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R3
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          VAL R1
       14 CALL                             R5 2 1
       15 JUMPIFNOT                        R5 ; [+5]
       16 JUMPIFNOT                        R4 ; [+4]
       17 MOVE                             R7 R1
       18 LOADK                            R8 K2 ["*"]
       19 CONCAT                           R6 R7 R8
       20 SETTABLE                         R6 R3 R5
       21 RETURN                           R3 1

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
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["AssetImportService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R5 R0 K6 ["Src"]
       24 GETTABLEKS                       R4 R5 K11 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R7 R0 K12 ["Packages"]
       38 GETTABLEKS                       R6 R7 K14 ["Dash"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R7 R4 K15 ["ContextServices"]
       43 GETTABLEKS                       R6 R7 K16 ["ContextItem"]
       45 GETTABLEKS                       R7 R5 K17 ["join"]
       47 GETTABLEKS                       R8 R5 K18 ["keys"]
       49 GETTABLEKS                       R9 R5 K19 ["findIndex"]
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R13 R0 K6 ["Src"]
       55 GETTABLEKS                       R12 R13 K20 ["Actions"]
       57 GETTABLEKS                       R11 R12 K21 ["SetActiveQueueItem"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R14 R0 K6 ["Src"]
       64 GETTABLEKS                       R13 R14 K22 ["Thunks"]
       66 GETTABLEKS                       R12 R13 K23 ["UpdateQueueItem"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K5 [require]
       71 GETTABLEKS                       R15 R0 K6 ["Src"]
       73 GETTABLEKS                       R14 R15 K22 ["Thunks"]
       75 GETTABLEKS                       R13 R14 K24 ["UpdateChecked"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R16 R0 K6 ["Src"]
       82 GETTABLEKS                       R15 R16 K22 ["Thunks"]
       84 GETTABLEKS                       R14 R15 K25 ["UpdatePreviewInstance"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K5 [require]
       89 GETTABLEKS                       R16 R0 K6 ["Src"]
       91 GETTABLEKS                       R15 R16 K11 ["Types"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K5 [require]
       96 GETTABLEKS                       R18 R0 K6 ["Src"]
       98 GETTABLEKS                       R17 R18 K11 ["Types"]
      100 GETTABLEKS                       R16 R17 K26 ["QueuedSession"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K5 [require]
      105 GETTABLEKS                       R19 R0 K6 ["Src"]
      107 GETTABLEKS                       R18 R19 K27 ["Flags"]
      109 GETTABLEKS                       R17 R18 K28 ["getFIntAssetImportMaxPresetCount"]
      111 CALL                             R16 1 1
      112 LOADK                            R19 K29 ["PresetController"]
      113 NAMECALL                         R17 R6 K30 ["extend"]
      115 CALL                             R17 2 1
      116 DUPCLOSURE                       R18 K31 [PROTO_0]
      117 CAPTURE                          VAL R17
      118 SETTABLEKS                       R18 R17 K32 ["new"]
      120 DUPCLOSURE                       R18 K33 [PROTO_1]
      121 SETTABLEKS                       R18 R17 K34 ["destroy"]
      123 DUPCLOSURE                       R18 K35 [PROTO_2]
      124 SETTABLEKS                       R18 R17 K36 ["_filter"]
      126 DUPCLOSURE                       R18 K37 [PROTO_3]
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R11
      130 SETTABLEKS                       R18 R17 K38 ["save"]
      132 DUPCLOSURE                       R18 K39 [PROTO_4]
      133 CAPTURE                          VAL R2
      134 SETTABLEKS                       R18 R17 K40 ["createPresetFromLastImport"]
      136 DUPCLOSURE                       R18 K41 [PROTO_5]
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R10
      139 SETTABLEKS                       R18 R17 K42 ["_updateQueueItems"]
      141 DUPCLOSURE                       R18 K43 [PROTO_6]
      142 CAPTURE                          VAL R2
      143 SETTABLEKS                       R18 R17 K44 ["rename"]
      145 DUPCLOSURE                       R18 K45 [PROTO_7]
      146 CAPTURE                          VAL R2
      147 SETTABLEKS                       R18 R17 K46 ["delete"]
      149 DUPCLOSURE                       R18 K47 [PROTO_8]
      150 SETTABLEKS                       R18 R17 K48 ["setDefault"]
      152 DUPCLOSURE                       R18 K49 [PROTO_9]
      153 SETTABLEKS                       R18 R17 K50 ["hasCustomDefault"]
      155 DUPCLOSURE                       R18 K51 [PROTO_10]
      156 CAPTURE                          VAL R14
      157 SETTABLEKS                       R18 R17 K52 ["applyPresetToAllSessions"]
      159 DUPCLOSURE                       R18 K53 [PROTO_11]
      160 CAPTURE                          VAL R11
      161 SETTABLEKS                       R18 R17 K54 ["applyImportDataToSession"]
      163 DUPCLOSURE                       R18 K55 [PROTO_12]
      164 SETTABLEKS                       R18 R17 K56 ["isDefault"]
      166 DUPCLOSURE                       R18 K57 [PROTO_13]
      167 SETTABLEKS                       R18 R17 K58 ["isLastImport"]
      169 DUPCLOSURE                       R18 K59 [PROTO_14]
      170 SETTABLEKS                       R18 R17 K60 ["isStudioDefault"]
      172 DUPCLOSURE                       R18 K61 [PROTO_15]
      173 SETTABLEKS                       R18 R17 K62 ["reset"]
      175 DUPCLOSURE                       R18 K63 [PROTO_16]
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R11
      180 SETTABLEKS                       R18 R17 K64 ["resolvePreset"]
      182 DUPCLOSURE                       R18 K65 [PROTO_18]
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R9
      185 SETTABLEKS                       R18 R17 K66 ["getNameList"]
      187 DUPCLOSURE                       R18 K67 [PROTO_19]
      188 CAPTURE                          VAL R2
      189 SETTABLEKS                       R18 R17 K68 ["getAllPresets"]
      191 DUPCLOSURE                       R18 K69 [PROTO_20]
      192 CAPTURE                          VAL R16
      193 CAPTURE                          VAL R8
      194 SETTABLEKS                       R18 R17 K70 ["getNumPresetsRemaining"]
      196 RETURN                           R17 1
