PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+8]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIF                           R0 ; [+5]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIF                           R0 ; [+2]
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 RETURN                           R0 1

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
       94 JUMPIF                           R3 ; [+8]
       95 GETUPVAL                         R3 12
       96 CALL                             R3 0 1
       97 JUMPIF                           R3 ; [+5]
       98 GETUPVAL                         R3 13
       99 CALL                             R3 0 1
      100 JUMPIF                           R3 ; [+2]
      101 GETUPVAL                         R3 14
      102 CALL                             R3 0 1
      103 JUMPIFNOT                        R3 ; [+15]
      104 GETUPVAL                         R3 15
      105 GETUPVAL                         R5 16
      106 GETTABLEKS                       R5 R5 K22 ["ASSET_MANAGER"]
      108 GETTABLEKS                       R5 R5 K23 ["CPC_EVENTS"]
      110 GETTABLEKS                       R5 R5 K24 ["IMPORT_ASSET_VERSION"]
      112 NEWCLOSURE                       R6 P1
      113 CAPTURE                          VAL R2
      114 NAMECALL                         R3 R3 K20 ["Connect"]
      116 CALL                             R3 3 1
      117 SETTABLEKS                       R3 R2 K25 ["_cpcConnection"]
      119 RETURN                           R2 1

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
       20 JUMP                             ; [+22]
       21 GETIMPORT                        R5 K8 [Enum.AssetType.Image]
       23 JUMPIFNOTEQ                      R2 R5 ; [+7]
       25 GETUPVAL                         R5 1
       26 NAMECALL                         R5 R5 K9 ["PickImageFileWithPrompt"]
       28 CALL                             R5 1 1
       29 MOVE                             R4 R5
       30 JUMP                             ; [+12]
       31 GETUPVAL                         R5 2
       32 CALL                             R5 0 1
       33 JUMPIFNOT                        R5 ; [+9]
       34 GETIMPORT                        R5 K11 [Enum.AssetType.TextDocument]
       36 JUMPIFNOTEQ                      R2 R5 ; [+6]
       38 GETUPVAL                         R5 1
       39 NAMECALL                         R5 R5 K12 ["PickTextDocumentFileWithPromptAsync"]
       41 CALL                             R5 1 1
       42 MOVE                             R4 R5
       43 JUMPIFNOT                        R4 ; [+2]
       44 JUMPIFNOTEQKS                    R4 K13 [""] ; [+2]
       46 RETURN                           R0 0
       47 JUMPIFNOT                        R3 ; [+9]
       48 GETTABLEKS                       R5 R0 K14 ["onImportAnimationVersion"]
       50 JUMPIFNOT                        R5 ; [+18]
       51 GETTABLEKS                       R5 R0 K14 ["onImportAnimationVersion"]
       53 MOVE                             R6 R4
       54 MOVE                             R7 R1
       55 CALL                             R5 2 0
       56 RETURN                           R0 0
       57 NAMECALL                         R5 R0 K15 ["_setupUI"]
       59 CALL                             R5 1 0
       60 GETTABLEKS                       R5 R0 K16 ["singleMeshController"]
       62 MOVE                             R7 R4
       63 MOVE                             R8 R1
       64 LOADNIL                          R9
       65 MOVE                             R10 R2
       66 NAMECALL                         R5 R5 K17 ["startVersionedImport"]
       68 CALL                             R5 5 0
       69 RETURN                           R0 0

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
       13 JUMPIF                           R1 ; [+8]
       14 GETUPVAL                         R1 1
       15 CALL                             R1 0 1
       16 JUMPIF                           R1 ; [+5]
       17 GETUPVAL                         R1 2
       18 CALL                             R1 0 1
       19 JUMPIF                           R1 ; [+2]
       20 GETUPVAL                         R1 3
       21 CALL                             R1 0 1
       22 JUMPIFNOT                        R1 ; [+11]
       23 GETTABLEKS                       R1 R0 K2 ["_cpcConnection"]
       25 JUMPIFNOT                        R1 ; [+8]
       26 GETTABLEKS                       R1 R0 K2 ["_cpcConnection"]
       28 NAMECALL                         R1 R1 K3 ["Disconnect"]
       30 CALL                             R1 1 0
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K2 ["_cpcConnection"]
       34 GETTABLEKS                       R1 R0 K4 ["_root"]
       36 JUMPIFNOT                        R1 ; [+8]
       37 GETTABLEKS                       R1 R0 K4 ["_root"]
       39 NAMECALL                         R1 R1 K5 ["destroy"]
       41 CALL                             R1 1 0
       42 LOADNIL                          R1
       43 SETTABLEKS                       R1 R0 K4 ["_root"]
       45 GETTABLEKS                       R1 R0 K6 ["singleMeshController"]
       47 JUMPIFNOT                        R1 ; [+8]
       48 GETTABLEKS                       R1 R0 K6 ["singleMeshController"]
       50 NAMECALL                         R1 R1 K5 ["destroy"]
       52 CALL                             R1 1 0
       53 LOADNIL                          R1
       54 SETTABLEKS                       R1 R0 K6 ["singleMeshController"]
       56 RETURN                           R0 0

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
      118 GETIMPORT                        R18 K5 [require]
      120 GETTABLEKS                       R19 R0 K6 ["Src"]
      122 GETTABLEKS                       R19 R19 K27 ["Flags"]
      124 GETTABLEKS                       R19 R19 K32 ["getFFlagAmrTextDocumentVersioning"]
      126 CALL                             R18 1 1
      127 DUPCLOSURE                       R19 K33 [PROTO_0]
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R18
      132 GETTABLEKS                       R20 R3 K34 ["Util"]
      134 GETTABLEKS                       R20 R20 K35 ["CrossPluginCommunication"]
      136 GETIMPORT                        R21 K5 [require]
      138 GETTABLEKS                       R22 R0 K11 ["Packages"]
      140 GETTABLEKS                       R22 R22 K36 ["SharedPluginConstants"]
      142 CALL                             R21 1 1
      143 GETTABLEKS                       R22 R20 K37 ["new"]
      145 GETTABLEKS                       R23 R21 K38 ["ASSET_MANAGER"]
      147 GETTABLEKS                       R23 R23 K39 ["CPC_ID"]
      149 CALL                             R22 1 1
      150 GETTABLEKS                       R23 R0 K6 ["Src"]
      152 GETTABLEKS                       R23 R23 K40 ["Resources"]
      154 GETTABLEKS                       R23 R23 K17 ["Localization"]
      156 GETTABLEKS                       R23 R23 K41 ["LocalizedStrings"]
      158 GETTABLEKS                       R24 R0 K6 ["Src"]
      160 GETTABLEKS                       R24 R24 K40 ["Resources"]
      162 GETTABLEKS                       R24 R24 K17 ["Localization"]
      164 GETTABLEKS                       R24 R24 K42 ["SourceStrings"]
      166 NEWTABLE                         R25 16 0
      168 SETTABLEKS                       R25 R25 K43 ["__index"]
      170 DUPCLOSURE                       R26 K44 [PROTO_3]
      171 CAPTURE                          VAL R25
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R24
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R22
      187 CAPTURE                          VAL R21
      188 SETTABLEKS                       R26 R25 K37 ["new"]
      190 DUPCLOSURE                       R26 K45 [PROTO_4]
      191 SETTABLEKS                       R26 R25 K46 ["setImportAnimationVersionHandler"]
      193 DUPCLOSURE                       R26 K47 [PROTO_5]
      194 CAPTURE                          VAL R4
      195 SETTABLEKS                       R26 R25 K48 ["_getRoot"]
      197 DUPCLOSURE                       R26 K49 [PROTO_6]
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R11
      200 SETTABLEKS                       R26 R25 K50 ["_getDesign"]
      202 DUPCLOSURE                       R26 K51 [PROTO_7]
      203 CAPTURE                          VAL R6
      204 CAPTURE                          VAL R5
      205 CAPTURE                          VAL R12
      206 SETTABLEKS                       R26 R25 K52 ["_setupUI"]
      208 DUPCLOSURE                       R26 K53 [PROTO_8]
      209 SETTABLEKS                       R26 R25 K54 ["startImport"]
      211 DUPCLOSURE                       R26 K55 [PROTO_9]
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R18
      215 SETTABLEKS                       R26 R25 K56 ["_onImportAssetVersion"]
      217 DUPCLOSURE                       R26 K57 [PROTO_10]
      218 CAPTURE                          VAL R14
      219 CAPTURE                          VAL R16
      220 CAPTURE                          VAL R15
      221 CAPTURE                          VAL R18
      222 SETTABLEKS                       R26 R25 K58 ["destroy"]
      224 RETURN                           R25 1
