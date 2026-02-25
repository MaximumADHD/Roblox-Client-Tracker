PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["startImport"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["plugin"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K3 ["new"]
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
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R3 R4 K3 ["new"]
       35 GETUPVAL                         R4 3
       36 MOVE                             R5 R0
       37 CALL                             R4 1 -1
       38 CALL                             R3 -1 1
       39 SETTABLEKS                       R3 R2 K9 ["design"]
       41 JUMPIFNOT                        R1 ; [+5]
       42 GETUPVAL                         R4 4
       43 GETTABLEKS                       R3 R4 K10 ["mock"]
       45 CALL                             R3 0 1
       46 JUMP                             ; [+14]
       47 GETUPVAL                         R4 4
       48 GETTABLEKS                       R3 R4 K3 ["new"]
       50 DUPTABLE                         R4 K14 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       51 GETUPVAL                         R5 5
       52 SETTABLEKS                       R5 R4 K11 ["stringResourceTable"]
       54 GETUPVAL                         R5 6
       55 SETTABLEKS                       R5 R4 K12 ["translationResourceTable"]
       57 LOADK                            R5 K15 ["AssetImporter"]
       58 SETTABLEKS                       R5 R4 K13 ["pluginName"]
       60 CALL                             R3 1 1
       61 SETTABLEKS                       R3 R2 K16 ["localization"]
       63 LOADNIL                          R3
       64 SETTABLEKS                       R3 R2 K17 ["_root"]
       66 GETUPVAL                         R4 7
       67 GETTABLEKS                       R3 R4 K18 ["StartSingleMeshImport"]
       69 NEWCLOSURE                       R5 P0
       70 CAPTURE                          VAL R2
       71 NAMECALL                         R3 R3 K19 ["Connect"]
       73 CALL                             R3 2 1
       74 SETTABLEKS                       R3 R2 K20 ["_actionConnection"]
       76 GETUPVAL                         R4 8
       77 GETTABLEKS                       R3 R4 K3 ["new"]
       79 MOVE                             R4 R0
       80 MOVE                             R5 R1
       81 CALL                             R3 2 1
       82 SETTABLEKS                       R3 R2 K21 ["singleMeshController"]
       84 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_root"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+12]
        4 GETIMPORT                        R1 K3 [Instance.new]
        6 LOADK                            R2 K4 ["Frame"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K5 ["createRoot"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R0 K0 ["_root"]
       15 GETTABLEKS                       R1 R0 K0 ["_root"]
       17 RETURN                           R1 1

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["_getRoot"]
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 0 4
        5 GETTABLEKS                       R4 R0 K1 ["pluginContext"]
        7 GETTABLEKS                       R5 R0 K2 ["localization"]
        9 GETTABLEKS                       R6 R0 K3 ["singleMeshController"]
       11 GETTABLEKS                       R7 R0 K4 ["design"]
       13 SETLIST                          R3 R4 4 [1]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K5 ["provide"]
       18 MOVE                             R7 R3
       19 NEWTABLE                         R8 0 1
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R9 R10 K6 ["createElement"]
       24 GETUPVAL                         R10 2
       25 CALL                             R9 1 -1
       26 SETLIST                          R8 R9 -1 [1]
       28 CALL                             R6 2 -1
       29 NAMECALL                         R4 R2 K7 ["render"]
       31 CALL                             R4 -1 0
       32 GETTABLEKS                       R4 R0 K3 ["singleMeshController"]
       34 MOVE                             R6 R1
       35 NAMECALL                         R4 R4 K8 ["startImport"]
       37 CALL                             R4 2 0
       38 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_actionConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_actionConnection"]
        5 NAMECALL                         R1 R1 K1 ["disconnet"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_actionConnection"]
       11 GETTABLEKS                       R1 R0 K2 ["_root"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["_root"]
       16 NAMECALL                         R1 R1 K3 ["destroy"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_root"]
       22 GETTABLEKS                       R1 R0 K4 ["singleMeshController"]
       24 JUMPIFNOT                        R1 ; [+8]
       25 GETTABLEKS                       R1 R0 K4 ["singleMeshController"]
       27 NAMECALL                         R1 R1 K3 ["destroy"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K4 ["singleMeshController"]
       33 RETURN                           R0 0

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
       22 GETTABLEKS                       R5 R0 K11 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R6 R0 K11 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["ReactRoblox"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Packages"]
       38 GETTABLEKS                       R6 R7 K14 ["React"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R3 K15 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K16 ["Design"]
       45 GETTABLEKS                       R8 R6 K17 ["Localization"]
       47 GETTABLEKS                       R9 R6 K18 ["Plugin"]
       49 GETTABLEKS                       R11 R3 K19 ["Styling"]
       51 GETTABLEKS                       R10 R11 K20 ["registerPluginStyles"]
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R15 R0 K6 ["Src"]
       57 GETTABLEKS                       R14 R15 K21 ["Components"]
       59 GETTABLEKS                       R13 R14 K22 ["SingleImport"]
       61 GETTABLEKS                       R12 R13 K23 ["SingleImportMain"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R15 R0 K6 ["Src"]
       68 GETTABLEKS                       R14 R15 K24 ["Controllers"]
       70 GETTABLEKS                       R13 R14 K25 ["SingleMeshController"]
       72 CALL                             R12 1 1
       73 GETTABLEKS                       R16 R0 K6 ["Src"]
       75 GETTABLEKS                       R15 R16 K26 ["Resources"]
       77 GETTABLEKS                       R14 R15 K17 ["Localization"]
       79 GETTABLEKS                       R13 R14 K27 ["LocalizedStrings"]
       81 GETTABLEKS                       R17 R0 K6 ["Src"]
       83 GETTABLEKS                       R16 R17 K26 ["Resources"]
       85 GETTABLEKS                       R15 R16 K17 ["Localization"]
       87 GETTABLEKS                       R14 R15 K28 ["SourceStrings"]
       89 NEWTABLE                         R15 8 0
       91 SETTABLEKS                       R15 R15 K29 ["__index"]
       93 DUPCLOSURE                       R16 K30 [PROTO_1]
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R12
      103 SETTABLEKS                       R16 R15 K31 ["new"]
      105 DUPCLOSURE                       R16 K32 [PROTO_2]
      106 CAPTURE                          VAL R4
      107 SETTABLEKS                       R16 R15 K33 ["_getRoot"]
      109 DUPCLOSURE                       R16 K34 [PROTO_3]
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R11
      113 SETTABLEKS                       R16 R15 K35 ["startImport"]
      115 DUPCLOSURE                       R16 K36 [PROTO_4]
      116 SETTABLEKS                       R16 R15 K37 ["destroy"]
      118 RETURN                           R15 1
