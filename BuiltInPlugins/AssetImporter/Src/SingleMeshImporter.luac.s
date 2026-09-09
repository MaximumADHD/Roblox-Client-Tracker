PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+2]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+26]
        3 JUMPIFNOT                        R1 ; [+25]
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+23]
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R2 R2 K0 ["_setupUI"]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K1 ["GetService"]
       14 LOADK                            R3 K2 ["Selection"]
       15 CALL                             R2 1 1
       16 NAMECALL                         R3 R2 K3 ["Get"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K4 ["singleMeshController"]
       22 MOVE                             R6 R0
       23 MOVE                             R7 R1
       24 MOVE                             R8 R3
       25 NAMECALL                         R4 R4 K5 ["startVersionedImport"]
       27 CALL                             R4 4 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R2 1
       30 MOVE                             R4 R0
       31 NAMECALL                         R2 R2 K6 ["startImport"]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["_onImportAssetVersion"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_3:
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
       17 JUMPIFNOT                        R1 ; [+16]
       18 DUPTABLE                         R3 K8 [{"Colors", "Font", "Theme"}]
       19 NEWTABLE                         R4 0 0
       21 SETTABLEKS                       R4 R3 K5 ["Colors"]
       23 NEWTABLE                         R4 0 0
       25 SETTABLEKS                       R4 R3 K6 ["Font"]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R3 K7 ["Theme"]
       31 SETTABLEKS                       R3 R2 K9 ["design"]
       33 JUMP                             ; [+16]
       34 GETUPVAL                         R3 2
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+4]
       37 LOADNIL                          R3
       38 SETTABLEKS                       R3 R2 K9 ["design"]
       40 JUMP                             ; [+9]
       41 GETUPVAL                         R3 3
       42 GETTABLEKS                       R3 R3 K3 ["new"]
       44 GETUPVAL                         R4 4
       45 MOVE                             R5 R0
       46 CALL                             R4 1 -1
       47 CALL                             R3 -1 1
       48 SETTABLEKS                       R3 R2 K9 ["design"]
       50 JUMPIFNOT                        R1 ; [+5]
       51 GETUPVAL                         R3 5
       52 GETTABLEKS                       R3 R3 K10 ["mock"]
       54 CALL                             R3 0 1
       55 JUMP                             ; [+11]
       56 GETUPVAL                         R3 5
       57 GETTABLEKS                       R3 R3 K3 ["new"]
       59 DUPTABLE                         R4 K15 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AssetImporter"}]
       60 GETUPVAL                         R5 6
       61 SETTABLEKS                       R5 R4 K11 ["stringResourceTable"]
       63 GETUPVAL                         R5 7
       64 SETTABLEKS                       R5 R4 K12 ["translationResourceTable"]
       66 CALL                             R3 1 1
       67 SETTABLEKS                       R3 R2 K16 ["localization"]
       69 LOADNIL                          R3
       70 SETTABLEKS                       R3 R2 K17 ["_root"]
       72 GETUPVAL                         R3 8
       73 GETTABLEKS                       R3 R3 K3 ["new"]
       75 MOVE                             R4 R0
       76 MOVE                             R5 R1
       77 CALL                             R3 2 1
       78 SETTABLEKS                       R3 R2 K18 ["singleMeshController"]
       80 GETUPVAL                         R3 9
       81 GETTABLEKS                       R3 R3 K19 ["StartSingleMeshImport"]
       83 NEWCLOSURE                       R5 P0
       84 CAPTURE                          UPVAL U10
       85 CAPTURE                          VAL R2
       86 CAPTURE                          UPVAL U11
       87 NAMECALL                         R3 R3 K20 ["Connect"]
       89 CALL                             R3 2 1
       90 SETTABLEKS                       R3 R2 K21 ["_actionConnection"]
       92 GETUPVAL                         R3 10
       93 CALL                             R3 0 1
       94 JUMPIF                           R3 ; [+5]
       95 GETUPVAL                         R3 12
       96 CALL                             R3 0 1
       97 JUMPIF                           R3 ; [+2]
       98 GETUPVAL                         R3 13
       99 CALL                             R3 0 1
      100 JUMPIFNOT                        R3 ; [+15]
      101 GETUPVAL                         R3 14
      102 GETUPVAL                         R5 15
      103 GETTABLEKS                       R5 R5 K22 ["ASSET_MANAGER"]
      105 GETTABLEKS                       R5 R5 K23 ["CPC_EVENTS"]
      107 GETTABLEKS                       R5 R5 K24 ["IMPORT_ASSET_VERSION"]
      109 NEWCLOSURE                       R6 P1
      110 CAPTURE                          VAL R2
      111 NAMECALL                         R3 R3 K20 ["Connect"]
      113 CALL                             R3 3 1
      114 SETTABLEKS                       R3 R2 K25 ["_cpcConnection"]
      116 RETURN                           R2 1

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["onImportAnimationVersion"]
        2 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["design"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+11]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["new"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R0 K2 ["plugin"]
       10 CALL                             R2 1 -1
       11 CALL                             R1 -1 1
       12 SETTABLEKS                       R1 R0 K0 ["design"]
       14 GETTABLEKS                       R1 R0 K0 ["design"]
       16 RETURN                           R1 1

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["_getRoot"]
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 4
        5 GETTABLEKS                       R3 R0 K1 ["pluginContext"]
        7 GETTABLEKS                       R4 R0 K2 ["localization"]
        9 GETTABLEKS                       R5 R0 K3 ["singleMeshController"]
       11 NAMECALL                         R6 R0 K4 ["_getDesign"]
       13 CALL                             R6 1 -1
       14 SETLIST                          R2 R3 -1 [1]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["provide"]
       19 MOVE                             R6 R2
       20 NEWTABLE                         R7 0 1
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K6 ["createElement"]
       25 GETUPVAL                         R9 2
       26 CALL                             R8 1 -1
       27 SETLIST                          R7 R8 -1 [1]
       29 CALL                             R5 2 -1
       30 NAMECALL                         R3 R1 K7 ["render"]
       32 CALL                             R3 -1 0
       33 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R2 R0 K0 ["_setupUI"]
        2 CALL                             R2 1 0
        3 GETTABLEKS                       R2 R0 K1 ["singleMeshController"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K2 ["startImport"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETIMPORT                        R4 K3 [Enum.AssetType.Animation]
        5 JUMPIFEQ                         R2 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 LOADNIL                          R4
       10 GETIMPORT                        R5 K5 [Enum.AssetType.Mesh]
       12 JUMPIFEQ                         R2 R5 ; [+2]
       14 JUMPIFNOT                        R3 ; [+6]
       15 GETUPVAL                         R5 1
       16 NAMECALL                         R5 R5 K6 ["PickMeshFileWithPrompt"]
       18 CALL                             R5 1 1
       19 MOVE                             R4 R5
       20 JUMP                             ; [+9]
       21 GETIMPORT                        R5 K8 [Enum.AssetType.Image]
       23 JUMPIFNOTEQ                      R2 R5 ; [+6]
       25 GETUPVAL                         R5 1
       26 NAMECALL                         R5 R5 K9 ["PickImageFileWithPrompt"]
       28 CALL                             R5 1 1
       29 MOVE                             R4 R5
       30 JUMPIFNOT                        R4 ; [+2]
       31 JUMPIFNOTEQKS                    R4 K10 [""] ; [+2]
       33 RETURN                           R0 0
       34 JUMPIFNOT                        R3 ; [+9]
       35 GETTABLEKS                       R5 R0 K11 ["onImportAnimationVersion"]
       37 JUMPIFNOT                        R5 ; [+18]
       38 GETTABLEKS                       R5 R0 K11 ["onImportAnimationVersion"]
       40 MOVE                             R6 R4
       41 MOVE                             R7 R1
       42 CALL                             R5 2 0
       43 RETURN                           R0 0
       44 NAMECALL                         R5 R0 K12 ["_setupUI"]
       46 CALL                             R5 1 0
       47 GETTABLEKS                       R5 R0 K13 ["singleMeshController"]
       49 MOVE                             R7 R4
       50 MOVE                             R8 R1
       51 LOADNIL                          R9
       52 MOVE                             R10 R2
       53 NAMECALL                         R5 R5 K14 ["startVersionedImport"]
       55 CALL                             R5 5 0
       56 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_actionConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_actionConnection"]
        5 NAMECALL                         R1 R1 K1 ["disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_actionConnection"]
       11 GETUPVAL                         R1 0
       12 CALL                             R1 0 1
       13 JUMPIF                           R1 ; [+5]
       14 GETUPVAL                         R1 1
       15 CALL                             R1 0 1
       16 JUMPIF                           R1 ; [+2]
       17 GETUPVAL                         R1 2
       18 CALL                             R1 0 1
       19 JUMPIFNOT                        R1 ; [+11]
       20 GETTABLEKS                       R1 R0 K2 ["_cpcConnection"]
       22 JUMPIFNOT                        R1 ; [+8]
       23 GETTABLEKS                       R1 R0 K2 ["_cpcConnection"]
       25 NAMECALL                         R1 R1 K3 ["Disconnect"]
       27 CALL                             R1 1 0
       28 LOADNIL                          R1
       29 SETTABLEKS                       R1 R0 K2 ["_cpcConnection"]
       31 GETTABLEKS                       R1 R0 K4 ["_root"]
       33 JUMPIFNOT                        R1 ; [+8]
       34 GETTABLEKS                       R1 R0 K4 ["_root"]
       36 NAMECALL                         R1 R1 K5 ["destroy"]
       38 CALL                             R1 1 0
       39 LOADNIL                          R1
       40 SETTABLEKS                       R1 R0 K4 ["_root"]
       42 GETTABLEKS                       R1 R0 K6 ["singleMeshController"]
       44 JUMPIFNOT                        R1 ; [+8]
       45 GETTABLEKS                       R1 R0 K6 ["singleMeshController"]
       47 NAMECALL                         R1 R1 K5 ["destroy"]
       49 CALL                             R1 1 0
       50 LOADNIL                          R1
       51 SETTABLEKS                       R1 R0 K6 ["singleMeshController"]
       53 RETURN                           R0 0

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
       57 GETTABLEKS                       R12 R12 K7 ["Utility"]
       59 GETTABLEKS                       R12 R12 K21 ["getSharedStyleSheet"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R0 K6 ["Src"]
       66 GETTABLEKS                       R13 R13 K22 ["Components"]
       68 GETTABLEKS                       R13 R13 K23 ["SingleImport"]
       70 GETTABLEKS                       R13 R13 K24 ["SingleImportMain"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R14 R0 K6 ["Src"]
       77 GETTABLEKS                       R14 R14 K25 ["Controllers"]
       79 GETTABLEKS                       R14 R14 K26 ["SingleMeshController"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K5 [require]
       84 GETTABLEKS                       R15 R0 K6 ["Src"]
       86 GETTABLEKS                       R15 R15 K27 ["Flags"]
       88 GETTABLEKS                       R15 R15 K28 ["getEFCinMeshVersioning"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K5 [require]
       93 GETTABLEKS                       R16 R0 K6 ["Src"]
       95 GETTABLEKS                       R16 R16 K27 ["Flags"]
       97 GETTABLEKS                       R16 R16 K29 ["getEFImportAnimationVersions"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K5 [require]
      102 GETTABLEKS                       R17 R0 K6 ["Src"]
      104 GETTABLEKS                       R17 R17 K27 ["Flags"]
      106 GETTABLEKS                       R17 R17 K30 ["getFFlagAmrImageVersioning"]
      108 CALL                             R16 1 1
      109 GETIMPORT                        R17 K5 [require]
      111 GETTABLEKS                       R18 R0 K6 ["Src"]
      113 GETTABLEKS                       R18 R18 K27 ["Flags"]
      115 GETTABLEKS                       R18 R18 K31 ["getFFlagAssetImporterShareStyleSheet"]
      117 CALL                             R17 1 1
      118 DUPCLOSURE                       R18 K32 [PROTO_0]
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R15
      122 GETTABLEKS                       R19 R3 K33 ["Util"]
      124 GETTABLEKS                       R19 R19 K34 ["CrossPluginCommunication"]
      126 GETIMPORT                        R20 K5 [require]
      128 GETTABLEKS                       R21 R0 K11 ["Packages"]
      130 GETTABLEKS                       R21 R21 K35 ["SharedPluginConstants"]
      132 CALL                             R20 1 1
      133 GETTABLEKS                       R21 R19 K36 ["new"]
      135 GETTABLEKS                       R22 R20 K37 ["ASSET_MANAGER"]
      137 GETTABLEKS                       R22 R22 K38 ["CPC_ID"]
      139 CALL                             R21 1 1
      140 GETTABLEKS                       R22 R0 K6 ["Src"]
      142 GETTABLEKS                       R22 R22 K39 ["Resources"]
      144 GETTABLEKS                       R22 R22 K17 ["Localization"]
      146 GETTABLEKS                       R22 R22 K40 ["LocalizedStrings"]
      148 GETTABLEKS                       R23 R0 K6 ["Src"]
      150 GETTABLEKS                       R23 R23 K39 ["Resources"]
      152 GETTABLEKS                       R23 R23 K17 ["Localization"]
      154 GETTABLEKS                       R23 R23 K41 ["SourceStrings"]
      156 NEWTABLE                         R24 16 0
      158 SETTABLEKS                       R24 R24 K42 ["__index"]
      160 DUPCLOSURE                       R25 K43 [PROTO_3]
      161 CAPTURE                          VAL R24
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R23
      168 CAPTURE                          VAL R22
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R21
      176 CAPTURE                          VAL R20
      177 SETTABLEKS                       R25 R24 K36 ["new"]
      179 DUPCLOSURE                       R25 K44 [PROTO_4]
      180 SETTABLEKS                       R25 R24 K45 ["setImportAnimationVersionHandler"]
      182 DUPCLOSURE                       R25 K46 [PROTO_5]
      183 CAPTURE                          VAL R4
      184 SETTABLEKS                       R25 R24 K47 ["_getRoot"]
      186 DUPCLOSURE                       R25 K48 [PROTO_6]
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R11
      189 SETTABLEKS                       R25 R24 K49 ["_getDesign"]
      191 DUPCLOSURE                       R25 K50 [PROTO_7]
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R12
      195 SETTABLEKS                       R25 R24 K51 ["_setupUI"]
      197 DUPCLOSURE                       R25 K52 [PROTO_8]
      198 SETTABLEKS                       R25 R24 K53 ["startImport"]
      200 DUPCLOSURE                       R25 K54 [PROTO_9]
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R2
      203 SETTABLEKS                       R25 R24 K55 ["_onImportAssetVersion"]
      205 DUPCLOSURE                       R25 K56 [PROTO_10]
      206 CAPTURE                          VAL R14
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R15
      209 SETTABLEKS                       R25 R24 K57 ["destroy"]
      211 RETURN                           R24 1
