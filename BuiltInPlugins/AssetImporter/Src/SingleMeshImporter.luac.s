PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["startImport"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["_onImportAssetVersion"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["plugin"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["new"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K4 ["pluginContext"]
       17 JUMPIFNOT                        R1 ; [+14]
       18 DUPTABLE                         R3 K8 [{"Colors", "Font", "Theme"}]
       19 NEWTABLE                         R4 0 0
       21 SETTABLEKS                       R4 R3 K5 ["Colors"]
       23 NEWTABLE                         R4 0 0
       25 SETTABLEKS                       R4 R3 K6 ["Font"]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R3 K7 ["Theme"]
       31 JUMP                             ; [+7]
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K3 ["new"]
       35 GETUPVAL                         R4 3
       36 MOVE                             R5 R0
       37 CALL                             R4 1 -1
       38 CALL                             R3 -1 1
       39 SETTABLEKS                       R3 R2 K9 ["design"]
       41 JUMPIFNOT                        R1 ; [+5]
       42 GETUPVAL                         R3 4
       43 GETTABLEKS                       R3 R3 K10 ["mock"]
       45 CALL                             R3 0 1
       46 JUMP                             ; [+11]
       47 GETUPVAL                         R3 4
       48 GETTABLEKS                       R3 R3 K3 ["new"]
       50 DUPTABLE                         R4 K15 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AssetImporter"}]
       51 GETUPVAL                         R5 5
       52 SETTABLEKS                       R5 R4 K11 ["stringResourceTable"]
       54 GETUPVAL                         R5 6
       55 SETTABLEKS                       R5 R4 K12 ["translationResourceTable"]
       57 CALL                             R3 1 1
       58 SETTABLEKS                       R3 R2 K16 ["localization"]
       60 LOADNIL                          R3
       61 SETTABLEKS                       R3 R2 K17 ["_root"]
       63 GETUPVAL                         R3 7
       64 GETTABLEKS                       R3 R3 K18 ["StartSingleMeshImport"]
       66 NEWCLOSURE                       R5 P0
       67 CAPTURE                          VAL R2
       68 NAMECALL                         R3 R3 K19 ["Connect"]
       70 CALL                             R3 2 1
       71 SETTABLEKS                       R3 R2 K20 ["_actionConnection"]
       73 GETUPVAL                         R3 8
       74 GETTABLEKS                       R3 R3 K3 ["new"]
       76 MOVE                             R4 R0
       77 MOVE                             R5 R1
       78 CALL                             R3 2 1
       79 SETTABLEKS                       R3 R2 K21 ["singleMeshController"]
       81 GETUPVAL                         R3 9
       82 CALL                             R3 0 1
       83 JUMPIFNOT                        R3 ; [+15]
       84 GETUPVAL                         R3 10
       85 GETUPVAL                         R5 11
       86 GETTABLEKS                       R5 R5 K22 ["ASSET_MANAGER"]
       88 GETTABLEKS                       R5 R5 K23 ["CPC_EVENTS"]
       90 GETTABLEKS                       R5 R5 K24 ["IMPORT_ASSET_VERSION"]
       92 NEWCLOSURE                       R6 P1
       93 CAPTURE                          VAL R2
       94 NAMECALL                         R3 R3 K19 ["Connect"]
       96 CALL                             R3 3 1
       97 SETTABLEKS                       R3 R2 K25 ["_cpcConnection"]
       99 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_root"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+12]
        4 GETIMPORT                        R1 K3 [Instance.new]
        6 LOADK                            R2 K4 ["Frame"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K5 ["createRoot"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R0 K0 ["_root"]
       15 GETTABLEKS                       R1 R0 K0 ["_root"]
       17 RETURN                           R1 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["_getRoot"]
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 4
        5 GETTABLEKS                       R3 R0 K1 ["pluginContext"]
        7 GETTABLEKS                       R4 R0 K2 ["localization"]
        9 GETTABLEKS                       R5 R0 K3 ["singleMeshController"]
       11 GETTABLEKS                       R6 R0 K4 ["design"]
       13 SETLIST                          R2 R3 4 [1]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K5 ["provide"]
       18 MOVE                             R6 R2
       19 NEWTABLE                         R7 0 1
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K6 ["createElement"]
       24 GETUPVAL                         R9 2
       25 CALL                             R8 1 -1
       26 SETLIST                          R7 R8 -1 [1]
       28 CALL                             R5 2 -1
       29 NAMECALL                         R3 R1 K7 ["render"]
       31 CALL                             R3 -1 0
       32 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["_setupUI"]
        2 CALL                             R2 1 0
        3 GETTABLEKS                       R2 R0 K1 ["singleMeshController"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K2 ["startImport"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R3
        1 GETIMPORT                        R4 K3 [Enum.AssetType.Mesh]
        3 JUMPIFNOTEQ                      R2 R4 ; [+7]
        5 GETUPVAL                         R4 0
        6 NAMECALL                         R4 R4 K4 ["PickMeshFileWithPrompt"]
        8 CALL                             R4 1 1
        9 MOVE                             R3 R4
       10 JUMP                             ; [+9]
       11 GETIMPORT                        R4 K6 [Enum.AssetType.Image]
       13 JUMPIFNOTEQ                      R2 R4 ; [+6]
       15 GETUPVAL                         R4 0
       16 NAMECALL                         R4 R4 K7 ["PickImageFileWithPrompt"]
       18 CALL                             R4 1 1
       19 MOVE                             R3 R4
       20 JUMPIFNOT                        R3 ; [+12]
       21 JUMPIFEQKS                       R3 K8 [""] ; [+11]
       23 NAMECALL                         R4 R0 K9 ["_setupUI"]
       25 CALL                             R4 1 0
       26 GETTABLEKS                       R4 R0 K10 ["singleMeshController"]
       28 MOVE                             R6 R3
       29 MOVE                             R7 R1
       30 NAMECALL                         R4 R4 K11 ["startVersionedImport"]
       32 CALL                             R4 3 0
       33 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_actionConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_actionConnection"]
        5 NAMECALL                         R1 R1 K1 ["disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_actionConnection"]
       11 GETUPVAL                         R1 0
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+11]
       14 GETTABLEKS                       R1 R0 K2 ["_cpcConnection"]
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETTABLEKS                       R1 R0 K2 ["_cpcConnection"]
       19 NAMECALL                         R1 R1 K3 ["Disconnect"]
       21 CALL                             R1 1 0
       22 LOADNIL                          R1
       23 SETTABLEKS                       R1 R0 K2 ["_cpcConnection"]
       25 GETTABLEKS                       R1 R0 K4 ["_root"]
       27 JUMPIFNOT                        R1 ; [+8]
       28 GETTABLEKS                       R1 R0 K4 ["_root"]
       30 NAMECALL                         R1 R1 K5 ["destroy"]
       32 CALL                             R1 1 0
       33 LOADNIL                          R1
       34 SETTABLEKS                       R1 R0 K4 ["_root"]
       36 GETTABLEKS                       R1 R0 K6 ["singleMeshController"]
       38 JUMPIFNOT                        R1 ; [+8]
       39 GETTABLEKS                       R1 R0 K6 ["singleMeshController"]
       41 NAMECALL                         R1 R1 K5 ["destroy"]
       43 CALL                             R1 1 0
       44 LOADNIL                          R1
       45 SETTABLEKS                       R1 R0 K6 ["singleMeshController"]
       47 RETURN                           R0 0

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
       22 GETTABLEKS                       R4 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["ReactRoblox"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["React"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R3 K15 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K16 ["Design"]
       45 GETTABLEKS                       R8 R6 K17 ["Localization"]
       47 GETTABLEKS                       R9 R6 K18 ["Plugin"]
       49 GETTABLEKS                       R10 R3 K19 ["Styling"]
       51 GETTABLEKS                       R10 R10 K20 ["registerPluginStyles"]
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R12 R0 K6 ["Src"]
       57 GETTABLEKS                       R12 R12 K21 ["Components"]
       59 GETTABLEKS                       R12 R12 K22 ["SingleImport"]
       61 GETTABLEKS                       R12 R12 K23 ["SingleImportMain"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R13 R0 K6 ["Src"]
       68 GETTABLEKS                       R13 R13 K24 ["Controllers"]
       70 GETTABLEKS                       R13 R13 K25 ["SingleMeshController"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R14 R0 K6 ["Src"]
       77 GETTABLEKS                       R14 R14 K26 ["Flags"]
       79 GETTABLEKS                       R14 R14 K27 ["getEFCinMeshVersioning"]
       81 CALL                             R13 1 1
       82 GETTABLEKS                       R14 R3 K28 ["Util"]
       84 GETTABLEKS                       R14 R14 K29 ["CrossPluginCommunication"]
       86 GETIMPORT                        R15 K5 [require]
       88 GETTABLEKS                       R16 R0 K11 ["Packages"]
       90 GETTABLEKS                       R16 R16 K30 ["SharedPluginConstants"]
       92 CALL                             R15 1 1
       93 GETTABLEKS                       R16 R14 K31 ["new"]
       95 GETTABLEKS                       R17 R15 K32 ["ASSET_MANAGER"]
       97 GETTABLEKS                       R17 R17 K33 ["CPC_ID"]
       99 CALL                             R16 1 1
      100 GETTABLEKS                       R17 R0 K6 ["Src"]
      102 GETTABLEKS                       R17 R17 K34 ["Resources"]
      104 GETTABLEKS                       R17 R17 K17 ["Localization"]
      106 GETTABLEKS                       R17 R17 K35 ["LocalizedStrings"]
      108 GETTABLEKS                       R18 R0 K6 ["Src"]
      110 GETTABLEKS                       R18 R18 K34 ["Resources"]
      112 GETTABLEKS                       R18 R18 K17 ["Localization"]
      114 GETTABLEKS                       R18 R18 K36 ["SourceStrings"]
      116 NEWTABLE                         R19 8 0
      118 SETTABLEKS                       R19 R19 K37 ["__index"]
      120 DUPCLOSURE                       R20 K38 [PROTO_2]
      121 CAPTURE                          VAL R19
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R15
      133 SETTABLEKS                       R20 R19 K31 ["new"]
      135 DUPCLOSURE                       R20 K39 [PROTO_3]
      136 CAPTURE                          VAL R4
      137 SETTABLEKS                       R20 R19 K40 ["_getRoot"]
      139 DUPCLOSURE                       R20 K41 [PROTO_4]
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R11
      143 SETTABLEKS                       R20 R19 K42 ["_setupUI"]
      145 DUPCLOSURE                       R20 K43 [PROTO_5]
      146 SETTABLEKS                       R20 R19 K44 ["startImport"]
      148 DUPCLOSURE                       R20 K45 [PROTO_6]
      149 CAPTURE                          VAL R2
      150 SETTABLEKS                       R20 R19 K46 ["_onImportAssetVersion"]
      152 DUPCLOSURE                       R20 K47 [PROTO_7]
      153 CAPTURE                          VAL R13
      154 SETTABLEKS                       R20 R19 K48 ["destroy"]
      156 RETURN                           R19 1
