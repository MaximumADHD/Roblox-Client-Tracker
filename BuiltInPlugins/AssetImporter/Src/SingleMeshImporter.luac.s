PROTO_0:
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
       94 JUMPIF                           R3 ; [+3]
       95 GETUPVAL                         R3 12
       96 CALL                             R3 0 1
       97 JUMPIFNOT                        R3 ; [+15]
       98 GETUPVAL                         R3 13
       99 GETUPVAL                         R5 14
      100 GETTABLEKS                       R5 R5 K22 ["ASSET_MANAGER"]
      102 GETTABLEKS                       R5 R5 K23 ["CPC_EVENTS"]
      104 GETTABLEKS                       R5 R5 K24 ["IMPORT_ASSET_VERSION"]
      106 NEWCLOSURE                       R6 P1
      107 CAPTURE                          VAL R2
      108 NAMECALL                         R3 R3 K20 ["Connect"]
      110 CALL                             R3 3 1
      111 SETTABLEKS                       R3 R2 K25 ["_cpcConnection"]
      113 RETURN                           R2 1

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

PROTO_5:
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

PROTO_6:
        0 NAMECALL                         R2 R0 K0 ["_setupUI"]
        2 CALL                             R2 1 0
        3 GETTABLEKS                       R2 R0 K1 ["singleMeshController"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K2 ["startImport"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_7:
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
       20 JUMPIFNOT                        R3 ; [+14]
       21 JUMPIFEQKS                       R3 K8 [""] ; [+13]
       23 NAMECALL                         R4 R0 K9 ["_setupUI"]
       25 CALL                             R4 1 0
       26 GETTABLEKS                       R4 R0 K10 ["singleMeshController"]
       28 MOVE                             R6 R3
       29 MOVE                             R7 R1
       30 LOADNIL                          R8
       31 MOVE                             R9 R2
       32 NAMECALL                         R4 R4 K11 ["startVersionedImport"]
       34 CALL                             R4 5 0
       35 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_actionConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_actionConnection"]
        5 NAMECALL                         R1 R1 K1 ["disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_actionConnection"]
       11 GETUPVAL                         R1 0
       12 CALL                             R1 0 1
       13 JUMPIF                           R1 ; [+3]
       14 GETUPVAL                         R1 1
       15 CALL                             R1 0 1
       16 JUMPIFNOT                        R1 ; [+11]
       17 GETTABLEKS                       R1 R0 K2 ["_cpcConnection"]
       19 JUMPIFNOT                        R1 ; [+8]
       20 GETTABLEKS                       R1 R0 K2 ["_cpcConnection"]
       22 NAMECALL                         R1 R1 K3 ["Disconnect"]
       24 CALL                             R1 1 0
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K2 ["_cpcConnection"]
       28 GETTABLEKS                       R1 R0 K4 ["_root"]
       30 JUMPIFNOT                        R1 ; [+8]
       31 GETTABLEKS                       R1 R0 K4 ["_root"]
       33 NAMECALL                         R1 R1 K5 ["destroy"]
       35 CALL                             R1 1 0
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K4 ["_root"]
       39 GETTABLEKS                       R1 R0 K6 ["singleMeshController"]
       41 JUMPIFNOT                        R1 ; [+8]
       42 GETTABLEKS                       R1 R0 K6 ["singleMeshController"]
       44 NAMECALL                         R1 R1 K5 ["destroy"]
       46 CALL                             R1 1 0
       47 LOADNIL                          R1
       48 SETTABLEKS                       R1 R0 K6 ["singleMeshController"]
       50 RETURN                           R0 0

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
       97 GETTABLEKS                       R16 R16 K29 ["getFFlagAmrImageVersioning"]
       99 CALL                             R15 1 1
      100 GETIMPORT                        R16 K5 [require]
      102 GETTABLEKS                       R17 R0 K6 ["Src"]
      104 GETTABLEKS                       R17 R17 K27 ["Flags"]
      106 GETTABLEKS                       R17 R17 K30 ["getFFlagAssetImporterShareStyleSheet"]
      108 CALL                             R16 1 1
      109 GETTABLEKS                       R17 R3 K31 ["Util"]
      111 GETTABLEKS                       R17 R17 K32 ["CrossPluginCommunication"]
      113 GETIMPORT                        R18 K5 [require]
      115 GETTABLEKS                       R19 R0 K11 ["Packages"]
      117 GETTABLEKS                       R19 R19 K33 ["SharedPluginConstants"]
      119 CALL                             R18 1 1
      120 GETTABLEKS                       R19 R17 K34 ["new"]
      122 GETTABLEKS                       R20 R18 K35 ["ASSET_MANAGER"]
      124 GETTABLEKS                       R20 R20 K36 ["CPC_ID"]
      126 CALL                             R19 1 1
      127 GETTABLEKS                       R20 R0 K6 ["Src"]
      129 GETTABLEKS                       R20 R20 K37 ["Resources"]
      131 GETTABLEKS                       R20 R20 K17 ["Localization"]
      133 GETTABLEKS                       R20 R20 K38 ["LocalizedStrings"]
      135 GETTABLEKS                       R21 R0 K6 ["Src"]
      137 GETTABLEKS                       R21 R21 K37 ["Resources"]
      139 GETTABLEKS                       R21 R21 K17 ["Localization"]
      141 GETTABLEKS                       R21 R21 K39 ["SourceStrings"]
      143 NEWTABLE                         R22 8 0
      145 SETTABLEKS                       R22 R22 K40 ["__index"]
      147 DUPCLOSURE                       R23 K41 [PROTO_2]
      148 CAPTURE                          VAL R22
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R18
      163 SETTABLEKS                       R23 R22 K34 ["new"]
      165 DUPCLOSURE                       R23 K42 [PROTO_3]
      166 CAPTURE                          VAL R4
      167 SETTABLEKS                       R23 R22 K43 ["_getRoot"]
      169 DUPCLOSURE                       R23 K44 [PROTO_4]
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R11
      172 SETTABLEKS                       R23 R22 K45 ["_getDesign"]
      174 DUPCLOSURE                       R23 K46 [PROTO_5]
      175 CAPTURE                          VAL R6
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R12
      178 SETTABLEKS                       R23 R22 K47 ["_setupUI"]
      180 DUPCLOSURE                       R23 K48 [PROTO_6]
      181 SETTABLEKS                       R23 R22 K49 ["startImport"]
      183 DUPCLOSURE                       R23 K50 [PROTO_7]
      184 CAPTURE                          VAL R2
      185 SETTABLEKS                       R23 R22 K51 ["_onImportAssetVersion"]
      187 DUPCLOSURE                       R23 K52 [PROTO_8]
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R15
      190 SETTABLEKS                       R23 R22 K53 ["destroy"]
      192 RETURN                           R22 1
