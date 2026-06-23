PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAllPresets"]
        3 CALL                             R0 1 1
        4 NEWTABLE                         R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["StudioDefaultPreset"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateConfigFromInstance"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 LOADB                            R4 1
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reimportInstance"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getConfigFromInstance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 MOVE                             R3 R2
        6 JUMPIF                           R3 ; [+4]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["getDefaultConfig"]
       10 CALL                             R3 0 1
       11 MOVE                             R2 R3
       12 GETUPVAL                         R4 1
       13 NAMECALL                         R4 R4 K2 ["GetAllPresets"]
       15 CALL                             R4 1 1
       16 NEWTABLE                         R5 0 1
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K3 ["StudioDefaultPreset"]
       21 SETLIST                          R5 R6 1 [1]
       23 MOVE                             R6 R4
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       29 MOVE                             R12 R5
       30 MOVE                             R13 R9
       31 GETIMPORT                        R11 K6 [table.insert]
       33 CALL                             R11 2 0
       34 FORGLOOP                         R6 2 ; [-8]
       36 MOVE                             R3 R5
       37 GETUPVAL                         R4 3
       38 GETTABLEKS                       R4 R4 K7 ["fromProps"]
       40 GETTABLEKS                       R5 R0 K8 ["ClassName"]
       42 DUPTABLE                         R6 K13 [{"configData", "presets", "doSaveConfig", "doReimport"}]
       43 SETTABLEKS                       R2 R6 K9 ["configData"]
       45 SETTABLEKS                       R3 R6 K10 ["presets"]
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R7 R6 K11 ["doSaveConfig"]
       52 NEWCLOSURE                       R7 P1
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R7 R6 K12 ["doReimport"]
       57 CALL                             R4 2 0
       58 RETURN                           R0 0

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
       15 GETTABLEKS                       R3 R0 K8 ["Lib"]
       17 GETTABLEKS                       R3 R3 K9 ["External"]
       19 GETTABLEKS                       R3 R3 K10 ["AssetImportService"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K7 [require]
       24 GETTABLEKS                       R4 R0 K8 ["Lib"]
       26 GETTABLEKS                       R4 R4 K11 ["Constants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K7 [require]
       31 GETTABLEKS                       R5 R0 K8 ["Lib"]
       33 GETTABLEKS                       R5 R5 K12 ["Reimport"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K7 [require]
       38 GETTABLEKS                       R6 R0 K8 ["Lib"]
       40 GETTABLEKS                       R6 R6 K12 ["Reimport"]
       42 GETTABLEKS                       R6 R6 K13 ["ReimportConfigs"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K7 [require]
       47 GETTABLEKS                       R7 R0 K8 ["Lib"]
       49 GETTABLEKS                       R7 R7 K14 ["DialogRegistry"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K7 [require]
       54 GETTABLEKS                       R8 R0 K8 ["Lib"]
       56 GETTABLEKS                       R8 R8 K14 ["DialogRegistry"]
       58 GETTABLEKS                       R8 R8 K15 ["Types"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K7 [require]
       63 GETTABLEKS                       R9 R0 K16 ["Src"]
       65 GETTABLEKS                       R9 R9 K17 ["Dialogs"]
       67 GETTABLEKS                       R9 R9 K15 ["Types"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K7 [require]
       72 GETTABLEKS                       R10 R0 K18 ["Bin"]
       74 GETTABLEKS                       R10 R10 K19 ["Common"]
       76 GETTABLEKS                       R10 R10 K20 ["RenderUi"]
       78 CALL                             R9 1 1
       79 DUPCLOSURE                       R10 K21 [PROTO_0]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 NEWTABLE                         R11 2 0
       84 DUPCLOSURE                       R12 K22 [PROTO_1]
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R12 R11 K23 ["fromProps"]
       89 DUPCLOSURE                       R12 K24 [PROTO_4]
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R4
       95 SETTABLEKS                       R12 R11 K25 ["fromInstance"]
       97 GETTABLEKS                       R13 R6 K26 ["configure"]
       99 GETTABLEKS                       R13 R13 K27 ["register"]
      101 GETTABLEKS                       R14 R11 K25 ["fromInstance"]
      103 CALL                             R13 1 0
      104 RETURN                           R11 1
