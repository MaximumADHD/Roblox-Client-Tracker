PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAllPresets"]
        3 CALL                             R0 1 1
        4 NEWTABLE                         R1 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["StudioDefaultPreset"]
        9 SETLIST                          R1 R2 1 [1]
       11 MOVE                             R2 R0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R5
       19 GETIMPORT                        R7 K4 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-8]
       24 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K2 [{"plugin", "dialogConfig"}]
        2 GETUPVAL                         R4 1
        3 SETTABLEKS                       R4 R3 K0 ["plugin"]
        5 DUPTABLE                         R4 K6 [{"kind", "class", "props"}]
        6 LOADK                            R5 K7 ["config"]
        7 SETTABLEKS                       R5 R4 K3 ["kind"]
        9 SETTABLEKS                       R0 R4 K4 ["class"]
       11 SETTABLEKS                       R1 R4 K5 ["props"]
       13 SETTABLEKS                       R4 R3 K1 ["dialogConfig"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["updateConfigFromInstance"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["reimportInstance"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getConfigFromInstance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 1
        6 NAMECALL                         R4 R4 K1 ["GetAllPresets"]
        8 CALL                             R4 1 1
        9 NEWTABLE                         R5 0 1
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R6 R7 K2 ["StudioDefaultPreset"]
       14 SETLIST                          R5 R6 1 [1]
       16 MOVE                             R6 R4
       17 LOADNIL                          R7
       18 LOADNIL                          R8
       19 FORGPREP                         R6
       20 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       22 MOVE                             R12 R5
       23 MOVE                             R13 R9
       24 GETIMPORT                        R11 K5 [table.insert]
       26 CALL                             R11 2 0
       27 FORGLOOP                         R6 2 ; [-8]
       29 MOVE                             R3 R5
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R4 R5 K6 ["fromProps"]
       33 GETTABLEKS                       R5 R0 K7 ["ClassName"]
       35 DUPTABLE                         R6 K12 [{"configData", "presets", "doSaveConfig", "doReimport"}]
       36 SETTABLEKS                       R2 R6 K8 ["configData"]
       38 SETTABLEKS                       R3 R6 K9 ["presets"]
       40 NEWCLOSURE                       R7 P0
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R7 R6 K10 ["doSaveConfig"]
       45 NEWCLOSURE                       R7 P1
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R7 R6 K11 ["doReimport"]
       50 CALL                             R4 2 0
       51 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["Plugin"]
       10 NAMECALL                         R1 R1 K5 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K7 [require]
       15 GETTABLEKS                       R5 R0 K8 ["Lib"]
       17 GETTABLEKS                       R4 R5 K9 ["External"]
       19 GETTABLEKS                       R3 R4 K10 ["AssetImportService"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K7 [require]
       24 GETTABLEKS                       R5 R0 K8 ["Lib"]
       26 GETTABLEKS                       R4 R5 K11 ["Constants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K7 [require]
       31 GETTABLEKS                       R7 R0 K12 ["Src"]
       33 GETTABLEKS                       R6 R7 K13 ["Dialogs"]
       35 GETTABLEKS                       R5 R6 K14 ["ModelConfigDialog"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K7 [require]
       40 GETTABLEKS                       R7 R0 K8 ["Lib"]
       42 GETTABLEKS                       R6 R7 K15 ["Reimport"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K7 [require]
       47 GETTABLEKS                       R9 R0 K8 ["Lib"]
       49 GETTABLEKS                       R8 R9 K15 ["Reimport"]
       51 GETTABLEKS                       R7 R8 K16 ["ReimportConfigs"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K7 [require]
       56 GETTABLEKS                       R10 R0 K17 ["Bin"]
       58 GETTABLEKS                       R9 R10 K18 ["Common"]
       60 GETTABLEKS                       R8 R9 K19 ["RenderUi"]
       62 CALL                             R7 1 1
       63 DUPCLOSURE                       R8 K20 [PROTO_0]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 NEWTABLE                         R9 2 0
       68 DUPCLOSURE                       R10 K21 [PROTO_1]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R10 R9 K22 ["fromProps"]
       73 DUPCLOSURE                       R10 K23 [PROTO_4]
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R5
       79 SETTABLEKS                       R10 R9 K24 ["fromInstance"]
       81 RETURN                           R9 1
